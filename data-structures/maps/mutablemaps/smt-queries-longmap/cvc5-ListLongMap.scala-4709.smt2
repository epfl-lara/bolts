; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65332 () Bool)

(assert start!65332)

(declare-fun b!741670 () Bool)

(declare-fun res!499080 () Bool)

(declare-fun e!414572 () Bool)

(assert (=> b!741670 (=> (not res!499080) (not e!414572))))

(declare-datatypes ((array!41458 0))(
  ( (array!41459 (arr!19839 (Array (_ BitVec 32) (_ BitVec 64))) (size!20260 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41458)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!741670 (= res!499080 (and (= (size!20260 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20260 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20260 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!741671 () Bool)

(declare-fun res!499078 () Bool)

(assert (=> b!741671 (=> (not res!499078) (not e!414572))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741671 (= res!499078 (validKeyInArray!0 k!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!741672 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7446 0))(
  ( (MissingZero!7446 (index!32151 (_ BitVec 32))) (Found!7446 (index!32152 (_ BitVec 32))) (Intermediate!7446 (undefined!8258 Bool) (index!32153 (_ BitVec 32)) (x!63157 (_ BitVec 32))) (Undefined!7446) (MissingVacant!7446 (index!32154 (_ BitVec 32))) )
))
(declare-fun lt!329520 () SeekEntryResult!7446)

(declare-fun e!414576 () Bool)

(assert (=> b!741672 (= e!414576 (not (or (not (is-Intermediate!7446 lt!329520)) (not (= x!1131 (x!63157 lt!329520))) (not (= index!1321 (index!32153 lt!329520))) (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(declare-fun e!414574 () Bool)

(assert (=> b!741672 e!414574))

(declare-fun res!499088 () Bool)

(assert (=> b!741672 (=> (not res!499088) (not e!414574))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41458 (_ BitVec 32)) Bool)

(assert (=> b!741672 (= res!499088 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25372 0))(
  ( (Unit!25373) )
))
(declare-fun lt!329519 () Unit!25372)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41458 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25372)

(assert (=> b!741672 (= lt!329519 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun lt!329516 () SeekEntryResult!7446)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!741673 () Bool)

(declare-fun e!414571 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41458 (_ BitVec 32)) SeekEntryResult!7446)

(assert (=> b!741673 (= e!414571 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19839 a!3186) j!159) a!3186 mask!3328) lt!329516))))

(declare-fun b!741674 () Bool)

(declare-fun res!499077 () Bool)

(assert (=> b!741674 (=> (not res!499077) (not e!414572))))

(assert (=> b!741674 (= res!499077 (validKeyInArray!0 (select (arr!19839 a!3186) j!159)))))

(declare-fun b!741675 () Bool)

(assert (=> b!741675 (= e!414574 e!414571)))

(declare-fun res!499075 () Bool)

(assert (=> b!741675 (=> (not res!499075) (not e!414571))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41458 (_ BitVec 32)) SeekEntryResult!7446)

(assert (=> b!741675 (= res!499075 (= (seekEntryOrOpen!0 (select (arr!19839 a!3186) j!159) a!3186 mask!3328) lt!329516))))

(assert (=> b!741675 (= lt!329516 (Found!7446 j!159))))

(declare-fun b!741676 () Bool)

(declare-fun e!414575 () Bool)

(declare-fun e!414573 () Bool)

(assert (=> b!741676 (= e!414575 e!414573)))

(declare-fun res!499084 () Bool)

(assert (=> b!741676 (=> (not res!499084) (not e!414573))))

(declare-fun lt!329518 () SeekEntryResult!7446)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41458 (_ BitVec 32)) SeekEntryResult!7446)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741676 (= res!499084 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19839 a!3186) j!159) mask!3328) (select (arr!19839 a!3186) j!159) a!3186 mask!3328) lt!329518))))

