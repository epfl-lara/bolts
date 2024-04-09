; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67124 () Bool)

(assert start!67124)

(declare-fun b!774501 () Bool)

(declare-fun e!431142 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!774501 (= e!431142 (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1131)) (bvsub #b01111111111111111111111111111110 x!1131)))))

(declare-fun b!774502 () Bool)

(declare-fun e!431144 () Bool)

(declare-fun e!431140 () Bool)

(assert (=> b!774502 (= e!431144 e!431140)))

(declare-fun res!523800 () Bool)

(assert (=> b!774502 (=> (not res!523800) (not e!431140))))

(declare-datatypes ((array!42434 0))(
  ( (array!42435 (arr!20309 (Array (_ BitVec 32) (_ BitVec 64))) (size!20730 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42434)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7916 0))(
  ( (MissingZero!7916 (index!34031 (_ BitVec 32))) (Found!7916 (index!34032 (_ BitVec 32))) (Intermediate!7916 (undefined!8728 Bool) (index!34033 (_ BitVec 32)) (x!65004 (_ BitVec 32))) (Undefined!7916) (MissingVacant!7916 (index!34034 (_ BitVec 32))) )
))
(declare-fun lt!344955 () SeekEntryResult!7916)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42434 (_ BitVec 32)) SeekEntryResult!7916)

(assert (=> b!774502 (= res!523800 (= (seekEntryOrOpen!0 (select (arr!20309 a!3186) j!159) a!3186 mask!3328) lt!344955))))

(assert (=> b!774502 (= lt!344955 (Found!7916 j!159))))

(declare-fun b!774503 () Bool)

(declare-datatypes ((Unit!26700 0))(
  ( (Unit!26701) )
))
(declare-fun e!431141 () Unit!26700)

(declare-fun Unit!26702 () Unit!26700)

(assert (=> b!774503 (= e!431141 Unit!26702)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!344957 () SeekEntryResult!7916)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42434 (_ BitVec 32)) SeekEntryResult!7916)

(assert (=> b!774503 (= lt!344957 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20309 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!344951 () SeekEntryResult!7916)

(declare-fun lt!344952 () (_ BitVec 32))

(assert (=> b!774503 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344952 resIntermediateIndex!5 (select (arr!20309 a!3186) j!159) a!3186 mask!3328) lt!344951)))

(declare-fun b!774504 () Bool)

(declare-fun res!523791 () Bool)

(declare-fun e!431139 () Bool)

(assert (=> b!774504 (=> (not res!523791) (not e!431139))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!774504 (= res!523791 (validKeyInArray!0 (select (arr!20309 a!3186) j!159)))))

(declare-fun e!431146 () Bool)

(declare-fun b!774506 () Bool)

(declare-fun lt!344962 () SeekEntryResult!7916)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42434 (_ BitVec 32)) SeekEntryResult!7916)

(assert (=> b!774506 (= e!431146 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344952 (select (arr!20309 a!3186) j!159) a!3186 mask!3328) lt!344962)))))

(declare-fun b!774507 () Bool)

(declare-fun res!523789 () Bool)

