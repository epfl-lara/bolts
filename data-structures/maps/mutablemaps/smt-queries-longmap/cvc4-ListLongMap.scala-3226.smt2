; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45176 () Bool)

(assert start!45176)

(declare-fun b!495367 () Bool)

(declare-fun e!290620 () Bool)

(assert (=> b!495367 (= e!290620 true)))

(declare-datatypes ((SeekEntryResult!3866 0))(
  ( (MissingZero!3866 (index!17643 (_ BitVec 32))) (Found!3866 (index!17644 (_ BitVec 32))) (Intermediate!3866 (undefined!4678 Bool) (index!17645 (_ BitVec 32)) (x!46737 (_ BitVec 32))) (Undefined!3866) (MissingVacant!3866 (index!17646 (_ BitVec 32))) )
))
(declare-fun lt!224305 () SeekEntryResult!3866)

(declare-datatypes ((array!32024 0))(
  ( (array!32025 (arr!15392 (Array (_ BitVec 32) (_ BitVec 64))) (size!15756 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32024)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!495367 (and (bvslt (x!46737 lt!224305) #b01111111111111111111111111111110) (or (= (select (arr!15392 a!3235) (index!17645 lt!224305)) (select (arr!15392 a!3235) j!176)) (= (select (arr!15392 a!3235) (index!17645 lt!224305)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15392 a!3235) (index!17645 lt!224305)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495368 () Bool)

(declare-fun res!297908 () Bool)

(declare-fun e!290618 () Bool)

(assert (=> b!495368 (=> (not res!297908) (not e!290618))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!495368 (= res!297908 (and (= (size!15756 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15756 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15756 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495369 () Bool)

(declare-fun res!297906 () Bool)

(assert (=> b!495369 (=> (not res!297906) (not e!290618))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495369 (= res!297906 (validKeyInArray!0 k!2280))))

(declare-fun res!297912 () Bool)

(assert (=> start!45176 (=> (not res!297912) (not e!290618))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45176 (= res!297912 (validMask!0 mask!3524))))

(assert (=> start!45176 e!290618))

(assert (=> start!45176 true))

(declare-fun array_inv!11166 (array!32024) Bool)

(assert (=> start!45176 (array_inv!11166 a!3235)))

(declare-fun b!495370 () Bool)

(declare-fun e!290617 () Bool)

(assert (=> b!495370 (= e!290617 (not e!290620))))

(declare-fun res!297914 () Bool)

(assert (=> b!495370 (=> res!297914 e!290620)))

(declare-fun lt!224308 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32024 (_ BitVec 32)) SeekEntryResult!3866)

(assert (=> b!495370 (= res!297914 (= lt!224305 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224308 (select (store (arr!15392 a!3235) i!1204 k!2280) j!176) (array!32025 (store (arr!15392 a!3235) i!1204 k!2280) (size!15756 a!3235)) mask!3524)))))

(declare-fun lt!224309 () (_ BitVec 32))

(assert (=> b!495370 (= lt!224305 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224309 (select (arr!15392 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495370 (= lt!224308 (toIndex!0 (select (store (arr!15392 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!495370 (= lt!224309 (toIndex!0 (select (arr!15392 a!3235) j!176) mask!3524))))

(declare-fun e!290619 () Bool)

(assert (=> b!495370 e!290619))

(declare-fun res!297911 () Bool)

(assert (=> b!495370 (=> (not res!297911) (not e!290619))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32024 (_ BitVec 32)) Bool)

(assert (=> b!495370 (= res!297911 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14670 0))(
  ( (Unit!14671) )
))
(declare-fun lt!224306 () Unit!14670)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32024 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14670)

(assert (=> b!495370 (= lt!224306 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495371 () Bool)

(declare-fun res!297905 () Bool)

(assert (=> b!495371 (=> res!297905 e!290620)))

(assert (=> b!495371 (= res!297905 (or (undefined!4678 lt!224305) (not (is-Intermediate!3866 lt!224305))))))

(declare-fun b!495372 () Bool)

(declare-fun res!297913 () Bool)

(assert (=> b!495372 (=> (not res!297913) (not e!290618))))

(assert (=> b!495372 (= res!297913 (validKeyInArray!0 (select (arr!15392 a!3235) j!176)))))

(declare-fun b!495373 () Bool)

(declare-fun res!297907 () Bool)

(assert (=> b!495373 (=> (not res!297907) (not e!290617))))

(declare-datatypes ((List!9603 0))(
  ( (Nil!9600) (Cons!9599 (h!10470 (_ BitVec 64)) (t!15839 List!9603)) )
))
(declare-fun arrayNoDuplicates!0 (array!32024 (_ BitVec 32) List!9603) Bool)

(assert (=> b!495373 (= res!297907 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9600))))

(declare-fun b!495374 () Bool)

(assert (=> b!495374 (= e!290618 e!290617)))

(declare-fun res!297904 () Bool)

(assert (=> b!495374 (=> (not res!297904) (not e!290617))))

(declare-fun lt!224307 () SeekEntryResult!3866)

(assert (=> b!495374 (= res!297904 (or (= lt!224307 (MissingZero!3866 i!1204)) (= lt!224307 (MissingVacant!3866 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32024 (_ BitVec 32)) SeekEntryResult!3866)

(assert (=> b!495374 (= lt!224307 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!495375 () Bool)

(assert (=> b!495375 (= e!290619 (= (seekEntryOrOpen!0 (select (arr!15392 a!3235) j!176) a!3235 mask!3524) (Found!3866 j!176)))))

(declare-fun b!495376 () Bool)

(declare-fun res!297909 () Bool)

(assert (=> b!495376 (=> (not res!297909) (not e!290618))))

(declare-fun arrayContainsKey!0 (array!32024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495376 (= res!297909 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495377 () Bool)

(declare-fun res!297910 () Bool)

(assert (=> b!495377 (=> (not res!297910) (not e!290617))))

(assert (=> b!495377 (= res!297910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45176 res!297912) b!495368))

(assert (= (and b!495368 res!297908) b!495372))

(assert (= (and b!495372 res!297913) b!495369))

(assert (= (and b!495369 res!297906) b!495376))

(assert (= (and b!495376 res!297909) b!495374))

(assert (= (and b!495374 res!297904) b!495377))

(assert (= (and b!495377 res!297910) b!495373))

(assert (= (and b!495373 res!297907) b!495370))

(assert (= (and b!495370 res!297911) b!495375))

(assert (= (and b!495370 (not res!297914)) b!495371))

(assert (= (and b!495371 (not res!297905)) b!495367))

(declare-fun m!476507 () Bool)

(assert (=> b!495374 m!476507))

(declare-fun m!476509 () Bool)

(assert (=> b!495377 m!476509))

(declare-fun m!476511 () Bool)

(assert (=> b!495373 m!476511))

(declare-fun m!476513 () Bool)

(assert (=> b!495376 m!476513))

(declare-fun m!476515 () Bool)

(assert (=> b!495370 m!476515))

(declare-fun m!476517 () Bool)

(assert (=> b!495370 m!476517))

(declare-fun m!476519 () Bool)

(assert (=> b!495370 m!476519))

(declare-fun m!476521 () Bool)

(assert (=> b!495370 m!476521))

(declare-fun m!476523 () Bool)

(assert (=> b!495370 m!476523))

(assert (=> b!495370 m!476521))

(declare-fun m!476525 () Bool)

(assert (=> b!495370 m!476525))

(assert (=> b!495370 m!476521))

(declare-fun m!476527 () Bool)

(assert (=> b!495370 m!476527))

(assert (=> b!495370 m!476519))

(declare-fun m!476529 () Bool)

(assert (=> b!495370 m!476529))

(assert (=> b!495370 m!476519))

(declare-fun m!476531 () Bool)

(assert (=> b!495370 m!476531))

(declare-fun m!476533 () Bool)

(assert (=> b!495367 m!476533))

(assert (=> b!495367 m!476521))

(declare-fun m!476535 () Bool)

(assert (=> start!45176 m!476535))

(declare-fun m!476537 () Bool)

(assert (=> start!45176 m!476537))

(assert (=> b!495372 m!476521))

(assert (=> b!495372 m!476521))

(declare-fun m!476539 () Bool)

(assert (=> b!495372 m!476539))

(declare-fun m!476541 () Bool)

(assert (=> b!495369 m!476541))

(assert (=> b!495375 m!476521))

(assert (=> b!495375 m!476521))

(declare-fun m!476543 () Bool)

(assert (=> b!495375 m!476543))

(push 1)

