; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65340 () Bool)

(assert start!65340)

(declare-datatypes ((array!41466 0))(
  ( (array!41467 (arr!19843 (Array (_ BitVec 32) (_ BitVec 64))) (size!20264 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41466)

(declare-fun b!741874 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7450 0))(
  ( (MissingZero!7450 (index!32167 (_ BitVec 32))) (Found!7450 (index!32168 (_ BitVec 32))) (Intermediate!7450 (undefined!8262 Bool) (index!32169 (_ BitVec 32)) (x!63169 (_ BitVec 32))) (Undefined!7450) (MissingVacant!7450 (index!32170 (_ BitVec 32))) )
))
(declare-fun lt!329602 () SeekEntryResult!7450)

(declare-fun e!414670 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41466 (_ BitVec 32)) SeekEntryResult!7450)

(assert (=> b!741874 (= e!414670 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19843 a!3186) j!159) a!3186 mask!3328) lt!329602))))

(declare-fun b!741875 () Bool)

(declare-fun e!414665 () Bool)

(assert (=> b!741875 (= e!414665 (not true))))

(declare-fun e!414667 () Bool)

(assert (=> b!741875 e!414667))

(declare-fun res!499263 () Bool)

(assert (=> b!741875 (=> (not res!499263) (not e!414667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41466 (_ BitVec 32)) Bool)

(assert (=> b!741875 (= res!499263 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25380 0))(
  ( (Unit!25381) )
))
(declare-fun lt!329601 () Unit!25380)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41466 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25380)

(assert (=> b!741875 (= lt!329601 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741876 () Bool)

(declare-fun e!414668 () Bool)

(assert (=> b!741876 (= e!414667 e!414668)))

(declare-fun res!499262 () Bool)

(assert (=> b!741876 (=> (not res!499262) (not e!414668))))

(declare-fun lt!329606 () SeekEntryResult!7450)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41466 (_ BitVec 32)) SeekEntryResult!7450)

(assert (=> b!741876 (= res!499262 (= (seekEntryOrOpen!0 (select (arr!19843 a!3186) j!159) a!3186 mask!3328) lt!329606))))

(assert (=> b!741876 (= lt!329606 (Found!7450 j!159))))

(declare-fun b!741877 () Bool)

(declare-fun res!499257 () Bool)

(declare-fun e!414666 () Bool)

(assert (=> b!741877 (=> (not res!499257) (not e!414666))))

(declare-datatypes ((List!13898 0))(
  ( (Nil!13895) (Cons!13894 (h!14966 (_ BitVec 64)) (t!20221 List!13898)) )
))
(declare-fun arrayNoDuplicates!0 (array!41466 (_ BitVec 32) List!13898) Bool)

(assert (=> b!741877 (= res!499257 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13895))))

(declare-fun b!741878 () Bool)

(declare-fun res!499268 () Bool)

(declare-fun e!414669 () Bool)

(assert (=> b!741878 (=> (not res!499268) (not e!414669))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741878 (= res!499268 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!741880 () Bool)

(assert (=> b!741880 (= e!414669 e!414666)))

(declare-fun res!499264 () Bool)

(assert (=> b!741880 (=> (not res!499264) (not e!414666))))

(declare-fun lt!329603 () SeekEntryResult!7450)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!741880 (= res!499264 (or (= lt!329603 (MissingZero!7450 i!1173)) (= lt!329603 (MissingVacant!7450 i!1173))))))

(assert (=> b!741880 (= lt!329603 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!741881 () Bool)

(declare-fun e!414671 () Bool)

(assert (=> b!741881 (= e!414671 e!414665)))

(declare-fun res!499261 () Bool)

(assert (=> b!741881 (=> (not res!499261) (not e!414665))))

(declare-fun lt!329605 () array!41466)

(declare-fun lt!329604 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741881 (= res!499261 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329604 mask!3328) lt!329604 lt!329605 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329604 lt!329605 mask!3328)))))

