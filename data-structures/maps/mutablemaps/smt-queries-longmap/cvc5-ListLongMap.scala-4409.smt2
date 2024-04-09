; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60882 () Bool)

(assert start!60882)

(declare-fun b!682350 () Bool)

(declare-fun res!448493 () Bool)

(declare-fun e!388804 () Bool)

(assert (=> b!682350 (=> (not res!448493) (not e!388804))))

(declare-datatypes ((array!39522 0))(
  ( (array!39523 (arr!18939 (Array (_ BitVec 32) (_ BitVec 64))) (size!19303 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39522)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13033 0))(
  ( (Nil!13030) (Cons!13029 (h!14074 (_ BitVec 64)) (t!19284 List!13033)) )
))
(declare-fun acc!681 () List!13033)

(declare-fun arrayNoDuplicates!0 (array!39522 (_ BitVec 32) List!13033) Bool)

(assert (=> b!682350 (= res!448493 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!682351 () Bool)

(declare-fun res!448505 () Bool)

(assert (=> b!682351 (=> (not res!448505) (not e!388804))))

(declare-fun contains!3576 (List!13033 (_ BitVec 64)) Bool)

(assert (=> b!682351 (= res!448505 (not (contains!3576 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682352 () Bool)

(declare-datatypes ((Unit!23932 0))(
  ( (Unit!23933) )
))
(declare-fun e!388802 () Unit!23932)

(declare-fun Unit!23934 () Unit!23932)

(assert (=> b!682352 (= e!388802 Unit!23934)))

(declare-fun b!682353 () Bool)

(declare-fun e!388798 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!682353 (= e!388798 (contains!3576 acc!681 k!2843))))

(declare-fun b!682354 () Bool)

(declare-fun res!448492 () Bool)

(assert (=> b!682354 (=> (not res!448492) (not e!388804))))

(declare-fun noDuplicate!823 (List!13033) Bool)

(assert (=> b!682354 (= res!448492 (noDuplicate!823 acc!681))))

(declare-fun b!682355 () Bool)

(declare-fun res!448502 () Bool)

(assert (=> b!682355 (=> (not res!448502) (not e!388804))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!682355 (= res!448502 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19303 a!3626))))))

(declare-fun b!682356 () Bool)

(declare-fun res!448496 () Bool)

(assert (=> b!682356 (=> (not res!448496) (not e!388804))))

(assert (=> b!682356 (= res!448496 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19303 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!682357 () Bool)

(assert (=> b!682357 (= e!388804 (not true))))

(declare-fun -!126 (List!13033 (_ BitVec 64)) List!13033)

(declare-fun $colon$colon!325 (List!13033 (_ BitVec 64)) List!13033)

(assert (=> b!682357 (= (-!126 ($colon$colon!325 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!313507 () Unit!23932)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13033) Unit!23932)

(assert (=> b!682357 (= lt!313507 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!161 (List!13033 List!13033) Bool)

(assert (=> b!682357 (subseq!161 acc!681 acc!681)))

(declare-fun lt!313509 () Unit!23932)

(declare-fun lemmaListSubSeqRefl!0 (List!13033) Unit!23932)

(assert (=> b!682357 (= lt!313509 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682357 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313503 () Unit!23932)

(assert (=> b!682357 (= lt!313503 e!388802)))

(declare-fun c!77297 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!682357 (= c!77297 (validKeyInArray!0 (select (arr!18939 a!3626) from!3004)))))

(declare-fun lt!313508 () Unit!23932)

(declare-fun e!388803 () Unit!23932)

(assert (=> b!682357 (= lt!313508 e!388803)))

(declare-fun c!77296 () Bool)

(declare-fun arrayContainsKey!0 (array!39522 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!682357 (= c!77296 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682357 (arrayContainsKey!0 (array!39523 (store (arr!18939 a!3626) i!1382 k!2843) (size!19303 a!3626)) k!2843 from!3004)))

(declare-fun res!448501 () Bool)

(assert (=> start!60882 (=> (not res!448501) (not e!388804))))

(assert (=> start!60882 (= res!448501 (and (bvslt (size!19303 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19303 a!3626))))))

(assert (=> start!60882 e!388804))

(assert (=> start!60882 true))

(declare-fun array_inv!14713 (array!39522) Bool)

(assert (=> start!60882 (array_inv!14713 a!3626)))

(declare-fun b!682358 () Bool)

(declare-fun Unit!23935 () Unit!23932)

(assert (=> b!682358 (= e!388803 Unit!23935)))

(declare-fun lt!313505 () Unit!23932)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39522 (_ BitVec 64) (_ BitVec 32)) Unit!23932)

(assert (=> b!682358 (= lt!313505 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!682358 false))

(declare-fun b!682359 () Bool)

(declare-fun res!448498 () Bool)

(assert (=> b!682359 (=> (not res!448498) (not e!388804))))

(assert (=> b!682359 (= res!448498 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13030))))

(declare-fun b!682360 () Bool)

(declare-fun lt!313506 () Unit!23932)

(assert (=> b!682360 (= e!388802 lt!313506)))

(declare-fun lt!313504 () Unit!23932)

(assert (=> b!682360 (= lt!313504 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682360 (subseq!161 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39522 List!13033 List!13033 (_ BitVec 32)) Unit!23932)

(assert (=> b!682360 (= lt!313506 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!325 acc!681 (select (arr!18939 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682360 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!682361 () Bool)

(declare-fun res!448504 () Bool)

(assert (=> b!682361 (=> (not res!448504) (not e!388804))))

(declare-fun e!388801 () Bool)

(assert (=> b!682361 (= res!448504 e!388801)))

(declare-fun res!448495 () Bool)

(assert (=> b!682361 (=> res!448495 e!388801)))

(assert (=> b!682361 (= res!448495 e!388798)))

(declare-fun res!448499 () Bool)

(assert (=> b!682361 (=> (not res!448499) (not e!388798))))

(assert (=> b!682361 (= res!448499 (bvsgt from!3004 i!1382))))

(declare-fun b!682362 () Bool)

(declare-fun res!448500 () Bool)

(assert (=> b!682362 (=> (not res!448500) (not e!388804))))

(assert (=> b!682362 (= res!448500 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!682363 () Bool)

(declare-fun Unit!23936 () Unit!23932)

(assert (=> b!682363 (= e!388803 Unit!23936)))

(declare-fun b!682364 () Bool)

(declare-fun res!448494 () Bool)

(assert (=> b!682364 (=> (not res!448494) (not e!388804))))

(assert (=> b!682364 (= res!448494 (validKeyInArray!0 k!2843))))

(declare-fun b!682365 () Bool)

(declare-fun e!388800 () Bool)

(assert (=> b!682365 (= e!388801 e!388800)))

(declare-fun res!448503 () Bool)

(assert (=> b!682365 (=> (not res!448503) (not e!388800))))

(assert (=> b!682365 (= res!448503 (bvsle from!3004 i!1382))))

(declare-fun b!682366 () Bool)

(declare-fun res!448497 () Bool)

(assert (=> b!682366 (=> (not res!448497) (not e!388804))))

(assert (=> b!682366 (= res!448497 (not (contains!3576 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682367 () Bool)

(assert (=> b!682367 (= e!388800 (not (contains!3576 acc!681 k!2843)))))

(assert (= (and start!60882 res!448501) b!682354))

(assert (= (and b!682354 res!448492) b!682351))

(assert (= (and b!682351 res!448505) b!682366))

(assert (= (and b!682366 res!448497) b!682361))

(assert (= (and b!682361 res!448499) b!682353))

(assert (= (and b!682361 (not res!448495)) b!682365))

(assert (= (and b!682365 res!448503) b!682367))

(assert (= (and b!682361 res!448504) b!682359))

(assert (= (and b!682359 res!448498) b!682350))

(assert (= (and b!682350 res!448493) b!682355))

(assert (= (and b!682355 res!448502) b!682364))

(assert (= (and b!682364 res!448494) b!682362))

(assert (= (and b!682362 res!448500) b!682356))

(assert (= (and b!682356 res!448496) b!682357))

(assert (= (and b!682357 c!77296) b!682358))

(assert (= (and b!682357 (not c!77296)) b!682363))

(assert (= (and b!682357 c!77297) b!682360))

(assert (= (and b!682357 (not c!77297)) b!682352))

(declare-fun m!647091 () Bool)

(assert (=> start!60882 m!647091))

(declare-fun m!647093 () Bool)

(assert (=> b!682364 m!647093))

(declare-fun m!647095 () Bool)

(assert (=> b!682358 m!647095))

(declare-fun m!647097 () Bool)

(assert (=> b!682360 m!647097))

(declare-fun m!647099 () Bool)

(assert (=> b!682360 m!647099))

(declare-fun m!647101 () Bool)

(assert (=> b!682360 m!647101))

(declare-fun m!647103 () Bool)

(assert (=> b!682360 m!647103))

(assert (=> b!682360 m!647099))

(assert (=> b!682360 m!647101))

(declare-fun m!647105 () Bool)

(assert (=> b!682360 m!647105))

(declare-fun m!647107 () Bool)

(assert (=> b!682360 m!647107))

(declare-fun m!647109 () Bool)

(assert (=> b!682359 m!647109))

(declare-fun m!647111 () Bool)

(assert (=> b!682362 m!647111))

(declare-fun m!647113 () Bool)

(assert (=> b!682357 m!647113))

(declare-fun m!647115 () Bool)

(assert (=> b!682357 m!647115))

(assert (=> b!682357 m!647097))

(assert (=> b!682357 m!647099))

(declare-fun m!647117 () Bool)

(assert (=> b!682357 m!647117))

(declare-fun m!647119 () Bool)

(assert (=> b!682357 m!647119))

(assert (=> b!682357 m!647105))

(declare-fun m!647121 () Bool)

(assert (=> b!682357 m!647121))

(assert (=> b!682357 m!647113))

(assert (=> b!682357 m!647099))

(declare-fun m!647123 () Bool)

(assert (=> b!682357 m!647123))

(declare-fun m!647125 () Bool)

(assert (=> b!682357 m!647125))

(assert (=> b!682357 m!647107))

(declare-fun m!647127 () Bool)

(assert (=> b!682350 m!647127))

(declare-fun m!647129 () Bool)

(assert (=> b!682354 m!647129))

(declare-fun m!647131 () Bool)

(assert (=> b!682353 m!647131))

(assert (=> b!682367 m!647131))

(declare-fun m!647133 () Bool)

(assert (=> b!682351 m!647133))

(declare-fun m!647135 () Bool)

(assert (=> b!682366 m!647135))

(push 1)

(assert (not b!682351))

(assert (not b!682353))

(assert (not b!682358))

(assert (not b!682362))

(assert (not start!60882))

(assert (not b!682367))

(assert (not b!682357))

(assert (not b!682359))

(assert (not b!682350))

(assert (not b!682354))

(assert (not b!682366))

(assert (not b!682364))

(assert (not b!682360))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

