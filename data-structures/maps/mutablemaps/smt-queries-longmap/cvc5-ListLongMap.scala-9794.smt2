; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116324 () Bool)

(assert start!116324)

(declare-fun b!1372757 () Bool)

(declare-fun res!916151 () Bool)

(declare-fun e!777684 () Bool)

(assert (=> b!1372757 (=> (not res!916151) (not e!777684))))

(declare-datatypes ((List!32186 0))(
  ( (Nil!32183) (Cons!32182 (h!33391 (_ BitVec 64)) (t!46887 List!32186)) )
))
(declare-fun newAcc!98 () List!32186)

(declare-fun contains!9724 (List!32186 (_ BitVec 64)) Bool)

(assert (=> b!1372757 (= res!916151 (not (contains!9724 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372758 () Bool)

(assert (=> b!1372758 (= e!777684 false)))

(declare-datatypes ((array!93064 0))(
  ( (array!93065 (arr!44938 (Array (_ BitVec 32) (_ BitVec 64))) (size!45489 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93064)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun acc!866 () List!32186)

(declare-fun lt!602891 () Bool)

(declare-fun arrayNoDuplicates!0 (array!93064 (_ BitVec 32) List!32186) Bool)

(assert (=> b!1372758 (= lt!602891 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45311 0))(
  ( (Unit!45312) )
))
(declare-fun lt!602890 () Unit!45311)

(declare-fun noDuplicateSubseq!302 (List!32186 List!32186) Unit!45311)

(assert (=> b!1372758 (= lt!602890 (noDuplicateSubseq!302 newAcc!98 acc!866))))

(declare-fun res!916146 () Bool)

(assert (=> start!116324 (=> (not res!916146) (not e!777684))))

(assert (=> start!116324 (= res!916146 (and (bvslt (size!45489 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45489 a!3861))))))

(assert (=> start!116324 e!777684))

(declare-fun array_inv!33883 (array!93064) Bool)

(assert (=> start!116324 (array_inv!33883 a!3861)))

(assert (=> start!116324 true))

(declare-fun b!1372759 () Bool)

(declare-fun res!916149 () Bool)

(assert (=> b!1372759 (=> (not res!916149) (not e!777684))))

(assert (=> b!1372759 (= res!916149 (not (contains!9724 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372760 () Bool)

(declare-fun res!916148 () Bool)

(assert (=> b!1372760 (=> (not res!916148) (not e!777684))))

(assert (=> b!1372760 (= res!916148 (not (contains!9724 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372761 () Bool)

(declare-fun res!916147 () Bool)

(assert (=> b!1372761 (=> (not res!916147) (not e!777684))))

(declare-fun noDuplicate!2603 (List!32186) Bool)

(assert (=> b!1372761 (= res!916147 (noDuplicate!2603 acc!866))))

(declare-fun b!1372762 () Bool)

(declare-fun res!916150 () Bool)

(assert (=> b!1372762 (=> (not res!916150) (not e!777684))))

(assert (=> b!1372762 (= res!916150 (not (contains!9724 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372763 () Bool)

(declare-fun res!916152 () Bool)

(assert (=> b!1372763 (=> (not res!916152) (not e!777684))))

(declare-fun subseq!1115 (List!32186 List!32186) Bool)

(assert (=> b!1372763 (= res!916152 (subseq!1115 newAcc!98 acc!866))))

(assert (= (and start!116324 res!916146) b!1372761))

(assert (= (and b!1372761 res!916147) b!1372762))

(assert (= (and b!1372762 res!916150) b!1372760))

(assert (= (and b!1372760 res!916148) b!1372759))

(assert (= (and b!1372759 res!916149) b!1372757))

(assert (= (and b!1372757 res!916151) b!1372763))

(assert (= (and b!1372763 res!916152) b!1372758))

(declare-fun m!1256173 () Bool)

(assert (=> b!1372757 m!1256173))

(declare-fun m!1256175 () Bool)

(assert (=> start!116324 m!1256175))

(declare-fun m!1256177 () Bool)

(assert (=> b!1372763 m!1256177))

(declare-fun m!1256179 () Bool)

(assert (=> b!1372759 m!1256179))

(declare-fun m!1256181 () Bool)

(assert (=> b!1372758 m!1256181))

(declare-fun m!1256183 () Bool)

(assert (=> b!1372758 m!1256183))

(declare-fun m!1256185 () Bool)

(assert (=> b!1372760 m!1256185))

(declare-fun m!1256187 () Bool)

(assert (=> b!1372761 m!1256187))

(declare-fun m!1256189 () Bool)

(assert (=> b!1372762 m!1256189))

(push 1)

(assert (not b!1372757))

(assert (not b!1372762))

(assert (not b!1372761))

(assert (not start!116324))

(assert (not b!1372760))

(assert (not b!1372763))

(assert (not b!1372759))

(assert (not b!1372758))

(check-sat)

(pop 1)

