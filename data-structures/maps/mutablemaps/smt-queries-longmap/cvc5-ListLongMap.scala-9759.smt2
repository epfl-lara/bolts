; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115712 () Bool)

(assert start!115712)

(declare-fun res!911223 () Bool)

(declare-fun e!775101 () Bool)

(assert (=> start!115712 (=> (not res!911223) (not e!775101))))

(declare-datatypes ((array!92827 0))(
  ( (array!92828 (arr!44833 (Array (_ BitVec 32) (_ BitVec 64))) (size!45384 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92827)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115712 (= res!911223 (and (bvslt (size!45384 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45384 a!3861))))))

(assert (=> start!115712 e!775101))

(declare-fun array_inv!33778 (array!92827) Bool)

(assert (=> start!115712 (array_inv!33778 a!3861)))

(assert (=> start!115712 true))

(declare-fun b!1367584 () Bool)

(declare-fun res!911217 () Bool)

(assert (=> b!1367584 (=> (not res!911217) (not e!775101))))

(declare-datatypes ((List!32081 0))(
  ( (Nil!32078) (Cons!32077 (h!33286 (_ BitVec 64)) (t!46782 List!32081)) )
))
(declare-fun newAcc!98 () List!32081)

(declare-fun contains!9619 (List!32081 (_ BitVec 64)) Bool)

(assert (=> b!1367584 (= res!911217 (not (contains!9619 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367585 () Bool)

(declare-fun res!911221 () Bool)

(assert (=> b!1367585 (=> (not res!911221) (not e!775101))))

(declare-fun acc!866 () List!32081)

(assert (=> b!1367585 (= res!911221 (not (contains!9619 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367586 () Bool)

(declare-fun res!911214 () Bool)

(assert (=> b!1367586 (=> (not res!911214) (not e!775101))))

(declare-fun noDuplicate!2498 (List!32081) Bool)

(assert (=> b!1367586 (= res!911214 (noDuplicate!2498 acc!866))))

(declare-fun b!1367587 () Bool)

(declare-fun res!911220 () Bool)

(declare-fun e!775102 () Bool)

(assert (=> b!1367587 (=> (not res!911220) (not e!775102))))

(assert (=> b!1367587 (= res!911220 (bvslt from!3239 (size!45384 a!3861)))))

(declare-fun b!1367588 () Bool)

(assert (=> b!1367588 (= e!775102 false)))

(declare-fun lt!601862 () Bool)

(assert (=> b!1367588 (= lt!601862 (noDuplicate!2498 newAcc!98))))

(declare-fun b!1367589 () Bool)

(declare-fun res!911216 () Bool)

(assert (=> b!1367589 (=> (not res!911216) (not e!775101))))

(assert (=> b!1367589 (= res!911216 (not (contains!9619 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367590 () Bool)

(declare-fun res!911218 () Bool)

(assert (=> b!1367590 (=> (not res!911218) (not e!775102))))

(assert (=> b!1367590 (= res!911218 (contains!9619 acc!866 (select (arr!44833 a!3861) from!3239)))))

(declare-fun b!1367591 () Bool)

(declare-fun res!911213 () Bool)

(assert (=> b!1367591 (=> (not res!911213) (not e!775102))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367591 (= res!911213 (validKeyInArray!0 (select (arr!44833 a!3861) from!3239)))))

(declare-fun b!1367592 () Bool)

(assert (=> b!1367592 (= e!775101 e!775102)))

(declare-fun res!911219 () Bool)

(assert (=> b!1367592 (=> (not res!911219) (not e!775102))))

(declare-fun arrayNoDuplicates!0 (array!92827 (_ BitVec 32) List!32081) Bool)

(assert (=> b!1367592 (= res!911219 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45101 0))(
  ( (Unit!45102) )
))
(declare-fun lt!601861 () Unit!45101)

(declare-fun noDuplicateSubseq!197 (List!32081 List!32081) Unit!45101)

(assert (=> b!1367592 (= lt!601861 (noDuplicateSubseq!197 newAcc!98 acc!866))))

(declare-fun b!1367593 () Bool)

(declare-fun res!911215 () Bool)

(assert (=> b!1367593 (=> (not res!911215) (not e!775101))))

(declare-fun subseq!1010 (List!32081 List!32081) Bool)

(assert (=> b!1367593 (= res!911215 (subseq!1010 newAcc!98 acc!866))))

(declare-fun b!1367594 () Bool)

(declare-fun res!911222 () Bool)

(assert (=> b!1367594 (=> (not res!911222) (not e!775101))))

(assert (=> b!1367594 (= res!911222 (not (contains!9619 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115712 res!911223) b!1367586))

(assert (= (and b!1367586 res!911214) b!1367585))

(assert (= (and b!1367585 res!911221) b!1367589))

(assert (= (and b!1367589 res!911216) b!1367594))

(assert (= (and b!1367594 res!911222) b!1367584))

(assert (= (and b!1367584 res!911217) b!1367593))

(assert (= (and b!1367593 res!911215) b!1367592))

(assert (= (and b!1367592 res!911219) b!1367587))

(assert (= (and b!1367587 res!911220) b!1367591))

(assert (= (and b!1367591 res!911213) b!1367590))

(assert (= (and b!1367590 res!911218) b!1367588))

(declare-fun m!1251793 () Bool)

(assert (=> b!1367592 m!1251793))

(declare-fun m!1251795 () Bool)

(assert (=> b!1367592 m!1251795))

(declare-fun m!1251797 () Bool)

(assert (=> b!1367594 m!1251797))

(declare-fun m!1251799 () Bool)

(assert (=> b!1367584 m!1251799))

(declare-fun m!1251801 () Bool)

(assert (=> b!1367586 m!1251801))

(declare-fun m!1251803 () Bool)

(assert (=> start!115712 m!1251803))

(declare-fun m!1251805 () Bool)

(assert (=> b!1367585 m!1251805))

(declare-fun m!1251807 () Bool)

(assert (=> b!1367591 m!1251807))

(assert (=> b!1367591 m!1251807))

(declare-fun m!1251809 () Bool)

(assert (=> b!1367591 m!1251809))

(declare-fun m!1251811 () Bool)

(assert (=> b!1367589 m!1251811))

(assert (=> b!1367590 m!1251807))

(assert (=> b!1367590 m!1251807))

(declare-fun m!1251813 () Bool)

(assert (=> b!1367590 m!1251813))

(declare-fun m!1251815 () Bool)

(assert (=> b!1367593 m!1251815))

(declare-fun m!1251817 () Bool)

(assert (=> b!1367588 m!1251817))

(push 1)

