; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67370 () Bool)

(assert start!67370)

(declare-fun b!778789 () Bool)

(declare-fun e!433306 () Bool)

(declare-fun e!433301 () Bool)

(assert (=> b!778789 (= e!433306 e!433301)))

(declare-fun res!526977 () Bool)

(assert (=> b!778789 (=> (not res!526977) (not e!433301))))

(declare-datatypes ((array!42554 0))(
  ( (array!42555 (arr!20366 (Array (_ BitVec 32) (_ BitVec 64))) (size!20787 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42554)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7973 0))(
  ( (MissingZero!7973 (index!34259 (_ BitVec 32))) (Found!7973 (index!34260 (_ BitVec 32))) (Intermediate!7973 (undefined!8785 Bool) (index!34261 (_ BitVec 32)) (x!65231 (_ BitVec 32))) (Undefined!7973) (MissingVacant!7973 (index!34262 (_ BitVec 32))) )
))
(declare-fun lt!346999 () SeekEntryResult!7973)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42554 (_ BitVec 32)) SeekEntryResult!7973)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!778789 (= res!526977 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20366 a!3186) j!159) mask!3328) (select (arr!20366 a!3186) j!159) a!3186 mask!3328) lt!346999))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!778789 (= lt!346999 (Intermediate!7973 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!778790 () Bool)

(declare-fun res!526972 () Bool)

(assert (=> b!778790 (=> (not res!526972) (not e!433306))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42554 (_ BitVec 32)) Bool)

(assert (=> b!778790 (= res!526972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!778791 () Bool)

(declare-fun e!433302 () Bool)

(declare-fun e!433305 () Bool)

(assert (=> b!778791 (= e!433302 (not e!433305))))

(declare-fun res!526983 () Bool)

(assert (=> b!778791 (=> res!526983 e!433305)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!346998 () SeekEntryResult!7973)

(assert (=> b!778791 (= res!526983 (or (not (is-Intermediate!7973 lt!346998)) (bvslt x!1131 (x!65231 lt!346998)) (not (= x!1131 (x!65231 lt!346998))) (not (= index!1321 (index!34261 lt!346998)))))))

(declare-fun e!433304 () Bool)

(assert (=> b!778791 e!433304))

(declare-fun res!526981 () Bool)

(assert (=> b!778791 (=> (not res!526981) (not e!433304))))

(assert (=> b!778791 (= res!526981 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26840 0))(
  ( (Unit!26841) )
))
(declare-fun lt!346994 () Unit!26840)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42554 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26840)

(assert (=> b!778791 (= lt!346994 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!778793 () Bool)

(declare-fun res!526971 () Bool)

(declare-fun e!433300 () Bool)

(assert (=> b!778793 (=> (not res!526971) (not e!433300))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!778793 (= res!526971 (validKeyInArray!0 (select (arr!20366 a!3186) j!159)))))

(declare-fun b!778794 () Bool)

(declare-fun res!526979 () Bool)

(assert (=> b!778794 (=> (not res!526979) (not e!433300))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!778794 (= res!526979 (validKeyInArray!0 k!2102))))

(declare-fun b!778795 () Bool)

(declare-fun res!526978 () Bool)

(assert (=> b!778795 (=> (not res!526978) (not e!433301))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!778795 (= res!526978 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20366 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778796 () Bool)

(declare-fun e!433299 () Bool)

(declare-fun lt!346996 () SeekEntryResult!7973)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42554 (_ BitVec 32)) SeekEntryResult!7973)

(assert (=> b!778796 (= e!433299 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20366 a!3186) j!159) a!3186 mask!3328) lt!346996))))

(declare-fun b!778797 () Bool)

(assert (=> b!778797 (= e!433300 e!433306)))

(declare-fun res!526976 () Bool)

(assert (=> b!778797 (=> (not res!526976) (not e!433306))))

(declare-fun lt!347000 () SeekEntryResult!7973)

(assert (=> b!778797 (= res!526976 (or (= lt!347000 (MissingZero!7973 i!1173)) (= lt!347000 (MissingVacant!7973 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42554 (_ BitVec 32)) SeekEntryResult!7973)

(assert (=> b!778797 (= lt!347000 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun e!433303 () Bool)

(declare-fun b!778798 () Bool)

(assert (=> b!778798 (= e!433303 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20366 a!3186) j!159) a!3186 mask!3328) (Found!7973 j!159)))))

(declare-fun b!778799 () Bool)

(assert (=> b!778799 (= e!433301 e!433302)))

(declare-fun res!526982 () Bool)

(assert (=> b!778799 (=> (not res!526982) (not e!433302))))

(declare-fun lt!347002 () SeekEntryResult!7973)

(assert (=> b!778799 (= res!526982 (= lt!347002 lt!346998))))

(declare-fun lt!346997 () (_ BitVec 64))

(declare-fun lt!347001 () array!42554)

(assert (=> b!778799 (= lt!346998 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346997 lt!347001 mask!3328))))

(assert (=> b!778799 (= lt!347002 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346997 mask!3328) lt!346997 lt!347001 mask!3328))))

