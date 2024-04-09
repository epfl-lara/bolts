; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46702 () Bool)

(assert start!46702)

(declare-fun res!314800 () Bool)

(declare-fun e!300770 () Bool)

(assert (=> start!46702 (=> (not res!314800) (not e!300770))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46702 (= res!314800 (validMask!0 mask!3524))))

(assert (=> start!46702 e!300770))

(assert (=> start!46702 true))

(declare-datatypes ((array!32974 0))(
  ( (array!32975 (arr!15852 (Array (_ BitVec 32) (_ BitVec 64))) (size!16216 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32974)

(declare-fun array_inv!11626 (array!32974) Bool)

(assert (=> start!46702 (array_inv!11626 a!3235)))

(declare-fun b!515086 () Bool)

(declare-fun e!300769 () Bool)

(assert (=> b!515086 (= e!300769 true)))

(declare-datatypes ((SeekEntryResult!4326 0))(
  ( (MissingZero!4326 (index!19492 (_ BitVec 32))) (Found!4326 (index!19493 (_ BitVec 32))) (Intermediate!4326 (undefined!5138 Bool) (index!19494 (_ BitVec 32)) (x!48492 (_ BitVec 32))) (Undefined!4326) (MissingVacant!4326 (index!19495 (_ BitVec 32))) )
))
(declare-fun lt!235854 () SeekEntryResult!4326)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!515086 (and (bvslt (x!48492 lt!235854) #b01111111111111111111111111111110) (or (= (select (arr!15852 a!3235) (index!19494 lt!235854)) (select (arr!15852 a!3235) j!176)) (= (select (arr!15852 a!3235) (index!19494 lt!235854)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15852 a!3235) (index!19494 lt!235854)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515087 () Bool)

(declare-fun e!300768 () Bool)

(assert (=> b!515087 (= e!300768 (not e!300769))))

(declare-fun res!314805 () Bool)

(assert (=> b!515087 (=> res!314805 e!300769)))

(declare-fun lt!235855 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32974 (_ BitVec 32)) SeekEntryResult!4326)

(assert (=> b!515087 (= res!314805 (= lt!235854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235855 (select (store (arr!15852 a!3235) i!1204 k!2280) j!176) (array!32975 (store (arr!15852 a!3235) i!1204 k!2280) (size!16216 a!3235)) mask!3524)))))

(declare-fun lt!235853 () (_ BitVec 32))

(assert (=> b!515087 (= lt!235854 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235853 (select (arr!15852 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515087 (= lt!235855 (toIndex!0 (select (store (arr!15852 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515087 (= lt!235853 (toIndex!0 (select (arr!15852 a!3235) j!176) mask!3524))))

(declare-fun e!300772 () Bool)

(assert (=> b!515087 e!300772))

(declare-fun res!314804 () Bool)

(assert (=> b!515087 (=> (not res!314804) (not e!300772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32974 (_ BitVec 32)) Bool)

(assert (=> b!515087 (= res!314804 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15902 0))(
  ( (Unit!15903) )
))
(declare-fun lt!235852 () Unit!15902)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32974 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15902)

(assert (=> b!515087 (= lt!235852 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515088 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32974 (_ BitVec 32)) SeekEntryResult!4326)

(assert (=> b!515088 (= e!300772 (= (seekEntryOrOpen!0 (select (arr!15852 a!3235) j!176) a!3235 mask!3524) (Found!4326 j!176)))))

(declare-fun b!515089 () Bool)

(declare-fun res!314803 () Bool)

(assert (=> b!515089 (=> (not res!314803) (not e!300768))))

(assert (=> b!515089 (= res!314803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515090 () Bool)

(declare-fun res!314806 () Bool)

(assert (=> b!515090 (=> (not res!314806) (not e!300770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515090 (= res!314806 (validKeyInArray!0 k!2280))))

(declare-fun b!515091 () Bool)

(declare-fun res!314807 () Bool)

(assert (=> b!515091 (=> (not res!314807) (not e!300768))))

(declare-datatypes ((List!10063 0))(
  ( (Nil!10060) (Cons!10059 (h!10957 (_ BitVec 64)) (t!16299 List!10063)) )
))
(declare-fun arrayNoDuplicates!0 (array!32974 (_ BitVec 32) List!10063) Bool)

(assert (=> b!515091 (= res!314807 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10060))))

(declare-fun b!515092 () Bool)

(declare-fun res!314808 () Bool)

(assert (=> b!515092 (=> (not res!314808) (not e!300770))))

(assert (=> b!515092 (= res!314808 (validKeyInArray!0 (select (arr!15852 a!3235) j!176)))))

(declare-fun b!515093 () Bool)

(declare-fun res!314801 () Bool)

(assert (=> b!515093 (=> (not res!314801) (not e!300770))))

(declare-fun arrayContainsKey!0 (array!32974 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515093 (= res!314801 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515094 () Bool)

(declare-fun res!314810 () Bool)

(assert (=> b!515094 (=> res!314810 e!300769)))

(assert (=> b!515094 (= res!314810 (or (undefined!5138 lt!235854) (not (is-Intermediate!4326 lt!235854))))))

(declare-fun b!515095 () Bool)

(assert (=> b!515095 (= e!300770 e!300768)))

(declare-fun res!314802 () Bool)

(assert (=> b!515095 (=> (not res!314802) (not e!300768))))

(declare-fun lt!235856 () SeekEntryResult!4326)

(assert (=> b!515095 (= res!314802 (or (= lt!235856 (MissingZero!4326 i!1204)) (= lt!235856 (MissingVacant!4326 i!1204))))))

(assert (=> b!515095 (= lt!235856 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515096 () Bool)

(declare-fun res!314809 () Bool)

(assert (=> b!515096 (=> (not res!314809) (not e!300770))))

(assert (=> b!515096 (= res!314809 (and (= (size!16216 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16216 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16216 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!46702 res!314800) b!515096))

(assert (= (and b!515096 res!314809) b!515092))

(assert (= (and b!515092 res!314808) b!515090))

(assert (= (and b!515090 res!314806) b!515093))

(assert (= (and b!515093 res!314801) b!515095))

(assert (= (and b!515095 res!314802) b!515089))

(assert (= (and b!515089 res!314803) b!515091))

(assert (= (and b!515091 res!314807) b!515087))

(assert (= (and b!515087 res!314804) b!515088))

(assert (= (and b!515087 (not res!314805)) b!515094))

(assert (= (and b!515094 (not res!314810)) b!515086))

(declare-fun m!496435 () Bool)

(assert (=> b!515086 m!496435))

(declare-fun m!496437 () Bool)

(assert (=> b!515086 m!496437))

(declare-fun m!496439 () Bool)

(assert (=> b!515095 m!496439))

(declare-fun m!496441 () Bool)

(assert (=> b!515091 m!496441))

(declare-fun m!496443 () Bool)

(assert (=> b!515089 m!496443))

(declare-fun m!496445 () Bool)

(assert (=> start!46702 m!496445))

(declare-fun m!496447 () Bool)

(assert (=> start!46702 m!496447))

(assert (=> b!515088 m!496437))

(assert (=> b!515088 m!496437))

(declare-fun m!496449 () Bool)

(assert (=> b!515088 m!496449))

(declare-fun m!496451 () Bool)

(assert (=> b!515087 m!496451))

(declare-fun m!496453 () Bool)

(assert (=> b!515087 m!496453))

(declare-fun m!496455 () Bool)

(assert (=> b!515087 m!496455))

(assert (=> b!515087 m!496437))

(declare-fun m!496457 () Bool)

(assert (=> b!515087 m!496457))

(assert (=> b!515087 m!496437))

(declare-fun m!496459 () Bool)

(assert (=> b!515087 m!496459))

(assert (=> b!515087 m!496437))

(declare-fun m!496461 () Bool)

(assert (=> b!515087 m!496461))

(assert (=> b!515087 m!496455))

(declare-fun m!496463 () Bool)

(assert (=> b!515087 m!496463))

(assert (=> b!515087 m!496455))

(declare-fun m!496465 () Bool)

(assert (=> b!515087 m!496465))

(declare-fun m!496467 () Bool)

(assert (=> b!515093 m!496467))

(declare-fun m!496469 () Bool)

(assert (=> b!515090 m!496469))

(assert (=> b!515092 m!496437))

(assert (=> b!515092 m!496437))

(declare-fun m!496471 () Bool)

(assert (=> b!515092 m!496471))

(push 1)

