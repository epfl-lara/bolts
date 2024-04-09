; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45240 () Bool)

(assert start!45240)

(declare-fun b!496423 () Bool)

(declare-fun res!298968 () Bool)

(declare-fun e!291099 () Bool)

(assert (=> b!496423 (=> (not res!298968) (not e!291099))))

(declare-datatypes ((array!32088 0))(
  ( (array!32089 (arr!15424 (Array (_ BitVec 32) (_ BitVec 64))) (size!15788 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32088)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496423 (= res!298968 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!496424 () Bool)

(declare-fun res!298961 () Bool)

(assert (=> b!496424 (=> (not res!298961) (not e!291099))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496424 (= res!298961 (validKeyInArray!0 (select (arr!15424 a!3235) j!176)))))

(declare-fun b!496425 () Bool)

(declare-fun e!291096 () Bool)

(declare-fun e!291098 () Bool)

(assert (=> b!496425 (= e!291096 (not e!291098))))

(declare-fun res!298964 () Bool)

(assert (=> b!496425 (=> res!298964 e!291098)))

(declare-fun lt!224786 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3898 0))(
  ( (MissingZero!3898 (index!17771 (_ BitVec 32))) (Found!3898 (index!17772 (_ BitVec 32))) (Intermediate!3898 (undefined!4710 Bool) (index!17773 (_ BitVec 32)) (x!46857 (_ BitVec 32))) (Undefined!3898) (MissingVacant!3898 (index!17774 (_ BitVec 32))) )
))
(declare-fun lt!224788 () SeekEntryResult!3898)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32088 (_ BitVec 32)) SeekEntryResult!3898)

(assert (=> b!496425 (= res!298964 (= lt!224788 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224786 (select (store (arr!15424 a!3235) i!1204 k0!2280) j!176) (array!32089 (store (arr!15424 a!3235) i!1204 k0!2280) (size!15788 a!3235)) mask!3524)))))

(declare-fun lt!224789 () (_ BitVec 32))

