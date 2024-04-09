; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86762 () Bool)

(assert start!86762)

(declare-fun b!1005259 () Bool)

(declare-fun res!674508 () Bool)

(declare-fun e!566117 () Bool)

(assert (=> b!1005259 (=> (not res!674508) (not e!566117))))

(declare-datatypes ((array!63413 0))(
  ( (array!63414 (arr!30525 (Array (_ BitVec 32) (_ BitVec 64))) (size!31028 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63413)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63413 (_ BitVec 32)) Bool)

(assert (=> b!1005259 (= res!674508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1005260 () Bool)

(declare-fun res!674506 () Bool)

(declare-fun e!566116 () Bool)

(assert (=> b!1005260 (=> (not res!674506) (not e!566116))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005260 (= res!674506 (validKeyInArray!0 k!2224))))

(declare-fun b!1005261 () Bool)

(assert (=> b!1005261 (= e!566116 e!566117)))

(declare-fun res!674504 () Bool)

(assert (=> b!1005261 (=> (not res!674504) (not e!566117))))

(declare-datatypes ((SeekEntryResult!9457 0))(
  ( (MissingZero!9457 (index!40198 (_ BitVec 32))) (Found!9457 (index!40199 (_ BitVec 32))) (Intermediate!9457 (undefined!10269 Bool) (index!40200 (_ BitVec 32)) (x!87634 (_ BitVec 32))) (Undefined!9457) (MissingVacant!9457 (index!40201 (_ BitVec 32))) )
))
(declare-fun lt!444488 () SeekEntryResult!9457)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005261 (= res!674504 (or (= lt!444488 (MissingVacant!9457 i!1194)) (= lt!444488 (MissingZero!9457 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63413 (_ BitVec 32)) SeekEntryResult!9457)

(assert (=> b!1005261 (= lt!444488 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!674505 () Bool)

(assert (=> start!86762 (=> (not res!674505) (not e!566116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86762 (= res!674505 (validMask!0 mask!3464))))

(assert (=> start!86762 e!566116))

(declare-fun array_inv!23515 (array!63413) Bool)

(assert (=> start!86762 (array_inv!23515 a!3219)))

(assert (=> start!86762 true))

(declare-fun b!1005262 () Bool)

(declare-fun res!674509 () Bool)

(assert (=> b!1005262 (=> (not res!674509) (not e!566116))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1005262 (= res!674509 (and (= (size!31028 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31028 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31028 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005263 () Bool)

(assert (=> b!1005263 (= e!566117 false)))

(declare-fun lt!444489 () Bool)

(declare-datatypes ((List!21327 0))(
  ( (Nil!21324) (Cons!21323 (h!22506 (_ BitVec 64)) (t!30336 List!21327)) )
))
(declare-fun arrayNoDuplicates!0 (array!63413 (_ BitVec 32) List!21327) Bool)

(assert (=> b!1005263 (= lt!444489 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21324))))

(declare-fun b!1005264 () Bool)

(declare-fun res!674507 () Bool)

(assert (=> b!1005264 (=> (not res!674507) (not e!566116))))

(declare-fun arrayContainsKey!0 (array!63413 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005264 (= res!674507 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005265 () Bool)

(declare-fun res!674503 () Bool)

(assert (=> b!1005265 (=> (not res!674503) (not e!566116))))

(assert (=> b!1005265 (= res!674503 (validKeyInArray!0 (select (arr!30525 a!3219) j!170)))))

(assert (= (and start!86762 res!674505) b!1005262))

(assert (= (and b!1005262 res!674509) b!1005265))

(assert (= (and b!1005265 res!674503) b!1005260))

(assert (= (and b!1005260 res!674506) b!1005264))

(assert (= (and b!1005264 res!674507) b!1005261))

(assert (= (and b!1005261 res!674504) b!1005259))

(assert (= (and b!1005259 res!674508) b!1005263))

(declare-fun m!930633 () Bool)

(assert (=> start!86762 m!930633))

(declare-fun m!930635 () Bool)

(assert (=> start!86762 m!930635))

(declare-fun m!930637 () Bool)

(assert (=> b!1005259 m!930637))

(declare-fun m!930639 () Bool)

(assert (=> b!1005265 m!930639))

(assert (=> b!1005265 m!930639))

(declare-fun m!930641 () Bool)

(assert (=> b!1005265 m!930641))

(declare-fun m!930643 () Bool)

(assert (=> b!1005261 m!930643))

(declare-fun m!930645 () Bool)

(assert (=> b!1005264 m!930645))

(declare-fun m!930647 () Bool)

(assert (=> b!1005260 m!930647))

(declare-fun m!930649 () Bool)

(assert (=> b!1005263 m!930649))

(push 1)

(assert (not b!1005260))

(assert (not start!86762))

(assert (not b!1005265))

