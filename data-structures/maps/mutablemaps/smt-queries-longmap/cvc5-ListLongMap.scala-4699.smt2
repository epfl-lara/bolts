; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65272 () Bool)

(assert start!65272)

(declare-fun b!739794 () Bool)

(declare-fun e!413673 () Bool)

(declare-fun e!413677 () Bool)

(assert (=> b!739794 (= e!413673 e!413677)))

(declare-fun res!497559 () Bool)

(assert (=> b!739794 (=> (not res!497559) (not e!413677))))

(declare-datatypes ((SeekEntryResult!7416 0))(
  ( (MissingZero!7416 (index!32031 (_ BitVec 32))) (Found!7416 (index!32032 (_ BitVec 32))) (Intermediate!7416 (undefined!8228 Bool) (index!32033 (_ BitVec 32)) (x!63047 (_ BitVec 32))) (Undefined!7416) (MissingVacant!7416 (index!32034 (_ BitVec 32))) )
))
(declare-fun lt!328595 () SeekEntryResult!7416)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!739794 (= res!497559 (or (= lt!328595 (MissingZero!7416 i!1173)) (= lt!328595 (MissingVacant!7416 i!1173))))))

(declare-datatypes ((array!41398 0))(
  ( (array!41399 (arr!19809 (Array (_ BitVec 32) (_ BitVec 64))) (size!20230 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41398)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41398 (_ BitVec 32)) SeekEntryResult!7416)

(assert (=> b!739794 (= lt!328595 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!739795 () Bool)

(declare-fun lt!328591 () SeekEntryResult!7416)

(declare-fun lt!328600 () (_ BitVec 32))

(declare-fun e!413672 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41398 (_ BitVec 32)) SeekEntryResult!7416)

(assert (=> b!739795 (= e!413672 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328600 (select (arr!19809 a!3186) j!159) a!3186 mask!3328) lt!328591)))))

(declare-fun b!739796 () Bool)

(declare-fun res!497561 () Bool)

(assert (=> b!739796 (=> (not res!497561) (not e!413673))))

(declare-fun arrayContainsKey!0 (array!41398 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!739796 (= res!497561 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!739797 () Bool)

(declare-fun e!413676 () Bool)

(assert (=> b!739797 (= e!413676 true)))

(declare-fun lt!328601 () SeekEntryResult!7416)

(declare-fun lt!328597 () array!41398)

(declare-fun lt!328596 () (_ BitVec 64))

(assert (=> b!739797 (= lt!328601 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328600 lt!328596 lt!328597 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!413668 () Bool)

(declare-fun lt!328592 () SeekEntryResult!7416)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!739798 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41398 (_ BitVec 32)) SeekEntryResult!7416)

(assert (=> b!739798 (= e!413668 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19809 a!3186) j!159) a!3186 mask!3328) lt!328592))))

(declare-fun b!739799 () Bool)

(declare-fun res!497557 () Bool)

(assert (=> b!739799 (=> (not res!497557) (not e!413677))))

(declare-datatypes ((List!13864 0))(
  ( (Nil!13861) (Cons!13860 (h!14932 (_ BitVec 64)) (t!20187 List!13864)) )
))
(declare-fun arrayNoDuplicates!0 (array!41398 (_ BitVec 32) List!13864) Bool)

(assert (=> b!739799 (= res!497557 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13861))))

(declare-fun b!739800 () Bool)

(declare-fun e!413670 () Bool)

(assert (=> b!739800 (= e!413670 e!413668)))

(declare-fun res!497567 () Bool)

(assert (=> b!739800 (=> (not res!497567) (not e!413668))))

(assert (=> b!739800 (= res!497567 (= (seekEntryOrOpen!0 (select (arr!19809 a!3186) j!159) a!3186 mask!3328) lt!328592))))

(assert (=> b!739800 (= lt!328592 (Found!7416 j!159))))

(declare-fun b!739801 () Bool)

