; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92322 () Bool)

(assert start!92322)

(declare-fun e!594966 () Bool)

(declare-datatypes ((array!66071 0))(
  ( (array!66072 (arr!31771 (Array (_ BitVec 32) (_ BitVec 64))) (size!32308 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66071)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun b!1048776 () Bool)

(declare-fun lt!463276 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66071 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048776 (= e!594966 (arrayContainsKey!0 a!3488 k!2747 lt!463276))))

(declare-fun b!1048777 () Bool)

(declare-fun e!594969 () Bool)

(declare-fun e!594970 () Bool)

(assert (=> b!1048777 (= e!594969 e!594970)))

(declare-fun res!698015 () Bool)

(assert (=> b!1048777 (=> (not res!698015) (not e!594970))))

(declare-fun lt!463275 () array!66071)

(assert (=> b!1048777 (= res!698015 (arrayContainsKey!0 lt!463275 k!2747 #b00000000000000000000000000000000))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048777 (= lt!463275 (array!66072 (store (arr!31771 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32308 a!3488)))))

(declare-fun b!1048778 () Bool)

(declare-fun res!698013 () Bool)

(assert (=> b!1048778 (=> (not res!698013) (not e!594969))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048778 (= res!698013 (validKeyInArray!0 k!2747))))

(declare-fun b!1048779 () Bool)

(declare-fun e!594965 () Bool)

(declare-fun e!594971 () Bool)

(assert (=> b!1048779 (= e!594965 (not e!594971))))

(declare-fun res!698012 () Bool)

(assert (=> b!1048779 (=> res!698012 e!594971)))

(assert (=> b!1048779 (= res!698012 (bvsle lt!463276 i!1381))))

(declare-fun e!594968 () Bool)

(assert (=> b!1048779 e!594968))

(declare-fun res!698011 () Bool)

(assert (=> b!1048779 (=> (not res!698011) (not e!594968))))

(assert (=> b!1048779 (= res!698011 (= (select (store (arr!31771 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463276) k!2747))))

(declare-fun b!1048780 () Bool)

(declare-fun res!698018 () Bool)

(assert (=> b!1048780 (=> (not res!698018) (not e!594969))))

(assert (=> b!1048780 (= res!698018 (= (select (arr!31771 a!3488) i!1381) k!2747))))

(declare-fun b!1048781 () Bool)

(declare-fun res!698016 () Bool)

(assert (=> b!1048781 (=> (not res!698016) (not e!594969))))

(declare-datatypes ((List!22214 0))(
  ( (Nil!22211) (Cons!22210 (h!23419 (_ BitVec 64)) (t!31528 List!22214)) )
))
(declare-fun arrayNoDuplicates!0 (array!66071 (_ BitVec 32) List!22214) Bool)

(assert (=> b!1048781 (= res!698016 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22211))))

(declare-fun res!698014 () Bool)

(assert (=> start!92322 (=> (not res!698014) (not e!594969))))

(assert (=> start!92322 (= res!698014 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32308 a!3488)) (bvslt (size!32308 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92322 e!594969))

(assert (=> start!92322 true))

(declare-fun array_inv!24393 (array!66071) Bool)

(assert (=> start!92322 (array_inv!24393 a!3488)))

(declare-fun b!1048782 () Bool)

(assert (=> b!1048782 (= e!594970 e!594965)))

(declare-fun res!698017 () Bool)

(assert (=> b!1048782 (=> (not res!698017) (not e!594965))))

(assert (=> b!1048782 (= res!698017 (not (= lt!463276 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66071 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048782 (= lt!463276 (arrayScanForKey!0 lt!463275 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048783 () Bool)

(assert (=> b!1048783 (= e!594971 true)))

(assert (=> b!1048783 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22211)))

(declare-datatypes ((Unit!34271 0))(
  ( (Unit!34272) )
))
(declare-fun lt!463274 () Unit!34271)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66071 (_ BitVec 32) (_ BitVec 32)) Unit!34271)

(assert (=> b!1048783 (= lt!463274 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1048784 () Bool)

(assert (=> b!1048784 (= e!594968 e!594966)))

(declare-fun res!698019 () Bool)

(assert (=> b!1048784 (=> res!698019 e!594966)))

(assert (=> b!1048784 (= res!698019 (bvsle lt!463276 i!1381))))

(assert (= (and start!92322 res!698014) b!1048781))

(assert (= (and b!1048781 res!698016) b!1048778))

(assert (= (and b!1048778 res!698013) b!1048780))

(assert (= (and b!1048780 res!698018) b!1048777))

(assert (= (and b!1048777 res!698015) b!1048782))

(assert (= (and b!1048782 res!698017) b!1048779))

(assert (= (and b!1048779 res!698011) b!1048784))

(assert (= (and b!1048784 (not res!698019)) b!1048776))

(assert (= (and b!1048779 (not res!698012)) b!1048783))

(declare-fun m!969789 () Bool)

(assert (=> b!1048780 m!969789))

(declare-fun m!969791 () Bool)

(assert (=> start!92322 m!969791))

(declare-fun m!969793 () Bool)

(assert (=> b!1048778 m!969793))

(declare-fun m!969795 () Bool)

(assert (=> b!1048779 m!969795))

(declare-fun m!969797 () Bool)

(assert (=> b!1048779 m!969797))

(declare-fun m!969799 () Bool)

(assert (=> b!1048777 m!969799))

(assert (=> b!1048777 m!969795))

(declare-fun m!969801 () Bool)

(assert (=> b!1048783 m!969801))

(declare-fun m!969803 () Bool)

(assert (=> b!1048783 m!969803))

(declare-fun m!969805 () Bool)

(assert (=> b!1048776 m!969805))

(declare-fun m!969807 () Bool)

(assert (=> b!1048782 m!969807))

(declare-fun m!969809 () Bool)

(assert (=> b!1048781 m!969809))

(push 1)

