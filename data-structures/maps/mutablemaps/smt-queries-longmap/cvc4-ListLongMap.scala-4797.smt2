; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65864 () Bool)

(assert start!65864)

(declare-fun b!758454 () Bool)

(declare-fun res!513235 () Bool)

(declare-fun e!422880 () Bool)

(assert (=> b!758454 (=> (not res!513235) (not e!422880))))

(declare-datatypes ((array!41990 0))(
  ( (array!41991 (arr!20105 (Array (_ BitVec 32) (_ BitVec 64))) (size!20526 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41990)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41990 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!758454 (= res!513235 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!758455 () Bool)

(declare-fun res!513226 () Bool)

(declare-fun e!422875 () Bool)

(assert (=> b!758455 (=> (not res!513226) (not e!422875))))

(declare-datatypes ((List!14160 0))(
  ( (Nil!14157) (Cons!14156 (h!15228 (_ BitVec 64)) (t!20483 List!14160)) )
))
(declare-fun arrayNoDuplicates!0 (array!41990 (_ BitVec 32) List!14160) Bool)

(assert (=> b!758455 (= res!513226 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14157))))

(declare-fun b!758456 () Bool)

(declare-fun e!422881 () Bool)

(declare-fun e!422877 () Bool)

(assert (=> b!758456 (= e!422881 e!422877)))

(declare-fun res!513234 () Bool)

(assert (=> b!758456 (=> (not res!513234) (not e!422877))))

(declare-datatypes ((SeekEntryResult!7712 0))(
  ( (MissingZero!7712 (index!33215 (_ BitVec 32))) (Found!7712 (index!33216 (_ BitVec 32))) (Intermediate!7712 (undefined!8524 Bool) (index!33217 (_ BitVec 32)) (x!64127 (_ BitVec 32))) (Undefined!7712) (MissingVacant!7712 (index!33218 (_ BitVec 32))) )
))
(declare-fun lt!337931 () SeekEntryResult!7712)

(declare-fun lt!337933 () SeekEntryResult!7712)

(assert (=> b!758456 (= res!513234 (= lt!337931 lt!337933))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!337934 () (_ BitVec 64))

(declare-fun lt!337935 () array!41990)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41990 (_ BitVec 32)) SeekEntryResult!7712)

(assert (=> b!758456 (= lt!337933 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337934 lt!337935 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!758456 (= lt!337931 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337934 mask!3328) lt!337934 lt!337935 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!758456 (= lt!337934 (select (store (arr!20105 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!758456 (= lt!337935 (array!41991 (store (arr!20105 a!3186) i!1173 k!2102) (size!20526 a!3186)))))

(declare-fun b!758457 () Bool)

(declare-fun res!513225 () Bool)

(assert (=> b!758457 (=> (not res!513225) (not e!422875))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!758457 (= res!513225 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20526 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20526 a!3186))))))

(declare-fun b!758458 () Bool)

(declare-fun res!513231 () Bool)

(assert (=> b!758458 (=> (not res!513231) (not e!422881))))

(declare-fun e!422886 () Bool)

(assert (=> b!758458 (= res!513231 e!422886)))

(declare-fun c!82998 () Bool)

(assert (=> b!758458 (= c!82998 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!758459 () Bool)

(declare-fun e!422878 () Bool)

(declare-fun e!422882 () Bool)

(assert (=> b!758459 (= e!422878 e!422882)))

(declare-fun res!513223 () Bool)

(assert (=> b!758459 (=> res!513223 e!422882)))

(assert (=> b!758459 (= res!513223 (or (not (= (select (arr!20105 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!337927 () SeekEntryResult!7712)

(declare-fun lt!337939 () SeekEntryResult!7712)

(declare-fun lt!337929 () SeekEntryResult!7712)

(declare-fun lt!337932 () SeekEntryResult!7712)

(assert (=> b!758459 (and (= lt!337932 lt!337929) (= lt!337939 lt!337927))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41990 (_ BitVec 32)) SeekEntryResult!7712)

(assert (=> b!758459 (= lt!337929 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337934 lt!337935 mask!3328))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41990 (_ BitVec 32)) SeekEntryResult!7712)

(assert (=> b!758459 (= lt!337932 (seekEntryOrOpen!0 lt!337934 lt!337935 mask!3328))))

(declare-fun lt!337930 () (_ BitVec 64))

(assert (=> b!758459 (= lt!337930 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!26250 0))(
  ( (Unit!26251) )
))
(declare-fun lt!337928 () Unit!26250)

(declare-fun e!422885 () Unit!26250)

(assert (=> b!758459 (= lt!337928 e!422885)))

(declare-fun c!82997 () Bool)

(assert (=> b!758459 (= c!82997 (= lt!337930 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!758460 () Bool)

(declare-fun res!513230 () Bool)

(assert (=> b!758460 (=> (not res!513230) (not e!422880))))

(assert (=> b!758460 (= res!513230 (and (= (size!20526 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20526 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20526 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!758461 () Bool)

(declare-fun res!513224 () Bool)

(assert (=> b!758461 (=> (not res!513224) (not e!422881))))

(assert (=> b!758461 (= res!513224 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20105 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!758462 () Bool)

(declare-fun res!513236 () Bool)

(assert (=> b!758462 (=> (not res!513236) (not e!422880))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!758462 (= res!513236 (validKeyInArray!0 (select (arr!20105 a!3186) j!159)))))

(declare-fun e!422876 () Bool)

(declare-fun b!758463 () Bool)

(declare-fun lt!337940 () SeekEntryResult!7712)

(assert (=> b!758463 (= e!422876 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20105 a!3186) j!159) a!3186 mask!3328) lt!337940))))

(declare-fun b!758464 () Bool)

(assert (=> b!758464 (= e!422880 e!422875)))

(declare-fun res!513221 () Bool)

(assert (=> b!758464 (=> (not res!513221) (not e!422875))))

(declare-fun lt!337937 () SeekEntryResult!7712)

(assert (=> b!758464 (= res!513221 (or (= lt!337937 (MissingZero!7712 i!1173)) (= lt!337937 (MissingVacant!7712 i!1173))))))

(assert (=> b!758464 (= lt!337937 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun lt!337936 () SeekEntryResult!7712)

(declare-fun b!758465 () Bool)

(assert (=> b!758465 (= e!422886 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20105 a!3186) j!159) a!3186 mask!3328) lt!337936))))

(declare-fun b!758466 () Bool)

(assert (=> b!758466 (= e!422875 e!422881)))

(declare-fun res!513227 () Bool)

(assert (=> b!758466 (=> (not res!513227) (not e!422881))))

(assert (=> b!758466 (= res!513227 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20105 a!3186) j!159) mask!3328) (select (arr!20105 a!3186) j!159) a!3186 mask!3328) lt!337936))))

(assert (=> b!758466 (= lt!337936 (Intermediate!7712 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!758467 () Bool)

(assert (=> b!758467 (= e!422886 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20105 a!3186) j!159) a!3186 mask!3328) (Found!7712 j!159)))))

(declare-fun b!758453 () Bool)

(declare-fun Unit!26252 () Unit!26250)

(assert (=> b!758453 (= e!422885 Unit!26252)))

(assert (=> b!758453 false))

(declare-fun res!513233 () Bool)

(assert (=> start!65864 (=> (not res!513233) (not e!422880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65864 (= res!513233 (validMask!0 mask!3328))))

(assert (=> start!65864 e!422880))

(assert (=> start!65864 true))

(declare-fun array_inv!15879 (array!41990) Bool)

(assert (=> start!65864 (array_inv!15879 a!3186)))

(declare-fun b!758468 () Bool)

(declare-fun e!422879 () Bool)

(assert (=> b!758468 (= e!422877 (not e!422879))))

(declare-fun res!513228 () Bool)

(assert (=> b!758468 (=> res!513228 e!422879)))

(assert (=> b!758468 (= res!513228 (or (not (is-Intermediate!7712 lt!337933)) (bvslt x!1131 (x!64127 lt!337933)) (not (= x!1131 (x!64127 lt!337933))) (not (= index!1321 (index!33217 lt!337933)))))))

(assert (=> b!758468 e!422876))

(declare-fun res!513232 () Bool)

(assert (=> b!758468 (=> (not res!513232) (not e!422876))))

(assert (=> b!758468 (= res!513232 (= lt!337939 lt!337940))))

(assert (=> b!758468 (= lt!337940 (Found!7712 j!159))))

(assert (=> b!758468 (= lt!337939 (seekEntryOrOpen!0 (select (arr!20105 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41990 (_ BitVec 32)) Bool)

(assert (=> b!758468 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337926 () Unit!26250)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41990 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26250)

(assert (=> b!758468 (= lt!337926 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!758469 () Bool)

(declare-fun res!513222 () Bool)

(assert (=> b!758469 (=> (not res!513222) (not e!422880))))

(assert (=> b!758469 (= res!513222 (validKeyInArray!0 k!2102))))

(declare-fun b!758470 () Bool)

(assert (=> b!758470 (= e!422882 (bvsge mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!758470 (= lt!337929 lt!337927)))

(declare-fun lt!337938 () Unit!26250)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!41990 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26250)

(assert (=> b!758470 (= lt!337938 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!758471 () Bool)

(declare-fun Unit!26253 () Unit!26250)

(assert (=> b!758471 (= e!422885 Unit!26253)))

(declare-fun b!758472 () Bool)

(declare-fun e!422883 () Bool)

(assert (=> b!758472 (= e!422883 e!422878)))

(declare-fun res!513229 () Bool)

(assert (=> b!758472 (=> res!513229 e!422878)))

(assert (=> b!758472 (= res!513229 (= lt!337930 lt!337934))))

(assert (=> b!758472 (= lt!337930 (select (store (arr!20105 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!758473 () Bool)

(assert (=> b!758473 (= e!422879 e!422883)))

(declare-fun res!513220 () Bool)

(assert (=> b!758473 (=> res!513220 e!422883)))

(assert (=> b!758473 (= res!513220 (not (= lt!337927 lt!337940)))))

(assert (=> b!758473 (= lt!337927 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20105 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!758474 () Bool)

(declare-fun res!513237 () Bool)

(assert (=> b!758474 (=> (not res!513237) (not e!422875))))

(assert (=> b!758474 (= res!513237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65864 res!513233) b!758460))

(assert (= (and b!758460 res!513230) b!758462))

(assert (= (and b!758462 res!513236) b!758469))

(assert (= (and b!758469 res!513222) b!758454))

(assert (= (and b!758454 res!513235) b!758464))

(assert (= (and b!758464 res!513221) b!758474))

(assert (= (and b!758474 res!513237) b!758455))

(assert (= (and b!758455 res!513226) b!758457))

(assert (= (and b!758457 res!513225) b!758466))

(assert (= (and b!758466 res!513227) b!758461))

(assert (= (and b!758461 res!513224) b!758458))

(assert (= (and b!758458 c!82998) b!758465))

(assert (= (and b!758458 (not c!82998)) b!758467))

(assert (= (and b!758458 res!513231) b!758456))

(assert (= (and b!758456 res!513234) b!758468))

(assert (= (and b!758468 res!513232) b!758463))

(assert (= (and b!758468 (not res!513228)) b!758473))

(assert (= (and b!758473 (not res!513220)) b!758472))

(assert (= (and b!758472 (not res!513229)) b!758459))

(assert (= (and b!758459 c!82997) b!758453))

(assert (= (and b!758459 (not c!82997)) b!758471))

(assert (= (and b!758459 (not res!513223)) b!758470))

(declare-fun m!706013 () Bool)

(assert (=> b!758466 m!706013))

(assert (=> b!758466 m!706013))

(declare-fun m!706015 () Bool)

(assert (=> b!758466 m!706015))

(assert (=> b!758466 m!706015))

(assert (=> b!758466 m!706013))

(declare-fun m!706017 () Bool)

(assert (=> b!758466 m!706017))

(assert (=> b!758465 m!706013))

(assert (=> b!758465 m!706013))

(declare-fun m!706019 () Bool)

(assert (=> b!758465 m!706019))

(assert (=> b!758462 m!706013))

(assert (=> b!758462 m!706013))

(declare-fun m!706021 () Bool)

(assert (=> b!758462 m!706021))

(declare-fun m!706023 () Bool)

(assert (=> b!758459 m!706023))

(declare-fun m!706025 () Bool)

(assert (=> b!758459 m!706025))

(declare-fun m!706027 () Bool)

(assert (=> b!758459 m!706027))

(assert (=> b!758463 m!706013))

(assert (=> b!758463 m!706013))

(declare-fun m!706029 () Bool)

(assert (=> b!758463 m!706029))

(declare-fun m!706031 () Bool)

(assert (=> b!758472 m!706031))

(declare-fun m!706033 () Bool)

(assert (=> b!758472 m!706033))

(declare-fun m!706035 () Bool)

(assert (=> b!758474 m!706035))

(declare-fun m!706037 () Bool)

(assert (=> b!758469 m!706037))

(assert (=> b!758468 m!706013))

(assert (=> b!758468 m!706013))

(declare-fun m!706039 () Bool)

(assert (=> b!758468 m!706039))

(declare-fun m!706041 () Bool)

(assert (=> b!758468 m!706041))

(declare-fun m!706043 () Bool)

(assert (=> b!758468 m!706043))

(declare-fun m!706045 () Bool)

(assert (=> b!758455 m!706045))

(assert (=> b!758467 m!706013))

(assert (=> b!758467 m!706013))

(declare-fun m!706047 () Bool)

(assert (=> b!758467 m!706047))

(declare-fun m!706049 () Bool)

(assert (=> start!65864 m!706049))

(declare-fun m!706051 () Bool)

(assert (=> start!65864 m!706051))

(declare-fun m!706053 () Bool)

(assert (=> b!758464 m!706053))

(assert (=> b!758473 m!706013))

(assert (=> b!758473 m!706013))

(assert (=> b!758473 m!706047))

(declare-fun m!706055 () Bool)

(assert (=> b!758470 m!706055))

(declare-fun m!706057 () Bool)

(assert (=> b!758454 m!706057))

(declare-fun m!706059 () Bool)

(assert (=> b!758456 m!706059))

(declare-fun m!706061 () Bool)

(assert (=> b!758456 m!706061))

(assert (=> b!758456 m!706031))

(declare-fun m!706063 () Bool)

(assert (=> b!758456 m!706063))

(declare-fun m!706065 () Bool)

(assert (=> b!758456 m!706065))

(assert (=> b!758456 m!706059))

(declare-fun m!706067 () Bool)

(assert (=> b!758461 m!706067))

(push 1)

