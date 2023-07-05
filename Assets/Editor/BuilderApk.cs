using System.Collections.Generic;
using System.IO;
using UnityEditor;
using UnityEngine;

public class BuilderApk : Editor
{
    [MenuItem("BuildApk/BuildMyAndroidApk")]
    public static void BuildMyAndroidApk()
    {
        //string outputPath = "C:/Users/a/Desktop/Builder/Apk/build_android.apk";           //����İ�װ��·��Ŀ¼
        string outputPath = $"{Application.dataPath}/../Apk/build_android.apk";           //����İ�װ��·��Ŀ¼
        if(!Directory.Exists(outputPath))
        {
            Directory.CreateDirectory(outputPath);
        }
        
        BuildOptions buildOption = BuildOptions.None;
        outputPath = outputPath.Replace('\\', '/');
        BuildPipeline.BuildPlayer(GetBuildScenes(), outputPath, BuildTarget.Android, buildOption);
    }

    /// <summary>
    /// ȡ��Ҫ����ĳ���
    /// </summary>
    /// <returns></returns>
    static string[] GetBuildScenes()
    {
        List<string> pathList = new List<string>();
        foreach (EditorBuildSettingsScene scene in EditorBuildSettings.scenes)
        {
            if (scene.enabled)
            {
                pathList.Add(scene.path);
            }
        }
        return pathList.ToArray();
    }
}