; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65160 () Bool)

(assert start!65160)

(declare-fun b!735762 () Bool)

(declare-fun res!494536 () Bool)

(declare-fun e!411656 () Bool)

(assert (=> b!735762 (=> (not res!494536) (not e!411656))))

(declare-datatypes ((array!41286 0))(
  ( (array!41287 (arr!19753 (Array (_ BitVec 32) (_ BitVec 64))) (size!20174 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41286)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!735762 (= res!494536 (validKeyInArray!0 (select (arr!19753 a!3186) j!159)))))

(declare-fun b!735763 () Bool)

(declare-fun e!411658 () Bool)

(declare-fun e!411660 () Bool)

(assert (=> b!735763 (= e!411658 e!411660)))

(declare-fun res!494529 () Bool)

(assert (=> b!735763 (=> (not res!494529) (not e!411660))))

(declare-datatypes ((SeekEntryResult!7360 0))(
  ( (MissingZero!7360 (index!31807 (_ BitVec 32))) (Found!7360 (index!31808 (_ BitVec 32))) (Intermediate!7360 (undefined!8172 Bool) (index!31809 (_ BitVec 32)) (x!62839 (_ BitVec 32))) (Undefined!7360) (MissingVacant!7360 (index!31810 (_ BitVec 32))) )
))
(declare-fun lt!326252 () SeekEntryResult!7360)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41286 (_ BitVec 32)) SeekEntryResult!7360)

(assert (=> b!735763 (= res!494529 (= (seekEntryOrOpen!0 (select (arr!19753 a!3186) j!159) a!3186 mask!3328) lt!326252))))

(assert (=> b!735763 (= lt!326252 (Found!7360 j!159))))

(declare-fun b!735764 () Bool)

(declare-fun e!411657 () Bool)

(assert (=> b!735764 (= e!411656 e!411657)))

(declare-fun res!494541 () Bool)

(assert (=> b!735764 (=> (not res!494541) (not e!411657))))

(declare-fun lt!326243 () SeekEntryResult!7360)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!735764 (= res!494541 (or (= lt!326243 (MissingZero!7360 i!1173)) (= lt!326243 (MissingVacant!7360 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!735764 (= lt!326243 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!735765 () Bool)

(declare-fun res!494544 () Bool)

(assert (=> b!735765 (=> (not res!494544) (not e!411657))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!735765 (= res!494544 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20174 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20174 a!3186))))))

(declare-fun lt!326248 () SeekEntryResult!7360)

(declare-fun e!411654 () Bool)

(declare-fun b!735766 () Bool)

(declare-fun lt!326246 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41286 (_ BitVec 32)) SeekEntryResult!7360)

(assert (=> b!735766 (= e!411654 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326246 resIntermediateIndex!5 (select (arr!19753 a!3186) j!159) a!3186 mask!3328) lt!326248)))))

(declare-fun lt!326240 () SeekEntryResult!7360)

(declare-fun b!735767 () Bool)

(declare-fun e!411655 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41286 (_ BitVec 32)) SeekEntryResult!7360)

(assert (=> b!735767 (= e!411655 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19753 a!3186) j!159) a!3186 mask!3328) lt!326240))))

(declare-fun b!735768 () Bool)

(assert (=> b!735768 (= e!411655 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19753 a!3186) j!159) a!3186 mask!3328) (Found!7360 j!159)))))

(declare-fun b!735769 () Bool)

(declare-fun res!494530 () Bool)

(assert (=> b!735769 (=> (not res!494530) (not e!411656))))

(assert (=> b!735769 (= res!494530 (validKeyInArray!0 k0!2102))))

(declare-fun b!735770 () Bool)

(declare-fun e!411653 () Bool)

(assert (=> b!735770 (= e!411653 true)))

(declare-fun lt!326249 () SeekEntryResult!7360)

(declare-fun lt!326247 () array!41286)

(declare-fun lt!326242 () (_ BitVec 64))

