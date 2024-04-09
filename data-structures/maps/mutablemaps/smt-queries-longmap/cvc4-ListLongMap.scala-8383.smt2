; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102014 () Bool)

(assert start!102014)

(declare-fun b!1227678 () Bool)

(declare-fun e!697053 () Bool)

(declare-fun e!697054 () Bool)

(assert (=> b!1227678 (= e!697053 (not e!697054))))

(declare-fun res!816419 () Bool)

(assert (=> b!1227678 (=> res!816419 e!697054)))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79230 0))(
  ( (array!79231 (arr!38234 (Array (_ BitVec 32) (_ BitVec 64))) (size!38771 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79230)

(assert (=> b!1227678 (= res!816419 (bvsgt from!3184 (size!38771 a!3806)))))

(declare-datatypes ((List!27185 0))(
  ( (Nil!27182) (Cons!27181 (h!28390 (_ BitVec 64)) (t!40655 List!27185)) )
))
(declare-fun acc!823 () List!27185)

(declare-fun arrayNoDuplicates!0 (array!79230 (_ BitVec 32) List!27185) Bool)

(assert (=> b!1227678 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27181 (select (arr!38234 a!3806) from!3184) acc!823))))

(declare-fun b!1227679 () Bool)

(declare-fun res!816418 () Bool)

(assert (=> b!1227679 (=> (not res!816418) (not e!697053))))

(declare-fun noDuplicate!1707 (List!27185) Bool)

(assert (=> b!1227679 (= res!816418 (noDuplicate!1707 acc!823))))

(declare-fun b!1227680 () Bool)

(declare-fun res!816415 () Bool)

(assert (=> b!1227680 (=> (not res!816415) (not e!697053))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227680 (= res!816415 (validKeyInArray!0 k!2913))))

(declare-fun b!1227681 () Bool)

(declare-fun res!816417 () Bool)

(assert (=> b!1227681 (=> (not res!816417) (not e!697053))))

(declare-fun contains!7100 (List!27185 (_ BitVec 64)) Bool)

(assert (=> b!1227681 (= res!816417 (not (contains!7100 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!816414 () Bool)

(assert (=> start!102014 (=> (not res!816414) (not e!697053))))

(assert (=> start!102014 (= res!816414 (bvslt (size!38771 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102014 e!697053))

(declare-fun array_inv!29010 (array!79230) Bool)

(assert (=> start!102014 (array_inv!29010 a!3806)))

(assert (=> start!102014 true))

(declare-fun b!1227682 () Bool)

(declare-fun res!816411 () Bool)

(assert (=> b!1227682 (=> (not res!816411) (not e!697053))))

(assert (=> b!1227682 (= res!816411 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227683 () Bool)

(declare-fun res!816416 () Bool)

(assert (=> b!1227683 (=> (not res!816416) (not e!697053))))

(declare-fun arrayContainsKey!0 (array!79230 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227683 (= res!816416 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1227684 () Bool)

(declare-fun res!816407 () Bool)

(assert (=> b!1227684 (=> (not res!816407) (not e!697053))))

(assert (=> b!1227684 (= res!816407 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38771 a!3806)) (bvslt from!3184 (size!38771 a!3806))))))

(declare-fun b!1227685 () Bool)

(declare-fun res!816412 () Bool)

(assert (=> b!1227685 (=> (not res!816412) (not e!697053))))

(assert (=> b!1227685 (= res!816412 (not (contains!7100 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227686 () Bool)

(declare-fun res!816410 () Bool)

(assert (=> b!1227686 (=> (not res!816410) (not e!697053))))

(assert (=> b!1227686 (= res!816410 (validKeyInArray!0 (select (arr!38234 a!3806) from!3184)))))

(declare-fun b!1227687 () Bool)

(assert (=> b!1227687 (= e!697054 true)))

(declare-datatypes ((Unit!40608 0))(
  ( (Unit!40609) )
))
(declare-fun lt!558878 () Unit!40608)

(declare-fun noDuplicateSubseq!40 (List!27185 List!27185) Unit!40608)

(assert (=> b!1227687 (= lt!558878 (noDuplicateSubseq!40 Nil!27182 acc!823))))

(declare-fun b!1227688 () Bool)

(declare-fun res!816413 () Bool)

(assert (=> b!1227688 (=> res!816413 e!697054)))

(assert (=> b!1227688 (= res!816413 (contains!7100 Nil!27182 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227689 () Bool)

(declare-fun res!816408 () Bool)

(assert (=> b!1227689 (=> res!816408 e!697054)))

(declare-fun subseq!487 (List!27185 List!27185) Bool)

(assert (=> b!1227689 (= res!816408 (not (subseq!487 Nil!27182 acc!823)))))

(declare-fun b!1227690 () Bool)

(declare-fun res!816409 () Bool)

(assert (=> b!1227690 (=> res!816409 e!697054)))

(assert (=> b!1227690 (= res!816409 (contains!7100 Nil!27182 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102014 res!816414) b!1227680))

(assert (= (and b!1227680 res!816415) b!1227684))

(assert (= (and b!1227684 res!816407) b!1227679))

(assert (= (and b!1227679 res!816418) b!1227681))

(assert (= (and b!1227681 res!816417) b!1227685))

(assert (= (and b!1227685 res!816412) b!1227683))

(assert (= (and b!1227683 res!816416) b!1227682))

(assert (= (and b!1227682 res!816411) b!1227686))

(assert (= (and b!1227686 res!816410) b!1227678))

(assert (= (and b!1227678 (not res!816419)) b!1227690))

(assert (= (and b!1227690 (not res!816409)) b!1227688))

(assert (= (and b!1227688 (not res!816413)) b!1227689))

(assert (= (and b!1227689 (not res!816408)) b!1227687))

(declare-fun m!1132417 () Bool)

(assert (=> b!1227685 m!1132417))

(declare-fun m!1132419 () Bool)

(assert (=> b!1227687 m!1132419))

(declare-fun m!1132421 () Bool)

(assert (=> b!1227679 m!1132421))

(declare-fun m!1132423 () Bool)

(assert (=> b!1227680 m!1132423))

(declare-fun m!1132425 () Bool)

(assert (=> b!1227686 m!1132425))

(assert (=> b!1227686 m!1132425))

(declare-fun m!1132427 () Bool)

(assert (=> b!1227686 m!1132427))

(declare-fun m!1132429 () Bool)

(assert (=> b!1227690 m!1132429))

(declare-fun m!1132431 () Bool)

(assert (=> b!1227681 m!1132431))

(declare-fun m!1132433 () Bool)

(assert (=> b!1227682 m!1132433))

(declare-fun m!1132435 () Bool)

(assert (=> b!1227688 m!1132435))

(declare-fun m!1132437 () Bool)

(assert (=> b!1227689 m!1132437))

(declare-fun m!1132439 () Bool)

(assert (=> start!102014 m!1132439))

(assert (=> b!1227678 m!1132425))

(declare-fun m!1132441 () Bool)

(assert (=> b!1227678 m!1132441))

(declare-fun m!1132443 () Bool)

(assert (=> b!1227683 m!1132443))

(push 1)

(assert (not b!1227683))

(assert (not b!1227682))

(assert (not b!1227678))

(assert (not start!102014))

(assert (not b!1227689))

(assert (not b!1227687))

(assert (not b!1227686))

(assert (not b!1227679))

(assert (not b!1227688))

(assert (not b!1227690))

(assert (not b!1227681))

(assert (not b!1227680))

(assert (not b!1227685))

(check-sat)

