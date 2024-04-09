; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66790 () Bool)

(assert start!66790)

(declare-fun b!769445 () Bool)

(declare-fun res!520505 () Bool)

(declare-fun e!428477 () Bool)

(assert (=> b!769445 (=> (not res!520505) (not e!428477))))

(declare-datatypes ((array!42307 0))(
  ( (array!42308 (arr!20250 (Array (_ BitVec 32) (_ BitVec 64))) (size!20671 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42307)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!769445 (= res!520505 (and (= (size!20671 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20671 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20671 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!769446 () Bool)

(declare-fun e!428474 () Bool)

(assert (=> b!769446 (= e!428474 true)))

(declare-datatypes ((Unit!26464 0))(
  ( (Unit!26465) )
))
(declare-fun lt!342390 () Unit!26464)

(declare-fun e!428473 () Unit!26464)

(assert (=> b!769446 (= lt!342390 e!428473)))

(declare-fun c!84873 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!769446 (= c!84873 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!342394 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769446 (= lt!342394 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!769447 () Bool)

(declare-fun e!428479 () Bool)

(assert (=> b!769447 (= e!428479 (not e!428474))))

(declare-fun res!520499 () Bool)

(assert (=> b!769447 (=> res!520499 e!428474)))

(declare-datatypes ((SeekEntryResult!7857 0))(
  ( (MissingZero!7857 (index!33795 (_ BitVec 32))) (Found!7857 (index!33796 (_ BitVec 32))) (Intermediate!7857 (undefined!8669 Bool) (index!33797 (_ BitVec 32)) (x!64757 (_ BitVec 32))) (Undefined!7857) (MissingVacant!7857 (index!33798 (_ BitVec 32))) )
))
(declare-fun lt!342395 () SeekEntryResult!7857)

(assert (=> b!769447 (= res!520499 (or (not (is-Intermediate!7857 lt!342395)) (bvsge x!1131 (x!64757 lt!342395))))))

(declare-fun e!428471 () Bool)

(assert (=> b!769447 e!428471))

(declare-fun res!520497 () Bool)

(assert (=> b!769447 (=> (not res!520497) (not e!428471))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42307 (_ BitVec 32)) Bool)

(assert (=> b!769447 (= res!520497 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342393 () Unit!26464)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42307 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26464)

(assert (=> b!769447 (= lt!342393 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!769448 () Bool)

(declare-fun e!428475 () Bool)

(assert (=> b!769448 (= e!428477 e!428475)))

(declare-fun res!520501 () Bool)

(assert (=> b!769448 (=> (not res!520501) (not e!428475))))

(declare-fun lt!342392 () SeekEntryResult!7857)

(assert (=> b!769448 (= res!520501 (or (= lt!342392 (MissingZero!7857 i!1173)) (= lt!342392 (MissingVacant!7857 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42307 (_ BitVec 32)) SeekEntryResult!7857)

(assert (=> b!769448 (= lt!342392 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!769449 () Bool)

(declare-fun Unit!26466 () Unit!26464)

(assert (=> b!769449 (= e!428473 Unit!26466)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!342391 () SeekEntryResult!7857)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42307 (_ BitVec 32)) SeekEntryResult!7857)

(assert (=> b!769449 (= lt!342391 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20250 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!769449 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342394 resIntermediateIndex!5 (select (arr!20250 a!3186) j!159) a!3186 mask!3328) (Found!7857 j!159))))

(declare-fun lt!342387 () SeekEntryResult!7857)

(declare-fun e!428470 () Bool)

(declare-fun b!769450 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42307 (_ BitVec 32)) SeekEntryResult!7857)

(assert (=> b!769450 (= e!428470 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20250 a!3186) j!159) a!3186 mask!3328) lt!342387))))

(declare-fun b!769451 () Bool)

(declare-fun res!520504 () Bool)

(assert (=> b!769451 (=> (not res!520504) (not e!428477))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769451 (= res!520504 (validKeyInArray!0 k!2102))))

(declare-fun b!769452 () Bool)

(declare-fun res!520494 () Bool)

(assert (=> b!769452 (=> (not res!520494) (not e!428477))))

(assert (=> b!769452 (= res!520494 (validKeyInArray!0 (select (arr!20250 a!3186) j!159)))))

(declare-fun b!769453 () Bool)

(declare-fun e!428476 () Bool)

(assert (=> b!769453 (= e!428475 e!428476)))

(declare-fun res!520492 () Bool)

(assert (=> b!769453 (=> (not res!520492) (not e!428476))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769453 (= res!520492 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20250 a!3186) j!159) mask!3328) (select (arr!20250 a!3186) j!159) a!3186 mask!3328) lt!342387))))

(assert (=> b!769453 (= lt!342387 (Intermediate!7857 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!769455 () Bool)

(declare-fun res!520506 () Bool)

(assert (=> b!769455 (=> (not res!520506) (not e!428475))))

(assert (=> b!769455 (= res!520506 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20671 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20671 a!3186))))))

(declare-fun b!769456 () Bool)

(declare-fun res!520495 () Bool)

(assert (=> b!769456 (=> (not res!520495) (not e!428475))))

(assert (=> b!769456 (= res!520495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!769457 () Bool)

(declare-fun res!520496 () Bool)

(assert (=> b!769457 (=> (not res!520496) (not e!428477))))

(declare-fun arrayContainsKey!0 (array!42307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769457 (= res!520496 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!769458 () Bool)

(declare-fun res!520507 () Bool)

(assert (=> b!769458 (=> (not res!520507) (not e!428476))))

(assert (=> b!769458 (= res!520507 e!428470)))

(declare-fun c!84872 () Bool)

(assert (=> b!769458 (= c!84872 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769459 () Bool)

(assert (=> b!769459 (= e!428470 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20250 a!3186) j!159) a!3186 mask!3328) (Found!7857 j!159)))))

(declare-fun b!769460 () Bool)

(declare-fun e!428478 () Bool)

(declare-fun lt!342397 () SeekEntryResult!7857)

(assert (=> b!769460 (= e!428478 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20250 a!3186) j!159) a!3186 mask!3328) lt!342397))))

(declare-fun b!769461 () Bool)

(assert (=> b!769461 (= e!428476 e!428479)))

(declare-fun res!520503 () Bool)

(assert (=> b!769461 (=> (not res!520503) (not e!428479))))

(declare-fun lt!342396 () SeekEntryResult!7857)

(assert (=> b!769461 (= res!520503 (= lt!342396 lt!342395))))

(declare-fun lt!342388 () (_ BitVec 64))

(declare-fun lt!342389 () array!42307)

(assert (=> b!769461 (= lt!342395 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342388 lt!342389 mask!3328))))

(assert (=> b!769461 (= lt!342396 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342388 mask!3328) lt!342388 lt!342389 mask!3328))))

(assert (=> b!769461 (= lt!342388 (select (store (arr!20250 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!769461 (= lt!342389 (array!42308 (store (arr!20250 a!3186) i!1173 k!2102) (size!20671 a!3186)))))

(declare-fun b!769462 () Bool)

(assert (=> b!769462 (= e!428471 e!428478)))

(declare-fun res!520498 () Bool)

(assert (=> b!769462 (=> (not res!520498) (not e!428478))))

(assert (=> b!769462 (= res!520498 (= (seekEntryOrOpen!0 (select (arr!20250 a!3186) j!159) a!3186 mask!3328) lt!342397))))

(assert (=> b!769462 (= lt!342397 (Found!7857 j!159))))

(declare-fun b!769463 () Bool)

(declare-fun res!520500 () Bool)

(assert (=> b!769463 (=> (not res!520500) (not e!428475))))

(declare-datatypes ((List!14305 0))(
  ( (Nil!14302) (Cons!14301 (h!15400 (_ BitVec 64)) (t!20628 List!14305)) )
))
(declare-fun arrayNoDuplicates!0 (array!42307 (_ BitVec 32) List!14305) Bool)

(assert (=> b!769463 (= res!520500 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14302))))

(declare-fun b!769464 () Bool)

(declare-fun Unit!26467 () Unit!26464)

(assert (=> b!769464 (= e!428473 Unit!26467)))

(assert (=> b!769464 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342394 (select (arr!20250 a!3186) j!159) a!3186 mask!3328) lt!342387)))

(declare-fun b!769454 () Bool)

(declare-fun res!520502 () Bool)

(assert (=> b!769454 (=> (not res!520502) (not e!428476))))

(assert (=> b!769454 (= res!520502 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20250 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!520493 () Bool)

(assert (=> start!66790 (=> (not res!520493) (not e!428477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66790 (= res!520493 (validMask!0 mask!3328))))

(assert (=> start!66790 e!428477))

(assert (=> start!66790 true))

(declare-fun array_inv!16024 (array!42307) Bool)

(assert (=> start!66790 (array_inv!16024 a!3186)))

(assert (= (and start!66790 res!520493) b!769445))

(assert (= (and b!769445 res!520505) b!769452))

(assert (= (and b!769452 res!520494) b!769451))

(assert (= (and b!769451 res!520504) b!769457))

(assert (= (and b!769457 res!520496) b!769448))

(assert (= (and b!769448 res!520501) b!769456))

(assert (= (and b!769456 res!520495) b!769463))

(assert (= (and b!769463 res!520500) b!769455))

(assert (= (and b!769455 res!520506) b!769453))

(assert (= (and b!769453 res!520492) b!769454))

(assert (= (and b!769454 res!520502) b!769458))

(assert (= (and b!769458 c!84872) b!769450))

(assert (= (and b!769458 (not c!84872)) b!769459))

(assert (= (and b!769458 res!520507) b!769461))

(assert (= (and b!769461 res!520503) b!769447))

(assert (= (and b!769447 res!520497) b!769462))

(assert (= (and b!769462 res!520498) b!769460))

(assert (= (and b!769447 (not res!520499)) b!769446))

(assert (= (and b!769446 c!84873) b!769464))

(assert (= (and b!769446 (not c!84873)) b!769449))

(declare-fun m!714919 () Bool)

(assert (=> b!769451 m!714919))

(declare-fun m!714921 () Bool)

(assert (=> b!769450 m!714921))

(assert (=> b!769450 m!714921))

(declare-fun m!714923 () Bool)

(assert (=> b!769450 m!714923))

(assert (=> b!769452 m!714921))

(assert (=> b!769452 m!714921))

(declare-fun m!714925 () Bool)

(assert (=> b!769452 m!714925))

(declare-fun m!714927 () Bool)

(assert (=> b!769457 m!714927))

(declare-fun m!714929 () Bool)

(assert (=> b!769456 m!714929))

(declare-fun m!714931 () Bool)

(assert (=> b!769447 m!714931))

(declare-fun m!714933 () Bool)

(assert (=> b!769447 m!714933))

(assert (=> b!769460 m!714921))

(assert (=> b!769460 m!714921))

(declare-fun m!714935 () Bool)

(assert (=> b!769460 m!714935))

(assert (=> b!769449 m!714921))

(assert (=> b!769449 m!714921))

(declare-fun m!714937 () Bool)

(assert (=> b!769449 m!714937))

(assert (=> b!769449 m!714921))

(declare-fun m!714939 () Bool)

(assert (=> b!769449 m!714939))

(declare-fun m!714941 () Bool)

(assert (=> b!769463 m!714941))

(declare-fun m!714943 () Bool)

(assert (=> start!66790 m!714943))

(declare-fun m!714945 () Bool)

(assert (=> start!66790 m!714945))

(assert (=> b!769453 m!714921))

(assert (=> b!769453 m!714921))

(declare-fun m!714947 () Bool)

(assert (=> b!769453 m!714947))

(assert (=> b!769453 m!714947))

(assert (=> b!769453 m!714921))

(declare-fun m!714949 () Bool)

(assert (=> b!769453 m!714949))

(declare-fun m!714951 () Bool)

(assert (=> b!769446 m!714951))

(assert (=> b!769459 m!714921))

(assert (=> b!769459 m!714921))

(assert (=> b!769459 m!714937))

(declare-fun m!714953 () Bool)

(assert (=> b!769448 m!714953))

(assert (=> b!769462 m!714921))

(assert (=> b!769462 m!714921))

(declare-fun m!714955 () Bool)

(assert (=> b!769462 m!714955))

(declare-fun m!714957 () Bool)

(assert (=> b!769461 m!714957))

(assert (=> b!769461 m!714957))

(declare-fun m!714959 () Bool)

(assert (=> b!769461 m!714959))

(declare-fun m!714961 () Bool)

(assert (=> b!769461 m!714961))

(declare-fun m!714963 () Bool)

(assert (=> b!769461 m!714963))

(declare-fun m!714965 () Bool)

(assert (=> b!769461 m!714965))

(declare-fun m!714967 () Bool)

(assert (=> b!769454 m!714967))

(assert (=> b!769464 m!714921))

(assert (=> b!769464 m!714921))

(declare-fun m!714969 () Bool)

(assert (=> b!769464 m!714969))

(push 1)

