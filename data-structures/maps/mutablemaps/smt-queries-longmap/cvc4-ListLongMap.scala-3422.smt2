; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47468 () Bool)

(assert start!47468)

(declare-fun b!522391 () Bool)

(declare-datatypes ((Unit!16282 0))(
  ( (Unit!16283) )
))
(declare-fun e!304682 () Unit!16282)

(declare-fun Unit!16284 () Unit!16282)

(assert (=> b!522391 (= e!304682 Unit!16284)))

(declare-fun b!522392 () Bool)

(declare-fun Unit!16285 () Unit!16282)

(assert (=> b!522392 (= e!304682 Unit!16285)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!239660 () Unit!16282)

(declare-datatypes ((array!33254 0))(
  ( (array!33255 (arr!15980 (Array (_ BitVec 32) (_ BitVec 64))) (size!16344 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33254)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!239663 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4454 0))(
  ( (MissingZero!4454 (index!20019 (_ BitVec 32))) (Found!4454 (index!20020 (_ BitVec 32))) (Intermediate!4454 (undefined!5266 Bool) (index!20021 (_ BitVec 32)) (x!49019 (_ BitVec 32))) (Undefined!4454) (MissingVacant!4454 (index!20022 (_ BitVec 32))) )
))
(declare-fun lt!239662 () SeekEntryResult!4454)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33254 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16282)

(assert (=> b!522392 (= lt!239660 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239663 #b00000000000000000000000000000000 (index!20021 lt!239662) (x!49019 lt!239662) mask!3524))))

(declare-fun lt!239665 () array!33254)

(declare-fun res!320185 () Bool)

(declare-fun lt!239661 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33254 (_ BitVec 32)) SeekEntryResult!4454)

(assert (=> b!522392 (= res!320185 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239663 lt!239661 lt!239665 mask!3524) (Intermediate!4454 false (index!20021 lt!239662) (x!49019 lt!239662))))))

(declare-fun e!304683 () Bool)

(assert (=> b!522392 (=> (not res!320185) (not e!304683))))

(assert (=> b!522392 e!304683))

(declare-fun b!522393 () Bool)

(declare-fun res!320180 () Bool)

(declare-fun e!304686 () Bool)

(assert (=> b!522393 (=> (not res!320180) (not e!304686))))

(declare-fun arrayContainsKey!0 (array!33254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!522393 (= res!320180 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!522394 () Bool)

(declare-fun e!304681 () Bool)

(assert (=> b!522394 (= e!304686 e!304681)))

(declare-fun res!320181 () Bool)

(assert (=> b!522394 (=> (not res!320181) (not e!304681))))

(declare-fun lt!239658 () SeekEntryResult!4454)

(assert (=> b!522394 (= res!320181 (or (= lt!239658 (MissingZero!4454 i!1204)) (= lt!239658 (MissingVacant!4454 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33254 (_ BitVec 32)) SeekEntryResult!4454)

(assert (=> b!522394 (= lt!239658 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!320178 () Bool)

(assert (=> start!47468 (=> (not res!320178) (not e!304686))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47468 (= res!320178 (validMask!0 mask!3524))))

(assert (=> start!47468 e!304686))

(assert (=> start!47468 true))

(declare-fun array_inv!11754 (array!33254) Bool)

(assert (=> start!47468 (array_inv!11754 a!3235)))

(declare-fun b!522395 () Bool)

(declare-fun res!320179 () Bool)

(assert (=> b!522395 (=> (not res!320179) (not e!304686))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!522395 (= res!320179 (validKeyInArray!0 (select (arr!15980 a!3235) j!176)))))

(declare-fun b!522396 () Bool)

(declare-fun e!304687 () Bool)

(assert (=> b!522396 (= e!304681 (not e!304687))))

(declare-fun res!320182 () Bool)

(assert (=> b!522396 (=> res!320182 e!304687)))

(declare-fun lt!239659 () (_ BitVec 32))

(assert (=> b!522396 (= res!320182 (= lt!239662 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239659 lt!239661 lt!239665 mask!3524)))))

(assert (=> b!522396 (= lt!239662 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239663 (select (arr!15980 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!522396 (= lt!239659 (toIndex!0 lt!239661 mask!3524))))

(assert (=> b!522396 (= lt!239661 (select (store (arr!15980 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!522396 (= lt!239663 (toIndex!0 (select (arr!15980 a!3235) j!176) mask!3524))))

(assert (=> b!522396 (= lt!239665 (array!33255 (store (arr!15980 a!3235) i!1204 k!2280) (size!16344 a!3235)))))

(declare-fun e!304684 () Bool)

(assert (=> b!522396 e!304684))

(declare-fun res!320184 () Bool)

(assert (=> b!522396 (=> (not res!320184) (not e!304684))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33254 (_ BitVec 32)) Bool)

(assert (=> b!522396 (= res!320184 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239664 () Unit!16282)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33254 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16282)

(assert (=> b!522396 (= lt!239664 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!522397 () Bool)

(assert (=> b!522397 (= e!304687 true)))

(assert (=> b!522397 (and (or (= (select (arr!15980 a!3235) (index!20021 lt!239662)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15980 a!3235) (index!20021 lt!239662)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15980 a!3235) (index!20021 lt!239662)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15980 a!3235) (index!20021 lt!239662)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239666 () Unit!16282)

(assert (=> b!522397 (= lt!239666 e!304682)))

(declare-fun c!61409 () Bool)

(assert (=> b!522397 (= c!61409 (= (select (arr!15980 a!3235) (index!20021 lt!239662)) (select (arr!15980 a!3235) j!176)))))

(assert (=> b!522397 (and (bvslt (x!49019 lt!239662) #b01111111111111111111111111111110) (or (= (select (arr!15980 a!3235) (index!20021 lt!239662)) (select (arr!15980 a!3235) j!176)) (= (select (arr!15980 a!3235) (index!20021 lt!239662)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15980 a!3235) (index!20021 lt!239662)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!522398 () Bool)

(declare-fun res!320177 () Bool)

(assert (=> b!522398 (=> (not res!320177) (not e!304681))))

(declare-datatypes ((List!10191 0))(
  ( (Nil!10188) (Cons!10187 (h!11109 (_ BitVec 64)) (t!16427 List!10191)) )
))
(declare-fun arrayNoDuplicates!0 (array!33254 (_ BitVec 32) List!10191) Bool)

(assert (=> b!522398 (= res!320177 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10188))))

(declare-fun b!522399 () Bool)

(declare-fun res!320186 () Bool)

(assert (=> b!522399 (=> (not res!320186) (not e!304686))))

(assert (=> b!522399 (= res!320186 (and (= (size!16344 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16344 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16344 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!522400 () Bool)

(declare-fun res!320176 () Bool)

(assert (=> b!522400 (=> res!320176 e!304687)))

(assert (=> b!522400 (= res!320176 (or (undefined!5266 lt!239662) (not (is-Intermediate!4454 lt!239662))))))

(declare-fun b!522401 () Bool)

(assert (=> b!522401 (= e!304684 (= (seekEntryOrOpen!0 (select (arr!15980 a!3235) j!176) a!3235 mask!3524) (Found!4454 j!176)))))

(declare-fun b!522402 () Bool)

(assert (=> b!522402 (= e!304683 false)))

(declare-fun b!522403 () Bool)

(declare-fun res!320183 () Bool)

(assert (=> b!522403 (=> (not res!320183) (not e!304686))))

(assert (=> b!522403 (= res!320183 (validKeyInArray!0 k!2280))))

(declare-fun b!522404 () Bool)

(declare-fun res!320175 () Bool)

(assert (=> b!522404 (=> (not res!320175) (not e!304681))))

(assert (=> b!522404 (= res!320175 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!47468 res!320178) b!522399))

(assert (= (and b!522399 res!320186) b!522395))

(assert (= (and b!522395 res!320179) b!522403))

(assert (= (and b!522403 res!320183) b!522393))

(assert (= (and b!522393 res!320180) b!522394))

(assert (= (and b!522394 res!320181) b!522404))

(assert (= (and b!522404 res!320175) b!522398))

(assert (= (and b!522398 res!320177) b!522396))

(assert (= (and b!522396 res!320184) b!522401))

(assert (= (and b!522396 (not res!320182)) b!522400))

(assert (= (and b!522400 (not res!320176)) b!522397))

(assert (= (and b!522397 c!61409) b!522392))

(assert (= (and b!522397 (not c!61409)) b!522391))

(assert (= (and b!522392 res!320185) b!522402))

(declare-fun m!503341 () Bool)

(assert (=> b!522393 m!503341))

(declare-fun m!503343 () Bool)

(assert (=> b!522403 m!503343))

(declare-fun m!503345 () Bool)

(assert (=> b!522401 m!503345))

(assert (=> b!522401 m!503345))

(declare-fun m!503347 () Bool)

(assert (=> b!522401 m!503347))

(declare-fun m!503349 () Bool)

(assert (=> b!522392 m!503349))

(declare-fun m!503351 () Bool)

(assert (=> b!522392 m!503351))

(assert (=> b!522395 m!503345))

(assert (=> b!522395 m!503345))

(declare-fun m!503353 () Bool)

(assert (=> b!522395 m!503353))

(declare-fun m!503355 () Bool)

(assert (=> b!522404 m!503355))

(declare-fun m!503357 () Bool)

(assert (=> b!522394 m!503357))

(declare-fun m!503359 () Bool)

(assert (=> start!47468 m!503359))

(declare-fun m!503361 () Bool)

(assert (=> start!47468 m!503361))

(declare-fun m!503363 () Bool)

(assert (=> b!522398 m!503363))

(declare-fun m!503365 () Bool)

(assert (=> b!522397 m!503365))

(assert (=> b!522397 m!503345))

(declare-fun m!503367 () Bool)

(assert (=> b!522396 m!503367))

(declare-fun m!503369 () Bool)

(assert (=> b!522396 m!503369))

(declare-fun m!503371 () Bool)

(assert (=> b!522396 m!503371))

(assert (=> b!522396 m!503345))

(declare-fun m!503373 () Bool)

(assert (=> b!522396 m!503373))

(declare-fun m!503375 () Bool)

(assert (=> b!522396 m!503375))

(assert (=> b!522396 m!503345))

(declare-fun m!503377 () Bool)

(assert (=> b!522396 m!503377))

(assert (=> b!522396 m!503345))

(declare-fun m!503379 () Bool)

(assert (=> b!522396 m!503379))

(declare-fun m!503381 () Bool)

(assert (=> b!522396 m!503381))

(push 1)

