; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92308 () Bool)

(assert start!92308)

(declare-fun b!1048606 () Bool)

(declare-fun res!697847 () Bool)

(declare-fun e!594840 () Bool)

(assert (=> b!1048606 (=> (not res!697847) (not e!594840))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048606 (= res!697847 (validKeyInArray!0 k!2747))))

(declare-datatypes ((array!66057 0))(
  ( (array!66058 (arr!31764 (Array (_ BitVec 32) (_ BitVec 64))) (size!32301 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66057)

(declare-fun b!1048607 () Bool)

(declare-fun e!594842 () Bool)

(declare-fun lt!463230 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66057 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048607 (= e!594842 (arrayContainsKey!0 a!3488 k!2747 lt!463230))))

(declare-fun b!1048608 () Bool)

(declare-fun e!594838 () Bool)

(assert (=> b!1048608 (= e!594838 (not true))))

(declare-fun e!594837 () Bool)

(assert (=> b!1048608 e!594837))

(declare-fun res!697844 () Bool)

(assert (=> b!1048608 (=> (not res!697844) (not e!594837))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048608 (= res!697844 (= (select (store (arr!31764 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463230) k!2747))))

(declare-fun b!1048609 () Bool)

(assert (=> b!1048609 (= e!594837 e!594842)))

(declare-fun res!697842 () Bool)

(assert (=> b!1048609 (=> res!697842 e!594842)))

(assert (=> b!1048609 (= res!697842 (bvsle lt!463230 i!1381))))

(declare-fun res!697848 () Bool)

(assert (=> start!92308 (=> (not res!697848) (not e!594840))))

(assert (=> start!92308 (= res!697848 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32301 a!3488)) (bvslt (size!32301 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92308 e!594840))

(assert (=> start!92308 true))

(declare-fun array_inv!24386 (array!66057) Bool)

(assert (=> start!92308 (array_inv!24386 a!3488)))

(declare-fun b!1048610 () Bool)

(declare-fun res!697841 () Bool)

(assert (=> b!1048610 (=> (not res!697841) (not e!594840))))

(declare-datatypes ((List!22207 0))(
  ( (Nil!22204) (Cons!22203 (h!23412 (_ BitVec 64)) (t!31521 List!22207)) )
))
(declare-fun arrayNoDuplicates!0 (array!66057 (_ BitVec 32) List!22207) Bool)

(assert (=> b!1048610 (= res!697841 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22204))))

(declare-fun b!1048611 () Bool)

(declare-fun e!594841 () Bool)

(assert (=> b!1048611 (= e!594840 e!594841)))

(declare-fun res!697843 () Bool)

(assert (=> b!1048611 (=> (not res!697843) (not e!594841))))

(declare-fun lt!463231 () array!66057)

(assert (=> b!1048611 (= res!697843 (arrayContainsKey!0 lt!463231 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048611 (= lt!463231 (array!66058 (store (arr!31764 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32301 a!3488)))))

(declare-fun b!1048612 () Bool)

(assert (=> b!1048612 (= e!594841 e!594838)))

(declare-fun res!697845 () Bool)

(assert (=> b!1048612 (=> (not res!697845) (not e!594838))))

(assert (=> b!1048612 (= res!697845 (not (= lt!463230 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66057 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048612 (= lt!463230 (arrayScanForKey!0 lt!463231 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048613 () Bool)

(declare-fun res!697846 () Bool)

(assert (=> b!1048613 (=> (not res!697846) (not e!594840))))

(assert (=> b!1048613 (= res!697846 (= (select (arr!31764 a!3488) i!1381) k!2747))))

(assert (= (and start!92308 res!697848) b!1048610))

(assert (= (and b!1048610 res!697841) b!1048606))

(assert (= (and b!1048606 res!697847) b!1048613))

(assert (= (and b!1048613 res!697846) b!1048611))

(assert (= (and b!1048611 res!697843) b!1048612))

(assert (= (and b!1048612 res!697845) b!1048608))

(assert (= (and b!1048608 res!697844) b!1048609))

(assert (= (and b!1048609 (not res!697842)) b!1048607))

(declare-fun m!969663 () Bool)

(assert (=> b!1048607 m!969663))

(declare-fun m!969665 () Bool)

(assert (=> b!1048606 m!969665))

(declare-fun m!969667 () Bool)

(assert (=> b!1048611 m!969667))

(declare-fun m!969669 () Bool)

(assert (=> b!1048611 m!969669))

(declare-fun m!969671 () Bool)

(assert (=> b!1048610 m!969671))

(assert (=> b!1048608 m!969669))

(declare-fun m!969673 () Bool)

(assert (=> b!1048608 m!969673))

(declare-fun m!969675 () Bool)

(assert (=> b!1048613 m!969675))

(declare-fun m!969677 () Bool)

(assert (=> start!92308 m!969677))

(declare-fun m!969679 () Bool)

(assert (=> b!1048612 m!969679))

(push 1)

(assert (not b!1048610))

