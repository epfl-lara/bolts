; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86758 () Bool)

(assert start!86758)

(declare-fun res!674462 () Bool)

(declare-fun e!566097 () Bool)

(assert (=> start!86758 (=> (not res!674462) (not e!566097))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86758 (= res!674462 (validMask!0 mask!3464))))

(assert (=> start!86758 e!566097))

(declare-datatypes ((array!63409 0))(
  ( (array!63410 (arr!30523 (Array (_ BitVec 32) (_ BitVec 64))) (size!31026 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63409)

(declare-fun array_inv!23513 (array!63409) Bool)

(assert (=> start!86758 (array_inv!23513 a!3219)))

(assert (=> start!86758 true))

(declare-fun b!1005217 () Bool)

(declare-fun e!566098 () Bool)

(assert (=> b!1005217 (= e!566098 false)))

(declare-fun lt!444477 () Bool)

(declare-datatypes ((List!21325 0))(
  ( (Nil!21322) (Cons!21321 (h!22504 (_ BitVec 64)) (t!30334 List!21325)) )
))
(declare-fun arrayNoDuplicates!0 (array!63409 (_ BitVec 32) List!21325) Bool)

(assert (=> b!1005217 (= lt!444477 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21322))))

(declare-fun b!1005218 () Bool)

(declare-fun res!674461 () Bool)

(assert (=> b!1005218 (=> (not res!674461) (not e!566097))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1005218 (= res!674461 (validKeyInArray!0 (select (arr!30523 a!3219) j!170)))))

(declare-fun b!1005219 () Bool)

(declare-fun res!674463 () Bool)

(assert (=> b!1005219 (=> (not res!674463) (not e!566097))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1005219 (= res!674463 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1005220 () Bool)

(declare-fun res!674465 () Bool)

(assert (=> b!1005220 (=> (not res!674465) (not e!566097))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1005220 (= res!674465 (and (= (size!31026 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31026 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31026 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1005221 () Bool)

(declare-fun res!674467 () Bool)

(assert (=> b!1005221 (=> (not res!674467) (not e!566097))))

(assert (=> b!1005221 (= res!674467 (validKeyInArray!0 k!2224))))

(declare-fun b!1005222 () Bool)

(assert (=> b!1005222 (= e!566097 e!566098)))

(declare-fun res!674464 () Bool)

(assert (=> b!1005222 (=> (not res!674464) (not e!566098))))

(declare-datatypes ((SeekEntryResult!9455 0))(
  ( (MissingZero!9455 (index!40190 (_ BitVec 32))) (Found!9455 (index!40191 (_ BitVec 32))) (Intermediate!9455 (undefined!10267 Bool) (index!40192 (_ BitVec 32)) (x!87632 (_ BitVec 32))) (Undefined!9455) (MissingVacant!9455 (index!40193 (_ BitVec 32))) )
))
(declare-fun lt!444476 () SeekEntryResult!9455)

(assert (=> b!1005222 (= res!674464 (or (= lt!444476 (MissingVacant!9455 i!1194)) (= lt!444476 (MissingZero!9455 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63409 (_ BitVec 32)) SeekEntryResult!9455)

(assert (=> b!1005222 (= lt!444476 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1005223 () Bool)

(declare-fun res!674466 () Bool)

(assert (=> b!1005223 (=> (not res!674466) (not e!566098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63409 (_ BitVec 32)) Bool)

(assert (=> b!1005223 (= res!674466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!86758 res!674462) b!1005220))

(assert (= (and b!1005220 res!674465) b!1005218))

(assert (= (and b!1005218 res!674461) b!1005221))

(assert (= (and b!1005221 res!674467) b!1005219))

(assert (= (and b!1005219 res!674463) b!1005222))

(assert (= (and b!1005222 res!674464) b!1005223))

(assert (= (and b!1005223 res!674466) b!1005217))

(declare-fun m!930597 () Bool)

(assert (=> b!1005219 m!930597))

(declare-fun m!930599 () Bool)

(assert (=> b!1005218 m!930599))

(assert (=> b!1005218 m!930599))

(declare-fun m!930601 () Bool)

(assert (=> b!1005218 m!930601))

(declare-fun m!930603 () Bool)

(assert (=> b!1005223 m!930603))

(declare-fun m!930605 () Bool)

(assert (=> b!1005217 m!930605))

(declare-fun m!930607 () Bool)

(assert (=> b!1005221 m!930607))

(declare-fun m!930609 () Bool)

(assert (=> b!1005222 m!930609))

(declare-fun m!930611 () Bool)

(assert (=> start!86758 m!930611))

(declare-fun m!930613 () Bool)

(assert (=> start!86758 m!930613))

(push 1)

