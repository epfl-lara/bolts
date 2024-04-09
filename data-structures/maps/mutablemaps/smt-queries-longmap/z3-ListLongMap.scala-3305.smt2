; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45786 () Bool)

(assert start!45786)

(declare-fun b!506392 () Bool)

(declare-fun res!307502 () Bool)

(declare-fun e!296393 () Bool)

(assert (=> b!506392 (=> (not res!307502) (not e!296393))))

(declare-datatypes ((array!32502 0))(
  ( (array!32503 (arr!15628 (Array (_ BitVec 32) (_ BitVec 64))) (size!15992 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32502)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506392 (= res!307502 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506393 () Bool)

(declare-fun res!307501 () Bool)

(assert (=> b!506393 (=> (not res!307501) (not e!296393))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!506393 (= res!307501 (and (= (size!15992 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15992 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15992 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506394 () Bool)

(declare-fun e!296392 () Bool)

(declare-fun e!296391 () Bool)

(assert (=> b!506394 (= e!296392 (not e!296391))))

(declare-fun res!307508 () Bool)

(assert (=> b!506394 (=> res!307508 e!296391)))

(declare-fun lt!231140 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4102 0))(
  ( (MissingZero!4102 (index!18596 (_ BitVec 32))) (Found!4102 (index!18597 (_ BitVec 32))) (Intermediate!4102 (undefined!4914 Bool) (index!18598 (_ BitVec 32)) (x!47626 (_ BitVec 32))) (Undefined!4102) (MissingVacant!4102 (index!18599 (_ BitVec 32))) )
))
(declare-fun lt!231139 () SeekEntryResult!4102)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32502 (_ BitVec 32)) SeekEntryResult!4102)

(assert (=> b!506394 (= res!307508 (= lt!231139 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231140 (select (store (arr!15628 a!3235) i!1204 k0!2280) j!176) (array!32503 (store (arr!15628 a!3235) i!1204 k0!2280) (size!15992 a!3235)) mask!3524)))))

(declare-fun lt!231135 () (_ BitVec 32))

(assert (=> b!506394 (= lt!231139 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231135 (select (arr!15628 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506394 (= lt!231140 (toIndex!0 (select (store (arr!15628 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!506394 (= lt!231135 (toIndex!0 (select (arr!15628 a!3235) j!176) mask!3524))))

(declare-fun e!296390 () Bool)

(assert (=> b!506394 e!296390))

(declare-fun res!307505 () Bool)

(assert (=> b!506394 (=> (not res!307505) (not e!296390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32502 (_ BitVec 32)) Bool)

(assert (=> b!506394 (= res!307505 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15484 0))(
  ( (Unit!15485) )
))
(declare-fun lt!231138 () Unit!15484)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32502 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15484)

(assert (=> b!506394 (= lt!231138 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506395 () Bool)

(declare-fun res!307506 () Bool)

(assert (=> b!506395 (=> (not res!307506) (not e!296393))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506395 (= res!307506 (validKeyInArray!0 (select (arr!15628 a!3235) j!176)))))

(declare-fun b!506396 () Bool)

(declare-fun res!307504 () Bool)

(assert (=> b!506396 (=> (not res!307504) (not e!296393))))

(assert (=> b!506396 (= res!307504 (validKeyInArray!0 k0!2280))))

(declare-fun b!506397 () Bool)

(assert (=> b!506397 (= e!296393 e!296392)))

(declare-fun res!307511 () Bool)

(assert (=> b!506397 (=> (not res!307511) (not e!296392))))

(declare-fun lt!231136 () SeekEntryResult!4102)

(assert (=> b!506397 (= res!307511 (or (= lt!231136 (MissingZero!4102 i!1204)) (= lt!231136 (MissingVacant!4102 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32502 (_ BitVec 32)) SeekEntryResult!4102)

(assert (=> b!506397 (= lt!231136 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!506398 () Bool)

(assert (=> b!506398 (= e!296390 (= (seekEntryOrOpen!0 (select (arr!15628 a!3235) j!176) a!3235 mask!3524) (Found!4102 j!176)))))

(declare-fun b!506399 () Bool)

(declare-fun e!296394 () Bool)

(assert (=> b!506399 (= e!296391 e!296394)))

(declare-fun res!307503 () Bool)

(assert (=> b!506399 (=> res!307503 e!296394)))

(declare-fun lt!231137 () Bool)

(assert (=> b!506399 (= res!307503 (or (and (not lt!231137) (undefined!4914 lt!231139)) (and (not lt!231137) (not (undefined!4914 lt!231139)))))))

(get-info :version)

(assert (=> b!506399 (= lt!231137 (not ((_ is Intermediate!4102) lt!231139)))))

(declare-fun b!506401 () Bool)

(declare-fun res!307507 () Bool)

(assert (=> b!506401 (=> (not res!307507) (not e!296392))))

(declare-datatypes ((List!9839 0))(
  ( (Nil!9836) (Cons!9835 (h!10712 (_ BitVec 64)) (t!16075 List!9839)) )
))
(declare-fun arrayNoDuplicates!0 (array!32502 (_ BitVec 32) List!9839) Bool)

(assert (=> b!506401 (= res!307507 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9836))))

(declare-fun b!506402 () Bool)

(assert (=> b!506402 (= e!296394 true)))

(assert (=> b!506402 false))

(declare-fun res!307510 () Bool)

(assert (=> start!45786 (=> (not res!307510) (not e!296393))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45786 (= res!307510 (validMask!0 mask!3524))))

(assert (=> start!45786 e!296393))

(assert (=> start!45786 true))

(declare-fun array_inv!11402 (array!32502) Bool)

(assert (=> start!45786 (array_inv!11402 a!3235)))

(declare-fun b!506400 () Bool)

(declare-fun res!307509 () Bool)

(assert (=> b!506400 (=> (not res!307509) (not e!296392))))

(assert (=> b!506400 (= res!307509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45786 res!307510) b!506393))

(assert (= (and b!506393 res!307501) b!506395))

(assert (= (and b!506395 res!307506) b!506396))

(assert (= (and b!506396 res!307504) b!506392))

(assert (= (and b!506392 res!307502) b!506397))

(assert (= (and b!506397 res!307511) b!506400))

(assert (= (and b!506400 res!307509) b!506401))

(assert (= (and b!506401 res!307507) b!506394))

(assert (= (and b!506394 res!307505) b!506398))

(assert (= (and b!506394 (not res!307508)) b!506399))

(assert (= (and b!506399 (not res!307503)) b!506402))

(declare-fun m!487105 () Bool)

(assert (=> b!506395 m!487105))

(assert (=> b!506395 m!487105))

(declare-fun m!487107 () Bool)

(assert (=> b!506395 m!487107))

(declare-fun m!487109 () Bool)

(assert (=> b!506394 m!487109))

(declare-fun m!487111 () Bool)

(assert (=> b!506394 m!487111))

(declare-fun m!487113 () Bool)

(assert (=> b!506394 m!487113))

(assert (=> b!506394 m!487109))

(assert (=> b!506394 m!487105))

(declare-fun m!487115 () Bool)

(assert (=> b!506394 m!487115))

(assert (=> b!506394 m!487105))

(declare-fun m!487117 () Bool)

(assert (=> b!506394 m!487117))

(assert (=> b!506394 m!487109))

(declare-fun m!487119 () Bool)

(assert (=> b!506394 m!487119))

(declare-fun m!487121 () Bool)

(assert (=> b!506394 m!487121))

(assert (=> b!506394 m!487105))

(declare-fun m!487123 () Bool)

(assert (=> b!506394 m!487123))

(declare-fun m!487125 () Bool)

(assert (=> b!506396 m!487125))

(declare-fun m!487127 () Bool)

(assert (=> b!506397 m!487127))

(assert (=> b!506398 m!487105))

(assert (=> b!506398 m!487105))

(declare-fun m!487129 () Bool)

(assert (=> b!506398 m!487129))

(declare-fun m!487131 () Bool)

(assert (=> b!506400 m!487131))

(declare-fun m!487133 () Bool)

(assert (=> b!506392 m!487133))

(declare-fun m!487135 () Bool)

(assert (=> b!506401 m!487135))

(declare-fun m!487137 () Bool)

(assert (=> start!45786 m!487137))

(declare-fun m!487139 () Bool)

(assert (=> start!45786 m!487139))

(check-sat (not start!45786) (not b!506398) (not b!506396) (not b!506394) (not b!506400) (not b!506401) (not b!506392) (not b!506397) (not b!506395))
(check-sat)
