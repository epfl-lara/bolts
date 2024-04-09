; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48040 () Bool)

(assert start!48040)

(declare-fun b!528932 () Bool)

(declare-fun e!308226 () Bool)

(assert (=> b!528932 (= e!308226 false)))

(declare-fun b!528933 () Bool)

(declare-fun res!324995 () Bool)

(declare-fun e!308223 () Bool)

(assert (=> b!528933 (=> (not res!324995) (not e!308223))))

(declare-datatypes ((array!33493 0))(
  ( (array!33494 (arr!16092 (Array (_ BitVec 32) (_ BitVec 64))) (size!16456 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33493)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33493 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528933 (= res!324995 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!528934 () Bool)

(declare-fun res!324990 () Bool)

(declare-fun e!308227 () Bool)

(assert (=> b!528934 (=> (not res!324990) (not e!308227))))

(declare-datatypes ((List!10303 0))(
  ( (Nil!10300) (Cons!10299 (h!11236 (_ BitVec 64)) (t!16539 List!10303)) )
))
(declare-fun arrayNoDuplicates!0 (array!33493 (_ BitVec 32) List!10303) Bool)

(assert (=> b!528934 (= res!324990 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10300))))

(declare-fun b!528935 () Bool)

(declare-fun e!308225 () Bool)

(declare-datatypes ((SeekEntryResult!4566 0))(
  ( (MissingZero!4566 (index!20488 (_ BitVec 32))) (Found!4566 (index!20489 (_ BitVec 32))) (Intermediate!4566 (undefined!5378 Bool) (index!20490 (_ BitVec 32)) (x!49489 (_ BitVec 32))) (Undefined!4566) (MissingVacant!4566 (index!20491 (_ BitVec 32))) )
))
(declare-fun lt!243850 () SeekEntryResult!4566)

(declare-fun lt!243839 () SeekEntryResult!4566)

(assert (=> b!528935 (= e!308225 (= lt!243850 lt!243839))))

(declare-fun lt!243838 () SeekEntryResult!4566)

(assert (=> b!528935 (= lt!243839 lt!243838)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!243851 () array!33493)

(declare-fun lt!243842 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33493 (_ BitVec 32)) SeekEntryResult!4566)

(assert (=> b!528935 (= lt!243839 (seekEntryOrOpen!0 lt!243842 lt!243851 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!243840 () (_ BitVec 32))

(declare-fun lt!243846 () SeekEntryResult!4566)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((Unit!16730 0))(
  ( (Unit!16731) )
))
(declare-fun lt!243845 () Unit!16730)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!33493 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16730)

(assert (=> b!528935 (= lt!243845 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!243840 #b00000000000000000000000000000000 (index!20490 lt!243846) (x!49489 lt!243846) mask!3524))))

(declare-fun b!528936 () Bool)

(declare-fun e!308220 () Bool)

(assert (=> b!528936 (= e!308227 (not e!308220))))

(declare-fun res!324991 () Bool)

(assert (=> b!528936 (=> res!324991 e!308220)))

(declare-fun lt!243837 () SeekEntryResult!4566)

(assert (=> b!528936 (= res!324991 (or (= lt!243846 lt!243837) (undefined!5378 lt!243846) (not (is-Intermediate!4566 lt!243846))))))

(declare-fun lt!243844 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33493 (_ BitVec 32)) SeekEntryResult!4566)

(assert (=> b!528936 (= lt!243837 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243844 lt!243842 lt!243851 mask!3524))))

(assert (=> b!528936 (= lt!243846 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243840 (select (arr!16092 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528936 (= lt!243844 (toIndex!0 lt!243842 mask!3524))))

(assert (=> b!528936 (= lt!243842 (select (store (arr!16092 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!528936 (= lt!243840 (toIndex!0 (select (arr!16092 a!3235) j!176) mask!3524))))

(assert (=> b!528936 (= lt!243851 (array!33494 (store (arr!16092 a!3235) i!1204 k!2280) (size!16456 a!3235)))))

(assert (=> b!528936 (= lt!243850 lt!243838)))

(assert (=> b!528936 (= lt!243838 (Found!4566 j!176))))

(assert (=> b!528936 (= lt!243850 (seekEntryOrOpen!0 (select (arr!16092 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33493 (_ BitVec 32)) Bool)

(assert (=> b!528936 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!243841 () Unit!16730)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33493 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16730)

(assert (=> b!528936 (= lt!243841 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528937 () Bool)

(declare-fun res!324993 () Bool)

(assert (=> b!528937 (=> (not res!324993) (not e!308223))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528937 (= res!324993 (validKeyInArray!0 k!2280))))

(declare-fun b!528938 () Bool)

(assert (=> b!528938 (= e!308220 e!308225)))

(declare-fun res!324988 () Bool)

(assert (=> b!528938 (=> res!324988 e!308225)))

(assert (=> b!528938 (= res!324988 (or (bvsgt (x!49489 lt!243846) #b01111111111111111111111111111110) (bvslt lt!243840 #b00000000000000000000000000000000) (bvsge lt!243840 (size!16456 a!3235)) (bvslt (index!20490 lt!243846) #b00000000000000000000000000000000) (bvsge (index!20490 lt!243846) (size!16456 a!3235)) (not (= lt!243846 (Intermediate!4566 false (index!20490 lt!243846) (x!49489 lt!243846))))))))

(assert (=> b!528938 (= (index!20490 lt!243846) i!1204)))

(declare-fun lt!243847 () Unit!16730)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33493 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16730)

(assert (=> b!528938 (= lt!243847 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!243840 #b00000000000000000000000000000000 (index!20490 lt!243846) (x!49489 lt!243846) mask!3524))))

(assert (=> b!528938 (and (or (= (select (arr!16092 a!3235) (index!20490 lt!243846)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16092 a!3235) (index!20490 lt!243846)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16092 a!3235) (index!20490 lt!243846)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16092 a!3235) (index!20490 lt!243846)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243843 () Unit!16730)

(declare-fun e!308222 () Unit!16730)

(assert (=> b!528938 (= lt!243843 e!308222)))

(declare-fun c!62282 () Bool)

(assert (=> b!528938 (= c!62282 (= (select (arr!16092 a!3235) (index!20490 lt!243846)) (select (arr!16092 a!3235) j!176)))))

(assert (=> b!528938 (and (bvslt (x!49489 lt!243846) #b01111111111111111111111111111110) (or (= (select (arr!16092 a!3235) (index!20490 lt!243846)) (select (arr!16092 a!3235) j!176)) (= (select (arr!16092 a!3235) (index!20490 lt!243846)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16092 a!3235) (index!20490 lt!243846)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!324985 () Bool)

(assert (=> start!48040 (=> (not res!324985) (not e!308223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48040 (= res!324985 (validMask!0 mask!3524))))

(assert (=> start!48040 e!308223))

(assert (=> start!48040 true))

(declare-fun array_inv!11866 (array!33493) Bool)

(assert (=> start!48040 (array_inv!11866 a!3235)))

(declare-fun b!528939 () Bool)

(declare-fun res!324994 () Bool)

(assert (=> b!528939 (=> res!324994 e!308225)))

(declare-fun e!308221 () Bool)

(assert (=> b!528939 (= res!324994 e!308221)))

(declare-fun res!324996 () Bool)

(assert (=> b!528939 (=> (not res!324996) (not e!308221))))

(assert (=> b!528939 (= res!324996 (bvsgt #b00000000000000000000000000000000 (x!49489 lt!243846)))))

(declare-fun b!528940 () Bool)

(declare-fun Unit!16732 () Unit!16730)

(assert (=> b!528940 (= e!308222 Unit!16732)))

(declare-fun b!528941 () Bool)

(assert (=> b!528941 (= e!308223 e!308227)))

(declare-fun res!324992 () Bool)

(assert (=> b!528941 (=> (not res!324992) (not e!308227))))

(declare-fun lt!243849 () SeekEntryResult!4566)

(assert (=> b!528941 (= res!324992 (or (= lt!243849 (MissingZero!4566 i!1204)) (= lt!243849 (MissingVacant!4566 i!1204))))))

(assert (=> b!528941 (= lt!243849 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!528942 () Bool)

(declare-fun res!324986 () Bool)

(assert (=> b!528942 (=> (not res!324986) (not e!308227))))

(assert (=> b!528942 (= res!324986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!528943 () Bool)

(declare-fun res!324997 () Bool)

(assert (=> b!528943 (=> res!324997 e!308225)))

(assert (=> b!528943 (= res!324997 (not (= lt!243837 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243840 lt!243842 lt!243851 mask!3524))))))

(declare-fun b!528944 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33493 (_ BitVec 32)) SeekEntryResult!4566)

(assert (=> b!528944 (= e!308221 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243840 (index!20490 lt!243846) (select (arr!16092 a!3235) j!176) a!3235 mask!3524) lt!243838)))))

(declare-fun b!528945 () Bool)

(declare-fun Unit!16733 () Unit!16730)

(assert (=> b!528945 (= e!308222 Unit!16733)))

(declare-fun lt!243848 () Unit!16730)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33493 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16730)

(assert (=> b!528945 (= lt!243848 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!243840 #b00000000000000000000000000000000 (index!20490 lt!243846) (x!49489 lt!243846) mask!3524))))

(declare-fun res!324998 () Bool)

(assert (=> b!528945 (= res!324998 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243840 lt!243842 lt!243851 mask!3524) (Intermediate!4566 false (index!20490 lt!243846) (x!49489 lt!243846))))))

(assert (=> b!528945 (=> (not res!324998) (not e!308226))))

(assert (=> b!528945 e!308226))

(declare-fun b!528946 () Bool)

(declare-fun res!324989 () Bool)

(assert (=> b!528946 (=> (not res!324989) (not e!308223))))

(assert (=> b!528946 (= res!324989 (validKeyInArray!0 (select (arr!16092 a!3235) j!176)))))

(declare-fun b!528947 () Bool)

(declare-fun res!324987 () Bool)

(assert (=> b!528947 (=> (not res!324987) (not e!308223))))

(assert (=> b!528947 (= res!324987 (and (= (size!16456 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16456 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16456 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!48040 res!324985) b!528947))

(assert (= (and b!528947 res!324987) b!528946))

(assert (= (and b!528946 res!324989) b!528937))

(assert (= (and b!528937 res!324993) b!528933))

(assert (= (and b!528933 res!324995) b!528941))

(assert (= (and b!528941 res!324992) b!528942))

(assert (= (and b!528942 res!324986) b!528934))

(assert (= (and b!528934 res!324990) b!528936))

(assert (= (and b!528936 (not res!324991)) b!528938))

(assert (= (and b!528938 c!62282) b!528945))

(assert (= (and b!528938 (not c!62282)) b!528940))

(assert (= (and b!528945 res!324998) b!528932))

(assert (= (and b!528938 (not res!324988)) b!528939))

(assert (= (and b!528939 res!324996) b!528944))

(assert (= (and b!528939 (not res!324994)) b!528943))

(assert (= (and b!528943 (not res!324997)) b!528935))

(declare-fun m!509497 () Bool)

(assert (=> b!528937 m!509497))

(declare-fun m!509499 () Bool)

(assert (=> b!528944 m!509499))

(assert (=> b!528944 m!509499))

(declare-fun m!509501 () Bool)

(assert (=> b!528944 m!509501))

(assert (=> b!528946 m!509499))

(assert (=> b!528946 m!509499))

(declare-fun m!509503 () Bool)

(assert (=> b!528946 m!509503))

(declare-fun m!509505 () Bool)

(assert (=> b!528942 m!509505))

(declare-fun m!509507 () Bool)

(assert (=> b!528935 m!509507))

(declare-fun m!509509 () Bool)

(assert (=> b!528935 m!509509))

(declare-fun m!509511 () Bool)

(assert (=> b!528941 m!509511))

(declare-fun m!509513 () Bool)

(assert (=> b!528938 m!509513))

(declare-fun m!509515 () Bool)

(assert (=> b!528938 m!509515))

(assert (=> b!528938 m!509499))

(declare-fun m!509517 () Bool)

(assert (=> b!528934 m!509517))

(declare-fun m!509519 () Bool)

(assert (=> b!528936 m!509519))

(declare-fun m!509521 () Bool)

(assert (=> b!528936 m!509521))

(declare-fun m!509523 () Bool)

(assert (=> b!528936 m!509523))

(assert (=> b!528936 m!509499))

(declare-fun m!509525 () Bool)

(assert (=> b!528936 m!509525))

(assert (=> b!528936 m!509499))

(declare-fun m!509527 () Bool)

(assert (=> b!528936 m!509527))

(declare-fun m!509529 () Bool)

(assert (=> b!528936 m!509529))

(declare-fun m!509531 () Bool)

(assert (=> b!528936 m!509531))

(assert (=> b!528936 m!509499))

(declare-fun m!509533 () Bool)

(assert (=> b!528936 m!509533))

(declare-fun m!509535 () Bool)

(assert (=> b!528936 m!509535))

(assert (=> b!528936 m!509499))

(declare-fun m!509537 () Bool)

(assert (=> b!528945 m!509537))

(declare-fun m!509539 () Bool)

(assert (=> b!528945 m!509539))

(declare-fun m!509541 () Bool)

(assert (=> b!528933 m!509541))

(assert (=> b!528943 m!509539))

(declare-fun m!509543 () Bool)

(assert (=> start!48040 m!509543))

(declare-fun m!509545 () Bool)

(assert (=> start!48040 m!509545))

(push 1)

