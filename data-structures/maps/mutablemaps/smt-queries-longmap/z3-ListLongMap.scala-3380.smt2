; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46704 () Bool)

(assert start!46704)

(declare-fun b!515119 () Bool)

(declare-fun res!314842 () Bool)

(declare-fun e!300786 () Bool)

(assert (=> b!515119 (=> (not res!314842) (not e!300786))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515119 (= res!314842 (validKeyInArray!0 k0!2280))))

(declare-fun b!515120 () Bool)

(declare-fun res!314838 () Bool)

(declare-fun e!300784 () Bool)

(assert (=> b!515120 (=> (not res!314838) (not e!300784))))

(declare-datatypes ((array!32976 0))(
  ( (array!32977 (arr!15853 (Array (_ BitVec 32) (_ BitVec 64))) (size!16217 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32976)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32976 (_ BitVec 32)) Bool)

(assert (=> b!515120 (= res!314838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515121 () Bool)

(declare-fun res!314839 () Bool)

(assert (=> b!515121 (=> (not res!314839) (not e!300786))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!515121 (= res!314839 (validKeyInArray!0 (select (arr!15853 a!3235) j!176)))))

(declare-fun b!515122 () Bool)

(declare-fun res!314837 () Bool)

(assert (=> b!515122 (=> (not res!314837) (not e!300786))))

(declare-fun arrayContainsKey!0 (array!32976 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515122 (= res!314837 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun e!300787 () Bool)

(declare-fun b!515123 () Bool)

(declare-datatypes ((SeekEntryResult!4327 0))(
  ( (MissingZero!4327 (index!19496 (_ BitVec 32))) (Found!4327 (index!19497 (_ BitVec 32))) (Intermediate!4327 (undefined!5139 Bool) (index!19498 (_ BitVec 32)) (x!48493 (_ BitVec 32))) (Undefined!4327) (MissingVacant!4327 (index!19499 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32976 (_ BitVec 32)) SeekEntryResult!4327)

(assert (=> b!515123 (= e!300787 (= (seekEntryOrOpen!0 (select (arr!15853 a!3235) j!176) a!3235 mask!3524) (Found!4327 j!176)))))

(declare-fun b!515124 () Bool)

(declare-fun res!314840 () Bool)

(assert (=> b!515124 (=> (not res!314840) (not e!300784))))

(declare-datatypes ((List!10064 0))(
  ( (Nil!10061) (Cons!10060 (h!10958 (_ BitVec 64)) (t!16300 List!10064)) )
))
(declare-fun arrayNoDuplicates!0 (array!32976 (_ BitVec 32) List!10064) Bool)

(assert (=> b!515124 (= res!314840 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10061))))

(declare-fun b!515125 () Bool)

(declare-fun res!314835 () Bool)

(declare-fun e!300785 () Bool)

(assert (=> b!515125 (=> res!314835 e!300785)))

(declare-fun lt!235867 () SeekEntryResult!4327)

(get-info :version)

(assert (=> b!515125 (= res!314835 (or (undefined!5139 lt!235867) (not ((_ is Intermediate!4327) lt!235867))))))

(declare-fun b!515126 () Bool)

(assert (=> b!515126 (= e!300785 true)))

(assert (=> b!515126 (and (bvslt (x!48493 lt!235867) #b01111111111111111111111111111110) (or (= (select (arr!15853 a!3235) (index!19498 lt!235867)) (select (arr!15853 a!3235) j!176)) (= (select (arr!15853 a!3235) (index!19498 lt!235867)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15853 a!3235) (index!19498 lt!235867)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!314834 () Bool)

(assert (=> start!46704 (=> (not res!314834) (not e!300786))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46704 (= res!314834 (validMask!0 mask!3524))))

(assert (=> start!46704 e!300786))

(assert (=> start!46704 true))

(declare-fun array_inv!11627 (array!32976) Bool)

(assert (=> start!46704 (array_inv!11627 a!3235)))

(declare-fun b!515127 () Bool)

(assert (=> b!515127 (= e!300786 e!300784)))

(declare-fun res!314833 () Bool)

(assert (=> b!515127 (=> (not res!314833) (not e!300784))))

(declare-fun lt!235870 () SeekEntryResult!4327)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!515127 (= res!314833 (or (= lt!235870 (MissingZero!4327 i!1204)) (= lt!235870 (MissingVacant!4327 i!1204))))))

(assert (=> b!515127 (= lt!235870 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!515128 () Bool)

(assert (=> b!515128 (= e!300784 (not e!300785))))

(declare-fun res!314836 () Bool)

(assert (=> b!515128 (=> res!314836 e!300785)))

(declare-fun lt!235868 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32976 (_ BitVec 32)) SeekEntryResult!4327)

(assert (=> b!515128 (= res!314836 (= lt!235867 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235868 (select (store (arr!15853 a!3235) i!1204 k0!2280) j!176) (array!32977 (store (arr!15853 a!3235) i!1204 k0!2280) (size!16217 a!3235)) mask!3524)))))

(declare-fun lt!235871 () (_ BitVec 32))

(assert (=> b!515128 (= lt!235867 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235871 (select (arr!15853 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515128 (= lt!235868 (toIndex!0 (select (store (arr!15853 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!515128 (= lt!235871 (toIndex!0 (select (arr!15853 a!3235) j!176) mask!3524))))

(assert (=> b!515128 e!300787))

(declare-fun res!314841 () Bool)

(assert (=> b!515128 (=> (not res!314841) (not e!300787))))

(assert (=> b!515128 (= res!314841 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15904 0))(
  ( (Unit!15905) )
))
(declare-fun lt!235869 () Unit!15904)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32976 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15904)

(assert (=> b!515128 (= lt!235869 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515129 () Bool)

(declare-fun res!314843 () Bool)

(assert (=> b!515129 (=> (not res!314843) (not e!300786))))

(assert (=> b!515129 (= res!314843 (and (= (size!16217 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16217 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16217 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!46704 res!314834) b!515129))

(assert (= (and b!515129 res!314843) b!515121))

(assert (= (and b!515121 res!314839) b!515119))

(assert (= (and b!515119 res!314842) b!515122))

(assert (= (and b!515122 res!314837) b!515127))

(assert (= (and b!515127 res!314833) b!515120))

(assert (= (and b!515120 res!314838) b!515124))

(assert (= (and b!515124 res!314840) b!515128))

(assert (= (and b!515128 res!314841) b!515123))

(assert (= (and b!515128 (not res!314836)) b!515125))

(assert (= (and b!515125 (not res!314835)) b!515126))

(declare-fun m!496473 () Bool)

(assert (=> b!515122 m!496473))

(declare-fun m!496475 () Bool)

(assert (=> b!515126 m!496475))

(declare-fun m!496477 () Bool)

(assert (=> b!515126 m!496477))

(assert (=> b!515123 m!496477))

(assert (=> b!515123 m!496477))

(declare-fun m!496479 () Bool)

(assert (=> b!515123 m!496479))

(declare-fun m!496481 () Bool)

(assert (=> b!515128 m!496481))

(assert (=> b!515128 m!496477))

(declare-fun m!496483 () Bool)

(assert (=> b!515128 m!496483))

(declare-fun m!496485 () Bool)

(assert (=> b!515128 m!496485))

(declare-fun m!496487 () Bool)

(assert (=> b!515128 m!496487))

(assert (=> b!515128 m!496487))

(declare-fun m!496489 () Bool)

(assert (=> b!515128 m!496489))

(assert (=> b!515128 m!496477))

(declare-fun m!496491 () Bool)

(assert (=> b!515128 m!496491))

(assert (=> b!515128 m!496477))

(declare-fun m!496493 () Bool)

(assert (=> b!515128 m!496493))

(assert (=> b!515128 m!496487))

(declare-fun m!496495 () Bool)

(assert (=> b!515128 m!496495))

(declare-fun m!496497 () Bool)

(assert (=> b!515127 m!496497))

(declare-fun m!496499 () Bool)

(assert (=> b!515124 m!496499))

(declare-fun m!496501 () Bool)

(assert (=> b!515120 m!496501))

(assert (=> b!515121 m!496477))

(assert (=> b!515121 m!496477))

(declare-fun m!496503 () Bool)

(assert (=> b!515121 m!496503))

(declare-fun m!496505 () Bool)

(assert (=> b!515119 m!496505))

(declare-fun m!496507 () Bool)

(assert (=> start!46704 m!496507))

(declare-fun m!496509 () Bool)

(assert (=> start!46704 m!496509))

(check-sat (not b!515124) (not b!515120) (not b!515121) (not b!515122) (not b!515127) (not start!46704) (not b!515119) (not b!515128) (not b!515123))
(check-sat)