(assert (=> b!774507 (=> (not res!523789) (not e!431139))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!774507 (= res!523789 (and (= (size!20730 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20730 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20730 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!774508 () Bool)

(declare-fun Unit!26703 () Unit!26700)

(assert (=> b!774508 (= e!431141 Unit!26703)))

(assert (=> b!774508 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344952 (select (arr!20309 a!3186) j!159) a!3186 mask!3328) lt!344962)))

(declare-fun b!774509 () Bool)

(declare-fun res!523801 () Bool)

(assert (=> b!774509 (=> res!523801 e!431142)))

(assert (=> b!774509 (= res!523801 e!431146)))

(declare-fun c!85758 () Bool)

(declare-fun lt!344956 () Bool)

(assert (=> b!774509 (= c!85758 lt!344956)))

(declare-fun b!774510 () Bool)

(declare-fun res!523803 () Bool)

(declare-fun e!431143 () Bool)

(assert (=> b!774510 (=> (not res!523803) (not e!431143))))

(declare-datatypes ((List!14364 0))(
  ( (Nil!14361) (Cons!14360 (h!15468 (_ BitVec 64)) (t!20687 List!14364)) )
))
(declare-fun arrayNoDuplicates!0 (array!42434 (_ BitVec 32) List!14364) Bool)

(assert (=> b!774510 (= res!523803 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14361))))

(declare-fun b!774511 () Bool)

(declare-fun res!523793 () Bool)

(declare-fun e!431136 () Bool)

(assert (=> b!774511 (=> (not res!523793) (not e!431136))))

(declare-fun e!431138 () Bool)

(assert (=> b!774511 (= res!523793 e!431138)))

(declare-fun c!85757 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!774511 (= c!85757 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!774512 () Bool)

(declare-fun res!523806 () Bool)

(assert (=> b!774512 (=> (not res!523806) (not e!431139))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!774512 (= res!523806 (validKeyInArray!0 k!2102))))

(declare-fun b!774513 () Bool)

(assert (=> b!774513 (= e!431139 e!431143)))

(declare-fun res!523805 () Bool)

(assert (=> b!774513 (=> (not res!523805) (not e!431143))))

(declare-fun lt!344958 () SeekEntryResult!7916)

(assert (=> b!774513 (= res!523805 (or (= lt!344958 (MissingZero!7916 i!1173)) (= lt!344958 (MissingVacant!7916 i!1173))))))

(assert (=> b!774513 (= lt!344958 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!774514 () Bool)

(declare-fun res!523804 () Bool)

(assert (=> b!774514 (=> res!523804 e!431142)))

(declare-fun lt!344959 () (_ BitVec 64))

(declare-fun lt!344950 () SeekEntryResult!7916)

(declare-fun lt!344954 () array!42434)

(assert (=> b!774514 (= res!523804 (not (= lt!344950 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344952 lt!344959 lt!344954 mask!3328))))))

(declare-fun b!774515 () Bool)

(declare-fun res!523802 () Bool)

(assert (=> b!774515 (=> (not res!523802) (not e!431139))))

(declare-fun arrayContainsKey!0 (array!42434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!774515 (= res!523802 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!774516 () Bool)

(declare-fun e!431137 () Bool)

(declare-fun e!431145 () Bool)

(assert (=> b!774516 (= e!431137 (not e!431145))))

(declare-fun res!523790 () Bool)

(assert (=> b!774516 (=> res!523790 e!431145)))

(declare-fun lt!344953 () SeekEntryResult!7916)

(assert (=> b!774516 (= res!523790 (or (not (is-Intermediate!7916 lt!344953)) (bvsge x!1131 (x!65004 lt!344953))))))

(assert (=> b!774516 (= lt!344951 (Found!7916 j!159))))

(assert (=> b!774516 e!431144))

(declare-fun res!523807 () Bool)

(assert (=> b!774516 (=> (not res!523807) (not e!431144))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42434 (_ BitVec 32)) Bool)

(assert (=> b!774516 (= res!523807 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!344961 () Unit!26700)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42434 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26700)

(assert (=> b!774516 (= lt!344961 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!774505 () Bool)

(assert (=> b!774505 (= e!431146 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344952 resIntermediateIndex!5 (select (arr!20309 a!3186) j!159) a!3186 mask!3328) lt!344951)))))

(declare-fun res!523795 () Bool)

(assert (=> start!67124 (=> (not res!523795) (not e!431139))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67124 (= res!523795 (validMask!0 mask!3328))))

(assert (=> start!67124 e!431139))

(assert (=> start!67124 true))

(declare-fun array_inv!16083 (array!42434) Bool)

(assert (=> start!67124 (array_inv!16083 a!3186)))

(declare-fun b!774517 () Bool)

(assert (=> b!774517 (= e!431140 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20309 a!3186) j!159) a!3186 mask!3328) lt!344955))))

(declare-fun b!774518 () Bool)

(declare-fun res!523797 () Bool)

(assert (=> b!774518 (=> (not res!523797) (not e!431143))))

(assert (=> b!774518 (= res!523797 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20730 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20730 a!3186))))))