(assert (=> b!735770 (= lt!326249 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326246 lt!326242 lt!326247 mask!3328))))

(declare-fun b!735771 () Bool)

(declare-fun e!411652 () Bool)

(assert (=> b!735771 (= e!411652 e!411653)))

(declare-fun res!494540 () Bool)

(assert (=> b!735771 (=> res!494540 e!411653)))

(assert (=> b!735771 (= res!494540 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326246 #b00000000000000000000000000000000) (bvsge lt!326246 (size!20174 a!3186))))))

(declare-datatypes ((Unit!25058 0))(
  ( (Unit!25059) )
))
(declare-fun lt!326239 () Unit!25058)

(declare-fun e!411661 () Unit!25058)

(assert (=> b!735771 (= lt!326239 e!411661)))

(declare-fun c!80999 () Bool)

(declare-fun lt!326251 () Bool)

(assert (=> b!735771 (= c!80999 lt!326251)))

(assert (=> b!735771 (= lt!326251 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735771 (= lt!326246 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!735772 () Bool)

(declare-fun Unit!25060 () Unit!25058)

(assert (=> b!735772 (= e!411661 Unit!25060)))

(declare-fun lt!326245 () SeekEntryResult!7360)

(assert (=> b!735772 (= lt!326245 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19753 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!735772 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326246 resIntermediateIndex!5 (select (arr!19753 a!3186) j!159) a!3186 mask!3328) lt!326248)))

(declare-fun b!735774 () Bool)

(declare-fun res!494531 () Bool)

(declare-fun e!411662 () Bool)

(assert (=> b!735774 (=> (not res!494531) (not e!411662))))

(assert (=> b!735774 (= res!494531 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19753 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!735775 () Bool)

(declare-fun res!494539 () Bool)

(assert (=> b!735775 (=> (not res!494539) (not e!411657))))

(declare-datatypes ((List!13808 0))(
  ( (Nil!13805) (Cons!13804 (h!14876 (_ BitVec 64)) (t!20131 List!13808)) )
))
(declare-fun arrayNoDuplicates!0 (array!41286 (_ BitVec 32) List!13808) Bool)

(assert (=> b!735775 (= res!494539 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13805))))

(declare-fun b!735776 () Bool)

(declare-fun Unit!25061 () Unit!25058)

(assert (=> b!735776 (= e!411661 Unit!25061)))

(assert (=> b!735776 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326246 (select (arr!19753 a!3186) j!159) a!3186 mask!3328) lt!326240)))

(declare-fun b!735777 () Bool)

(declare-fun res!494543 () Bool)

(assert (=> b!735777 (=> res!494543 e!411653)))

(assert (=> b!735777 (= res!494543 e!411654)))

(declare-fun c!81000 () Bool)

(assert (=> b!735777 (= c!81000 lt!326251)))

(declare-fun b!735778 () Bool)

(assert (=> b!735778 (= e!411654 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326246 (select (arr!19753 a!3186) j!159) a!3186 mask!3328) lt!326240)))))

(declare-fun b!735779 () Bool)

(assert (=> b!735779 (= e!411657 e!411662)))

(declare-fun res!494533 () Bool)

(assert (=> b!735779 (=> (not res!494533) (not e!411662))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735779 (= res!494533 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19753 a!3186) j!159) mask!3328) (select (arr!19753 a!3186) j!159) a!3186 mask!3328) lt!326240))))

