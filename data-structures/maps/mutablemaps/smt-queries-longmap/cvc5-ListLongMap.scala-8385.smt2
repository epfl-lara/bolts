; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102022 () Bool)

(assert start!102022)

(declare-fun b!1227834 () Bool)

(declare-fun res!816573 () Bool)

(declare-fun e!697090 () Bool)

(assert (=> b!1227834 (=> (not res!816573) (not e!697090))))

(declare-datatypes ((array!79238 0))(
  ( (array!79239 (arr!38238 (Array (_ BitVec 32) (_ BitVec 64))) (size!38775 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79238)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1227834 (= res!816573 (validKeyInArray!0 (select (arr!38238 a!3806) from!3184)))))

(declare-fun b!1227835 () Bool)

(declare-fun res!816563 () Bool)

(assert (=> b!1227835 (=> (not res!816563) (not e!697090))))

(declare-datatypes ((List!27189 0))(
  ( (Nil!27186) (Cons!27185 (h!28394 (_ BitVec 64)) (t!40659 List!27189)) )
))
(declare-fun acc!823 () List!27189)

(declare-fun contains!7104 (List!27189 (_ BitVec 64)) Bool)

(assert (=> b!1227835 (= res!816563 (not (contains!7104 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227836 () Bool)

(declare-fun res!816575 () Bool)

(assert (=> b!1227836 (=> (not res!816575) (not e!697090))))

(assert (=> b!1227836 (= res!816575 (not (contains!7104 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1227837 () Bool)

(declare-fun res!816568 () Bool)

(declare-fun e!697089 () Bool)

(assert (=> b!1227837 (=> res!816568 e!697089)))

(declare-fun subseq!491 (List!27189 List!27189) Bool)

(assert (=> b!1227837 (= res!816568 (not (subseq!491 Nil!27186 acc!823)))))

(declare-fun b!1227838 () Bool)

(declare-fun res!816567 () Bool)

(assert (=> b!1227838 (=> (not res!816567) (not e!697090))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79238 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1227838 (= res!816567 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun res!816566 () Bool)

(assert (=> start!102022 (=> (not res!816566) (not e!697090))))

(assert (=> start!102022 (= res!816566 (bvslt (size!38775 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102022 e!697090))

(declare-fun array_inv!29014 (array!79238) Bool)

(assert (=> start!102022 (array_inv!29014 a!3806)))

(assert (=> start!102022 true))

(declare-fun b!1227839 () Bool)

(declare-fun res!816570 () Bool)

(assert (=> b!1227839 (=> (not res!816570) (not e!697090))))

(assert (=> b!1227839 (= res!816570 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38775 a!3806)) (bvslt from!3184 (size!38775 a!3806))))))

(declare-fun b!1227840 () Bool)

(declare-fun res!816565 () Bool)

(assert (=> b!1227840 (=> res!816565 e!697089)))

(assert (=> b!1227840 (= res!816565 (contains!7104 Nil!27186 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227841 () Bool)

(assert (=> b!1227841 (= e!697089 true)))

(declare-datatypes ((Unit!40616 0))(
  ( (Unit!40617) )
))
(declare-fun lt!558890 () Unit!40616)

(declare-fun noDuplicateSubseq!44 (List!27189 List!27189) Unit!40616)

(assert (=> b!1227841 (= lt!558890 (noDuplicateSubseq!44 Nil!27186 acc!823))))

(declare-fun b!1227842 () Bool)

(declare-fun res!816572 () Bool)

(assert (=> b!1227842 (=> (not res!816572) (not e!697090))))

(declare-fun noDuplicate!1711 (List!27189) Bool)

(assert (=> b!1227842 (= res!816572 (noDuplicate!1711 acc!823))))

(declare-fun b!1227843 () Bool)

(declare-fun res!816571 () Bool)

(assert (=> b!1227843 (=> (not res!816571) (not e!697090))))

(declare-fun arrayNoDuplicates!0 (array!79238 (_ BitVec 32) List!27189) Bool)

(assert (=> b!1227843 (= res!816571 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1227844 () Bool)

(declare-fun res!816564 () Bool)

(assert (=> b!1227844 (=> (not res!816564) (not e!697090))))

(assert (=> b!1227844 (= res!816564 (validKeyInArray!0 k!2913))))

(declare-fun b!1227845 () Bool)

(declare-fun res!816574 () Bool)

(assert (=> b!1227845 (=> res!816574 e!697089)))

(assert (=> b!1227845 (= res!816574 (contains!7104 Nil!27186 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1227846 () Bool)

(assert (=> b!1227846 (= e!697090 (not e!697089))))

(declare-fun res!816569 () Bool)

(assert (=> b!1227846 (=> res!816569 e!697089)))

(assert (=> b!1227846 (= res!816569 (bvsgt from!3184 (size!38775 a!3806)))))

(assert (=> b!1227846 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27185 (select (arr!38238 a!3806) from!3184) acc!823))))

(assert (= (and start!102022 res!816566) b!1227844))

(assert (= (and b!1227844 res!816564) b!1227839))

(assert (= (and b!1227839 res!816570) b!1227842))

(assert (= (and b!1227842 res!816572) b!1227836))

(assert (= (and b!1227836 res!816575) b!1227835))

(assert (= (and b!1227835 res!816563) b!1227838))

(assert (= (and b!1227838 res!816567) b!1227843))

(assert (= (and b!1227843 res!816571) b!1227834))

(assert (= (and b!1227834 res!816573) b!1227846))

(assert (= (and b!1227846 (not res!816569)) b!1227845))

(assert (= (and b!1227845 (not res!816574)) b!1227840))

(assert (= (and b!1227840 (not res!816565)) b!1227837))

(assert (= (and b!1227837 (not res!816568)) b!1227841))

(declare-fun m!1132529 () Bool)

(assert (=> b!1227835 m!1132529))

(declare-fun m!1132531 () Bool)

(assert (=> b!1227842 m!1132531))

(declare-fun m!1132533 () Bool)

(assert (=> b!1227834 m!1132533))

(assert (=> b!1227834 m!1132533))

(declare-fun m!1132535 () Bool)

(assert (=> b!1227834 m!1132535))

(declare-fun m!1132537 () Bool)

(assert (=> b!1227845 m!1132537))

(declare-fun m!1132539 () Bool)

(assert (=> b!1227843 m!1132539))

(declare-fun m!1132541 () Bool)

(assert (=> b!1227836 m!1132541))

(assert (=> b!1227846 m!1132533))

(declare-fun m!1132543 () Bool)

(assert (=> b!1227846 m!1132543))

(declare-fun m!1132545 () Bool)

(assert (=> b!1227840 m!1132545))

(declare-fun m!1132547 () Bool)

(assert (=> start!102022 m!1132547))

(declare-fun m!1132549 () Bool)

(assert (=> b!1227838 m!1132549))

(declare-fun m!1132551 () Bool)

(assert (=> b!1227837 m!1132551))

(declare-fun m!1132553 () Bool)

(assert (=> b!1227841 m!1132553))

(declare-fun m!1132555 () Bool)

(assert (=> b!1227844 m!1132555))

(push 1)

(assert (not b!1227841))

(assert (not b!1227834))

(assert (not b!1227837))

(assert (not b!1227838))

(assert (not start!102022))

(assert (not b!1227840))

(assert (not b!1227845))

(assert (not b!1227835))

(assert (not b!1227844))

(assert (not b!1227836))

(assert (not b!1227846))

(assert (not b!1227842))

(assert (not b!1227843))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

