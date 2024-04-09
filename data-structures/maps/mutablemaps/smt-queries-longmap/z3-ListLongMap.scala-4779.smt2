; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65754 () Bool)

(assert start!65754)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41880 0))(
  ( (array!41881 (arr!20050 (Array (_ BitVec 32) (_ BitVec 64))) (size!20471 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41880)

(declare-fun b!754675 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!420902 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7657 0))(
  ( (MissingZero!7657 (index!32995 (_ BitVec 32))) (Found!7657 (index!32996 (_ BitVec 32))) (Intermediate!7657 (undefined!8469 Bool) (index!32997 (_ BitVec 32)) (x!63928 (_ BitVec 32))) (Undefined!7657) (MissingVacant!7657 (index!32998 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41880 (_ BitVec 32)) SeekEntryResult!7657)

(assert (=> b!754675 (= e!420902 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20050 a!3186) j!159) a!3186 mask!3328) (Found!7657 j!159)))))

(declare-fun b!754676 () Bool)

(declare-fun res!510113 () Bool)

(declare-fun e!420896 () Bool)

(assert (=> b!754676 (=> (not res!510113) (not e!420896))))

(assert (=> b!754676 (= res!510113 e!420902)))

(declare-fun c!82667 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!754676 (= c!82667 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!754677 () Bool)

(declare-fun e!420897 () Bool)

(assert (=> b!754677 (= e!420897 e!420896)))

(declare-fun res!510104 () Bool)

(assert (=> b!754677 (=> (not res!510104) (not e!420896))))

(declare-fun lt!335902 () SeekEntryResult!7657)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41880 (_ BitVec 32)) SeekEntryResult!7657)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!754677 (= res!510104 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20050 a!3186) j!159) mask!3328) (select (arr!20050 a!3186) j!159) a!3186 mask!3328) lt!335902))))