(assert (=> b!735779 (= lt!326240 (Intermediate!7360 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!735780 () Bool)

(declare-fun res!494527 () Bool)

(assert (=> b!735780 (=> (not res!494527) (not e!411662))))

(assert (=> b!735780 (= res!494527 e!411655)))

(declare-fun c!80998 () Bool)

(assert (=> b!735780 (= c!80998 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!735781 () Bool)

(declare-fun res!494528 () Bool)

(assert (=> b!735781 (=> (not res!494528) (not e!411656))))

(assert (=> b!735781 (= res!494528 (and (= (size!20174 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20174 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20174 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!735782 () Bool)

(declare-fun e!411659 () Bool)

(assert (=> b!735782 (= e!411659 (not e!411652))))

(declare-fun res!494537 () Bool)

(assert (=> b!735782 (=> res!494537 e!411652)))

(declare-fun lt!326250 () SeekEntryResult!7360)

(get-info :version)

(assert (=> b!735782 (= res!494537 (or (not ((_ is Intermediate!7360) lt!326250)) (bvsge x!1131 (x!62839 lt!326250))))))

(assert (=> b!735782 (= lt!326248 (Found!7360 j!159))))

(assert (=> b!735782 e!411658))

(declare-fun res!494534 () Bool)

(assert (=> b!735782 (=> (not res!494534) (not e!411658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41286 (_ BitVec 32)) Bool)

(assert (=> b!735782 (= res!494534 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326241 () Unit!25058)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41286 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25058)

(assert (=> b!735782 (= lt!326241 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!735783 () Bool)

(assert (=> b!735783 (= e!411660 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19753 a!3186) j!159) a!3186 mask!3328) lt!326252))))

(declare-fun b!735784 () Bool)

(declare-fun res!494535 () Bool)

(assert (=> b!735784 (=> (not res!494535) (not e!411657))))

(assert (=> b!735784 (= res!494535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!735785 () Bool)

(assert (=> b!735785 (= e!411662 e!411659)))

(declare-fun res!494542 () Bool)

(assert (=> b!735785 (=> (not res!494542) (not e!411659))))

(declare-fun lt!326244 () SeekEntryResult!7360)

(assert (=> b!735785 (= res!494542 (= lt!326244 lt!326250))))

(assert (=> b!735785 (= lt!326250 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326242 lt!326247 mask!3328))))

(assert (=> b!735785 (= lt!326244 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326242 mask!3328) lt!326242 lt!326247 mask!3328))))

(assert (=> b!735785 (= lt!326242 (select (store (arr!19753 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!735785 (= lt!326247 (array!41287 (store (arr!19753 a!3186) i!1173 k0!2102) (size!20174 a!3186)))))

(declare-fun b!735773 () Bool)

(declare-fun res!494532 () Bool)

(assert (=> b!735773 (=> (not res!494532) (not e!411656))))

(declare-fun arrayContainsKey!0 (array!41286 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!735773 (= res!494532 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!494538 () Bool)

(assert (=> start!65160 (=> (not res!494538) (not e!411656))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65160 (= res!494538 (validMask!0 mask!3328))))

(assert (=> start!65160 e!411656))

(assert (=> start!65160 true))

(declare-fun array_inv!15527 (array!41286) Bool)

(assert (=> start!65160 (array_inv!15527 a!3186)))

(assert (= (and start!65160 res!494538) b!735781))

(assert (= (and b!735781 res!494528) b!735762))

(assert (= (and b!735762 res!494536) b!735769))

(assert (= (and b!735769 res!494530) b!735773))

(assert (= (and b!735773 res!494532) b!735764))

(assert (= (and b!735764 res!494541) b!735784))

(assert (= (and b!735784 res!494535) b!735775))

(assert (= (and b!735775 res!494539) b!735765))

(assert (= (and b!735765 res!494544) b!735779))

(assert (= (and b!735779 res!494533) b!735774))

(assert (= (and b!735774 res!494531) b!735780))

(assert (= (and b!735780 c!80998) b!735767))

(assert (= (and b!735780 (not c!80998)) b!735768))

(assert (= (and b!735780 res!494527) b!735785))

(assert (= (and b!735785 res!494542) b!735782))

(assert (= (and b!735782 res!494534) b!735763))

(assert (= (and b!735763 res!494529) b!735783))

(assert (= (and b!735782 (not res!494537)) b!735771))

(assert (= (and b!735771 c!80999) b!735776))

(assert (= (and b!735771 (not c!80999)) b!735772))

(assert (= (and b!735771 (not res!494540)) b!735777))

(assert (= (and b!735777 c!81000) b!735778))

(assert (= (and b!735777 (not c!81000)) b!735766))

(assert (= (and b!735777 (not res!494543)) b!735770))

(declare-fun m!688129 () Bool)

(assert (=> b!735779 m!688129))

(assert (=> b!735779 m!688129))

(declare-fun m!688131 () Bool)

(assert (=> b!735779 m!688131))

(assert (=> b!735779 m!688131))

(assert (=> b!735779 m!688129))

(declare-fun m!688133 () Bool)

(assert (=> b!735779 m!688133))

(assert (=> b!735763 m!688129))

(assert (=> b!735763 m!688129))

(declare-fun m!688135 () Bool)

(assert (=> b!735763 m!688135))

(assert (=> b!735768 m!688129))

(assert (=> b!735768 m!688129))

(declare-fun m!688137 () Bool)

(assert (=> b!735768 m!688137))

(declare-fun m!688139 () Bool)

(assert (=> b!735771 m!688139))

(assert (=> b!735767 m!688129))

(assert (=> b!735767 m!688129))

(declare-fun m!688141 () Bool)

(assert (=> b!735767 m!688141))

(assert (=> b!735766 m!688129))

(assert (=> b!735766 m!688129))

(declare-fun m!688143 () Bool)

(assert (=> b!735766 m!688143))

(assert (=> b!735772 m!688129))

(assert (=> b!735772 m!688129))

(assert (=> b!735772 m!688137))

(assert (=> b!735772 m!688129))

(assert (=> b!735772 m!688143))

(declare-fun m!688145 () Bool)

(assert (=> b!735769 m!688145))

(declare-fun m!688147 () Bool)

(assert (=> b!735770 m!688147))

(declare-fun m!688149 () Bool)

(assert (=> b!735764 m!688149))

(declare-fun m!688151 () Bool)

(assert (=> b!735775 m!688151))

(assert (=> b!735783 m!688129))

(assert (=> b!735783 m!688129))

(declare-fun m!688153 () Bool)

(assert (=> b!735783 m!688153))

(assert (=> b!735762 m!688129))

(assert (=> b!735762 m!688129))

(declare-fun m!688155 () Bool)

(assert (=> b!735762 m!688155))

(declare-fun m!688157 () Bool)

(assert (=> b!735773 m!688157))

(declare-fun m!688159 () Bool)

(assert (=> b!735782 m!688159))

(declare-fun m!688161 () Bool)

(assert (=> b!735782 m!688161))

(assert (=> b!735778 m!688129))

(assert (=> b!735778 m!688129))

(declare-fun m!688163 () Bool)

(assert (=> b!735778 m!688163))

(declare-fun m!688165 () Bool)

(assert (=> b!735785 m!688165))

(declare-fun m!688167 () Bool)

(assert (=> b!735785 m!688167))

(assert (=> b!735785 m!688165))

(declare-fun m!688169 () Bool)

(assert (=> b!735785 m!688169))

(declare-fun m!688171 () Bool)

(assert (=> b!735785 m!688171))

(declare-fun m!688173 () Bool)

(assert (=> b!735785 m!688173))

(declare-fun m!688175 () Bool)

(assert (=> start!65160 m!688175))

(declare-fun m!688177 () Bool)

(assert (=> start!65160 m!688177))

(declare-fun m!688179 () Bool)

(assert (=> b!735774 m!688179))

(declare-fun m!688181 () Bool)

(assert (=> b!735784 m!688181))

(assert (=> b!735776 m!688129))

(assert (=> b!735776 m!688129))

(assert (=> b!735776 m!688163))

(check-sat (not b!735771) (not b!735769) (not b!735772) (not b!735778) (not b!735767) (not b!735784) (not b!735775) (not b!735776) (not b!735773) (not b!735770) (not b!735762) (not b!735782) (not start!65160) (not b!735763) (not b!735766) (not b!735764) (not b!735779) (not b!735783) (not b!735768) (not b!735785))
(check-sat)
