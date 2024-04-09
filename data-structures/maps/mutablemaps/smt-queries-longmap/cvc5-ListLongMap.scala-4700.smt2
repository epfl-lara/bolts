; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65278 () Bool)

(assert start!65278)

(declare-fun b!740012 () Bool)

(declare-fun res!497722 () Bool)

(declare-fun e!413776 () Bool)

(assert (=> b!740012 (=> (not res!497722) (not e!413776))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41404 0))(
  ( (array!41405 (arr!19812 (Array (_ BitVec 32) (_ BitVec 64))) (size!20233 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41404)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!740012 (= res!497722 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19812 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!740013 () Bool)

(declare-fun e!413783 () Bool)

(assert (=> b!740013 (= e!413776 e!413783)))

(declare-fun res!497732 () Bool)

(assert (=> b!740013 (=> (not res!497732) (not e!413783))))

(declare-datatypes ((SeekEntryResult!7419 0))(
  ( (MissingZero!7419 (index!32043 (_ BitVec 32))) (Found!7419 (index!32044 (_ BitVec 32))) (Intermediate!7419 (undefined!8231 Bool) (index!32045 (_ BitVec 32)) (x!63058 (_ BitVec 32))) (Undefined!7419) (MissingVacant!7419 (index!32046 (_ BitVec 32))) )
))
(declare-fun lt!328727 () SeekEntryResult!7419)

(declare-fun lt!328726 () SeekEntryResult!7419)

(assert (=> b!740013 (= res!497732 (= lt!328727 lt!328726))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!328719 () array!41404)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!328721 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41404 (_ BitVec 32)) SeekEntryResult!7419)

(assert (=> b!740013 (= lt!328726 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328721 lt!328719 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740013 (= lt!328727 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328721 mask!3328) lt!328721 lt!328719 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!740013 (= lt!328721 (select (store (arr!19812 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!740013 (= lt!328719 (array!41405 (store (arr!19812 a!3186) i!1173 k!2102) (size!20233 a!3186)))))

(declare-fun b!740014 () Bool)

(declare-fun res!497719 () Bool)

(assert (=> b!740014 (=> (not res!497719) (not e!413776))))

(declare-fun e!413779 () Bool)

(assert (=> b!740014 (= res!497719 e!413779)))

(declare-fun c!81529 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!740014 (= c!81529 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!740015 () Bool)

(declare-fun e!413778 () Bool)

(assert (=> b!740015 (= e!413778 e!413776)))

(declare-fun res!497715 () Bool)

(assert (=> b!740015 (=> (not res!497715) (not e!413776))))

(declare-fun lt!328723 () SeekEntryResult!7419)

(assert (=> b!740015 (= res!497715 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19812 a!3186) j!159) mask!3328) (select (arr!19812 a!3186) j!159) a!3186 mask!3328) lt!328723))))

(assert (=> b!740015 (= lt!328723 (Intermediate!7419 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!740016 () Bool)

(declare-fun e!413785 () Bool)

(declare-fun e!413780 () Bool)

(assert (=> b!740016 (= e!413785 e!413780)))

(declare-fun res!497727 () Bool)

(assert (=> b!740016 (=> res!497727 e!413780)))

(declare-fun lt!328718 () (_ BitVec 32))

(assert (=> b!740016 (= res!497727 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328718 #b00000000000000000000000000000000) (bvsge lt!328718 (size!20233 a!3186))))))

(declare-datatypes ((Unit!25294 0))(
  ( (Unit!25295) )
))
(declare-fun lt!328724 () Unit!25294)

(declare-fun e!413782 () Unit!25294)

(assert (=> b!740016 (= lt!328724 e!413782)))

(declare-fun c!81530 () Bool)

(declare-fun lt!328730 () Bool)

(assert (=> b!740016 (= c!81530 lt!328730)))

(assert (=> b!740016 (= lt!328730 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740016 (= lt!328718 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!740017 () Bool)

(declare-fun Unit!25296 () Unit!25294)

(assert (=> b!740017 (= e!413782 Unit!25296)))

(assert (=> b!740017 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328718 (select (arr!19812 a!3186) j!159) a!3186 mask!3328) lt!328723)))

(declare-fun res!497723 () Bool)

(declare-fun e!413787 () Bool)

(assert (=> start!65278 (=> (not res!497723) (not e!413787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65278 (= res!497723 (validMask!0 mask!3328))))

(assert (=> start!65278 e!413787))

(assert (=> start!65278 true))

(declare-fun array_inv!15586 (array!41404) Bool)

(assert (=> start!65278 (array_inv!15586 a!3186)))

(declare-fun b!740018 () Bool)

(assert (=> b!740018 (= e!413779 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19812 a!3186) j!159) a!3186 mask!3328) lt!328723))))

(declare-fun b!740019 () Bool)

(declare-fun res!497724 () Bool)

(assert (=> b!740019 (=> (not res!497724) (not e!413787))))

(declare-fun arrayContainsKey!0 (array!41404 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!740019 (= res!497724 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!740020 () Bool)

(declare-fun res!497721 () Bool)

(assert (=> b!740020 (=> (not res!497721) (not e!413778))))

(declare-datatypes ((List!13867 0))(
  ( (Nil!13864) (Cons!13863 (h!14935 (_ BitVec 64)) (t!20190 List!13867)) )
))
(declare-fun arrayNoDuplicates!0 (array!41404 (_ BitVec 32) List!13867) Bool)

(assert (=> b!740020 (= res!497721 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13864))))

(declare-fun b!740021 () Bool)

(declare-fun res!497730 () Bool)

(assert (=> b!740021 (=> res!497730 e!413780)))

(assert (=> b!740021 (= res!497730 (not (= lt!328727 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328718 lt!328721 lt!328719 mask!3328))))))

(declare-fun b!740022 () Bool)

(declare-fun res!497720 () Bool)

(assert (=> b!740022 (=> (not res!497720) (not e!413787))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!740022 (= res!497720 (validKeyInArray!0 k!2102))))

(declare-fun b!740023 () Bool)

(declare-fun res!497717 () Bool)

(assert (=> b!740023 (=> res!497717 e!413780)))

(declare-fun e!413784 () Bool)

(assert (=> b!740023 (= res!497717 e!413784)))

(declare-fun c!81531 () Bool)

(assert (=> b!740023 (= c!81531 lt!328730)))

(declare-fun b!740024 () Bool)

(declare-fun Unit!25297 () Unit!25294)

(assert (=> b!740024 (= e!413782 Unit!25297)))

(declare-fun lt!328729 () SeekEntryResult!7419)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41404 (_ BitVec 32)) SeekEntryResult!7419)

(assert (=> b!740024 (= lt!328729 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19812 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!328717 () SeekEntryResult!7419)

(assert (=> b!740024 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328718 resIntermediateIndex!5 (select (arr!19812 a!3186) j!159) a!3186 mask!3328) lt!328717)))

(declare-fun b!740025 () Bool)

(declare-fun e!413781 () Bool)

(declare-fun e!413786 () Bool)

(assert (=> b!740025 (= e!413781 e!413786)))

(declare-fun res!497725 () Bool)

(assert (=> b!740025 (=> (not res!497725) (not e!413786))))

(declare-fun lt!328722 () SeekEntryResult!7419)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41404 (_ BitVec 32)) SeekEntryResult!7419)

(assert (=> b!740025 (= res!497725 (= (seekEntryOrOpen!0 (select (arr!19812 a!3186) j!159) a!3186 mask!3328) lt!328722))))

(assert (=> b!740025 (= lt!328722 (Found!7419 j!159))))

(declare-fun b!740026 () Bool)

(assert (=> b!740026 (= e!413779 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19812 a!3186) j!159) a!3186 mask!3328) (Found!7419 j!159)))))