(declare-datatypes ((Unit!25282 0))(
  ( (Unit!25283) )
))
(declare-fun e!413674 () Unit!25282)

(declare-fun Unit!25284 () Unit!25282)

(assert (=> b!739801 (= e!413674 Unit!25284)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!328593 () SeekEntryResult!7416)

(assert (=> b!739801 (= lt!328593 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19809 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!328594 () SeekEntryResult!7416)

(assert (=> b!739801 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328600 resIntermediateIndex!5 (select (arr!19809 a!3186) j!159) a!3186 mask!3328) lt!328594)))

(declare-fun b!739802 () Bool)

(declare-fun Unit!25285 () Unit!25282)

(assert (=> b!739802 (= e!413674 Unit!25285)))

(assert (=> b!739802 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328600 (select (arr!19809 a!3186) j!159) a!3186 mask!3328) lt!328591)))

(declare-fun b!739804 () Bool)

(declare-fun res!497564 () Bool)

(declare-fun e!413669 () Bool)

(assert (=> b!739804 (=> (not res!497564) (not e!413669))))

(declare-fun e!413675 () Bool)

(assert (=> b!739804 (= res!497564 e!413675)))

(declare-fun c!81504 () Bool)

(assert (=> b!739804 (= c!81504 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!739805 () Bool)

(declare-fun res!497554 () Bool)

(assert (=> b!739805 (=> (not res!497554) (not e!413677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41398 (_ BitVec 32)) Bool)

(assert (=> b!739805 (= res!497554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!739806 () Bool)

(assert (=> b!739806 (= e!413675 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19809 a!3186) j!159) a!3186 mask!3328) (Found!7416 j!159)))))

(declare-fun b!739807 () Bool)

(declare-fun e!413678 () Bool)

(declare-fun e!413671 () Bool)

(assert (=> b!739807 (= e!413678 (not e!413671))))

(declare-fun res!497558 () Bool)

(assert (=> b!739807 (=> res!497558 e!413671)))

(declare-fun lt!328604 () SeekEntryResult!7416)

(assert (=> b!739807 (= res!497558 (or (not (is-Intermediate!7416 lt!328604)) (bvsge x!1131 (x!63047 lt!328604))))))

(assert (=> b!739807 (= lt!328594 (Found!7416 j!159))))

(assert (=> b!739807 e!413670))

(declare-fun res!497565 () Bool)

(assert (=> b!739807 (=> (not res!497565) (not e!413670))))

(assert (=> b!739807 (= res!497565 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328599 () Unit!25282)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41398 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25282)

(assert (=> b!739807 (= lt!328599 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!739808 () Bool)

(assert (=> b!739808 (= e!413677 e!413669)))

(declare-fun res!497553 () Bool)

(assert (=> b!739808 (=> (not res!497553) (not e!413669))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739808 (= res!497553 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19809 a!3186) j!159) mask!3328) (select (arr!19809 a!3186) j!159) a!3186 mask!3328) lt!328591))))

