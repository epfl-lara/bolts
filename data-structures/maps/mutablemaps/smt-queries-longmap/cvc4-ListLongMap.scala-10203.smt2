; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120248 () Bool)

(assert start!120248)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95638 0))(
  ( (array!95639 (arr!46167 (Array (_ BitVec 32) (_ BitVec 64))) (size!46718 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95638)

(declare-fun b!1399136 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!792125 () Bool)

(declare-datatypes ((SeekEntryResult!10506 0))(
  ( (MissingZero!10506 (index!44397 (_ BitVec 32))) (Found!10506 (index!44398 (_ BitVec 32))) (Intermediate!10506 (undefined!11318 Bool) (index!44399 (_ BitVec 32)) (x!126044 (_ BitVec 32))) (Undefined!10506) (MissingVacant!10506 (index!44400 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95638 (_ BitVec 32)) SeekEntryResult!10506)

(assert (=> b!1399136 (= e!792125 (= (seekEntryOrOpen!0 (select (arr!46167 a!2901) j!112) a!2901 mask!2840) (Found!10506 j!112)))))

(declare-fun b!1399137 () Bool)

(declare-fun res!938000 () Bool)

(declare-fun e!792127 () Bool)

(assert (=> b!1399137 (=> (not res!938000) (not e!792127))))

(declare-datatypes ((List!32866 0))(
  ( (Nil!32863) (Cons!32862 (h!34107 (_ BitVec 64)) (t!47567 List!32866)) )
))
(declare-fun arrayNoDuplicates!0 (array!95638 (_ BitVec 32) List!32866) Bool)

(assert (=> b!1399137 (= res!938000 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32863))))

(declare-fun res!937999 () Bool)

(assert (=> start!120248 (=> (not res!937999) (not e!792127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120248 (= res!937999 (validMask!0 mask!2840))))

(assert (=> start!120248 e!792127))

(assert (=> start!120248 true))

(declare-fun array_inv!35112 (array!95638) Bool)

(assert (=> start!120248 (array_inv!35112 a!2901)))

(declare-fun b!1399138 () Bool)

(declare-fun res!937995 () Bool)

(assert (=> b!1399138 (=> (not res!937995) (not e!792127))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399138 (= res!937995 (validKeyInArray!0 (select (arr!46167 a!2901) i!1037)))))

(declare-fun b!1399139 () Bool)

(declare-fun res!937997 () Bool)

(assert (=> b!1399139 (=> (not res!937997) (not e!792127))))

(assert (=> b!1399139 (= res!937997 (validKeyInArray!0 (select (arr!46167 a!2901) j!112)))))

(declare-fun b!1399140 () Bool)

(declare-fun e!792128 () Bool)

(declare-fun e!792124 () Bool)

(assert (=> b!1399140 (= e!792128 e!792124)))

(declare-fun res!937993 () Bool)

(assert (=> b!1399140 (=> res!937993 e!792124)))

(declare-fun lt!615347 () SeekEntryResult!10506)

(declare-fun lt!615349 () SeekEntryResult!10506)

(assert (=> b!1399140 (= res!937993 (or (= lt!615347 lt!615349) (not (is-Intermediate!10506 lt!615349))))))

(declare-fun lt!615345 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95638 (_ BitVec 32)) SeekEntryResult!10506)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399140 (= lt!615349 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615345 mask!2840) lt!615345 (array!95639 (store (arr!46167 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46718 a!2901)) mask!2840))))

(assert (=> b!1399140 (= lt!615345 (select (store (arr!46167 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1399141 () Bool)

(declare-fun res!937998 () Bool)

(assert (=> b!1399141 (=> (not res!937998) (not e!792127))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95638 (_ BitVec 32)) Bool)

(assert (=> b!1399141 (= res!937998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399142 () Bool)

(assert (=> b!1399142 (= e!792127 (not e!792128))))

(declare-fun res!937996 () Bool)

(assert (=> b!1399142 (=> res!937996 e!792128)))

(assert (=> b!1399142 (= res!937996 (or (not (is-Intermediate!10506 lt!615347)) (undefined!11318 lt!615347)))))

(assert (=> b!1399142 e!792125))

(declare-fun res!938001 () Bool)

(assert (=> b!1399142 (=> (not res!938001) (not e!792125))))

(assert (=> b!1399142 (= res!938001 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46966 0))(
  ( (Unit!46967) )
))
(declare-fun lt!615344 () Unit!46966)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95638 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46966)

(assert (=> b!1399142 (= lt!615344 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!615346 () (_ BitVec 32))

(assert (=> b!1399142 (= lt!615347 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615346 (select (arr!46167 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1399142 (= lt!615346 (toIndex!0 (select (arr!46167 a!2901) j!112) mask!2840))))

(declare-fun b!1399143 () Bool)

(assert (=> b!1399143 (= e!792124 true)))

(assert (=> b!1399143 (and (not (undefined!11318 lt!615349)) (= (index!44399 lt!615349) i!1037) (bvslt (x!126044 lt!615349) (x!126044 lt!615347)) (= (select (store (arr!46167 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44399 lt!615349)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!615348 () Unit!46966)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95638 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46966)

(assert (=> b!1399143 (= lt!615348 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615346 (x!126044 lt!615347) (index!44399 lt!615347) (x!126044 lt!615349) (index!44399 lt!615349) (undefined!11318 lt!615349) mask!2840))))

(declare-fun b!1399144 () Bool)

(declare-fun res!937994 () Bool)

(assert (=> b!1399144 (=> (not res!937994) (not e!792127))))

(assert (=> b!1399144 (= res!937994 (and (= (size!46718 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46718 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46718 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120248 res!937999) b!1399144))

(assert (= (and b!1399144 res!937994) b!1399138))

(assert (= (and b!1399138 res!937995) b!1399139))

(assert (= (and b!1399139 res!937997) b!1399141))

(assert (= (and b!1399141 res!937998) b!1399137))

(assert (= (and b!1399137 res!938000) b!1399142))

(assert (= (and b!1399142 res!938001) b!1399136))

(assert (= (and b!1399142 (not res!937996)) b!1399140))

(assert (= (and b!1399140 (not res!937993)) b!1399143))

(declare-fun m!1286445 () Bool)

(assert (=> b!1399139 m!1286445))

(assert (=> b!1399139 m!1286445))

(declare-fun m!1286447 () Bool)

(assert (=> b!1399139 m!1286447))

(assert (=> b!1399136 m!1286445))

(assert (=> b!1399136 m!1286445))

(declare-fun m!1286449 () Bool)

(assert (=> b!1399136 m!1286449))

(declare-fun m!1286451 () Bool)

(assert (=> b!1399137 m!1286451))

(assert (=> b!1399142 m!1286445))

(declare-fun m!1286453 () Bool)

(assert (=> b!1399142 m!1286453))

(assert (=> b!1399142 m!1286445))

(assert (=> b!1399142 m!1286445))

(declare-fun m!1286455 () Bool)

(assert (=> b!1399142 m!1286455))

(declare-fun m!1286457 () Bool)

(assert (=> b!1399142 m!1286457))

(declare-fun m!1286459 () Bool)

(assert (=> b!1399142 m!1286459))

(declare-fun m!1286461 () Bool)

(assert (=> b!1399138 m!1286461))

(assert (=> b!1399138 m!1286461))

(declare-fun m!1286463 () Bool)

(assert (=> b!1399138 m!1286463))

(declare-fun m!1286465 () Bool)

(assert (=> b!1399141 m!1286465))

(declare-fun m!1286467 () Bool)

(assert (=> b!1399143 m!1286467))

(declare-fun m!1286469 () Bool)

(assert (=> b!1399143 m!1286469))

(declare-fun m!1286471 () Bool)

(assert (=> b!1399143 m!1286471))

(declare-fun m!1286473 () Bool)

(assert (=> start!120248 m!1286473))

(declare-fun m!1286475 () Bool)

(assert (=> start!120248 m!1286475))

(declare-fun m!1286477 () Bool)

(assert (=> b!1399140 m!1286477))

(assert (=> b!1399140 m!1286467))

(assert (=> b!1399140 m!1286477))

(declare-fun m!1286479 () Bool)

(assert (=> b!1399140 m!1286479))

(declare-fun m!1286481 () Bool)

(assert (=> b!1399140 m!1286481))

(push 1)

