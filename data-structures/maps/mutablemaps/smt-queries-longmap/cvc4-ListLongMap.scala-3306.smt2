; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45794 () Bool)

(assert start!45794)

(declare-fun res!307639 () Bool)

(declare-fun e!296467 () Bool)

(assert (=> start!45794 (=> (not res!307639) (not e!296467))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45794 (= res!307639 (validMask!0 mask!3524))))

(assert (=> start!45794 e!296467))

(assert (=> start!45794 true))

(declare-datatypes ((array!32510 0))(
  ( (array!32511 (arr!15632 (Array (_ BitVec 32) (_ BitVec 64))) (size!15996 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32510)

(declare-fun array_inv!11406 (array!32510) Bool)

(assert (=> start!45794 (array_inv!11406 a!3235)))

(declare-fun b!506524 () Bool)

(declare-fun res!307634 () Bool)

(assert (=> b!506524 (=> (not res!307634) (not e!296467))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506524 (= res!307634 (validKeyInArray!0 k!2280))))

(declare-fun b!506525 () Bool)

(declare-fun e!296466 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4106 0))(
  ( (MissingZero!4106 (index!18612 (_ BitVec 32))) (Found!4106 (index!18613 (_ BitVec 32))) (Intermediate!4106 (undefined!4918 Bool) (index!18614 (_ BitVec 32)) (x!47638 (_ BitVec 32))) (Undefined!4106) (MissingVacant!4106 (index!18615 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32510 (_ BitVec 32)) SeekEntryResult!4106)

(assert (=> b!506525 (= e!296466 (= (seekEntryOrOpen!0 (select (arr!15632 a!3235) j!176) a!3235 mask!3524) (Found!4106 j!176)))))

(declare-fun b!506526 () Bool)

(declare-fun res!307636 () Bool)

(assert (=> b!506526 (=> (not res!307636) (not e!296467))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!506526 (= res!307636 (and (= (size!15996 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15996 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15996 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506527 () Bool)

(declare-fun e!296465 () Bool)

(assert (=> b!506527 (= e!296465 true)))

(assert (=> b!506527 false))

(declare-fun b!506528 () Bool)

(declare-fun e!296464 () Bool)

(assert (=> b!506528 (= e!296464 e!296465)))

(declare-fun res!307637 () Bool)

(assert (=> b!506528 (=> res!307637 e!296465)))

(declare-fun lt!231210 () Bool)

(declare-fun lt!231209 () SeekEntryResult!4106)

(assert (=> b!506528 (= res!307637 (or (and (not lt!231210) (undefined!4918 lt!231209)) (and (not lt!231210) (not (undefined!4918 lt!231209)))))))

(assert (=> b!506528 (= lt!231210 (not (is-Intermediate!4106 lt!231209)))))

(declare-fun b!506529 () Bool)

(declare-fun res!307643 () Bool)

(declare-fun e!296462 () Bool)

(assert (=> b!506529 (=> (not res!307643) (not e!296462))))

(declare-datatypes ((List!9843 0))(
  ( (Nil!9840) (Cons!9839 (h!10716 (_ BitVec 64)) (t!16079 List!9843)) )
))
(declare-fun arrayNoDuplicates!0 (array!32510 (_ BitVec 32) List!9843) Bool)

(assert (=> b!506529 (= res!307643 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9840))))

(declare-fun b!506530 () Bool)

(declare-fun res!307641 () Bool)

(assert (=> b!506530 (=> (not res!307641) (not e!296467))))

(declare-fun arrayContainsKey!0 (array!32510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506530 (= res!307641 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506531 () Bool)

(assert (=> b!506531 (= e!296462 (not e!296464))))

(declare-fun res!307635 () Bool)

(assert (=> b!506531 (=> res!307635 e!296464)))

(declare-fun lt!231207 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32510 (_ BitVec 32)) SeekEntryResult!4106)

(assert (=> b!506531 (= res!307635 (= lt!231209 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231207 (select (store (arr!15632 a!3235) i!1204 k!2280) j!176) (array!32511 (store (arr!15632 a!3235) i!1204 k!2280) (size!15996 a!3235)) mask!3524)))))

(declare-fun lt!231211 () (_ BitVec 32))

(assert (=> b!506531 (= lt!231209 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231211 (select (arr!15632 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506531 (= lt!231207 (toIndex!0 (select (store (arr!15632 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!506531 (= lt!231211 (toIndex!0 (select (arr!15632 a!3235) j!176) mask!3524))))

(assert (=> b!506531 e!296466))

(declare-fun res!307640 () Bool)

(assert (=> b!506531 (=> (not res!307640) (not e!296466))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32510 (_ BitVec 32)) Bool)

(assert (=> b!506531 (= res!307640 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15492 0))(
  ( (Unit!15493) )
))
(declare-fun lt!231208 () Unit!15492)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32510 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15492)

(assert (=> b!506531 (= lt!231208 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506532 () Bool)

(assert (=> b!506532 (= e!296467 e!296462)))

(declare-fun res!307633 () Bool)

(assert (=> b!506532 (=> (not res!307633) (not e!296462))))

(declare-fun lt!231212 () SeekEntryResult!4106)

(assert (=> b!506532 (= res!307633 (or (= lt!231212 (MissingZero!4106 i!1204)) (= lt!231212 (MissingVacant!4106 i!1204))))))

(assert (=> b!506532 (= lt!231212 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506533 () Bool)

(declare-fun res!307642 () Bool)

(assert (=> b!506533 (=> (not res!307642) (not e!296462))))

(assert (=> b!506533 (= res!307642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506534 () Bool)

(declare-fun res!307638 () Bool)

(assert (=> b!506534 (=> (not res!307638) (not e!296467))))

(assert (=> b!506534 (= res!307638 (validKeyInArray!0 (select (arr!15632 a!3235) j!176)))))

(assert (= (and start!45794 res!307639) b!506526))

(assert (= (and b!506526 res!307636) b!506534))

(assert (= (and b!506534 res!307638) b!506524))

(assert (= (and b!506524 res!307634) b!506530))

(assert (= (and b!506530 res!307641) b!506532))

(assert (= (and b!506532 res!307633) b!506533))

(assert (= (and b!506533 res!307642) b!506529))

(assert (= (and b!506529 res!307643) b!506531))

(assert (= (and b!506531 res!307640) b!506525))

(assert (= (and b!506531 (not res!307635)) b!506528))

(assert (= (and b!506528 (not res!307637)) b!506527))

(declare-fun m!487249 () Bool)

(assert (=> b!506524 m!487249))

(declare-fun m!487251 () Bool)

(assert (=> start!45794 m!487251))

(declare-fun m!487253 () Bool)

(assert (=> start!45794 m!487253))

(declare-fun m!487255 () Bool)

(assert (=> b!506529 m!487255))

(declare-fun m!487257 () Bool)

(assert (=> b!506530 m!487257))

(declare-fun m!487259 () Bool)

(assert (=> b!506534 m!487259))

(assert (=> b!506534 m!487259))

(declare-fun m!487261 () Bool)

(assert (=> b!506534 m!487261))

(declare-fun m!487263 () Bool)

(assert (=> b!506532 m!487263))

(assert (=> b!506525 m!487259))

(assert (=> b!506525 m!487259))

(declare-fun m!487265 () Bool)

(assert (=> b!506525 m!487265))

(declare-fun m!487267 () Bool)

(assert (=> b!506533 m!487267))

(declare-fun m!487269 () Bool)

(assert (=> b!506531 m!487269))

(declare-fun m!487271 () Bool)

(assert (=> b!506531 m!487271))

(declare-fun m!487273 () Bool)

(assert (=> b!506531 m!487273))

(assert (=> b!506531 m!487259))

(declare-fun m!487275 () Bool)

(assert (=> b!506531 m!487275))

(assert (=> b!506531 m!487273))

(declare-fun m!487277 () Bool)

(assert (=> b!506531 m!487277))

(assert (=> b!506531 m!487259))

(declare-fun m!487279 () Bool)

(assert (=> b!506531 m!487279))

(assert (=> b!506531 m!487259))

(declare-fun m!487281 () Bool)

(assert (=> b!506531 m!487281))

(assert (=> b!506531 m!487273))

(declare-fun m!487283 () Bool)

(assert (=> b!506531 m!487283))

(push 1)