(assert (=> b!778799 (= lt!346997 (select (store (arr!20366 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!778799 (= lt!347001 (array!42555 (store (arr!20366 a!3186) i!1173 k!2102) (size!20787 a!3186)))))

(declare-fun b!778800 () Bool)

(declare-fun res!526980 () Bool)

(assert (=> b!778800 (=> (not res!526980) (not e!433306))))

(declare-datatypes ((List!14421 0))(
  ( (Nil!14418) (Cons!14417 (h!15531 (_ BitVec 64)) (t!20744 List!14421)) )
))
(declare-fun arrayNoDuplicates!0 (array!42554 (_ BitVec 32) List!14421) Bool)

(assert (=> b!778800 (= res!526980 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14418))))

(declare-fun b!778801 () Bool)

(declare-fun res!526984 () Bool)

(assert (=> b!778801 (=> (not res!526984) (not e!433301))))

(assert (=> b!778801 (= res!526984 e!433303)))

(declare-fun c!86313 () Bool)

(assert (=> b!778801 (= c!86313 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!778792 () Bool)

(declare-fun res!526969 () Bool)

(assert (=> b!778792 (=> (not res!526969) (not e!433300))))

(declare-fun arrayContainsKey!0 (array!42554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!778792 (= res!526969 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!526970 () Bool)

(assert (=> start!67370 (=> (not res!526970) (not e!433300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67370 (= res!526970 (validMask!0 mask!3328))))

(assert (=> start!67370 e!433300))

(assert (=> start!67370 true))

(declare-fun array_inv!16140 (array!42554) Bool)

(assert (=> start!67370 (array_inv!16140 a!3186)))

(declare-fun b!778802 () Bool)

(assert (=> b!778802 (= e!433303 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20366 a!3186) j!159) a!3186 mask!3328) lt!346999))))

(declare-fun b!778803 () Bool)

(assert (=> b!778803 (= e!433304 e!433299)))

(declare-fun res!526974 () Bool)

(assert (=> b!778803 (=> (not res!526974) (not e!433299))))

(assert (=> b!778803 (= res!526974 (= (seekEntryOrOpen!0 (select (arr!20366 a!3186) j!159) a!3186 mask!3328) lt!346996))))

(assert (=> b!778803 (= lt!346996 (Found!7973 j!159))))

(declare-fun b!778804 () Bool)

(assert (=> b!778804 (= e!433305 true)))

(declare-fun lt!346995 () SeekEntryResult!7973)

(assert (=> b!778804 (= lt!346995 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20366 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778805 () Bool)

(declare-fun res!526975 () Bool)

(assert (=> b!778805 (=> (not res!526975) (not e!433300))))

(assert (=> b!778805 (= res!526975 (and (= (size!20787 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20787 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20787 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!778806 () Bool)

(declare-fun res!526973 () Bool)

(assert (=> b!778806 (=> (not res!526973) (not e!433306))))

(assert (=> b!778806 (= res!526973 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20787 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20787 a!3186))))))

(assert (= (and start!67370 res!526970) b!778805))

(assert (= (and b!778805 res!526975) b!778793))

(assert (= (and b!778793 res!526971) b!778794))

(assert (= (and b!778794 res!526979) b!778792))

(assert (= (and b!778792 res!526969) b!778797))

(assert (= (and b!778797 res!526976) b!778790))

(assert (= (and b!778790 res!526972) b!778800))

(assert (= (and b!778800 res!526980) b!778806))

(assert (= (and b!778806 res!526973) b!778789))

(assert (= (and b!778789 res!526977) b!778795))

(assert (= (and b!778795 res!526978) b!778801))

(assert (= (and b!778801 c!86313) b!778802))

(assert (= (and b!778801 (not c!86313)) b!778798))

(assert (= (and b!778801 res!526984) b!778799))

(assert (= (and b!778799 res!526982) b!778791))

(assert (= (and b!778791 res!526981) b!778803))

(assert (= (and b!778803 res!526974) b!778796))

(assert (= (and b!778791 (not res!526983)) b!778804))

(declare-fun m!722445 () Bool)

(assert (=> b!778789 m!722445))

(assert (=> b!778789 m!722445))

(declare-fun m!722447 () Bool)

(assert (=> b!778789 m!722447))

(assert (=> b!778789 m!722447))

(assert (=> b!778789 m!722445))

(declare-fun m!722449 () Bool)

(assert (=> b!778789 m!722449))

(assert (=> b!778796 m!722445))

(assert (=> b!778796 m!722445))

(declare-fun m!722451 () Bool)

(assert (=> b!778796 m!722451))

(assert (=> b!778804 m!722445))

(assert (=> b!778804 m!722445))

(declare-fun m!722453 () Bool)

(assert (=> b!778804 m!722453))

(assert (=> b!778798 m!722445))

(assert (=> b!778798 m!722445))

(assert (=> b!778798 m!722453))

(declare-fun m!722455 () Bool)

(assert (=> b!778797 m!722455))

(assert (=> b!778793 m!722445))

(assert (=> b!778793 m!722445))

(declare-fun m!722457 () Bool)

(assert (=> b!778793 m!722457))

(declare-fun m!722459 () Bool)

(assert (=> b!778790 m!722459))

(assert (=> b!778802 m!722445))

(assert (=> b!778802 m!722445))

(declare-fun m!722461 () Bool)

(assert (=> b!778802 m!722461))

(declare-fun m!722463 () Bool)

(assert (=> b!778792 m!722463))

(declare-fun m!722465 () Bool)

(assert (=> b!778800 m!722465))

(assert (=> b!778803 m!722445))

(assert (=> b!778803 m!722445))

(declare-fun m!722467 () Bool)

(assert (=> b!778803 m!722467))

(declare-fun m!722469 () Bool)

(assert (=> b!778794 m!722469))

(declare-fun m!722471 () Bool)

(assert (=> b!778795 m!722471))

(declare-fun m!722473 () Bool)

(assert (=> b!778791 m!722473))

(declare-fun m!722475 () Bool)

(assert (=> b!778791 m!722475))

(declare-fun m!722477 () Bool)

(assert (=> b!778799 m!722477))

(assert (=> b!778799 m!722477))

(declare-fun m!722479 () Bool)

(assert (=> b!778799 m!722479))

(declare-fun m!722481 () Bool)

(assert (=> b!778799 m!722481))

(declare-fun m!722483 () Bool)

(assert (=> b!778799 m!722483))

(declare-fun m!722485 () Bool)

(assert (=> b!778799 m!722485))

(declare-fun m!722487 () Bool)

(assert (=> start!67370 m!722487))

(declare-fun m!722489 () Bool)

(assert (=> start!67370 m!722489))

(push 1)

