; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65290 () Bool)

(assert start!65290)

(declare-fun b!740462 () Bool)

(declare-fun e!413998 () Bool)

(declare-fun e!414003 () Bool)

(assert (=> b!740462 (= e!413998 e!414003)))

(declare-fun res!498071 () Bool)

(assert (=> b!740462 (=> (not res!498071) (not e!414003))))

(declare-datatypes ((array!41416 0))(
  ( (array!41417 (arr!19818 (Array (_ BitVec 32) (_ BitVec 64))) (size!20239 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41416)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7425 0))(
  ( (MissingZero!7425 (index!32067 (_ BitVec 32))) (Found!7425 (index!32068 (_ BitVec 32))) (Intermediate!7425 (undefined!8237 Bool) (index!32069 (_ BitVec 32)) (x!63080 (_ BitVec 32))) (Undefined!7425) (MissingVacant!7425 (index!32070 (_ BitVec 32))) )
))
(declare-fun lt!328979 () SeekEntryResult!7425)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41416 (_ BitVec 32)) SeekEntryResult!7425)

(assert (=> b!740462 (= res!498071 (= (seekEntryOrOpen!0 (select (arr!19818 a!3186) j!159) a!3186 mask!3328) lt!328979))))

(assert (=> b!740462 (= lt!328979 (Found!7425 j!159))))

(declare-fun res!498057 () Bool)

(declare-fun e!414002 () Bool)

(assert (=> start!65290 (=> (not res!498057) (not e!414002))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65290 (= res!498057 (validMask!0 mask!3328))))

(assert (=> start!65290 e!414002))

(assert (=> start!65290 true))

(declare-fun array_inv!15592 (array!41416) Bool)

(assert (=> start!65290 (array_inv!15592 a!3186)))

(declare-fun b!740463 () Bool)

(declare-fun res!498062 () Bool)

(declare-fun e!413993 () Bool)

(assert (=> b!740463 (=> res!498062 e!413993)))

(declare-fun e!413997 () Bool)

(assert (=> b!740463 (= res!498062 e!413997)))

(declare-fun c!81585 () Bool)

(declare-fun lt!328980 () Bool)

(assert (=> b!740463 (= c!81585 lt!328980)))

(declare-fun b!740464 () Bool)

(declare-fun res!498069 () Bool)

(declare-fun e!413994 () Bool)

(assert (=> b!740464 (=> (not res!498069) (not e!413994))))

(declare-datatypes ((List!13873 0))(
  ( (Nil!13870) (Cons!13869 (h!14941 (_ BitVec 64)) (t!20196 List!13873)) )
))
(declare-fun arrayNoDuplicates!0 (array!41416 (_ BitVec 32) List!13873) Bool)

(assert (=> b!740464 (= res!498069 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13870))))

(declare-fun b!740465 () Bool)

(declare-fun res!498064 () Bool)

(assert (=> b!740465 (=> (not res!498064) (not e!413994))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!740465 (= res!498064 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20239 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20239 a!3186))))))

(declare-fun b!740466 () Bool)

(assert (=> b!740466 (= e!414002 e!413994)))

(declare-fun res!498059 () Bool)

(assert (=> b!740466 (=> (not res!498059) (not e!413994))))

(declare-fun lt!328976 () SeekEntryResult!7425)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!740466 (= res!498059 (or (= lt!328976 (MissingZero!7425 i!1173)) (= lt!328976 (MissingVacant!7425 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!740466 (= lt!328976 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun e!413992 () Bool)

(declare-fun b!740467 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41416 (_ BitVec 32)) SeekEntryResult!7425)

(assert (=> b!740467 (= e!413992 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19818 a!3186) j!159) a!3186 mask!3328) (Found!7425 j!159)))))

(declare-fun b!740468 () Bool)

(declare-datatypes ((Unit!25318 0))(
  ( (Unit!25319) )
))
(declare-fun e!413999 () Unit!25318)

(declare-fun Unit!25320 () Unit!25318)

(assert (=> b!740468 (= e!413999 Unit!25320)))

