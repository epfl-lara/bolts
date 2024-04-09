; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65430 () Bool)

(assert start!65430)

(declare-fun b!744431 () Bool)

(declare-fun res!501549 () Bool)

(declare-fun e!415870 () Bool)

(assert (=> b!744431 (=> (not res!501549) (not e!415870))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41556 0))(
  ( (array!41557 (arr!19888 (Array (_ BitVec 32) (_ BitVec 64))) (size!20309 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41556)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!744431 (= res!501549 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19888 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!744432 () Bool)

(declare-fun res!501546 () Bool)

(declare-fun e!415873 () Bool)

(assert (=> b!744432 (=> (not res!501546) (not e!415873))))

(declare-datatypes ((List!13943 0))(
  ( (Nil!13940) (Cons!13939 (h!15011 (_ BitVec 64)) (t!20266 List!13943)) )
))
(declare-fun arrayNoDuplicates!0 (array!41556 (_ BitVec 32) List!13943) Bool)

(assert (=> b!744432 (= res!501546 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13940))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7495 0))(
  ( (MissingZero!7495 (index!32347 (_ BitVec 32))) (Found!7495 (index!32348 (_ BitVec 32))) (Intermediate!7495 (undefined!8307 Bool) (index!32349 (_ BitVec 32)) (x!63334 (_ BitVec 32))) (Undefined!7495) (MissingVacant!7495 (index!32350 (_ BitVec 32))) )
))
(declare-fun lt!330729 () SeekEntryResult!7495)

(declare-fun e!415868 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!744434 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41556 (_ BitVec 32)) SeekEntryResult!7495)

(assert (=> b!744434 (= e!415868 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19888 a!3186) j!159) a!3186 mask!3328) lt!330729))))

(declare-fun b!744435 () Bool)

(declare-fun res!501558 () Bool)

(declare-fun e!415872 () Bool)

(assert (=> b!744435 (=> res!501558 e!415872)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!744435 (= res!501558 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19888 a!3186) j!159) a!3186 mask!3328) (Found!7495 j!159))))))

(declare-fun b!744436 () Bool)

(declare-fun res!501557 () Bool)

(assert (=> b!744436 (=> (not res!501557) (not e!415873))))

(assert (=> b!744436 (= res!501557 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20309 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20309 a!3186))))))

(declare-fun b!744437 () Bool)

(declare-fun res!501548 () Bool)

(declare-fun e!415875 () Bool)

(assert (=> b!744437 (=> (not res!501548) (not e!415875))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744437 (= res!501548 (validKeyInArray!0 (select (arr!19888 a!3186) j!159)))))

(declare-fun b!744438 () Bool)

(declare-fun res!501550 () Bool)

(assert (=> b!744438 (=> (not res!501550) (not e!415870))))

(declare-fun e!415874 () Bool)

(assert (=> b!744438 (= res!501550 e!415874)))

(declare-fun c!81825 () Bool)

(assert (=> b!744438 (= c!81825 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744439 () Bool)

(declare-fun res!501556 () Bool)

(assert (=> b!744439 (=> (not res!501556) (not e!415875))))

(assert (=> b!744439 (= res!501556 (and (= (size!20309 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20309 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20309 a!3186)) (not (= i!1173 j!159))))))

(declare-fun lt!330731 () SeekEntryResult!7495)

(declare-fun b!744440 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41556 (_ BitVec 32)) SeekEntryResult!7495)

(assert (=> b!744440 (= e!415874 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19888 a!3186) j!159) a!3186 mask!3328) lt!330731))))

(declare-fun b!744441 () Bool)

(declare-fun res!501544 () Bool)

