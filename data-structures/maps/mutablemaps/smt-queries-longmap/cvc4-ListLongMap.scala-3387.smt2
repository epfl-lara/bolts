; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46748 () Bool)

(assert start!46748)

(declare-fun b!515845 () Bool)

(declare-fun res!315565 () Bool)

(declare-fun e!301114 () Bool)

(assert (=> b!515845 (=> (not res!315565) (not e!301114))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!33020 0))(
  ( (array!33021 (arr!15875 (Array (_ BitVec 32) (_ BitVec 64))) (size!16239 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33020)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!515845 (= res!315565 (and (= (size!16239 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16239 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16239 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515846 () Bool)

(declare-fun res!315563 () Bool)

(declare-fun e!301117 () Bool)

(assert (=> b!515846 (=> (not res!315563) (not e!301117))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33020 (_ BitVec 32)) Bool)

(assert (=> b!515846 (= res!315563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515847 () Bool)

(declare-fun e!301115 () Bool)

(assert (=> b!515847 (= e!301117 (not e!301115))))

(declare-fun res!315559 () Bool)

(assert (=> b!515847 (=> res!315559 e!301115)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!236199 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4349 0))(
  ( (MissingZero!4349 (index!19584 (_ BitVec 32))) (Found!4349 (index!19585 (_ BitVec 32))) (Intermediate!4349 (undefined!5161 Bool) (index!19586 (_ BitVec 32)) (x!48571 (_ BitVec 32))) (Undefined!4349) (MissingVacant!4349 (index!19587 (_ BitVec 32))) )
))
(declare-fun lt!236201 () SeekEntryResult!4349)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33020 (_ BitVec 32)) SeekEntryResult!4349)

(assert (=> b!515847 (= res!315559 (= lt!236201 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236199 (select (store (arr!15875 a!3235) i!1204 k!2280) j!176) (array!33021 (store (arr!15875 a!3235) i!1204 k!2280) (size!16239 a!3235)) mask!3524)))))

(declare-fun lt!236198 () (_ BitVec 32))

(assert (=> b!515847 (= lt!236201 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236198 (select (arr!15875 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515847 (= lt!236199 (toIndex!0 (select (store (arr!15875 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515847 (= lt!236198 (toIndex!0 (select (arr!15875 a!3235) j!176) mask!3524))))

(declare-fun e!301113 () Bool)

(assert (=> b!515847 e!301113))

(declare-fun res!315568 () Bool)

(assert (=> b!515847 (=> (not res!315568) (not e!301113))))

(assert (=> b!515847 (= res!315568 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15948 0))(
  ( (Unit!15949) )
))
(declare-fun lt!236200 () Unit!15948)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33020 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15948)

(assert (=> b!515847 (= lt!236200 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515848 () Bool)

(assert (=> b!515848 (= e!301115 true)))

(assert (=> b!515848 (and (bvslt (x!48571 lt!236201) #b01111111111111111111111111111110) (or (= (select (arr!15875 a!3235) (index!19586 lt!236201)) (select (arr!15875 a!3235) j!176)) (= (select (arr!15875 a!3235) (index!19586 lt!236201)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15875 a!3235) (index!19586 lt!236201)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515849 () Bool)

(assert (=> b!515849 (= e!301114 e!301117)))

(declare-fun res!315564 () Bool)

(assert (=> b!515849 (=> (not res!315564) (not e!301117))))

(declare-fun lt!236197 () SeekEntryResult!4349)

(assert (=> b!515849 (= res!315564 (or (= lt!236197 (MissingZero!4349 i!1204)) (= lt!236197 (MissingVacant!4349 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33020 (_ BitVec 32)) SeekEntryResult!4349)

(assert (=> b!515849 (= lt!236197 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!315560 () Bool)

(assert (=> start!46748 (=> (not res!315560) (not e!301114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46748 (= res!315560 (validMask!0 mask!3524))))

(assert (=> start!46748 e!301114))

(assert (=> start!46748 true))

(declare-fun array_inv!11649 (array!33020) Bool)

(assert (=> start!46748 (array_inv!11649 a!3235)))

(declare-fun b!515850 () Bool)

(declare-fun res!315566 () Bool)

(assert (=> b!515850 (=> (not res!315566) (not e!301117))))

(declare-datatypes ((List!10086 0))(
  ( (Nil!10083) (Cons!10082 (h!10980 (_ BitVec 64)) (t!16322 List!10086)) )
))
(declare-fun arrayNoDuplicates!0 (array!33020 (_ BitVec 32) List!10086) Bool)

(assert (=> b!515850 (= res!315566 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10083))))

(declare-fun b!515851 () Bool)

(declare-fun res!315569 () Bool)

(assert (=> b!515851 (=> (not res!315569) (not e!301114))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515851 (= res!315569 (validKeyInArray!0 k!2280))))

(declare-fun b!515852 () Bool)

(assert (=> b!515852 (= e!301113 (= (seekEntryOrOpen!0 (select (arr!15875 a!3235) j!176) a!3235 mask!3524) (Found!4349 j!176)))))

(declare-fun b!515853 () Bool)

(declare-fun res!315562 () Bool)

(assert (=> b!515853 (=> (not res!315562) (not e!301114))))

(assert (=> b!515853 (= res!315562 (validKeyInArray!0 (select (arr!15875 a!3235) j!176)))))

(declare-fun b!515854 () Bool)

(declare-fun res!315567 () Bool)

(assert (=> b!515854 (=> res!315567 e!301115)))

(assert (=> b!515854 (= res!315567 (or (undefined!5161 lt!236201) (not (is-Intermediate!4349 lt!236201))))))

(declare-fun b!515855 () Bool)

(declare-fun res!315561 () Bool)

(assert (=> b!515855 (=> (not res!315561) (not e!301114))))

(declare-fun arrayContainsKey!0 (array!33020 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515855 (= res!315561 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46748 res!315560) b!515845))

(assert (= (and b!515845 res!315565) b!515853))

(assert (= (and b!515853 res!315562) b!515851))

(assert (= (and b!515851 res!315569) b!515855))

(assert (= (and b!515855 res!315561) b!515849))

(assert (= (and b!515849 res!315564) b!515846))

(assert (= (and b!515846 res!315563) b!515850))

(assert (= (and b!515850 res!315566) b!515847))

(assert (= (and b!515847 res!315568) b!515852))

(assert (= (and b!515847 (not res!315559)) b!515854))

(assert (= (and b!515854 (not res!315567)) b!515848))

(declare-fun m!497309 () Bool)

(assert (=> b!515847 m!497309))

(declare-fun m!497311 () Bool)

(assert (=> b!515847 m!497311))

(declare-fun m!497313 () Bool)

(assert (=> b!515847 m!497313))

(declare-fun m!497315 () Bool)

(assert (=> b!515847 m!497315))

(assert (=> b!515847 m!497309))

(declare-fun m!497317 () Bool)

(assert (=> b!515847 m!497317))

(declare-fun m!497319 () Bool)

(assert (=> b!515847 m!497319))

(assert (=> b!515847 m!497317))

(declare-fun m!497321 () Bool)

(assert (=> b!515847 m!497321))

(assert (=> b!515847 m!497317))

(declare-fun m!497323 () Bool)

(assert (=> b!515847 m!497323))

(assert (=> b!515847 m!497309))

(declare-fun m!497325 () Bool)

(assert (=> b!515847 m!497325))

(declare-fun m!497327 () Bool)

(assert (=> b!515846 m!497327))

(declare-fun m!497329 () Bool)

(assert (=> b!515850 m!497329))

(assert (=> b!515852 m!497317))

(assert (=> b!515852 m!497317))

(declare-fun m!497331 () Bool)

(assert (=> b!515852 m!497331))

(assert (=> b!515853 m!497317))

(assert (=> b!515853 m!497317))

(declare-fun m!497333 () Bool)

(assert (=> b!515853 m!497333))

(declare-fun m!497335 () Bool)

(assert (=> b!515849 m!497335))

(declare-fun m!497337 () Bool)

(assert (=> start!46748 m!497337))

(declare-fun m!497339 () Bool)

(assert (=> start!46748 m!497339))

(declare-fun m!497341 () Bool)

(assert (=> b!515851 m!497341))

(declare-fun m!497343 () Bool)

(assert (=> b!515855 m!497343))

(declare-fun m!497345 () Bool)

(assert (=> b!515848 m!497345))

(assert (=> b!515848 m!497317))

(push 1)

