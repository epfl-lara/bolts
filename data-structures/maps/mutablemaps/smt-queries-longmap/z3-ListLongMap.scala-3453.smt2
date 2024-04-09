; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47922 () Bool)

(assert start!47922)

(declare-fun b!527572 () Bool)

(declare-fun e!307467 () Bool)

(declare-fun e!307462 () Bool)

(assert (=> b!527572 (= e!307467 e!307462)))

(declare-fun res!324008 () Bool)

(assert (=> b!527572 (=> (not res!324008) (not e!307462))))

(declare-datatypes ((SeekEntryResult!4546 0))(
  ( (MissingZero!4546 (index!20402 (_ BitVec 32))) (Found!4546 (index!20403 (_ BitVec 32))) (Intermediate!4546 (undefined!5358 Bool) (index!20404 (_ BitVec 32)) (x!49398 (_ BitVec 32))) (Undefined!4546) (MissingVacant!4546 (index!20405 (_ BitVec 32))) )
))
(declare-fun lt!242946 () SeekEntryResult!4546)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!527572 (= res!324008 (or (= lt!242946 (MissingZero!4546 i!1204)) (= lt!242946 (MissingVacant!4546 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33450 0))(
  ( (array!33451 (arr!16072 (Array (_ BitVec 32) (_ BitVec 64))) (size!16436 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33450)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33450 (_ BitVec 32)) SeekEntryResult!4546)

(assert (=> b!527572 (= lt!242946 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!527573 () Bool)

(declare-fun e!307466 () Bool)

(assert (=> b!527573 (= e!307462 (not e!307466))))

(declare-fun res!324002 () Bool)

(assert (=> b!527573 (=> res!324002 e!307466)))

(declare-fun lt!242945 () (_ BitVec 32))

(declare-fun lt!242940 () SeekEntryResult!4546)

(declare-fun lt!242948 () array!33450)

(declare-fun lt!242941 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33450 (_ BitVec 32)) SeekEntryResult!4546)

(assert (=> b!527573 (= res!324002 (= lt!242940 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242945 lt!242941 lt!242948 mask!3524)))))

(declare-fun lt!242942 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!527573 (= lt!242940 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242942 (select (arr!16072 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527573 (= lt!242945 (toIndex!0 lt!242941 mask!3524))))

(assert (=> b!527573 (= lt!242941 (select (store (arr!16072 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!527573 (= lt!242942 (toIndex!0 (select (arr!16072 a!3235) j!176) mask!3524))))

(assert (=> b!527573 (= lt!242948 (array!33451 (store (arr!16072 a!3235) i!1204 k0!2280) (size!16436 a!3235)))))

(declare-fun e!307464 () Bool)

(assert (=> b!527573 e!307464))

(declare-fun res!324006 () Bool)

(assert (=> b!527573 (=> (not res!324006) (not e!307464))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33450 (_ BitVec 32)) Bool)

(assert (=> b!527573 (= res!324006 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16650 0))(
  ( (Unit!16651) )
))
(declare-fun lt!242939 () Unit!16650)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33450 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16650)

(assert (=> b!527573 (= lt!242939 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!527574 () Bool)

(declare-fun e!307463 () Unit!16650)

(declare-fun Unit!16652 () Unit!16650)

(assert (=> b!527574 (= e!307463 Unit!16652)))

(declare-fun b!527575 () Bool)

(declare-fun res!324003 () Bool)

(assert (=> b!527575 (=> (not res!324003) (not e!307467))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!527575 (= res!324003 (validKeyInArray!0 (select (arr!16072 a!3235) j!176)))))

(declare-fun b!527576 () Bool)

(assert (=> b!527576 (= e!307464 (= (seekEntryOrOpen!0 (select (arr!16072 a!3235) j!176) a!3235 mask!3524) (Found!4546 j!176)))))

(declare-fun b!527577 () Bool)

(declare-fun res!324007 () Bool)

(assert (=> b!527577 (=> (not res!324007) (not e!307467))))

(declare-fun arrayContainsKey!0 (array!33450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!527577 (= res!324007 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!527578 () Bool)

(declare-fun res!324001 () Bool)

(assert (=> b!527578 (=> (not res!324001) (not e!307467))))

(assert (=> b!527578 (= res!324001 (validKeyInArray!0 k0!2280))))

(declare-fun b!527579 () Bool)

(declare-fun res!324000 () Bool)

(assert (=> b!527579 (=> res!324000 e!307466)))

(get-info :version)

(assert (=> b!527579 (= res!324000 (or (undefined!5358 lt!242940) (not ((_ is Intermediate!4546) lt!242940))))))

(declare-fun b!527581 () Bool)

(declare-fun e!307465 () Bool)

(assert (=> b!527581 (= e!307465 false)))

(declare-fun b!527582 () Bool)

(assert (=> b!527582 (= e!307466 true)))

(assert (=> b!527582 (= (index!20404 lt!242940) i!1204)))

(declare-fun lt!242944 () Unit!16650)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33450 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16650)

(assert (=> b!527582 (= lt!242944 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!242942 #b00000000000000000000000000000000 (index!20404 lt!242940) (x!49398 lt!242940) mask!3524))))

(assert (=> b!527582 (and (or (= (select (arr!16072 a!3235) (index!20404 lt!242940)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16072 a!3235) (index!20404 lt!242940)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16072 a!3235) (index!20404 lt!242940)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16072 a!3235) (index!20404 lt!242940)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!242943 () Unit!16650)

(assert (=> b!527582 (= lt!242943 e!307463)))

(declare-fun c!62093 () Bool)

(assert (=> b!527582 (= c!62093 (= (select (arr!16072 a!3235) (index!20404 lt!242940)) (select (arr!16072 a!3235) j!176)))))

(assert (=> b!527582 (and (bvslt (x!49398 lt!242940) #b01111111111111111111111111111110) (or (= (select (arr!16072 a!3235) (index!20404 lt!242940)) (select (arr!16072 a!3235) j!176)) (= (select (arr!16072 a!3235) (index!20404 lt!242940)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16072 a!3235) (index!20404 lt!242940)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527583 () Bool)

(declare-fun res!324005 () Bool)

(assert (=> b!527583 (=> (not res!324005) (not e!307467))))

(assert (=> b!527583 (= res!324005 (and (= (size!16436 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16436 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16436 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!527584 () Bool)

(declare-fun res!324004 () Bool)

(assert (=> b!527584 (=> (not res!324004) (not e!307462))))

(assert (=> b!527584 (= res!324004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!527585 () Bool)

(declare-fun Unit!16653 () Unit!16650)

(assert (=> b!527585 (= e!307463 Unit!16653)))

(declare-fun lt!242947 () Unit!16650)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33450 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16650)

(assert (=> b!527585 (= lt!242947 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!242942 #b00000000000000000000000000000000 (index!20404 lt!242940) (x!49398 lt!242940) mask!3524))))

(declare-fun res!324009 () Bool)

(assert (=> b!527585 (= res!324009 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!242942 lt!242941 lt!242948 mask!3524) (Intermediate!4546 false (index!20404 lt!242940) (x!49398 lt!242940))))))

(assert (=> b!527585 (=> (not res!324009) (not e!307465))))

(assert (=> b!527585 e!307465))

(declare-fun b!527580 () Bool)

(declare-fun res!324010 () Bool)

(assert (=> b!527580 (=> (not res!324010) (not e!307462))))

(declare-datatypes ((List!10283 0))(
  ( (Nil!10280) (Cons!10279 (h!11213 (_ BitVec 64)) (t!16519 List!10283)) )
))
(declare-fun arrayNoDuplicates!0 (array!33450 (_ BitVec 32) List!10283) Bool)

(assert (=> b!527580 (= res!324010 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10280))))

(declare-fun res!324011 () Bool)

(assert (=> start!47922 (=> (not res!324011) (not e!307467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47922 (= res!324011 (validMask!0 mask!3524))))

(assert (=> start!47922 e!307467))

(assert (=> start!47922 true))

(declare-fun array_inv!11846 (array!33450) Bool)

(assert (=> start!47922 (array_inv!11846 a!3235)))

(assert (= (and start!47922 res!324011) b!527583))

(assert (= (and b!527583 res!324005) b!527575))

(assert (= (and b!527575 res!324003) b!527578))

(assert (= (and b!527578 res!324001) b!527577))

(assert (= (and b!527577 res!324007) b!527572))

(assert (= (and b!527572 res!324008) b!527584))

(assert (= (and b!527584 res!324004) b!527580))

(assert (= (and b!527580 res!324010) b!527573))

(assert (= (and b!527573 res!324006) b!527576))

(assert (= (and b!527573 (not res!324002)) b!527579))

(assert (= (and b!527579 (not res!324000)) b!527582))

(assert (= (and b!527582 c!62093) b!527585))

(assert (= (and b!527582 (not c!62093)) b!527574))

(assert (= (and b!527585 res!324009) b!527581))

(declare-fun m!508275 () Bool)

(assert (=> b!527582 m!508275))

(declare-fun m!508277 () Bool)

(assert (=> b!527582 m!508277))

(declare-fun m!508279 () Bool)

(assert (=> b!527582 m!508279))

(declare-fun m!508281 () Bool)

(assert (=> b!527573 m!508281))

(declare-fun m!508283 () Bool)

(assert (=> b!527573 m!508283))

(declare-fun m!508285 () Bool)

(assert (=> b!527573 m!508285))

(declare-fun m!508287 () Bool)

(assert (=> b!527573 m!508287))

(assert (=> b!527573 m!508279))

(declare-fun m!508289 () Bool)

(assert (=> b!527573 m!508289))

(declare-fun m!508291 () Bool)

(assert (=> b!527573 m!508291))

(assert (=> b!527573 m!508279))

(declare-fun m!508293 () Bool)

(assert (=> b!527573 m!508293))

(assert (=> b!527573 m!508279))

(declare-fun m!508295 () Bool)

(assert (=> b!527573 m!508295))

(declare-fun m!508297 () Bool)

(assert (=> b!527577 m!508297))

(declare-fun m!508299 () Bool)

(assert (=> b!527585 m!508299))

(declare-fun m!508301 () Bool)

(assert (=> b!527585 m!508301))

(declare-fun m!508303 () Bool)

(assert (=> b!527572 m!508303))

(assert (=> b!527576 m!508279))

(assert (=> b!527576 m!508279))

(declare-fun m!508305 () Bool)

(assert (=> b!527576 m!508305))

(declare-fun m!508307 () Bool)

(assert (=> start!47922 m!508307))

(declare-fun m!508309 () Bool)

(assert (=> start!47922 m!508309))

(declare-fun m!508311 () Bool)

(assert (=> b!527584 m!508311))

(declare-fun m!508313 () Bool)

(assert (=> b!527578 m!508313))

(declare-fun m!508315 () Bool)

(assert (=> b!527580 m!508315))

(assert (=> b!527575 m!508279))

(assert (=> b!527575 m!508279))

(declare-fun m!508317 () Bool)

(assert (=> b!527575 m!508317))

(check-sat (not b!527573) (not b!527576) (not b!527572) (not b!527585) (not b!527577) (not b!527580) (not b!527582) (not b!527575) (not start!47922) (not b!527584) (not b!527578))
(check-sat)
