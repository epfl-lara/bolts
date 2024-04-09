; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65328 () Bool)

(assert start!65328)

(declare-fun b!741568 () Bool)

(declare-fun e!414522 () Bool)

(declare-fun e!414524 () Bool)

(assert (=> b!741568 (= e!414522 e!414524)))

(declare-fun res!498997 () Bool)

(assert (=> b!741568 (=> (not res!498997) (not e!414524))))

(declare-datatypes ((SeekEntryResult!7444 0))(
  ( (MissingZero!7444 (index!32143 (_ BitVec 32))) (Found!7444 (index!32144 (_ BitVec 32))) (Intermediate!7444 (undefined!8256 Bool) (index!32145 (_ BitVec 32)) (x!63147 (_ BitVec 32))) (Undefined!7444) (MissingVacant!7444 (index!32146 (_ BitVec 32))) )
))
(declare-fun lt!329478 () SeekEntryResult!7444)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!741568 (= res!498997 (or (= lt!329478 (MissingZero!7444 i!1173)) (= lt!329478 (MissingVacant!7444 i!1173))))))

(declare-datatypes ((array!41454 0))(
  ( (array!41455 (arr!19837 (Array (_ BitVec 32) (_ BitVec 64))) (size!20258 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41454)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41454 (_ BitVec 32)) SeekEntryResult!7444)

(assert (=> b!741568 (= lt!329478 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!741570 () Bool)

(declare-fun res!498993 () Bool)

(assert (=> b!741570 (=> (not res!498993) (not e!414522))))

(declare-fun arrayContainsKey!0 (array!41454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741570 (= res!498993 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!414523 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!741571 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41454 (_ BitVec 32)) SeekEntryResult!7444)

(assert (=> b!741571 (= e!414523 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19837 a!3186) j!159) a!3186 mask!3328) (Found!7444 j!159)))))

(declare-fun b!741572 () Bool)

(declare-fun e!414521 () Bool)

(declare-fun e!414525 () Bool)

(assert (=> b!741572 (= e!414521 e!414525)))

(declare-fun res!498988 () Bool)

(assert (=> b!741572 (=> (not res!498988) (not e!414525))))

(declare-fun lt!329476 () array!41454)

(declare-fun lt!329480 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41454 (_ BitVec 32)) SeekEntryResult!7444)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741572 (= res!498988 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329480 mask!3328) lt!329480 lt!329476 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329480 lt!329476 mask!3328)))))

