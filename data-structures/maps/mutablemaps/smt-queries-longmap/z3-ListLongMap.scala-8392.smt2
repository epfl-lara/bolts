; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102174 () Bool)

(assert start!102174)

(declare-fun res!817739 () Bool)

(declare-fun e!697773 () Bool)

(assert (=> start!102174 (=> (not res!817739) (not e!697773))))

(declare-datatypes ((array!79288 0))(
  ( (array!79289 (arr!38260 (Array (_ BitVec 32) (_ BitVec 64))) (size!38797 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79288)

(assert (=> start!102174 (= res!817739 (bvslt (size!38797 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102174 e!697773))

(declare-fun array_inv!29036 (array!79288) Bool)

(assert (=> start!102174 (array_inv!29036 a!3806)))

(assert (=> start!102174 true))

(declare-fun b!1229147 () Bool)

(declare-fun e!697771 () Bool)

(assert (=> b!1229147 (= e!697773 (not e!697771))))

(declare-fun res!817751 () Bool)

(assert (=> b!1229147 (=> res!817751 e!697771)))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1229147 (= res!817751 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-datatypes ((List!27211 0))(
  ( (Nil!27208) (Cons!27207 (h!28416 (_ BitVec 64)) (t!40681 List!27211)) )
))
(declare-fun lt!559073 () List!27211)

(assert (=> b!1229147 (= lt!559073 (Cons!27207 (select (arr!38260 a!3806) from!3184) Nil!27208))))

(declare-fun e!697772 () Bool)

(assert (=> b!1229147 e!697772))

(declare-fun res!817742 () Bool)

(assert (=> b!1229147 (=> (not res!817742) (not e!697772))))

(declare-fun arrayNoDuplicates!0 (array!79288 (_ BitVec 32) List!27211) Bool)

(assert (=> b!1229147 (= res!817742 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27208))))

(declare-datatypes ((Unit!40660 0))(
  ( (Unit!40661) )
))
(declare-fun lt!559072 () Unit!40660)

(declare-fun acc!823 () List!27211)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79288 List!27211 List!27211 (_ BitVec 32)) Unit!40660)

(assert (=> b!1229147 (= lt!559072 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27208 from!3184))))

(assert (=> b!1229147 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27207 (select (arr!38260 a!3806) from!3184) acc!823))))

(declare-fun b!1229148 () Bool)

(declare-fun res!817740 () Bool)

(assert (=> b!1229148 (=> res!817740 e!697771)))

(declare-fun contains!7126 (List!27211 (_ BitVec 64)) Bool)

(assert (=> b!1229148 (= res!817740 (contains!7126 lt!559073 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229149 () Bool)

(declare-fun res!817746 () Bool)

(assert (=> b!1229149 (=> (not res!817746) (not e!697773))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79288 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229149 (= res!817746 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229150 () Bool)

(declare-fun res!817738 () Bool)

(assert (=> b!1229150 (=> (not res!817738) (not e!697773))))

(assert (=> b!1229150 (= res!817738 (not (contains!7126 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229151 () Bool)

(declare-fun res!817745 () Bool)

(assert (=> b!1229151 (=> (not res!817745) (not e!697773))))

(assert (=> b!1229151 (= res!817745 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38797 a!3806)) (bvslt from!3184 (size!38797 a!3806))))))

(declare-fun b!1229152 () Bool)

(declare-fun res!817741 () Bool)

(assert (=> b!1229152 (=> (not res!817741) (not e!697773))))

(assert (=> b!1229152 (= res!817741 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229153 () Bool)

(declare-fun res!817748 () Bool)

(assert (=> b!1229153 (=> res!817748 e!697771)))

(assert (=> b!1229153 (= res!817748 (contains!7126 lt!559073 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229154 () Bool)

(declare-fun res!817749 () Bool)

(assert (=> b!1229154 (=> (not res!817749) (not e!697773))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229154 (= res!817749 (validKeyInArray!0 k0!2913))))

(declare-fun b!1229155 () Bool)

(declare-fun res!817744 () Bool)

(assert (=> b!1229155 (=> (not res!817744) (not e!697773))))

(assert (=> b!1229155 (= res!817744 (validKeyInArray!0 (select (arr!38260 a!3806) from!3184)))))

(declare-fun b!1229156 () Bool)

(declare-fun res!817743 () Bool)

(assert (=> b!1229156 (=> (not res!817743) (not e!697773))))

(declare-fun noDuplicate!1733 (List!27211) Bool)

(assert (=> b!1229156 (= res!817743 (noDuplicate!1733 acc!823))))

(declare-fun b!1229157 () Bool)

(assert (=> b!1229157 (= e!697771 true)))

(declare-fun lt!559071 () Bool)

(assert (=> b!1229157 (= lt!559071 (contains!7126 lt!559073 (select (arr!38260 a!3806) from!3184)))))

(declare-fun b!1229158 () Bool)

(declare-fun res!817747 () Bool)

(assert (=> b!1229158 (=> res!817747 e!697771)))

(assert (=> b!1229158 (= res!817747 (not (noDuplicate!1733 lt!559073)))))

(declare-fun b!1229159 () Bool)

(assert (=> b!1229159 (= e!697772 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27207 (select (arr!38260 a!3806) from!3184) Nil!27208)))))

(declare-fun b!1229160 () Bool)

(declare-fun res!817750 () Bool)

(assert (=> b!1229160 (=> (not res!817750) (not e!697773))))

(assert (=> b!1229160 (= res!817750 (not (contains!7126 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102174 res!817739) b!1229154))

(assert (= (and b!1229154 res!817749) b!1229151))

(assert (= (and b!1229151 res!817745) b!1229156))

(assert (= (and b!1229156 res!817743) b!1229150))

(assert (= (and b!1229150 res!817738) b!1229160))

(assert (= (and b!1229160 res!817750) b!1229149))

(assert (= (and b!1229149 res!817746) b!1229152))

(assert (= (and b!1229152 res!817741) b!1229155))

(assert (= (and b!1229155 res!817744) b!1229147))

(assert (= (and b!1229147 res!817742) b!1229159))

(assert (= (and b!1229147 (not res!817751)) b!1229158))

(assert (= (and b!1229158 (not res!817747)) b!1229148))

(assert (= (and b!1229148 (not res!817740)) b!1229153))

(assert (= (and b!1229153 (not res!817748)) b!1229157))

(declare-fun m!1133823 () Bool)

(assert (=> b!1229159 m!1133823))

(declare-fun m!1133825 () Bool)

(assert (=> b!1229159 m!1133825))

(declare-fun m!1133827 () Bool)

(assert (=> b!1229148 m!1133827))

(assert (=> b!1229157 m!1133823))

(assert (=> b!1229157 m!1133823))

(declare-fun m!1133829 () Bool)

(assert (=> b!1229157 m!1133829))

(declare-fun m!1133831 () Bool)

(assert (=> b!1229156 m!1133831))

(declare-fun m!1133833 () Bool)

(assert (=> b!1229158 m!1133833))

(declare-fun m!1133835 () Bool)

(assert (=> b!1229154 m!1133835))

(declare-fun m!1133837 () Bool)

(assert (=> b!1229149 m!1133837))

(declare-fun m!1133839 () Bool)

(assert (=> b!1229160 m!1133839))

(declare-fun m!1133841 () Bool)

(assert (=> b!1229150 m!1133841))

(declare-fun m!1133843 () Bool)

(assert (=> b!1229152 m!1133843))

(declare-fun m!1133845 () Bool)

(assert (=> start!102174 m!1133845))

(assert (=> b!1229155 m!1133823))

(assert (=> b!1229155 m!1133823))

(declare-fun m!1133847 () Bool)

(assert (=> b!1229155 m!1133847))

(declare-fun m!1133849 () Bool)

(assert (=> b!1229153 m!1133849))

(assert (=> b!1229147 m!1133823))

(declare-fun m!1133851 () Bool)

(assert (=> b!1229147 m!1133851))

(declare-fun m!1133853 () Bool)

(assert (=> b!1229147 m!1133853))

(declare-fun m!1133855 () Bool)

(assert (=> b!1229147 m!1133855))

(check-sat (not b!1229148) (not b!1229158) (not b!1229153) (not b!1229160) (not b!1229156) (not b!1229149) (not b!1229152) (not b!1229157) (not b!1229154) (not b!1229150) (not b!1229159) (not start!102174) (not b!1229147) (not b!1229155))
(check-sat)
