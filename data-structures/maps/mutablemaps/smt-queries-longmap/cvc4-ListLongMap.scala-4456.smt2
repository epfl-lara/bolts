; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62050 () Bool)

(assert start!62050)

(declare-fun b!693928 () Bool)

(declare-fun res!458177 () Bool)

(declare-fun e!394799 () Bool)

(assert (=> b!693928 (=> (not res!458177) (not e!394799))))

(declare-fun e!394792 () Bool)

(assert (=> b!693928 (= res!458177 e!394792)))

(declare-fun res!458175 () Bool)

(assert (=> b!693928 (=> res!458175 e!394792)))

(declare-fun e!394795 () Bool)

(assert (=> b!693928 (= res!458175 e!394795)))

(declare-fun res!458180 () Bool)

(assert (=> b!693928 (=> (not res!458180) (not e!394795))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!693928 (= res!458180 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693929 () Bool)

(declare-fun res!458174 () Bool)

(declare-fun e!394801 () Bool)

(assert (=> b!693929 (=> (not res!458174) (not e!394801))))

(declare-datatypes ((array!39847 0))(
  ( (array!39848 (arr!19082 (Array (_ BitVec 32) (_ BitVec 64))) (size!19465 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39847)

(assert (=> b!693929 (= res!458174 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19465 a!3626))))))

(declare-fun b!693930 () Bool)

(declare-datatypes ((Unit!24498 0))(
  ( (Unit!24499) )
))
(declare-fun e!394791 () Unit!24498)

(declare-fun Unit!24500 () Unit!24498)

(assert (=> b!693930 (= e!394791 Unit!24500)))

(declare-fun b!693931 () Bool)

(declare-fun res!458170 () Bool)

(assert (=> b!693931 (=> (not res!458170) (not e!394801))))

(declare-datatypes ((List!13176 0))(
  ( (Nil!13173) (Cons!13172 (h!14217 (_ BitVec 64)) (t!19463 List!13176)) )
))
(declare-fun acc!681 () List!13176)

(declare-fun contains!3719 (List!13176 (_ BitVec 64)) Bool)

(assert (=> b!693931 (= res!458170 (not (contains!3719 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693932 () Bool)

(declare-fun res!458185 () Bool)

(assert (=> b!693932 (=> (not res!458185) (not e!394801))))

(declare-fun arrayNoDuplicates!0 (array!39847 (_ BitVec 32) List!13176) Bool)

(assert (=> b!693932 (= res!458185 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13173))))

(declare-fun b!693933 () Bool)

(assert (=> b!693933 (= e!394799 false)))

(declare-fun lt!316803 () Bool)

(declare-fun lt!316801 () List!13176)

(assert (=> b!693933 (= lt!316803 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316801))))

(declare-fun b!693934 () Bool)

(declare-fun res!458173 () Bool)

(assert (=> b!693934 (=> (not res!458173) (not e!394799))))

(declare-fun noDuplicate!966 (List!13176) Bool)

(assert (=> b!693934 (= res!458173 (noDuplicate!966 lt!316801))))

(declare-fun b!693935 () Bool)

(declare-fun res!458187 () Bool)

(assert (=> b!693935 (=> (not res!458187) (not e!394799))))

(assert (=> b!693935 (= res!458187 (not (contains!3719 lt!316801 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693936 () Bool)

(declare-fun res!458166 () Bool)

(assert (=> b!693936 (=> (not res!458166) (not e!394801))))

(assert (=> b!693936 (= res!458166 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!693937 () Bool)

(declare-fun e!394797 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!693937 (= e!394797 (contains!3719 acc!681 k!2843))))

(declare-fun b!693938 () Bool)

(declare-fun res!458183 () Bool)

(assert (=> b!693938 (=> (not res!458183) (not e!394801))))

(declare-fun arrayContainsKey!0 (array!39847 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!693938 (= res!458183 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!458168 () Bool)

(assert (=> start!62050 (=> (not res!458168) (not e!394801))))

(assert (=> start!62050 (= res!458168 (and (bvslt (size!19465 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19465 a!3626))))))

(assert (=> start!62050 e!394801))

(assert (=> start!62050 true))

(declare-fun array_inv!14856 (array!39847) Bool)

(assert (=> start!62050 (array_inv!14856 a!3626)))

(declare-fun b!693939 () Bool)

(assert (=> b!693939 (= e!394795 (contains!3719 lt!316801 k!2843))))

(declare-fun b!693940 () Bool)

(declare-fun res!458172 () Bool)

(assert (=> b!693940 (=> (not res!458172) (not e!394801))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!693940 (= res!458172 (validKeyInArray!0 (select (arr!19082 a!3626) from!3004)))))

(declare-fun b!693941 () Bool)

(declare-fun e!394793 () Bool)

(assert (=> b!693941 (= e!394801 e!394793)))

(declare-fun res!458182 () Bool)

(assert (=> b!693941 (=> (not res!458182) (not e!394793))))

(assert (=> b!693941 (= res!458182 (not (= (select (arr!19082 a!3626) from!3004) k!2843)))))

(declare-fun lt!316800 () Unit!24498)

(assert (=> b!693941 (= lt!316800 e!394791)))

(declare-fun c!78248 () Bool)

(assert (=> b!693941 (= c!78248 (= (select (arr!19082 a!3626) from!3004) k!2843))))

(declare-fun b!693942 () Bool)

(declare-fun e!394794 () Bool)

(declare-fun e!394800 () Bool)

(assert (=> b!693942 (= e!394794 e!394800)))

(declare-fun res!458186 () Bool)

(assert (=> b!693942 (=> (not res!458186) (not e!394800))))

(assert (=> b!693942 (= res!458186 (bvsle from!3004 i!1382))))

(declare-fun b!693943 () Bool)

(assert (=> b!693943 (= e!394800 (not (contains!3719 acc!681 k!2843)))))

(declare-fun b!693944 () Bool)

(declare-fun res!458189 () Bool)

(assert (=> b!693944 (=> (not res!458189) (not e!394801))))

(assert (=> b!693944 (= res!458189 (noDuplicate!966 acc!681))))

(declare-fun b!693945 () Bool)

(declare-fun res!458176 () Bool)

(assert (=> b!693945 (=> (not res!458176) (not e!394799))))

(assert (=> b!693945 (= res!458176 (not (contains!3719 lt!316801 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693946 () Bool)

(declare-fun res!458178 () Bool)

(assert (=> b!693946 (=> (not res!458178) (not e!394801))))

(assert (=> b!693946 (= res!458178 (validKeyInArray!0 k!2843))))

(declare-fun b!693947 () Bool)

(declare-fun e!394798 () Bool)

(assert (=> b!693947 (= e!394798 (not (contains!3719 lt!316801 k!2843)))))

(declare-fun b!693948 () Bool)

(assert (=> b!693948 (= e!394793 e!394799)))

(declare-fun res!458179 () Bool)

(assert (=> b!693948 (=> (not res!458179) (not e!394799))))

(assert (=> b!693948 (= res!458179 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!429 (List!13176 (_ BitVec 64)) List!13176)

(assert (=> b!693948 (= lt!316801 ($colon$colon!429 acc!681 (select (arr!19082 a!3626) from!3004)))))

(declare-fun b!693949 () Bool)

(declare-fun res!458181 () Bool)

(assert (=> b!693949 (=> (not res!458181) (not e!394801))))

(assert (=> b!693949 (= res!458181 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19465 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!693950 () Bool)

(assert (=> b!693950 (= e!394792 e!394798)))

(declare-fun res!458171 () Bool)

(assert (=> b!693950 (=> (not res!458171) (not e!394798))))

(assert (=> b!693950 (= res!458171 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693951 () Bool)

(declare-fun res!458167 () Bool)

(assert (=> b!693951 (=> (not res!458167) (not e!394801))))

(assert (=> b!693951 (= res!458167 e!394794)))

(declare-fun res!458169 () Bool)

(assert (=> b!693951 (=> res!458169 e!394794)))

(assert (=> b!693951 (= res!458169 e!394797)))

(declare-fun res!458184 () Bool)

(assert (=> b!693951 (=> (not res!458184) (not e!394797))))

(assert (=> b!693951 (= res!458184 (bvsgt from!3004 i!1382))))

(declare-fun b!693952 () Bool)

(declare-fun Unit!24501 () Unit!24498)

(assert (=> b!693952 (= e!394791 Unit!24501)))

(assert (=> b!693952 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316802 () Unit!24498)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39847 (_ BitVec 64) (_ BitVec 32)) Unit!24498)

(assert (=> b!693952 (= lt!316802 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!693952 false))

(declare-fun b!693953 () Bool)

(declare-fun res!458188 () Bool)

(assert (=> b!693953 (=> (not res!458188) (not e!394801))))

(assert (=> b!693953 (= res!458188 (not (contains!3719 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62050 res!458168) b!693944))

(assert (= (and b!693944 res!458189) b!693931))

(assert (= (and b!693931 res!458170) b!693953))

(assert (= (and b!693953 res!458188) b!693951))

(assert (= (and b!693951 res!458184) b!693937))

(assert (= (and b!693951 (not res!458169)) b!693942))

(assert (= (and b!693942 res!458186) b!693943))

(assert (= (and b!693951 res!458167) b!693932))

(assert (= (and b!693932 res!458185) b!693936))

(assert (= (and b!693936 res!458166) b!693929))

(assert (= (and b!693929 res!458174) b!693946))

(assert (= (and b!693946 res!458178) b!693938))

(assert (= (and b!693938 res!458183) b!693949))

(assert (= (and b!693949 res!458181) b!693940))

(assert (= (and b!693940 res!458172) b!693941))

(assert (= (and b!693941 c!78248) b!693952))

(assert (= (and b!693941 (not c!78248)) b!693930))

(assert (= (and b!693941 res!458182) b!693948))

(assert (= (and b!693948 res!458179) b!693934))

(assert (= (and b!693934 res!458173) b!693945))

(assert (= (and b!693945 res!458176) b!693935))

(assert (= (and b!693935 res!458187) b!693928))

(assert (= (and b!693928 res!458180) b!693939))

(assert (= (and b!693928 (not res!458175)) b!693950))

(assert (= (and b!693950 res!458171) b!693947))

(assert (= (and b!693928 res!458177) b!693933))

(declare-fun m!655981 () Bool)

(assert (=> b!693947 m!655981))

(declare-fun m!655983 () Bool)

(assert (=> b!693941 m!655983))

(declare-fun m!655985 () Bool)

(assert (=> b!693933 m!655985))

(declare-fun m!655987 () Bool)

(assert (=> b!693935 m!655987))

(declare-fun m!655989 () Bool)

(assert (=> b!693944 m!655989))

(declare-fun m!655991 () Bool)

(assert (=> b!693945 m!655991))

(declare-fun m!655993 () Bool)

(assert (=> b!693931 m!655993))

(declare-fun m!655995 () Bool)

(assert (=> b!693946 m!655995))

(declare-fun m!655997 () Bool)

(assert (=> b!693943 m!655997))

(declare-fun m!655999 () Bool)

(assert (=> b!693952 m!655999))

(declare-fun m!656001 () Bool)

(assert (=> b!693952 m!656001))

(assert (=> b!693940 m!655983))

(assert (=> b!693940 m!655983))

(declare-fun m!656003 () Bool)

(assert (=> b!693940 m!656003))

(assert (=> b!693937 m!655997))

(declare-fun m!656005 () Bool)

(assert (=> b!693936 m!656005))

(declare-fun m!656007 () Bool)

(assert (=> b!693938 m!656007))

(declare-fun m!656009 () Bool)

(assert (=> b!693932 m!656009))

(declare-fun m!656011 () Bool)

(assert (=> b!693934 m!656011))

(assert (=> b!693948 m!655983))

(assert (=> b!693948 m!655983))

(declare-fun m!656013 () Bool)

(assert (=> b!693948 m!656013))

(declare-fun m!656015 () Bool)

(assert (=> start!62050 m!656015))

(assert (=> b!693939 m!655981))

(declare-fun m!656017 () Bool)

(assert (=> b!693953 m!656017))

(push 1)

