; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62054 () Bool)

(assert start!62054)

(declare-fun b!694084 () Bool)

(declare-fun res!458331 () Bool)

(declare-fun e!394857 () Bool)

(assert (=> b!694084 (=> (not res!458331) (not e!394857))))

(declare-datatypes ((array!39851 0))(
  ( (array!39852 (arr!19084 (Array (_ BitVec 32) (_ BitVec 64))) (size!19467 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39851)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!694084 (= res!458331 (validKeyInArray!0 (select (arr!19084 a!3626) from!3004)))))

(declare-fun b!694085 () Bool)

(declare-fun e!394866 () Bool)

(declare-datatypes ((List!13178 0))(
  ( (Nil!13175) (Cons!13174 (h!14219 (_ BitVec 64)) (t!19465 List!13178)) )
))
(declare-fun acc!681 () List!13178)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3721 (List!13178 (_ BitVec 64)) Bool)

(assert (=> b!694085 (= e!394866 (contains!3721 acc!681 k0!2843))))

(declare-fun b!694086 () Bool)

(declare-fun res!458323 () Bool)

(declare-fun e!394858 () Bool)

(assert (=> b!694086 (=> (not res!458323) (not e!394858))))

(declare-fun lt!316827 () List!13178)

(assert (=> b!694086 (= res!458323 (not (contains!3721 lt!316827 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694087 () Bool)

(declare-fun e!394863 () Bool)

(assert (=> b!694087 (= e!394857 e!394863)))

(declare-fun res!458314 () Bool)

(assert (=> b!694087 (=> (not res!458314) (not e!394863))))

(assert (=> b!694087 (= res!458314 (not (= (select (arr!19084 a!3626) from!3004) k0!2843)))))

(declare-datatypes ((Unit!24506 0))(
  ( (Unit!24507) )
))
(declare-fun lt!316824 () Unit!24506)

(declare-fun e!394864 () Unit!24506)

(assert (=> b!694087 (= lt!316824 e!394864)))

(declare-fun c!78254 () Bool)

(assert (=> b!694087 (= c!78254 (= (select (arr!19084 a!3626) from!3004) k0!2843))))

(declare-fun b!694088 () Bool)

(declare-fun e!394865 () Bool)

(assert (=> b!694088 (= e!394865 (contains!3721 lt!316827 k0!2843))))

(declare-fun b!694089 () Bool)

(declare-fun e!394862 () Bool)

(declare-fun e!394860 () Bool)

(assert (=> b!694089 (= e!394862 e!394860)))

(declare-fun res!458310 () Bool)

(assert (=> b!694089 (=> (not res!458310) (not e!394860))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!694089 (= res!458310 (bvsle from!3004 i!1382))))

(declare-fun b!694090 () Bool)

(assert (=> b!694090 (= e!394858 false)))

(declare-fun lt!316826 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39851 (_ BitVec 32) List!13178) Bool)

(assert (=> b!694090 (= lt!316826 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316827))))

(declare-fun b!694091 () Bool)

(assert (=> b!694091 (= e!394860 (not (contains!3721 acc!681 k0!2843)))))

(declare-fun b!694092 () Bool)

(declare-fun res!458319 () Bool)

(assert (=> b!694092 (=> (not res!458319) (not e!394857))))

(assert (=> b!694092 (= res!458319 (validKeyInArray!0 k0!2843))))

(declare-fun b!694093 () Bool)

(declare-fun res!458320 () Bool)

(assert (=> b!694093 (=> (not res!458320) (not e!394857))))

(assert (=> b!694093 (= res!458320 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19467 a!3626))))))

(declare-fun b!694095 () Bool)

(declare-fun res!458322 () Bool)

(assert (=> b!694095 (=> (not res!458322) (not e!394857))))

