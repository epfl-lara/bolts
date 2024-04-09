; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44462 () Bool)

(assert start!44462)

(declare-fun b!488001 () Bool)

(declare-fun res!291312 () Bool)

(declare-fun e!287110 () Bool)

(assert (=> b!488001 (=> (not res!291312) (not e!287110))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31577 0))(
  ( (array!31578 (arr!15176 (Array (_ BitVec 32) (_ BitVec 64))) (size!15540 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31577)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!488001 (= res!291312 (and (= (size!15540 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15540 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15540 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!291317 () Bool)

(assert (=> start!44462 (=> (not res!291317) (not e!287110))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44462 (= res!291317 (validMask!0 mask!3524))))

(assert (=> start!44462 e!287110))

(assert (=> start!44462 true))

(declare-fun array_inv!10950 (array!31577) Bool)

(assert (=> start!44462 (array_inv!10950 a!3235)))

(declare-fun b!488002 () Bool)

(declare-fun res!291319 () Bool)

(assert (=> b!488002 (=> (not res!291319) (not e!287110))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488002 (= res!291319 (validKeyInArray!0 (select (arr!15176 a!3235) j!176)))))

(declare-fun b!488003 () Bool)

(declare-fun e!287109 () Bool)

(assert (=> b!488003 (= e!287109 (not true))))

(declare-fun lt!220295 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488003 (= lt!220295 (toIndex!0 (select (arr!15176 a!3235) j!176) mask!3524))))

(declare-fun e!287108 () Bool)

(assert (=> b!488003 e!287108))

(declare-fun res!291313 () Bool)

(assert (=> b!488003 (=> (not res!291313) (not e!287108))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31577 (_ BitVec 32)) Bool)

(assert (=> b!488003 (= res!291313 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14238 0))(
  ( (Unit!14239) )
))
(declare-fun lt!220293 () Unit!14238)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31577 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14238)

(assert (=> b!488003 (= lt!220293 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488004 () Bool)

(declare-datatypes ((SeekEntryResult!3650 0))(
  ( (MissingZero!3650 (index!16779 (_ BitVec 32))) (Found!3650 (index!16780 (_ BitVec 32))) (Intermediate!3650 (undefined!4462 Bool) (index!16781 (_ BitVec 32)) (x!45924 (_ BitVec 32))) (Undefined!3650) (MissingVacant!3650 (index!16782 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31577 (_ BitVec 32)) SeekEntryResult!3650)

(assert (=> b!488004 (= e!287108 (= (seekEntryOrOpen!0 (select (arr!15176 a!3235) j!176) a!3235 mask!3524) (Found!3650 j!176)))))

(declare-fun b!488005 () Bool)

(declare-fun res!291315 () Bool)

(assert (=> b!488005 (=> (not res!291315) (not e!287110))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488005 (= res!291315 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488006 () Bool)

(declare-fun res!291318 () Bool)

(assert (=> b!488006 (=> (not res!291318) (not e!287110))))

(assert (=> b!488006 (= res!291318 (validKeyInArray!0 k!2280))))

(declare-fun b!488007 () Bool)

(declare-fun res!291314 () Bool)

(assert (=> b!488007 (=> (not res!291314) (not e!287109))))

(assert (=> b!488007 (= res!291314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488008 () Bool)

(assert (=> b!488008 (= e!287110 e!287109)))

(declare-fun res!291320 () Bool)

(assert (=> b!488008 (=> (not res!291320) (not e!287109))))

(declare-fun lt!220294 () SeekEntryResult!3650)

(assert (=> b!488008 (= res!291320 (or (= lt!220294 (MissingZero!3650 i!1204)) (= lt!220294 (MissingVacant!3650 i!1204))))))

(assert (=> b!488008 (= lt!220294 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!488009 () Bool)

(declare-fun res!291316 () Bool)

(assert (=> b!488009 (=> (not res!291316) (not e!287109))))

(declare-datatypes ((List!9387 0))(
  ( (Nil!9384) (Cons!9383 (h!10242 (_ BitVec 64)) (t!15623 List!9387)) )
))
(declare-fun arrayNoDuplicates!0 (array!31577 (_ BitVec 32) List!9387) Bool)

(assert (=> b!488009 (= res!291316 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9384))))

(assert (= (and start!44462 res!291317) b!488001))

(assert (= (and b!488001 res!291312) b!488002))

(assert (= (and b!488002 res!291319) b!488006))

(assert (= (and b!488006 res!291318) b!488005))

(assert (= (and b!488005 res!291315) b!488008))

(assert (= (and b!488008 res!291320) b!488007))

(assert (= (and b!488007 res!291314) b!488009))

(assert (= (and b!488009 res!291316) b!488003))

(assert (= (and b!488003 res!291313) b!488004))

(declare-fun m!467789 () Bool)

(assert (=> b!488004 m!467789))

(assert (=> b!488004 m!467789))

(declare-fun m!467791 () Bool)

(assert (=> b!488004 m!467791))

(declare-fun m!467793 () Bool)

(assert (=> b!488007 m!467793))

(declare-fun m!467795 () Bool)

(assert (=> b!488006 m!467795))

(assert (=> b!488002 m!467789))

(assert (=> b!488002 m!467789))

(declare-fun m!467797 () Bool)

(assert (=> b!488002 m!467797))

(declare-fun m!467799 () Bool)

(assert (=> b!488009 m!467799))

(declare-fun m!467801 () Bool)

(assert (=> start!44462 m!467801))

(declare-fun m!467803 () Bool)

(assert (=> start!44462 m!467803))

(declare-fun m!467805 () Bool)

(assert (=> b!488005 m!467805))

(declare-fun m!467807 () Bool)

(assert (=> b!488008 m!467807))

(assert (=> b!488003 m!467789))

(assert (=> b!488003 m!467789))

(declare-fun m!467809 () Bool)

(assert (=> b!488003 m!467809))

(declare-fun m!467811 () Bool)

(assert (=> b!488003 m!467811))

(declare-fun m!467813 () Bool)

(assert (=> b!488003 m!467813))

(push 1)

(assert (not b!488002))

(assert (not b!488004))