(assert (=> b!741881 (= lt!329604 (select (store (arr!19843 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!741881 (= lt!329605 (array!41467 (store (arr!19843 a!3186) i!1173 k0!2102) (size!20264 a!3186)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!741882 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41466 (_ BitVec 32)) SeekEntryResult!7450)

(assert (=> b!741882 (= e!414670 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19843 a!3186) j!159) a!3186 mask!3328) (Found!7450 j!159)))))

(declare-fun b!741883 () Bool)

(declare-fun res!499267 () Bool)

(assert (=> b!741883 (=> (not res!499267) (not e!414669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741883 (= res!499267 (validKeyInArray!0 k0!2102))))

(declare-fun b!741884 () Bool)

(assert (=> b!741884 (= e!414666 e!414671)))

(declare-fun res!499260 () Bool)

(assert (=> b!741884 (=> (not res!499260) (not e!414671))))

(assert (=> b!741884 (= res!499260 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19843 a!3186) j!159) mask!3328) (select (arr!19843 a!3186) j!159) a!3186 mask!3328) lt!329602))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741884 (= lt!329602 (Intermediate!7450 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741885 () Bool)

(declare-fun res!499266 () Bool)

(assert (=> b!741885 (=> (not res!499266) (not e!414666))))

(assert (=> b!741885 (= res!499266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741886 () Bool)

(declare-fun res!499255 () Bool)

(assert (=> b!741886 (=> (not res!499255) (not e!414671))))

(assert (=> b!741886 (= res!499255 e!414670)))

(declare-fun c!81690 () Bool)

(assert (=> b!741886 (= c!81690 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741887 () Bool)

(assert (=> b!741887 (= e!414668 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19843 a!3186) j!159) a!3186 mask!3328) lt!329606))))

(declare-fun res!499256 () Bool)

(assert (=> start!65340 (=> (not res!499256) (not e!414669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65340 (= res!499256 (validMask!0 mask!3328))))

(assert (=> start!65340 e!414669))

(assert (=> start!65340 true))

(declare-fun array_inv!15617 (array!41466) Bool)

(assert (=> start!65340 (array_inv!15617 a!3186)))

(declare-fun b!741879 () Bool)

(declare-fun res!499269 () Bool)

(assert (=> b!741879 (=> (not res!499269) (not e!414671))))

(assert (=> b!741879 (= res!499269 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19843 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741888 () Bool)

(declare-fun res!499258 () Bool)

(assert (=> b!741888 (=> (not res!499258) (not e!414666))))

(assert (=> b!741888 (= res!499258 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20264 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20264 a!3186))))))

(declare-fun b!741889 () Bool)

(declare-fun res!499265 () Bool)

(assert (=> b!741889 (=> (not res!499265) (not e!414669))))

(assert (=> b!741889 (= res!499265 (validKeyInArray!0 (select (arr!19843 a!3186) j!159)))))

(declare-fun b!741890 () Bool)

(declare-fun res!499259 () Bool)

(assert (=> b!741890 (=> (not res!499259) (not e!414669))))

(assert (=> b!741890 (= res!499259 (and (= (size!20264 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20264 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20264 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65340 res!499256) b!741890))

(assert (= (and b!741890 res!499259) b!741889))

(assert (= (and b!741889 res!499265) b!741883))

(assert (= (and b!741883 res!499267) b!741878))

(assert (= (and b!741878 res!499268) b!741880))

(assert (= (and b!741880 res!499264) b!741885))

(assert (= (and b!741885 res!499266) b!741877))

(assert (= (and b!741877 res!499257) b!741888))

(assert (= (and b!741888 res!499258) b!741884))

(assert (= (and b!741884 res!499260) b!741879))

(assert (= (and b!741879 res!499269) b!741886))

(assert (= (and b!741886 c!81690) b!741874))

(assert (= (and b!741886 (not c!81690)) b!741882))

(assert (= (and b!741886 res!499255) b!741881))

(assert (= (and b!741881 res!499261) b!741875))

(assert (= (and b!741875 res!499263) b!741876))

(assert (= (and b!741876 res!499262) b!741887))

(declare-fun m!692891 () Bool)

(assert (=> b!741880 m!692891))

(declare-fun m!692893 () Bool)

(assert (=> start!65340 m!692893))

(declare-fun m!692895 () Bool)

(assert (=> start!65340 m!692895))

(declare-fun m!692897 () Bool)

(assert (=> b!741876 m!692897))

(assert (=> b!741876 m!692897))

(declare-fun m!692899 () Bool)

(assert (=> b!741876 m!692899))

(declare-fun m!692901 () Bool)

(assert (=> b!741879 m!692901))

(declare-fun m!692903 () Bool)

(assert (=> b!741885 m!692903))

(declare-fun m!692905 () Bool)

(assert (=> b!741877 m!692905))

(assert (=> b!741887 m!692897))

(assert (=> b!741887 m!692897))

(declare-fun m!692907 () Bool)

(assert (=> b!741887 m!692907))

(declare-fun m!692909 () Bool)

(assert (=> b!741883 m!692909))

(assert (=> b!741882 m!692897))

(assert (=> b!741882 m!692897))

(declare-fun m!692911 () Bool)

(assert (=> b!741882 m!692911))

(declare-fun m!692913 () Bool)

(assert (=> b!741875 m!692913))

(declare-fun m!692915 () Bool)

(assert (=> b!741875 m!692915))

(assert (=> b!741889 m!692897))

(assert (=> b!741889 m!692897))

(declare-fun m!692917 () Bool)

(assert (=> b!741889 m!692917))

(declare-fun m!692919 () Bool)

(assert (=> b!741881 m!692919))

(declare-fun m!692921 () Bool)

(assert (=> b!741881 m!692921))

(declare-fun m!692923 () Bool)

(assert (=> b!741881 m!692923))

(declare-fun m!692925 () Bool)

(assert (=> b!741881 m!692925))

(declare-fun m!692927 () Bool)

(assert (=> b!741881 m!692927))

(assert (=> b!741881 m!692919))

(assert (=> b!741874 m!692897))

(assert (=> b!741874 m!692897))

(declare-fun m!692929 () Bool)

(assert (=> b!741874 m!692929))

(declare-fun m!692931 () Bool)

(assert (=> b!741878 m!692931))

(assert (=> b!741884 m!692897))

(assert (=> b!741884 m!692897))

(declare-fun m!692933 () Bool)

(assert (=> b!741884 m!692933))

(assert (=> b!741884 m!692933))

(assert (=> b!741884 m!692897))

(declare-fun m!692935 () Bool)

(assert (=> b!741884 m!692935))

(check-sat (not b!741884) (not b!741878) (not b!741877) (not b!741883) (not b!741876) (not b!741889) (not b!741875) (not b!741881) (not b!741887) (not b!741874) (not b!741885) (not start!65340) (not b!741880) (not b!741882))
(check-sat)
