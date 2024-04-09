; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66810 () Bool)

(assert start!66810)

(declare-fun b!770045 () Bool)

(declare-fun res!520986 () Bool)

(declare-fun e!428777 () Bool)

(assert (=> b!770045 (=> (not res!520986) (not e!428777))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42327 0))(
  ( (array!42328 (arr!20260 (Array (_ BitVec 32) (_ BitVec 64))) (size!20681 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42327)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!770045 (= res!520986 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20260 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!770046 () Bool)

(declare-fun e!428776 () Bool)

(assert (=> b!770046 (= e!428776 true)))

(declare-datatypes ((Unit!26504 0))(
  ( (Unit!26505) )
))
(declare-fun lt!342723 () Unit!26504)

(declare-fun e!428770 () Unit!26504)

(assert (=> b!770046 (= lt!342723 e!428770)))

(declare-fun c!84933 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!770046 (= c!84933 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!342721 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770046 (= lt!342721 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!770047 () Bool)

(declare-fun res!520974 () Bool)

(declare-fun e!428778 () Bool)

(assert (=> b!770047 (=> (not res!520974) (not e!428778))))

(assert (=> b!770047 (= res!520974 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20681 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20681 a!3186))))))

(declare-fun res!520975 () Bool)

(declare-fun e!428775 () Bool)

(assert (=> start!66810 (=> (not res!520975) (not e!428775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66810 (= res!520975 (validMask!0 mask!3328))))

(assert (=> start!66810 e!428775))

(assert (=> start!66810 true))

(declare-fun array_inv!16034 (array!42327) Bool)

(assert (=> start!66810 (array_inv!16034 a!3186)))

(declare-fun b!770048 () Bool)

(declare-fun res!520987 () Bool)

(assert (=> b!770048 (=> (not res!520987) (not e!428775))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42327 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!770048 (= res!520987 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!770049 () Bool)

(declare-fun res!520984 () Bool)

(assert (=> b!770049 (=> (not res!520984) (not e!428775))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!770049 (= res!520984 (validKeyInArray!0 k0!2102))))

(declare-fun b!770050 () Bool)

(declare-fun res!520977 () Bool)

(assert (=> b!770050 (=> (not res!520977) (not e!428778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42327 (_ BitVec 32)) Bool)

(assert (=> b!770050 (= res!520977 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!770051 () Bool)

(declare-fun res!520985 () Bool)

(assert (=> b!770051 (=> (not res!520985) (not e!428775))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!770051 (= res!520985 (and (= (size!20681 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20681 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20681 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!770052 () Bool)

(declare-fun e!428772 () Bool)

(declare-fun e!428773 () Bool)

(assert (=> b!770052 (= e!428772 e!428773)))

(declare-fun res!520983 () Bool)

(assert (=> b!770052 (=> (not res!520983) (not e!428773))))

(declare-datatypes ((SeekEntryResult!7867 0))(
  ( (MissingZero!7867 (index!33835 (_ BitVec 32))) (Found!7867 (index!33836 (_ BitVec 32))) (Intermediate!7867 (undefined!8679 Bool) (index!33837 (_ BitVec 32)) (x!64791 (_ BitVec 32))) (Undefined!7867) (MissingVacant!7867 (index!33838 (_ BitVec 32))) )
))
(declare-fun lt!342722 () SeekEntryResult!7867)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42327 (_ BitVec 32)) SeekEntryResult!7867)

(assert (=> b!770052 (= res!520983 (= (seekEntryOrOpen!0 (select (arr!20260 a!3186) j!159) a!3186 mask!3328) lt!342722))))

(assert (=> b!770052 (= lt!342722 (Found!7867 j!159))))

(declare-fun b!770053 () Bool)

(declare-fun res!520978 () Bool)

(assert (=> b!770053 (=> (not res!520978) (not e!428775))))

(assert (=> b!770053 (= res!520978 (validKeyInArray!0 (select (arr!20260 a!3186) j!159)))))

(declare-fun b!770054 () Bool)

(declare-fun res!520981 () Bool)

(assert (=> b!770054 (=> (not res!520981) (not e!428778))))

(declare-datatypes ((List!14315 0))(
  ( (Nil!14312) (Cons!14311 (h!15410 (_ BitVec 64)) (t!20638 List!14315)) )
))
(declare-fun arrayNoDuplicates!0 (array!42327 (_ BitVec 32) List!14315) Bool)

(assert (=> b!770054 (= res!520981 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14312))))

(declare-fun lt!342717 () SeekEntryResult!7867)

(declare-fun b!770055 () Bool)

(declare-fun e!428779 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42327 (_ BitVec 32)) SeekEntryResult!7867)

(assert (=> b!770055 (= e!428779 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20260 a!3186) j!159) a!3186 mask!3328) lt!342717))))

(declare-fun b!770056 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42327 (_ BitVec 32)) SeekEntryResult!7867)

(assert (=> b!770056 (= e!428779 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20260 a!3186) j!159) a!3186 mask!3328) (Found!7867 j!159)))))

(declare-fun b!770057 () Bool)

(declare-fun Unit!26506 () Unit!26504)

(assert (=> b!770057 (= e!428770 Unit!26506)))

(declare-fun lt!342718 () SeekEntryResult!7867)

(assert (=> b!770057 (= lt!342718 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20260 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!770057 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342721 resIntermediateIndex!5 (select (arr!20260 a!3186) j!159) a!3186 mask!3328) (Found!7867 j!159))))

(declare-fun b!770058 () Bool)

(declare-fun res!520976 () Bool)

(assert (=> b!770058 (=> (not res!520976) (not e!428777))))

(assert (=> b!770058 (= res!520976 e!428779)))

(declare-fun c!84932 () Bool)

(assert (=> b!770058 (= c!84932 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!770059 () Bool)

(assert (=> b!770059 (= e!428778 e!428777)))

(declare-fun res!520972 () Bool)

(assert (=> b!770059 (=> (not res!520972) (not e!428777))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770059 (= res!520972 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20260 a!3186) j!159) mask!3328) (select (arr!20260 a!3186) j!159) a!3186 mask!3328) lt!342717))))

