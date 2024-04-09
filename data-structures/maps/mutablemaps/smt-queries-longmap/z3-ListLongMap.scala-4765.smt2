; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65670 () Bool)

(assert start!65670)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!751778 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!419392 () Bool)

(declare-datatypes ((array!41796 0))(
  ( (array!41797 (arr!20008 (Array (_ BitVec 32) (_ BitVec 64))) (size!20429 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41796)

(declare-datatypes ((SeekEntryResult!7615 0))(
  ( (MissingZero!7615 (index!32827 (_ BitVec 32))) (Found!7615 (index!32828 (_ BitVec 32))) (Intermediate!7615 (undefined!8427 Bool) (index!32829 (_ BitVec 32)) (x!63774 (_ BitVec 32))) (Undefined!7615) (MissingVacant!7615 (index!32830 (_ BitVec 32))) )
))
(declare-fun lt!334394 () SeekEntryResult!7615)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41796 (_ BitVec 32)) SeekEntryResult!7615)

(assert (=> b!751778 (= e!419392 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20008 a!3186) j!159) a!3186 mask!3328) lt!334394))))

(declare-fun b!751779 () Bool)

(declare-fun e!419391 () Bool)

(declare-fun e!419390 () Bool)

(assert (=> b!751779 (= e!419391 (not e!419390))))

(declare-fun res!507722 () Bool)

(assert (=> b!751779 (=> res!507722 e!419390)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!334390 () SeekEntryResult!7615)

(get-info :version)

(assert (=> b!751779 (= res!507722 (or (not ((_ is Intermediate!7615) lt!334390)) (bvslt x!1131 (x!63774 lt!334390)) (not (= x!1131 (x!63774 lt!334390))) (not (= index!1321 (index!32829 lt!334390)))))))

(assert (=> b!751779 e!419392))

(declare-fun res!507709 () Bool)

(assert (=> b!751779 (=> (not res!507709) (not e!419392))))

(declare-fun lt!334389 () SeekEntryResult!7615)

(assert (=> b!751779 (= res!507709 (= lt!334389 lt!334394))))

(assert (=> b!751779 (= lt!334394 (Found!7615 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41796 (_ BitVec 32)) SeekEntryResult!7615)

(assert (=> b!751779 (= lt!334389 (seekEntryOrOpen!0 (select (arr!20008 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41796 (_ BitVec 32)) Bool)

(assert (=> b!751779 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25862 0))(
  ( (Unit!25863) )
))
(declare-fun lt!334392 () Unit!25862)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41796 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25862)

(assert (=> b!751779 (= lt!334392 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!751780 () Bool)

(declare-fun res!507713 () Bool)

(declare-fun e!419385 () Bool)

(assert (=> b!751780 (=> (not res!507713) (not e!419385))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41796 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!751780 (= res!507713 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!751781 () Bool)

(declare-fun e!419384 () Bool)

(declare-fun e!419386 () Bool)

(assert (=> b!751781 (= e!419384 e!419386)))

(declare-fun res!507708 () Bool)

(assert (=> b!751781 (=> (not res!507708) (not e!419386))))

(declare-fun lt!334387 () SeekEntryResult!7615)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41796 (_ BitVec 32)) SeekEntryResult!7615)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!751781 (= res!507708 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20008 a!3186) j!159) mask!3328) (select (arr!20008 a!3186) j!159) a!3186 mask!3328) lt!334387))))