(assert (=> b!744441 (=> (not res!501544) (not e!415873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41556 (_ BitVec 32)) Bool)

(assert (=> b!744441 (= res!501544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744442 () Bool)

(declare-fun e!415869 () Bool)

(assert (=> b!744442 (= e!415869 e!415868)))

(declare-fun res!501554 () Bool)

(assert (=> b!744442 (=> (not res!501554) (not e!415868))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41556 (_ BitVec 32)) SeekEntryResult!7495)

(assert (=> b!744442 (= res!501554 (= (seekEntryOrOpen!0 (select (arr!19888 a!3186) j!159) a!3186 mask!3328) lt!330729))))

(assert (=> b!744442 (= lt!330729 (Found!7495 j!159))))

(declare-fun b!744443 () Bool)

(declare-fun e!415871 () Bool)

(assert (=> b!744443 (= e!415871 (not e!415872))))

(declare-fun res!501547 () Bool)

(assert (=> b!744443 (=> res!501547 e!415872)))

(declare-fun lt!330734 () SeekEntryResult!7495)

(get-info :version)

(assert (=> b!744443 (= res!501547 (or (not ((_ is Intermediate!7495) lt!330734)) (bvslt x!1131 (x!63334 lt!330734)) (not (= x!1131 (x!63334 lt!330734))) (not (= index!1321 (index!32349 lt!330734)))))))

(assert (=> b!744443 e!415869))

(declare-fun res!501553 () Bool)

(assert (=> b!744443 (=> (not res!501553) (not e!415869))))

(assert (=> b!744443 (= res!501553 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25470 0))(
  ( (Unit!25471) )
))
(declare-fun lt!330733 () Unit!25470)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41556 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25470)

(assert (=> b!744443 (= lt!330733 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!744444 () Bool)

(declare-fun res!501542 () Bool)

(assert (=> b!744444 (=> (not res!501542) (not e!415875))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!744444 (= res!501542 (validKeyInArray!0 k0!2102))))

(declare-fun b!744445 () Bool)

(assert (=> b!744445 (= e!415874 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19888 a!3186) j!159) a!3186 mask!3328) (Found!7495 j!159)))))

(declare-fun b!744433 () Bool)

(assert (=> b!744433 (= e!415875 e!415873)))

(declare-fun res!501543 () Bool)

(assert (=> b!744433 (=> (not res!501543) (not e!415873))))

(declare-fun lt!330732 () SeekEntryResult!7495)

(assert (=> b!744433 (= res!501543 (or (= lt!330732 (MissingZero!7495 i!1173)) (= lt!330732 (MissingVacant!7495 i!1173))))))

(assert (=> b!744433 (= lt!330732 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!501551 () Bool)

(assert (=> start!65430 (=> (not res!501551) (not e!415875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65430 (= res!501551 (validMask!0 mask!3328))))

(assert (=> start!65430 e!415875))

(assert (=> start!65430 true))

(declare-fun array_inv!15662 (array!41556) Bool)

(assert (=> start!65430 (array_inv!15662 a!3186)))

(declare-fun lt!330730 () (_ BitVec 64))

(declare-fun b!744446 () Bool)

(assert (=> b!744446 (= e!415872 (or (= (select (store (arr!19888 a!3186) i!1173 k0!2102) index!1321) lt!330730) (not (= (select (store (arr!19888 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!744447 () Bool)

(declare-fun res!501555 () Bool)

(assert (=> b!744447 (=> (not res!501555) (not e!415875))))

(declare-fun arrayContainsKey!0 (array!41556 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744447 (= res!501555 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!744448 () Bool)

(assert (=> b!744448 (= e!415870 e!415871)))

(declare-fun res!501545 () Bool)

(assert (=> b!744448 (=> (not res!501545) (not e!415871))))

(declare-fun lt!330727 () SeekEntryResult!7495)

(assert (=> b!744448 (= res!501545 (= lt!330727 lt!330734))))

(declare-fun lt!330728 () array!41556)

(assert (=> b!744448 (= lt!330734 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330730 lt!330728 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744448 (= lt!330727 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330730 mask!3328) lt!330730 lt!330728 mask!3328))))

(assert (=> b!744448 (= lt!330730 (select (store (arr!19888 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!744448 (= lt!330728 (array!41557 (store (arr!19888 a!3186) i!1173 k0!2102) (size!20309 a!3186)))))

(declare-fun b!744449 () Bool)

(assert (=> b!744449 (= e!415873 e!415870)))

(declare-fun res!501552 () Bool)

(assert (=> b!744449 (=> (not res!501552) (not e!415870))))

(assert (=> b!744449 (= res!501552 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19888 a!3186) j!159) mask!3328) (select (arr!19888 a!3186) j!159) a!3186 mask!3328) lt!330731))))

(assert (=> b!744449 (= lt!330731 (Intermediate!7495 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65430 res!501551) b!744439))

(assert (= (and b!744439 res!501556) b!744437))

(assert (= (and b!744437 res!501548) b!744444))

(assert (= (and b!744444 res!501542) b!744447))

(assert (= (and b!744447 res!501555) b!744433))

(assert (= (and b!744433 res!501543) b!744441))

(assert (= (and b!744441 res!501544) b!744432))

(assert (= (and b!744432 res!501546) b!744436))

(assert (= (and b!744436 res!501557) b!744449))

(assert (= (and b!744449 res!501552) b!744431))

(assert (= (and b!744431 res!501549) b!744438))

(assert (= (and b!744438 c!81825) b!744440))

(assert (= (and b!744438 (not c!81825)) b!744445))

(assert (= (and b!744438 res!501550) b!744448))

(assert (= (and b!744448 res!501545) b!744443))

(assert (= (and b!744443 res!501553) b!744442))

(assert (= (and b!744442 res!501554) b!744434))

(assert (= (and b!744443 (not res!501547)) b!744435))

(assert (= (and b!744435 (not res!501558)) b!744446))

(declare-fun m!695041 () Bool)

(assert (=> b!744444 m!695041))

(declare-fun m!695043 () Bool)

(assert (=> b!744449 m!695043))

(assert (=> b!744449 m!695043))

(declare-fun m!695045 () Bool)

(assert (=> b!744449 m!695045))

(assert (=> b!744449 m!695045))

(assert (=> b!744449 m!695043))

(declare-fun m!695047 () Bool)

(assert (=> b!744449 m!695047))

(assert (=> b!744445 m!695043))

(assert (=> b!744445 m!695043))

(declare-fun m!695049 () Bool)

(assert (=> b!744445 m!695049))

(declare-fun m!695051 () Bool)

(assert (=> b!744448 m!695051))

(declare-fun m!695053 () Bool)

(assert (=> b!744448 m!695053))

(assert (=> b!744448 m!695053))

(declare-fun m!695055 () Bool)

(assert (=> b!744448 m!695055))

(declare-fun m!695057 () Bool)

(assert (=> b!744448 m!695057))

(declare-fun m!695059 () Bool)

(assert (=> b!744448 m!695059))

(assert (=> b!744440 m!695043))

(assert (=> b!744440 m!695043))

(declare-fun m!695061 () Bool)

(assert (=> b!744440 m!695061))

(assert (=> b!744437 m!695043))

(assert (=> b!744437 m!695043))

(declare-fun m!695063 () Bool)

(assert (=> b!744437 m!695063))

(declare-fun m!695065 () Bool)

(assert (=> b!744433 m!695065))

(assert (=> b!744446 m!695057))

(declare-fun m!695067 () Bool)

(assert (=> b!744446 m!695067))

(declare-fun m!695069 () Bool)

(assert (=> start!65430 m!695069))

(declare-fun m!695071 () Bool)

(assert (=> start!65430 m!695071))

(declare-fun m!695073 () Bool)

(assert (=> b!744432 m!695073))

(declare-fun m!695075 () Bool)

(assert (=> b!744441 m!695075))

(assert (=> b!744434 m!695043))

(assert (=> b!744434 m!695043))

(declare-fun m!695077 () Bool)

(assert (=> b!744434 m!695077))

(declare-fun m!695079 () Bool)

(assert (=> b!744431 m!695079))

(assert (=> b!744442 m!695043))

(assert (=> b!744442 m!695043))

(declare-fun m!695081 () Bool)

(assert (=> b!744442 m!695081))

(declare-fun m!695083 () Bool)

(assert (=> b!744443 m!695083))

(declare-fun m!695085 () Bool)

(assert (=> b!744443 m!695085))

(declare-fun m!695087 () Bool)

(assert (=> b!744447 m!695087))

(assert (=> b!744435 m!695043))

(assert (=> b!744435 m!695043))

(assert (=> b!744435 m!695049))

(check-sat (not b!744435) (not b!744444) (not b!744437) (not b!744445) (not b!744449) (not b!744433) (not b!744440) (not b!744442) (not b!744441) (not b!744434) (not b!744443) (not b!744432) (not start!65430) (not b!744448) (not b!744447))
(check-sat)