(assert (=> b!770059 (= lt!342717 (Intermediate!7867 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!770060 () Bool)

(declare-fun Unit!26507 () Unit!26504)

(assert (=> b!770060 (= e!428770 Unit!26507)))

(assert (=> b!770060 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342721 (select (arr!20260 a!3186) j!159) a!3186 mask!3328) lt!342717)))

(declare-fun b!770061 () Bool)

(assert (=> b!770061 (= e!428773 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20260 a!3186) j!159) a!3186 mask!3328) lt!342722))))

(declare-fun b!770062 () Bool)

(assert (=> b!770062 (= e!428775 e!428778)))

(declare-fun res!520979 () Bool)

(assert (=> b!770062 (=> (not res!520979) (not e!428778))))

(declare-fun lt!342719 () SeekEntryResult!7867)

(assert (=> b!770062 (= res!520979 (or (= lt!342719 (MissingZero!7867 i!1173)) (= lt!342719 (MissingVacant!7867 i!1173))))))

(assert (=> b!770062 (= lt!342719 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!770063 () Bool)

(declare-fun e!428771 () Bool)

(assert (=> b!770063 (= e!428771 (not e!428776))))

(declare-fun res!520973 () Bool)

(assert (=> b!770063 (=> res!520973 e!428776)))

(declare-fun lt!342725 () SeekEntryResult!7867)

(get-info :version)

(assert (=> b!770063 (= res!520973 (or (not ((_ is Intermediate!7867) lt!342725)) (bvsge x!1131 (x!64791 lt!342725))))))

(assert (=> b!770063 e!428772))

(declare-fun res!520980 () Bool)

(assert (=> b!770063 (=> (not res!520980) (not e!428772))))

(assert (=> b!770063 (= res!520980 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342724 () Unit!26504)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42327 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26504)

(assert (=> b!770063 (= lt!342724 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!770064 () Bool)

(assert (=> b!770064 (= e!428777 e!428771)))

(declare-fun res!520982 () Bool)

(assert (=> b!770064 (=> (not res!520982) (not e!428771))))

(declare-fun lt!342726 () SeekEntryResult!7867)

(assert (=> b!770064 (= res!520982 (= lt!342726 lt!342725))))

(declare-fun lt!342720 () (_ BitVec 64))

(declare-fun lt!342727 () array!42327)

(assert (=> b!770064 (= lt!342725 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342720 lt!342727 mask!3328))))

(assert (=> b!770064 (= lt!342726 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342720 mask!3328) lt!342720 lt!342727 mask!3328))))

(assert (=> b!770064 (= lt!342720 (select (store (arr!20260 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!770064 (= lt!342727 (array!42328 (store (arr!20260 a!3186) i!1173 k0!2102) (size!20681 a!3186)))))

(assert (= (and start!66810 res!520975) b!770051))

(assert (= (and b!770051 res!520985) b!770053))

(assert (= (and b!770053 res!520978) b!770049))

(assert (= (and b!770049 res!520984) b!770048))

(assert (= (and b!770048 res!520987) b!770062))

(assert (= (and b!770062 res!520979) b!770050))

(assert (= (and b!770050 res!520977) b!770054))

(assert (= (and b!770054 res!520981) b!770047))

(assert (= (and b!770047 res!520974) b!770059))

(assert (= (and b!770059 res!520972) b!770045))

(assert (= (and b!770045 res!520986) b!770058))

(assert (= (and b!770058 c!84932) b!770055))

(assert (= (and b!770058 (not c!84932)) b!770056))

(assert (= (and b!770058 res!520976) b!770064))

(assert (= (and b!770064 res!520982) b!770063))

(assert (= (and b!770063 res!520980) b!770052))

(assert (= (and b!770052 res!520983) b!770061))

(assert (= (and b!770063 (not res!520973)) b!770046))

(assert (= (and b!770046 c!84933) b!770060))

(assert (= (and b!770046 (not c!84933)) b!770057))

(declare-fun m!715439 () Bool)

(assert (=> start!66810 m!715439))

(declare-fun m!715441 () Bool)

(assert (=> start!66810 m!715441))

(declare-fun m!715443 () Bool)

(assert (=> b!770056 m!715443))

(assert (=> b!770056 m!715443))

(declare-fun m!715445 () Bool)

(assert (=> b!770056 m!715445))

(assert (=> b!770053 m!715443))

(assert (=> b!770053 m!715443))

(declare-fun m!715447 () Bool)

(assert (=> b!770053 m!715447))

(declare-fun m!715449 () Bool)

(assert (=> b!770054 m!715449))

(declare-fun m!715451 () Bool)

(assert (=> b!770046 m!715451))

(declare-fun m!715453 () Bool)

(assert (=> b!770050 m!715453))

(declare-fun m!715455 () Bool)

(assert (=> b!770062 m!715455))

(declare-fun m!715457 () Bool)

(assert (=> b!770045 m!715457))

(declare-fun m!715459 () Bool)

(assert (=> b!770063 m!715459))

(declare-fun m!715461 () Bool)

(assert (=> b!770063 m!715461))

(assert (=> b!770060 m!715443))

(assert (=> b!770060 m!715443))

(declare-fun m!715463 () Bool)

(assert (=> b!770060 m!715463))

(assert (=> b!770059 m!715443))

(assert (=> b!770059 m!715443))

(declare-fun m!715465 () Bool)

(assert (=> b!770059 m!715465))

(assert (=> b!770059 m!715465))

(assert (=> b!770059 m!715443))

(declare-fun m!715467 () Bool)

(assert (=> b!770059 m!715467))

(declare-fun m!715469 () Bool)

(assert (=> b!770048 m!715469))

(assert (=> b!770057 m!715443))

(assert (=> b!770057 m!715443))

(assert (=> b!770057 m!715445))

(assert (=> b!770057 m!715443))

(declare-fun m!715471 () Bool)

(assert (=> b!770057 m!715471))

(declare-fun m!715473 () Bool)

(assert (=> b!770049 m!715473))

(assert (=> b!770055 m!715443))

(assert (=> b!770055 m!715443))

(declare-fun m!715475 () Bool)

(assert (=> b!770055 m!715475))

(assert (=> b!770061 m!715443))

(assert (=> b!770061 m!715443))

(declare-fun m!715477 () Bool)

(assert (=> b!770061 m!715477))

(declare-fun m!715479 () Bool)

(assert (=> b!770064 m!715479))

(declare-fun m!715481 () Bool)

(assert (=> b!770064 m!715481))

(declare-fun m!715483 () Bool)

(assert (=> b!770064 m!715483))

(declare-fun m!715485 () Bool)

(assert (=> b!770064 m!715485))

(assert (=> b!770064 m!715479))

(declare-fun m!715487 () Bool)

(assert (=> b!770064 m!715487))

(assert (=> b!770052 m!715443))

(assert (=> b!770052 m!715443))

(declare-fun m!715489 () Bool)

(assert (=> b!770052 m!715489))

(check-sat (not b!770055) (not b!770064) (not b!770053) (not b!770048) (not b!770063) (not b!770062) (not b!770049) (not b!770060) (not b!770057) (not b!770059) (not b!770046) (not start!66810) (not b!770056) (not b!770061) (not b!770052) (not b!770050) (not b!770054))
(check-sat)
