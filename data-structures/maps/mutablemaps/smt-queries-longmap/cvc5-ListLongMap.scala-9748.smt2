; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115508 () Bool)

(assert start!115508)

(declare-fun b!1365816 () Bool)

(declare-fun res!909518 () Bool)

(declare-fun e!774290 () Bool)

(assert (=> b!1365816 (=> (not res!909518) (not e!774290))))

(declare-datatypes ((List!32048 0))(
  ( (Nil!32045) (Cons!32044 (h!33253 (_ BitVec 64)) (t!46749 List!32048)) )
))
(declare-fun newAcc!98 () List!32048)

(declare-fun contains!9586 (List!32048 (_ BitVec 64)) Bool)

(assert (=> b!1365816 (= res!909518 (not (contains!9586 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365817 () Bool)

(declare-fun e!774292 () Bool)

(declare-fun e!774289 () Bool)

(assert (=> b!1365817 (= e!774292 e!774289)))

(declare-fun res!909520 () Bool)

(assert (=> b!1365817 (=> (not res!909520) (not e!774289))))

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1365817 (= res!909520 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-datatypes ((array!92752 0))(
  ( (array!92753 (arr!44800 (Array (_ BitVec 32) (_ BitVec 64))) (size!45351 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92752)

(declare-fun lt!601355 () List!32048)

(assert (=> b!1365817 (= lt!601355 (Cons!32044 (select (arr!44800 a!3861) from!3239) newAcc!98))))

(declare-fun lt!601353 () List!32048)

(declare-fun acc!866 () List!32048)

(assert (=> b!1365817 (= lt!601353 (Cons!32044 (select (arr!44800 a!3861) from!3239) acc!866))))

(declare-fun b!1365818 () Bool)

(declare-fun res!909523 () Bool)

(assert (=> b!1365818 (=> (not res!909523) (not e!774289))))

(declare-fun subseq!977 (List!32048 List!32048) Bool)

(assert (=> b!1365818 (= res!909523 (subseq!977 lt!601355 lt!601353))))

(declare-fun b!1365819 () Bool)

(declare-fun res!909517 () Bool)

(assert (=> b!1365819 (=> (not res!909517) (not e!774289))))

(assert (=> b!1365819 (= res!909517 (not (contains!9586 lt!601353 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365820 () Bool)

(assert (=> b!1365820 (= e!774290 e!774292)))

(declare-fun res!909513 () Bool)

(assert (=> b!1365820 (=> (not res!909513) (not e!774292))))

(declare-fun arrayNoDuplicates!0 (array!92752 (_ BitVec 32) List!32048) Bool)

(assert (=> b!1365820 (= res!909513 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45035 0))(
  ( (Unit!45036) )
))
(declare-fun lt!601352 () Unit!45035)

(declare-fun noDuplicateSubseq!164 (List!32048 List!32048) Unit!45035)

(assert (=> b!1365820 (= lt!601352 (noDuplicateSubseq!164 newAcc!98 acc!866))))

(declare-fun b!1365821 () Bool)

(declare-fun res!909516 () Bool)

(assert (=> b!1365821 (=> (not res!909516) (not e!774292))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1365821 (= res!909516 (validKeyInArray!0 (select (arr!44800 a!3861) from!3239)))))

(declare-fun b!1365822 () Bool)

(declare-fun res!909511 () Bool)

(assert (=> b!1365822 (=> (not res!909511) (not e!774289))))

(declare-fun noDuplicate!2465 (List!32048) Bool)

(assert (=> b!1365822 (= res!909511 (noDuplicate!2465 lt!601353))))

(declare-fun b!1365823 () Bool)

(declare-fun res!909514 () Bool)

(assert (=> b!1365823 (=> (not res!909514) (not e!774289))))

(assert (=> b!1365823 (= res!909514 (not (contains!9586 lt!601353 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365824 () Bool)

(declare-fun res!909521 () Bool)

(assert (=> b!1365824 (=> (not res!909521) (not e!774290))))

(assert (=> b!1365824 (= res!909521 (noDuplicate!2465 acc!866))))

(declare-fun res!909525 () Bool)

(assert (=> start!115508 (=> (not res!909525) (not e!774290))))

(assert (=> start!115508 (= res!909525 (and (bvslt (size!45351 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45351 a!3861))))))

(assert (=> start!115508 e!774290))

(declare-fun array_inv!33745 (array!92752) Bool)

(assert (=> start!115508 (array_inv!33745 a!3861)))

(assert (=> start!115508 true))

(declare-fun b!1365825 () Bool)

(declare-fun res!909522 () Bool)

(assert (=> b!1365825 (=> (not res!909522) (not e!774289))))

(assert (=> b!1365825 (= res!909522 (not (contains!9586 lt!601355 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365826 () Bool)

(declare-fun res!909526 () Bool)

(assert (=> b!1365826 (=> (not res!909526) (not e!774292))))

(assert (=> b!1365826 (= res!909526 (not (contains!9586 acc!866 (select (arr!44800 a!3861) from!3239))))))

(declare-fun b!1365827 () Bool)

(declare-fun res!909524 () Bool)

(assert (=> b!1365827 (=> (not res!909524) (not e!774290))))

(assert (=> b!1365827 (= res!909524 (not (contains!9586 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365828 () Bool)

(declare-fun res!909512 () Bool)

(assert (=> b!1365828 (=> (not res!909512) (not e!774290))))

(assert (=> b!1365828 (= res!909512 (not (contains!9586 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365829 () Bool)

(declare-fun res!909527 () Bool)

(assert (=> b!1365829 (=> (not res!909527) (not e!774290))))

(assert (=> b!1365829 (= res!909527 (not (contains!9586 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365830 () Bool)

(declare-fun res!909519 () Bool)

(assert (=> b!1365830 (=> (not res!909519) (not e!774292))))

(assert (=> b!1365830 (= res!909519 (bvslt from!3239 (size!45351 a!3861)))))

(declare-fun b!1365831 () Bool)

(declare-fun res!909528 () Bool)

(assert (=> b!1365831 (=> (not res!909528) (not e!774290))))

(assert (=> b!1365831 (= res!909528 (subseq!977 newAcc!98 acc!866))))

(declare-fun b!1365832 () Bool)

(declare-fun res!909515 () Bool)

(assert (=> b!1365832 (=> (not res!909515) (not e!774289))))

(assert (=> b!1365832 (= res!909515 (not (contains!9586 lt!601355 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1365833 () Bool)

(assert (=> b!1365833 (= e!774289 false)))

(declare-fun lt!601351 () Bool)

(assert (=> b!1365833 (= lt!601351 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601353))))

(declare-fun lt!601354 () Unit!45035)

(assert (=> b!1365833 (= lt!601354 (noDuplicateSubseq!164 lt!601355 lt!601353))))

(assert (= (and start!115508 res!909525) b!1365824))

(assert (= (and b!1365824 res!909521) b!1365829))

(assert (= (and b!1365829 res!909527) b!1365827))

(assert (= (and b!1365827 res!909524) b!1365816))

(assert (= (and b!1365816 res!909518) b!1365828))

(assert (= (and b!1365828 res!909512) b!1365831))

(assert (= (and b!1365831 res!909528) b!1365820))

(assert (= (and b!1365820 res!909513) b!1365830))

(assert (= (and b!1365830 res!909519) b!1365821))

(assert (= (and b!1365821 res!909516) b!1365826))

(assert (= (and b!1365826 res!909526) b!1365817))

(assert (= (and b!1365817 res!909520) b!1365822))

(assert (= (and b!1365822 res!909511) b!1365823))

(assert (= (and b!1365823 res!909514) b!1365819))

(assert (= (and b!1365819 res!909517) b!1365832))

(assert (= (and b!1365832 res!909515) b!1365825))

(assert (= (and b!1365825 res!909522) b!1365818))

(assert (= (and b!1365818 res!909523) b!1365833))

(declare-fun m!1250281 () Bool)

(assert (=> b!1365828 m!1250281))

(declare-fun m!1250283 () Bool)

(assert (=> b!1365822 m!1250283))

(declare-fun m!1250285 () Bool)

(assert (=> b!1365823 m!1250285))

(declare-fun m!1250287 () Bool)

(assert (=> b!1365817 m!1250287))

(declare-fun m!1250289 () Bool)

(assert (=> b!1365825 m!1250289))

(declare-fun m!1250291 () Bool)

(assert (=> b!1365820 m!1250291))

(declare-fun m!1250293 () Bool)

(assert (=> b!1365820 m!1250293))

(declare-fun m!1250295 () Bool)

(assert (=> start!115508 m!1250295))

(declare-fun m!1250297 () Bool)

(assert (=> b!1365818 m!1250297))

(declare-fun m!1250299 () Bool)

(assert (=> b!1365831 m!1250299))

(assert (=> b!1365821 m!1250287))

(assert (=> b!1365821 m!1250287))

(declare-fun m!1250301 () Bool)

(assert (=> b!1365821 m!1250301))

(declare-fun m!1250303 () Bool)

(assert (=> b!1365827 m!1250303))

(declare-fun m!1250305 () Bool)

(assert (=> b!1365832 m!1250305))

(declare-fun m!1250307 () Bool)

(assert (=> b!1365833 m!1250307))

(declare-fun m!1250309 () Bool)

(assert (=> b!1365833 m!1250309))

(assert (=> b!1365826 m!1250287))

(assert (=> b!1365826 m!1250287))

(declare-fun m!1250311 () Bool)

(assert (=> b!1365826 m!1250311))

(declare-fun m!1250313 () Bool)

(assert (=> b!1365816 m!1250313))

(declare-fun m!1250315 () Bool)

(assert (=> b!1365819 m!1250315))

(declare-fun m!1250317 () Bool)

(assert (=> b!1365824 m!1250317))

(declare-fun m!1250319 () Bool)

(assert (=> b!1365829 m!1250319))

(push 1)