(assert (=> b!739808 (= lt!328591 (Intermediate!7416 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!739809 () Bool)

(declare-fun res!497566 () Bool)

(assert (=> b!739809 (=> (not res!497566) (not e!413673))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!739809 (= res!497566 (validKeyInArray!0 k!2102))))

(declare-fun b!739810 () Bool)

(assert (=> b!739810 (= e!413671 e!413676)))

(declare-fun res!497552 () Bool)

(assert (=> b!739810 (=> res!497552 e!413676)))

(assert (=> b!739810 (= res!497552 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328600 #b00000000000000000000000000000000) (bvsge lt!328600 (size!20230 a!3186))))))

(declare-fun lt!328602 () Unit!25282)

(assert (=> b!739810 (= lt!328602 e!413674)))

(declare-fun c!81502 () Bool)

(declare-fun lt!328598 () Bool)

(assert (=> b!739810 (= c!81502 lt!328598)))

(assert (=> b!739810 (= lt!328598 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739810 (= lt!328600 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!739811 () Bool)

(declare-fun res!497555 () Bool)

(assert (=> b!739811 (=> (not res!497555) (not e!413673))))

(assert (=> b!739811 (= res!497555 (and (= (size!20230 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20230 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20230 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!739812 () Bool)

(declare-fun res!497568 () Bool)

(assert (=> b!739812 (=> (not res!497568) (not e!413677))))

(assert (=> b!739812 (= res!497568 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20230 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20230 a!3186))))))

(declare-fun b!739813 () Bool)

(assert (=> b!739813 (= e!413669 e!413678)))

(declare-fun res!497562 () Bool)

(assert (=> b!739813 (=> (not res!497562) (not e!413678))))

(declare-fun lt!328603 () SeekEntryResult!7416)

(assert (=> b!739813 (= res!497562 (= lt!328603 lt!328604))))

(assert (=> b!739813 (= lt!328604 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328596 lt!328597 mask!3328))))

(assert (=> b!739813 (= lt!328603 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328596 mask!3328) lt!328596 lt!328597 mask!3328))))

(assert (=> b!739813 (= lt!328596 (select (store (arr!19809 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!739813 (= lt!328597 (array!41399 (store (arr!19809 a!3186) i!1173 k!2102) (size!20230 a!3186)))))

(declare-fun res!497556 () Bool)

(assert (=> start!65272 (=> (not res!497556) (not e!413673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65272 (= res!497556 (validMask!0 mask!3328))))

(assert (=> start!65272 e!413673))

(assert (=> start!65272 true))

(declare-fun array_inv!15583 (array!41398) Bool)

(assert (=> start!65272 (array_inv!15583 a!3186)))

(declare-fun b!739803 () Bool)

(declare-fun res!497563 () Bool)

(assert (=> b!739803 (=> (not res!497563) (not e!413669))))

(assert (=> b!739803 (= res!497563 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19809 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!739814 () Bool)

(assert (=> b!739814 (= e!413672 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328600 resIntermediateIndex!5 (select (arr!19809 a!3186) j!159) a!3186 mask!3328) lt!328594)))))

(declare-fun b!739815 () Bool)

(assert (=> b!739815 (= e!413675 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19809 a!3186) j!159) a!3186 mask!3328) lt!328591))))

(declare-fun b!739816 () Bool)

(declare-fun res!497560 () Bool)

(assert (=> b!739816 (=> res!497560 e!413676)))

(assert (=> b!739816 (= res!497560 e!413672)))

(declare-fun c!81503 () Bool)

(assert (=> b!739816 (= c!81503 lt!328598)))

(declare-fun b!739817 () Bool)

(declare-fun res!497551 () Bool)

(assert (=> b!739817 (=> (not res!497551) (not e!413673))))

(assert (=> b!739817 (= res!497551 (validKeyInArray!0 (select (arr!19809 a!3186) j!159)))))

(assert (= (and start!65272 res!497556) b!739811))

(assert (= (and b!739811 res!497555) b!739817))

(assert (= (and b!739817 res!497551) b!739809))

(assert (= (and b!739809 res!497566) b!739796))

(assert (= (and b!739796 res!497561) b!739794))

(assert (= (and b!739794 res!497559) b!739805))

(assert (= (and b!739805 res!497554) b!739799))

(assert (= (and b!739799 res!497557) b!739812))

(assert (= (and b!739812 res!497568) b!739808))

(assert (= (and b!739808 res!497553) b!739803))

(assert (= (and b!739803 res!497563) b!739804))

(assert (= (and b!739804 c!81504) b!739815))

(assert (= (and b!739804 (not c!81504)) b!739806))

(assert (= (and b!739804 res!497564) b!739813))

(assert (= (and b!739813 res!497562) b!739807))

(assert (= (and b!739807 res!497565) b!739800))

(assert (= (and b!739800 res!497567) b!739798))

(assert (= (and b!739807 (not res!497558)) b!739810))

(assert (= (and b!739810 c!81502) b!739802))

(assert (= (and b!739810 (not c!81502)) b!739801))

(assert (= (and b!739810 (not res!497552)) b!739816))

(assert (= (and b!739816 c!81503) b!739795))

(assert (= (and b!739816 (not c!81503)) b!739814))

(assert (= (and b!739816 (not res!497560)) b!739797))

(declare-fun m!691153 () Bool)

(assert (=> b!739807 m!691153))

(declare-fun m!691155 () Bool)

(assert (=> b!739807 m!691155))

(declare-fun m!691157 () Bool)

(assert (=> b!739805 m!691157))

(declare-fun m!691159 () Bool)

(assert (=> b!739817 m!691159))

(assert (=> b!739817 m!691159))

(declare-fun m!691161 () Bool)

(assert (=> b!739817 m!691161))

(assert (=> b!739806 m!691159))

(assert (=> b!739806 m!691159))

(declare-fun m!691163 () Bool)

(assert (=> b!739806 m!691163))

(assert (=> b!739800 m!691159))

(assert (=> b!739800 m!691159))

(declare-fun m!691165 () Bool)

(assert (=> b!739800 m!691165))

(declare-fun m!691167 () Bool)

(assert (=> b!739799 m!691167))

(assert (=> b!739814 m!691159))

(assert (=> b!739814 m!691159))

(declare-fun m!691169 () Bool)

(assert (=> b!739814 m!691169))

(declare-fun m!691171 () Bool)

(assert (=> b!739796 m!691171))

(assert (=> b!739802 m!691159))

(assert (=> b!739802 m!691159))

(declare-fun m!691173 () Bool)

(assert (=> b!739802 m!691173))

(assert (=> b!739795 m!691159))

(assert (=> b!739795 m!691159))

(assert (=> b!739795 m!691173))

(declare-fun m!691175 () Bool)

(assert (=> b!739809 m!691175))

(assert (=> b!739798 m!691159))

(assert (=> b!739798 m!691159))

(declare-fun m!691177 () Bool)

(assert (=> b!739798 m!691177))

(assert (=> b!739815 m!691159))

(assert (=> b!739815 m!691159))

(declare-fun m!691179 () Bool)

(assert (=> b!739815 m!691179))

(declare-fun m!691181 () Bool)

(assert (=> b!739810 m!691181))

(declare-fun m!691183 () Bool)

(assert (=> b!739803 m!691183))

(declare-fun m!691185 () Bool)

(assert (=> b!739797 m!691185))

(declare-fun m!691187 () Bool)

(assert (=> b!739813 m!691187))

(declare-fun m!691189 () Bool)

(assert (=> b!739813 m!691189))

(assert (=> b!739813 m!691187))

(declare-fun m!691191 () Bool)

(assert (=> b!739813 m!691191))

(declare-fun m!691193 () Bool)

(assert (=> b!739813 m!691193))

(declare-fun m!691195 () Bool)

(assert (=> b!739813 m!691195))

(assert (=> b!739801 m!691159))

(assert (=> b!739801 m!691159))

(assert (=> b!739801 m!691163))

(assert (=> b!739801 m!691159))

(assert (=> b!739801 m!691169))

(declare-fun m!691197 () Bool)

(assert (=> b!739794 m!691197))

(assert (=> b!739808 m!691159))

(assert (=> b!739808 m!691159))

(declare-fun m!691199 () Bool)

(assert (=> b!739808 m!691199))

(assert (=> b!739808 m!691199))

(assert (=> b!739808 m!691159))

(declare-fun m!691201 () Bool)

(assert (=> b!739808 m!691201))

(declare-fun m!691203 () Bool)

(assert (=> start!65272 m!691203))

(declare-fun m!691205 () Bool)

(assert (=> start!65272 m!691205))

(push 1)

