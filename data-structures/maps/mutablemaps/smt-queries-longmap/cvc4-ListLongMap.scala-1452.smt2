; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28016 () Bool)

(assert start!28016)

(declare-fun b!287278 () Bool)

(declare-fun e!181967 () Bool)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!287278 (= e!181967 (bvslt mask!3809 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!1994 0))(
  ( (MissingZero!1994 (index!10146 (_ BitVec 32))) (Found!1994 (index!10147 (_ BitVec 32))) (Intermediate!1994 (undefined!2806 Bool) (index!10148 (_ BitVec 32)) (x!28331 (_ BitVec 32))) (Undefined!1994) (MissingVacant!1994 (index!10149 (_ BitVec 32))) )
))
(declare-fun lt!141484 () SeekEntryResult!1994)

(declare-datatypes ((array!14409 0))(
  ( (array!14410 (arr!6834 (Array (_ BitVec 32) (_ BitVec 64))) (size!7186 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14409)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14409 (_ BitVec 32)) SeekEntryResult!1994)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287278 (= lt!141484 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!287279 () Bool)

(declare-fun res!149204 () Bool)

(declare-fun e!181968 () Bool)

(assert (=> b!287279 (=> (not res!149204) (not e!181968))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287279 (= res!149204 (and (= (size!7186 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7186 a!3312))))))

(declare-fun b!287280 () Bool)

(declare-fun res!149208 () Bool)

(assert (=> b!287280 (=> (not res!149208) (not e!181967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14409 (_ BitVec 32)) Bool)

(assert (=> b!287280 (= res!149208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!149207 () Bool)

(assert (=> start!28016 (=> (not res!149207) (not e!181968))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28016 (= res!149207 (validMask!0 mask!3809))))

(assert (=> start!28016 e!181968))

(assert (=> start!28016 true))

(declare-fun array_inv!4788 (array!14409) Bool)

(assert (=> start!28016 (array_inv!4788 a!3312)))

(declare-fun b!287281 () Bool)

(assert (=> b!287281 (= e!181968 e!181967)))

(declare-fun res!149206 () Bool)

(assert (=> b!287281 (=> (not res!149206) (not e!181967))))

(declare-fun lt!141485 () SeekEntryResult!1994)

(assert (=> b!287281 (= res!149206 (or (= lt!141485 (MissingZero!1994 i!1256)) (= lt!141485 (MissingVacant!1994 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14409 (_ BitVec 32)) SeekEntryResult!1994)

(assert (=> b!287281 (= lt!141485 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!287282 () Bool)

(declare-fun res!149205 () Bool)

(assert (=> b!287282 (=> (not res!149205) (not e!181968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287282 (= res!149205 (validKeyInArray!0 k!2524))))

(declare-fun b!287283 () Bool)

(declare-fun res!149203 () Bool)

(assert (=> b!287283 (=> (not res!149203) (not e!181968))))

(declare-fun arrayContainsKey!0 (array!14409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287283 (= res!149203 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28016 res!149207) b!287279))

(assert (= (and b!287279 res!149204) b!287282))

(assert (= (and b!287282 res!149205) b!287283))

(assert (= (and b!287283 res!149203) b!287281))

(assert (= (and b!287281 res!149206) b!287280))

(assert (= (and b!287280 res!149208) b!287278))

(declare-fun m!301761 () Bool)

(assert (=> b!287280 m!301761))

(declare-fun m!301763 () Bool)

(assert (=> b!287283 m!301763))

(declare-fun m!301765 () Bool)

(assert (=> b!287281 m!301765))

(declare-fun m!301767 () Bool)

(assert (=> b!287278 m!301767))

(assert (=> b!287278 m!301767))

(declare-fun m!301769 () Bool)

(assert (=> b!287278 m!301769))

(declare-fun m!301771 () Bool)

(assert (=> start!28016 m!301771))

(declare-fun m!301773 () Bool)

(assert (=> start!28016 m!301773))

(declare-fun m!301775 () Bool)

(assert (=> b!287282 m!301775))

(push 1)

(assert (not b!287282))

(assert (not b!287278))

(assert (not b!287283))

(assert (not start!28016))

