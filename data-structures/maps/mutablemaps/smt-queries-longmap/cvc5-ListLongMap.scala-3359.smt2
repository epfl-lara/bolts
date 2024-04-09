; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46216 () Bool)

(assert start!46216)

(declare-fun b!511385 () Bool)

(declare-fun res!312198 () Bool)

(declare-fun e!298815 () Bool)

(assert (=> b!511385 (=> res!312198 e!298815)))

(declare-datatypes ((SeekEntryResult!4263 0))(
  ( (MissingZero!4263 (index!19240 (_ BitVec 32))) (Found!4263 (index!19241 (_ BitVec 32))) (Intermediate!4263 (undefined!5075 Bool) (index!19242 (_ BitVec 32)) (x!48225 (_ BitVec 32))) (Undefined!4263) (MissingVacant!4263 (index!19243 (_ BitVec 32))) )
))
(declare-fun lt!234027 () SeekEntryResult!4263)

(assert (=> b!511385 (= res!312198 (or (not (is-Intermediate!4263 lt!234027)) (not (undefined!5075 lt!234027))))))

(declare-fun b!511386 () Bool)

(declare-fun res!312197 () Bool)

(declare-fun e!298816 () Bool)

(assert (=> b!511386 (=> (not res!312197) (not e!298816))))

