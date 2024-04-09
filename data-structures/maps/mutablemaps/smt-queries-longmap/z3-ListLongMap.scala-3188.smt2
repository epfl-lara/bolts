; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44766 () Bool)

(assert start!44766)

(declare-fun b!491112 () Bool)

(declare-fun e!288589 () Bool)

(declare-fun e!288592 () Bool)

(assert (=> b!491112 (= e!288589 (not e!288592))))

(declare-fun res!294199 () Bool)

(assert (=> b!491112 (=> res!294199 e!288592)))

(declare-datatypes ((array!31785 0))(
  ( (array!31786 (arr!15277 (Array (_ BitVec 32) (_ BitVec 64))) (size!15641 (_ BitVec 32))) )
))
(declare-fun lt!222031 () array!31785)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun a!3235 () array!31785)

(declare-fun lt!222030 () (_ BitVec 64))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3751 0))(
  ( (MissingZero!3751 (index!17183 (_ BitVec 32))) (Found!3751 (index!17184 (_ BitVec 32))) (Intermediate!3751 (undefined!4563 Bool) (index!17185 (_ BitVec 32)) (x!46300 (_ BitVec 32))) (Undefined!3751) (MissingVacant!3751 (index!17186 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31785 (_ BitVec 32)) SeekEntryResult!3751)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491112 (= res!294199 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15277 a!3235) j!176) mask!3524) (select (arr!15277 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!222030 mask!3524) lt!222030 lt!222031 mask!3524))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491112 (= lt!222030 (select (store (arr!15277 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!491112 (= lt!222031 (array!31786 (store (arr!15277 a!3235) i!1204 k0!2280) (size!15641 a!3235)))))

(declare-fun lt!222028 () SeekEntryResult!3751)

(assert (=> b!491112 (= lt!222028 (Found!3751 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31785 (_ BitVec 32)) SeekEntryResult!3751)

(assert (=> b!491112 (= lt!222028 (seekEntryOrOpen!0 (select (arr!15277 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31785 (_ BitVec 32)) Bool)

(assert (=> b!491112 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14440 0))(
  ( (Unit!14441) )
))
(declare-fun lt!222029 () Unit!14440)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14440)

(assert (=> b!491112 (= lt!222029 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491113 () Bool)

(declare-fun res!294198 () Bool)

(declare-fun e!288591 () Bool)

(assert (=> b!491113 (=> (not res!294198) (not e!288591))))

(assert (=> b!491113 (= res!294198 (and (= (size!15641 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15641 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15641 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491114 () Bool)

(declare-fun res!294200 () Bool)

(assert (=> b!491114 (=> (not res!294200) (not e!288589))))

(declare-datatypes ((List!9488 0))(
  ( (Nil!9485) (Cons!9484 (h!10346 (_ BitVec 64)) (t!15724 List!9488)) )
))
(declare-fun arrayNoDuplicates!0 (array!31785 (_ BitVec 32) List!9488) Bool)

(assert (=> b!491114 (= res!294200 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9485))))

(declare-fun b!491115 () Bool)

(assert (=> b!491115 (= e!288591 e!288589)))

(declare-fun res!294203 () Bool)

(assert (=> b!491115 (=> (not res!294203) (not e!288589))))

(declare-fun lt!222032 () SeekEntryResult!3751)

(assert (=> b!491115 (= res!294203 (or (= lt!222032 (MissingZero!3751 i!1204)) (= lt!222032 (MissingVacant!3751 i!1204))))))

(assert (=> b!491115 (= lt!222032 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!491116 () Bool)

(declare-fun res!294202 () Bool)

(assert (=> b!491116 (=> (not res!294202) (not e!288591))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491116 (= res!294202 (validKeyInArray!0 (select (arr!15277 a!3235) j!176)))))

(declare-fun b!491118 () Bool)

(declare-fun res!294204 () Bool)

(assert (=> b!491118 (=> (not res!294204) (not e!288591))))

(declare-fun arrayContainsKey!0 (array!31785 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491118 (= res!294204 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!294206 () Bool)

(assert (=> start!44766 (=> (not res!294206) (not e!288591))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44766 (= res!294206 (validMask!0 mask!3524))))

(assert (=> start!44766 e!288591))

(assert (=> start!44766 true))

(declare-fun array_inv!11051 (array!31785) Bool)

(assert (=> start!44766 (array_inv!11051 a!3235)))

(declare-fun b!491117 () Bool)

(declare-fun res!294205 () Bool)

(assert (=> b!491117 (=> (not res!294205) (not e!288589))))

(assert (=> b!491117 (= res!294205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491119 () Bool)

(assert (=> b!491119 (= e!288592 true)))

(assert (=> b!491119 (= lt!222028 (seekEntryOrOpen!0 lt!222030 lt!222031 mask!3524))))

(declare-fun lt!222027 () Unit!14440)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31785 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14440)

(assert (=> b!491119 (= lt!222027 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!491120 () Bool)

(declare-fun res!294201 () Bool)

(assert (=> b!491120 (=> (not res!294201) (not e!288591))))

(assert (=> b!491120 (= res!294201 (validKeyInArray!0 k0!2280))))

(assert (= (and start!44766 res!294206) b!491113))

(assert (= (and b!491113 res!294198) b!491116))

(assert (= (and b!491116 res!294202) b!491120))

(assert (= (and b!491120 res!294201) b!491118))

(assert (= (and b!491118 res!294204) b!491115))

(assert (= (and b!491115 res!294203) b!491117))

(assert (= (and b!491117 res!294205) b!491114))

(assert (= (and b!491114 res!294200) b!491112))

(assert (= (and b!491112 (not res!294199)) b!491119))

(declare-fun m!471665 () Bool)

(assert (=> start!44766 m!471665))

(declare-fun m!471667 () Bool)

(assert (=> start!44766 m!471667))

(declare-fun m!471669 () Bool)

(assert (=> b!491115 m!471669))

(declare-fun m!471671 () Bool)

(assert (=> b!491116 m!471671))

(assert (=> b!491116 m!471671))

(declare-fun m!471673 () Bool)

(assert (=> b!491116 m!471673))

(declare-fun m!471675 () Bool)

(assert (=> b!491120 m!471675))

(declare-fun m!471677 () Bool)

(assert (=> b!491118 m!471677))

(declare-fun m!471679 () Bool)

(assert (=> b!491119 m!471679))

(declare-fun m!471681 () Bool)

(assert (=> b!491119 m!471681))

(declare-fun m!471683 () Bool)

(assert (=> b!491117 m!471683))

(declare-fun m!471685 () Bool)

(assert (=> b!491114 m!471685))

(declare-fun m!471687 () Bool)

(assert (=> b!491112 m!471687))

(declare-fun m!471689 () Bool)

(assert (=> b!491112 m!471689))

(declare-fun m!471691 () Bool)

(assert (=> b!491112 m!471691))

(declare-fun m!471693 () Bool)

(assert (=> b!491112 m!471693))

(assert (=> b!491112 m!471671))

(declare-fun m!471695 () Bool)

(assert (=> b!491112 m!471695))

(declare-fun m!471697 () Bool)

(assert (=> b!491112 m!471697))

(declare-fun m!471699 () Bool)

(assert (=> b!491112 m!471699))

(assert (=> b!491112 m!471671))

(assert (=> b!491112 m!471693))

(assert (=> b!491112 m!471671))

(declare-fun m!471701 () Bool)

(assert (=> b!491112 m!471701))

(assert (=> b!491112 m!471697))

(assert (=> b!491112 m!471671))

(declare-fun m!471703 () Bool)

(assert (=> b!491112 m!471703))

(check-sat (not b!491116) (not start!44766) (not b!491117) (not b!491118) (not b!491115) (not b!491114) (not b!491119) (not b!491112) (not b!491120))
(check-sat)
