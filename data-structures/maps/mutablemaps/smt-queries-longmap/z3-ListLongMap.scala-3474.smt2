; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48204 () Bool)

(assert start!48204)

(declare-fun b!530409 () Bool)

(declare-fun res!326268 () Bool)

(declare-fun e!309021 () Bool)

(assert (=> b!530409 (=> (not res!326268) (not e!309021))))

(declare-datatypes ((array!33585 0))(
  ( (array!33586 (arr!16135 (Array (_ BitVec 32) (_ BitVec 64))) (size!16499 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33585)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530409 (= res!326268 (validKeyInArray!0 (select (arr!16135 a!3154) j!147)))))

(declare-fun b!530410 () Bool)

(declare-fun res!326265 () Bool)

(assert (=> b!530410 (=> (not res!326265) (not e!309021))))

(declare-fun k0!1998 () (_ BitVec 64))

(assert (=> b!530410 (= res!326265 (validKeyInArray!0 k0!1998))))

(declare-fun b!530411 () Bool)

(declare-fun res!326269 () Bool)

(assert (=> b!530411 (=> (not res!326269) (not e!309021))))

(declare-fun arrayContainsKey!0 (array!33585 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530411 (= res!326269 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530412 () Bool)

(declare-fun mask!3216 () (_ BitVec 32))

(assert (=> b!530412 (= e!309021 (bvslt mask!3216 #b00000000000000000000000000000000))))

(declare-fun b!530413 () Bool)

(declare-fun res!326270 () Bool)

(assert (=> b!530413 (=> (not res!326270) (not e!309021))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530413 (= res!326270 (and (= (size!16499 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16499 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16499 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530414 () Bool)

(declare-fun res!326267 () Bool)

(assert (=> b!530414 (=> (not res!326267) (not e!309021))))

(declare-datatypes ((SeekEntryResult!4600 0))(
  ( (MissingZero!4600 (index!20624 (_ BitVec 32))) (Found!4600 (index!20625 (_ BitVec 32))) (Intermediate!4600 (undefined!5412 Bool) (index!20626 (_ BitVec 32)) (x!49641 (_ BitVec 32))) (Undefined!4600) (MissingVacant!4600 (index!20627 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33585 (_ BitVec 32)) SeekEntryResult!4600)

(assert (=> b!530414 (= res!326267 (not (= (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216) (MissingZero!4600 i!1153))))))

(declare-fun res!326266 () Bool)

(assert (=> start!48204 (=> (not res!326266) (not e!309021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48204 (= res!326266 (validMask!0 mask!3216))))

(assert (=> start!48204 e!309021))

(assert (=> start!48204 true))

(declare-fun array_inv!11909 (array!33585) Bool)

(assert (=> start!48204 (array_inv!11909 a!3154)))

(assert (= (and start!48204 res!326266) b!530413))

(assert (= (and b!530413 res!326270) b!530409))

(assert (= (and b!530409 res!326268) b!530410))

(assert (= (and b!530410 res!326265) b!530411))

(assert (= (and b!530411 res!326269) b!530414))

(assert (= (and b!530414 res!326267) b!530412))

(declare-fun m!511011 () Bool)

(assert (=> b!530411 m!511011))

(declare-fun m!511013 () Bool)

(assert (=> b!530414 m!511013))

(declare-fun m!511015 () Bool)

(assert (=> b!530409 m!511015))

(assert (=> b!530409 m!511015))

(declare-fun m!511017 () Bool)

(assert (=> b!530409 m!511017))

(declare-fun m!511019 () Bool)

(assert (=> start!48204 m!511019))

(declare-fun m!511021 () Bool)

(assert (=> start!48204 m!511021))

(declare-fun m!511023 () Bool)

(assert (=> b!530410 m!511023))

(check-sat (not b!530409) (not b!530410) (not start!48204) (not b!530414) (not b!530411))
(check-sat)
