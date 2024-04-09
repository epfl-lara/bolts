; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115506 () Bool)

(assert start!115506)

(declare-fun b!1365762 () Bool)

(declare-fun res!909473 () Bool)

(declare-fun e!774277 () Bool)

(assert (=> b!1365762 (=> (not res!909473) (not e!774277))))

(declare-datatypes ((List!32047 0))(
  ( (Nil!32044) (Cons!32043 (h!33252 (_ BitVec 64)) (t!46748 List!32047)) )
))
(declare-fun acc!866 () List!32047)

(declare-fun contains!9585 (List!32047 (_ BitVec 64)) Bool)

(assert (=> b!1365762 (= res!909473 (not (contains!9585 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365763 () Bool)

(declare-fun res!909458 () Bool)

(assert (=> b!1365763 (=> (not res!909458) (not e!774277))))

(declare-fun noDuplicate!2464 (List!32047) Bool)

(assert (=> b!1365763 (= res!909458 (noDuplicate!2464 acc!866))))

(declare-fun b!1365764 () Bool)

(declare-fun res!909463 () Bool)

(declare-fun e!774279 () Bool)

(assert (=> b!1365764 (=> (not res!909463) (not e!774279))))

(declare-datatypes ((array!92750 0))(
  ( (array!92751 (arr!44799 (Array (_ BitVec 32) (_ BitVec 64))) (size!45350 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92750)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1365764 (= res!909463 (not (contains!9585 acc!866 (select (arr!44799 a!3861) from!3239))))))

(declare-fun b!1365765 () Bool)

(declare-fun res!909466 () Bool)

(declare-fun e!774278 () Bool)

(assert (=> b!1365765 (=> (not res!909466) (not e!774278))))

(declare-fun lt!601337 () List!32047)

(assert (=> b!1365765 (= res!909466 (not (contains!9585 lt!601337 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365766 () Bool)

(declare-fun res!909462 () Bool)

(assert (=> b!1365766 (=> (not res!909462) (not e!774278))))

(declare-fun lt!601339 () List!32047)

(declare-fun subseq!976 (List!32047 List!32047) Bool)

(assert (=> b!1365766 (= res!909462 (subseq!976 lt!601339 lt!601337))))

(declare-fun b!1365767 () Bool)

(assert (=> b!1365767 (= e!774278 false)))

(declare-fun lt!601336 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92750 (_ BitVec 32) List!32047) Bool)

(assert (=> b!1365767 (= lt!601336 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601337))))

(declare-datatypes ((Unit!45033 0))(
  ( (Unit!45034) )
))
(declare-fun lt!601338 () Unit!45033)

(declare-fun noDuplicateSubseq!163 (List!32047 List!32047) Unit!45033)

(assert (=> b!1365767 (= lt!601338 (noDuplicateSubseq!163 lt!601339 lt!601337))))

(declare-fun b!1365768 () Bool)

(declare-fun res!909460 () Bool)

(assert (=> b!1365768 (=> (not res!909460) (not e!774277))))

(declare-fun newAcc!98 () List!32047)

(assert (=> b!1365768 (= res!909460 (not (contains!9585 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365769 () Bool)

(declare-fun res!909474 () Bool)

(assert (=> b!1365769 (=> (not res!909474) (not e!774278))))

(assert (=> b!1365769 (= res!909474 (not (contains!9585 lt!601339 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365771 () Bool)

(declare-fun res!909470 () Bool)

(assert (=> b!1365771 (=> (not res!909470) (not e!774277))))

(assert (=> b!1365771 (= res!909470 (subseq!976 newAcc!98 acc!866))))

(declare-fun b!1365772 () Bool)

(declare-fun res!909469 () Bool)

(assert (=> b!1365772 (=> (not res!909469) (not e!774277))))

(assert (=> b!1365772 (= res!909469 (not (contains!9585 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365773 () Bool)

(declare-fun res!909471 () Bool)

(assert (=> b!1365773 (=> (not res!909471) (not e!774278))))

(assert (=> b!1365773 (= res!909471 (noDuplicate!2464 lt!601337))))

(declare-fun b!1365774 () Bool)

(declare-fun res!909459 () Bool)

(assert (=> b!1365774 (=> (not res!909459) (not e!774278))))

(assert (=> b!1365774 (= res!909459 (not (contains!9585 lt!601337 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365775 () Bool)

(declare-fun res!909467 () Bool)

(assert (=> b!1365775 (=> (not res!909467) (not e!774277))))

(assert (=> b!1365775 (= res!909467 (not (contains!9585 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365776 () Bool)

(assert (=> b!1365776 (= e!774279 e!774278)))

(declare-fun res!909472 () Bool)

(assert (=> b!1365776 (=> (not res!909472) (not e!774278))))

(assert (=> b!1365776 (= res!909472 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (=> b!1365776 (= lt!601339 (Cons!32043 (select (arr!44799 a!3861) from!3239) newAcc!98))))

(assert (=> b!1365776 (= lt!601337 (Cons!32043 (select (arr!44799 a!3861) from!3239) acc!866))))

(declare-fun b!1365777 () Bool)

(declare-fun res!909465 () Bool)

(assert (=> b!1365777 (=> (not res!909465) (not e!774279))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1365777 (= res!909465 (validKeyInArray!0 (select (arr!44799 a!3861) from!3239)))))

(declare-fun res!909457 () Bool)

(assert (=> start!115506 (=> (not res!909457) (not e!774277))))

(assert (=> start!115506 (= res!909457 (and (bvslt (size!45350 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45350 a!3861))))))

(assert (=> start!115506 e!774277))

(declare-fun array_inv!33744 (array!92750) Bool)

(assert (=> start!115506 (array_inv!33744 a!3861)))

(assert (=> start!115506 true))

(declare-fun b!1365770 () Bool)

(declare-fun res!909468 () Bool)

(assert (=> b!1365770 (=> (not res!909468) (not e!774279))))

(assert (=> b!1365770 (= res!909468 (bvslt from!3239 (size!45350 a!3861)))))

(declare-fun b!1365778 () Bool)

(declare-fun res!909464 () Bool)

(assert (=> b!1365778 (=> (not res!909464) (not e!774278))))

(assert (=> b!1365778 (= res!909464 (not (contains!9585 lt!601339 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365779 () Bool)

(assert (=> b!1365779 (= e!774277 e!774279)))

(declare-fun res!909461 () Bool)

(assert (=> b!1365779 (=> (not res!909461) (not e!774279))))

(assert (=> b!1365779 (= res!909461 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!601340 () Unit!45033)

(assert (=> b!1365779 (= lt!601340 (noDuplicateSubseq!163 newAcc!98 acc!866))))

(assert (= (and start!115506 res!909457) b!1365763))

(assert (= (and b!1365763 res!909458) b!1365772))

(assert (= (and b!1365772 res!909469) b!1365762))

(assert (= (and b!1365762 res!909473) b!1365775))

(assert (= (and b!1365775 res!909467) b!1365768))

(assert (= (and b!1365768 res!909460) b!1365771))

(assert (= (and b!1365771 res!909470) b!1365779))

(assert (= (and b!1365779 res!909461) b!1365770))

(assert (= (and b!1365770 res!909468) b!1365777))

(assert (= (and b!1365777 res!909465) b!1365764))

(assert (= (and b!1365764 res!909463) b!1365776))

(assert (= (and b!1365776 res!909472) b!1365773))

(assert (= (and b!1365773 res!909471) b!1365765))

(assert (= (and b!1365765 res!909466) b!1365774))

(assert (= (and b!1365774 res!909459) b!1365778))

(assert (= (and b!1365778 res!909464) b!1365769))

(assert (= (and b!1365769 res!909474) b!1365766))

(assert (= (and b!1365766 res!909462) b!1365767))

(declare-fun m!1250241 () Bool)

(assert (=> b!1365766 m!1250241))

(declare-fun m!1250243 () Bool)

(assert (=> b!1365771 m!1250243))

(declare-fun m!1250245 () Bool)

(assert (=> b!1365776 m!1250245))

(declare-fun m!1250247 () Bool)

(assert (=> b!1365775 m!1250247))

(declare-fun m!1250249 () Bool)

(assert (=> b!1365769 m!1250249))

(declare-fun m!1250251 () Bool)

(assert (=> b!1365762 m!1250251))

(declare-fun m!1250253 () Bool)

(assert (=> b!1365765 m!1250253))

(declare-fun m!1250255 () Bool)

(assert (=> start!115506 m!1250255))

(declare-fun m!1250257 () Bool)

(assert (=> b!1365778 m!1250257))

(assert (=> b!1365764 m!1250245))

(assert (=> b!1365764 m!1250245))

(declare-fun m!1250259 () Bool)

(assert (=> b!1365764 m!1250259))

(declare-fun m!1250261 () Bool)

(assert (=> b!1365768 m!1250261))

(declare-fun m!1250263 () Bool)

(assert (=> b!1365773 m!1250263))

(declare-fun m!1250265 () Bool)

(assert (=> b!1365772 m!1250265))

(declare-fun m!1250267 () Bool)

(assert (=> b!1365767 m!1250267))

(declare-fun m!1250269 () Bool)

(assert (=> b!1365767 m!1250269))

(declare-fun m!1250271 () Bool)

(assert (=> b!1365774 m!1250271))

(assert (=> b!1365777 m!1250245))

(assert (=> b!1365777 m!1250245))

(declare-fun m!1250273 () Bool)

(assert (=> b!1365777 m!1250273))

(declare-fun m!1250275 () Bool)

(assert (=> b!1365779 m!1250275))

(declare-fun m!1250277 () Bool)

(assert (=> b!1365779 m!1250277))

(declare-fun m!1250279 () Bool)

(assert (=> b!1365763 m!1250279))

(push 1)