(declare-datatypes ((array!32830 0))(
  ( (array!32831 (arr!15789 (Array (_ BitVec 32) (_ BitVec 64))) (size!16153 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32830)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!511386 (= res!312197 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!511387 () Bool)

(declare-fun res!312205 () Bool)

(declare-fun e!298814 () Bool)

(assert (=> b!511387 (=> (not res!312205) (not e!298814))))

(declare-datatypes ((List!10000 0))(
  ( (Nil!9997) (Cons!9996 (h!10876 (_ BitVec 64)) (t!16236 List!10000)) )
))
(declare-fun arrayNoDuplicates!0 (array!32830 (_ BitVec 32) List!10000) Bool)

(assert (=> b!511387 (= res!312205 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9997))))

(declare-fun b!511389 () Bool)

(declare-fun res!312202 () Bool)

(assert (=> b!511389 (=> (not res!312202) (not e!298816))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!511389 (= res!312202 (and (= (size!16153 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16153 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16153 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!511390 () Bool)

(assert (=> b!511390 (= e!298815 (bvsle #b00000000000000000000000000000000 (size!16153 a!3235)))))

(declare-fun lt!234031 () SeekEntryResult!4263)

(assert (=> b!511390 (= lt!234031 Undefined!4263)))

(declare-fun b!511391 () Bool)

(assert (=> b!511391 (= e!298816 e!298814)))

(declare-fun res!312201 () Bool)

(assert (=> b!511391 (=> (not res!312201) (not e!298814))))

(declare-fun lt!234029 () SeekEntryResult!4263)

(assert (=> b!511391 (= res!312201 (or (= lt!234029 (MissingZero!4263 i!1204)) (= lt!234029 (MissingVacant!4263 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32830 (_ BitVec 32)) SeekEntryResult!4263)

(assert (=> b!511391 (= lt!234029 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!511392 () Bool)

(declare-fun res!312199 () Bool)

(assert (=> b!511392 (=> (not res!312199) (not e!298816))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!511392 (= res!312199 (validKeyInArray!0 k!2280))))

(declare-fun b!511393 () Bool)

(declare-fun res!312204 () Bool)

(assert (=> b!511393 (=> (not res!312204) (not e!298816))))

(assert (=> b!511393 (= res!312204 (validKeyInArray!0 (select (arr!15789 a!3235) j!176)))))

(declare-fun b!511394 () Bool)

(assert (=> b!511394 (= e!298814 (not e!298815))))

(declare-fun res!312203 () Bool)

(assert (=> b!511394 (=> res!312203 e!298815)))

(declare-fun lt!234032 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32830 (_ BitVec 32)) SeekEntryResult!4263)

(assert (=> b!511394 (= res!312203 (= lt!234027 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234032 (select (store (arr!15789 a!3235) i!1204 k!2280) j!176) (array!32831 (store (arr!15789 a!3235) i!1204 k!2280) (size!16153 a!3235)) mask!3524)))))

(declare-fun lt!234028 () (_ BitVec 32))

(assert (=> b!511394 (= lt!234027 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234028 (select (arr!15789 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!511394 (= lt!234032 (toIndex!0 (select (store (arr!15789 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!511394 (= lt!234028 (toIndex!0 (select (arr!15789 a!3235) j!176) mask!3524))))

(assert (=> b!511394 (= lt!234031 (Found!4263 j!176))))

(assert (=> b!511394 (= lt!234031 (seekEntryOrOpen!0 (select (arr!15789 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32830 (_ BitVec 32)) Bool)

(assert (=> b!511394 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15776 0))(
  ( (Unit!15777) )
))
(declare-fun lt!234030 () Unit!15776)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32830 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15776)

(assert (=> b!511394 (= lt!234030 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!511388 () Bool)

(declare-fun res!312206 () Bool)

(assert (=> b!511388 (=> (not res!312206) (not e!298814))))

(assert (=> b!511388 (= res!312206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!312200 () Bool)

(assert (=> start!46216 (=> (not res!312200) (not e!298816))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46216 (= res!312200 (validMask!0 mask!3524))))

(assert (=> start!46216 e!298816))

(assert (=> start!46216 true))

(declare-fun array_inv!11563 (array!32830) Bool)

(assert (=> start!46216 (array_inv!11563 a!3235)))

(assert (= (and start!46216 res!312200) b!511389))

(assert (= (and b!511389 res!312202) b!511393))

(assert (= (and b!511393 res!312204) b!511392))

(assert (= (and b!511392 res!312199) b!511386))

(assert (= (and b!511386 res!312197) b!511391))

(assert (= (and b!511391 res!312201) b!511388))

(assert (= (and b!511388 res!312206) b!511387))

(assert (= (and b!511387 res!312205) b!511394))

(assert (= (and b!511394 (not res!312203)) b!511385))

(assert (= (and b!511385 (not res!312198)) b!511390))

(declare-fun m!492907 () Bool)

(assert (=> b!511387 m!492907))

(declare-fun m!492909 () Bool)

(assert (=> b!511388 m!492909))

(declare-fun m!492911 () Bool)

(assert (=> b!511386 m!492911))

(declare-fun m!492913 () Bool)

(assert (=> b!511393 m!492913))

(assert (=> b!511393 m!492913))

(declare-fun m!492915 () Bool)

(assert (=> b!511393 m!492915))

(declare-fun m!492917 () Bool)

(assert (=> b!511392 m!492917))

(declare-fun m!492919 () Bool)

(assert (=> b!511394 m!492919))

(declare-fun m!492921 () Bool)

(assert (=> b!511394 m!492921))

(declare-fun m!492923 () Bool)

(assert (=> b!511394 m!492923))

(assert (=> b!511394 m!492913))

(declare-fun m!492925 () Bool)

(assert (=> b!511394 m!492925))

(assert (=> b!511394 m!492913))

(declare-fun m!492927 () Bool)

(assert (=> b!511394 m!492927))

(assert (=> b!511394 m!492913))

(declare-fun m!492929 () Bool)

(assert (=> b!511394 m!492929))

(assert (=> b!511394 m!492913))

(declare-fun m!492931 () Bool)

(assert (=> b!511394 m!492931))

(assert (=> b!511394 m!492923))

(declare-fun m!492933 () Bool)

(assert (=> b!511394 m!492933))

(assert (=> b!511394 m!492923))

(declare-fun m!492935 () Bool)

(assert (=> b!511394 m!492935))

(declare-fun m!492937 () Bool)

(assert (=> b!511391 m!492937))

(declare-fun m!492939 () Bool)

(assert (=> start!46216 m!492939))

(declare-fun m!492941 () Bool)

(assert (=> start!46216 m!492941))

(push 1)

