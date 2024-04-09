; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60504 () Bool)

(assert start!60504)

(declare-fun b!679510 () Bool)

(declare-fun res!446030 () Bool)

(declare-fun e!387129 () Bool)

(assert (=> b!679510 (=> (not res!446030) (not e!387129))))

(declare-fun e!387128 () Bool)

(assert (=> b!679510 (= res!446030 e!387128)))

(declare-fun res!446023 () Bool)

(assert (=> b!679510 (=> res!446023 e!387128)))

(declare-fun e!387125 () Bool)

(assert (=> b!679510 (= res!446023 e!387125)))

(declare-fun res!446034 () Bool)

(assert (=> b!679510 (=> (not res!446034) (not e!387125))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!679510 (= res!446034 (bvsgt from!3004 i!1382))))

(declare-fun b!679511 () Bool)

(declare-fun res!446022 () Bool)

(assert (=> b!679511 (=> (not res!446022) (not e!387129))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679511 (= res!446022 (validKeyInArray!0 k!2843))))

(declare-fun b!679512 () Bool)

(declare-datatypes ((Unit!23794 0))(
  ( (Unit!23795) )
))
(declare-fun e!387127 () Unit!23794)

(declare-fun Unit!23796 () Unit!23794)

(assert (=> b!679512 (= e!387127 Unit!23796)))

(declare-fun lt!312899 () Unit!23794)

