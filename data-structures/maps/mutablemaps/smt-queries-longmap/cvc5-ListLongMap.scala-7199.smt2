; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92292 () Bool)

(assert start!92292)

(declare-fun b!1048414 () Bool)

(declare-fun e!594694 () Bool)

(declare-fun e!594693 () Bool)

(assert (=> b!1048414 (= e!594694 e!594693)))

(declare-fun res!697650 () Bool)

(assert (=> b!1048414 (=> (not res!697650) (not e!594693))))

(declare-fun lt!463182 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048414 (= res!697650 (not (= lt!463182 i!1381)))))

(declare-datatypes ((array!66041 0))(
  ( (array!66042 (arr!31756 (Array (_ BitVec 32) (_ BitVec 64))) (size!32293 (_ BitVec 32))) )
))
(declare-fun lt!463183 () array!66041)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66041 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048414 (= lt!463182 (arrayScanForKey!0 lt!463183 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048415 () Bool)

(declare-fun res!697649 () Bool)

(declare-fun e!594698 () Bool)

(assert (=> b!1048415 (=> (not res!697649) (not e!594698))))

(declare-fun a!3488 () array!66041)

(assert (=> b!1048415 (= res!697649 (= (select (arr!31756 a!3488) i!1381) k!2747))))

(declare-fun b!1048416 () Bool)

(declare-fun e!594696 () Bool)

(declare-fun e!594697 () Bool)

(assert (=> b!1048416 (= e!594696 e!594697)))

(declare-fun res!697653 () Bool)

(assert (=> b!1048416 (=> res!697653 e!594697)))

(assert (=> b!1048416 (= res!697653 (bvsle lt!463182 i!1381))))

(declare-fun res!697651 () Bool)

(assert (=> start!92292 (=> (not res!697651) (not e!594698))))

(assert (=> start!92292 (= res!697651 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32293 a!3488)) (bvslt (size!32293 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92292 e!594698))

(assert (=> start!92292 true))

(declare-fun array_inv!24378 (array!66041) Bool)

(assert (=> start!92292 (array_inv!24378 a!3488)))

(declare-fun b!1048417 () Bool)

(declare-fun res!697652 () Bool)

(assert (=> b!1048417 (=> (not res!697652) (not e!594698))))

(declare-datatypes ((List!22199 0))(
  ( (Nil!22196) (Cons!22195 (h!23404 (_ BitVec 64)) (t!31513 List!22199)) )
))
(declare-fun arrayNoDuplicates!0 (array!66041 (_ BitVec 32) List!22199) Bool)

(assert (=> b!1048417 (= res!697652 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22196))))

(declare-fun b!1048418 () Bool)

(declare-fun res!697656 () Bool)

(assert (=> b!1048418 (=> (not res!697656) (not e!594698))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048418 (= res!697656 (validKeyInArray!0 k!2747))))

(declare-fun b!1048419 () Bool)

(assert (=> b!1048419 (= e!594698 e!594694)))

(declare-fun res!697654 () Bool)

(assert (=> b!1048419 (=> (not res!697654) (not e!594694))))

(declare-fun arrayContainsKey!0 (array!66041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048419 (= res!697654 (arrayContainsKey!0 lt!463183 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048419 (= lt!463183 (array!66042 (store (arr!31756 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32293 a!3488)))))

(declare-fun b!1048420 () Bool)

(assert (=> b!1048420 (= e!594697 (arrayContainsKey!0 a!3488 k!2747 lt!463182))))

(declare-fun b!1048421 () Bool)

(assert (=> b!1048421 (= e!594693 (not true))))

(assert (=> b!1048421 e!594696))

(declare-fun res!697655 () Bool)

(assert (=> b!1048421 (=> (not res!697655) (not e!594696))))

(assert (=> b!1048421 (= res!697655 (= (select (store (arr!31756 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463182) k!2747))))

(assert (= (and start!92292 res!697651) b!1048417))

(assert (= (and b!1048417 res!697652) b!1048418))

(assert (= (and b!1048418 res!697656) b!1048415))

(assert (= (and b!1048415 res!697649) b!1048419))

(assert (= (and b!1048419 res!697654) b!1048414))

(assert (= (and b!1048414 res!697650) b!1048421))

(assert (= (and b!1048421 res!697655) b!1048416))

(assert (= (and b!1048416 (not res!697653)) b!1048420))

(declare-fun m!969519 () Bool)

(assert (=> b!1048414 m!969519))

(declare-fun m!969521 () Bool)

(assert (=> b!1048418 m!969521))

(declare-fun m!969523 () Bool)

(assert (=> start!92292 m!969523))

(declare-fun m!969525 () Bool)

(assert (=> b!1048415 m!969525))

(declare-fun m!969527 () Bool)

(assert (=> b!1048421 m!969527))

(declare-fun m!969529 () Bool)

(assert (=> b!1048421 m!969529))

(declare-fun m!969531 () Bool)

(assert (=> b!1048419 m!969531))

(assert (=> b!1048419 m!969527))

(declare-fun m!969533 () Bool)

(assert (=> b!1048417 m!969533))

(declare-fun m!969535 () Bool)

(assert (=> b!1048420 m!969535))

(push 1)

