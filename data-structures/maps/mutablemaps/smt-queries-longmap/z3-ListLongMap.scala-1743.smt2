; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31988 () Bool)

(assert start!31988)

(declare-fun b!319206 () Bool)

(declare-fun res!173749 () Bool)

(declare-fun e!198277 () Bool)

(assert (=> b!319206 (=> (not res!173749) (not e!198277))))

(declare-datatypes ((array!16291 0))(
  ( (array!16292 (arr!7706 (Array (_ BitVec 32) (_ BitVec 64))) (size!8058 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16291)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319206 (= res!173749 (and (= (size!8058 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8058 a!3305))))))

(declare-fun b!319208 () Bool)

(declare-fun res!173748 () Bool)

(assert (=> b!319208 (=> (not res!173748) (not e!198277))))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16291 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!319208 (= res!173748 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun res!173751 () Bool)

(assert (=> start!31988 (=> (not res!173751) (not e!198277))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31988 (= res!173751 (validMask!0 mask!3777))))

(assert (=> start!31988 e!198277))

(assert (=> start!31988 true))

(declare-fun array_inv!5660 (array!16291) Bool)

(assert (=> start!31988 (array_inv!5660 a!3305)))

(declare-fun b!319209 () Bool)

(assert (=> b!319209 (= e!198277 false)))

(declare-datatypes ((SeekEntryResult!2848 0))(
  ( (MissingZero!2848 (index!13568 (_ BitVec 32))) (Found!2848 (index!13569 (_ BitVec 32))) (Intermediate!2848 (undefined!3660 Bool) (index!13570 (_ BitVec 32)) (x!31813 (_ BitVec 32))) (Undefined!2848) (MissingVacant!2848 (index!13571 (_ BitVec 32))) )
))
(declare-fun lt!155753 () SeekEntryResult!2848)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16291 (_ BitVec 32)) SeekEntryResult!2848)

(assert (=> b!319209 (= lt!155753 (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777))))

(declare-fun b!319207 () Bool)

(declare-fun res!173750 () Bool)

(assert (=> b!319207 (=> (not res!173750) (not e!198277))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319207 (= res!173750 (validKeyInArray!0 k0!2497))))

(assert (= (and start!31988 res!173751) b!319206))

(assert (= (and b!319206 res!173749) b!319207))

(assert (= (and b!319207 res!173750) b!319208))

(assert (= (and b!319208 res!173748) b!319209))

(declare-fun m!327857 () Bool)

(assert (=> b!319208 m!327857))

(declare-fun m!327859 () Bool)

(assert (=> start!31988 m!327859))

(declare-fun m!327861 () Bool)

(assert (=> start!31988 m!327861))

(declare-fun m!327863 () Bool)

(assert (=> b!319209 m!327863))

(declare-fun m!327865 () Bool)

(assert (=> b!319207 m!327865))

(check-sat (not b!319208) (not start!31988) (not b!319207) (not b!319209))
(check-sat)
