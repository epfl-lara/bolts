; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102034 () Bool)

(assert start!102034)

(declare-fun b!1228068 () Bool)

(declare-fun res!816806 () Bool)

(declare-fun e!697143 () Bool)

(assert (=> b!1228068 (=> res!816806 e!697143)))

(declare-datatypes ((List!27195 0))(
  ( (Nil!27192) (Cons!27191 (h!28400 (_ BitVec 64)) (t!40665 List!27195)) )
))
(declare-fun contains!7110 (List!27195 (_ BitVec 64)) Bool)

(assert (=> b!1228068 (= res!816806 (contains!7110 Nil!27192 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228069 () Bool)

(declare-fun res!816807 () Bool)

(declare-fun e!697142 () Bool)

(assert (=> b!1228069 (=> (not res!816807) (not e!697142))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79250 0))(
  ( (array!79251 (arr!38244 (Array (_ BitVec 32) (_ BitVec 64))) (size!38781 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79250)

(assert (=> b!1228069 (= res!816807 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38781 a!3806)) (bvslt from!3184 (size!38781 a!3806))))))

(declare-fun res!816799 () Bool)

(assert (=> start!102034 (=> (not res!816799) (not e!697142))))

(assert (=> start!102034 (= res!816799 (bvslt (size!38781 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102034 e!697142))

(declare-fun array_inv!29020 (array!79250) Bool)

(assert (=> start!102034 (array_inv!29020 a!3806)))

(assert (=> start!102034 true))

(declare-fun b!1228070 () Bool)

(declare-fun res!816802 () Bool)

(assert (=> b!1228070 (=> res!816802 e!697143)))

(assert (=> b!1228070 (= res!816802 (contains!7110 Nil!27192 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228071 () Bool)

(declare-fun res!816808 () Bool)

(assert (=> b!1228071 (=> (not res!816808) (not e!697142))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79250 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228071 (= res!816808 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1228072 () Bool)

(assert (=> b!1228072 (= e!697142 (not e!697143))))

(declare-fun res!816801 () Bool)

(assert (=> b!1228072 (=> res!816801 e!697143)))

(assert (=> b!1228072 (= res!816801 (bvsgt from!3184 (size!38781 a!3806)))))

(declare-fun acc!823 () List!27195)

(declare-fun arrayNoDuplicates!0 (array!79250 (_ BitVec 32) List!27195) Bool)

(assert (=> b!1228072 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27191 (select (arr!38244 a!3806) from!3184) acc!823))))

(declare-fun b!1228073 () Bool)

(declare-fun res!816803 () Bool)

(assert (=> b!1228073 (=> (not res!816803) (not e!697142))))

(assert (=> b!1228073 (= res!816803 (not (contains!7110 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228074 () Bool)

(assert (=> b!1228074 (= e!697143 true)))

(declare-datatypes ((Unit!40628 0))(
  ( (Unit!40629) )
))
(declare-fun lt!558908 () Unit!40628)

(declare-fun noDuplicateSubseq!50 (List!27195 List!27195) Unit!40628)

(assert (=> b!1228074 (= lt!558908 (noDuplicateSubseq!50 Nil!27192 acc!823))))

(declare-fun b!1228075 () Bool)

(declare-fun res!816797 () Bool)

(assert (=> b!1228075 (=> (not res!816797) (not e!697142))))

(assert (=> b!1228075 (= res!816797 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1228076 () Bool)

(declare-fun res!816809 () Bool)

(assert (=> b!1228076 (=> (not res!816809) (not e!697142))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1228076 (= res!816809 (validKeyInArray!0 k!2913))))

(declare-fun b!1228077 () Bool)

(declare-fun res!816804 () Bool)

(assert (=> b!1228077 (=> (not res!816804) (not e!697142))))

(assert (=> b!1228077 (= res!816804 (not (contains!7110 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228078 () Bool)

(declare-fun res!816800 () Bool)

(assert (=> b!1228078 (=> (not res!816800) (not e!697142))))

(assert (=> b!1228078 (= res!816800 (validKeyInArray!0 (select (arr!38244 a!3806) from!3184)))))

(declare-fun b!1228079 () Bool)

(declare-fun res!816805 () Bool)

(assert (=> b!1228079 (=> res!816805 e!697143)))

(declare-fun subseq!497 (List!27195 List!27195) Bool)

(assert (=> b!1228079 (= res!816805 (not (subseq!497 Nil!27192 acc!823)))))

(declare-fun b!1228080 () Bool)

(declare-fun res!816798 () Bool)

(assert (=> b!1228080 (=> (not res!816798) (not e!697142))))

(declare-fun noDuplicate!1717 (List!27195) Bool)

(assert (=> b!1228080 (= res!816798 (noDuplicate!1717 acc!823))))

(assert (= (and start!102034 res!816799) b!1228076))

(assert (= (and b!1228076 res!816809) b!1228069))

(assert (= (and b!1228069 res!816807) b!1228080))

(assert (= (and b!1228080 res!816798) b!1228073))

(assert (= (and b!1228073 res!816803) b!1228077))

(assert (= (and b!1228077 res!816804) b!1228071))

(assert (= (and b!1228071 res!816808) b!1228075))

(assert (= (and b!1228075 res!816797) b!1228078))

(assert (= (and b!1228078 res!816800) b!1228072))

(assert (= (and b!1228072 (not res!816801)) b!1228068))

(assert (= (and b!1228068 (not res!816806)) b!1228070))

(assert (= (and b!1228070 (not res!816802)) b!1228079))

(assert (= (and b!1228079 (not res!816805)) b!1228074))

(declare-fun m!1132697 () Bool)

(assert (=> b!1228080 m!1132697))

(declare-fun m!1132699 () Bool)

(assert (=> b!1228072 m!1132699))

(declare-fun m!1132701 () Bool)

(assert (=> b!1228072 m!1132701))

(declare-fun m!1132703 () Bool)

(assert (=> b!1228079 m!1132703))

(declare-fun m!1132705 () Bool)

(assert (=> b!1228068 m!1132705))

(declare-fun m!1132707 () Bool)

(assert (=> b!1228073 m!1132707))

(declare-fun m!1132709 () Bool)

(assert (=> b!1228071 m!1132709))

(declare-fun m!1132711 () Bool)

(assert (=> b!1228077 m!1132711))

(declare-fun m!1132713 () Bool)

(assert (=> b!1228074 m!1132713))

(declare-fun m!1132715 () Bool)

(assert (=> b!1228070 m!1132715))

(declare-fun m!1132717 () Bool)

(assert (=> start!102034 m!1132717))

(assert (=> b!1228078 m!1132699))

(assert (=> b!1228078 m!1132699))

(declare-fun m!1132719 () Bool)

(assert (=> b!1228078 m!1132719))

(declare-fun m!1132721 () Bool)

(assert (=> b!1228076 m!1132721))

(declare-fun m!1132723 () Bool)

(assert (=> b!1228075 m!1132723))

(push 1)

(assert (not b!1228068))

(assert (not b!1228076))

(assert (not b!1228080))

(assert (not b!1228079))

(assert (not b!1228073))

(assert (not b!1228071))

(assert (not b!1228077))

(assert (not b!1228070))

(assert (not start!102034))

(assert (not b!1228078))

(assert (not b!1228074))

(assert (not b!1228075))

(assert (not b!1228072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

