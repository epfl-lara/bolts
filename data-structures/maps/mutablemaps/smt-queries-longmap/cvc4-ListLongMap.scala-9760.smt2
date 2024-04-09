; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115722 () Bool)

(assert start!115722)

(declare-fun res!911385 () Bool)

(declare-fun e!775145 () Bool)

(assert (=> start!115722 (=> (not res!911385) (not e!775145))))

(declare-datatypes ((array!92837 0))(
  ( (array!92838 (arr!44838 (Array (_ BitVec 32) (_ BitVec 64))) (size!45389 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92837)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115722 (= res!911385 (and (bvslt (size!45389 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45389 a!3861))))))

(assert (=> start!115722 e!775145))

(declare-fun array_inv!33783 (array!92837) Bool)

(assert (=> start!115722 (array_inv!33783 a!3861)))

(assert (=> start!115722 true))

(declare-fun b!1367749 () Bool)

(declare-fun res!911388 () Bool)

(assert (=> b!1367749 (=> (not res!911388) (not e!775145))))

(declare-datatypes ((List!32086 0))(
  ( (Nil!32083) (Cons!32082 (h!33291 (_ BitVec 64)) (t!46787 List!32086)) )
))
(declare-fun acc!866 () List!32086)

(declare-fun noDuplicate!2503 (List!32086) Bool)

(assert (=> b!1367749 (= res!911388 (noDuplicate!2503 acc!866))))

(declare-fun b!1367750 () Bool)

(declare-fun res!911387 () Bool)

(assert (=> b!1367750 (=> (not res!911387) (not e!775145))))

(declare-fun contains!9624 (List!32086 (_ BitVec 64)) Bool)

(assert (=> b!1367750 (= res!911387 (not (contains!9624 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367751 () Bool)

(declare-fun e!775146 () Bool)

(assert (=> b!1367751 (= e!775146 false)))

(declare-fun lt!601891 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92837 (_ BitVec 32) List!32086) Bool)

(assert (=> b!1367751 (= lt!601891 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1367752 () Bool)

(declare-fun res!911378 () Bool)

(assert (=> b!1367752 (=> (not res!911378) (not e!775145))))

(declare-fun newAcc!98 () List!32086)

(assert (=> b!1367752 (= res!911378 (not (contains!9624 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367753 () Bool)

(declare-fun res!911381 () Bool)

(assert (=> b!1367753 (=> (not res!911381) (not e!775146))))

(assert (=> b!1367753 (= res!911381 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1367754 () Bool)

(declare-fun res!911383 () Bool)

(assert (=> b!1367754 (=> (not res!911383) (not e!775145))))

(declare-fun subseq!1015 (List!32086 List!32086) Bool)

(assert (=> b!1367754 (= res!911383 (subseq!1015 newAcc!98 acc!866))))

(declare-fun b!1367755 () Bool)

(assert (=> b!1367755 (= e!775145 e!775146)))

(declare-fun res!911380 () Bool)

(assert (=> b!1367755 (=> (not res!911380) (not e!775146))))

(assert (=> b!1367755 (= res!911380 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45111 0))(
  ( (Unit!45112) )
))
(declare-fun lt!601892 () Unit!45111)

(declare-fun noDuplicateSubseq!202 (List!32086 List!32086) Unit!45111)

(assert (=> b!1367755 (= lt!601892 (noDuplicateSubseq!202 newAcc!98 acc!866))))

(declare-fun b!1367756 () Bool)

(declare-fun res!911379 () Bool)

(assert (=> b!1367756 (=> (not res!911379) (not e!775146))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367756 (= res!911379 (not (validKeyInArray!0 (select (arr!44838 a!3861) from!3239))))))

(declare-fun b!1367757 () Bool)

(declare-fun res!911384 () Bool)

(assert (=> b!1367757 (=> (not res!911384) (not e!775146))))

(assert (=> b!1367757 (= res!911384 (bvslt from!3239 (size!45389 a!3861)))))

(declare-fun b!1367758 () Bool)

(declare-fun res!911382 () Bool)

(assert (=> b!1367758 (=> (not res!911382) (not e!775145))))

(assert (=> b!1367758 (= res!911382 (not (contains!9624 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367759 () Bool)

(declare-fun res!911386 () Bool)

(assert (=> b!1367759 (=> (not res!911386) (not e!775145))))

(assert (=> b!1367759 (= res!911386 (not (contains!9624 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115722 res!911385) b!1367749))

(assert (= (and b!1367749 res!911388) b!1367750))

(assert (= (and b!1367750 res!911387) b!1367759))

(assert (= (and b!1367759 res!911386) b!1367752))

(assert (= (and b!1367752 res!911378) b!1367758))

(assert (= (and b!1367758 res!911382) b!1367754))

(assert (= (and b!1367754 res!911383) b!1367755))

(assert (= (and b!1367755 res!911380) b!1367757))

(assert (= (and b!1367757 res!911384) b!1367756))

(assert (= (and b!1367756 res!911379) b!1367753))

(assert (= (and b!1367753 res!911381) b!1367751))

(declare-fun m!1251919 () Bool)

(assert (=> b!1367755 m!1251919))

(declare-fun m!1251921 () Bool)

(assert (=> b!1367755 m!1251921))

(declare-fun m!1251923 () Bool)

(assert (=> b!1367759 m!1251923))

(declare-fun m!1251925 () Bool)

(assert (=> b!1367756 m!1251925))

(assert (=> b!1367756 m!1251925))

(declare-fun m!1251927 () Bool)

(assert (=> b!1367756 m!1251927))

(declare-fun m!1251929 () Bool)

(assert (=> b!1367750 m!1251929))

(declare-fun m!1251931 () Bool)

(assert (=> start!115722 m!1251931))

(declare-fun m!1251933 () Bool)

(assert (=> b!1367749 m!1251933))

(declare-fun m!1251935 () Bool)

(assert (=> b!1367752 m!1251935))

(declare-fun m!1251937 () Bool)

(assert (=> b!1367758 m!1251937))

(declare-fun m!1251939 () Bool)

(assert (=> b!1367751 m!1251939))

(declare-fun m!1251941 () Bool)

(assert (=> b!1367754 m!1251941))

(push 1)

(assert (not b!1367755))

