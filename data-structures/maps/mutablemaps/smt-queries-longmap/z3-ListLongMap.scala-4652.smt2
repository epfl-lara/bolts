; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64704 () Bool)

(assert start!64704)

(declare-fun b!729150 () Bool)

(declare-fun res!489712 () Bool)

(declare-fun e!408141 () Bool)

(assert (=> b!729150 (=> (not res!489712) (not e!408141))))

(declare-datatypes ((array!41106 0))(
  ( (array!41107 (arr!19669 (Array (_ BitVec 32) (_ BitVec 64))) (size!20090 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41106)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!729150 (= res!489712 (and (= (size!20090 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20090 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20090 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!729151 () Bool)

(declare-fun res!489711 () Bool)

(declare-fun e!408143 () Bool)

(assert (=> b!729151 (=> (not res!489711) (not e!408143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41106 (_ BitVec 32)) Bool)

(assert (=> b!729151 (= res!489711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!729152 () Bool)

(declare-fun e!408137 () Bool)

(declare-fun e!408138 () Bool)

(assert (=> b!729152 (= e!408137 e!408138)))

(declare-fun res!489721 () Bool)

(assert (=> b!729152 (=> (not res!489721) (not e!408138))))

(declare-datatypes ((SeekEntryResult!7276 0))(
  ( (MissingZero!7276 (index!31471 (_ BitVec 32))) (Found!7276 (index!31472 (_ BitVec 32))) (Intermediate!7276 (undefined!8088 Bool) (index!31473 (_ BitVec 32)) (x!62483 (_ BitVec 32))) (Undefined!7276) (MissingVacant!7276 (index!31474 (_ BitVec 32))) )
))
(declare-fun lt!323046 () SeekEntryResult!7276)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41106 (_ BitVec 32)) SeekEntryResult!7276)

(assert (=> b!729152 (= res!489721 (= (seekEntryOrOpen!0 (select (arr!19669 a!3186) j!159) a!3186 mask!3328) lt!323046))))

(assert (=> b!729152 (= lt!323046 (Found!7276 j!159))))

(declare-fun lt!323045 () SeekEntryResult!7276)

(declare-fun e!408142 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!729153 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41106 (_ BitVec 32)) SeekEntryResult!7276)

(assert (=> b!729153 (= e!408142 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19669 a!3186) j!159) a!3186 mask!3328) lt!323045))))

(declare-fun b!729154 () Bool)

(declare-fun res!489719 () Bool)

(assert (=> b!729154 (=> (not res!489719) (not e!408143))))

(declare-datatypes ((List!13724 0))(
  ( (Nil!13721) (Cons!13720 (h!14780 (_ BitVec 64)) (t!20047 List!13724)) )
))
(declare-fun arrayNoDuplicates!0 (array!41106 (_ BitVec 32) List!13724) Bool)

(assert (=> b!729154 (= res!489719 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13721))))

(declare-fun b!729155 () Bool)

(declare-fun e!408136 () Bool)

(declare-fun e!408140 () Bool)

(assert (=> b!729155 (= e!408136 e!408140)))

(declare-fun res!489718 () Bool)

(assert (=> b!729155 (=> (not res!489718) (not e!408140))))

(declare-fun lt!323047 () SeekEntryResult!7276)

(declare-fun lt!323044 () SeekEntryResult!7276)

(assert (=> b!729155 (= res!489718 (= lt!323047 lt!323044))))

(declare-fun lt!323049 () (_ BitVec 64))

(declare-fun lt!323050 () array!41106)

(assert (=> b!729155 (= lt!323044 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323049 lt!323050 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729155 (= lt!323047 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323049 mask!3328) lt!323049 lt!323050 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!729155 (= lt!323049 (select (store (arr!19669 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!729155 (= lt!323050 (array!41107 (store (arr!19669 a!3186) i!1173 k0!2102) (size!20090 a!3186)))))

(declare-fun b!729156 () Bool)

(declare-fun e!408139 () Bool)

(assert (=> b!729156 (= e!408139 true)))

(declare-fun lt!323051 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729156 (= lt!323051 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun res!489720 () Bool)

(assert (=> start!64704 (=> (not res!489720) (not e!408141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64704 (= res!489720 (validMask!0 mask!3328))))

(assert (=> start!64704 e!408141))

(assert (=> start!64704 true))

(declare-fun array_inv!15443 (array!41106) Bool)

(assert (=> start!64704 (array_inv!15443 a!3186)))

(declare-fun b!729157 () Bool)

(declare-fun res!489714 () Bool)

(assert (=> b!729157 (=> (not res!489714) (not e!408143))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!729157 (= res!489714 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20090 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20090 a!3186))))))

(declare-fun b!729158 () Bool)

(declare-fun res!489722 () Bool)

(assert (=> b!729158 (=> (not res!489722) (not e!408136))))

(assert (=> b!729158 (= res!489722 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19669 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!729159 () Bool)

(declare-fun res!489715 () Bool)

(assert (=> b!729159 (=> (not res!489715) (not e!408141))))

(declare-fun arrayContainsKey!0 (array!41106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729159 (= res!489715 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!729160 () Bool)

(assert (=> b!729160 (= e!408143 e!408136)))

(declare-fun res!489713 () Bool)

(assert (=> b!729160 (=> (not res!489713) (not e!408136))))

(assert (=> b!729160 (= res!489713 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19669 a!3186) j!159) mask!3328) (select (arr!19669 a!3186) j!159) a!3186 mask!3328) lt!323045))))

(assert (=> b!729160 (= lt!323045 (Intermediate!7276 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729161 () Bool)

(assert (=> b!729161 (= e!408140 (not e!408139))))

(declare-fun res!489726 () Bool)

(assert (=> b!729161 (=> res!489726 e!408139)))

(get-info :version)

(assert (=> b!729161 (= res!489726 (or (not ((_ is Intermediate!7276) lt!323044)) (bvsge x!1131 (x!62483 lt!323044))))))

(assert (=> b!729161 e!408137))

(declare-fun res!489724 () Bool)

(assert (=> b!729161 (=> (not res!489724) (not e!408137))))

(assert (=> b!729161 (= res!489724 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24870 0))(
  ( (Unit!24871) )
))
(declare-fun lt!323043 () Unit!24870)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41106 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24870)

(assert (=> b!729161 (= lt!323043 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729162 () Bool)

(assert (=> b!729162 (= e!408141 e!408143)))

(declare-fun res!489723 () Bool)

(assert (=> b!729162 (=> (not res!489723) (not e!408143))))

(declare-fun lt!323048 () SeekEntryResult!7276)

(assert (=> b!729162 (= res!489723 (or (= lt!323048 (MissingZero!7276 i!1173)) (= lt!323048 (MissingVacant!7276 i!1173))))))

(assert (=> b!729162 (= lt!323048 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!729163 () Bool)

(declare-fun res!489716 () Bool)

(assert (=> b!729163 (=> (not res!489716) (not e!408136))))

(assert (=> b!729163 (= res!489716 e!408142)))

(declare-fun c!80094 () Bool)

(assert (=> b!729163 (= c!80094 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!729164 () Bool)

(declare-fun res!489717 () Bool)

(assert (=> b!729164 (=> (not res!489717) (not e!408141))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729164 (= res!489717 (validKeyInArray!0 k0!2102))))

(declare-fun b!729165 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41106 (_ BitVec 32)) SeekEntryResult!7276)

(assert (=> b!729165 (= e!408138 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19669 a!3186) j!159) a!3186 mask!3328) lt!323046))))

(declare-fun b!729166 () Bool)

(assert (=> b!729166 (= e!408142 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19669 a!3186) j!159) a!3186 mask!3328) (Found!7276 j!159)))))

(declare-fun b!729167 () Bool)

(declare-fun res!489725 () Bool)

(assert (=> b!729167 (=> (not res!489725) (not e!408141))))

(assert (=> b!729167 (= res!489725 (validKeyInArray!0 (select (arr!19669 a!3186) j!159)))))

(assert (= (and start!64704 res!489720) b!729150))

(assert (= (and b!729150 res!489712) b!729167))

(assert (= (and b!729167 res!489725) b!729164))

(assert (= (and b!729164 res!489717) b!729159))

(assert (= (and b!729159 res!489715) b!729162))

(assert (= (and b!729162 res!489723) b!729151))

(assert (= (and b!729151 res!489711) b!729154))

(assert (= (and b!729154 res!489719) b!729157))

(assert (= (and b!729157 res!489714) b!729160))

(assert (= (and b!729160 res!489713) b!729158))

(assert (= (and b!729158 res!489722) b!729163))

(assert (= (and b!729163 c!80094) b!729153))

(assert (= (and b!729163 (not c!80094)) b!729166))

(assert (= (and b!729163 res!489716) b!729155))

(assert (= (and b!729155 res!489718) b!729161))

(assert (= (and b!729161 res!489724) b!729152))

(assert (= (and b!729152 res!489721) b!729165))

(assert (= (and b!729161 (not res!489726)) b!729156))

(declare-fun m!682909 () Bool)

(assert (=> b!729153 m!682909))

(assert (=> b!729153 m!682909))

(declare-fun m!682911 () Bool)

(assert (=> b!729153 m!682911))

(assert (=> b!729165 m!682909))

(assert (=> b!729165 m!682909))

(declare-fun m!682913 () Bool)

(assert (=> b!729165 m!682913))

(declare-fun m!682915 () Bool)

(assert (=> b!729151 m!682915))

(declare-fun m!682917 () Bool)

(assert (=> b!729156 m!682917))

(declare-fun m!682919 () Bool)

(assert (=> b!729154 m!682919))

(declare-fun m!682921 () Bool)

(assert (=> b!729161 m!682921))

(declare-fun m!682923 () Bool)

(assert (=> b!729161 m!682923))

(declare-fun m!682925 () Bool)

(assert (=> b!729158 m!682925))

(declare-fun m!682927 () Bool)

(assert (=> b!729155 m!682927))

(declare-fun m!682929 () Bool)

(assert (=> b!729155 m!682929))

(declare-fun m!682931 () Bool)

(assert (=> b!729155 m!682931))

(declare-fun m!682933 () Bool)

(assert (=> b!729155 m!682933))

(declare-fun m!682935 () Bool)

(assert (=> b!729155 m!682935))

(assert (=> b!729155 m!682931))

(declare-fun m!682937 () Bool)

(assert (=> b!729164 m!682937))

(declare-fun m!682939 () Bool)

(assert (=> b!729159 m!682939))

(assert (=> b!729166 m!682909))

(assert (=> b!729166 m!682909))

(declare-fun m!682941 () Bool)

(assert (=> b!729166 m!682941))

(declare-fun m!682943 () Bool)

(assert (=> start!64704 m!682943))

(declare-fun m!682945 () Bool)

(assert (=> start!64704 m!682945))

(assert (=> b!729167 m!682909))

(assert (=> b!729167 m!682909))

(declare-fun m!682947 () Bool)

(assert (=> b!729167 m!682947))

(assert (=> b!729152 m!682909))

(assert (=> b!729152 m!682909))

(declare-fun m!682949 () Bool)

(assert (=> b!729152 m!682949))

(declare-fun m!682951 () Bool)

(assert (=> b!729162 m!682951))

(assert (=> b!729160 m!682909))

(assert (=> b!729160 m!682909))

(declare-fun m!682953 () Bool)

(assert (=> b!729160 m!682953))

(assert (=> b!729160 m!682953))

(assert (=> b!729160 m!682909))

(declare-fun m!682955 () Bool)

(assert (=> b!729160 m!682955))

(check-sat (not start!64704) (not b!729151) (not b!729159) (not b!729156) (not b!729161) (not b!729162) (not b!729154) (not b!729166) (not b!729155) (not b!729165) (not b!729153) (not b!729164) (not b!729167) (not b!729160) (not b!729152))
(check-sat)
