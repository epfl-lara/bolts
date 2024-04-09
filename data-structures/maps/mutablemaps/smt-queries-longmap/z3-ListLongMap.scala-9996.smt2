; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118026 () Bool)

(assert start!118026)

(declare-fun b!1381964 () Bool)

(declare-fun res!923701 () Bool)

(declare-fun e!783346 () Bool)

(assert (=> b!1381964 (=> (not res!923701) (not e!783346))))

(declare-datatypes ((array!94333 0))(
  ( (array!94334 (arr!45545 (Array (_ BitVec 32) (_ BitVec 64))) (size!46096 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94333)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381964 (= res!923701 (and (not (= (select (arr!45545 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45545 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46096 a!2971))))))

(declare-fun b!1381965 () Bool)

(declare-fun res!923704 () Bool)

(assert (=> b!1381965 (=> (not res!923704) (not e!783346))))

(declare-fun mask!3034 () (_ BitVec 32))

(assert (=> b!1381965 (= res!923704 (and (= (size!46096 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46096 a!2971))))))

(declare-fun b!1381966 () Bool)

(declare-fun res!923703 () Bool)

(assert (=> b!1381966 (=> (not res!923703) (not e!783346))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381966 (= res!923703 (validKeyInArray!0 (select (arr!45545 a!2971) i!1094)))))

(declare-fun b!1381967 () Bool)

(declare-fun res!923705 () Bool)

(assert (=> b!1381967 (=> (not res!923705) (not e!783346))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94333 (_ BitVec 32)) Bool)

(assert (=> b!1381967 (= res!923705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun res!923702 () Bool)

(assert (=> start!118026 (=> (not res!923702) (not e!783346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118026 (= res!923702 (validMask!0 mask!3034))))

(assert (=> start!118026 e!783346))

(assert (=> start!118026 true))

(declare-fun array_inv!34490 (array!94333) Bool)

(assert (=> start!118026 (array_inv!34490 a!2971)))

(declare-fun b!1381968 () Bool)

(assert (=> b!1381968 (= e!783346 (not (bvsle #b00000000000000000000000000000000 (size!46096 a!2971))))))

(assert (=> b!1381968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94334 (store (arr!45545 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46096 a!2971)) mask!3034)))

(declare-datatypes ((Unit!45991 0))(
  ( (Unit!45992) )
))
(declare-fun lt!608275 () Unit!45991)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94333 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45991)

(assert (=> b!1381968 (= lt!608275 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun b!1381969 () Bool)

(declare-fun res!923706 () Bool)

(assert (=> b!1381969 (=> (not res!923706) (not e!783346))))

(declare-datatypes ((List!32259 0))(
  ( (Nil!32256) (Cons!32255 (h!33464 (_ BitVec 64)) (t!46960 List!32259)) )
))
(declare-fun arrayNoDuplicates!0 (array!94333 (_ BitVec 32) List!32259) Bool)

(assert (=> b!1381969 (= res!923706 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32256))))

(assert (= (and start!118026 res!923702) b!1381965))

(assert (= (and b!1381965 res!923704) b!1381966))

(assert (= (and b!1381966 res!923703) b!1381969))

(assert (= (and b!1381969 res!923706) b!1381967))

(assert (= (and b!1381967 res!923705) b!1381964))

(assert (= (and b!1381964 res!923701) b!1381968))

(declare-fun m!1267203 () Bool)

(assert (=> b!1381968 m!1267203))

(declare-fun m!1267205 () Bool)

(assert (=> b!1381968 m!1267205))

(declare-fun m!1267207 () Bool)

(assert (=> b!1381968 m!1267207))

(declare-fun m!1267209 () Bool)

(assert (=> b!1381969 m!1267209))

(declare-fun m!1267211 () Bool)

(assert (=> b!1381966 m!1267211))

(assert (=> b!1381966 m!1267211))

(declare-fun m!1267213 () Bool)

(assert (=> b!1381966 m!1267213))

(assert (=> b!1381964 m!1267211))

(declare-fun m!1267215 () Bool)

(assert (=> start!118026 m!1267215))

(declare-fun m!1267217 () Bool)

(assert (=> start!118026 m!1267217))

(declare-fun m!1267219 () Bool)

(assert (=> b!1381967 m!1267219))

(check-sat (not b!1381966) (not b!1381969) (not start!118026) (not b!1381967) (not b!1381968))
(check-sat)
