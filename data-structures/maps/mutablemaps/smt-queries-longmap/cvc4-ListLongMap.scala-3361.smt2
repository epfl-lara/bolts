; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46232 () Bool)

(assert start!46232)

(declare-fun b!511625 () Bool)

(declare-fun res!312446 () Bool)

(declare-fun e!298911 () Bool)

(assert (=> b!511625 (=> (not res!312446) (not e!298911))))

(declare-datatypes ((array!32846 0))(
  ( (array!32847 (arr!15797 (Array (_ BitVec 32) (_ BitVec 64))) (size!16161 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32846)

(declare-datatypes ((List!10008 0))(
  ( (Nil!10005) (Cons!10004 (h!10884 (_ BitVec 64)) (t!16244 List!10008)) )
))
(declare-fun arrayNoDuplicates!0 (array!32846 (_ BitVec 32) List!10008) Bool)

(assert (=> b!511625 (= res!312446 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10005))))

(declare-fun b!511626 () Bool)

(declare-fun res!312438 () Bool)

(declare-fun e!298912 () Bool)

(assert (=> b!511626 (=> (not res!312438) (not e!298912))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(assert (=> b!511626 (= res!312438 (and (= (size!16161 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16161 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16161 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!312442 () Bool)

(assert (=> start!46232 (=> (not res!312442) (not e!298912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46232 (= res!312442 (validMask!0 mask!3524))))

(assert (=> start!46232 e!298912))

(assert (=> start!46232 true))

(declare-fun array_inv!11571 (array!32846) Bool)

(assert (=> start!46232 (array_inv!11571 a!3235)))

(declare-fun b!511627 () Bool)

(declare-fun res!312445 () Bool)

(assert (=> b!511627 (=> (not res!312445) (not e!298912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511627 (= res!312445 (validKeyInArray!0 (select (arr!15797 a!3235) j!176)))))

(declare-fun b!511628 () Bool)

(declare-fun e!298910 () Bool)

(assert (=> b!511628 (= e!298910 true)))

(declare-datatypes ((SeekEntryResult!4271 0))(
  ( (MissingZero!4271 (index!19272 (_ BitVec 32))) (Found!4271 (index!19273 (_ BitVec 32))) (Intermediate!4271 (undefined!5083 Bool) (index!19274 (_ BitVec 32)) (x!48249 (_ BitVec 32))) (Undefined!4271) (MissingVacant!4271 (index!19275 (_ BitVec 32))) )
))
(declare-fun lt!234174 () SeekEntryResult!4271)

(assert (=> b!511628 (= lt!234174 Undefined!4271)))

(declare-fun b!511629 () Bool)

(declare-fun res!312443 () Bool)

(assert (=> b!511629 (=> (not res!312443) (not e!298912))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!511629 (= res!312443 (validKeyInArray!0 k!2280))))

(declare-fun b!511630 () Bool)

(assert (=> b!511630 (= e!298912 e!298911)))

(declare-fun res!312440 () Bool)

(assert (=> b!511630 (=> (not res!312440) (not e!298911))))

(declare-fun lt!234175 () SeekEntryResult!4271)

(assert (=> b!511630 (= res!312440 (or (= lt!234175 (MissingZero!4271 i!1204)) (= lt!234175 (MissingVacant!4271 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32846 (_ BitVec 32)) SeekEntryResult!4271)

(assert (=> b!511630 (= lt!234175 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!511631 () Bool)

(assert (=> b!511631 (= e!298911 (not e!298910))))

(declare-fun res!312441 () Bool)

(assert (=> b!511631 (=> res!312441 e!298910)))

(declare-fun lt!234176 () SeekEntryResult!4271)

(declare-fun lt!234172 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32846 (_ BitVec 32)) SeekEntryResult!4271)

(assert (=> b!511631 (= res!312441 (= lt!234176 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234172 (select (store (arr!15797 a!3235) i!1204 k!2280) j!176) (array!32847 (store (arr!15797 a!3235) i!1204 k!2280) (size!16161 a!3235)) mask!3524)))))

(declare-fun lt!234173 () (_ BitVec 32))

(assert (=> b!511631 (= lt!234176 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234173 (select (arr!15797 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511631 (= lt!234172 (toIndex!0 (select (store (arr!15797 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511631 (= lt!234173 (toIndex!0 (select (arr!15797 a!3235) j!176) mask!3524))))

(assert (=> b!511631 (= lt!234174 (Found!4271 j!176))))

(assert (=> b!511631 (= lt!234174 (seekEntryOrOpen!0 (select (arr!15797 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32846 (_ BitVec 32)) Bool)

(assert (=> b!511631 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15792 0))(
  ( (Unit!15793) )
))
(declare-fun lt!234171 () Unit!15792)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32846 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15792)

(assert (=> b!511631 (= lt!234171 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511632 () Bool)

(declare-fun res!312437 () Bool)

(assert (=> b!511632 (=> (not res!312437) (not e!298911))))

(assert (=> b!511632 (= res!312437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!511633 () Bool)

(declare-fun res!312444 () Bool)

(assert (=> b!511633 (=> res!312444 e!298910)))

(assert (=> b!511633 (= res!312444 (or (not (is-Intermediate!4271 lt!234176)) (not (undefined!5083 lt!234176))))))

(declare-fun b!511634 () Bool)

(declare-fun res!312439 () Bool)

(assert (=> b!511634 (=> (not res!312439) (not e!298912))))

(declare-fun arrayContainsKey!0 (array!32846 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511634 (= res!312439 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46232 res!312442) b!511626))

(assert (= (and b!511626 res!312438) b!511627))

(assert (= (and b!511627 res!312445) b!511629))

(assert (= (and b!511629 res!312443) b!511634))

(assert (= (and b!511634 res!312439) b!511630))

(assert (= (and b!511630 res!312440) b!511632))

(assert (= (and b!511632 res!312437) b!511625))

(assert (= (and b!511625 res!312446) b!511631))

(assert (= (and b!511631 (not res!312441)) b!511633))

(assert (= (and b!511633 (not res!312444)) b!511628))

(declare-fun m!493195 () Bool)

(assert (=> start!46232 m!493195))

(declare-fun m!493197 () Bool)

(assert (=> start!46232 m!493197))

(declare-fun m!493199 () Bool)

(assert (=> b!511630 m!493199))

(declare-fun m!493201 () Bool)

(assert (=> b!511631 m!493201))

(declare-fun m!493203 () Bool)

(assert (=> b!511631 m!493203))

(declare-fun m!493205 () Bool)

(assert (=> b!511631 m!493205))

(declare-fun m!493207 () Bool)

(assert (=> b!511631 m!493207))

(declare-fun m!493209 () Bool)

(assert (=> b!511631 m!493209))

(assert (=> b!511631 m!493201))

(declare-fun m!493211 () Bool)

(assert (=> b!511631 m!493211))

(assert (=> b!511631 m!493201))

(declare-fun m!493213 () Bool)

(assert (=> b!511631 m!493213))

(assert (=> b!511631 m!493209))

(declare-fun m!493215 () Bool)

(assert (=> b!511631 m!493215))

(assert (=> b!511631 m!493201))

(declare-fun m!493217 () Bool)

(assert (=> b!511631 m!493217))

(assert (=> b!511631 m!493209))

(declare-fun m!493219 () Bool)

(assert (=> b!511631 m!493219))

(declare-fun m!493221 () Bool)

(assert (=> b!511634 m!493221))

(declare-fun m!493223 () Bool)

(assert (=> b!511632 m!493223))

(assert (=> b!511627 m!493201))

(assert (=> b!511627 m!493201))

(declare-fun m!493225 () Bool)

(assert (=> b!511627 m!493225))

(declare-fun m!493227 () Bool)

(assert (=> b!511629 m!493227))

(declare-fun m!493229 () Bool)

(assert (=> b!511625 m!493229))

(push 1)

