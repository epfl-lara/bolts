; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46718 () Bool)

(assert start!46718)

(declare-fun b!515350 () Bool)

(declare-fun res!315069 () Bool)

(declare-fun e!300888 () Bool)

(assert (=> b!515350 (=> (not res!315069) (not e!300888))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515350 (= res!315069 (validKeyInArray!0 k!2280))))

(declare-fun b!515351 () Bool)

(declare-fun res!315072 () Bool)

(declare-fun e!300890 () Bool)

(assert (=> b!515351 (=> (not res!315072) (not e!300890))))

(declare-datatypes ((array!32990 0))(
  ( (array!32991 (arr!15860 (Array (_ BitVec 32) (_ BitVec 64))) (size!16224 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32990)

(declare-datatypes ((List!10071 0))(
  ( (Nil!10068) (Cons!10067 (h!10965 (_ BitVec 64)) (t!16307 List!10071)) )
))
(declare-fun arrayNoDuplicates!0 (array!32990 (_ BitVec 32) List!10071) Bool)

(assert (=> b!515351 (= res!315072 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10068))))

(declare-fun b!515352 () Bool)

(declare-fun res!315065 () Bool)

(assert (=> b!515352 (=> (not res!315065) (not e!300888))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!515352 (= res!315065 (validKeyInArray!0 (select (arr!15860 a!3235) j!176)))))

(declare-fun b!515353 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!300891 () Bool)

(declare-datatypes ((SeekEntryResult!4334 0))(
  ( (MissingZero!4334 (index!19524 (_ BitVec 32))) (Found!4334 (index!19525 (_ BitVec 32))) (Intermediate!4334 (undefined!5146 Bool) (index!19526 (_ BitVec 32)) (x!48516 (_ BitVec 32))) (Undefined!4334) (MissingVacant!4334 (index!19527 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32990 (_ BitVec 32)) SeekEntryResult!4334)

(assert (=> b!515353 (= e!300891 (= (seekEntryOrOpen!0 (select (arr!15860 a!3235) j!176) a!3235 mask!3524) (Found!4334 j!176)))))

(declare-fun b!515354 () Bool)

(declare-fun res!315067 () Bool)

(assert (=> b!515354 (=> (not res!315067) (not e!300888))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!515354 (= res!315067 (and (= (size!16224 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16224 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16224 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515355 () Bool)

(declare-fun res!315070 () Bool)

(assert (=> b!515355 (=> (not res!315070) (not e!300890))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32990 (_ BitVec 32)) Bool)

(assert (=> b!515355 (= res!315070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515356 () Bool)

(declare-fun e!300892 () Bool)

(assert (=> b!515356 (= e!300890 (not e!300892))))

(declare-fun res!315073 () Bool)

(assert (=> b!515356 (=> res!315073 e!300892)))

(declare-fun lt!235976 () (_ BitVec 32))

(declare-fun lt!235975 () SeekEntryResult!4334)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32990 (_ BitVec 32)) SeekEntryResult!4334)

(assert (=> b!515356 (= res!315073 (= lt!235975 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235976 (select (store (arr!15860 a!3235) i!1204 k!2280) j!176) (array!32991 (store (arr!15860 a!3235) i!1204 k!2280) (size!16224 a!3235)) mask!3524)))))

(declare-fun lt!235972 () (_ BitVec 32))

(assert (=> b!515356 (= lt!235975 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235972 (select (arr!15860 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515356 (= lt!235976 (toIndex!0 (select (store (arr!15860 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515356 (= lt!235972 (toIndex!0 (select (arr!15860 a!3235) j!176) mask!3524))))

(assert (=> b!515356 e!300891))

(declare-fun res!315064 () Bool)

(assert (=> b!515356 (=> (not res!315064) (not e!300891))))

(assert (=> b!515356 (= res!315064 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15918 0))(
  ( (Unit!15919) )
))
(declare-fun lt!235973 () Unit!15918)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32990 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15918)

(assert (=> b!515356 (= lt!235973 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!315068 () Bool)

(assert (=> start!46718 (=> (not res!315068) (not e!300888))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46718 (= res!315068 (validMask!0 mask!3524))))

(assert (=> start!46718 e!300888))

(assert (=> start!46718 true))

(declare-fun array_inv!11634 (array!32990) Bool)

(assert (=> start!46718 (array_inv!11634 a!3235)))

(declare-fun b!515357 () Bool)

(declare-fun res!315071 () Bool)

(assert (=> b!515357 (=> res!315071 e!300892)))

(assert (=> b!515357 (= res!315071 (or (undefined!5146 lt!235975) (not (is-Intermediate!4334 lt!235975))))))

(declare-fun b!515358 () Bool)

(declare-fun res!315066 () Bool)

(assert (=> b!515358 (=> (not res!315066) (not e!300888))))

(declare-fun arrayContainsKey!0 (array!32990 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515358 (= res!315066 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515359 () Bool)

(assert (=> b!515359 (= e!300888 e!300890)))

(declare-fun res!315074 () Bool)

(assert (=> b!515359 (=> (not res!315074) (not e!300890))))

(declare-fun lt!235974 () SeekEntryResult!4334)

(assert (=> b!515359 (= res!315074 (or (= lt!235974 (MissingZero!4334 i!1204)) (= lt!235974 (MissingVacant!4334 i!1204))))))

(assert (=> b!515359 (= lt!235974 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515360 () Bool)

(assert (=> b!515360 (= e!300892 true)))

(assert (=> b!515360 (and (bvslt (x!48516 lt!235975) #b01111111111111111111111111111110) (or (= (select (arr!15860 a!3235) (index!19526 lt!235975)) (select (arr!15860 a!3235) j!176)) (= (select (arr!15860 a!3235) (index!19526 lt!235975)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15860 a!3235) (index!19526 lt!235975)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!46718 res!315068) b!515354))

(assert (= (and b!515354 res!315067) b!515352))

(assert (= (and b!515352 res!315065) b!515350))

(assert (= (and b!515350 res!315069) b!515358))

(assert (= (and b!515358 res!315066) b!515359))

(assert (= (and b!515359 res!315074) b!515355))

(assert (= (and b!515355 res!315070) b!515351))

(assert (= (and b!515351 res!315072) b!515356))

(assert (= (and b!515356 res!315064) b!515353))

(assert (= (and b!515356 (not res!315073)) b!515357))

(assert (= (and b!515357 (not res!315071)) b!515360))

(declare-fun m!496739 () Bool)

(assert (=> start!46718 m!496739))

(declare-fun m!496741 () Bool)

(assert (=> start!46718 m!496741))

(declare-fun m!496743 () Bool)

(assert (=> b!515350 m!496743))

(declare-fun m!496745 () Bool)

(assert (=> b!515359 m!496745))

(declare-fun m!496747 () Bool)

(assert (=> b!515351 m!496747))

(declare-fun m!496749 () Bool)

(assert (=> b!515352 m!496749))

(assert (=> b!515352 m!496749))

(declare-fun m!496751 () Bool)

(assert (=> b!515352 m!496751))

(declare-fun m!496753 () Bool)

(assert (=> b!515355 m!496753))

(declare-fun m!496755 () Bool)

(assert (=> b!515356 m!496755))

(declare-fun m!496757 () Bool)

(assert (=> b!515356 m!496757))

(assert (=> b!515356 m!496749))

(declare-fun m!496759 () Bool)

(assert (=> b!515356 m!496759))

(assert (=> b!515356 m!496757))

(declare-fun m!496761 () Bool)

(assert (=> b!515356 m!496761))

(assert (=> b!515356 m!496749))

(declare-fun m!496763 () Bool)

(assert (=> b!515356 m!496763))

(declare-fun m!496765 () Bool)

(assert (=> b!515356 m!496765))

(assert (=> b!515356 m!496749))

(declare-fun m!496767 () Bool)

(assert (=> b!515356 m!496767))

(assert (=> b!515356 m!496757))

(declare-fun m!496769 () Bool)

(assert (=> b!515356 m!496769))

(assert (=> b!515353 m!496749))

(assert (=> b!515353 m!496749))

(declare-fun m!496771 () Bool)

(assert (=> b!515353 m!496771))

(declare-fun m!496773 () Bool)

(assert (=> b!515358 m!496773))

(declare-fun m!496775 () Bool)

(assert (=> b!515360 m!496775))

(assert (=> b!515360 m!496749))

(push 1)

