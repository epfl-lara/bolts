; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102032 () Bool)

(assert start!102032)

(declare-fun b!1228029 () Bool)

(declare-fun res!816758 () Bool)

(declare-fun e!697133 () Bool)

(assert (=> b!1228029 (=> res!816758 e!697133)))

(declare-datatypes ((List!27194 0))(
  ( (Nil!27191) (Cons!27190 (h!28399 (_ BitVec 64)) (t!40664 List!27194)) )
))
(declare-fun acc!823 () List!27194)

(declare-fun subseq!496 (List!27194 List!27194) Bool)

(assert (=> b!1228029 (= res!816758 (not (subseq!496 Nil!27191 acc!823)))))

(declare-fun b!1228030 () Bool)

(declare-fun e!697135 () Bool)

(assert (=> b!1228030 (= e!697135 (not e!697133))))

(declare-fun res!816769 () Bool)

(assert (=> b!1228030 (=> res!816769 e!697133)))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79248 0))(
  ( (array!79249 (arr!38243 (Array (_ BitVec 32) (_ BitVec 64))) (size!38780 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79248)

(assert (=> b!1228030 (= res!816769 (bvsgt from!3184 (size!38780 a!3806)))))

(declare-fun arrayNoDuplicates!0 (array!79248 (_ BitVec 32) List!27194) Bool)

(assert (=> b!1228030 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27190 (select (arr!38243 a!3806) from!3184) acc!823))))

(declare-fun b!1228031 () Bool)

(assert (=> b!1228031 (= e!697133 true)))

(declare-datatypes ((Unit!40626 0))(
  ( (Unit!40627) )
))
(declare-fun lt!558905 () Unit!40626)

(declare-fun noDuplicateSubseq!49 (List!27194 List!27194) Unit!40626)

(assert (=> b!1228031 (= lt!558905 (noDuplicateSubseq!49 Nil!27191 acc!823))))

(declare-fun b!1228032 () Bool)

(declare-fun res!816762 () Bool)

(assert (=> b!1228032 (=> (not res!816762) (not e!697135))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1228032 (= res!816762 (validKeyInArray!0 k!2913))))

(declare-fun b!1228033 () Bool)

(declare-fun res!816767 () Bool)

(assert (=> b!1228033 (=> res!816767 e!697133)))

(declare-fun contains!7109 (List!27194 (_ BitVec 64)) Bool)

(assert (=> b!1228033 (= res!816767 (contains!7109 Nil!27191 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228034 () Bool)

(declare-fun res!816759 () Bool)

(assert (=> b!1228034 (=> (not res!816759) (not e!697135))))

(assert (=> b!1228034 (= res!816759 (validKeyInArray!0 (select (arr!38243 a!3806) from!3184)))))

(declare-fun b!1228035 () Bool)

(declare-fun res!816768 () Bool)

(assert (=> b!1228035 (=> (not res!816768) (not e!697135))))

(assert (=> b!1228035 (= res!816768 (not (contains!7109 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228036 () Bool)

(declare-fun res!816763 () Bool)

(assert (=> b!1228036 (=> (not res!816763) (not e!697135))))

(assert (=> b!1228036 (= res!816763 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1228037 () Bool)

(declare-fun res!816761 () Bool)

(assert (=> b!1228037 (=> (not res!816761) (not e!697135))))

(assert (=> b!1228037 (= res!816761 (not (contains!7109 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228038 () Bool)

(declare-fun res!816766 () Bool)

(assert (=> b!1228038 (=> (not res!816766) (not e!697135))))

(declare-fun noDuplicate!1716 (List!27194) Bool)

(assert (=> b!1228038 (= res!816766 (noDuplicate!1716 acc!823))))

(declare-fun b!1228039 () Bool)

(declare-fun res!816760 () Bool)

(assert (=> b!1228039 (=> (not res!816760) (not e!697135))))

(assert (=> b!1228039 (= res!816760 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38780 a!3806)) (bvslt from!3184 (size!38780 a!3806))))))

(declare-fun b!1228040 () Bool)

(declare-fun res!816764 () Bool)

(assert (=> b!1228040 (=> (not res!816764) (not e!697135))))

(declare-fun arrayContainsKey!0 (array!79248 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228040 (= res!816764 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun res!816770 () Bool)

(assert (=> start!102032 (=> (not res!816770) (not e!697135))))

(assert (=> start!102032 (= res!816770 (bvslt (size!38780 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102032 e!697135))

(declare-fun array_inv!29019 (array!79248) Bool)

(assert (=> start!102032 (array_inv!29019 a!3806)))

(assert (=> start!102032 true))

(declare-fun b!1228041 () Bool)

(declare-fun res!816765 () Bool)

(assert (=> b!1228041 (=> res!816765 e!697133)))

(assert (=> b!1228041 (= res!816765 (contains!7109 Nil!27191 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102032 res!816770) b!1228032))

(assert (= (and b!1228032 res!816762) b!1228039))

(assert (= (and b!1228039 res!816760) b!1228038))

(assert (= (and b!1228038 res!816766) b!1228037))

(assert (= (and b!1228037 res!816761) b!1228035))

(assert (= (and b!1228035 res!816768) b!1228040))

(assert (= (and b!1228040 res!816764) b!1228036))

(assert (= (and b!1228036 res!816763) b!1228034))

(assert (= (and b!1228034 res!816759) b!1228030))

(assert (= (and b!1228030 (not res!816769)) b!1228041))

(assert (= (and b!1228041 (not res!816765)) b!1228033))

(assert (= (and b!1228033 (not res!816767)) b!1228029))

(assert (= (and b!1228029 (not res!816758)) b!1228031))

(declare-fun m!1132669 () Bool)

(assert (=> b!1228030 m!1132669))

(declare-fun m!1132671 () Bool)

(assert (=> b!1228030 m!1132671))

(declare-fun m!1132673 () Bool)

(assert (=> b!1228029 m!1132673))

(declare-fun m!1132675 () Bool)

(assert (=> b!1228040 m!1132675))

(declare-fun m!1132677 () Bool)

(assert (=> start!102032 m!1132677))

(declare-fun m!1132679 () Bool)

(assert (=> b!1228031 m!1132679))

(declare-fun m!1132681 () Bool)

(assert (=> b!1228032 m!1132681))

(declare-fun m!1132683 () Bool)

(assert (=> b!1228036 m!1132683))

(declare-fun m!1132685 () Bool)

(assert (=> b!1228035 m!1132685))

(declare-fun m!1132687 () Bool)

(assert (=> b!1228041 m!1132687))

(assert (=> b!1228034 m!1132669))

(assert (=> b!1228034 m!1132669))

(declare-fun m!1132689 () Bool)

(assert (=> b!1228034 m!1132689))

(declare-fun m!1132691 () Bool)

(assert (=> b!1228038 m!1132691))

(declare-fun m!1132693 () Bool)

(assert (=> b!1228033 m!1132693))

(declare-fun m!1132695 () Bool)

(assert (=> b!1228037 m!1132695))

(push 1)

(assert (not b!1228036))

(assert (not b!1228037))

(assert (not b!1228041))

(assert (not b!1228031))

(assert (not b!1228034))

(assert (not b!1228038))

(assert (not start!102032))

(assert (not b!1228040))

(assert (not b!1228035))

(assert (not b!1228030))

(assert (not b!1228029))

(assert (not b!1228033))

(assert (not b!1228032))

(check-sat)

