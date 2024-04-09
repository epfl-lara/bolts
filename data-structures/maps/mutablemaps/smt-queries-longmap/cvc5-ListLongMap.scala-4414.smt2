; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60990 () Bool)

(assert start!60990)

(declare-fun b!683411 () Bool)

(declare-datatypes ((Unit!24007 0))(
  ( (Unit!24008) )
))
(declare-fun e!389336 () Unit!24007)

(declare-fun lt!313894 () Unit!24007)

(assert (=> b!683411 (= e!389336 lt!313894)))

(declare-fun lt!313899 () Unit!24007)

(declare-datatypes ((List!13048 0))(
  ( (Nil!13045) (Cons!13044 (h!14089 (_ BitVec 64)) (t!19302 List!13048)) )
))
(declare-fun acc!681 () List!13048)

(declare-fun lemmaListSubSeqRefl!0 (List!13048) Unit!24007)

(assert (=> b!683411 (= lt!313899 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!176 (List!13048 List!13048) Bool)

(assert (=> b!683411 (subseq!176 acc!681 acc!681)))

(declare-datatypes ((array!39555 0))(
  ( (array!39556 (arr!18954 (Array (_ BitVec 32) (_ BitVec 64))) (size!19320 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39555)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39555 List!13048 List!13048 (_ BitVec 32)) Unit!24007)

(declare-fun $colon$colon!340 (List!13048 (_ BitVec 64)) List!13048)

(assert (=> b!683411 (= lt!313894 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!340 acc!681 (select (arr!18954 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39555 (_ BitVec 32) List!13048) Bool)

(assert (=> b!683411 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun res!449320 () Bool)

(declare-fun e!389334 () Bool)

(assert (=> start!60990 (=> (not res!449320) (not e!389334))))

(assert (=> start!60990 (= res!449320 (and (bvslt (size!19320 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19320 a!3626))))))

(assert (=> start!60990 e!389334))

(assert (=> start!60990 true))

(declare-fun array_inv!14728 (array!39555) Bool)

(assert (=> start!60990 (array_inv!14728 a!3626)))

(declare-fun b!683412 () Bool)

(declare-fun res!449321 () Bool)

(assert (=> b!683412 (=> (not res!449321) (not e!389334))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!683412 (= res!449321 (validKeyInArray!0 k!2843))))

(declare-fun b!683413 () Bool)

(declare-fun res!449312 () Bool)

(assert (=> b!683413 (=> (not res!449312) (not e!389334))))

(declare-fun arrayContainsKey!0 (array!39555 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!683413 (= res!449312 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!683414 () Bool)

(declare-fun e!389337 () Unit!24007)

(declare-fun Unit!24009 () Unit!24007)

(assert (=> b!683414 (= e!389337 Unit!24009)))

(declare-fun lt!313895 () Unit!24007)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39555 (_ BitVec 64) (_ BitVec 32)) Unit!24007)

(assert (=> b!683414 (= lt!313895 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!683414 false))

(declare-fun b!683415 () Bool)

(declare-fun e!389340 () Bool)

(assert (=> b!683415 (= e!389334 (not e!389340))))

(declare-fun res!449310 () Bool)

(assert (=> b!683415 (=> res!449310 e!389340)))

(assert (=> b!683415 (= res!449310 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!313892 () List!13048)

(declare-fun -!141 (List!13048 (_ BitVec 64)) List!13048)

(assert (=> b!683415 (= (-!141 lt!313892 k!2843) acc!681)))

(assert (=> b!683415 (= lt!313892 ($colon$colon!340 acc!681 k!2843))))

(declare-fun lt!313891 () Unit!24007)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13048) Unit!24007)

(assert (=> b!683415 (= lt!313891 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!683415 (subseq!176 acc!681 acc!681)))

(declare-fun lt!313898 () Unit!24007)

(assert (=> b!683415 (= lt!313898 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!683415 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313896 () Unit!24007)

(assert (=> b!683415 (= lt!313896 e!389336)))

(declare-fun c!77419 () Bool)

(assert (=> b!683415 (= c!77419 (validKeyInArray!0 (select (arr!18954 a!3626) from!3004)))))

(declare-fun lt!313897 () Unit!24007)

(assert (=> b!683415 (= lt!313897 e!389337)))

(declare-fun c!77420 () Bool)

(assert (=> b!683415 (= c!77420 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!683415 (arrayContainsKey!0 (array!39556 (store (arr!18954 a!3626) i!1382 k!2843) (size!19320 a!3626)) k!2843 from!3004)))

(declare-fun b!683416 () Bool)

(declare-fun res!449307 () Bool)

(assert (=> b!683416 (=> (not res!449307) (not e!389334))))

(assert (=> b!683416 (= res!449307 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19320 a!3626))))))

(declare-fun b!683417 () Bool)

(declare-fun e!389341 () Bool)

(declare-fun e!389339 () Bool)

(assert (=> b!683417 (= e!389341 e!389339)))

(declare-fun res!449311 () Bool)

(assert (=> b!683417 (=> (not res!449311) (not e!389339))))

(assert (=> b!683417 (= res!449311 (bvsle from!3004 i!1382))))

(declare-fun b!683418 () Bool)

(declare-fun res!449309 () Bool)

(assert (=> b!683418 (=> (not res!449309) (not e!389334))))

(declare-fun contains!3591 (List!13048 (_ BitVec 64)) Bool)

(assert (=> b!683418 (= res!449309 (not (contains!3591 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683419 () Bool)

(declare-fun res!449313 () Bool)

(assert (=> b!683419 (=> (not res!449313) (not e!389334))))

(assert (=> b!683419 (= res!449313 (not (contains!3591 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683420 () Bool)

(declare-fun res!449308 () Bool)

(assert (=> b!683420 (=> (not res!449308) (not e!389334))))

(assert (=> b!683420 (= res!449308 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!683421 () Bool)

(declare-fun res!449314 () Bool)

(assert (=> b!683421 (=> (not res!449314) (not e!389334))))

(assert (=> b!683421 (= res!449314 e!389341)))

(declare-fun res!449318 () Bool)

(assert (=> b!683421 (=> res!449318 e!389341)))

(declare-fun e!389338 () Bool)

(assert (=> b!683421 (= res!449318 e!389338)))

(declare-fun res!449319 () Bool)

(assert (=> b!683421 (=> (not res!449319) (not e!389338))))

(assert (=> b!683421 (= res!449319 (bvsgt from!3004 i!1382))))

(declare-fun b!683422 () Bool)

(assert (=> b!683422 (= e!389338 (contains!3591 acc!681 k!2843))))

(declare-fun b!683423 () Bool)

(declare-fun res!449315 () Bool)

(assert (=> b!683423 (=> (not res!449315) (not e!389334))))

(declare-fun noDuplicate!838 (List!13048) Bool)

(assert (=> b!683423 (= res!449315 (noDuplicate!838 acc!681))))

(declare-fun b!683424 () Bool)

(declare-fun Unit!24010 () Unit!24007)

(assert (=> b!683424 (= e!389336 Unit!24010)))

(declare-fun b!683425 () Bool)

(declare-fun res!449316 () Bool)

(assert (=> b!683425 (=> (not res!449316) (not e!389334))))

(assert (=> b!683425 (= res!449316 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13045))))

(declare-fun b!683426 () Bool)

(declare-fun res!449317 () Bool)

(assert (=> b!683426 (=> (not res!449317) (not e!389334))))

(assert (=> b!683426 (= res!449317 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19320 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!683427 () Bool)

(assert (=> b!683427 (= e!389339 (not (contains!3591 acc!681 k!2843)))))

(declare-fun b!683428 () Bool)

(declare-fun Unit!24011 () Unit!24007)

(assert (=> b!683428 (= e!389337 Unit!24011)))

(declare-fun b!683429 () Bool)

(assert (=> b!683429 (= e!389340 true)))

(declare-fun lt!313893 () Bool)

(assert (=> b!683429 (= lt!313893 (noDuplicate!838 lt!313892))))

(assert (= (and start!60990 res!449320) b!683423))

(assert (= (and b!683423 res!449315) b!683419))

(assert (= (and b!683419 res!449313) b!683418))

(assert (= (and b!683418 res!449309) b!683421))

(assert (= (and b!683421 res!449319) b!683422))

(assert (= (and b!683421 (not res!449318)) b!683417))

(assert (= (and b!683417 res!449311) b!683427))

(assert (= (and b!683421 res!449314) b!683425))

(assert (= (and b!683425 res!449316) b!683420))

(assert (= (and b!683420 res!449308) b!683416))

(assert (= (and b!683416 res!449307) b!683412))

(assert (= (and b!683412 res!449321) b!683413))

(assert (= (and b!683413 res!449312) b!683426))

(assert (= (and b!683426 res!449317) b!683415))

(assert (= (and b!683415 c!77420) b!683414))

(assert (= (and b!683415 (not c!77420)) b!683428))

(assert (= (and b!683415 c!77419) b!683411))

(assert (= (and b!683415 (not c!77419)) b!683424))

(assert (= (and b!683415 (not res!449310)) b!683429))

(declare-fun m!648015 () Bool)

(assert (=> b!683419 m!648015))

(declare-fun m!648017 () Bool)

(assert (=> b!683413 m!648017))

(declare-fun m!648019 () Bool)

(assert (=> b!683411 m!648019))

(declare-fun m!648021 () Bool)

(assert (=> b!683411 m!648021))

(declare-fun m!648023 () Bool)

(assert (=> b!683411 m!648023))

(declare-fun m!648025 () Bool)

(assert (=> b!683411 m!648025))

(assert (=> b!683411 m!648021))

(assert (=> b!683411 m!648023))

(declare-fun m!648027 () Bool)

(assert (=> b!683411 m!648027))

(declare-fun m!648029 () Bool)

(assert (=> b!683411 m!648029))

(declare-fun m!648031 () Bool)

(assert (=> b!683425 m!648031))

(declare-fun m!648033 () Bool)

(assert (=> b!683412 m!648033))

(declare-fun m!648035 () Bool)

(assert (=> b!683415 m!648035))

(assert (=> b!683415 m!648019))

(assert (=> b!683415 m!648021))

(declare-fun m!648037 () Bool)

(assert (=> b!683415 m!648037))

(declare-fun m!648039 () Bool)

(assert (=> b!683415 m!648039))

(assert (=> b!683415 m!648027))

(declare-fun m!648041 () Bool)

(assert (=> b!683415 m!648041))

(declare-fun m!648043 () Bool)

(assert (=> b!683415 m!648043))

(assert (=> b!683415 m!648021))

(declare-fun m!648045 () Bool)

(assert (=> b!683415 m!648045))

(declare-fun m!648047 () Bool)

(assert (=> b!683415 m!648047))

(assert (=> b!683415 m!648029))

(declare-fun m!648049 () Bool)

(assert (=> b!683414 m!648049))

(declare-fun m!648051 () Bool)

(assert (=> b!683420 m!648051))

(declare-fun m!648053 () Bool)

(assert (=> b!683422 m!648053))

(declare-fun m!648055 () Bool)

(assert (=> b!683429 m!648055))

(declare-fun m!648057 () Bool)

(assert (=> b!683423 m!648057))

(declare-fun m!648059 () Bool)

(assert (=> b!683418 m!648059))

(declare-fun m!648061 () Bool)

(assert (=> start!60990 m!648061))

(assert (=> b!683427 m!648053))

(push 1)

(assert (not b!683418))

(assert (not b!683423))

(assert (not b!683429))

(assert (not b!683427))

(assert (not b!683414))

(assert (not start!60990))

(assert (not b!683419))

(assert (not b!683415))

(assert (not b!683413))

(assert (not b!683425))

(assert (not b!683412))

(assert (not b!683411))

(assert (not b!683422))

(assert (not b!683420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

