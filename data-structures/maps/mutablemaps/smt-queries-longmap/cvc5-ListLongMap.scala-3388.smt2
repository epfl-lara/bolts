; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46750 () Bool)

(assert start!46750)

(declare-fun b!515878 () Bool)

(declare-fun res!315600 () Bool)

(declare-fun e!301131 () Bool)

(assert (=> b!515878 (=> (not res!315600) (not e!301131))))

(declare-datatypes ((array!33022 0))(
  ( (array!33023 (arr!15876 (Array (_ BitVec 32) (_ BitVec 64))) (size!16240 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33022)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515878 (= res!315600 (validKeyInArray!0 (select (arr!15876 a!3235) j!176)))))

(declare-fun b!515879 () Bool)

(declare-fun e!301128 () Bool)

(declare-fun e!301129 () Bool)

(assert (=> b!515879 (= e!301128 (not e!301129))))

(declare-fun res!315593 () Bool)

(assert (=> b!515879 (=> res!315593 e!301129)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4350 0))(
  ( (MissingZero!4350 (index!19588 (_ BitVec 32))) (Found!4350 (index!19589 (_ BitVec 32))) (Intermediate!4350 (undefined!5162 Bool) (index!19590 (_ BitVec 32)) (x!48580 (_ BitVec 32))) (Undefined!4350) (MissingVacant!4350 (index!19591 (_ BitVec 32))) )
))
(declare-fun lt!236215 () SeekEntryResult!4350)

(declare-fun lt!236212 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33022 (_ BitVec 32)) SeekEntryResult!4350)

(assert (=> b!515879 (= res!315593 (= lt!236215 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236212 (select (store (arr!15876 a!3235) i!1204 k!2280) j!176) (array!33023 (store (arr!15876 a!3235) i!1204 k!2280) (size!16240 a!3235)) mask!3524)))))

(declare-fun lt!236216 () (_ BitVec 32))