(assert (=> b!754677 (= lt!335902 (Intermediate!7657 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!754678 () Bool)

(declare-fun e!420898 () Bool)

(declare-fun e!420903 () Bool)

(assert (=> b!754678 (= e!420898 e!420903)))

(declare-fun res!510120 () Bool)

(assert (=> b!754678 (=> res!510120 e!420903)))

(declare-fun lt!335900 () SeekEntryResult!7657)

(declare-fun lt!335896 () SeekEntryResult!7657)

(assert (=> b!754678 (= res!510120 (not (= lt!335900 lt!335896)))))

(assert (=> b!754678 (= lt!335900 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20050 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!754679 () Bool)

(declare-fun res!510110 () Bool)

(assert (=> b!754679 (=> (not res!510110) (not e!420896))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!754679 (= res!510110 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20050 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!754680 () Bool)

(declare-fun e!420900 () Bool)

(declare-fun lt!335905 () SeekEntryResult!7657)

(assert (=> b!754680 (= e!420900 (= lt!335905 lt!335900))))

(declare-fun b!754681 () Bool)

(declare-datatypes ((Unit!26030 0))(
  ( (Unit!26031) )
))
(declare-fun e!420905 () Unit!26030)

(declare-fun Unit!26032 () Unit!26030)

(assert (=> b!754681 (= e!420905 Unit!26032)))

(assert (=> b!754681 false))

(declare-fun b!754682 () Bool)

(assert (=> b!754682 (= e!420902 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20050 a!3186) j!159) a!3186 mask!3328) lt!335902))))

(declare-fun b!754683 () Bool)

(declare-fun e!420895 () Bool)

(assert (=> b!754683 (= e!420896 e!420895)))

(declare-fun res!510115 () Bool)

(assert (=> b!754683 (=> (not res!510115) (not e!420895))))

(declare-fun lt!335901 () SeekEntryResult!7657)

(declare-fun lt!335895 () SeekEntryResult!7657)

(assert (=> b!754683 (= res!510115 (= lt!335901 lt!335895))))

(declare-fun lt!335897 () array!41880)

(declare-fun lt!335903 () (_ BitVec 64))

(assert (=> b!754683 (= lt!335895 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335903 lt!335897 mask!3328))))

(assert (=> b!754683 (= lt!335901 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335903 mask!3328) lt!335903 lt!335897 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!754683 (= lt!335903 (select (store (arr!20050 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!754683 (= lt!335897 (array!41881 (store (arr!20050 a!3186) i!1173 k0!2102) (size!20471 a!3186)))))

(declare-fun res!510102 () Bool)

(declare-fun e!420906 () Bool)

(assert (=> start!65754 (=> (not res!510102) (not e!420906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65754 (= res!510102 (validMask!0 mask!3328))))

(assert (=> start!65754 e!420906))

(assert (=> start!65754 true))

(declare-fun array_inv!15824 (array!41880) Bool)

(assert (=> start!65754 (array_inv!15824 a!3186)))

(declare-fun b!754684 () Bool)

(declare-fun res!510103 () Bool)

(assert (=> b!754684 (=> (not res!510103) (not e!420897))))

(assert (=> b!754684 (= res!510103 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20471 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20471 a!3186))))))

(declare-fun b!754685 () Bool)

(declare-fun Unit!26033 () Unit!26030)

(assert (=> b!754685 (= e!420905 Unit!26033)))

(declare-fun b!754686 () Bool)

(declare-fun res!510111 () Bool)

(assert (=> b!754686 (=> (not res!510111) (not e!420906))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!754686 (= res!510111 (validKeyInArray!0 (select (arr!20050 a!3186) j!159)))))

(declare-fun b!754687 () Bool)

(declare-fun res!510118 () Bool)

(assert (=> b!754687 (=> (not res!510118) (not e!420897))))

(declare-datatypes ((List!14105 0))(
  ( (Nil!14102) (Cons!14101 (h!15173 (_ BitVec 64)) (t!20428 List!14105)) )
))
(declare-fun arrayNoDuplicates!0 (array!41880 (_ BitVec 32) List!14105) Bool)

(assert (=> b!754687 (= res!510118 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14102))))

(declare-fun b!754688 () Bool)

(declare-fun res!510105 () Bool)

(assert (=> b!754688 (=> (not res!510105) (not e!420906))))

(declare-fun arrayContainsKey!0 (array!41880 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!754688 (= res!510105 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!754689 () Bool)

(declare-fun res!510107 () Bool)

(assert (=> b!754689 (=> (not res!510107) (not e!420897))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41880 (_ BitVec 32)) Bool)

(assert (=> b!754689 (= res!510107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!754690 () Bool)

(declare-fun e!420901 () Bool)

(assert (=> b!754690 (= e!420903 e!420901)))

(declare-fun res!510106 () Bool)

(assert (=> b!754690 (=> res!510106 e!420901)))

(declare-fun lt!335899 () (_ BitVec 64))

(assert (=> b!754690 (= res!510106 (= lt!335899 lt!335903))))

(assert (=> b!754690 (= lt!335899 (select (store (arr!20050 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!754691 () Bool)

(declare-fun res!510117 () Bool)

(assert (=> b!754691 (=> (not res!510117) (not e!420906))))

(assert (=> b!754691 (= res!510117 (validKeyInArray!0 k0!2102))))

(declare-fun b!754692 () Bool)

(assert (=> b!754692 (= e!420895 (not e!420898))))

(declare-fun res!510108 () Bool)

(assert (=> b!754692 (=> res!510108 e!420898)))

(get-info :version)

(assert (=> b!754692 (= res!510108 (or (not ((_ is Intermediate!7657) lt!335895)) (bvslt x!1131 (x!63928 lt!335895)) (not (= x!1131 (x!63928 lt!335895))) (not (= index!1321 (index!32997 lt!335895)))))))

(declare-fun e!420899 () Bool)

(assert (=> b!754692 e!420899))

(declare-fun res!510112 () Bool)

(assert (=> b!754692 (=> (not res!510112) (not e!420899))))

(assert (=> b!754692 (= res!510112 (= lt!335905 lt!335896))))

(assert (=> b!754692 (= lt!335896 (Found!7657 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41880 (_ BitVec 32)) SeekEntryResult!7657)

(assert (=> b!754692 (= lt!335905 (seekEntryOrOpen!0 (select (arr!20050 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!754692 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335904 () Unit!26030)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41880 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26030)

(assert (=> b!754692 (= lt!335904 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!754693 () Bool)

(assert (=> b!754693 (= e!420906 e!420897)))

(declare-fun res!510116 () Bool)

(assert (=> b!754693 (=> (not res!510116) (not e!420897))))

(declare-fun lt!335906 () SeekEntryResult!7657)

(assert (=> b!754693 (= res!510116 (or (= lt!335906 (MissingZero!7657 i!1173)) (= lt!335906 (MissingVacant!7657 i!1173))))))

(assert (=> b!754693 (= lt!335906 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!754694 () Bool)

(assert (=> b!754694 (= e!420899 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20050 a!3186) j!159) a!3186 mask!3328) lt!335896))))

(declare-fun b!754695 () Bool)

(declare-fun res!510114 () Bool)

(assert (=> b!754695 (=> (not res!510114) (not e!420906))))

(assert (=> b!754695 (= res!510114 (and (= (size!20471 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20471 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20471 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!754696 () Bool)

(assert (=> b!754696 (= e!420901 true)))

(assert (=> b!754696 e!420900))

(declare-fun res!510109 () Bool)

(assert (=> b!754696 (=> (not res!510109) (not e!420900))))

(assert (=> b!754696 (= res!510109 (= lt!335899 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335898 () Unit!26030)

(assert (=> b!754696 (= lt!335898 e!420905)))

(declare-fun c!82668 () Bool)

(assert (=> b!754696 (= c!82668 (= lt!335899 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!754697 () Bool)

(declare-fun res!510119 () Bool)

(assert (=> b!754697 (=> (not res!510119) (not e!420900))))

(assert (=> b!754697 (= res!510119 (= (seekEntryOrOpen!0 lt!335903 lt!335897 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335903 lt!335897 mask!3328)))))

(assert (= (and start!65754 res!510102) b!754695))

(assert (= (and b!754695 res!510114) b!754686))

(assert (= (and b!754686 res!510111) b!754691))

(assert (= (and b!754691 res!510117) b!754688))

(assert (= (and b!754688 res!510105) b!754693))

(assert (= (and b!754693 res!510116) b!754689))

(assert (= (and b!754689 res!510107) b!754687))

(assert (= (and b!754687 res!510118) b!754684))

(assert (= (and b!754684 res!510103) b!754677))

(assert (= (and b!754677 res!510104) b!754679))

(assert (= (and b!754679 res!510110) b!754676))

(assert (= (and b!754676 c!82667) b!754682))

(assert (= (and b!754676 (not c!82667)) b!754675))

(assert (= (and b!754676 res!510113) b!754683))

(assert (= (and b!754683 res!510115) b!754692))

(assert (= (and b!754692 res!510112) b!754694))

(assert (= (and b!754692 (not res!510108)) b!754678))

(assert (= (and b!754678 (not res!510120)) b!754690))

(assert (= (and b!754690 (not res!510106)) b!754696))

(assert (= (and b!754696 c!82668) b!754681))

(assert (= (and b!754696 (not c!82668)) b!754685))

(assert (= (and b!754696 res!510109) b!754697))

(assert (= (and b!754697 res!510119) b!754680))

(declare-fun m!703133 () Bool)

(assert (=> b!754691 m!703133))

(declare-fun m!703135 () Bool)

(assert (=> b!754682 m!703135))

(assert (=> b!754682 m!703135))

(declare-fun m!703137 () Bool)

(assert (=> b!754682 m!703137))

(assert (=> b!754678 m!703135))

(assert (=> b!754678 m!703135))

(declare-fun m!703139 () Bool)

(assert (=> b!754678 m!703139))

(assert (=> b!754675 m!703135))

(assert (=> b!754675 m!703135))

(assert (=> b!754675 m!703139))

(declare-fun m!703141 () Bool)

(assert (=> b!754683 m!703141))

(declare-fun m!703143 () Bool)

(assert (=> b!754683 m!703143))

(declare-fun m!703145 () Bool)

(assert (=> b!754683 m!703145))

(declare-fun m!703147 () Bool)

(assert (=> b!754683 m!703147))

(assert (=> b!754683 m!703143))

(declare-fun m!703149 () Bool)

(assert (=> b!754683 m!703149))

(declare-fun m!703151 () Bool)

(assert (=> b!754693 m!703151))

(assert (=> b!754690 m!703145))

(declare-fun m!703153 () Bool)

(assert (=> b!754690 m!703153))

(declare-fun m!703155 () Bool)

(assert (=> start!65754 m!703155))

(declare-fun m!703157 () Bool)

(assert (=> start!65754 m!703157))

(assert (=> b!754692 m!703135))

(assert (=> b!754692 m!703135))

(declare-fun m!703159 () Bool)

(assert (=> b!754692 m!703159))

(declare-fun m!703161 () Bool)

(assert (=> b!754692 m!703161))

(declare-fun m!703163 () Bool)

(assert (=> b!754692 m!703163))

(assert (=> b!754694 m!703135))

(assert (=> b!754694 m!703135))

(declare-fun m!703165 () Bool)

(assert (=> b!754694 m!703165))

(assert (=> b!754686 m!703135))

(assert (=> b!754686 m!703135))

(declare-fun m!703167 () Bool)

(assert (=> b!754686 m!703167))

(declare-fun m!703169 () Bool)

(assert (=> b!754687 m!703169))

(declare-fun m!703171 () Bool)

(assert (=> b!754697 m!703171))

(declare-fun m!703173 () Bool)

(assert (=> b!754697 m!703173))

(declare-fun m!703175 () Bool)

(assert (=> b!754688 m!703175))

(declare-fun m!703177 () Bool)

(assert (=> b!754689 m!703177))

(assert (=> b!754677 m!703135))

(assert (=> b!754677 m!703135))

(declare-fun m!703179 () Bool)

(assert (=> b!754677 m!703179))

(assert (=> b!754677 m!703179))

(assert (=> b!754677 m!703135))

(declare-fun m!703181 () Bool)

(assert (=> b!754677 m!703181))

(declare-fun m!703183 () Bool)

(assert (=> b!754679 m!703183))

(check-sat (not b!754693) (not b!754682) (not b!754697) (not start!65754) (not b!754678) (not b!754675) (not b!754692) (not b!754677) (not b!754683) (not b!754694) (not b!754688) (not b!754689) (not b!754686) (not b!754691) (not b!754687))
(check-sat)
