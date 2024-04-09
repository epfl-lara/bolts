; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118136 () Bool)

(assert start!118136)

(declare-fun b!1382567 () Bool)

(declare-fun res!924270 () Bool)

(declare-fun e!783649 () Bool)

(assert (=> b!1382567 (=> (not res!924270) (not e!783649))))

(declare-datatypes ((array!94416 0))(
  ( (array!94417 (arr!45585 (Array (_ BitVec 32) (_ BitVec 64))) (size!46136 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94416)

(declare-datatypes ((List!32299 0))(
  ( (Nil!32296) (Cons!32295 (h!33504 (_ BitVec 64)) (t!47000 List!32299)) )
))
(declare-fun arrayNoDuplicates!0 (array!94416 (_ BitVec 32) List!32299) Bool)

(assert (=> b!1382567 (= res!924270 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32296))))

(declare-fun res!924272 () Bool)

(assert (=> start!118136 (=> (not res!924272) (not e!783649))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118136 (= res!924272 (validMask!0 mask!3034))))

(assert (=> start!118136 e!783649))

(assert (=> start!118136 true))

(declare-fun array_inv!34530 (array!94416) Bool)

(assert (=> start!118136 (array_inv!34530 a!2971)))

(declare-fun b!1382568 () Bool)

(declare-fun res!924269 () Bool)

(assert (=> b!1382568 (=> (not res!924269) (not e!783649))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382568 (= res!924269 (validKeyInArray!0 (select (arr!45585 a!2971) i!1094)))))

(declare-fun b!1382569 () Bool)

(declare-fun res!924271 () Bool)

(assert (=> b!1382569 (=> (not res!924271) (not e!783649))))

(assert (=> b!1382569 (= res!924271 (and (not (= (select (arr!45585 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45585 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46136 a!2971))))))

(declare-fun b!1382570 () Bool)

(declare-fun res!924273 () Bool)

(assert (=> b!1382570 (=> (not res!924273) (not e!783649))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94416 (_ BitVec 32)) Bool)

(assert (=> b!1382570 (= res!924273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382571 () Bool)

(assert (=> b!1382571 (= e!783649 (not true))))

(assert (=> b!1382571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94417 (store (arr!45585 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46136 a!2971)) mask!3034)))

(declare-datatypes ((Unit!46003 0))(
  ( (Unit!46004) )
))
(declare-fun lt!608404 () Unit!46003)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94416 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46003)

(assert (=> b!1382571 (= lt!608404 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun b!1382572 () Bool)

(declare-fun res!924268 () Bool)

(assert (=> b!1382572 (=> (not res!924268) (not e!783649))))

(assert (=> b!1382572 (= res!924268 (and (= (size!46136 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46136 a!2971))))))

(assert (= (and start!118136 res!924272) b!1382572))

(assert (= (and b!1382572 res!924268) b!1382568))

(assert (= (and b!1382568 res!924269) b!1382567))

(assert (= (and b!1382567 res!924270) b!1382570))

(assert (= (and b!1382570 res!924273) b!1382569))

(assert (= (and b!1382569 res!924271) b!1382571))

(declare-fun m!1267755 () Bool)

(assert (=> b!1382567 m!1267755))

(declare-fun m!1267757 () Bool)

(assert (=> b!1382571 m!1267757))

(declare-fun m!1267759 () Bool)

(assert (=> b!1382571 m!1267759))

(declare-fun m!1267761 () Bool)

(assert (=> b!1382571 m!1267761))

(declare-fun m!1267763 () Bool)

(assert (=> b!1382569 m!1267763))

(declare-fun m!1267765 () Bool)

(assert (=> b!1382570 m!1267765))

(declare-fun m!1267767 () Bool)

(assert (=> start!118136 m!1267767))

(declare-fun m!1267769 () Bool)

(assert (=> start!118136 m!1267769))

(assert (=> b!1382568 m!1267763))

(assert (=> b!1382568 m!1267763))

(declare-fun m!1267771 () Bool)

(assert (=> b!1382568 m!1267771))

(push 1)

(assert (not b!1382567))

(assert (not b!1382571))

(assert (not b!1382568))

(assert (not start!118136))