(declare-fun lt!328969 () SeekEntryResult!7425)

(declare-fun lt!328982 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41416 (_ BitVec 32)) SeekEntryResult!7425)

(assert (=> b!740468 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328982 (select (arr!19818 a!3186) j!159) a!3186 mask!3328) lt!328969)))

(declare-fun b!740469 () Bool)

(declare-fun res!498058 () Bool)

(assert (=> b!740469 (=> (not res!498058) (not e!414002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!740469 (= res!498058 (validKeyInArray!0 k!2102))))

(declare-fun b!740470 () Bool)

(declare-fun res!498074 () Bool)

(declare-fun e!413995 () Bool)

(assert (=> b!740470 (=> (not res!498074) (not e!413995))))

(assert (=> b!740470 (= res!498074 e!413992)))

(declare-fun c!81584 () Bool)

(assert (=> b!740470 (= c!81584 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!740471 () Bool)

(assert (=> b!740471 (= e!413994 e!413995)))

(declare-fun res!498075 () Bool)

(assert (=> b!740471 (=> (not res!498075) (not e!413995))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740471 (= res!498075 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19818 a!3186) j!159) mask!3328) (select (arr!19818 a!3186) j!159) a!3186 mask!3328) lt!328969))))

(assert (=> b!740471 (= lt!328969 (Intermediate!7425 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!740472 () Bool)

(assert (=> b!740472 (= e!413992 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19818 a!3186) j!159) a!3186 mask!3328) lt!328969))))

(declare-fun b!740473 () Bool)

(assert (=> b!740473 (= e!413993 true)))

(declare-fun lt!328978 () array!41416)

(declare-fun lt!328970 () (_ BitVec 64))

(declare-fun lt!328972 () SeekEntryResult!7425)

(assert (=> b!740473 (= (seekEntryOrOpen!0 lt!328970 lt!328978 mask!3328) lt!328972)))

(declare-fun lt!328977 () Unit!25318)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!41416 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25318)

(assert (=> b!740473 (= lt!328977 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k!2102 j!159 lt!328982 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!740474 () Bool)

(declare-fun e!414000 () Bool)

(assert (=> b!740474 (= e!413995 e!414000)))

(declare-fun res!498065 () Bool)

(assert (=> b!740474 (=> (not res!498065) (not e!414000))))

(declare-fun lt!328973 () SeekEntryResult!7425)

(declare-fun lt!328975 () SeekEntryResult!7425)

(assert (=> b!740474 (= res!498065 (= lt!328973 lt!328975))))

(assert (=> b!740474 (= lt!328975 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328970 lt!328978 mask!3328))))

(assert (=> b!740474 (= lt!328973 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328970 mask!3328) lt!328970 lt!328978 mask!3328))))

