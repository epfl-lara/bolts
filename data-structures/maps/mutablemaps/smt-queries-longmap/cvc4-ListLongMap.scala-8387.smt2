; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102038 () Bool)

(assert start!102038)

(declare-fun b!1228146 () Bool)

(declare-fun res!816875 () Bool)

(declare-fun e!697162 () Bool)

(assert (=> b!1228146 (=> res!816875 e!697162)))

(declare-datatypes ((List!27197 0))(
  ( (Nil!27194) (Cons!27193 (h!28402 (_ BitVec 64)) (t!40667 List!27197)) )
))
(declare-fun contains!7112 (List!27197 (_ BitVec 64)) Bool)

(assert (=> b!1228146 (= res!816875 (contains!7112 Nil!27194 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228147 () Bool)

(declare-fun res!816877 () Bool)

(declare-fun e!697160 () Bool)

(assert (=> b!1228147 (=> (not res!816877) (not e!697160))))

(declare-fun acc!823 () List!27197)

(assert (=> b!1228147 (= res!816877 (not (contains!7112 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228148 () Bool)

(declare-fun res!816879 () Bool)

(assert (=> b!1228148 (=> (not res!816879) (not e!697160))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1228148 (= res!816879 (validKeyInArray!0 k!2913))))

(declare-fun b!1228149 () Bool)

(assert (=> b!1228149 (= e!697162 true)))

(declare-datatypes ((Unit!40632 0))(
  ( (Unit!40633) )
))
(declare-fun lt!558914 () Unit!40632)

(declare-fun noDuplicateSubseq!52 (List!27197 List!27197) Unit!40632)

(assert (=> b!1228149 (= lt!558914 (noDuplicateSubseq!52 Nil!27194 acc!823))))

(declare-fun res!816886 () Bool)

(assert (=> start!102038 (=> (not res!816886) (not e!697160))))

(declare-datatypes ((array!79254 0))(
  ( (array!79255 (arr!38246 (Array (_ BitVec 32) (_ BitVec 64))) (size!38783 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79254)

(assert (=> start!102038 (= res!816886 (bvslt (size!38783 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102038 e!697160))

(declare-fun array_inv!29022 (array!79254) Bool)

(assert (=> start!102038 (array_inv!29022 a!3806)))

(assert (=> start!102038 true))

(declare-fun b!1228150 () Bool)

(declare-fun res!816882 () Bool)

(assert (=> b!1228150 (=> (not res!816882) (not e!697160))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79254 (_ BitVec 32) List!27197) Bool)

(assert (=> b!1228150 (= res!816882 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1228151 () Bool)

(declare-fun res!816881 () Bool)

(assert (=> b!1228151 (=> res!816881 e!697162)))

(declare-fun subseq!499 (List!27197 List!27197) Bool)

(assert (=> b!1228151 (= res!816881 (not (subseq!499 Nil!27194 acc!823)))))

(declare-fun b!1228152 () Bool)

(declare-fun res!816887 () Bool)

(assert (=> b!1228152 (=> (not res!816887) (not e!697160))))

(declare-fun arrayContainsKey!0 (array!79254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228152 (= res!816887 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1228153 () Bool)

(declare-fun res!816878 () Bool)

(assert (=> b!1228153 (=> (not res!816878) (not e!697160))))

(assert (=> b!1228153 (= res!816878 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38783 a!3806)) (bvslt from!3184 (size!38783 a!3806))))))

(declare-fun b!1228154 () Bool)

(assert (=> b!1228154 (= e!697160 (not e!697162))))

(declare-fun res!816885 () Bool)

(assert (=> b!1228154 (=> res!816885 e!697162)))

(assert (=> b!1228154 (= res!816885 (bvsgt from!3184 (size!38783 a!3806)))))

(assert (=> b!1228154 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27193 (select (arr!38246 a!3806) from!3184) acc!823))))

(declare-fun b!1228155 () Bool)

(declare-fun res!816884 () Bool)

(assert (=> b!1228155 (=> (not res!816884) (not e!697160))))

(declare-fun noDuplicate!1719 (List!27197) Bool)

(assert (=> b!1228155 (= res!816884 (noDuplicate!1719 acc!823))))

(declare-fun b!1228156 () Bool)

(declare-fun res!816883 () Bool)

(assert (=> b!1228156 (=> res!816883 e!697162)))

(assert (=> b!1228156 (= res!816883 (contains!7112 Nil!27194 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228157 () Bool)

(declare-fun res!816880 () Bool)

(assert (=> b!1228157 (=> (not res!816880) (not e!697160))))

(assert (=> b!1228157 (= res!816880 (validKeyInArray!0 (select (arr!38246 a!3806) from!3184)))))

(declare-fun b!1228158 () Bool)

(declare-fun res!816876 () Bool)

(assert (=> b!1228158 (=> (not res!816876) (not e!697160))))

(assert (=> b!1228158 (= res!816876 (not (contains!7112 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102038 res!816886) b!1228148))

(assert (= (and b!1228148 res!816879) b!1228153))

(assert (= (and b!1228153 res!816878) b!1228155))

(assert (= (and b!1228155 res!816884) b!1228147))

(assert (= (and b!1228147 res!816877) b!1228158))

(assert (= (and b!1228158 res!816876) b!1228152))

(assert (= (and b!1228152 res!816887) b!1228150))

(assert (= (and b!1228150 res!816882) b!1228157))

(assert (= (and b!1228157 res!816880) b!1228154))

(assert (= (and b!1228154 (not res!816885)) b!1228146))

(assert (= (and b!1228146 (not res!816875)) b!1228156))

(assert (= (and b!1228156 (not res!816883)) b!1228151))

(assert (= (and b!1228151 (not res!816881)) b!1228149))

(declare-fun m!1132753 () Bool)

(assert (=> b!1228151 m!1132753))

(declare-fun m!1132755 () Bool)

(assert (=> b!1228148 m!1132755))

(declare-fun m!1132757 () Bool)

(assert (=> b!1228154 m!1132757))

(declare-fun m!1132759 () Bool)

(assert (=> b!1228154 m!1132759))

(declare-fun m!1132761 () Bool)

(assert (=> b!1228147 m!1132761))

(declare-fun m!1132763 () Bool)

(assert (=> start!102038 m!1132763))

(declare-fun m!1132765 () Bool)

(assert (=> b!1228152 m!1132765))

(declare-fun m!1132767 () Bool)

(assert (=> b!1228149 m!1132767))

(declare-fun m!1132769 () Bool)

(assert (=> b!1228150 m!1132769))

(declare-fun m!1132771 () Bool)

(assert (=> b!1228146 m!1132771))

(assert (=> b!1228157 m!1132757))

(assert (=> b!1228157 m!1132757))

(declare-fun m!1132773 () Bool)

(assert (=> b!1228157 m!1132773))

(declare-fun m!1132775 () Bool)

(assert (=> b!1228158 m!1132775))

(declare-fun m!1132777 () Bool)

(assert (=> b!1228155 m!1132777))

(declare-fun m!1132779 () Bool)

(assert (=> b!1228156 m!1132779))

(push 1)

(assert (not b!1228154))

(assert (not b!1228158))

(assert (not b!1228150))

(assert (not b!1228156))

(assert (not start!102038))

(assert (not b!1228157))

(assert (not b!1228146))

(assert (not b!1228155))

(assert (not b!1228148))

(assert (not b!1228152))

(assert (not b!1228151))

(assert (not b!1228149))

(assert (not b!1228147))

(check-sat)

