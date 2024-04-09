; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44390 () Bool)

(assert start!44390)

(declare-fun b!487575 () Bool)

(declare-fun res!290998 () Bool)

(declare-fun e!286876 () Bool)

(assert (=> b!487575 (=> (not res!290998) (not e!286876))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!487575 (= res!290998 (validKeyInArray!0 k!2280))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31556 0))(
  ( (array!31557 (arr!15167 (Array (_ BitVec 32) (_ BitVec 64))) (size!15531 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31556)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!286874 () Bool)

(declare-fun b!487576 () Bool)

(declare-datatypes ((SeekEntryResult!3641 0))(
  ( (MissingZero!3641 (index!16743 (_ BitVec 32))) (Found!3641 (index!16744 (_ BitVec 32))) (Intermediate!3641 (undefined!4453 Bool) (index!16745 (_ BitVec 32)) (x!45888 (_ BitVec 32))) (Undefined!3641) (MissingVacant!3641 (index!16746 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31556 (_ BitVec 32)) SeekEntryResult!3641)

(assert (=> b!487576 (= e!286874 (= (seekEntryOrOpen!0 (select (arr!15167 a!3235) j!176) a!3235 mask!3524) (Found!3641 j!176)))))

(declare-fun b!487577 () Bool)

(declare-fun res!291003 () Bool)

(declare-fun e!286873 () Bool)

(assert (=> b!487577 (=> (not res!291003) (not e!286873))))

(declare-datatypes ((List!9378 0))(
  ( (Nil!9375) (Cons!9374 (h!10230 (_ BitVec 64)) (t!15614 List!9378)) )
))
(declare-fun arrayNoDuplicates!0 (array!31556 (_ BitVec 32) List!9378) Bool)

(assert (=> b!487577 (= res!291003 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9375))))

(declare-fun b!487578 () Bool)

(declare-fun res!290999 () Bool)

(assert (=> b!487578 (=> (not res!290999) (not e!286876))))

(assert (=> b!487578 (= res!290999 (validKeyInArray!0 (select (arr!15167 a!3235) j!176)))))

(declare-fun res!291004 () Bool)

(assert (=> start!44390 (=> (not res!291004) (not e!286876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44390 (= res!291004 (validMask!0 mask!3524))))

(assert (=> start!44390 e!286876))

(assert (=> start!44390 true))

(declare-fun array_inv!10941 (array!31556) Bool)

(assert (=> start!44390 (array_inv!10941 a!3235)))

(declare-fun b!487579 () Bool)

(declare-fun res!290997 () Bool)

(assert (=> b!487579 (=> (not res!290997) (not e!286876))))

(declare-fun arrayContainsKey!0 (array!31556 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!487579 (= res!290997 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!487580 () Bool)

(declare-fun res!291001 () Bool)

(assert (=> b!487580 (=> (not res!291001) (not e!286876))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!487580 (= res!291001 (and (= (size!15531 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15531 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15531 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!487581 () Bool)

(assert (=> b!487581 (= e!286873 (not (bvsge mask!3524 #b00000000000000000000000000000000)))))

(declare-fun lt!220115 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!487581 (= lt!220115 (toIndex!0 (select (arr!15167 a!3235) j!176) mask!3524))))

(assert (=> b!487581 e!286874))

(declare-fun res!291002 () Bool)

(assert (=> b!487581 (=> (not res!291002) (not e!286874))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31556 (_ BitVec 32)) Bool)

(assert (=> b!487581 (= res!291002 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14220 0))(
  ( (Unit!14221) )
))
(declare-fun lt!220113 () Unit!14220)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31556 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14220)

(assert (=> b!487581 (= lt!220113 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!487582 () Bool)

(declare-fun res!291000 () Bool)

(assert (=> b!487582 (=> (not res!291000) (not e!286873))))

(assert (=> b!487582 (= res!291000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!487583 () Bool)

(assert (=> b!487583 (= e!286876 e!286873)))

(declare-fun res!291005 () Bool)

(assert (=> b!487583 (=> (not res!291005) (not e!286873))))

(declare-fun lt!220114 () SeekEntryResult!3641)

(assert (=> b!487583 (= res!291005 (or (= lt!220114 (MissingZero!3641 i!1204)) (= lt!220114 (MissingVacant!3641 i!1204))))))

(assert (=> b!487583 (= lt!220114 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!44390 res!291004) b!487580))

(assert (= (and b!487580 res!291001) b!487578))

(assert (= (and b!487578 res!290999) b!487575))

(assert (= (and b!487575 res!290998) b!487579))

(assert (= (and b!487579 res!290997) b!487583))

(assert (= (and b!487583 res!291005) b!487582))

(assert (= (and b!487582 res!291000) b!487577))

(assert (= (and b!487577 res!291003) b!487581))

(assert (= (and b!487581 res!291002) b!487576))

(declare-fun m!467399 () Bool)

(assert (=> b!487576 m!467399))

(assert (=> b!487576 m!467399))

(declare-fun m!467401 () Bool)

(assert (=> b!487576 m!467401))

(declare-fun m!467403 () Bool)

(assert (=> start!44390 m!467403))

(declare-fun m!467405 () Bool)

(assert (=> start!44390 m!467405))

(declare-fun m!467407 () Bool)

(assert (=> b!487575 m!467407))

(declare-fun m!467409 () Bool)

(assert (=> b!487579 m!467409))

(declare-fun m!467411 () Bool)

(assert (=> b!487577 m!467411))

(assert (=> b!487581 m!467399))

(assert (=> b!487581 m!467399))

(declare-fun m!467413 () Bool)

(assert (=> b!487581 m!467413))

(declare-fun m!467415 () Bool)

(assert (=> b!487581 m!467415))

(declare-fun m!467417 () Bool)

(assert (=> b!487581 m!467417))

(declare-fun m!467419 () Bool)

(assert (=> b!487582 m!467419))

(declare-fun m!467421 () Bool)

(assert (=> b!487583 m!467421))

(assert (=> b!487578 m!467399))

(assert (=> b!487578 m!467399))

(declare-fun m!467423 () Bool)

(assert (=> b!487578 m!467423))

(push 1)

