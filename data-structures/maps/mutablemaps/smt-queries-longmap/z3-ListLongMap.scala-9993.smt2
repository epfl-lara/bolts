; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118008 () Bool)

(assert start!118008)

(declare-fun b!1381802 () Bool)

(declare-fun e!783293 () Bool)

(assert (=> b!1381802 (= e!783293 (not true))))

(declare-datatypes ((array!94315 0))(
  ( (array!94316 (arr!45536 (Array (_ BitVec 32) (_ BitVec 64))) (size!46087 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94315)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94315 (_ BitVec 32)) Bool)

(assert (=> b!1381802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94316 (store (arr!45536 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46087 a!2971)) mask!3034)))

(declare-datatypes ((Unit!45973 0))(
  ( (Unit!45974) )
))
(declare-fun lt!608248 () Unit!45973)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94315 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45973)

(assert (=> b!1381802 (= lt!608248 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun b!1381804 () Bool)

(declare-fun res!923542 () Bool)

(assert (=> b!1381804 (=> (not res!923542) (not e!783293))))

(assert (=> b!1381804 (= res!923542 (and (not (= (select (arr!45536 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45536 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46087 a!2971))))))

(declare-fun b!1381805 () Bool)

(declare-fun res!923541 () Bool)

(assert (=> b!1381805 (=> (not res!923541) (not e!783293))))

(assert (=> b!1381805 (= res!923541 (and (= (size!46087 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46087 a!2971))))))

(declare-fun b!1381806 () Bool)

(declare-fun res!923539 () Bool)

(assert (=> b!1381806 (=> (not res!923539) (not e!783293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381806 (= res!923539 (validKeyInArray!0 (select (arr!45536 a!2971) i!1094)))))

(declare-fun b!1381807 () Bool)

(declare-fun res!923540 () Bool)

(assert (=> b!1381807 (=> (not res!923540) (not e!783293))))

(assert (=> b!1381807 (= res!923540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381803 () Bool)

(declare-fun res!923543 () Bool)

(assert (=> b!1381803 (=> (not res!923543) (not e!783293))))

(declare-datatypes ((List!32250 0))(
  ( (Nil!32247) (Cons!32246 (h!33455 (_ BitVec 64)) (t!46951 List!32250)) )
))
(declare-fun arrayNoDuplicates!0 (array!94315 (_ BitVec 32) List!32250) Bool)

(assert (=> b!1381803 (= res!923543 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32247))))

(declare-fun res!923544 () Bool)

(assert (=> start!118008 (=> (not res!923544) (not e!783293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118008 (= res!923544 (validMask!0 mask!3034))))

(assert (=> start!118008 e!783293))

(assert (=> start!118008 true))

(declare-fun array_inv!34481 (array!94315) Bool)

(assert (=> start!118008 (array_inv!34481 a!2971)))

(assert (= (and start!118008 res!923544) b!1381805))

(assert (= (and b!1381805 res!923541) b!1381806))

(assert (= (and b!1381806 res!923539) b!1381803))

(assert (= (and b!1381803 res!923543) b!1381807))

(assert (= (and b!1381807 res!923540) b!1381804))

(assert (= (and b!1381804 res!923542) b!1381802))

(declare-fun m!1267041 () Bool)

(assert (=> b!1381804 m!1267041))

(declare-fun m!1267043 () Bool)

(assert (=> b!1381807 m!1267043))

(declare-fun m!1267045 () Bool)

(assert (=> start!118008 m!1267045))

(declare-fun m!1267047 () Bool)

(assert (=> start!118008 m!1267047))

(declare-fun m!1267049 () Bool)

(assert (=> b!1381802 m!1267049))

(declare-fun m!1267051 () Bool)

(assert (=> b!1381802 m!1267051))

(declare-fun m!1267053 () Bool)

(assert (=> b!1381802 m!1267053))

(declare-fun m!1267055 () Bool)

(assert (=> b!1381803 m!1267055))

(assert (=> b!1381806 m!1267041))

(assert (=> b!1381806 m!1267041))

(declare-fun m!1267057 () Bool)

(assert (=> b!1381806 m!1267057))

(check-sat (not start!118008) (not b!1381806) (not b!1381807) (not b!1381802) (not b!1381803))
