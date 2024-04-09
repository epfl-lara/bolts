; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118140 () Bool)

(assert start!118140)

(declare-fun b!1382603 () Bool)

(declare-fun e!783661 () Bool)

(assert (=> b!1382603 (= e!783661 (not true))))

(declare-datatypes ((array!94420 0))(
  ( (array!94421 (arr!45587 (Array (_ BitVec 32) (_ BitVec 64))) (size!46138 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94420)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94420 (_ BitVec 32)) Bool)

(assert (=> b!1382603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94421 (store (arr!45587 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46138 a!2971)) mask!3034)))

(declare-datatypes ((Unit!46007 0))(
  ( (Unit!46008) )
))
(declare-fun lt!608410 () Unit!46007)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94420 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46007)

(assert (=> b!1382603 (= lt!608410 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun b!1382604 () Bool)

(declare-fun res!924308 () Bool)

(assert (=> b!1382604 (=> (not res!924308) (not e!783661))))

(declare-datatypes ((List!32301 0))(
  ( (Nil!32298) (Cons!32297 (h!33506 (_ BitVec 64)) (t!47002 List!32301)) )
))
(declare-fun arrayNoDuplicates!0 (array!94420 (_ BitVec 32) List!32301) Bool)

(assert (=> b!1382604 (= res!924308 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32298))))

(declare-fun b!1382605 () Bool)

(declare-fun res!924306 () Bool)

(assert (=> b!1382605 (=> (not res!924306) (not e!783661))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382605 (= res!924306 (validKeyInArray!0 (select (arr!45587 a!2971) i!1094)))))

(declare-fun b!1382606 () Bool)

(declare-fun res!924307 () Bool)

(assert (=> b!1382606 (=> (not res!924307) (not e!783661))))

(assert (=> b!1382606 (= res!924307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382607 () Bool)

(declare-fun res!924309 () Bool)

(assert (=> b!1382607 (=> (not res!924309) (not e!783661))))

(assert (=> b!1382607 (= res!924309 (and (= (size!46138 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46138 a!2971))))))

(declare-fun b!1382608 () Bool)

(declare-fun res!924304 () Bool)

(assert (=> b!1382608 (=> (not res!924304) (not e!783661))))

(assert (=> b!1382608 (= res!924304 (and (not (= (select (arr!45587 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45587 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46138 a!2971))))))

(declare-fun res!924305 () Bool)

(assert (=> start!118140 (=> (not res!924305) (not e!783661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118140 (= res!924305 (validMask!0 mask!3034))))

(assert (=> start!118140 e!783661))

(assert (=> start!118140 true))

(declare-fun array_inv!34532 (array!94420) Bool)

(assert (=> start!118140 (array_inv!34532 a!2971)))

(assert (= (and start!118140 res!924305) b!1382607))

(assert (= (and b!1382607 res!924309) b!1382605))

(assert (= (and b!1382605 res!924306) b!1382604))

(assert (= (and b!1382604 res!924308) b!1382606))

(assert (= (and b!1382606 res!924307) b!1382608))

(assert (= (and b!1382608 res!924304) b!1382603))

(declare-fun m!1267791 () Bool)

(assert (=> b!1382605 m!1267791))

(assert (=> b!1382605 m!1267791))

(declare-fun m!1267793 () Bool)

(assert (=> b!1382605 m!1267793))

(assert (=> b!1382608 m!1267791))

(declare-fun m!1267795 () Bool)

(assert (=> start!118140 m!1267795))

(declare-fun m!1267797 () Bool)

(assert (=> start!118140 m!1267797))

(declare-fun m!1267799 () Bool)

(assert (=> b!1382604 m!1267799))

(declare-fun m!1267801 () Bool)

(assert (=> b!1382606 m!1267801))

(declare-fun m!1267803 () Bool)

(assert (=> b!1382603 m!1267803))

(declare-fun m!1267805 () Bool)

(assert (=> b!1382603 m!1267805))

(declare-fun m!1267807 () Bool)

(assert (=> b!1382603 m!1267807))

(check-sat (not start!118140) (not b!1382605) (not b!1382606) (not b!1382604) (not b!1382603))
