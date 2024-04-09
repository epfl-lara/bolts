; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118542 () Bool)

(assert start!118542)

(declare-fun b!1385515 () Bool)

(declare-fun res!926877 () Bool)

(declare-fun e!785053 () Bool)

(assert (=> b!1385515 (=> (not res!926877) (not e!785053))))

(declare-datatypes ((array!94736 0))(
  ( (array!94737 (arr!45740 (Array (_ BitVec 32) (_ BitVec 64))) (size!46291 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94736)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1385515 (= res!926877 (and (= (size!46291 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46291 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46291 a!2938))))))

(declare-fun b!1385516 () Bool)

(declare-fun res!926875 () Bool)

(assert (=> b!1385516 (=> (not res!926875) (not e!785053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385516 (= res!926875 (validKeyInArray!0 (select (arr!45740 a!2938) i!1065)))))

(declare-fun b!1385517 () Bool)

(declare-fun res!926876 () Bool)

(assert (=> b!1385517 (=> (not res!926876) (not e!785053))))

(declare-datatypes ((List!32448 0))(
  ( (Nil!32445) (Cons!32444 (h!33653 (_ BitVec 64)) (t!47149 List!32448)) )
))
(declare-fun arrayNoDuplicates!0 (array!94736 (_ BitVec 32) List!32448) Bool)

(assert (=> b!1385517 (= res!926876 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32445))))

(declare-fun b!1385518 () Bool)

(assert (=> b!1385518 (= e!785053 false)))

(declare-fun lt!609223 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94736 (_ BitVec 32)) Bool)

(assert (=> b!1385518 (= lt!609223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!926874 () Bool)

(assert (=> start!118542 (=> (not res!926874) (not e!785053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118542 (= res!926874 (validMask!0 mask!2987))))

(assert (=> start!118542 e!785053))

(assert (=> start!118542 true))

(declare-fun array_inv!34685 (array!94736) Bool)

(assert (=> start!118542 (array_inv!34685 a!2938)))

(assert (= (and start!118542 res!926874) b!1385515))

(assert (= (and b!1385515 res!926877) b!1385516))

(assert (= (and b!1385516 res!926875) b!1385517))

(assert (= (and b!1385517 res!926876) b!1385518))

(declare-fun m!1270865 () Bool)

(assert (=> b!1385516 m!1270865))

(assert (=> b!1385516 m!1270865))

(declare-fun m!1270867 () Bool)

(assert (=> b!1385516 m!1270867))

(declare-fun m!1270869 () Bool)

(assert (=> b!1385517 m!1270869))

(declare-fun m!1270871 () Bool)

(assert (=> b!1385518 m!1270871))

(declare-fun m!1270873 () Bool)

(assert (=> start!118542 m!1270873))

(declare-fun m!1270875 () Bool)

(assert (=> start!118542 m!1270875))

(check-sat (not b!1385516) (not b!1385517) (not start!118542) (not b!1385518))
