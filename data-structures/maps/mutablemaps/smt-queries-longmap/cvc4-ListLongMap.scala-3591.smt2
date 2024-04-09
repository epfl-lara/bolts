; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49352 () Bool)

(assert start!49352)

(declare-fun b!543351 () Bool)

(declare-fun e!314227 () Bool)

(assert (=> b!543351 (= e!314227 false)))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!248161 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543351 (= lt!248161 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543352 () Bool)

(declare-fun res!338055 () Bool)

(declare-fun e!314228 () Bool)

(assert (=> b!543352 (=> (not res!338055) (not e!314228))))

(declare-datatypes ((array!34316 0))(
  ( (array!34317 (arr!16487 (Array (_ BitVec 32) (_ BitVec 64))) (size!16851 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34316)

(declare-datatypes ((List!10659 0))(
  ( (Nil!10656) (Cons!10655 (h!11610 (_ BitVec 64)) (t!16895 List!10659)) )
))
(declare-fun arrayNoDuplicates!0 (array!34316 (_ BitVec 32) List!10659) Bool)

(assert (=> b!543352 (= res!338055 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10656))))

(declare-fun res!338063 () Bool)

(declare-fun e!314229 () Bool)

(assert (=> start!49352 (=> (not res!338063) (not e!314229))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49352 (= res!338063 (validMask!0 mask!3216))))

(assert (=> start!49352 e!314229))

(assert (=> start!49352 true))

(declare-fun array_inv!12261 (array!34316) Bool)

(assert (=> start!49352 (array_inv!12261 a!3154)))

(declare-fun b!543353 () Bool)

(declare-fun res!338060 () Bool)

(assert (=> b!543353 (=> (not res!338060) (not e!314229))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34316 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543353 (= res!338060 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543354 () Bool)

(declare-fun res!338058 () Bool)

(assert (=> b!543354 (=> (not res!338058) (not e!314229))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543354 (= res!338058 (validKeyInArray!0 k!1998))))

(declare-fun b!543355 () Bool)

(assert (=> b!543355 (= e!314229 e!314228)))

(declare-fun res!338062 () Bool)

(assert (=> b!543355 (=> (not res!338062) (not e!314228))))

(declare-datatypes ((SeekEntryResult!4952 0))(
  ( (MissingZero!4952 (index!22032 (_ BitVec 32))) (Found!4952 (index!22033 (_ BitVec 32))) (Intermediate!4952 (undefined!5764 Bool) (index!22034 (_ BitVec 32)) (x!50962 (_ BitVec 32))) (Undefined!4952) (MissingVacant!4952 (index!22035 (_ BitVec 32))) )
))
(declare-fun lt!248160 () SeekEntryResult!4952)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543355 (= res!338062 (or (= lt!248160 (MissingZero!4952 i!1153)) (= lt!248160 (MissingVacant!4952 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34316 (_ BitVec 32)) SeekEntryResult!4952)

(assert (=> b!543355 (= lt!248160 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!543356 () Bool)

(declare-fun res!338061 () Bool)

(assert (=> b!543356 (=> (not res!338061) (not e!314227))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!543356 (= res!338061 (and (not (= (select (arr!16487 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16487 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16487 a!3154) index!1177) (select (arr!16487 a!3154) j!147)))))))

(declare-fun b!543357 () Bool)

(declare-fun res!338059 () Bool)

(assert (=> b!543357 (=> (not res!338059) (not e!314227))))

(declare-fun lt!248162 () SeekEntryResult!4952)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34316 (_ BitVec 32)) SeekEntryResult!4952)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543357 (= res!338059 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16487 a!3154) j!147) mask!3216) (select (arr!16487 a!3154) j!147) a!3154 mask!3216) lt!248162))))

(declare-fun b!543358 () Bool)

(declare-fun res!338053 () Bool)

(assert (=> b!543358 (=> (not res!338053) (not e!314229))))

(assert (=> b!543358 (= res!338053 (validKeyInArray!0 (select (arr!16487 a!3154) j!147)))))

(declare-fun b!543359 () Bool)

(declare-fun res!338056 () Bool)

(assert (=> b!543359 (=> (not res!338056) (not e!314228))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543359 (= res!338056 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16851 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16851 a!3154)) (= (select (arr!16487 a!3154) resIndex!32) (select (arr!16487 a!3154) j!147))))))

(declare-fun b!543360 () Bool)

(assert (=> b!543360 (= e!314228 e!314227)))

(declare-fun res!338057 () Bool)

(assert (=> b!543360 (=> (not res!338057) (not e!314227))))

(assert (=> b!543360 (= res!338057 (= lt!248162 (Intermediate!4952 false resIndex!32 resX!32)))))

(assert (=> b!543360 (= lt!248162 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16487 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543361 () Bool)

(declare-fun res!338052 () Bool)

(assert (=> b!543361 (=> (not res!338052) (not e!314228))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34316 (_ BitVec 32)) Bool)

(assert (=> b!543361 (= res!338052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!543362 () Bool)

(declare-fun res!338054 () Bool)

(assert (=> b!543362 (=> (not res!338054) (not e!314229))))

(assert (=> b!543362 (= res!338054 (and (= (size!16851 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16851 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16851 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!49352 res!338063) b!543362))

(assert (= (and b!543362 res!338054) b!543358))

(assert (= (and b!543358 res!338053) b!543354))

(assert (= (and b!543354 res!338058) b!543353))

(assert (= (and b!543353 res!338060) b!543355))

(assert (= (and b!543355 res!338062) b!543361))

(assert (= (and b!543361 res!338052) b!543352))

(assert (= (and b!543352 res!338055) b!543359))

(assert (= (and b!543359 res!338056) b!543360))

(assert (= (and b!543360 res!338057) b!543357))

(assert (= (and b!543357 res!338059) b!543356))

(assert (= (and b!543356 res!338061) b!543351))

(declare-fun m!521461 () Bool)

(assert (=> b!543358 m!521461))

(assert (=> b!543358 m!521461))

(declare-fun m!521463 () Bool)

(assert (=> b!543358 m!521463))

(assert (=> b!543360 m!521461))

(assert (=> b!543360 m!521461))

(declare-fun m!521465 () Bool)

(assert (=> b!543360 m!521465))

(declare-fun m!521467 () Bool)

(assert (=> b!543353 m!521467))

(declare-fun m!521469 () Bool)

(assert (=> start!49352 m!521469))

(declare-fun m!521471 () Bool)

(assert (=> start!49352 m!521471))

(declare-fun m!521473 () Bool)

(assert (=> b!543356 m!521473))

(assert (=> b!543356 m!521461))

(assert (=> b!543357 m!521461))

(assert (=> b!543357 m!521461))

(declare-fun m!521475 () Bool)

(assert (=> b!543357 m!521475))

(assert (=> b!543357 m!521475))

(assert (=> b!543357 m!521461))

(declare-fun m!521477 () Bool)

(assert (=> b!543357 m!521477))

(declare-fun m!521479 () Bool)

(assert (=> b!543361 m!521479))

(declare-fun m!521481 () Bool)

(assert (=> b!543355 m!521481))

(declare-fun m!521483 () Bool)

(assert (=> b!543354 m!521483))

(declare-fun m!521485 () Bool)

(assert (=> b!543352 m!521485))

(declare-fun m!521487 () Bool)

(assert (=> b!543351 m!521487))

(declare-fun m!521489 () Bool)

(assert (=> b!543359 m!521489))

(assert (=> b!543359 m!521461))

(push 1)

(assert (not start!49352))

(assert (not b!543355))