(assert (=> b!694095 (= res!458322 (not (contains!3721 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694096 () Bool)

(assert (=> b!694096 (= e!394863 e!394858)))

(declare-fun res!458332 () Bool)

(assert (=> b!694096 (=> (not res!458332) (not e!394858))))

(assert (=> b!694096 (= res!458332 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!431 (List!13178 (_ BitVec 64)) List!13178)

(assert (=> b!694096 (= lt!316827 ($colon$colon!431 acc!681 (select (arr!19084 a!3626) from!3004)))))

(declare-fun b!694097 () Bool)

(declare-fun e!394861 () Bool)

(declare-fun e!394859 () Bool)

(assert (=> b!694097 (= e!394861 e!394859)))

(declare-fun res!458315 () Bool)

(assert (=> b!694097 (=> (not res!458315) (not e!394859))))

(assert (=> b!694097 (= res!458315 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694098 () Bool)

(declare-fun res!458325 () Bool)

(assert (=> b!694098 (=> (not res!458325) (not e!394857))))

(assert (=> b!694098 (= res!458325 e!394862)))

(declare-fun res!458318 () Bool)

(assert (=> b!694098 (=> res!458318 e!394862)))

(assert (=> b!694098 (= res!458318 e!394866)))

(declare-fun res!458317 () Bool)

(assert (=> b!694098 (=> (not res!458317) (not e!394866))))

(assert (=> b!694098 (= res!458317 (bvsgt from!3004 i!1382))))

(declare-fun b!694099 () Bool)

(declare-fun Unit!24508 () Unit!24506)

(assert (=> b!694099 (= e!394864 Unit!24508)))

(declare-fun b!694100 () Bool)

(declare-fun res!458328 () Bool)

(assert (=> b!694100 (=> (not res!458328) (not e!394858))))

(declare-fun noDuplicate!968 (List!13178) Bool)

(assert (=> b!694100 (= res!458328 (noDuplicate!968 lt!316827))))

(declare-fun b!694101 () Bool)

(declare-fun res!458311 () Bool)

(assert (=> b!694101 (=> (not res!458311) (not e!394857))))

(assert (=> b!694101 (= res!458311 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19467 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!694102 () Bool)

(declare-fun res!458316 () Bool)

(assert (=> b!694102 (=> (not res!458316) (not e!394857))))

(declare-fun arrayContainsKey!0 (array!39851 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!694102 (= res!458316 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!694103 () Bool)

(declare-fun res!458326 () Bool)

(assert (=> b!694103 (=> (not res!458326) (not e!394858))))

(assert (=> b!694103 (= res!458326 e!394861)))

(declare-fun res!458333 () Bool)

(assert (=> b!694103 (=> res!458333 e!394861)))

(assert (=> b!694103 (= res!458333 e!394865)))

(declare-fun res!458327 () Bool)

(assert (=> b!694103 (=> (not res!458327) (not e!394865))))

(assert (=> b!694103 (= res!458327 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694104 () Bool)

(declare-fun res!458321 () Bool)

(assert (=> b!694104 (=> (not res!458321) (not e!394857))))

(assert (=> b!694104 (= res!458321 (noDuplicate!968 acc!681))))

(declare-fun b!694105 () Bool)

(declare-fun res!458329 () Bool)

(assert (=> b!694105 (=> (not res!458329) (not e!394858))))

(assert (=> b!694105 (= res!458329 (not (contains!3721 lt!316827 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694106 () Bool)

(assert (=> b!694106 (= e!394859 (not (contains!3721 lt!316827 k0!2843)))))

(declare-fun b!694107 () Bool)

(declare-fun res!458313 () Bool)

(assert (=> b!694107 (=> (not res!458313) (not e!394857))))

(assert (=> b!694107 (= res!458313 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13175))))

(declare-fun b!694108 () Bool)

(declare-fun Unit!24509 () Unit!24506)

(assert (=> b!694108 (= e!394864 Unit!24509)))

(assert (=> b!694108 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!316825 () Unit!24506)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39851 (_ BitVec 64) (_ BitVec 32)) Unit!24506)

(assert (=> b!694108 (= lt!316825 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!694108 false))

(declare-fun b!694109 () Bool)

(declare-fun res!458312 () Bool)

(assert (=> b!694109 (=> (not res!458312) (not e!394857))))

(assert (=> b!694109 (= res!458312 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!458330 () Bool)

(assert (=> start!62054 (=> (not res!458330) (not e!394857))))

(assert (=> start!62054 (= res!458330 (and (bvslt (size!19467 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19467 a!3626))))))

(assert (=> start!62054 e!394857))

(assert (=> start!62054 true))

(declare-fun array_inv!14858 (array!39851) Bool)

(assert (=> start!62054 (array_inv!14858 a!3626)))

(declare-fun b!694094 () Bool)

(declare-fun res!458324 () Bool)

(assert (=> b!694094 (=> (not res!458324) (not e!394857))))

(assert (=> b!694094 (= res!458324 (not (contains!3721 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62054 res!458330) b!694104))

(assert (= (and b!694104 res!458321) b!694094))

(assert (= (and b!694094 res!458324) b!694095))

(assert (= (and b!694095 res!458322) b!694098))

(assert (= (and b!694098 res!458317) b!694085))

(assert (= (and b!694098 (not res!458318)) b!694089))

(assert (= (and b!694089 res!458310) b!694091))

(assert (= (and b!694098 res!458325) b!694107))

(assert (= (and b!694107 res!458313) b!694109))

(assert (= (and b!694109 res!458312) b!694093))

(assert (= (and b!694093 res!458320) b!694092))

(assert (= (and b!694092 res!458319) b!694102))

(assert (= (and b!694102 res!458316) b!694101))

(assert (= (and b!694101 res!458311) b!694084))

(assert (= (and b!694084 res!458331) b!694087))

(assert (= (and b!694087 c!78254) b!694108))

(assert (= (and b!694087 (not c!78254)) b!694099))

(assert (= (and b!694087 res!458314) b!694096))

(assert (= (and b!694096 res!458332) b!694100))

(assert (= (and b!694100 res!458328) b!694086))

(assert (= (and b!694086 res!458323) b!694105))

(assert (= (and b!694105 res!458329) b!694103))

(assert (= (and b!694103 res!458327) b!694088))

(assert (= (and b!694103 (not res!458333)) b!694097))

(assert (= (and b!694097 res!458315) b!694106))

(assert (= (and b!694103 res!458326) b!694090))

(declare-fun m!656057 () Bool)

(assert (=> b!694087 m!656057))

(declare-fun m!656059 () Bool)

(assert (=> b!694088 m!656059))

(declare-fun m!656061 () Bool)

(assert (=> b!694104 m!656061))

(declare-fun m!656063 () Bool)

(assert (=> b!694085 m!656063))

(declare-fun m!656065 () Bool)

(assert (=> b!694108 m!656065))

(declare-fun m!656067 () Bool)

(assert (=> b!694108 m!656067))

(declare-fun m!656069 () Bool)

(assert (=> b!694094 m!656069))

(assert (=> b!694091 m!656063))

(assert (=> b!694084 m!656057))

(assert (=> b!694084 m!656057))

(declare-fun m!656071 () Bool)

(assert (=> b!694084 m!656071))

(declare-fun m!656073 () Bool)

(assert (=> b!694092 m!656073))

(declare-fun m!656075 () Bool)

(assert (=> start!62054 m!656075))

(declare-fun m!656077 () Bool)

(assert (=> b!694090 m!656077))

(declare-fun m!656079 () Bool)

(assert (=> b!694109 m!656079))

(declare-fun m!656081 () Bool)

(assert (=> b!694095 m!656081))

(declare-fun m!656083 () Bool)

(assert (=> b!694102 m!656083))

(declare-fun m!656085 () Bool)

(assert (=> b!694107 m!656085))

(assert (=> b!694096 m!656057))

(assert (=> b!694096 m!656057))

(declare-fun m!656087 () Bool)

(assert (=> b!694096 m!656087))

(declare-fun m!656089 () Bool)

(assert (=> b!694086 m!656089))

(assert (=> b!694106 m!656059))

(declare-fun m!656091 () Bool)

(assert (=> b!694100 m!656091))

(declare-fun m!656093 () Bool)

(assert (=> b!694105 m!656093))

(check-sat (not b!694100) (not b!694104) (not b!694105) (not b!694106) (not b!694107) (not b!694086) (not start!62054) (not b!694096) (not b!694091) (not b!694108) (not b!694085) (not b!694088) (not b!694094) (not b!694095) (not b!694102) (not b!694090) (not b!694109) (not b!694092) (not b!694084))
(check-sat)