(assert (=> b!741676 (= lt!329518 (Intermediate!7446 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741677 () Bool)

(declare-fun res!499086 () Bool)

(assert (=> b!741677 (=> (not res!499086) (not e!414575))))

(assert (=> b!741677 (= res!499086 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20260 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20260 a!3186))))))

(declare-fun res!499081 () Bool)

(assert (=> start!65332 (=> (not res!499081) (not e!414572))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65332 (= res!499081 (validMask!0 mask!3328))))

(assert (=> start!65332 e!414572))

(assert (=> start!65332 true))

(declare-fun array_inv!15613 (array!41458) Bool)

(assert (=> start!65332 (array_inv!15613 a!3186)))

(declare-fun b!741678 () Bool)

(declare-fun res!499089 () Bool)

(assert (=> b!741678 (=> (not res!499089) (not e!414573))))

(declare-fun e!414569 () Bool)

(assert (=> b!741678 (= res!499089 e!414569)))

(declare-fun c!81678 () Bool)

(assert (=> b!741678 (= c!81678 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741679 () Bool)

(assert (=> b!741679 (= e!414569 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19839 a!3186) j!159) a!3186 mask!3328) lt!329518))))

(declare-fun b!741680 () Bool)

(declare-fun res!499085 () Bool)

(assert (=> b!741680 (=> (not res!499085) (not e!414572))))

(declare-fun arrayContainsKey!0 (array!41458 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741680 (= res!499085 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!741681 () Bool)

(assert (=> b!741681 (= e!414572 e!414575)))

(declare-fun res!499087 () Bool)

(assert (=> b!741681 (=> (not res!499087) (not e!414575))))

(declare-fun lt!329521 () SeekEntryResult!7446)

(assert (=> b!741681 (= res!499087 (or (= lt!329521 (MissingZero!7446 i!1173)) (= lt!329521 (MissingVacant!7446 i!1173))))))

(assert (=> b!741681 (= lt!329521 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!741682 () Bool)

(declare-fun res!499082 () Bool)

(assert (=> b!741682 (=> (not res!499082) (not e!414575))))

(assert (=> b!741682 (= res!499082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741683 () Bool)

(assert (=> b!741683 (= e!414569 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19839 a!3186) j!159) a!3186 mask!3328) (Found!7446 j!159)))))

(declare-fun b!741684 () Bool)

(assert (=> b!741684 (= e!414573 e!414576)))

(declare-fun res!499076 () Bool)

(assert (=> b!741684 (=> (not res!499076) (not e!414576))))

(declare-fun lt!329515 () SeekEntryResult!7446)

(assert (=> b!741684 (= res!499076 (= lt!329515 lt!329520))))

(declare-fun lt!329517 () (_ BitVec 64))

(declare-fun lt!329522 () array!41458)

(assert (=> b!741684 (= lt!329520 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329517 lt!329522 mask!3328))))

(assert (=> b!741684 (= lt!329515 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329517 mask!3328) lt!329517 lt!329522 mask!3328))))