(assert (=> b!515879 (= lt!236215 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236216 (select (arr!15876 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515879 (= lt!236212 (toIndex!0 (select (store (arr!15876 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515879 (= lt!236216 (toIndex!0 (select (arr!15876 a!3235) j!176) mask!3524))))

(declare-fun e!301130 () Bool)

(assert (=> b!515879 e!301130))

(declare-fun res!315595 () Bool)

(assert (=> b!515879 (=> (not res!315595) (not e!301130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33022 (_ BitVec 32)) Bool)

(assert (=> b!515879 (= res!315595 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15950 0))(
  ( (Unit!15951) )
))
(declare-fun lt!236214 () Unit!15950)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33022 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15950)

(assert (=> b!515879 (= lt!236214 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515880 () Bool)

(declare-fun res!315592 () Bool)

(assert (=> b!515880 (=> (not res!315592) (not e!301131))))

(declare-fun arrayContainsKey!0 (array!33022 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515880 (= res!315592 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515881 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33022 (_ BitVec 32)) SeekEntryResult!4350)

(assert (=> b!515881 (= e!301130 (= (seekEntryOrOpen!0 (select (arr!15876 a!3235) j!176) a!3235 mask!3524) (Found!4350 j!176)))))

(declare-fun b!515882 () Bool)

(assert (=> b!515882 (= e!301129 true)))

(assert (=> b!515882 (and (bvslt (x!48580 lt!236215) #b01111111111111111111111111111110) (or (= (select (arr!15876 a!3235) (index!19590 lt!236215)) (select (arr!15876 a!3235) j!176)) (= (select (arr!15876 a!3235) (index!19590 lt!236215)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15876 a!3235) (index!19590 lt!236215)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!315602 () Bool)

(assert (=> start!46750 (=> (not res!315602) (not e!301131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46750 (= res!315602 (validMask!0 mask!3524))))

(assert (=> start!46750 e!301131))

(assert (=> start!46750 true))

(declare-fun array_inv!11650 (array!33022) Bool)

(assert (=> start!46750 (array_inv!11650 a!3235)))

(declare-fun b!515883 () Bool)

(declare-fun res!315601 () Bool)

(assert (=> b!515883 (=> (not res!315601) (not e!301131))))

(assert (=> b!515883 (= res!315601 (validKeyInArray!0 k!2280))))

(declare-fun b!515884 () Bool)

(declare-fun res!315599 () Bool)

(assert (=> b!515884 (=> (not res!315599) (not e!301128))))

(declare-datatypes ((List!10087 0))(
  ( (Nil!10084) (Cons!10083 (h!10981 (_ BitVec 64)) (t!16323 List!10087)) )
))
(declare-fun arrayNoDuplicates!0 (array!33022 (_ BitVec 32) List!10087) Bool)

(assert (=> b!515884 (= res!315599 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10084))))

(declare-fun b!515885 () Bool)

(declare-fun res!315596 () Bool)

(assert (=> b!515885 (=> (not res!315596) (not e!301128))))

(assert (=> b!515885 (= res!315596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515886 () Bool)

(declare-fun res!315597 () Bool)

(assert (=> b!515886 (=> res!315597 e!301129)))

(assert (=> b!515886 (= res!315597 (or (undefined!5162 lt!236215) (not (is-Intermediate!4350 lt!236215))))))

(declare-fun b!515887 () Bool)

(assert (=> b!515887 (= e!301131 e!301128)))

(declare-fun res!315594 () Bool)

(assert (=> b!515887 (=> (not res!315594) (not e!301128))))

(declare-fun lt!236213 () SeekEntryResult!4350)

(assert (=> b!515887 (= res!315594 (or (= lt!236213 (MissingZero!4350 i!1204)) (= lt!236213 (MissingVacant!4350 i!1204))))))

(assert (=> b!515887 (= lt!236213 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515888 () Bool)

(declare-fun res!315598 () Bool)

(assert (=> b!515888 (=> (not res!315598) (not e!301131))))

(assert (=> b!515888 (= res!315598 (and (= (size!16240 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16240 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16240 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!46750 res!315602) b!515888))

(assert (= (and b!515888 res!315598) b!515878))

(assert (= (and b!515878 res!315600) b!515883))

(assert (= (and b!515883 res!315601) b!515880))

(assert (= (and b!515880 res!315592) b!515887))

(assert (= (and b!515887 res!315594) b!515885))

(assert (= (and b!515885 res!315596) b!515884))

(assert (= (and b!515884 res!315599) b!515879))

(assert (= (and b!515879 res!315595) b!515881))

(assert (= (and b!515879 (not res!315593)) b!515886))

(assert (= (and b!515886 (not res!315597)) b!515882))

(declare-fun m!497347 () Bool)

(assert (=> b!515879 m!497347))

(declare-fun m!497349 () Bool)

(assert (=> b!515879 m!497349))

(assert (=> b!515879 m!497349))

(declare-fun m!497351 () Bool)

(assert (=> b!515879 m!497351))

(declare-fun m!497353 () Bool)

(assert (=> b!515879 m!497353))

(declare-fun m!497355 () Bool)

(assert (=> b!515879 m!497355))

(assert (=> b!515879 m!497353))

(declare-fun m!497357 () Bool)

(assert (=> b!515879 m!497357))

(assert (=> b!515879 m!497349))

(declare-fun m!497359 () Bool)

(assert (=> b!515879 m!497359))

(declare-fun m!497361 () Bool)

(assert (=> b!515879 m!497361))

(assert (=> b!515879 m!497353))

(declare-fun m!497363 () Bool)

(assert (=> b!515879 m!497363))

(declare-fun m!497365 () Bool)

(assert (=> start!46750 m!497365))

(declare-fun m!497367 () Bool)

(assert (=> start!46750 m!497367))

(assert (=> b!515881 m!497353))

(assert (=> b!515881 m!497353))

(declare-fun m!497369 () Bool)

(assert (=> b!515881 m!497369))

(declare-fun m!497371 () Bool)

(assert (=> b!515880 m!497371))

(assert (=> b!515878 m!497353))

(assert (=> b!515878 m!497353))

(declare-fun m!497373 () Bool)

(assert (=> b!515878 m!497373))

(declare-fun m!497375 () Bool)

(assert (=> b!515885 m!497375))

(declare-fun m!497377 () Bool)

(assert (=> b!515882 m!497377))

(assert (=> b!515882 m!497353))

(declare-fun m!497379 () Bool)

(assert (=> b!515884 m!497379))

(declare-fun m!497381 () Bool)

(assert (=> b!515883 m!497381))

(declare-fun m!497383 () Bool)

(assert (=> b!515887 m!497383))

(push 1)

