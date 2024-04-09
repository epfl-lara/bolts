; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131404 () Bool)

(assert start!131404)

(declare-fun b!1540182 () Bool)

(declare-fun res!1057017 () Bool)

(declare-fun e!856631 () Bool)

(assert (=> b!1540182 (=> (not res!1057017) (not e!856631))))

(declare-datatypes ((array!102279 0))(
  ( (array!102280 (arr!49345 (Array (_ BitVec 32) (_ BitVec 64))) (size!49896 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102279)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1540182 (= res!1057017 (and (= (size!49896 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49896 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49896 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1540183 () Bool)

(declare-fun res!1057015 () Bool)

(assert (=> b!1540183 (=> (not res!1057015) (not e!856631))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1540183 (= res!1057015 (validKeyInArray!0 (select (arr!49345 a!2792) i!951)))))

(declare-fun res!1057019 () Bool)

(assert (=> start!131404 (=> (not res!1057019) (not e!856631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131404 (= res!1057019 (validMask!0 mask!2480))))

(assert (=> start!131404 e!856631))

(assert (=> start!131404 true))

(declare-fun array_inv!38290 (array!102279) Bool)

(assert (=> start!131404 (array_inv!38290 a!2792)))

(declare-fun b!1540184 () Bool)

(declare-fun res!1057016 () Bool)

(assert (=> b!1540184 (=> (not res!1057016) (not e!856631))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1540184 (= res!1057016 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49896 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49896 a!2792)) (= (select (arr!49345 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1540185 () Bool)

(declare-fun res!1057011 () Bool)

(assert (=> b!1540185 (=> (not res!1057011) (not e!856631))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102279 (_ BitVec 32)) Bool)

(assert (=> b!1540185 (= res!1057011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1540186 () Bool)

(declare-fun e!856632 () Bool)

(assert (=> b!1540186 (= e!856632 (not true))))

(declare-datatypes ((SeekEntryResult!13494 0))(
  ( (MissingZero!13494 (index!56370 (_ BitVec 32))) (Found!13494 (index!56371 (_ BitVec 32))) (Intermediate!13494 (undefined!14306 Bool) (index!56372 (_ BitVec 32)) (x!138112 (_ BitVec 32))) (Undefined!13494) (MissingVacant!13494 (index!56373 (_ BitVec 32))) )
))
(declare-fun lt!665224 () SeekEntryResult!13494)

(declare-fun lt!665223 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102279 (_ BitVec 32)) SeekEntryResult!13494)

(assert (=> b!1540186 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665223 vacantIndex!5 (select (store (arr!49345 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102280 (store (arr!49345 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49896 a!2792)) mask!2480) lt!665224)))

(declare-datatypes ((Unit!51380 0))(
  ( (Unit!51381) )
))
(declare-fun lt!665221 () Unit!51380)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102279 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51380)

(assert (=> b!1540186 (= lt!665221 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665223 vacantIndex!5 mask!2480))))

(declare-fun b!1540187 () Bool)

(declare-fun e!856630 () Bool)

(assert (=> b!1540187 (= e!856631 e!856630)))

(declare-fun res!1057010 () Bool)

(assert (=> b!1540187 (=> (not res!1057010) (not e!856630))))

(declare-fun lt!665222 () SeekEntryResult!13494)

(assert (=> b!1540187 (= res!1057010 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49345 a!2792) j!64) a!2792 mask!2480) lt!665222))))

(assert (=> b!1540187 (= lt!665222 (Found!13494 j!64))))

(declare-fun b!1540188 () Bool)

(declare-fun res!1057014 () Bool)

(assert (=> b!1540188 (=> (not res!1057014) (not e!856631))))

(assert (=> b!1540188 (= res!1057014 (validKeyInArray!0 (select (arr!49345 a!2792) j!64)))))

(declare-fun b!1540189 () Bool)

(declare-fun e!856634 () Bool)

(assert (=> b!1540189 (= e!856634 e!856632)))

(declare-fun res!1057018 () Bool)

(assert (=> b!1540189 (=> (not res!1057018) (not e!856632))))

(assert (=> b!1540189 (= res!1057018 (= lt!665224 lt!665222))))

(assert (=> b!1540189 (= lt!665224 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665223 vacantIndex!5 (select (arr!49345 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540190 () Bool)

(assert (=> b!1540190 (= e!856630 e!856634)))

(declare-fun res!1057013 () Bool)

(assert (=> b!1540190 (=> (not res!1057013) (not e!856634))))

(assert (=> b!1540190 (= res!1057013 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665223 #b00000000000000000000000000000000) (bvslt lt!665223 (size!49896 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1540190 (= lt!665223 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1540191 () Bool)

(declare-fun res!1057012 () Bool)

(assert (=> b!1540191 (=> (not res!1057012) (not e!856630))))

(assert (=> b!1540191 (= res!1057012 (not (= (select (arr!49345 a!2792) index!463) (select (arr!49345 a!2792) j!64))))))

(declare-fun b!1540192 () Bool)

(declare-fun res!1057020 () Bool)

(assert (=> b!1540192 (=> (not res!1057020) (not e!856631))))

(declare-datatypes ((List!35999 0))(
  ( (Nil!35996) (Cons!35995 (h!37441 (_ BitVec 64)) (t!50700 List!35999)) )
))
(declare-fun arrayNoDuplicates!0 (array!102279 (_ BitVec 32) List!35999) Bool)

(assert (=> b!1540192 (= res!1057020 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35996))))

(assert (= (and start!131404 res!1057019) b!1540182))

(assert (= (and b!1540182 res!1057017) b!1540183))

(assert (= (and b!1540183 res!1057015) b!1540188))

(assert (= (and b!1540188 res!1057014) b!1540185))

(assert (= (and b!1540185 res!1057011) b!1540192))

(assert (= (and b!1540192 res!1057020) b!1540184))

(assert (= (and b!1540184 res!1057016) b!1540187))

(assert (= (and b!1540187 res!1057010) b!1540191))

(assert (= (and b!1540191 res!1057012) b!1540190))

(assert (= (and b!1540190 res!1057013) b!1540189))

(assert (= (and b!1540189 res!1057018) b!1540186))

(declare-fun m!1422339 () Bool)

(assert (=> b!1540191 m!1422339))

(declare-fun m!1422341 () Bool)

(assert (=> b!1540191 m!1422341))

(declare-fun m!1422343 () Bool)

(assert (=> b!1540184 m!1422343))

(declare-fun m!1422345 () Bool)

(assert (=> b!1540185 m!1422345))

(declare-fun m!1422347 () Bool)

(assert (=> b!1540183 m!1422347))

(assert (=> b!1540183 m!1422347))

(declare-fun m!1422349 () Bool)

(assert (=> b!1540183 m!1422349))

(declare-fun m!1422351 () Bool)

(assert (=> b!1540190 m!1422351))

(assert (=> b!1540189 m!1422341))

(assert (=> b!1540189 m!1422341))

(declare-fun m!1422353 () Bool)

(assert (=> b!1540189 m!1422353))

(declare-fun m!1422355 () Bool)

(assert (=> b!1540192 m!1422355))

(assert (=> b!1540187 m!1422341))

(assert (=> b!1540187 m!1422341))

(declare-fun m!1422357 () Bool)

(assert (=> b!1540187 m!1422357))

(declare-fun m!1422359 () Bool)

(assert (=> b!1540186 m!1422359))

(declare-fun m!1422361 () Bool)

(assert (=> b!1540186 m!1422361))

(assert (=> b!1540186 m!1422361))

(declare-fun m!1422363 () Bool)

(assert (=> b!1540186 m!1422363))

(declare-fun m!1422365 () Bool)

(assert (=> b!1540186 m!1422365))

(declare-fun m!1422367 () Bool)

(assert (=> start!131404 m!1422367))

(declare-fun m!1422369 () Bool)

(assert (=> start!131404 m!1422369))

(assert (=> b!1540188 m!1422341))

(assert (=> b!1540188 m!1422341))

(declare-fun m!1422371 () Bool)

(assert (=> b!1540188 m!1422371))

(push 1)