(assert (=> b!740474 (= lt!328970 (select (store (arr!19818 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!740474 (= lt!328978 (array!41417 (store (arr!19818 a!3186) i!1173 k!2102) (size!20239 a!3186)))))

(declare-fun b!740475 () Bool)

(declare-fun res!498068 () Bool)

(assert (=> b!740475 (=> (not res!498068) (not e!413995))))

(assert (=> b!740475 (= res!498068 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19818 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!740476 () Bool)

(assert (=> b!740476 (= e!413997 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328982 resIntermediateIndex!5 (select (arr!19818 a!3186) j!159) a!3186 mask!3328) lt!328972)))))

(declare-fun b!740477 () Bool)

(declare-fun res!498073 () Bool)

(assert (=> b!740477 (=> (not res!498073) (not e!414002))))

(assert (=> b!740477 (= res!498073 (and (= (size!20239 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20239 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20239 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!740478 () Bool)

(declare-fun res!498070 () Bool)

(assert (=> b!740478 (=> (not res!498070) (not e!414002))))

(assert (=> b!740478 (= res!498070 (validKeyInArray!0 (select (arr!19818 a!3186) j!159)))))

(declare-fun b!740479 () Bool)

(declare-fun res!498067 () Bool)

(assert (=> b!740479 (=> (not res!498067) (not e!414002))))

(declare-fun arrayContainsKey!0 (array!41416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!740479 (= res!498067 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!740480 () Bool)

(declare-fun res!498060 () Bool)

(assert (=> b!740480 (=> res!498060 e!413993)))

(assert (=> b!740480 (= res!498060 (not (= lt!328973 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328982 lt!328970 lt!328978 mask!3328))))))

(declare-fun b!740481 () Bool)

(assert (=> b!740481 (= e!414003 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19818 a!3186) j!159) a!3186 mask!3328) lt!328979))))

(declare-fun b!740482 () Bool)

(declare-fun Unit!25321 () Unit!25318)

(assert (=> b!740482 (= e!413999 Unit!25321)))

(declare-fun lt!328974 () SeekEntryResult!7425)

(assert (=> b!740482 (= lt!328974 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19818 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!740482 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328982 resIntermediateIndex!5 (select (arr!19818 a!3186) j!159) a!3186 mask!3328) lt!328972)))

(declare-fun b!740483 () Bool)

(declare-fun e!414001 () Bool)

(assert (=> b!740483 (= e!414000 (not e!414001))))

(declare-fun res!498063 () Bool)

(assert (=> b!740483 (=> res!498063 e!414001)))

(assert (=> b!740483 (= res!498063 (or (not (is-Intermediate!7425 lt!328975)) (bvsge x!1131 (x!63080 lt!328975))))))

(assert (=> b!740483 (= lt!328972 (Found!7425 j!159))))

(assert (=> b!740483 e!413998))

(declare-fun res!498072 () Bool)

(assert (=> b!740483 (=> (not res!498072) (not e!413998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41416 (_ BitVec 32)) Bool)

(assert (=> b!740483 (= res!498072 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328971 () Unit!25318)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41416 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25318)

(assert (=> b!740483 (= lt!328971 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!740484 () Bool)

(assert (=> b!740484 (= e!414001 e!413993)))

(declare-fun res!498066 () Bool)

(assert (=> b!740484 (=> res!498066 e!413993)))

(assert (=> b!740484 (= res!498066 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328982 #b00000000000000000000000000000000) (bvsge lt!328982 (size!20239 a!3186))))))

(declare-fun lt!328981 () Unit!25318)

(assert (=> b!740484 (= lt!328981 e!413999)))

(declare-fun c!81583 () Bool)

(assert (=> b!740484 (= c!81583 lt!328980)))

(assert (=> b!740484 (= lt!328980 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740484 (= lt!328982 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!740485 () Bool)

(declare-fun res!498061 () Bool)

(assert (=> b!740485 (=> (not res!498061) (not e!413994))))

(assert (=> b!740485 (= res!498061 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!740486 () Bool)

(assert (=> b!740486 (= e!413997 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328982 (select (arr!19818 a!3186) j!159) a!3186 mask!3328) lt!328969)))))

(assert (= (and start!65290 res!498057) b!740477))

(assert (= (and b!740477 res!498073) b!740478))

(assert (= (and b!740478 res!498070) b!740469))

(assert (= (and b!740469 res!498058) b!740479))

(assert (= (and b!740479 res!498067) b!740466))

(assert (= (and b!740466 res!498059) b!740485))

(assert (= (and b!740485 res!498061) b!740464))

(assert (= (and b!740464 res!498069) b!740465))

(assert (= (and b!740465 res!498064) b!740471))

(assert (= (and b!740471 res!498075) b!740475))

(assert (= (and b!740475 res!498068) b!740470))

(assert (= (and b!740470 c!81584) b!740472))

(assert (= (and b!740470 (not c!81584)) b!740467))

(assert (= (and b!740470 res!498074) b!740474))

(assert (= (and b!740474 res!498065) b!740483))

(assert (= (and b!740483 res!498072) b!740462))

(assert (= (and b!740462 res!498071) b!740481))

(assert (= (and b!740483 (not res!498063)) b!740484))

(assert (= (and b!740484 c!81583) b!740468))

(assert (= (and b!740484 (not c!81583)) b!740482))

(assert (= (and b!740484 (not res!498066)) b!740463))

(assert (= (and b!740463 c!81585) b!740486))

(assert (= (and b!740463 (not c!81585)) b!740476))

(assert (= (and b!740463 (not res!498062)) b!740480))

(assert (= (and b!740480 (not res!498060)) b!740473))

(declare-fun m!691663 () Bool)

(assert (=> b!740479 m!691663))

(declare-fun m!691665 () Bool)

(assert (=> b!740486 m!691665))

(assert (=> b!740486 m!691665))

(declare-fun m!691667 () Bool)

(assert (=> b!740486 m!691667))

(declare-fun m!691669 () Bool)

(assert (=> b!740473 m!691669))

(declare-fun m!691671 () Bool)

(assert (=> b!740473 m!691671))

(assert (=> b!740468 m!691665))

(assert (=> b!740468 m!691665))

(assert (=> b!740468 m!691667))

(declare-fun m!691673 () Bool)

(assert (=> b!740466 m!691673))

(declare-fun m!691675 () Bool)

(assert (=> b!740464 m!691675))

(declare-fun m!691677 () Bool)

(assert (=> b!740480 m!691677))

(assert (=> b!740478 m!691665))

(assert (=> b!740478 m!691665))

(declare-fun m!691679 () Bool)

(assert (=> b!740478 m!691679))

(declare-fun m!691681 () Bool)

(assert (=> b!740485 m!691681))

(assert (=> b!740467 m!691665))

(assert (=> b!740467 m!691665))

(declare-fun m!691683 () Bool)

(assert (=> b!740467 m!691683))

(declare-fun m!691685 () Bool)

(assert (=> start!65290 m!691685))

(declare-fun m!691687 () Bool)

(assert (=> start!65290 m!691687))

(assert (=> b!740471 m!691665))

(assert (=> b!740471 m!691665))

(declare-fun m!691689 () Bool)

(assert (=> b!740471 m!691689))

(assert (=> b!740471 m!691689))

(assert (=> b!740471 m!691665))

(declare-fun m!691691 () Bool)

(assert (=> b!740471 m!691691))

(assert (=> b!740482 m!691665))

(assert (=> b!740482 m!691665))

(assert (=> b!740482 m!691683))

(assert (=> b!740482 m!691665))

(declare-fun m!691693 () Bool)

(assert (=> b!740482 m!691693))

(declare-fun m!691695 () Bool)

(assert (=> b!740474 m!691695))

(assert (=> b!740474 m!691695))

(declare-fun m!691697 () Bool)

(assert (=> b!740474 m!691697))

(declare-fun m!691699 () Bool)

(assert (=> b!740474 m!691699))

(declare-fun m!691701 () Bool)

(assert (=> b!740474 m!691701))

(declare-fun m!691703 () Bool)

(assert (=> b!740474 m!691703))

(declare-fun m!691705 () Bool)

(assert (=> b!740484 m!691705))

(declare-fun m!691707 () Bool)

(assert (=> b!740475 m!691707))

(declare-fun m!691709 () Bool)

(assert (=> b!740469 m!691709))

(assert (=> b!740472 m!691665))

(assert (=> b!740472 m!691665))

(declare-fun m!691711 () Bool)

(assert (=> b!740472 m!691711))

(assert (=> b!740462 m!691665))

(assert (=> b!740462 m!691665))

(declare-fun m!691713 () Bool)

(assert (=> b!740462 m!691713))

(declare-fun m!691715 () Bool)

(assert (=> b!740483 m!691715))

(declare-fun m!691717 () Bool)

(assert (=> b!740483 m!691717))

(assert (=> b!740476 m!691665))

(assert (=> b!740476 m!691665))

(assert (=> b!740476 m!691693))

(assert (=> b!740481 m!691665))

(assert (=> b!740481 m!691665))

(declare-fun m!691719 () Bool)

(assert (=> b!740481 m!691719))

(push 1)

