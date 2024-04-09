; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46108 () Bool)

(assert start!46108)

(declare-fun b!510426 () Bool)

(declare-fun e!298339 () Bool)

(declare-fun e!298341 () Bool)

(assert (=> b!510426 (= e!298339 (not e!298341))))

(declare-fun res!311428 () Bool)

(assert (=> b!510426 (=> res!311428 e!298341)))

(declare-datatypes ((array!32779 0))(
  ( (array!32780 (arr!15765 (Array (_ BitVec 32) (_ BitVec 64))) (size!16129 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32779)

(declare-fun lt!233468 () array!32779)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!233466 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4239 0))(
  ( (MissingZero!4239 (index!19144 (_ BitVec 32))) (Found!4239 (index!19145 (_ BitVec 32))) (Intermediate!4239 (undefined!5051 Bool) (index!19146 (_ BitVec 32)) (x!48131 (_ BitVec 32))) (Undefined!4239) (MissingVacant!4239 (index!19147 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32779 (_ BitVec 32)) SeekEntryResult!4239)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!510426 (= res!311428 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15765 a!3235) j!176) mask!3524) (select (arr!15765 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!233466 mask!3524) lt!233466 lt!233468 mask!3524))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!510426 (= lt!233466 (select (store (arr!15765 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!510426 (= lt!233468 (array!32780 (store (arr!15765 a!3235) i!1204 k!2280) (size!16129 a!3235)))))

(declare-fun lt!233469 () SeekEntryResult!4239)

(assert (=> b!510426 (= lt!233469 (Found!4239 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32779 (_ BitVec 32)) SeekEntryResult!4239)

(assert (=> b!510426 (= lt!233469 (seekEntryOrOpen!0 (select (arr!15765 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32779 (_ BitVec 32)) Bool)

(assert (=> b!510426 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!15728 0))(
  ( (Unit!15729) )
))
(declare-fun lt!233470 () Unit!15728)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32779 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15728)

(assert (=> b!510426 (= lt!233470 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!510427 () Bool)

(declare-fun res!311423 () Bool)

(assert (=> b!510427 (=> (not res!311423) (not e!298339))))

(declare-datatypes ((List!9976 0))(
  ( (Nil!9973) (Cons!9972 (h!10849 (_ BitVec 64)) (t!16212 List!9976)) )
))
(declare-fun arrayNoDuplicates!0 (array!32779 (_ BitVec 32) List!9976) Bool)

(assert (=> b!510427 (= res!311423 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9973))))

(declare-fun b!510428 () Bool)

(declare-fun e!298342 () Bool)

(assert (=> b!510428 (= e!298342 e!298339)))

(declare-fun res!311425 () Bool)

(assert (=> b!510428 (=> (not res!311425) (not e!298339))))

(declare-fun lt!233467 () SeekEntryResult!4239)

(assert (=> b!510428 (= res!311425 (or (= lt!233467 (MissingZero!4239 i!1204)) (= lt!233467 (MissingVacant!4239 i!1204))))))

(assert (=> b!510428 (= lt!233467 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!311427 () Bool)

(assert (=> start!46108 (=> (not res!311427) (not e!298342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46108 (= res!311427 (validMask!0 mask!3524))))

(assert (=> start!46108 e!298342))

(assert (=> start!46108 true))

(declare-fun array_inv!11539 (array!32779) Bool)

(assert (=> start!46108 (array_inv!11539 a!3235)))

(declare-fun b!510429 () Bool)

(declare-fun res!311424 () Bool)

(assert (=> b!510429 (=> (not res!311424) (not e!298342))))

(assert (=> b!510429 (= res!311424 (and (= (size!16129 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16129 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16129 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!510430 () Bool)

(declare-fun res!311429 () Bool)

(assert (=> b!510430 (=> (not res!311429) (not e!298342))))

(declare-fun arrayContainsKey!0 (array!32779 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!510430 (= res!311429 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!510431 () Bool)

(declare-fun res!311426 () Bool)

(assert (=> b!510431 (=> (not res!311426) (not e!298342))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!510431 (= res!311426 (validKeyInArray!0 (select (arr!15765 a!3235) j!176)))))

(declare-fun b!510432 () Bool)

(declare-fun res!311422 () Bool)

(assert (=> b!510432 (=> (not res!311422) (not e!298339))))

(assert (=> b!510432 (= res!311422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!510433 () Bool)

(declare-fun res!311421 () Bool)

(assert (=> b!510433 (=> (not res!311421) (not e!298342))))

(assert (=> b!510433 (= res!311421 (validKeyInArray!0 k!2280))))

(declare-fun b!510434 () Bool)

(assert (=> b!510434 (= e!298341 true)))

(assert (=> b!510434 (= lt!233469 (seekEntryOrOpen!0 lt!233466 lt!233468 mask!3524))))

(declare-fun lt!233471 () Unit!15728)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!32779 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!15728)

(assert (=> b!510434 (= lt!233471 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k!2280 j!176 mask!3524))))

(assert (= (and start!46108 res!311427) b!510429))

(assert (= (and b!510429 res!311424) b!510431))

(assert (= (and b!510431 res!311426) b!510433))

(assert (= (and b!510433 res!311421) b!510430))

(assert (= (and b!510430 res!311429) b!510428))

(assert (= (and b!510428 res!311425) b!510432))

(assert (= (and b!510432 res!311422) b!510427))

(assert (= (and b!510427 res!311423) b!510426))

(assert (= (and b!510426 (not res!311428)) b!510434))

(declare-fun m!491815 () Bool)

(assert (=> b!510426 m!491815))

(declare-fun m!491817 () Bool)

(assert (=> b!510426 m!491817))

(declare-fun m!491819 () Bool)

(assert (=> b!510426 m!491819))

(declare-fun m!491821 () Bool)

(assert (=> b!510426 m!491821))

(declare-fun m!491823 () Bool)

(assert (=> b!510426 m!491823))

(declare-fun m!491825 () Bool)

(assert (=> b!510426 m!491825))

(assert (=> b!510426 m!491823))

(assert (=> b!510426 m!491821))

(assert (=> b!510426 m!491823))

(declare-fun m!491827 () Bool)

(assert (=> b!510426 m!491827))

(declare-fun m!491829 () Bool)

(assert (=> b!510426 m!491829))

(declare-fun m!491831 () Bool)

(assert (=> b!510426 m!491831))

(assert (=> b!510426 m!491823))

(declare-fun m!491833 () Bool)

(assert (=> b!510426 m!491833))

(assert (=> b!510426 m!491829))

(declare-fun m!491835 () Bool)

(assert (=> b!510434 m!491835))

(declare-fun m!491837 () Bool)

(assert (=> b!510434 m!491837))

(declare-fun m!491839 () Bool)

(assert (=> b!510433 m!491839))

(declare-fun m!491841 () Bool)

(assert (=> b!510432 m!491841))

(declare-fun m!491843 () Bool)

(assert (=> b!510428 m!491843))

(declare-fun m!491845 () Bool)

(assert (=> start!46108 m!491845))

(declare-fun m!491847 () Bool)

(assert (=> start!46108 m!491847))

(assert (=> b!510431 m!491823))

(assert (=> b!510431 m!491823))

(declare-fun m!491849 () Bool)

(assert (=> b!510431 m!491849))

(declare-fun m!491851 () Bool)

(assert (=> b!510430 m!491851))

(declare-fun m!491853 () Bool)

(assert (=> b!510427 m!491853))

(push 1)