(assert (=> b!741572 (= lt!329480 (select (store (arr!19837 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!741572 (= lt!329476 (array!41455 (store (arr!19837 a!3186) i!1173 k0!2102) (size!20258 a!3186)))))

(declare-fun b!741573 () Bool)

(declare-fun res!498991 () Bool)

(assert (=> b!741573 (=> (not res!498991) (not e!414524))))

(declare-datatypes ((List!13892 0))(
  ( (Nil!13889) (Cons!13888 (h!14960 (_ BitVec 64)) (t!20215 List!13892)) )
))
(declare-fun arrayNoDuplicates!0 (array!41454 (_ BitVec 32) List!13892) Bool)

(assert (=> b!741573 (= res!498991 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13889))))

(declare-fun b!741574 () Bool)

(declare-fun res!498990 () Bool)

(assert (=> b!741574 (=> (not res!498990) (not e!414524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41454 (_ BitVec 32)) Bool)

(assert (=> b!741574 (= res!498990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741575 () Bool)

(assert (=> b!741575 (= e!414525 (not true))))

(declare-fun e!414528 () Bool)

(assert (=> b!741575 e!414528))

(declare-fun res!498998 () Bool)

(assert (=> b!741575 (=> (not res!498998) (not e!414528))))

(assert (=> b!741575 (= res!498998 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25368 0))(
  ( (Unit!25369) )
))
(declare-fun lt!329477 () Unit!25368)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41454 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25368)

(assert (=> b!741575 (= lt!329477 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741576 () Bool)

(declare-fun res!498986 () Bool)

(assert (=> b!741576 (=> (not res!498986) (not e!414524))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741576 (= res!498986 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20258 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20258 a!3186))))))

(declare-fun b!741577 () Bool)

(declare-fun res!498987 () Bool)

(assert (=> b!741577 (=> (not res!498987) (not e!414522))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741577 (= res!498987 (validKeyInArray!0 k0!2102))))

(declare-fun b!741578 () Bool)

(declare-fun e!414526 () Bool)

(assert (=> b!741578 (= e!414528 e!414526)))

(declare-fun res!498989 () Bool)

(assert (=> b!741578 (=> (not res!498989) (not e!414526))))

(declare-fun lt!329475 () SeekEntryResult!7444)

(assert (=> b!741578 (= res!498989 (= (seekEntryOrOpen!0 (select (arr!19837 a!3186) j!159) a!3186 mask!3328) lt!329475))))

(assert (=> b!741578 (= lt!329475 (Found!7444 j!159))))

(declare-fun b!741579 () Bool)

(declare-fun res!498985 () Bool)

(assert (=> b!741579 (=> (not res!498985) (not e!414522))))

(assert (=> b!741579 (= res!498985 (and (= (size!20258 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20258 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20258 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!741569 () Bool)

(assert (=> b!741569 (= e!414526 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19837 a!3186) j!159) a!3186 mask!3328) lt!329475))))

(declare-fun res!498999 () Bool)

(assert (=> start!65328 (=> (not res!498999) (not e!414522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65328 (= res!498999 (validMask!0 mask!3328))))

(assert (=> start!65328 e!414522))

(assert (=> start!65328 true))

(declare-fun array_inv!15611 (array!41454) Bool)

(assert (=> start!65328 (array_inv!15611 a!3186)))

(declare-fun b!741580 () Bool)

(assert (=> b!741580 (= e!414524 e!414521)))

(declare-fun res!498994 () Bool)

(assert (=> b!741580 (=> (not res!498994) (not e!414521))))

(declare-fun lt!329479 () SeekEntryResult!7444)

(assert (=> b!741580 (= res!498994 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19837 a!3186) j!159) mask!3328) (select (arr!19837 a!3186) j!159) a!3186 mask!3328) lt!329479))))

(assert (=> b!741580 (= lt!329479 (Intermediate!7444 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741581 () Bool)

(declare-fun res!498995 () Bool)

(assert (=> b!741581 (=> (not res!498995) (not e!414521))))

(assert (=> b!741581 (= res!498995 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19837 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741582 () Bool)

(declare-fun res!498992 () Bool)

(assert (=> b!741582 (=> (not res!498992) (not e!414521))))

(assert (=> b!741582 (= res!498992 e!414523)))

(declare-fun c!81672 () Bool)

(assert (=> b!741582 (= c!81672 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741583 () Bool)

(declare-fun res!498996 () Bool)

(assert (=> b!741583 (=> (not res!498996) (not e!414522))))

(assert (=> b!741583 (= res!498996 (validKeyInArray!0 (select (arr!19837 a!3186) j!159)))))

(declare-fun b!741584 () Bool)

(assert (=> b!741584 (= e!414523 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19837 a!3186) j!159) a!3186 mask!3328) lt!329479))))

(assert (= (and start!65328 res!498999) b!741579))

(assert (= (and b!741579 res!498985) b!741583))

(assert (= (and b!741583 res!498996) b!741577))

(assert (= (and b!741577 res!498987) b!741570))

(assert (= (and b!741570 res!498993) b!741568))

(assert (= (and b!741568 res!498997) b!741574))

(assert (= (and b!741574 res!498990) b!741573))

(assert (= (and b!741573 res!498991) b!741576))

(assert (= (and b!741576 res!498986) b!741580))

(assert (= (and b!741580 res!498994) b!741581))

(assert (= (and b!741581 res!498995) b!741582))

(assert (= (and b!741582 c!81672) b!741584))

(assert (= (and b!741582 (not c!81672)) b!741571))

(assert (= (and b!741582 res!498992) b!741572))

(assert (= (and b!741572 res!498988) b!741575))

(assert (= (and b!741575 res!498998) b!741578))

(assert (= (and b!741578 res!498989) b!741569))

(declare-fun m!692615 () Bool)

(assert (=> b!741573 m!692615))

(declare-fun m!692617 () Bool)

(assert (=> b!741570 m!692617))

(declare-fun m!692619 () Bool)

(assert (=> b!741569 m!692619))

(assert (=> b!741569 m!692619))

(declare-fun m!692621 () Bool)

(assert (=> b!741569 m!692621))

(assert (=> b!741580 m!692619))

(assert (=> b!741580 m!692619))

(declare-fun m!692623 () Bool)

(assert (=> b!741580 m!692623))

(assert (=> b!741580 m!692623))

(assert (=> b!741580 m!692619))

(declare-fun m!692625 () Bool)

(assert (=> b!741580 m!692625))

(declare-fun m!692627 () Bool)

(assert (=> b!741577 m!692627))

(assert (=> b!741583 m!692619))

(assert (=> b!741583 m!692619))

(declare-fun m!692629 () Bool)

(assert (=> b!741583 m!692629))

(assert (=> b!741578 m!692619))

(assert (=> b!741578 m!692619))

(declare-fun m!692631 () Bool)

(assert (=> b!741578 m!692631))

(declare-fun m!692633 () Bool)

(assert (=> b!741574 m!692633))

(assert (=> b!741584 m!692619))

(assert (=> b!741584 m!692619))

(declare-fun m!692635 () Bool)

(assert (=> b!741584 m!692635))

(declare-fun m!692637 () Bool)

(assert (=> start!65328 m!692637))

(declare-fun m!692639 () Bool)

(assert (=> start!65328 m!692639))

(declare-fun m!692641 () Bool)

(assert (=> b!741581 m!692641))

(declare-fun m!692643 () Bool)

(assert (=> b!741572 m!692643))

(declare-fun m!692645 () Bool)

(assert (=> b!741572 m!692645))

(declare-fun m!692647 () Bool)

(assert (=> b!741572 m!692647))

(assert (=> b!741572 m!692643))

(declare-fun m!692649 () Bool)

(assert (=> b!741572 m!692649))

(declare-fun m!692651 () Bool)

(assert (=> b!741572 m!692651))

(declare-fun m!692653 () Bool)

(assert (=> b!741568 m!692653))

(declare-fun m!692655 () Bool)

(assert (=> b!741575 m!692655))

(declare-fun m!692657 () Bool)

(assert (=> b!741575 m!692657))

(assert (=> b!741571 m!692619))

(assert (=> b!741571 m!692619))

(declare-fun m!692659 () Bool)

(assert (=> b!741571 m!692659))

(check-sat (not b!741569) (not b!741572) (not b!741583) (not b!741570) (not b!741584) (not b!741573) (not b!741577) (not b!741568) (not b!741571) (not b!741574) (not b!741575) (not start!65328) (not b!741578) (not b!741580))
(check-sat)