(assert (=> b!496425 (= lt!224788 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224789 (select (arr!15424 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496425 (= lt!224786 (toIndex!0 (select (store (arr!15424 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!496425 (= lt!224789 (toIndex!0 (select (arr!15424 a!3235) j!176) mask!3524))))

(declare-fun e!291100 () Bool)

(assert (=> b!496425 e!291100))

(declare-fun res!298969 () Bool)

(assert (=> b!496425 (=> (not res!298969) (not e!291100))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32088 (_ BitVec 32)) Bool)

(assert (=> b!496425 (= res!298969 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14734 0))(
  ( (Unit!14735) )
))
(declare-fun lt!224787 () Unit!14734)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32088 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14734)

(assert (=> b!496425 (= lt!224787 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496426 () Bool)

(declare-fun res!298962 () Bool)

(assert (=> b!496426 (=> (not res!298962) (not e!291099))))

(assert (=> b!496426 (= res!298962 (and (= (size!15788 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15788 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15788 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496427 () Bool)

(assert (=> b!496427 (= e!291099 e!291096)))

(declare-fun res!298960 () Bool)

(assert (=> b!496427 (=> (not res!298960) (not e!291096))))

(declare-fun lt!224785 () SeekEntryResult!3898)

(assert (=> b!496427 (= res!298960 (or (= lt!224785 (MissingZero!3898 i!1204)) (= lt!224785 (MissingVacant!3898 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32088 (_ BitVec 32)) SeekEntryResult!3898)

(assert (=> b!496427 (= lt!224785 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!496428 () Bool)

(declare-fun res!298970 () Bool)

(assert (=> b!496428 (=> (not res!298970) (not e!291096))))

(assert (=> b!496428 (= res!298970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496429 () Bool)

(assert (=> b!496429 (= e!291098 true)))

(assert (=> b!496429 (and (bvslt (x!46857 lt!224788) #b01111111111111111111111111111110) (or (= (select (arr!15424 a!3235) (index!17773 lt!224788)) (select (arr!15424 a!3235) j!176)) (= (select (arr!15424 a!3235) (index!17773 lt!224788)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15424 a!3235) (index!17773 lt!224788)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496430 () Bool)

(declare-fun res!298966 () Bool)

(assert (=> b!496430 (=> (not res!298966) (not e!291096))))

(declare-datatypes ((List!9635 0))(
  ( (Nil!9632) (Cons!9631 (h!10502 (_ BitVec 64)) (t!15871 List!9635)) )
))
(declare-fun arrayNoDuplicates!0 (array!32088 (_ BitVec 32) List!9635) Bool)

(assert (=> b!496430 (= res!298966 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9632))))

(declare-fun res!298965 () Bool)

(assert (=> start!45240 (=> (not res!298965) (not e!291099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45240 (= res!298965 (validMask!0 mask!3524))))

(assert (=> start!45240 e!291099))

(assert (=> start!45240 true))

(declare-fun array_inv!11198 (array!32088) Bool)

(assert (=> start!45240 (array_inv!11198 a!3235)))

(declare-fun b!496431 () Bool)

(declare-fun res!298963 () Bool)

(assert (=> b!496431 (=> res!298963 e!291098)))

(get-info :version)

(assert (=> b!496431 (= res!298963 (or (undefined!4710 lt!224788) (not ((_ is Intermediate!3898) lt!224788))))))

(declare-fun b!496432 () Bool)

(declare-fun res!298967 () Bool)

(assert (=> b!496432 (=> (not res!298967) (not e!291099))))

(assert (=> b!496432 (= res!298967 (validKeyInArray!0 k0!2280))))

(declare-fun b!496433 () Bool)

(assert (=> b!496433 (= e!291100 (= (seekEntryOrOpen!0 (select (arr!15424 a!3235) j!176) a!3235 mask!3524) (Found!3898 j!176)))))

(assert (= (and start!45240 res!298965) b!496426))

(assert (= (and b!496426 res!298962) b!496424))

(assert (= (and b!496424 res!298961) b!496432))

(assert (= (and b!496432 res!298967) b!496423))

(assert (= (and b!496423 res!298968) b!496427))

(assert (= (and b!496427 res!298960) b!496428))

(assert (= (and b!496428 res!298970) b!496430))

(assert (= (and b!496430 res!298966) b!496425))

(assert (= (and b!496425 res!298969) b!496433))

(assert (= (and b!496425 (not res!298964)) b!496431))

(assert (= (and b!496431 (not res!298963)) b!496429))

(declare-fun m!477723 () Bool)

(assert (=> b!496423 m!477723))

(declare-fun m!477725 () Bool)

(assert (=> b!496432 m!477725))

(declare-fun m!477727 () Bool)

(assert (=> start!45240 m!477727))

(declare-fun m!477729 () Bool)

(assert (=> start!45240 m!477729))

(declare-fun m!477731 () Bool)

(assert (=> b!496424 m!477731))

(assert (=> b!496424 m!477731))

(declare-fun m!477733 () Bool)

(assert (=> b!496424 m!477733))

(assert (=> b!496433 m!477731))

(assert (=> b!496433 m!477731))

(declare-fun m!477735 () Bool)

(assert (=> b!496433 m!477735))

(declare-fun m!477737 () Bool)

(assert (=> b!496427 m!477737))

(declare-fun m!477739 () Bool)

(assert (=> b!496425 m!477739))

(declare-fun m!477741 () Bool)

(assert (=> b!496425 m!477741))

(declare-fun m!477743 () Bool)

(assert (=> b!496425 m!477743))

(assert (=> b!496425 m!477731))

(declare-fun m!477745 () Bool)

(assert (=> b!496425 m!477745))

(assert (=> b!496425 m!477731))

(declare-fun m!477747 () Bool)

(assert (=> b!496425 m!477747))

(assert (=> b!496425 m!477731))

(declare-fun m!477749 () Bool)

(assert (=> b!496425 m!477749))

(assert (=> b!496425 m!477743))

(declare-fun m!477751 () Bool)

(assert (=> b!496425 m!477751))

(assert (=> b!496425 m!477743))

(declare-fun m!477753 () Bool)

(assert (=> b!496425 m!477753))

(declare-fun m!477755 () Bool)

(assert (=> b!496428 m!477755))

(declare-fun m!477757 () Bool)

(assert (=> b!496429 m!477757))

(assert (=> b!496429 m!477731))

(declare-fun m!477759 () Bool)

(assert (=> b!496430 m!477759))

(check-sat (not start!45240) (not b!496425) (not b!496433) (not b!496427) (not b!496432) (not b!496428) (not b!496424) (not b!496423) (not b!496430))
(check-sat)