(assert (=> b!751781 (= lt!334387 (Intermediate!7615 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!751782 () Bool)

(declare-fun res!507715 () Bool)

(assert (=> b!751782 (=> (not res!507715) (not e!419385))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!751782 (= res!507715 (and (= (size!20429 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20429 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20429 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!751783 () Bool)

(declare-fun e!419383 () Bool)

(assert (=> b!751783 (= e!419383 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20008 a!3186) j!159) a!3186 mask!3328) lt!334387))))

(declare-fun b!751784 () Bool)

(declare-fun res!507718 () Bool)

(assert (=> b!751784 (=> (not res!507718) (not e!419384))))

(declare-datatypes ((List!14063 0))(
  ( (Nil!14060) (Cons!14059 (h!15131 (_ BitVec 64)) (t!20386 List!14063)) )
))
(declare-fun arrayNoDuplicates!0 (array!41796 (_ BitVec 32) List!14063) Bool)

(assert (=> b!751784 (= res!507718 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14060))))

(declare-fun res!507724 () Bool)

(assert (=> start!65670 (=> (not res!507724) (not e!419385))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65670 (= res!507724 (validMask!0 mask!3328))))

(assert (=> start!65670 e!419385))

(assert (=> start!65670 true))

(declare-fun array_inv!15782 (array!41796) Bool)

(assert (=> start!65670 (array_inv!15782 a!3186)))

(declare-fun b!751777 () Bool)

(declare-fun e!419387 () Bool)

(assert (=> b!751777 (= e!419387 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun e!419393 () Bool)

(assert (=> b!751777 e!419393))

(declare-fun res!507716 () Bool)

(assert (=> b!751777 (=> (not res!507716) (not e!419393))))

(declare-fun lt!334388 () (_ BitVec 64))

(assert (=> b!751777 (= res!507716 (= lt!334388 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334386 () Unit!25862)

(declare-fun e!419389 () Unit!25862)

(assert (=> b!751777 (= lt!334386 e!419389)))

(declare-fun c!82415 () Bool)

(assert (=> b!751777 (= c!82415 (= lt!334388 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!751785 () Bool)

(declare-fun lt!334393 () SeekEntryResult!7615)

(assert (=> b!751785 (= e!419393 (= lt!334389 lt!334393))))

(declare-fun b!751786 () Bool)

(assert (=> b!751786 (= e!419383 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20008 a!3186) j!159) a!3186 mask!3328) (Found!7615 j!159)))))

(declare-fun b!751787 () Bool)

(declare-fun res!507726 () Bool)

(assert (=> b!751787 (=> (not res!507726) (not e!419386))))

(assert (=> b!751787 (= res!507726 e!419383)))

(declare-fun c!82416 () Bool)

(assert (=> b!751787 (= c!82416 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!751788 () Bool)

(assert (=> b!751788 (= e!419385 e!419384)))

(declare-fun res!507720 () Bool)

(assert (=> b!751788 (=> (not res!507720) (not e!419384))))

(declare-fun lt!334384 () SeekEntryResult!7615)

(assert (=> b!751788 (= res!507720 (or (= lt!334384 (MissingZero!7615 i!1173)) (= lt!334384 (MissingVacant!7615 i!1173))))))

(assert (=> b!751788 (= lt!334384 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!751789 () Bool)

(declare-fun Unit!25864 () Unit!25862)

(assert (=> b!751789 (= e!419389 Unit!25864)))

(assert (=> b!751789 false))

(declare-fun b!751790 () Bool)

(declare-fun e!419394 () Bool)

(assert (=> b!751790 (= e!419394 e!419387)))

(declare-fun res!507710 () Bool)

(assert (=> b!751790 (=> res!507710 e!419387)))

(declare-fun lt!334383 () (_ BitVec 64))

(assert (=> b!751790 (= res!507710 (= lt!334388 lt!334383))))

(assert (=> b!751790 (= lt!334388 (select (store (arr!20008 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!751791 () Bool)

(declare-fun res!507721 () Bool)

(assert (=> b!751791 (=> (not res!507721) (not e!419386))))

(assert (=> b!751791 (= res!507721 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20008 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!751792 () Bool)

(declare-fun res!507725 () Bool)

(assert (=> b!751792 (=> (not res!507725) (not e!419385))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!751792 (= res!507725 (validKeyInArray!0 k0!2102))))

(declare-fun b!751793 () Bool)

(assert (=> b!751793 (= e!419390 e!419394)))

(declare-fun res!507714 () Bool)

(assert (=> b!751793 (=> res!507714 e!419394)))

(assert (=> b!751793 (= res!507714 (not (= lt!334393 lt!334394)))))

(assert (=> b!751793 (= lt!334393 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20008 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!751794 () Bool)

(assert (=> b!751794 (= e!419386 e!419391)))

(declare-fun res!507712 () Bool)

(assert (=> b!751794 (=> (not res!507712) (not e!419391))))

(declare-fun lt!334385 () SeekEntryResult!7615)

(assert (=> b!751794 (= res!507712 (= lt!334385 lt!334390))))

(declare-fun lt!334391 () array!41796)

(assert (=> b!751794 (= lt!334390 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334383 lt!334391 mask!3328))))

(assert (=> b!751794 (= lt!334385 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334383 mask!3328) lt!334383 lt!334391 mask!3328))))

(assert (=> b!751794 (= lt!334383 (select (store (arr!20008 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!751794 (= lt!334391 (array!41797 (store (arr!20008 a!3186) i!1173 k0!2102) (size!20429 a!3186)))))

(declare-fun b!751795 () Bool)

(declare-fun res!507723 () Bool)

(assert (=> b!751795 (=> (not res!507723) (not e!419393))))

(assert (=> b!751795 (= res!507723 (= (seekEntryOrOpen!0 lt!334383 lt!334391 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334383 lt!334391 mask!3328)))))

(declare-fun b!751796 () Bool)

(declare-fun res!507719 () Bool)

(assert (=> b!751796 (=> (not res!507719) (not e!419384))))

(assert (=> b!751796 (= res!507719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!751797 () Bool)

(declare-fun Unit!25865 () Unit!25862)

(assert (=> b!751797 (= e!419389 Unit!25865)))

(declare-fun b!751798 () Bool)

(declare-fun res!507717 () Bool)

(assert (=> b!751798 (=> (not res!507717) (not e!419384))))

(assert (=> b!751798 (= res!507717 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20429 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20429 a!3186))))))

(declare-fun b!751799 () Bool)

(declare-fun res!507711 () Bool)

(assert (=> b!751799 (=> (not res!507711) (not e!419385))))

(assert (=> b!751799 (= res!507711 (validKeyInArray!0 (select (arr!20008 a!3186) j!159)))))

(assert (= (and start!65670 res!507724) b!751782))

(assert (= (and b!751782 res!507715) b!751799))

(assert (= (and b!751799 res!507711) b!751792))

(assert (= (and b!751792 res!507725) b!751780))

(assert (= (and b!751780 res!507713) b!751788))

(assert (= (and b!751788 res!507720) b!751796))

(assert (= (and b!751796 res!507719) b!751784))

(assert (= (and b!751784 res!507718) b!751798))

(assert (= (and b!751798 res!507717) b!751781))

(assert (= (and b!751781 res!507708) b!751791))

(assert (= (and b!751791 res!507721) b!751787))

(assert (= (and b!751787 c!82416) b!751783))

(assert (= (and b!751787 (not c!82416)) b!751786))

(assert (= (and b!751787 res!507726) b!751794))

(assert (= (and b!751794 res!507712) b!751779))

(assert (= (and b!751779 res!507709) b!751778))

(assert (= (and b!751779 (not res!507722)) b!751793))

(assert (= (and b!751793 (not res!507714)) b!751790))

(assert (= (and b!751790 (not res!507710)) b!751777))

(assert (= (and b!751777 c!82415) b!751789))

(assert (= (and b!751777 (not c!82415)) b!751797))

(assert (= (and b!751777 res!507716) b!751795))

(assert (= (and b!751795 res!507723) b!751785))

(declare-fun m!700949 () Bool)

(assert (=> b!751783 m!700949))

(assert (=> b!751783 m!700949))

(declare-fun m!700951 () Bool)

(assert (=> b!751783 m!700951))

(declare-fun m!700953 () Bool)

(assert (=> b!751790 m!700953))

(declare-fun m!700955 () Bool)

(assert (=> b!751790 m!700955))

(declare-fun m!700957 () Bool)

(assert (=> b!751796 m!700957))

(declare-fun m!700959 () Bool)

(assert (=> b!751780 m!700959))

(assert (=> b!751779 m!700949))

(assert (=> b!751779 m!700949))

(declare-fun m!700961 () Bool)

(assert (=> b!751779 m!700961))

(declare-fun m!700963 () Bool)

(assert (=> b!751779 m!700963))

(declare-fun m!700965 () Bool)

(assert (=> b!751779 m!700965))

(declare-fun m!700967 () Bool)

(assert (=> b!751792 m!700967))

(assert (=> b!751794 m!700953))

(declare-fun m!700969 () Bool)

(assert (=> b!751794 m!700969))

(declare-fun m!700971 () Bool)

(assert (=> b!751794 m!700971))

(declare-fun m!700973 () Bool)

(assert (=> b!751794 m!700973))

(assert (=> b!751794 m!700969))

(declare-fun m!700975 () Bool)

(assert (=> b!751794 m!700975))

(assert (=> b!751799 m!700949))

(assert (=> b!751799 m!700949))

(declare-fun m!700977 () Bool)

(assert (=> b!751799 m!700977))

(declare-fun m!700979 () Bool)

(assert (=> b!751791 m!700979))

(declare-fun m!700981 () Bool)

(assert (=> b!751788 m!700981))

(assert (=> b!751786 m!700949))

(assert (=> b!751786 m!700949))

(declare-fun m!700983 () Bool)

(assert (=> b!751786 m!700983))

(declare-fun m!700985 () Bool)

(assert (=> b!751784 m!700985))

(assert (=> b!751781 m!700949))

(assert (=> b!751781 m!700949))

(declare-fun m!700987 () Bool)

(assert (=> b!751781 m!700987))

(assert (=> b!751781 m!700987))

(assert (=> b!751781 m!700949))

(declare-fun m!700989 () Bool)

(assert (=> b!751781 m!700989))

(assert (=> b!751778 m!700949))

(assert (=> b!751778 m!700949))

(declare-fun m!700991 () Bool)

(assert (=> b!751778 m!700991))

(declare-fun m!700993 () Bool)

(assert (=> b!751795 m!700993))

(declare-fun m!700995 () Bool)

(assert (=> b!751795 m!700995))

(declare-fun m!700997 () Bool)

(assert (=> start!65670 m!700997))

(declare-fun m!700999 () Bool)

(assert (=> start!65670 m!700999))

(assert (=> b!751793 m!700949))

(assert (=> b!751793 m!700949))

(assert (=> b!751793 m!700983))

(check-sat (not b!751792) (not b!751788) (not b!751780) (not b!751786) (not b!751796) (not b!751799) (not b!751783) (not b!751778) (not b!751795) (not b!751779) (not b!751794) (not b!751784) (not b!751781) (not b!751793) (not start!65670))
(check-sat)