(declare-fun b!774519 () Bool)

(assert (=> b!774519 (= e!431136 e!431137)))

(declare-fun res!523792 () Bool)

(assert (=> b!774519 (=> (not res!523792) (not e!431137))))

(assert (=> b!774519 (= res!523792 (= lt!344950 lt!344953))))

(assert (=> b!774519 (= lt!344953 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344959 lt!344954 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774519 (= lt!344950 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344959 mask!3328) lt!344959 lt!344954 mask!3328))))

(assert (=> b!774519 (= lt!344959 (select (store (arr!20309 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!774519 (= lt!344954 (array!42435 (store (arr!20309 a!3186) i!1173 k!2102) (size!20730 a!3186)))))

(declare-fun b!774520 () Bool)

(assert (=> b!774520 (= e!431138 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20309 a!3186) j!159) a!3186 mask!3328) lt!344962))))

(declare-fun b!774521 () Bool)

(assert (=> b!774521 (= e!431143 e!431136)))

(declare-fun res!523799 () Bool)

(assert (=> b!774521 (=> (not res!523799) (not e!431136))))

(assert (=> b!774521 (= res!523799 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20309 a!3186) j!159) mask!3328) (select (arr!20309 a!3186) j!159) a!3186 mask!3328) lt!344962))))

(assert (=> b!774521 (= lt!344962 (Intermediate!7916 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!774522 () Bool)

(declare-fun res!523798 () Bool)

(assert (=> b!774522 (=> (not res!523798) (not e!431136))))

(assert (=> b!774522 (= res!523798 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20309 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!774523 () Bool)

(declare-fun res!523794 () Bool)

(assert (=> b!774523 (=> (not res!523794) (not e!431143))))

(assert (=> b!774523 (= res!523794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!774524 () Bool)

(assert (=> b!774524 (= e!431145 e!431142)))

(declare-fun res!523796 () Bool)

(assert (=> b!774524 (=> res!523796 e!431142)))

(assert (=> b!774524 (= res!523796 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!344952 #b00000000000000000000000000000000) (bvsge lt!344952 (size!20730 a!3186))))))

(declare-fun lt!344960 () Unit!26700)

(assert (=> b!774524 (= lt!344960 e!431141)))

(declare-fun c!85756 () Bool)

(assert (=> b!774524 (= c!85756 lt!344956)))

(assert (=> b!774524 (= lt!344956 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774524 (= lt!344952 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!774525 () Bool)

(assert (=> b!774525 (= e!431138 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20309 a!3186) j!159) a!3186 mask!3328) (Found!7916 j!159)))))

(assert (= (and start!67124 res!523795) b!774507))

(assert (= (and b!774507 res!523789) b!774504))

(assert (= (and b!774504 res!523791) b!774512))

(assert (= (and b!774512 res!523806) b!774515))

(assert (= (and b!774515 res!523802) b!774513))

(assert (= (and b!774513 res!523805) b!774523))

(assert (= (and b!774523 res!523794) b!774510))

(assert (= (and b!774510 res!523803) b!774518))

(assert (= (and b!774518 res!523797) b!774521))

(assert (= (and b!774521 res!523799) b!774522))

(assert (= (and b!774522 res!523798) b!774511))

(assert (= (and b!774511 c!85757) b!774520))

(assert (= (and b!774511 (not c!85757)) b!774525))

(assert (= (and b!774511 res!523793) b!774519))

(assert (= (and b!774519 res!523792) b!774516))

(assert (= (and b!774516 res!523807) b!774502))

(assert (= (and b!774502 res!523800) b!774517))

(assert (= (and b!774516 (not res!523790)) b!774524))

(assert (= (and b!774524 c!85756) b!774508))

(assert (= (and b!774524 (not c!85756)) b!774503))

(assert (= (and b!774524 (not res!523796)) b!774509))

(assert (= (and b!774509 c!85758) b!774506))

(assert (= (and b!774509 (not c!85758)) b!774505))

(assert (= (and b!774509 (not res!523801)) b!774514))

(assert (= (and b!774514 (not res!523804)) b!774501))

(declare-fun m!718987 () Bool)

(assert (=> b!774503 m!718987))

(assert (=> b!774503 m!718987))

(declare-fun m!718989 () Bool)

(assert (=> b!774503 m!718989))

(assert (=> b!774503 m!718987))

(declare-fun m!718991 () Bool)

(assert (=> b!774503 m!718991))

(declare-fun m!718993 () Bool)

(assert (=> start!67124 m!718993))

(declare-fun m!718995 () Bool)

(assert (=> start!67124 m!718995))

(declare-fun m!718997 () Bool)

(assert (=> b!774514 m!718997))

(assert (=> b!774506 m!718987))

(assert (=> b!774506 m!718987))

(declare-fun m!718999 () Bool)

(assert (=> b!774506 m!718999))

(declare-fun m!719001 () Bool)

(assert (=> b!774515 m!719001))

(assert (=> b!774505 m!718987))

(assert (=> b!774505 m!718987))

(assert (=> b!774505 m!718991))

(assert (=> b!774520 m!718987))

(assert (=> b!774520 m!718987))

(declare-fun m!719003 () Bool)

(assert (=> b!774520 m!719003))

(assert (=> b!774517 m!718987))

(assert (=> b!774517 m!718987))

(declare-fun m!719005 () Bool)

(assert (=> b!774517 m!719005))

(declare-fun m!719007 () Bool)

(assert (=> b!774516 m!719007))

(declare-fun m!719009 () Bool)

(assert (=> b!774516 m!719009))

(declare-fun m!719011 () Bool)

(assert (=> b!774522 m!719011))

(assert (=> b!774525 m!718987))

(assert (=> b!774525 m!718987))

(assert (=> b!774525 m!718989))

(assert (=> b!774504 m!718987))

(assert (=> b!774504 m!718987))

(declare-fun m!719013 () Bool)

(assert (=> b!774504 m!719013))

(declare-fun m!719015 () Bool)

(assert (=> b!774513 m!719015))

(assert (=> b!774502 m!718987))

(assert (=> b!774502 m!718987))

(declare-fun m!719017 () Bool)

(assert (=> b!774502 m!719017))

(declare-fun m!719019 () Bool)

(assert (=> b!774512 m!719019))

(declare-fun m!719021 () Bool)

(assert (=> b!774523 m!719021))

(declare-fun m!719023 () Bool)

(assert (=> b!774510 m!719023))

(declare-fun m!719025 () Bool)

(assert (=> b!774519 m!719025))

(declare-fun m!719027 () Bool)

(assert (=> b!774519 m!719027))

(declare-fun m!719029 () Bool)

(assert (=> b!774519 m!719029))

(declare-fun m!719031 () Bool)

(assert (=> b!774519 m!719031))

(declare-fun m!719033 () Bool)

(assert (=> b!774519 m!719033))

(assert (=> b!774519 m!719027))

(assert (=> b!774521 m!718987))

(assert (=> b!774521 m!718987))

(declare-fun m!719035 () Bool)

(assert (=> b!774521 m!719035))

(assert (=> b!774521 m!719035))

(assert (=> b!774521 m!718987))

(declare-fun m!719037 () Bool)

(assert (=> b!774521 m!719037))

(declare-fun m!719039 () Bool)

(assert (=> b!774524 m!719039))

(assert (=> b!774508 m!718987))

(assert (=> b!774508 m!718987))

(assert (=> b!774508 m!718999))

(push 1)

(assert (not b!774510))

(assert (not b!774521))

(assert (not b!774512))

(assert (not b!774503))

(assert (not start!67124))

(assert (not b!774517))

(assert (not b!774513))

(assert (not b!774515))

(assert (not b!774523))

(assert (not b!774525))

(assert (not b!774506))

(assert (not b!774516))

(assert (not b!774520))

(assert (not b!774508))

(assert (not b!774505))

(assert (not b!774519))

(assert (not b!774514))

(assert (not b!774504))

(assert (not b!774524))

(assert (not b!774502))

(check-sat)

(pop 1)

(push 1)

(check-sat)

