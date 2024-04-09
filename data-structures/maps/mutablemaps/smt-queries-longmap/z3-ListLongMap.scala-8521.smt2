; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103958 () Bool)

(assert start!103958)

(declare-fun b!1243880 () Bool)

(declare-fun e!705055 () Bool)

(assert (=> b!1243880 (= e!705055 false)))

(declare-datatypes ((array!79996 0))(
  ( (array!79997 (arr!38587 (Array (_ BitVec 32) (_ BitVec 64))) (size!39124 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79996)

(declare-fun from!3270 () (_ BitVec 32))

(declare-fun lt!562474 () Bool)

(declare-datatypes ((List!27568 0))(
  ( (Nil!27565) (Cons!27564 (h!28773 (_ BitVec 64)) (t!41044 List!27568)) )
))
(declare-fun lt!562472 () List!27568)

(declare-fun arrayNoDuplicates!0 (array!79996 (_ BitVec 32) List!27568) Bool)

(assert (=> b!1243880 (= lt!562474 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) lt!562472))))

(declare-datatypes ((Unit!41253 0))(
  ( (Unit!41254) )
))
(declare-fun lt!562473 () Unit!41253)

(declare-fun noDuplicateSubseq!105 (List!27568 List!27568) Unit!41253)

(assert (=> b!1243880 (= lt!562473 (noDuplicateSubseq!105 Nil!27565 lt!562472))))

(declare-fun b!1243881 () Bool)

(declare-fun res!829784 () Bool)

(declare-fun e!705054 () Bool)

(assert (=> b!1243881 (=> (not res!829784) (not e!705054))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1243881 (= res!829784 (validKeyInArray!0 (select (arr!38587 a!3892) from!3270)))))

(declare-fun b!1243882 () Bool)

(declare-fun res!829787 () Bool)

(assert (=> b!1243882 (=> (not res!829787) (not e!705055))))

(declare-fun noDuplicate!2030 (List!27568) Bool)

(assert (=> b!1243882 (= res!829787 (noDuplicate!2030 lt!562472))))

(declare-fun b!1243883 () Bool)

(declare-fun res!829791 () Bool)

(assert (=> b!1243883 (=> (not res!829791) (not e!705054))))

(declare-fun newFrom!287 () (_ BitVec 32))

(assert (=> b!1243883 (= res!829791 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39124 a!3892)) (not (= newFrom!287 (size!39124 a!3892)))))))

(declare-fun b!1243884 () Bool)

(declare-fun res!829789 () Bool)

(assert (=> b!1243884 (=> (not res!829789) (not e!705054))))

(assert (=> b!1243884 (= res!829789 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27565))))

(declare-fun b!1243885 () Bool)

(declare-fun res!829783 () Bool)

(assert (=> b!1243885 (=> (not res!829783) (not e!705055))))

(declare-fun contains!7440 (List!27568 (_ BitVec 64)) Bool)

(assert (=> b!1243885 (= res!829783 (not (contains!7440 Nil!27565 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243887 () Bool)

(declare-fun res!829782 () Bool)

(assert (=> b!1243887 (=> (not res!829782) (not e!705055))))

(assert (=> b!1243887 (= res!829782 (not (contains!7440 lt!562472 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243888 () Bool)

(assert (=> b!1243888 (= e!705054 e!705055)))

(declare-fun res!829790 () Bool)

(assert (=> b!1243888 (=> (not res!829790) (not e!705055))))

(assert (=> b!1243888 (= res!829790 (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000))))

(assert (=> b!1243888 (= lt!562472 (Cons!27564 (select (arr!38587 a!3892) from!3270) Nil!27565))))

(declare-fun b!1243889 () Bool)

(declare-fun res!829785 () Bool)

(assert (=> b!1243889 (=> (not res!829785) (not e!705055))))

(assert (=> b!1243889 (= res!829785 (not (contains!7440 Nil!27565 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1243890 () Bool)

(declare-fun res!829786 () Bool)

(assert (=> b!1243890 (=> (not res!829786) (not e!705055))))

(assert (=> b!1243890 (= res!829786 (not (contains!7440 lt!562472 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!829792 () Bool)

(assert (=> start!103958 (=> (not res!829792) (not e!705054))))

(assert (=> start!103958 (= res!829792 (and (bvslt (size!39124 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39124 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39124 a!3892))))))

(assert (=> start!103958 e!705054))

(declare-fun array_inv!29363 (array!79996) Bool)

(assert (=> start!103958 (array_inv!29363 a!3892)))

(assert (=> start!103958 true))

(declare-fun b!1243886 () Bool)

(declare-fun res!829788 () Bool)

(assert (=> b!1243886 (=> (not res!829788) (not e!705055))))

(declare-fun subseq!651 (List!27568 List!27568) Bool)

(assert (=> b!1243886 (= res!829788 (subseq!651 Nil!27565 lt!562472))))

(assert (= (and start!103958 res!829792) b!1243884))

(assert (= (and b!1243884 res!829789) b!1243883))

(assert (= (and b!1243883 res!829791) b!1243881))

(assert (= (and b!1243881 res!829784) b!1243888))

(assert (= (and b!1243888 res!829790) b!1243882))

(assert (= (and b!1243882 res!829787) b!1243887))

(assert (= (and b!1243887 res!829782) b!1243890))

(assert (= (and b!1243890 res!829786) b!1243885))

(assert (= (and b!1243885 res!829783) b!1243889))

(assert (= (and b!1243889 res!829785) b!1243886))

(assert (= (and b!1243886 res!829788) b!1243880))

(declare-fun m!1146321 () Bool)

(assert (=> b!1243886 m!1146321))

(declare-fun m!1146323 () Bool)

(assert (=> b!1243885 m!1146323))

(declare-fun m!1146325 () Bool)

(assert (=> start!103958 m!1146325))

(declare-fun m!1146327 () Bool)

(assert (=> b!1243888 m!1146327))

(assert (=> b!1243881 m!1146327))

(assert (=> b!1243881 m!1146327))

(declare-fun m!1146329 () Bool)

(assert (=> b!1243881 m!1146329))

(declare-fun m!1146331 () Bool)

(assert (=> b!1243890 m!1146331))

(declare-fun m!1146333 () Bool)

(assert (=> b!1243887 m!1146333))

(declare-fun m!1146335 () Bool)

(assert (=> b!1243882 m!1146335))

(declare-fun m!1146337 () Bool)

(assert (=> b!1243880 m!1146337))

(declare-fun m!1146339 () Bool)

(assert (=> b!1243880 m!1146339))

(declare-fun m!1146341 () Bool)

(assert (=> b!1243889 m!1146341))

(declare-fun m!1146343 () Bool)

(assert (=> b!1243884 m!1146343))

(check-sat (not b!1243882) (not b!1243885) (not b!1243886) (not b!1243881) (not b!1243884) (not start!103958) (not b!1243880) (not b!1243887) (not b!1243890) (not b!1243889))
(check-sat)