(declare-fun b!740027 () Bool)

(assert (=> b!740027 (= e!413780 true)))

(assert (=> b!740027 (= (seekEntryOrOpen!0 lt!328721 lt!328719 mask!3328) lt!328717)))

(declare-fun lt!328725 () Unit!25294)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!41404 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25294)

(assert (=> b!740027 (= lt!328725 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k!2102 j!159 lt!328718 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!740028 () Bool)

(declare-fun res!497728 () Bool)

(assert (=> b!740028 (=> (not res!497728) (not e!413787))))

(assert (=> b!740028 (= res!497728 (and (= (size!20233 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20233 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20233 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!740029 () Bool)

(assert (=> b!740029 (= e!413786 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19812 a!3186) j!159) a!3186 mask!3328) lt!328722))))

(declare-fun b!740030 () Bool)

(assert (=> b!740030 (= e!413787 e!413778)))

(declare-fun res!497726 () Bool)

(assert (=> b!740030 (=> (not res!497726) (not e!413778))))

(declare-fun lt!328720 () SeekEntryResult!7419)

(assert (=> b!740030 (= res!497726 (or (= lt!328720 (MissingZero!7419 i!1173)) (= lt!328720 (MissingVacant!7419 i!1173))))))

(assert (=> b!740030 (= lt!328720 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!740031 () Bool)

(assert (=> b!740031 (= e!413784 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328718 (select (arr!19812 a!3186) j!159) a!3186 mask!3328) lt!328723)))))

(declare-fun b!740032 () Bool)

(declare-fun res!497731 () Bool)

(assert (=> b!740032 (=> (not res!497731) (not e!413787))))

(assert (=> b!740032 (= res!497731 (validKeyInArray!0 (select (arr!19812 a!3186) j!159)))))

(declare-fun b!740033 () Bool)

(assert (=> b!740033 (= e!413783 (not e!413785))))

(declare-fun res!497716 () Bool)

(assert (=> b!740033 (=> res!497716 e!413785)))

(assert (=> b!740033 (= res!497716 (or (not (is-Intermediate!7419 lt!328726)) (bvsge x!1131 (x!63058 lt!328726))))))

(assert (=> b!740033 (= lt!328717 (Found!7419 j!159))))

(assert (=> b!740033 e!413781))

(declare-fun res!497718 () Bool)

(assert (=> b!740033 (=> (not res!497718) (not e!413781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41404 (_ BitVec 32)) Bool)

(assert (=> b!740033 (= res!497718 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328728 () Unit!25294)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41404 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25294)

(assert (=> b!740033 (= lt!328728 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!740034 () Bool)

(assert (=> b!740034 (= e!413784 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328718 resIntermediateIndex!5 (select (arr!19812 a!3186) j!159) a!3186 mask!3328) lt!328717)))))

(declare-fun b!740035 () Bool)

(declare-fun res!497729 () Bool)

(assert (=> b!740035 (=> (not res!497729) (not e!413778))))

(assert (=> b!740035 (= res!497729 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20233 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20233 a!3186))))))

(declare-fun b!740036 () Bool)

(declare-fun res!497733 () Bool)

(assert (=> b!740036 (=> (not res!497733) (not e!413778))))

(assert (=> b!740036 (= res!497733 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65278 res!497723) b!740028))

(assert (= (and b!740028 res!497728) b!740032))

(assert (= (and b!740032 res!497731) b!740022))

(assert (= (and b!740022 res!497720) b!740019))

(assert (= (and b!740019 res!497724) b!740030))

(assert (= (and b!740030 res!497726) b!740036))

(assert (= (and b!740036 res!497733) b!740020))

(assert (= (and b!740020 res!497721) b!740035))

(assert (= (and b!740035 res!497729) b!740015))

(assert (= (and b!740015 res!497715) b!740012))

(assert (= (and b!740012 res!497722) b!740014))

(assert (= (and b!740014 c!81529) b!740018))

(assert (= (and b!740014 (not c!81529)) b!740026))

(assert (= (and b!740014 res!497719) b!740013))

(assert (= (and b!740013 res!497732) b!740033))

(assert (= (and b!740033 res!497718) b!740025))

(assert (= (and b!740025 res!497725) b!740029))

(assert (= (and b!740033 (not res!497716)) b!740016))

(assert (= (and b!740016 c!81530) b!740017))

(assert (= (and b!740016 (not c!81530)) b!740024))

(assert (= (and b!740016 (not res!497727)) b!740023))

(assert (= (and b!740023 c!81531) b!740031))

(assert (= (and b!740023 (not c!81531)) b!740034))

(assert (= (and b!740023 (not res!497717)) b!740021))

(assert (= (and b!740021 (not res!497730)) b!740027))

(declare-fun m!691315 () Bool)

(assert (=> b!740015 m!691315))

(assert (=> b!740015 m!691315))

(declare-fun m!691317 () Bool)

(assert (=> b!740015 m!691317))

(assert (=> b!740015 m!691317))

(assert (=> b!740015 m!691315))

(declare-fun m!691319 () Bool)

(assert (=> b!740015 m!691319))

(assert (=> b!740024 m!691315))

(assert (=> b!740024 m!691315))

(declare-fun m!691321 () Bool)

(assert (=> b!740024 m!691321))

(assert (=> b!740024 m!691315))

(declare-fun m!691323 () Bool)

(assert (=> b!740024 m!691323))

(assert (=> b!740034 m!691315))

(assert (=> b!740034 m!691315))

(assert (=> b!740034 m!691323))

(declare-fun m!691325 () Bool)

(assert (=> b!740019 m!691325))

(assert (=> b!740032 m!691315))

(assert (=> b!740032 m!691315))

(declare-fun m!691327 () Bool)

(assert (=> b!740032 m!691327))

(declare-fun m!691329 () Bool)

(assert (=> b!740030 m!691329))

(declare-fun m!691331 () Bool)

(assert (=> b!740036 m!691331))

(assert (=> b!740026 m!691315))

(assert (=> b!740026 m!691315))

(assert (=> b!740026 m!691321))

(declare-fun m!691333 () Bool)

(assert (=> b!740013 m!691333))

(declare-fun m!691335 () Bool)

(assert (=> b!740013 m!691335))

(declare-fun m!691337 () Bool)

(assert (=> b!740013 m!691337))

(declare-fun m!691339 () Bool)

(assert (=> b!740013 m!691339))

(assert (=> b!740013 m!691333))

(declare-fun m!691341 () Bool)

(assert (=> b!740013 m!691341))

(assert (=> b!740029 m!691315))

(assert (=> b!740029 m!691315))

(declare-fun m!691343 () Bool)

(assert (=> b!740029 m!691343))

(assert (=> b!740025 m!691315))

(assert (=> b!740025 m!691315))

(declare-fun m!691345 () Bool)

(assert (=> b!740025 m!691345))

(declare-fun m!691347 () Bool)

(assert (=> start!65278 m!691347))

(declare-fun m!691349 () Bool)

(assert (=> start!65278 m!691349))

(declare-fun m!691351 () Bool)

(assert (=> b!740022 m!691351))

(assert (=> b!740017 m!691315))

(assert (=> b!740017 m!691315))

(declare-fun m!691353 () Bool)

(assert (=> b!740017 m!691353))

(assert (=> b!740031 m!691315))

(assert (=> b!740031 m!691315))

(assert (=> b!740031 m!691353))

(declare-fun m!691355 () Bool)

(assert (=> b!740027 m!691355))

(declare-fun m!691357 () Bool)

(assert (=> b!740027 m!691357))

(declare-fun m!691359 () Bool)

(assert (=> b!740021 m!691359))

(assert (=> b!740018 m!691315))

(assert (=> b!740018 m!691315))

(declare-fun m!691361 () Bool)

(assert (=> b!740018 m!691361))

(declare-fun m!691363 () Bool)

(assert (=> b!740033 m!691363))

(declare-fun m!691365 () Bool)

(assert (=> b!740033 m!691365))

(declare-fun m!691367 () Bool)

(assert (=> b!740016 m!691367))

(declare-fun m!691369 () Bool)

(assert (=> b!740012 m!691369))

(declare-fun m!691371 () Bool)

(assert (=> b!740020 m!691371))

(push 1)

