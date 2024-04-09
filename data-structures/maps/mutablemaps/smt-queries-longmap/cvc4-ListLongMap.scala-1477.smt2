; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28262 () Bool)

(assert start!28262)

(declare-fun b!289337 () Bool)

(declare-fun e!183195 () Bool)

(declare-fun e!183197 () Bool)

(assert (=> b!289337 (= e!183195 e!183197)))

(declare-fun res!151005 () Bool)

(assert (=> b!289337 (=> (not res!151005) (not e!183197))))

(declare-fun lt!142812 () Bool)

(assert (=> b!289337 (= res!151005 lt!142812)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2069 0))(
  ( (MissingZero!2069 (index!10446 (_ BitVec 32))) (Found!2069 (index!10447 (_ BitVec 32))) (Intermediate!2069 (undefined!2881 Bool) (index!10448 (_ BitVec 32)) (x!28618 (_ BitVec 32))) (Undefined!2069) (MissingVacant!2069 (index!10449 (_ BitVec 32))) )
))
(declare-fun lt!142811 () SeekEntryResult!2069)

(declare-fun lt!142814 () (_ BitVec 32))

(declare-datatypes ((array!14565 0))(
  ( (array!14566 (arr!6909 (Array (_ BitVec 32) (_ BitVec 64))) (size!7261 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14565)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14565 (_ BitVec 32)) SeekEntryResult!2069)

(assert (=> b!289337 (= lt!142811 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142814 k!2524 (array!14566 (store (arr!6909 a!3312) i!1256 k!2524) (size!7261 a!3312)) mask!3809))))

(declare-fun lt!142810 () SeekEntryResult!2069)

(assert (=> b!289337 (= lt!142810 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142814 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289337 (= lt!142814 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!289338 () Bool)

(declare-fun e!183196 () Bool)

(assert (=> b!289338 (= e!183196 (not true))))

(assert (=> b!289338 (and (= (select (arr!6909 a!3312) (index!10448 lt!142810)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10448 lt!142810) i!1256))))

(declare-fun b!289339 () Bool)

(declare-fun e!183198 () Bool)

(assert (=> b!289339 (= e!183198 e!183195)))

(declare-fun res!150998 () Bool)

(assert (=> b!289339 (=> (not res!150998) (not e!183195))))

(declare-fun lt!142809 () SeekEntryResult!2069)

(assert (=> b!289339 (= res!150998 (or lt!142812 (= lt!142809 (MissingVacant!2069 i!1256))))))

(assert (=> b!289339 (= lt!142812 (= lt!142809 (MissingZero!2069 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14565 (_ BitVec 32)) SeekEntryResult!2069)

(assert (=> b!289339 (= lt!142809 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!289340 () Bool)

(declare-fun res!151001 () Bool)

(assert (=> b!289340 (=> (not res!151001) (not e!183195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14565 (_ BitVec 32)) Bool)

(assert (=> b!289340 (= res!151001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289341 () Bool)

(declare-fun res!151004 () Bool)

(assert (=> b!289341 (=> (not res!151004) (not e!183198))))

(declare-fun arrayContainsKey!0 (array!14565 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289341 (= res!151004 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289342 () Bool)

(declare-fun res!151003 () Bool)

(assert (=> b!289342 (=> (not res!151003) (not e!183198))))

(assert (=> b!289342 (= res!151003 (and (= (size!7261 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7261 a!3312))))))

(declare-fun b!289343 () Bool)

(assert (=> b!289343 (= e!183197 e!183196)))

(declare-fun res!151000 () Bool)

(assert (=> b!289343 (=> (not res!151000) (not e!183196))))

(declare-fun lt!142813 () Bool)

(assert (=> b!289343 (= res!151000 (and (or lt!142813 (not (undefined!2881 lt!142810))) (or lt!142813 (not (= (select (arr!6909 a!3312) (index!10448 lt!142810)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142813 (not (= (select (arr!6909 a!3312) (index!10448 lt!142810)) k!2524))) (not lt!142813)))))

(assert (=> b!289343 (= lt!142813 (not (is-Intermediate!2069 lt!142810)))))

(declare-fun res!151002 () Bool)

(assert (=> start!28262 (=> (not res!151002) (not e!183198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28262 (= res!151002 (validMask!0 mask!3809))))

(assert (=> start!28262 e!183198))

(assert (=> start!28262 true))

(declare-fun array_inv!4863 (array!14565) Bool)

(assert (=> start!28262 (array_inv!4863 a!3312)))

(declare-fun b!289344 () Bool)

(declare-fun res!150999 () Bool)

(assert (=> b!289344 (=> (not res!150999) (not e!183198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289344 (= res!150999 (validKeyInArray!0 k!2524))))

(assert (= (and start!28262 res!151002) b!289342))

(assert (= (and b!289342 res!151003) b!289344))

(assert (= (and b!289344 res!150999) b!289341))

(assert (= (and b!289341 res!151004) b!289339))

(assert (= (and b!289339 res!150998) b!289340))

(assert (= (and b!289340 res!151001) b!289337))

(assert (= (and b!289337 res!151005) b!289343))

(assert (= (and b!289343 res!151000) b!289338))

(declare-fun m!303531 () Bool)

(assert (=> start!28262 m!303531))

(declare-fun m!303533 () Bool)

(assert (=> start!28262 m!303533))

(declare-fun m!303535 () Bool)

(assert (=> b!289337 m!303535))

(declare-fun m!303537 () Bool)

(assert (=> b!289337 m!303537))

(declare-fun m!303539 () Bool)

(assert (=> b!289337 m!303539))

(declare-fun m!303541 () Bool)

(assert (=> b!289337 m!303541))

(declare-fun m!303543 () Bool)

(assert (=> b!289344 m!303543))

(declare-fun m!303545 () Bool)

(assert (=> b!289340 m!303545))

(declare-fun m!303547 () Bool)

(assert (=> b!289339 m!303547))

(declare-fun m!303549 () Bool)

(assert (=> b!289338 m!303549))

(assert (=> b!289343 m!303549))

(declare-fun m!303551 () Bool)

(assert (=> b!289341 m!303551))

(push 1)

