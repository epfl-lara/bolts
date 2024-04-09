; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65438 () Bool)

(assert start!65438)

(declare-fun b!744651 () Bool)

(declare-fun e!415980 () Bool)

(declare-fun e!415979 () Bool)

(assert (=> b!744651 (= e!415980 e!415979)))

(declare-fun res!501744 () Bool)

(assert (=> b!744651 (=> (not res!501744) (not e!415979))))

(declare-datatypes ((SeekEntryResult!7499 0))(
  ( (MissingZero!7499 (index!32363 (_ BitVec 32))) (Found!7499 (index!32364 (_ BitVec 32))) (Intermediate!7499 (undefined!8311 Bool) (index!32365 (_ BitVec 32)) (x!63346 (_ BitVec 32))) (Undefined!7499) (MissingVacant!7499 (index!32366 (_ BitVec 32))) )
))
(declare-fun lt!330832 () SeekEntryResult!7499)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!744651 (= res!501744 (or (= lt!330832 (MissingZero!7499 i!1173)) (= lt!330832 (MissingVacant!7499 i!1173))))))

(declare-datatypes ((array!41564 0))(
  ( (array!41565 (arr!19892 (Array (_ BitVec 32) (_ BitVec 64))) (size!20313 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41564)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41564 (_ BitVec 32)) SeekEntryResult!7499)

(assert (=> b!744651 (= lt!330832 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!744652 () Bool)

(declare-fun e!415977 () Bool)

(assert (=> b!744652 (= e!415977 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!330838 () SeekEntryResult!7499)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41564 (_ BitVec 32)) SeekEntryResult!7499)

(assert (=> b!744652 (= lt!330838 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19892 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!744653 () Bool)

(declare-fun res!501751 () Bool)

(assert (=> b!744653 (=> (not res!501751) (not e!415980))))

(assert (=> b!744653 (= res!501751 (and (= (size!20313 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20313 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20313 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!744654 () Bool)

(declare-fun res!501748 () Bool)

(assert (=> b!744654 (=> (not res!501748) (not e!415980))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744654 (= res!501748 (validKeyInArray!0 k!2102))))

(declare-fun b!744655 () Bool)

(declare-fun res!501746 () Bool)

(declare-fun e!415982 () Bool)

(assert (=> b!744655 (=> (not res!501746) (not e!415982))))

(declare-fun e!415975 () Bool)

(assert (=> b!744655 (= res!501746 e!415975)))

(declare-fun c!81837 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!744655 (= c!81837 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744656 () Bool)

(assert (=> b!744656 (= e!415975 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19892 a!3186) j!159) a!3186 mask!3328) (Found!7499 j!159)))))

(declare-fun b!744657 () Bool)

(declare-fun e!415981 () Bool)

(assert (=> b!744657 (= e!415982 e!415981)))

(declare-fun res!501750 () Bool)

(assert (=> b!744657 (=> (not res!501750) (not e!415981))))

(declare-fun lt!330839 () SeekEntryResult!7499)

(declare-fun lt!330837 () SeekEntryResult!7499)

(assert (=> b!744657 (= res!501750 (= lt!330839 lt!330837))))

(declare-fun lt!330831 () array!41564)

(declare-fun lt!330835 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41564 (_ BitVec 32)) SeekEntryResult!7499)

(assert (=> b!744657 (= lt!330837 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330835 lt!330831 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744657 (= lt!330839 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330835 mask!3328) lt!330835 lt!330831 mask!3328))))

(assert (=> b!744657 (= lt!330835 (select (store (arr!19892 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!744657 (= lt!330831 (array!41565 (store (arr!19892 a!3186) i!1173 k!2102) (size!20313 a!3186)))))

(declare-fun res!501740 () Bool)

(assert (=> start!65438 (=> (not res!501740) (not e!415980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65438 (= res!501740 (validMask!0 mask!3328))))

(assert (=> start!65438 e!415980))

(assert (=> start!65438 true))

(declare-fun array_inv!15666 (array!41564) Bool)

(assert (=> start!65438 (array_inv!15666 a!3186)))

(declare-fun b!744658 () Bool)

(declare-fun res!501738 () Bool)

(assert (=> b!744658 (=> (not res!501738) (not e!415979))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41564 (_ BitVec 32)) Bool)

(assert (=> b!744658 (= res!501738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744659 () Bool)

(assert (=> b!744659 (= e!415981 (not e!415977))))

(declare-fun res!501749 () Bool)

(assert (=> b!744659 (=> res!501749 e!415977)))

(assert (=> b!744659 (= res!501749 (or (not (is-Intermediate!7499 lt!330837)) (bvslt x!1131 (x!63346 lt!330837)) (not (= x!1131 (x!63346 lt!330837))) (not (= index!1321 (index!32365 lt!330837)))))))

(declare-fun e!415978 () Bool)

(assert (=> b!744659 e!415978))

(declare-fun res!501747 () Bool)

(assert (=> b!744659 (=> (not res!501747) (not e!415978))))

(assert (=> b!744659 (= res!501747 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25478 0))(
  ( (Unit!25479) )
))
(declare-fun lt!330834 () Unit!25478)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41564 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25478)

(assert (=> b!744659 (= lt!330834 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!744660 () Bool)

(declare-fun res!501743 () Bool)

(assert (=> b!744660 (=> (not res!501743) (not e!415979))))

(declare-datatypes ((List!13947 0))(
  ( (Nil!13944) (Cons!13943 (h!15015 (_ BitVec 64)) (t!20270 List!13947)) )
))
(declare-fun arrayNoDuplicates!0 (array!41564 (_ BitVec 32) List!13947) Bool)

(assert (=> b!744660 (= res!501743 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13944))))

(declare-fun b!744661 () Bool)

(declare-fun res!501741 () Bool)

(assert (=> b!744661 (=> (not res!501741) (not e!415982))))

(assert (=> b!744661 (= res!501741 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19892 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!330836 () SeekEntryResult!7499)

(declare-fun b!744662 () Bool)

(assert (=> b!744662 (= e!415975 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19892 a!3186) j!159) a!3186 mask!3328) lt!330836))))

(declare-fun b!744663 () Bool)

(declare-fun res!501753 () Bool)

(assert (=> b!744663 (=> (not res!501753) (not e!415980))))

(assert (=> b!744663 (= res!501753 (validKeyInArray!0 (select (arr!19892 a!3186) j!159)))))

(declare-fun b!744664 () Bool)

(declare-fun res!501752 () Bool)

(assert (=> b!744664 (=> (not res!501752) (not e!415979))))

(assert (=> b!744664 (= res!501752 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20313 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20313 a!3186))))))

(declare-fun b!744665 () Bool)

(declare-fun e!415983 () Bool)

(assert (=> b!744665 (= e!415978 e!415983)))

(declare-fun res!501739 () Bool)

(assert (=> b!744665 (=> (not res!501739) (not e!415983))))

(declare-fun lt!330833 () SeekEntryResult!7499)

(assert (=> b!744665 (= res!501739 (= (seekEntryOrOpen!0 (select (arr!19892 a!3186) j!159) a!3186 mask!3328) lt!330833))))

(assert (=> b!744665 (= lt!330833 (Found!7499 j!159))))

(declare-fun b!744666 () Bool)

(assert (=> b!744666 (= e!415979 e!415982)))

(declare-fun res!501745 () Bool)

(assert (=> b!744666 (=> (not res!501745) (not e!415982))))

(assert (=> b!744666 (= res!501745 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19892 a!3186) j!159) mask!3328) (select (arr!19892 a!3186) j!159) a!3186 mask!3328) lt!330836))))

(assert (=> b!744666 (= lt!330836 (Intermediate!7499 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!744667 () Bool)

(assert (=> b!744667 (= e!415983 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19892 a!3186) j!159) a!3186 mask!3328) lt!330833))))

(declare-fun b!744668 () Bool)

(declare-fun res!501742 () Bool)

(assert (=> b!744668 (=> (not res!501742) (not e!415980))))

(declare-fun arrayContainsKey!0 (array!41564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744668 (= res!501742 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65438 res!501740) b!744653))

(assert (= (and b!744653 res!501751) b!744663))

(assert (= (and b!744663 res!501753) b!744654))

(assert (= (and b!744654 res!501748) b!744668))

(assert (= (and b!744668 res!501742) b!744651))

(assert (= (and b!744651 res!501744) b!744658))

(assert (= (and b!744658 res!501738) b!744660))

(assert (= (and b!744660 res!501743) b!744664))

(assert (= (and b!744664 res!501752) b!744666))

(assert (= (and b!744666 res!501745) b!744661))

(assert (= (and b!744661 res!501741) b!744655))

(assert (= (and b!744655 c!81837) b!744662))

(assert (= (and b!744655 (not c!81837)) b!744656))

(assert (= (and b!744655 res!501746) b!744657))

(assert (= (and b!744657 res!501750) b!744659))

(assert (= (and b!744659 res!501747) b!744665))

(assert (= (and b!744665 res!501739) b!744667))

(assert (= (and b!744659 (not res!501749)) b!744652))

(declare-fun m!695229 () Bool)

(assert (=> b!744654 m!695229))

(declare-fun m!695231 () Bool)

(assert (=> b!744663 m!695231))

(assert (=> b!744663 m!695231))

(declare-fun m!695233 () Bool)

(assert (=> b!744663 m!695233))

(declare-fun m!695235 () Bool)

(assert (=> b!744659 m!695235))

(declare-fun m!695237 () Bool)

(assert (=> b!744659 m!695237))

(declare-fun m!695239 () Bool)

(assert (=> start!65438 m!695239))

(declare-fun m!695241 () Bool)

(assert (=> start!65438 m!695241))

(declare-fun m!695243 () Bool)

(assert (=> b!744660 m!695243))

(declare-fun m!695245 () Bool)

(assert (=> b!744668 m!695245))

(assert (=> b!744666 m!695231))

(assert (=> b!744666 m!695231))

(declare-fun m!695247 () Bool)

(assert (=> b!744666 m!695247))

(assert (=> b!744666 m!695247))

(assert (=> b!744666 m!695231))

(declare-fun m!695249 () Bool)

(assert (=> b!744666 m!695249))

(assert (=> b!744662 m!695231))

(assert (=> b!744662 m!695231))

(declare-fun m!695251 () Bool)

(assert (=> b!744662 m!695251))

(assert (=> b!744665 m!695231))

(assert (=> b!744665 m!695231))

(declare-fun m!695253 () Bool)

(assert (=> b!744665 m!695253))

(declare-fun m!695255 () Bool)

(assert (=> b!744651 m!695255))

(declare-fun m!695257 () Bool)

(assert (=> b!744658 m!695257))

(assert (=> b!744652 m!695231))

(assert (=> b!744652 m!695231))

(declare-fun m!695259 () Bool)

(assert (=> b!744652 m!695259))

(declare-fun m!695261 () Bool)

(assert (=> b!744657 m!695261))

(assert (=> b!744657 m!695261))

(declare-fun m!695263 () Bool)

(assert (=> b!744657 m!695263))

(declare-fun m!695265 () Bool)

(assert (=> b!744657 m!695265))

(declare-fun m!695267 () Bool)

(assert (=> b!744657 m!695267))

(declare-fun m!695269 () Bool)

(assert (=> b!744657 m!695269))

(declare-fun m!695271 () Bool)

(assert (=> b!744661 m!695271))

(assert (=> b!744667 m!695231))

(assert (=> b!744667 m!695231))

(declare-fun m!695273 () Bool)

(assert (=> b!744667 m!695273))

(assert (=> b!744656 m!695231))

(assert (=> b!744656 m!695231))

(assert (=> b!744656 m!695259))

(push 1)