(declare-datatypes ((array!39441 0))(
  ( (array!39442 (arr!18906 (Array (_ BitVec 32) (_ BitVec 64))) (size!19270 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39441)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39441 (_ BitVec 64) (_ BitVec 32)) Unit!23794)

(assert (=> b!679512 (= lt!312899 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!679512 false))

(declare-fun b!679513 () Bool)

(declare-fun res!446032 () Bool)

(assert (=> b!679513 (=> (not res!446032) (not e!387129))))

(declare-datatypes ((List!13000 0))(
  ( (Nil!12997) (Cons!12996 (h!14041 (_ BitVec 64)) (t!19236 List!13000)) )
))
(declare-fun acc!681 () List!13000)

(declare-fun noDuplicate!790 (List!13000) Bool)

(assert (=> b!679513 (= res!446032 (noDuplicate!790 acc!681))))

(declare-fun b!679514 () Bool)

(declare-fun res!446028 () Bool)

(assert (=> b!679514 (=> (not res!446028) (not e!387129))))

(declare-fun contains!3543 (List!13000 (_ BitVec 64)) Bool)

(assert (=> b!679514 (= res!446028 (not (contains!3543 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679516 () Bool)

(declare-fun res!446033 () Bool)

(assert (=> b!679516 (=> (not res!446033) (not e!387129))))

(assert (=> b!679516 (= res!446033 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19270 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679517 () Bool)

(declare-fun res!446026 () Bool)

(assert (=> b!679517 (=> (not res!446026) (not e!387129))))

(assert (=> b!679517 (= res!446026 (not (contains!3543 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679518 () Bool)

(declare-fun e!387124 () Bool)

(assert (=> b!679518 (= e!387124 true)))

(declare-fun subseq!128 (List!13000 List!13000) Bool)

(assert (=> b!679518 (subseq!128 acc!681 acc!681)))

(declare-fun lt!312898 () Unit!23794)

(declare-fun lemmaListSubSeqRefl!0 (List!13000) Unit!23794)

(assert (=> b!679518 (= lt!312898 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!679519 () Bool)

(assert (=> b!679519 (= e!387129 (not e!387124))))

(declare-fun res!446031 () Bool)

(assert (=> b!679519 (=> res!446031 e!387124)))

(assert (=> b!679519 (= res!446031 (not (validKeyInArray!0 (select (arr!18906 a!3626) from!3004))))))

(declare-fun lt!312900 () Unit!23794)

(assert (=> b!679519 (= lt!312900 e!387127)))

(declare-fun c!77111 () Bool)

(declare-fun arrayContainsKey!0 (array!39441 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679519 (= c!77111 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!679519 (arrayContainsKey!0 (array!39442 (store (arr!18906 a!3626) i!1382 k!2843) (size!19270 a!3626)) k!2843 from!3004)))

(declare-fun b!679520 () Bool)

(declare-fun e!387130 () Bool)

(assert (=> b!679520 (= e!387128 e!387130)))

(declare-fun res!446029 () Bool)

(assert (=> b!679520 (=> (not res!446029) (not e!387130))))

(assert (=> b!679520 (= res!446029 (bvsle from!3004 i!1382))))

(declare-fun b!679521 () Bool)

(declare-fun Unit!23797 () Unit!23794)

(assert (=> b!679521 (= e!387127 Unit!23797)))

(declare-fun b!679522 () Bool)

(declare-fun res!446035 () Bool)

(assert (=> b!679522 (=> (not res!446035) (not e!387129))))

(assert (=> b!679522 (= res!446035 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!679523 () Bool)

(assert (=> b!679523 (= e!387125 (contains!3543 acc!681 k!2843))))

(declare-fun b!679524 () Bool)

(declare-fun res!446036 () Bool)

(assert (=> b!679524 (=> (not res!446036) (not e!387129))))

(declare-fun arrayNoDuplicates!0 (array!39441 (_ BitVec 32) List!13000) Bool)

(assert (=> b!679524 (= res!446036 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12997))))

(declare-fun b!679525 () Bool)

(declare-fun res!446024 () Bool)

(assert (=> b!679525 (=> (not res!446024) (not e!387129))))

(assert (=> b!679525 (= res!446024 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19270 a!3626))))))

(declare-fun b!679526 () Bool)

(assert (=> b!679526 (= e!387130 (not (contains!3543 acc!681 k!2843)))))

(declare-fun b!679515 () Bool)

(declare-fun res!446025 () Bool)

(assert (=> b!679515 (=> (not res!446025) (not e!387129))))

(assert (=> b!679515 (= res!446025 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!446027 () Bool)

(assert (=> start!60504 (=> (not res!446027) (not e!387129))))

(assert (=> start!60504 (= res!446027 (and (bvslt (size!19270 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19270 a!3626))))))

(assert (=> start!60504 e!387129))

(assert (=> start!60504 true))

(declare-fun array_inv!14680 (array!39441) Bool)

(assert (=> start!60504 (array_inv!14680 a!3626)))

(assert (= (and start!60504 res!446027) b!679513))

(assert (= (and b!679513 res!446032) b!679517))

(assert (= (and b!679517 res!446026) b!679514))

(assert (= (and b!679514 res!446028) b!679510))

(assert (= (and b!679510 res!446034) b!679523))

(assert (= (and b!679510 (not res!446023)) b!679520))

(assert (= (and b!679520 res!446029) b!679526))

(assert (= (and b!679510 res!446030) b!679524))

(assert (= (and b!679524 res!446036) b!679515))

(assert (= (and b!679515 res!446025) b!679525))

(assert (= (and b!679525 res!446024) b!679511))

(assert (= (and b!679511 res!446022) b!679522))

(assert (= (and b!679522 res!446035) b!679516))

(assert (= (and b!679516 res!446033) b!679519))

(assert (= (and b!679519 c!77111) b!679512))

(assert (= (and b!679519 (not c!77111)) b!679521))

(assert (= (and b!679519 (not res!446031)) b!679518))

(declare-fun m!644871 () Bool)

(assert (=> b!679511 m!644871))

(declare-fun m!644873 () Bool)

(assert (=> b!679514 m!644873))

(declare-fun m!644875 () Bool)

(assert (=> b!679517 m!644875))

(declare-fun m!644877 () Bool)

(assert (=> b!679515 m!644877))

(declare-fun m!644879 () Bool)

(assert (=> b!679522 m!644879))

(declare-fun m!644881 () Bool)

(assert (=> b!679513 m!644881))

(declare-fun m!644883 () Bool)

(assert (=> b!679526 m!644883))

(declare-fun m!644885 () Bool)

(assert (=> start!60504 m!644885))

(declare-fun m!644887 () Bool)

(assert (=> b!679524 m!644887))

(declare-fun m!644889 () Bool)

(assert (=> b!679519 m!644889))

(declare-fun m!644891 () Bool)

(assert (=> b!679519 m!644891))

(declare-fun m!644893 () Bool)

(assert (=> b!679519 m!644893))

(assert (=> b!679519 m!644889))

(declare-fun m!644895 () Bool)

(assert (=> b!679519 m!644895))

(declare-fun m!644897 () Bool)

(assert (=> b!679519 m!644897))

(declare-fun m!644899 () Bool)

(assert (=> b!679512 m!644899))

(declare-fun m!644901 () Bool)

(assert (=> b!679518 m!644901))

(declare-fun m!644903 () Bool)

(assert (=> b!679518 m!644903))

(assert (=> b!679523 m!644883))

(push 1)

(assert (not b!679515))

(assert (not b!679511))

(assert (not b!679523))

(assert (not b!679519))

(assert (not start!60504))

(assert (not b!679518))

(assert (not b!679512))

(assert (not b!679524))

(assert (not b!679517))

(assert (not b!679522))

(assert (not b!679514))

(assert (not b!679526))

(assert (not b!679513))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

