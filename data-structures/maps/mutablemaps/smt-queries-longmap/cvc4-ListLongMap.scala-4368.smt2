; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60256 () Bool)

(assert start!60256)

(declare-fun b!674808 () Bool)

(declare-fun res!441412 () Bool)

(declare-fun e!385110 () Bool)

(assert (=> b!674808 (=> (not res!441412) (not e!385110))))

(declare-datatypes ((array!39259 0))(
  ( (array!39260 (arr!18818 (Array (_ BitVec 32) (_ BitVec 64))) (size!19182 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39259)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!674808 (= res!441412 (validKeyInArray!0 (select (arr!18818 a!3626) from!3004)))))

(declare-fun b!674809 () Bool)

(declare-fun res!441429 () Bool)

(assert (=> b!674809 (=> (not res!441429) (not e!385110))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39259 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!674809 (= res!441429 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!674810 () Bool)

(declare-fun e!385103 () Bool)

(declare-fun e!385102 () Bool)

(assert (=> b!674810 (= e!385103 e!385102)))

(declare-fun res!441414 () Bool)

(assert (=> b!674810 (=> (not res!441414) (not e!385102))))

(assert (=> b!674810 (= res!441414 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!12912 0))(
  ( (Nil!12909) (Cons!12908 (h!13953 (_ BitVec 64)) (t!19148 List!12912)) )
))
(declare-fun acc!681 () List!12912)

(declare-fun lt!312645 () List!12912)

(declare-fun $colon$colon!303 (List!12912 (_ BitVec 64)) List!12912)

(assert (=> b!674810 (= lt!312645 ($colon$colon!303 acc!681 (select (arr!18818 a!3626) from!3004)))))

(declare-fun b!674811 () Bool)

(declare-fun e!385109 () Bool)

(declare-fun e!385101 () Bool)

(assert (=> b!674811 (= e!385109 e!385101)))

(declare-fun res!441426 () Bool)

(assert (=> b!674811 (=> (not res!441426) (not e!385101))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!674811 (= res!441426 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674812 () Bool)

(declare-datatypes ((Unit!23736 0))(
  ( (Unit!23737) )
))
(declare-fun e!385105 () Unit!23736)

(declare-fun Unit!23738 () Unit!23736)

(assert (=> b!674812 (= e!385105 Unit!23738)))

(assert (=> b!674812 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312644 () Unit!23736)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39259 (_ BitVec 64) (_ BitVec 32)) Unit!23736)

(assert (=> b!674812 (= lt!312644 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!674812 false))

(declare-fun b!674813 () Bool)

(declare-fun contains!3455 (List!12912 (_ BitVec 64)) Bool)

(assert (=> b!674813 (= e!385101 (not (contains!3455 lt!312645 k!2843)))))

(declare-fun b!674814 () Bool)

(declare-fun Unit!23739 () Unit!23736)

(assert (=> b!674814 (= e!385105 Unit!23739)))

(declare-fun b!674815 () Bool)

(declare-fun res!441415 () Bool)

(assert (=> b!674815 (=> (not res!441415) (not e!385102))))

(assert (=> b!674815 (= res!441415 (not (contains!3455 lt!312645 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674816 () Bool)

(declare-fun e!385111 () Bool)

(assert (=> b!674816 (= e!385111 (not (contains!3455 acc!681 k!2843)))))

(declare-fun b!674817 () Bool)

(declare-fun e!385108 () Bool)

(assert (=> b!674817 (= e!385108 (contains!3455 acc!681 k!2843))))

(declare-fun b!674818 () Bool)

(declare-fun res!441424 () Bool)

(assert (=> b!674818 (=> (not res!441424) (not e!385110))))

(assert (=> b!674818 (= res!441424 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19182 a!3626))))))

(declare-fun res!441422 () Bool)

(assert (=> start!60256 (=> (not res!441422) (not e!385110))))

(assert (=> start!60256 (= res!441422 (and (bvslt (size!19182 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19182 a!3626))))))

(assert (=> start!60256 e!385110))

(assert (=> start!60256 true))

(declare-fun array_inv!14592 (array!39259) Bool)

(assert (=> start!60256 (array_inv!14592 a!3626)))

(declare-fun b!674819 () Bool)

(declare-fun e!385106 () Bool)

(assert (=> b!674819 (= e!385106 e!385111)))

(declare-fun res!441431 () Bool)

(assert (=> b!674819 (=> (not res!441431) (not e!385111))))

(assert (=> b!674819 (= res!441431 (bvsle from!3004 i!1382))))

(declare-fun b!674820 () Bool)

(declare-fun res!441413 () Bool)

(assert (=> b!674820 (=> (not res!441413) (not e!385102))))

(assert (=> b!674820 (= res!441413 (not (contains!3455 lt!312645 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674821 () Bool)

(declare-fun res!441428 () Bool)

(assert (=> b!674821 (=> (not res!441428) (not e!385110))))

(assert (=> b!674821 (= res!441428 e!385106)))

(declare-fun res!441420 () Bool)

(assert (=> b!674821 (=> res!441420 e!385106)))

(assert (=> b!674821 (= res!441420 e!385108)))

(declare-fun res!441418 () Bool)

(assert (=> b!674821 (=> (not res!441418) (not e!385108))))

(assert (=> b!674821 (= res!441418 (bvsgt from!3004 i!1382))))

(declare-fun b!674822 () Bool)

(declare-fun res!441425 () Bool)

(assert (=> b!674822 (=> (not res!441425) (not e!385110))))

(assert (=> b!674822 (= res!441425 (not (contains!3455 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674823 () Bool)

(declare-fun res!441433 () Bool)

(assert (=> b!674823 (=> (not res!441433) (not e!385110))))

(assert (=> b!674823 (= res!441433 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19182 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!674824 () Bool)

(declare-fun res!441417 () Bool)

(assert (=> b!674824 (=> (not res!441417) (not e!385110))))

(declare-fun arrayNoDuplicates!0 (array!39259 (_ BitVec 32) List!12912) Bool)

(assert (=> b!674824 (= res!441417 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!674825 () Bool)

(declare-fun res!441421 () Bool)

(assert (=> b!674825 (=> (not res!441421) (not e!385110))))

(assert (=> b!674825 (= res!441421 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12909))))

(declare-fun b!674826 () Bool)

(assert (=> b!674826 (= e!385110 e!385103)))

(declare-fun res!441411 () Bool)

(assert (=> b!674826 (=> (not res!441411) (not e!385103))))

(assert (=> b!674826 (= res!441411 (not (= (select (arr!18818 a!3626) from!3004) k!2843)))))

(declare-fun lt!312642 () Unit!23736)

(assert (=> b!674826 (= lt!312642 e!385105)))

(declare-fun c!77066 () Bool)

(assert (=> b!674826 (= c!77066 (= (select (arr!18818 a!3626) from!3004) k!2843))))

(declare-fun b!674827 () Bool)

(assert (=> b!674827 (= e!385102 (not true))))

(assert (=> b!674827 (arrayNoDuplicates!0 (array!39260 (store (arr!18818 a!3626) i!1382 k!2843) (size!19182 a!3626)) (bvadd #b00000000000000000000000000000001 from!3004) lt!312645)))

(declare-fun lt!312643 () Unit!23736)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39259 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12912) Unit!23736)

(assert (=> b!674827 (= lt!312643 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!312645))))

(declare-fun b!674828 () Bool)

(declare-fun res!441432 () Bool)

(assert (=> b!674828 (=> (not res!441432) (not e!385102))))

(assert (=> b!674828 (= res!441432 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312645))))

(declare-fun b!674829 () Bool)

(declare-fun res!441434 () Bool)

(assert (=> b!674829 (=> (not res!441434) (not e!385110))))

(assert (=> b!674829 (= res!441434 (not (contains!3455 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!674830 () Bool)

(declare-fun res!441419 () Bool)

(assert (=> b!674830 (=> (not res!441419) (not e!385110))))

(assert (=> b!674830 (= res!441419 (validKeyInArray!0 k!2843))))

(declare-fun b!674831 () Bool)

(declare-fun res!441430 () Bool)

(assert (=> b!674831 (=> (not res!441430) (not e!385102))))

(assert (=> b!674831 (= res!441430 e!385109)))

(declare-fun res!441423 () Bool)

(assert (=> b!674831 (=> res!441423 e!385109)))

(declare-fun e!385107 () Bool)

(assert (=> b!674831 (= res!441423 e!385107)))

(declare-fun res!441416 () Bool)

(assert (=> b!674831 (=> (not res!441416) (not e!385107))))

(assert (=> b!674831 (= res!441416 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!674832 () Bool)

(declare-fun res!441410 () Bool)

(assert (=> b!674832 (=> (not res!441410) (not e!385110))))

(declare-fun noDuplicate!702 (List!12912) Bool)

(assert (=> b!674832 (= res!441410 (noDuplicate!702 acc!681))))

(declare-fun b!674833 () Bool)

(declare-fun res!441427 () Bool)

(assert (=> b!674833 (=> (not res!441427) (not e!385102))))

(assert (=> b!674833 (= res!441427 (noDuplicate!702 lt!312645))))

(declare-fun b!674834 () Bool)

(assert (=> b!674834 (= e!385107 (contains!3455 lt!312645 k!2843))))

(assert (= (and start!60256 res!441422) b!674832))

(assert (= (and b!674832 res!441410) b!674822))

(assert (= (and b!674822 res!441425) b!674829))

(assert (= (and b!674829 res!441434) b!674821))

(assert (= (and b!674821 res!441418) b!674817))

(assert (= (and b!674821 (not res!441420)) b!674819))

(assert (= (and b!674819 res!441431) b!674816))

(assert (= (and b!674821 res!441428) b!674825))

(assert (= (and b!674825 res!441421) b!674824))

(assert (= (and b!674824 res!441417) b!674818))

(assert (= (and b!674818 res!441424) b!674830))

(assert (= (and b!674830 res!441419) b!674809))

(assert (= (and b!674809 res!441429) b!674823))

(assert (= (and b!674823 res!441433) b!674808))

(assert (= (and b!674808 res!441412) b!674826))

(assert (= (and b!674826 c!77066) b!674812))

(assert (= (and b!674826 (not c!77066)) b!674814))

(assert (= (and b!674826 res!441411) b!674810))

(assert (= (and b!674810 res!441414) b!674833))

(assert (= (and b!674833 res!441427) b!674815))

(assert (= (and b!674815 res!441415) b!674820))

(assert (= (and b!674820 res!441413) b!674831))

(assert (= (and b!674831 res!441416) b!674834))

(assert (= (and b!674831 (not res!441423)) b!674811))

(assert (= (and b!674811 res!441426) b!674813))

(assert (= (and b!674831 res!441430) b!674828))

(assert (= (and b!674828 res!441432) b!674827))

(declare-fun m!642565 () Bool)

(assert (=> b!674829 m!642565))

(declare-fun m!642567 () Bool)

(assert (=> b!674817 m!642567))

(declare-fun m!642569 () Bool)

(assert (=> b!674826 m!642569))

(declare-fun m!642571 () Bool)

(assert (=> b!674812 m!642571))

(declare-fun m!642573 () Bool)

(assert (=> b!674812 m!642573))

(declare-fun m!642575 () Bool)

(assert (=> b!674833 m!642575))

(declare-fun m!642577 () Bool)

(assert (=> b!674820 m!642577))

(declare-fun m!642579 () Bool)

(assert (=> b!674832 m!642579))

(assert (=> b!674810 m!642569))

(assert (=> b!674810 m!642569))

(declare-fun m!642581 () Bool)

(assert (=> b!674810 m!642581))

(declare-fun m!642583 () Bool)

(assert (=> b!674809 m!642583))

(declare-fun m!642585 () Bool)

(assert (=> b!674830 m!642585))

(assert (=> b!674816 m!642567))

(declare-fun m!642587 () Bool)

(assert (=> b!674828 m!642587))

(assert (=> b!674808 m!642569))

(assert (=> b!674808 m!642569))

(declare-fun m!642589 () Bool)

(assert (=> b!674808 m!642589))

(declare-fun m!642591 () Bool)

(assert (=> b!674824 m!642591))

(declare-fun m!642593 () Bool)

(assert (=> b!674827 m!642593))

(declare-fun m!642595 () Bool)

(assert (=> b!674827 m!642595))

(declare-fun m!642597 () Bool)

(assert (=> b!674827 m!642597))

(declare-fun m!642599 () Bool)

(assert (=> b!674813 m!642599))

(declare-fun m!642601 () Bool)

(assert (=> start!60256 m!642601))

(declare-fun m!642603 () Bool)

(assert (=> b!674815 m!642603))

(declare-fun m!642605 () Bool)

(assert (=> b!674822 m!642605))

(declare-fun m!642607 () Bool)

(assert (=> b!674825 m!642607))

(assert (=> b!674834 m!642599))

(push 1)