(assert (=> b!741684 (= lt!329517 (select (store (arr!19839 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!741684 (= lt!329522 (array!41459 (store (arr!19839 a!3186) i!1173 k!2102) (size!20260 a!3186)))))

(declare-fun b!741685 () Bool)

(declare-fun res!499083 () Bool)

(assert (=> b!741685 (=> (not res!499083) (not e!414575))))

(declare-datatypes ((List!13894 0))(
  ( (Nil!13891) (Cons!13890 (h!14962 (_ BitVec 64)) (t!20217 List!13894)) )
))
(declare-fun arrayNoDuplicates!0 (array!41458 (_ BitVec 32) List!13894) Bool)

(assert (=> b!741685 (= res!499083 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13891))))

(declare-fun b!741686 () Bool)

(declare-fun res!499079 () Bool)

(assert (=> b!741686 (=> (not res!499079) (not e!414573))))

(assert (=> b!741686 (= res!499079 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19839 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!65332 res!499081) b!741670))

(assert (= (and b!741670 res!499080) b!741674))

(assert (= (and b!741674 res!499077) b!741671))

(assert (= (and b!741671 res!499078) b!741680))

(assert (= (and b!741680 res!499085) b!741681))

(assert (= (and b!741681 res!499087) b!741682))

(assert (= (and b!741682 res!499082) b!741685))

(assert (= (and b!741685 res!499083) b!741677))

(assert (= (and b!741677 res!499086) b!741676))

(assert (= (and b!741676 res!499084) b!741686))

(assert (= (and b!741686 res!499079) b!741678))

(assert (= (and b!741678 c!81678) b!741679))

(assert (= (and b!741678 (not c!81678)) b!741683))

(assert (= (and b!741678 res!499089) b!741684))

(assert (= (and b!741684 res!499076) b!741672))

(assert (= (and b!741672 res!499088) b!741675))

(assert (= (and b!741675 res!499075) b!741673))

(declare-fun m!692707 () Bool)

(assert (=> b!741686 m!692707))

(declare-fun m!692709 () Bool)

(assert (=> b!741672 m!692709))

(declare-fun m!692711 () Bool)

(assert (=> b!741672 m!692711))

(declare-fun m!692713 () Bool)

(assert (=> b!741680 m!692713))

(declare-fun m!692715 () Bool)

(assert (=> b!741682 m!692715))

(declare-fun m!692717 () Bool)

(assert (=> b!741685 m!692717))

(declare-fun m!692719 () Bool)

(assert (=> b!741679 m!692719))

(assert (=> b!741679 m!692719))

(declare-fun m!692721 () Bool)

(assert (=> b!741679 m!692721))

(assert (=> b!741683 m!692719))

(assert (=> b!741683 m!692719))

(declare-fun m!692723 () Bool)

(assert (=> b!741683 m!692723))

(declare-fun m!692725 () Bool)

(assert (=> b!741671 m!692725))

(assert (=> b!741676 m!692719))

(assert (=> b!741676 m!692719))

(declare-fun m!692727 () Bool)

(assert (=> b!741676 m!692727))

(assert (=> b!741676 m!692727))

(assert (=> b!741676 m!692719))

(declare-fun m!692729 () Bool)

(assert (=> b!741676 m!692729))

(declare-fun m!692731 () Bool)

(assert (=> b!741681 m!692731))

(assert (=> b!741673 m!692719))

(assert (=> b!741673 m!692719))

(declare-fun m!692733 () Bool)

(assert (=> b!741673 m!692733))

(declare-fun m!692735 () Bool)

(assert (=> b!741684 m!692735))

(declare-fun m!692737 () Bool)

(assert (=> b!741684 m!692737))

(declare-fun m!692739 () Bool)

(assert (=> b!741684 m!692739))

(declare-fun m!692741 () Bool)

(assert (=> b!741684 m!692741))

(assert (=> b!741684 m!692737))

(declare-fun m!692743 () Bool)

(assert (=> b!741684 m!692743))

(assert (=> b!741674 m!692719))

(assert (=> b!741674 m!692719))

(declare-fun m!692745 () Bool)

(assert (=> b!741674 m!692745))

(assert (=> b!741675 m!692719))

(assert (=> b!741675 m!692719))

(declare-fun m!692747 () Bool)

(assert (=> b!741675 m!692747))

(declare-fun m!692749 () Bool)

(assert (=> start!65332 m!692749))

(declare-fun m!692751 () Bool)

(assert (=> start!65332 m!692751))

(push 1)

(assert (not b!741683))

(assert (not b!741672))

(assert (not b!741682))

(assert (not b!741675))

(assert (not b!741684))

(assert (not start!65332))

(assert (not b!741679))

(assert (not b!741671))

(assert (not b!741673))

(assert (not b!741680))

(assert (not b!741676))

(assert (not b!741685))

(assert (not b!741674))

(assert (not b!741681))

(check-sat)

(pop 1)

(push 1)

(check-sat)

