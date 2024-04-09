; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59886 () Bool)

(assert start!59886)

(declare-fun b!661955 () Bool)

(declare-datatypes ((Unit!22978 0))(
  ( (Unit!22979) )
))
(declare-fun e!380091 () Unit!22978)

(declare-fun Unit!22980 () Unit!22978)

(assert (=> b!661955 (= e!380091 Unit!22980)))

(declare-fun b!661956 () Bool)

(declare-fun e!380089 () Bool)

(declare-fun e!380095 () Bool)

(assert (=> b!661956 (= e!380089 e!380095)))

(declare-fun res!430157 () Bool)

(assert (=> b!661956 (=> (not res!430157) (not e!380095))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!661956 (= res!430157 (bvsle from!3004 i!1382))))

(declare-fun b!661957 () Bool)

(declare-fun res!430166 () Bool)

(declare-fun e!380094 () Bool)

(assert (=> b!661957 (=> (not res!430166) (not e!380094))))

(declare-datatypes ((array!38889 0))(
  ( (array!38890 (arr!18633 (Array (_ BitVec 32) (_ BitVec 64))) (size!18997 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38889)

(declare-datatypes ((List!12727 0))(
  ( (Nil!12724) (Cons!12723 (h!13768 (_ BitVec 64)) (t!18963 List!12727)) )
))
(declare-fun acc!681 () List!12727)

(declare-fun arrayNoDuplicates!0 (array!38889 (_ BitVec 32) List!12727) Bool)

(assert (=> b!661957 (= res!430166 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!661958 () Bool)

(declare-fun res!430154 () Bool)

(assert (=> b!661958 (=> (not res!430154) (not e!380094))))

(assert (=> b!661958 (= res!430154 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18997 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!430167 () Bool)

(assert (=> start!59886 (=> (not res!430167) (not e!380094))))

(assert (=> start!59886 (= res!430167 (and (bvslt (size!18997 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18997 a!3626))))))

(assert (=> start!59886 e!380094))

(assert (=> start!59886 true))

(declare-fun array_inv!14407 (array!38889) Bool)

(assert (=> start!59886 (array_inv!14407 a!3626)))

(declare-fun b!661959 () Bool)

(declare-fun res!430160 () Bool)

(assert (=> b!661959 (=> (not res!430160) (not e!380094))))

(assert (=> b!661959 (= res!430160 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12724))))

(declare-fun b!661960 () Bool)

(declare-fun e!380088 () Bool)

(assert (=> b!661960 (= e!380088 true)))

(declare-fun lt!308882 () Bool)

(declare-fun lt!308881 () List!12727)

(assert (=> b!661960 (= lt!308882 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!308881))))

(declare-fun lt!308878 () Unit!22978)

(declare-fun noDuplicateSubseq!8 (List!12727 List!12727) Unit!22978)

(assert (=> b!661960 (= lt!308878 (noDuplicateSubseq!8 acc!681 lt!308881))))

(declare-fun b!661961 () Bool)

(declare-fun res!430172 () Bool)

(assert (=> b!661961 (=> (not res!430172) (not e!380094))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38889 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!661961 (= res!430172 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!661962 () Bool)

(declare-fun res!430171 () Bool)

(assert (=> b!661962 (=> res!430171 e!380088)))

(declare-fun noDuplicate!517 (List!12727) Bool)

(assert (=> b!661962 (= res!430171 (not (noDuplicate!517 lt!308881)))))

(declare-fun b!661963 () Bool)

(declare-fun res!430163 () Bool)

(assert (=> b!661963 (=> res!430163 e!380088)))

(declare-fun contains!3270 (List!12727 (_ BitVec 64)) Bool)

(assert (=> b!661963 (= res!430163 (contains!3270 lt!308881 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!661964 () Bool)

(declare-fun res!430170 () Bool)

(assert (=> b!661964 (=> (not res!430170) (not e!380094))))

(assert (=> b!661964 (= res!430170 (not (contains!3270 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661965 () Bool)

(declare-fun e!380090 () Bool)

(assert (=> b!661965 (= e!380094 (not e!380090))))

(declare-fun res!430164 () Bool)

(assert (=> b!661965 (=> res!430164 e!380090)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!661965 (= res!430164 (not (validKeyInArray!0 (select (arr!18633 a!3626) from!3004))))))

(declare-fun lt!308883 () Unit!22978)

(assert (=> b!661965 (= lt!308883 e!380091)))

(declare-fun c!76268 () Bool)

(assert (=> b!661965 (= c!76268 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!661965 (arrayContainsKey!0 (array!38890 (store (arr!18633 a!3626) i!1382 k!2843) (size!18997 a!3626)) k!2843 from!3004)))

(declare-fun b!661966 () Bool)

(assert (=> b!661966 (= e!380095 (not (contains!3270 acc!681 k!2843)))))

(declare-fun b!661967 () Bool)

(declare-fun res!430155 () Bool)

(assert (=> b!661967 (=> (not res!430155) (not e!380094))))

(assert (=> b!661967 (= res!430155 (validKeyInArray!0 k!2843))))

(declare-fun b!661968 () Bool)

(declare-fun res!430159 () Bool)

(assert (=> b!661968 (=> (not res!430159) (not e!380094))))

(assert (=> b!661968 (= res!430159 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18997 a!3626))))))

(declare-fun b!661969 () Bool)

(assert (=> b!661969 (= e!380090 e!380088)))

(declare-fun res!430169 () Bool)

(assert (=> b!661969 (=> res!430169 e!380088)))

(assert (=> b!661969 (= res!430169 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!139 (List!12727 (_ BitVec 64)) List!12727)

(assert (=> b!661969 (= lt!308881 ($colon$colon!139 acc!681 (select (arr!18633 a!3626) from!3004)))))

(declare-fun subseq!8 (List!12727 List!12727) Bool)

(assert (=> b!661969 (subseq!8 acc!681 acc!681)))

(declare-fun lt!308880 () Unit!22978)

(declare-fun lemmaListSubSeqRefl!0 (List!12727) Unit!22978)

(assert (=> b!661969 (= lt!308880 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!661970 () Bool)

(declare-fun res!430162 () Bool)

(assert (=> b!661970 (=> (not res!430162) (not e!380094))))

(assert (=> b!661970 (= res!430162 (not (contains!3270 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!661971 () Bool)

(declare-fun res!430156 () Bool)

(assert (=> b!661971 (=> res!430156 e!380088)))

(assert (=> b!661971 (= res!430156 (not (subseq!8 acc!681 lt!308881)))))

(declare-fun b!661972 () Bool)

(declare-fun res!430168 () Bool)

(assert (=> b!661972 (=> (not res!430168) (not e!380094))))

(assert (=> b!661972 (= res!430168 e!380089)))

(declare-fun res!430165 () Bool)

(assert (=> b!661972 (=> res!430165 e!380089)))

(declare-fun e!380092 () Bool)

(assert (=> b!661972 (= res!430165 e!380092)))

(declare-fun res!430153 () Bool)

(assert (=> b!661972 (=> (not res!430153) (not e!380092))))

(assert (=> b!661972 (= res!430153 (bvsgt from!3004 i!1382))))

(declare-fun b!661973 () Bool)

(declare-fun res!430158 () Bool)

(assert (=> b!661973 (=> res!430158 e!380088)))

(assert (=> b!661973 (= res!430158 (contains!3270 lt!308881 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!661974 () Bool)

(declare-fun Unit!22981 () Unit!22978)

(assert (=> b!661974 (= e!380091 Unit!22981)))

(declare-fun lt!308879 () Unit!22978)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38889 (_ BitVec 64) (_ BitVec 32)) Unit!22978)

(assert (=> b!661974 (= lt!308879 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!661974 false))

(declare-fun b!661975 () Bool)

(assert (=> b!661975 (= e!380092 (contains!3270 acc!681 k!2843))))

(declare-fun b!661976 () Bool)

(declare-fun res!430161 () Bool)

(assert (=> b!661976 (=> (not res!430161) (not e!380094))))

(assert (=> b!661976 (= res!430161 (noDuplicate!517 acc!681))))

(assert (= (and start!59886 res!430167) b!661976))

(assert (= (and b!661976 res!430161) b!661970))

(assert (= (and b!661970 res!430162) b!661964))

(assert (= (and b!661964 res!430170) b!661972))

(assert (= (and b!661972 res!430153) b!661975))

(assert (= (and b!661972 (not res!430165)) b!661956))

(assert (= (and b!661956 res!430157) b!661966))

(assert (= (and b!661972 res!430168) b!661959))

(assert (= (and b!661959 res!430160) b!661957))

(assert (= (and b!661957 res!430166) b!661968))

(assert (= (and b!661968 res!430159) b!661967))

(assert (= (and b!661967 res!430155) b!661961))

(assert (= (and b!661961 res!430172) b!661958))

(assert (= (and b!661958 res!430154) b!661965))

(assert (= (and b!661965 c!76268) b!661974))

(assert (= (and b!661965 (not c!76268)) b!661955))

(assert (= (and b!661965 (not res!430164)) b!661969))

(assert (= (and b!661969 (not res!430169)) b!661962))

(assert (= (and b!661962 (not res!430171)) b!661973))

(assert (= (and b!661973 (not res!430158)) b!661963))

(assert (= (and b!661963 (not res!430163)) b!661971))

(assert (= (and b!661971 (not res!430156)) b!661960))

(declare-fun m!633939 () Bool)

(assert (=> b!661975 m!633939))

(declare-fun m!633941 () Bool)

(assert (=> b!661964 m!633941))

(declare-fun m!633943 () Bool)

(assert (=> b!661976 m!633943))

(declare-fun m!633945 () Bool)

(assert (=> b!661970 m!633945))

(declare-fun m!633947 () Bool)

(assert (=> b!661974 m!633947))

(declare-fun m!633949 () Bool)

(assert (=> b!661965 m!633949))

(declare-fun m!633951 () Bool)

(assert (=> b!661965 m!633951))

(declare-fun m!633953 () Bool)

(assert (=> b!661965 m!633953))

(assert (=> b!661965 m!633949))

(declare-fun m!633955 () Bool)

(assert (=> b!661965 m!633955))

(declare-fun m!633957 () Bool)

(assert (=> b!661965 m!633957))

(declare-fun m!633959 () Bool)

(assert (=> b!661961 m!633959))

(assert (=> b!661969 m!633949))

(assert (=> b!661969 m!633949))

(declare-fun m!633961 () Bool)

(assert (=> b!661969 m!633961))

(declare-fun m!633963 () Bool)

(assert (=> b!661969 m!633963))

(declare-fun m!633965 () Bool)

(assert (=> b!661969 m!633965))

(declare-fun m!633967 () Bool)

(assert (=> b!661957 m!633967))

(declare-fun m!633969 () Bool)

(assert (=> start!59886 m!633969))

(declare-fun m!633971 () Bool)

(assert (=> b!661967 m!633971))

(declare-fun m!633973 () Bool)

(assert (=> b!661960 m!633973))

(declare-fun m!633975 () Bool)

(assert (=> b!661960 m!633975))

(declare-fun m!633977 () Bool)

(assert (=> b!661962 m!633977))

(assert (=> b!661966 m!633939))

(declare-fun m!633979 () Bool)

(assert (=> b!661963 m!633979))

(declare-fun m!633981 () Bool)

(assert (=> b!661971 m!633981))

(declare-fun m!633983 () Bool)

(assert (=> b!661973 m!633983))

(declare-fun m!633985 () Bool)

(assert (=> b!661959 m!633985))

(push 1)

