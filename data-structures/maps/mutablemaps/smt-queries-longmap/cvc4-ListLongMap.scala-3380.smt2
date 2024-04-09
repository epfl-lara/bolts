; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46706 () Bool)

(assert start!46706)

(declare-fun b!515152 () Bool)

(declare-fun res!314870 () Bool)

(declare-fun e!300799 () Bool)

(assert (=> b!515152 (=> (not res!314870) (not e!300799))))

(declare-datatypes ((array!32978 0))(
  ( (array!32979 (arr!15854 (Array (_ BitVec 32) (_ BitVec 64))) (size!16218 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32978)

(declare-datatypes ((List!10065 0))(
  ( (Nil!10062) (Cons!10061 (h!10959 (_ BitVec 64)) (t!16301 List!10065)) )
))
(declare-fun arrayNoDuplicates!0 (array!32978 (_ BitVec 32) List!10065) Bool)

(assert (=> b!515152 (= res!314870 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10062))))

(declare-fun b!515153 () Bool)

(declare-fun res!314868 () Bool)

(declare-fun e!300798 () Bool)

(assert (=> b!515153 (=> (not res!314868) (not e!300798))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!515153 (= res!314868 (and (= (size!16218 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16218 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16218 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!515154 () Bool)

(declare-fun res!314873 () Bool)

(assert (=> b!515154 (=> (not res!314873) (not e!300799))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32978 (_ BitVec 32)) Bool)

(assert (=> b!515154 (= res!314873 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!515155 () Bool)

(declare-fun res!314872 () Bool)

(assert (=> b!515155 (=> (not res!314872) (not e!300798))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32978 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!515155 (= res!314872 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!515156 () Bool)

(declare-fun res!314871 () Bool)

(declare-fun e!300801 () Bool)

(assert (=> b!515156 (=> res!314871 e!300801)))

(declare-datatypes ((SeekEntryResult!4328 0))(
  ( (MissingZero!4328 (index!19500 (_ BitVec 32))) (Found!4328 (index!19501 (_ BitVec 32))) (Intermediate!4328 (undefined!5140 Bool) (index!19502 (_ BitVec 32)) (x!48494 (_ BitVec 32))) (Undefined!4328) (MissingVacant!4328 (index!19503 (_ BitVec 32))) )
))
(declare-fun lt!235885 () SeekEntryResult!4328)

(assert (=> b!515156 (= res!314871 (or (undefined!5140 lt!235885) (not (is-Intermediate!4328 lt!235885))))))

(declare-fun b!515157 () Bool)

(assert (=> b!515157 (= e!300799 (not e!300801))))

(declare-fun res!314876 () Bool)

(assert (=> b!515157 (=> res!314876 e!300801)))

(declare-fun lt!235884 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32978 (_ BitVec 32)) SeekEntryResult!4328)

(assert (=> b!515157 (= res!314876 (= lt!235885 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235884 (select (store (arr!15854 a!3235) i!1204 k!2280) j!176) (array!32979 (store (arr!15854 a!3235) i!1204 k!2280) (size!16218 a!3235)) mask!3524)))))

(declare-fun lt!235886 () (_ BitVec 32))

(assert (=> b!515157 (= lt!235885 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235886 (select (arr!15854 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!515157 (= lt!235884 (toIndex!0 (select (store (arr!15854 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!515157 (= lt!235886 (toIndex!0 (select (arr!15854 a!3235) j!176) mask!3524))))

(declare-fun e!300800 () Bool)

(assert (=> b!515157 e!300800))

(declare-fun res!314874 () Bool)

(assert (=> b!515157 (=> (not res!314874) (not e!300800))))

(assert (=> b!515157 (= res!314874 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15906 0))(
  ( (Unit!15907) )
))
(declare-fun lt!235883 () Unit!15906)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32978 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15906)

(assert (=> b!515157 (= lt!235883 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!515158 () Bool)

(declare-fun res!314869 () Bool)

(assert (=> b!515158 (=> (not res!314869) (not e!300798))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!515158 (= res!314869 (validKeyInArray!0 (select (arr!15854 a!3235) j!176)))))

(declare-fun res!314866 () Bool)

(assert (=> start!46706 (=> (not res!314866) (not e!300798))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46706 (= res!314866 (validMask!0 mask!3524))))

(assert (=> start!46706 e!300798))

(assert (=> start!46706 true))

(declare-fun array_inv!11628 (array!32978) Bool)

(assert (=> start!46706 (array_inv!11628 a!3235)))

(declare-fun b!515159 () Bool)

(assert (=> b!515159 (= e!300798 e!300799)))

(declare-fun res!314875 () Bool)

(assert (=> b!515159 (=> (not res!314875) (not e!300799))))

(declare-fun lt!235882 () SeekEntryResult!4328)

(assert (=> b!515159 (= res!314875 (or (= lt!235882 (MissingZero!4328 i!1204)) (= lt!235882 (MissingVacant!4328 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32978 (_ BitVec 32)) SeekEntryResult!4328)

(assert (=> b!515159 (= lt!235882 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!515160 () Bool)

(declare-fun res!314867 () Bool)

(assert (=> b!515160 (=> (not res!314867) (not e!300798))))

(assert (=> b!515160 (= res!314867 (validKeyInArray!0 k!2280))))

(declare-fun b!515161 () Bool)

(assert (=> b!515161 (= e!300801 true)))

(assert (=> b!515161 (and (bvslt (x!48494 lt!235885) #b01111111111111111111111111111110) (or (= (select (arr!15854 a!3235) (index!19502 lt!235885)) (select (arr!15854 a!3235) j!176)) (= (select (arr!15854 a!3235) (index!19502 lt!235885)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15854 a!3235) (index!19502 lt!235885)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!515162 () Bool)

(assert (=> b!515162 (= e!300800 (= (seekEntryOrOpen!0 (select (arr!15854 a!3235) j!176) a!3235 mask!3524) (Found!4328 j!176)))))

(assert (= (and start!46706 res!314866) b!515153))

(assert (= (and b!515153 res!314868) b!515158))

(assert (= (and b!515158 res!314869) b!515160))

(assert (= (and b!515160 res!314867) b!515155))

(assert (= (and b!515155 res!314872) b!515159))

(assert (= (and b!515159 res!314875) b!515154))

(assert (= (and b!515154 res!314873) b!515152))

(assert (= (and b!515152 res!314870) b!515157))

(assert (= (and b!515157 res!314874) b!515162))

(assert (= (and b!515157 (not res!314876)) b!515156))

(assert (= (and b!515156 (not res!314871)) b!515161))

(declare-fun m!496511 () Bool)

(assert (=> b!515155 m!496511))

(declare-fun m!496513 () Bool)

(assert (=> b!515152 m!496513))

(declare-fun m!496515 () Bool)

(assert (=> start!46706 m!496515))

(declare-fun m!496517 () Bool)

(assert (=> start!46706 m!496517))

(declare-fun m!496519 () Bool)

(assert (=> b!515162 m!496519))

(assert (=> b!515162 m!496519))

(declare-fun m!496521 () Bool)

(assert (=> b!515162 m!496521))

(declare-fun m!496523 () Bool)

(assert (=> b!515157 m!496523))

(declare-fun m!496525 () Bool)

(assert (=> b!515157 m!496525))

(assert (=> b!515157 m!496519))

(declare-fun m!496527 () Bool)

(assert (=> b!515157 m!496527))

(assert (=> b!515157 m!496519))

(declare-fun m!496529 () Bool)

(assert (=> b!515157 m!496529))

(declare-fun m!496531 () Bool)

(assert (=> b!515157 m!496531))

(declare-fun m!496533 () Bool)

(assert (=> b!515157 m!496533))

(assert (=> b!515157 m!496519))

(declare-fun m!496535 () Bool)

(assert (=> b!515157 m!496535))

(assert (=> b!515157 m!496531))

(declare-fun m!496537 () Bool)

(assert (=> b!515157 m!496537))

(assert (=> b!515157 m!496531))

(declare-fun m!496539 () Bool)

(assert (=> b!515161 m!496539))

(assert (=> b!515161 m!496519))

(assert (=> b!515158 m!496519))

(assert (=> b!515158 m!496519))

(declare-fun m!496541 () Bool)

(assert (=> b!515158 m!496541))

(declare-fun m!496543 () Bool)

(assert (=> b!515154 m!496543))

(declare-fun m!496545 () Bool)

(assert (=> b!515160 m!496545))

(declare-fun m!496547 () Bool)

(assert (=> b!515159 m!496547))

(push 1)

