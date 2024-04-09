; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60660 () Bool)

(assert start!60660)

(declare-fun b!680843 () Bool)

(declare-datatypes ((Unit!23866 0))(
  ( (Unit!23867) )
))
(declare-fun e!387884 () Unit!23866)

(declare-fun Unit!23868 () Unit!23866)

(assert (=> b!680843 (= e!387884 Unit!23868)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!313145 () Unit!23866)

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39483 0))(
  ( (array!39484 (arr!18924 (Array (_ BitVec 32) (_ BitVec 64))) (size!19288 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39483)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39483 (_ BitVec 64) (_ BitVec 32)) Unit!23866)

(assert (=> b!680843 (= lt!313145 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!680843 false))

(declare-fun b!680844 () Bool)

(declare-fun res!447201 () Bool)

(declare-fun e!387881 () Bool)

(assert (=> b!680844 (=> (not res!447201) (not e!387881))))

(declare-fun arrayContainsKey!0 (array!39483 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!680844 (= res!447201 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!680845 () Bool)

(declare-fun e!387883 () Bool)

(assert (=> b!680845 (= e!387883 true)))

(declare-fun lt!313146 () Bool)

(declare-datatypes ((List!13018 0))(
  ( (Nil!13015) (Cons!13014 (h!14059 (_ BitVec 64)) (t!19260 List!13018)) )
))
(declare-fun lt!313149 () List!13018)

(declare-fun contains!3561 (List!13018 (_ BitVec 64)) Bool)

(assert (=> b!680845 (= lt!313146 (contains!3561 lt!313149 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680846 () Bool)

(declare-fun res!447200 () Bool)

(assert (=> b!680846 (=> (not res!447200) (not e!387881))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!680846 (= res!447200 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19288 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!680847 () Bool)

(declare-fun res!447205 () Bool)

(assert (=> b!680847 (=> (not res!447205) (not e!387881))))

(declare-fun e!387885 () Bool)

(assert (=> b!680847 (= res!447205 e!387885)))

(declare-fun res!447214 () Bool)

(assert (=> b!680847 (=> res!447214 e!387885)))

(declare-fun e!387882 () Bool)

(assert (=> b!680847 (= res!447214 e!387882)))

(declare-fun res!447202 () Bool)

(assert (=> b!680847 (=> (not res!447202) (not e!387882))))

(assert (=> b!680847 (= res!447202 (bvsgt from!3004 i!1382))))

(declare-fun b!680848 () Bool)

(declare-fun acc!681 () List!13018)

(assert (=> b!680848 (= e!387882 (contains!3561 acc!681 k!2843))))

(declare-fun b!680849 () Bool)

(declare-fun e!387886 () Bool)

(assert (=> b!680849 (= e!387886 (not (contains!3561 acc!681 k!2843)))))

(declare-fun b!680850 () Bool)

(declare-fun e!387879 () Bool)

(assert (=> b!680850 (= e!387879 e!387883)))

(declare-fun res!447199 () Bool)

(assert (=> b!680850 (=> res!447199 e!387883)))

(assert (=> b!680850 (= res!447199 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!310 (List!13018 (_ BitVec 64)) List!13018)

(assert (=> b!680850 (= lt!313149 ($colon$colon!310 acc!681 (select (arr!18924 a!3626) from!3004)))))

(declare-fun subseq!146 (List!13018 List!13018) Bool)

(assert (=> b!680850 (subseq!146 acc!681 acc!681)))

(declare-fun lt!313147 () Unit!23866)

(declare-fun lemmaListSubSeqRefl!0 (List!13018) Unit!23866)

(assert (=> b!680850 (= lt!313147 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!680851 () Bool)

(declare-fun res!447213 () Bool)

(assert (=> b!680851 (=> res!447213 e!387883)))

(declare-fun noDuplicate!808 (List!13018) Bool)

(assert (=> b!680851 (= res!447213 (not (noDuplicate!808 lt!313149)))))

(declare-fun b!680852 () Bool)

(declare-fun res!447206 () Bool)

(assert (=> b!680852 (=> (not res!447206) (not e!387881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!680852 (= res!447206 (validKeyInArray!0 k!2843))))

(declare-fun b!680853 () Bool)

(declare-fun res!447208 () Bool)

(assert (=> b!680853 (=> (not res!447208) (not e!387881))))

(assert (=> b!680853 (= res!447208 (not (contains!3561 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680842 () Bool)

(declare-fun res!447215 () Bool)

(assert (=> b!680842 (=> (not res!447215) (not e!387881))))

(assert (=> b!680842 (= res!447215 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19288 a!3626))))))

(declare-fun res!447212 () Bool)

(assert (=> start!60660 (=> (not res!447212) (not e!387881))))

(assert (=> start!60660 (= res!447212 (and (bvslt (size!19288 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19288 a!3626))))))

(assert (=> start!60660 e!387881))

(assert (=> start!60660 true))

(declare-fun array_inv!14698 (array!39483) Bool)

(assert (=> start!60660 (array_inv!14698 a!3626)))

(declare-fun b!680854 () Bool)

(declare-fun res!447211 () Bool)

(assert (=> b!680854 (=> (not res!447211) (not e!387881))))

(declare-fun arrayNoDuplicates!0 (array!39483 (_ BitVec 32) List!13018) Bool)

(assert (=> b!680854 (= res!447211 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13015))))

(declare-fun b!680855 () Bool)

(declare-fun res!447203 () Bool)

(assert (=> b!680855 (=> (not res!447203) (not e!387881))))

(assert (=> b!680855 (= res!447203 (not (contains!3561 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680856 () Bool)

(assert (=> b!680856 (= e!387885 e!387886)))

(declare-fun res!447204 () Bool)

(assert (=> b!680856 (=> (not res!447204) (not e!387886))))

(assert (=> b!680856 (= res!447204 (bvsle from!3004 i!1382))))

(declare-fun b!680857 () Bool)

(declare-fun res!447207 () Bool)

(assert (=> b!680857 (=> (not res!447207) (not e!387881))))

(assert (=> b!680857 (= res!447207 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!680858 () Bool)

(declare-fun res!447210 () Bool)

(assert (=> b!680858 (=> (not res!447210) (not e!387881))))

(assert (=> b!680858 (= res!447210 (noDuplicate!808 acc!681))))

(declare-fun b!680859 () Bool)

(assert (=> b!680859 (= e!387881 (not e!387879))))

(declare-fun res!447209 () Bool)

(assert (=> b!680859 (=> res!447209 e!387879)))

(assert (=> b!680859 (= res!447209 (not (validKeyInArray!0 (select (arr!18924 a!3626) from!3004))))))

(declare-fun lt!313148 () Unit!23866)

(assert (=> b!680859 (= lt!313148 e!387884)))

(declare-fun c!77189 () Bool)

(assert (=> b!680859 (= c!77189 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!680859 (arrayContainsKey!0 (array!39484 (store (arr!18924 a!3626) i!1382 k!2843) (size!19288 a!3626)) k!2843 from!3004)))

(declare-fun b!680860 () Bool)

(declare-fun Unit!23869 () Unit!23866)

(assert (=> b!680860 (= e!387884 Unit!23869)))

(declare-fun b!680861 () Bool)

(declare-fun res!447198 () Bool)

(assert (=> b!680861 (=> res!447198 e!387883)))

(assert (=> b!680861 (= res!447198 (contains!3561 lt!313149 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!60660 res!447212) b!680858))

(assert (= (and b!680858 res!447210) b!680855))

(assert (= (and b!680855 res!447203) b!680853))

(assert (= (and b!680853 res!447208) b!680847))

(assert (= (and b!680847 res!447202) b!680848))

(assert (= (and b!680847 (not res!447214)) b!680856))

(assert (= (and b!680856 res!447204) b!680849))

(assert (= (and b!680847 res!447205) b!680854))

(assert (= (and b!680854 res!447211) b!680857))

(assert (= (and b!680857 res!447207) b!680842))

(assert (= (and b!680842 res!447215) b!680852))

(assert (= (and b!680852 res!447206) b!680844))

(assert (= (and b!680844 res!447201) b!680846))

(assert (= (and b!680846 res!447200) b!680859))

(assert (= (and b!680859 c!77189) b!680843))

(assert (= (and b!680859 (not c!77189)) b!680860))

(assert (= (and b!680859 (not res!447209)) b!680850))

(assert (= (and b!680850 (not res!447199)) b!680851))

(assert (= (and b!680851 (not res!447213)) b!680861))

(assert (= (and b!680861 (not res!447198)) b!680845))

(declare-fun m!645861 () Bool)

(assert (=> b!680844 m!645861))

(declare-fun m!645863 () Bool)

(assert (=> b!680854 m!645863))

(declare-fun m!645865 () Bool)

(assert (=> b!680849 m!645865))

(declare-fun m!645867 () Bool)

(assert (=> b!680851 m!645867))

(declare-fun m!645869 () Bool)

(assert (=> b!680861 m!645869))

(declare-fun m!645871 () Bool)

(assert (=> b!680853 m!645871))

(declare-fun m!645873 () Bool)

(assert (=> b!680857 m!645873))

(declare-fun m!645875 () Bool)

(assert (=> b!680845 m!645875))

(declare-fun m!645877 () Bool)

(assert (=> b!680852 m!645877))

(declare-fun m!645879 () Bool)

(assert (=> b!680859 m!645879))

(declare-fun m!645881 () Bool)

(assert (=> b!680859 m!645881))

(declare-fun m!645883 () Bool)

(assert (=> b!680859 m!645883))

(assert (=> b!680859 m!645879))

(declare-fun m!645885 () Bool)

(assert (=> b!680859 m!645885))

(declare-fun m!645887 () Bool)

(assert (=> b!680859 m!645887))

(assert (=> b!680850 m!645879))

(assert (=> b!680850 m!645879))

(declare-fun m!645889 () Bool)

(assert (=> b!680850 m!645889))

(declare-fun m!645891 () Bool)

(assert (=> b!680850 m!645891))

(declare-fun m!645893 () Bool)

(assert (=> b!680850 m!645893))

(assert (=> b!680848 m!645865))

(declare-fun m!645895 () Bool)

(assert (=> b!680843 m!645895))

(declare-fun m!645897 () Bool)

(assert (=> start!60660 m!645897))

(declare-fun m!645899 () Bool)

(assert (=> b!680858 m!645899))

(declare-fun m!645901 () Bool)

(assert (=> b!680855 m!645901))

(push 1)

