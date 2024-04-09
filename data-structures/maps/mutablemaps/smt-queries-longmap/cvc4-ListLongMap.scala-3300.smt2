; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45758 () Bool)

(assert start!45758)

(declare-fun b!505807 () Bool)

(declare-fun res!306956 () Bool)

(declare-fun e!296073 () Bool)

(assert (=> b!505807 (=> (not res!306956) (not e!296073))))

(declare-datatypes ((array!32474 0))(
  ( (array!32475 (arr!15614 (Array (_ BitVec 32) (_ BitVec 64))) (size!15978 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32474)

(declare-datatypes ((List!9825 0))(
  ( (Nil!9822) (Cons!9821 (h!10698 (_ BitVec 64)) (t!16061 List!9825)) )
))
(declare-fun arrayNoDuplicates!0 (array!32474 (_ BitVec 32) List!9825) Bool)

(assert (=> b!505807 (= res!306956 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9822))))

(declare-fun b!505808 () Bool)

(declare-fun e!296072 () Bool)

(assert (=> b!505808 (= e!296072 e!296073)))

(declare-fun res!306959 () Bool)

(assert (=> b!505808 (=> (not res!306959) (not e!296073))))

(declare-datatypes ((SeekEntryResult!4088 0))(
  ( (MissingZero!4088 (index!18540 (_ BitVec 32))) (Found!4088 (index!18541 (_ BitVec 32))) (Intermediate!4088 (undefined!4900 Bool) (index!18542 (_ BitVec 32)) (x!47572 (_ BitVec 32))) (Undefined!4088) (MissingVacant!4088 (index!18543 (_ BitVec 32))) )
))
(declare-fun lt!230756 () SeekEntryResult!4088)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!505808 (= res!306959 (or (= lt!230756 (MissingZero!4088 i!1204)) (= lt!230756 (MissingVacant!4088 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32474 (_ BitVec 32)) SeekEntryResult!4088)

(assert (=> b!505808 (= lt!230756 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!306968 () Bool)

(assert (=> start!45758 (=> (not res!306968) (not e!296072))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45758 (= res!306968 (validMask!0 mask!3524))))

(assert (=> start!45758 e!296072))

(assert (=> start!45758 true))

(declare-fun array_inv!11388 (array!32474) Bool)

(assert (=> start!45758 (array_inv!11388 a!3235)))

(declare-fun b!505809 () Bool)

(declare-fun res!306967 () Bool)

(declare-fun e!296079 () Bool)

(assert (=> b!505809 (=> res!306967 e!296079)))

(declare-fun e!296078 () Bool)

(assert (=> b!505809 (= res!306967 e!296078)))

(declare-fun res!306957 () Bool)

(assert (=> b!505809 (=> (not res!306957) (not e!296078))))

(declare-fun lt!230752 () SeekEntryResult!4088)

(assert (=> b!505809 (= res!306957 (bvsgt #b00000000000000000000000000000000 (x!47572 lt!230752)))))

(declare-fun b!505810 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!296075 () Bool)

(assert (=> b!505810 (= e!296075 (= (seekEntryOrOpen!0 (select (arr!15614 a!3235) j!176) a!3235 mask!3524) (Found!4088 j!176)))))

(declare-fun b!505811 () Bool)

(declare-fun res!306955 () Bool)

(assert (=> b!505811 (=> res!306955 e!296079)))

(declare-fun lt!230760 () (_ BitVec 64))

(declare-fun lt!230757 () SeekEntryResult!4088)

(declare-fun lt!230751 () (_ BitVec 32))

(declare-fun lt!230755 () array!32474)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32474 (_ BitVec 32)) SeekEntryResult!4088)

(assert (=> b!505811 (= res!306955 (not (= lt!230757 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230751 lt!230760 lt!230755 mask!3524))))))

(declare-fun b!505812 () Bool)

(declare-fun res!306954 () Bool)

(assert (=> b!505812 (=> (not res!306954) (not e!296073))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32474 (_ BitVec 32)) Bool)

(assert (=> b!505812 (= res!306954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505813 () Bool)

(declare-datatypes ((Unit!15442 0))(
  ( (Unit!15443) )
))
(declare-fun e!296080 () Unit!15442)

(declare-fun Unit!15444 () Unit!15442)

(assert (=> b!505813 (= e!296080 Unit!15444)))

(declare-fun b!505814 () Bool)

(declare-fun res!306961 () Bool)

(assert (=> b!505814 (=> (not res!306961) (not e!296072))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505814 (= res!306961 (validKeyInArray!0 (select (arr!15614 a!3235) j!176)))))

(declare-fun b!505815 () Bool)

(declare-fun res!306958 () Bool)

(assert (=> b!505815 (=> (not res!306958) (not e!296072))))

(declare-fun arrayContainsKey!0 (array!32474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505815 (= res!306958 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!505816 () Bool)

(declare-fun res!306965 () Bool)

(assert (=> b!505816 (=> (not res!306965) (not e!296072))))

(assert (=> b!505816 (= res!306965 (and (= (size!15978 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15978 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15978 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505817 () Bool)

(declare-fun e!296076 () Bool)

(assert (=> b!505817 (= e!296076 false)))

(declare-fun lt!230762 () SeekEntryResult!4088)

(declare-fun b!505818 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32474 (_ BitVec 32)) SeekEntryResult!4088)

(assert (=> b!505818 (= e!296078 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230751 (index!18542 lt!230752) (select (arr!15614 a!3235) j!176) a!3235 mask!3524) lt!230762)))))

(declare-fun b!505819 () Bool)

(declare-fun e!296074 () Bool)

(assert (=> b!505819 (= e!296073 (not e!296074))))

(declare-fun res!306964 () Bool)

(assert (=> b!505819 (=> res!306964 e!296074)))

(assert (=> b!505819 (= res!306964 (or (= lt!230752 lt!230757) (undefined!4900 lt!230752) (not (is-Intermediate!4088 lt!230752))))))

(declare-fun lt!230753 () (_ BitVec 32))

(assert (=> b!505819 (= lt!230757 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230753 lt!230760 lt!230755 mask!3524))))

(assert (=> b!505819 (= lt!230752 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230751 (select (arr!15614 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505819 (= lt!230753 (toIndex!0 lt!230760 mask!3524))))

(assert (=> b!505819 (= lt!230760 (select (store (arr!15614 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!505819 (= lt!230751 (toIndex!0 (select (arr!15614 a!3235) j!176) mask!3524))))

(assert (=> b!505819 (= lt!230755 (array!32475 (store (arr!15614 a!3235) i!1204 k!2280) (size!15978 a!3235)))))

(assert (=> b!505819 (= lt!230762 (Found!4088 j!176))))

(assert (=> b!505819 e!296075))

(declare-fun res!306960 () Bool)

(assert (=> b!505819 (=> (not res!306960) (not e!296075))))

(assert (=> b!505819 (= res!306960 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230759 () Unit!15442)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32474 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15442)

(assert (=> b!505819 (= lt!230759 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505820 () Bool)

(assert (=> b!505820 (= e!296079 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!505820 (= (seekEntryOrOpen!0 lt!230760 lt!230755 mask!3524) lt!230762)))

(declare-fun lt!230761 () Unit!15442)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32474 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15442)

(assert (=> b!505820 (= lt!230761 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!230751 #b00000000000000000000000000000000 (index!18542 lt!230752) (x!47572 lt!230752) mask!3524))))

(declare-fun b!505821 () Bool)

(declare-fun res!306966 () Bool)

(assert (=> b!505821 (=> (not res!306966) (not e!296072))))

(assert (=> b!505821 (= res!306966 (validKeyInArray!0 k!2280))))

(declare-fun b!505822 () Bool)

(assert (=> b!505822 (= e!296074 e!296079)))

(declare-fun res!306962 () Bool)

(assert (=> b!505822 (=> res!306962 e!296079)))

(assert (=> b!505822 (= res!306962 (or (bvsgt (x!47572 lt!230752) #b01111111111111111111111111111110) (bvslt lt!230751 #b00000000000000000000000000000000) (bvsge lt!230751 (size!15978 a!3235)) (bvslt (index!18542 lt!230752) #b00000000000000000000000000000000) (bvsge (index!18542 lt!230752) (size!15978 a!3235)) (not (= lt!230752 (Intermediate!4088 false (index!18542 lt!230752) (x!47572 lt!230752))))))))

(assert (=> b!505822 (= (index!18542 lt!230752) i!1204)))

(declare-fun lt!230758 () Unit!15442)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32474 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15442)

(assert (=> b!505822 (= lt!230758 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230751 #b00000000000000000000000000000000 (index!18542 lt!230752) (x!47572 lt!230752) mask!3524))))

(assert (=> b!505822 (and (or (= (select (arr!15614 a!3235) (index!18542 lt!230752)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15614 a!3235) (index!18542 lt!230752)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15614 a!3235) (index!18542 lt!230752)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15614 a!3235) (index!18542 lt!230752)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230754 () Unit!15442)

(assert (=> b!505822 (= lt!230754 e!296080)))

(declare-fun c!59705 () Bool)

(assert (=> b!505822 (= c!59705 (= (select (arr!15614 a!3235) (index!18542 lt!230752)) (select (arr!15614 a!3235) j!176)))))

(assert (=> b!505822 (and (bvslt (x!47572 lt!230752) #b01111111111111111111111111111110) (or (= (select (arr!15614 a!3235) (index!18542 lt!230752)) (select (arr!15614 a!3235) j!176)) (= (select (arr!15614 a!3235) (index!18542 lt!230752)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15614 a!3235) (index!18542 lt!230752)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505823 () Bool)

(declare-fun Unit!15445 () Unit!15442)

(assert (=> b!505823 (= e!296080 Unit!15445)))

(declare-fun lt!230750 () Unit!15442)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32474 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15442)

(assert (=> b!505823 (= lt!230750 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230751 #b00000000000000000000000000000000 (index!18542 lt!230752) (x!47572 lt!230752) mask!3524))))

(declare-fun res!306963 () Bool)

(assert (=> b!505823 (= res!306963 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230751 lt!230760 lt!230755 mask!3524) (Intermediate!4088 false (index!18542 lt!230752) (x!47572 lt!230752))))))

(assert (=> b!505823 (=> (not res!306963) (not e!296076))))

(assert (=> b!505823 e!296076))

(assert (= (and start!45758 res!306968) b!505816))

(assert (= (and b!505816 res!306965) b!505814))

(assert (= (and b!505814 res!306961) b!505821))

(assert (= (and b!505821 res!306966) b!505815))

(assert (= (and b!505815 res!306958) b!505808))

(assert (= (and b!505808 res!306959) b!505812))

(assert (= (and b!505812 res!306954) b!505807))

(assert (= (and b!505807 res!306956) b!505819))

(assert (= (and b!505819 res!306960) b!505810))

(assert (= (and b!505819 (not res!306964)) b!505822))

(assert (= (and b!505822 c!59705) b!505823))

(assert (= (and b!505822 (not c!59705)) b!505813))

(assert (= (and b!505823 res!306963) b!505817))

(assert (= (and b!505822 (not res!306962)) b!505809))

(assert (= (and b!505809 res!306957) b!505818))

(assert (= (and b!505809 (not res!306967)) b!505811))

(assert (= (and b!505811 (not res!306955)) b!505820))

(declare-fun m!486497 () Bool)

(assert (=> b!505821 m!486497))

(declare-fun m!486499 () Bool)

(assert (=> b!505820 m!486499))

(declare-fun m!486501 () Bool)

(assert (=> b!505820 m!486501))

(declare-fun m!486503 () Bool)

(assert (=> b!505818 m!486503))

(assert (=> b!505818 m!486503))

(declare-fun m!486505 () Bool)

(assert (=> b!505818 m!486505))

(declare-fun m!486507 () Bool)

(assert (=> b!505811 m!486507))

(declare-fun m!486509 () Bool)

(assert (=> b!505807 m!486509))

(declare-fun m!486511 () Bool)

(assert (=> b!505819 m!486511))

(declare-fun m!486513 () Bool)

(assert (=> b!505819 m!486513))

(declare-fun m!486515 () Bool)

(assert (=> b!505819 m!486515))

(assert (=> b!505819 m!486503))

(declare-fun m!486517 () Bool)

(assert (=> b!505819 m!486517))

(assert (=> b!505819 m!486503))

(declare-fun m!486519 () Bool)

(assert (=> b!505819 m!486519))

(assert (=> b!505819 m!486503))

(declare-fun m!486521 () Bool)

(assert (=> b!505819 m!486521))

(declare-fun m!486523 () Bool)

(assert (=> b!505819 m!486523))

(declare-fun m!486525 () Bool)

(assert (=> b!505819 m!486525))

(declare-fun m!486527 () Bool)

(assert (=> b!505823 m!486527))

(assert (=> b!505823 m!486507))

(assert (=> b!505814 m!486503))

(assert (=> b!505814 m!486503))

(declare-fun m!486529 () Bool)

(assert (=> b!505814 m!486529))

(declare-fun m!486531 () Bool)

(assert (=> b!505812 m!486531))

(declare-fun m!486533 () Bool)

(assert (=> b!505822 m!486533))

(declare-fun m!486535 () Bool)

(assert (=> b!505822 m!486535))

(assert (=> b!505822 m!486503))

(assert (=> b!505810 m!486503))

(assert (=> b!505810 m!486503))

(declare-fun m!486537 () Bool)

(assert (=> b!505810 m!486537))

(declare-fun m!486539 () Bool)

(assert (=> b!505815 m!486539))

(declare-fun m!486541 () Bool)

(assert (=> b!505808 m!486541))

(declare-fun m!486543 () Bool)

(assert (=> start!45758 m!486543))

(declare-fun m!486545 () Bool)

(assert (=> start!45758 m!486545))

(push 1)

