; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115918 () Bool)

(assert start!115918)

(declare-fun b!1369774 () Bool)

(declare-fun res!913362 () Bool)

(declare-fun e!775920 () Bool)

(assert (=> b!1369774 (=> (not res!913362) (not e!775920))))

(declare-datatypes ((List!32142 0))(
  ( (Nil!32139) (Cons!32138 (h!33347 (_ BitVec 64)) (t!46843 List!32142)) )
))
(declare-fun newAcc!98 () List!32142)

(declare-fun contains!9680 (List!32142 (_ BitVec 64)) Bool)

(assert (=> b!1369774 (= res!913362 (not (contains!9680 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369775 () Bool)

(declare-fun res!913360 () Bool)

(assert (=> b!1369775 (=> (not res!913360) (not e!775920))))

(declare-fun acc!866 () List!32142)

(declare-fun noDuplicate!2559 (List!32142) Bool)

(assert (=> b!1369775 (= res!913360 (noDuplicate!2559 acc!866))))

(declare-fun b!1369776 () Bool)

(declare-fun e!775919 () Bool)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1369776 (= e!775919 (bvslt (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun res!913364 () Bool)

(assert (=> start!115918 (=> (not res!913364) (not e!775920))))

(declare-datatypes ((array!92955 0))(
  ( (array!92956 (arr!44894 (Array (_ BitVec 32) (_ BitVec 64))) (size!45445 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92955)

(assert (=> start!115918 (= res!913364 (and (bvslt (size!45445 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45445 a!3861))))))

(assert (=> start!115918 e!775920))

(declare-fun array_inv!33839 (array!92955) Bool)

(assert (=> start!115918 (array_inv!33839 a!3861)))

(assert (=> start!115918 true))

(declare-fun b!1369777 () Bool)

(assert (=> b!1369777 (= e!775920 e!775919)))

(declare-fun res!913356 () Bool)

(assert (=> b!1369777 (=> (not res!913356) (not e!775919))))

(declare-fun arrayNoDuplicates!0 (array!92955 (_ BitVec 32) List!32142) Bool)

(assert (=> b!1369777 (= res!913356 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45223 0))(
  ( (Unit!45224) )
))
(declare-fun lt!602285 () Unit!45223)

(declare-fun noDuplicateSubseq!258 (List!32142 List!32142) Unit!45223)

(assert (=> b!1369777 (= lt!602285 (noDuplicateSubseq!258 newAcc!98 acc!866))))

(declare-fun b!1369778 () Bool)

(declare-fun res!913358 () Bool)

(assert (=> b!1369778 (=> (not res!913358) (not e!775919))))

(assert (=> b!1369778 (= res!913358 (not (contains!9680 acc!866 (select (arr!44894 a!3861) from!3239))))))

(declare-fun b!1369779 () Bool)

(declare-fun res!913357 () Bool)

(assert (=> b!1369779 (=> (not res!913357) (not e!775920))))

(assert (=> b!1369779 (= res!913357 (not (contains!9680 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369780 () Bool)

(declare-fun res!913363 () Bool)

(assert (=> b!1369780 (=> (not res!913363) (not e!775919))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1369780 (= res!913363 (validKeyInArray!0 (select (arr!44894 a!3861) from!3239)))))

(declare-fun b!1369781 () Bool)

(declare-fun res!913359 () Bool)

(assert (=> b!1369781 (=> (not res!913359) (not e!775919))))

(assert (=> b!1369781 (= res!913359 (bvslt from!3239 (size!45445 a!3861)))))

(declare-fun b!1369782 () Bool)

(declare-fun res!913361 () Bool)

(assert (=> b!1369782 (=> (not res!913361) (not e!775920))))

(assert (=> b!1369782 (= res!913361 (not (contains!9680 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369783 () Bool)

(declare-fun res!913365 () Bool)

(assert (=> b!1369783 (=> (not res!913365) (not e!775920))))

(assert (=> b!1369783 (= res!913365 (not (contains!9680 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369784 () Bool)

(declare-fun res!913355 () Bool)

(assert (=> b!1369784 (=> (not res!913355) (not e!775920))))

(declare-fun subseq!1071 (List!32142 List!32142) Bool)

(assert (=> b!1369784 (= res!913355 (subseq!1071 newAcc!98 acc!866))))

(assert (= (and start!115918 res!913364) b!1369775))

(assert (= (and b!1369775 res!913360) b!1369783))

(assert (= (and b!1369783 res!913365) b!1369779))

(assert (= (and b!1369779 res!913357) b!1369782))

(assert (= (and b!1369782 res!913361) b!1369774))

(assert (= (and b!1369774 res!913362) b!1369784))

(assert (= (and b!1369784 res!913355) b!1369777))

(assert (= (and b!1369777 res!913356) b!1369781))

(assert (= (and b!1369781 res!913359) b!1369780))

(assert (= (and b!1369780 res!913363) b!1369778))

(assert (= (and b!1369778 res!913358) b!1369776))

(declare-fun m!1253509 () Bool)

(assert (=> b!1369775 m!1253509))

(declare-fun m!1253511 () Bool)

(assert (=> b!1369780 m!1253511))

(assert (=> b!1369780 m!1253511))

(declare-fun m!1253513 () Bool)

(assert (=> b!1369780 m!1253513))

(declare-fun m!1253515 () Bool)

(assert (=> b!1369783 m!1253515))

(assert (=> b!1369778 m!1253511))

(assert (=> b!1369778 m!1253511))

(declare-fun m!1253517 () Bool)

(assert (=> b!1369778 m!1253517))

(declare-fun m!1253519 () Bool)

(assert (=> b!1369784 m!1253519))

(declare-fun m!1253521 () Bool)

(assert (=> b!1369782 m!1253521))

(declare-fun m!1253523 () Bool)

(assert (=> b!1369774 m!1253523))

(declare-fun m!1253525 () Bool)

(assert (=> start!115918 m!1253525))

(declare-fun m!1253527 () Bool)

(assert (=> b!1369779 m!1253527))

(declare-fun m!1253529 () Bool)

(assert (=> b!1369777 m!1253529))

(declare-fun m!1253531 () Bool)

(assert (=> b!1369777 m!1253531))

(check-sat (not start!115918) (not b!1369777) (not b!1369774) (not b!1369783) (not b!1369775) (not b!1369782) (not b!1369778) (not b!1369779) (not b!1369784) (not b!1369780))
(check-sat)
