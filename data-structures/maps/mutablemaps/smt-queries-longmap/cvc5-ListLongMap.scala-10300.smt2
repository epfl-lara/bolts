; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121162 () Bool)

(assert start!121162)

(declare-fun b!1408217 () Bool)

(declare-fun e!797012 () Bool)

(declare-fun e!797014 () Bool)

(assert (=> b!1408217 (= e!797012 (not e!797014))))

(declare-fun res!946049 () Bool)

(assert (=> b!1408217 (=> res!946049 e!797014)))

(declare-datatypes ((SeekEntryResult!10789 0))(
  ( (MissingZero!10789 (index!45532 (_ BitVec 32))) (Found!10789 (index!45533 (_ BitVec 32))) (Intermediate!10789 (undefined!11601 Bool) (index!45534 (_ BitVec 32)) (x!127145 (_ BitVec 32))) (Undefined!10789) (MissingVacant!10789 (index!45535 (_ BitVec 32))) )
))
(declare-fun lt!620209 () SeekEntryResult!10789)

(assert (=> b!1408217 (= res!946049 (or (not (is-Intermediate!10789 lt!620209)) (undefined!11601 lt!620209)))))

(declare-fun lt!620215 () SeekEntryResult!10789)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1408217 (= lt!620215 (Found!10789 j!112))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96234 0))(
  ( (array!96235 (arr!46456 (Array (_ BitVec 32) (_ BitVec 64))) (size!47007 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96234)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96234 (_ BitVec 32)) SeekEntryResult!10789)

(assert (=> b!1408217 (= lt!620215 (seekEntryOrOpen!0 (select (arr!46456 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96234 (_ BitVec 32)) Bool)

(assert (=> b!1408217 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47502 0))(
  ( (Unit!47503) )
))
(declare-fun lt!620212 () Unit!47502)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96234 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47502)

(assert (=> b!1408217 (= lt!620212 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!620210 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96234 (_ BitVec 32)) SeekEntryResult!10789)

(assert (=> b!1408217 (= lt!620209 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620210 (select (arr!46456 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408217 (= lt!620210 (toIndex!0 (select (arr!46456 a!2901) j!112) mask!2840))))

(declare-fun res!946048 () Bool)

(assert (=> start!121162 (=> (not res!946048) (not e!797012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121162 (= res!946048 (validMask!0 mask!2840))))

(assert (=> start!121162 e!797012))

(assert (=> start!121162 true))

(declare-fun array_inv!35401 (array!96234) Bool)

(assert (=> start!121162 (array_inv!35401 a!2901)))

(declare-fun b!1408218 () Bool)

(declare-fun res!946056 () Bool)

(assert (=> b!1408218 (=> (not res!946056) (not e!797012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408218 (= res!946056 (validKeyInArray!0 (select (arr!46456 a!2901) j!112)))))

(declare-fun b!1408219 () Bool)

(declare-fun res!946053 () Bool)

(assert (=> b!1408219 (=> (not res!946053) (not e!797012))))

(declare-datatypes ((List!33155 0))(
  ( (Nil!33152) (Cons!33151 (h!34414 (_ BitVec 64)) (t!47856 List!33155)) )
))
(declare-fun arrayNoDuplicates!0 (array!96234 (_ BitVec 32) List!33155) Bool)

(assert (=> b!1408219 (= res!946053 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33152))))

(declare-fun b!1408220 () Bool)

(declare-fun res!946050 () Bool)

(assert (=> b!1408220 (=> (not res!946050) (not e!797012))))

(assert (=> b!1408220 (= res!946050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408221 () Bool)

(declare-fun res!946055 () Bool)

(assert (=> b!1408221 (=> (not res!946055) (not e!797012))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1408221 (= res!946055 (validKeyInArray!0 (select (arr!46456 a!2901) i!1037)))))

(declare-fun b!1408222 () Bool)

(declare-fun e!797013 () Bool)

(assert (=> b!1408222 (= e!797013 true)))

(declare-fun lt!620214 () array!96234)

(declare-fun lt!620213 () (_ BitVec 64))

(assert (=> b!1408222 (= lt!620215 (seekEntryOrOpen!0 lt!620213 lt!620214 mask!2840))))

(declare-fun lt!620211 () Unit!47502)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!96234 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47502)

(assert (=> b!1408222 (= lt!620211 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!620210 (x!127145 lt!620209) (index!45534 lt!620209) mask!2840))))

(declare-fun b!1408223 () Bool)

(declare-fun res!946051 () Bool)

(assert (=> b!1408223 (=> (not res!946051) (not e!797012))))

(assert (=> b!1408223 (= res!946051 (and (= (size!47007 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47007 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47007 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408224 () Bool)

(assert (=> b!1408224 (= e!797014 e!797013)))

(declare-fun res!946054 () Bool)

(assert (=> b!1408224 (=> res!946054 e!797013)))

(assert (=> b!1408224 (= res!946054 (not (= lt!620209 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!620213 mask!2840) lt!620213 lt!620214 mask!2840))))))

(assert (=> b!1408224 (= lt!620213 (select (store (arr!46456 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1408224 (= lt!620214 (array!96235 (store (arr!46456 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47007 a!2901)))))

(declare-fun b!1408225 () Bool)

(declare-fun res!946052 () Bool)

(assert (=> b!1408225 (=> res!946052 e!797013)))

(assert (=> b!1408225 (= res!946052 (or (bvslt (x!127145 lt!620209) #b00000000000000000000000000000000) (bvsgt (x!127145 lt!620209) #b01111111111111111111111111111110) (bvslt lt!620210 #b00000000000000000000000000000000) (bvsge lt!620210 (size!47007 a!2901)) (bvslt (index!45534 lt!620209) #b00000000000000000000000000000000) (bvsge (index!45534 lt!620209) (size!47007 a!2901)) (not (= lt!620209 (Intermediate!10789 false (index!45534 lt!620209) (x!127145 lt!620209))))))))

(assert (= (and start!121162 res!946048) b!1408223))

(assert (= (and b!1408223 res!946051) b!1408221))

(assert (= (and b!1408221 res!946055) b!1408218))

(assert (= (and b!1408218 res!946056) b!1408220))

(assert (= (and b!1408220 res!946050) b!1408219))

(assert (= (and b!1408219 res!946053) b!1408217))

(assert (= (and b!1408217 (not res!946049)) b!1408224))

(assert (= (and b!1408224 (not res!946054)) b!1408225))

(assert (= (and b!1408225 (not res!946052)) b!1408222))

(declare-fun m!1297517 () Bool)

(assert (=> b!1408224 m!1297517))

(assert (=> b!1408224 m!1297517))

(declare-fun m!1297519 () Bool)

(assert (=> b!1408224 m!1297519))

(declare-fun m!1297521 () Bool)

(assert (=> b!1408224 m!1297521))

(declare-fun m!1297523 () Bool)

(assert (=> b!1408224 m!1297523))

(declare-fun m!1297525 () Bool)

(assert (=> b!1408221 m!1297525))

(assert (=> b!1408221 m!1297525))

(declare-fun m!1297527 () Bool)

(assert (=> b!1408221 m!1297527))

(declare-fun m!1297529 () Bool)

(assert (=> b!1408222 m!1297529))

(declare-fun m!1297531 () Bool)

(assert (=> b!1408222 m!1297531))

(declare-fun m!1297533 () Bool)

(assert (=> b!1408220 m!1297533))

(declare-fun m!1297535 () Bool)

(assert (=> b!1408217 m!1297535))

(declare-fun m!1297537 () Bool)

(assert (=> b!1408217 m!1297537))

(assert (=> b!1408217 m!1297535))

(declare-fun m!1297539 () Bool)

(assert (=> b!1408217 m!1297539))

(assert (=> b!1408217 m!1297535))

(declare-fun m!1297541 () Bool)

(assert (=> b!1408217 m!1297541))

(declare-fun m!1297543 () Bool)

(assert (=> b!1408217 m!1297543))

(assert (=> b!1408217 m!1297535))

(declare-fun m!1297545 () Bool)

(assert (=> b!1408217 m!1297545))

(declare-fun m!1297547 () Bool)

(assert (=> b!1408219 m!1297547))

(assert (=> b!1408218 m!1297535))

(assert (=> b!1408218 m!1297535))

(declare-fun m!1297549 () Bool)

(assert (=> b!1408218 m!1297549))

(declare-fun m!1297551 () Bool)

(assert (=> start!121162 m!1297551))

(declare-fun m!1297553 () Bool)

(assert (=> start!121162 m!1297553))

(push 1)

