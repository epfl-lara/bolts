; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65226 () Bool)

(assert start!65226)

(declare-fun b!738138 () Bool)

(declare-fun e!412847 () Bool)

(declare-fun e!412846 () Bool)

(assert (=> b!738138 (= e!412847 (not e!412846))))

(declare-fun res!496319 () Bool)

(assert (=> b!738138 (=> res!496319 e!412846)))

(declare-datatypes ((SeekEntryResult!7393 0))(
  ( (MissingZero!7393 (index!31939 (_ BitVec 32))) (Found!7393 (index!31940 (_ BitVec 32))) (Intermediate!7393 (undefined!8205 Bool) (index!31941 (_ BitVec 32)) (x!62960 (_ BitVec 32))) (Undefined!7393) (MissingVacant!7393 (index!31942 (_ BitVec 32))) )
))
(declare-fun lt!327629 () SeekEntryResult!7393)

(declare-fun x!1131 () (_ BitVec 32))

(get-info :version)

(assert (=> b!738138 (= res!496319 (or (not ((_ is Intermediate!7393) lt!327629)) (bvsge x!1131 (x!62960 lt!327629))))))

(declare-fun lt!327627 () SeekEntryResult!7393)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!738138 (= lt!327627 (Found!7393 j!159))))

(declare-fun e!412851 () Bool)

(assert (=> b!738138 e!412851))

(declare-fun res!496322 () Bool)

(assert (=> b!738138 (=> (not res!496322) (not e!412851))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41352 0))(
  ( (array!41353 (arr!19786 (Array (_ BitVec 32) (_ BitVec 64))) (size!20207 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41352)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41352 (_ BitVec 32)) Bool)

(assert (=> b!738138 (= res!496322 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25190 0))(
  ( (Unit!25191) )
))
(declare-fun lt!327636 () Unit!25190)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41352 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25190)

(assert (=> b!738138 (= lt!327636 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!738139 () Bool)

(declare-fun res!496311 () Bool)

(declare-fun e!412841 () Bool)

(assert (=> b!738139 (=> (not res!496311) (not e!412841))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!738139 (= res!496311 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19786 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!496323 () Bool)

(declare-fun e!412840 () Bool)

(assert (=> start!65226 (=> (not res!496323) (not e!412840))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65226 (= res!496323 (validMask!0 mask!3328))))

(assert (=> start!65226 e!412840))

(assert (=> start!65226 true))

(declare-fun array_inv!15560 (array!41352) Bool)

(assert (=> start!65226 (array_inv!15560 a!3186)))

(declare-fun b!738140 () Bool)

(declare-fun res!496314 () Bool)

(declare-fun e!412844 () Bool)

(assert (=> b!738140 (=> (not res!496314) (not e!412844))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!738140 (= res!496314 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20207 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20207 a!3186))))))

(declare-fun b!738141 () Bool)

(declare-fun res!496315 () Bool)

(assert (=> b!738141 (=> (not res!496315) (not e!412844))))

(declare-datatypes ((List!13841 0))(
  ( (Nil!13838) (Cons!13837 (h!14909 (_ BitVec 64)) (t!20164 List!13841)) )
))
(declare-fun arrayNoDuplicates!0 (array!41352 (_ BitVec 32) List!13841) Bool)

(assert (=> b!738141 (= res!496315 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13838))))

(declare-fun b!738142 () Bool)

(declare-fun e!412843 () Bool)

(assert (=> b!738142 (= e!412846 e!412843)))

(declare-fun res!496318 () Bool)

(assert (=> b!738142 (=> res!496318 e!412843)))

(declare-fun lt!327632 () (_ BitVec 32))

(assert (=> b!738142 (= res!496318 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327632 #b00000000000000000000000000000000) (bvsge lt!327632 (size!20207 a!3186))))))

(declare-fun lt!327633 () Unit!25190)

(declare-fun e!412848 () Unit!25190)

(assert (=> b!738142 (= lt!327633 e!412848)))

(declare-fun c!81296 () Bool)

(declare-fun lt!327630 () Bool)

(assert (=> b!738142 (= c!81296 lt!327630)))

(assert (=> b!738142 (= lt!327630 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738142 (= lt!327632 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun lt!327637 () SeekEntryResult!7393)

(declare-fun e!412845 () Bool)

(declare-fun b!738143 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41352 (_ BitVec 32)) SeekEntryResult!7393)

(assert (=> b!738143 (= e!412845 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19786 a!3186) j!159) a!3186 mask!3328) lt!327637))))

(declare-fun b!738144 () Bool)

(declare-fun res!496310 () Bool)

(assert (=> b!738144 (=> (not res!496310) (not e!412844))))

(assert (=> b!738144 (= res!496310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!738145 () Bool)

(declare-fun res!496326 () Bool)

(assert (=> b!738145 (=> res!496326 e!412843)))

(declare-fun e!412842 () Bool)

(assert (=> b!738145 (= res!496326 e!412842)))

(declare-fun c!81297 () Bool)

(assert (=> b!738145 (= c!81297 lt!327630)))

(declare-fun b!738146 () Bool)

(declare-fun res!496309 () Bool)

(assert (=> b!738146 (=> (not res!496309) (not e!412840))))

(assert (=> b!738146 (= res!496309 (and (= (size!20207 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20207 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20207 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!738147 () Bool)

(assert (=> b!738147 (= e!412842 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327632 resIntermediateIndex!5 (select (arr!19786 a!3186) j!159) a!3186 mask!3328) lt!327627)))))

(declare-fun b!738148 () Bool)

(assert (=> b!738148 (= e!412844 e!412841)))

(declare-fun res!496316 () Bool)

(assert (=> b!738148 (=> (not res!496316) (not e!412841))))

(declare-fun lt!327626 () SeekEntryResult!7393)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41352 (_ BitVec 32)) SeekEntryResult!7393)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738148 (= res!496316 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19786 a!3186) j!159) mask!3328) (select (arr!19786 a!3186) j!159) a!3186 mask!3328) lt!327626))))

(assert (=> b!738148 (= lt!327626 (Intermediate!7393 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!738149 () Bool)

(declare-fun res!496325 () Bool)

(assert (=> b!738149 (=> (not res!496325) (not e!412840))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!738149 (= res!496325 (validKeyInArray!0 (select (arr!19786 a!3186) j!159)))))

(declare-fun e!412850 () Bool)

(declare-fun b!738150 () Bool)

(assert (=> b!738150 (= e!412850 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19786 a!3186) j!159) a!3186 mask!3328) lt!327626))))

(declare-fun b!738151 () Bool)

(assert (=> b!738151 (= e!412841 e!412847)))

(declare-fun res!496313 () Bool)

(assert (=> b!738151 (=> (not res!496313) (not e!412847))))

(declare-fun lt!327628 () SeekEntryResult!7393)

(assert (=> b!738151 (= res!496313 (= lt!327628 lt!327629))))

(declare-fun lt!327634 () array!41352)

(declare-fun lt!327631 () (_ BitVec 64))

(assert (=> b!738151 (= lt!327629 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327631 lt!327634 mask!3328))))

(assert (=> b!738151 (= lt!327628 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327631 mask!3328) lt!327631 lt!327634 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!738151 (= lt!327631 (select (store (arr!19786 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!738151 (= lt!327634 (array!41353 (store (arr!19786 a!3186) i!1173 k0!2102) (size!20207 a!3186)))))

(declare-fun b!738152 () Bool)

(declare-fun res!496324 () Bool)

(assert (=> b!738152 (=> (not res!496324) (not e!412840))))

(declare-fun arrayContainsKey!0 (array!41352 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!738152 (= res!496324 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!738153 () Bool)

(assert (=> b!738153 (= e!412842 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327632 (select (arr!19786 a!3186) j!159) a!3186 mask!3328) lt!327626)))))

(declare-fun b!738154 () Bool)

(declare-fun res!496312 () Bool)

(assert (=> b!738154 (=> (not res!496312) (not e!412840))))

(assert (=> b!738154 (= res!496312 (validKeyInArray!0 k0!2102))))

(declare-fun b!738155 () Bool)

(assert (=> b!738155 (= e!412840 e!412844)))

(declare-fun res!496320 () Bool)

(assert (=> b!738155 (=> (not res!496320) (not e!412844))))

(declare-fun lt!327638 () SeekEntryResult!7393)

(assert (=> b!738155 (= res!496320 (or (= lt!327638 (MissingZero!7393 i!1173)) (= lt!327638 (MissingVacant!7393 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41352 (_ BitVec 32)) SeekEntryResult!7393)

(assert (=> b!738155 (= lt!327638 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!738156 () Bool)

(assert (=> b!738156 (= e!412851 e!412845)))

(declare-fun res!496321 () Bool)

(assert (=> b!738156 (=> (not res!496321) (not e!412845))))

(assert (=> b!738156 (= res!496321 (= (seekEntryOrOpen!0 (select (arr!19786 a!3186) j!159) a!3186 mask!3328) lt!327637))))

(assert (=> b!738156 (= lt!327637 (Found!7393 j!159))))

(declare-fun b!738157 () Bool)

(assert (=> b!738157 (= e!412850 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19786 a!3186) j!159) a!3186 mask!3328) (Found!7393 j!159)))))

(declare-fun b!738158 () Bool)

(declare-fun Unit!25192 () Unit!25190)

(assert (=> b!738158 (= e!412848 Unit!25192)))

(declare-fun lt!327635 () SeekEntryResult!7393)

(assert (=> b!738158 (= lt!327635 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19786 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!738158 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327632 resIntermediateIndex!5 (select (arr!19786 a!3186) j!159) a!3186 mask!3328) lt!327627)))

(declare-fun b!738159 () Bool)

(declare-fun res!496317 () Bool)

(assert (=> b!738159 (=> (not res!496317) (not e!412841))))

(assert (=> b!738159 (= res!496317 e!412850)))

(declare-fun c!81295 () Bool)

(assert (=> b!738159 (= c!81295 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!738160 () Bool)

(declare-fun Unit!25193 () Unit!25190)

(assert (=> b!738160 (= e!412848 Unit!25193)))

(assert (=> b!738160 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327632 (select (arr!19786 a!3186) j!159) a!3186 mask!3328) lt!327626)))

(declare-fun b!738161 () Bool)

(assert (=> b!738161 (= e!412843 true)))

(declare-fun lt!327625 () SeekEntryResult!7393)

(assert (=> b!738161 (= lt!327625 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327632 lt!327631 lt!327634 mask!3328))))

(assert (= (and start!65226 res!496323) b!738146))

(assert (= (and b!738146 res!496309) b!738149))

(assert (= (and b!738149 res!496325) b!738154))

(assert (= (and b!738154 res!496312) b!738152))

(assert (= (and b!738152 res!496324) b!738155))

(assert (= (and b!738155 res!496320) b!738144))

(assert (= (and b!738144 res!496310) b!738141))

(assert (= (and b!738141 res!496315) b!738140))

(assert (= (and b!738140 res!496314) b!738148))

(assert (= (and b!738148 res!496316) b!738139))

(assert (= (and b!738139 res!496311) b!738159))

(assert (= (and b!738159 c!81295) b!738150))

(assert (= (and b!738159 (not c!81295)) b!738157))

(assert (= (and b!738159 res!496317) b!738151))

(assert (= (and b!738151 res!496313) b!738138))

(assert (= (and b!738138 res!496322) b!738156))

(assert (= (and b!738156 res!496321) b!738143))

(assert (= (and b!738138 (not res!496319)) b!738142))

(assert (= (and b!738142 c!81296) b!738160))

(assert (= (and b!738142 (not c!81296)) b!738158))

(assert (= (and b!738142 (not res!496318)) b!738145))

(assert (= (and b!738145 c!81297) b!738153))

(assert (= (and b!738145 (not c!81297)) b!738147))

(assert (= (and b!738145 (not res!496326)) b!738161))

(declare-fun m!689911 () Bool)

(assert (=> b!738144 m!689911))

(declare-fun m!689913 () Bool)

(assert (=> b!738148 m!689913))

(assert (=> b!738148 m!689913))

(declare-fun m!689915 () Bool)

(assert (=> b!738148 m!689915))

(assert (=> b!738148 m!689915))

(assert (=> b!738148 m!689913))

(declare-fun m!689917 () Bool)

(assert (=> b!738148 m!689917))

(declare-fun m!689919 () Bool)

(assert (=> b!738139 m!689919))

(declare-fun m!689921 () Bool)

(assert (=> b!738142 m!689921))

(assert (=> b!738149 m!689913))

(assert (=> b!738149 m!689913))

(declare-fun m!689923 () Bool)

(assert (=> b!738149 m!689923))

(assert (=> b!738157 m!689913))

(assert (=> b!738157 m!689913))

(declare-fun m!689925 () Bool)

(assert (=> b!738157 m!689925))

(assert (=> b!738160 m!689913))

(assert (=> b!738160 m!689913))

(declare-fun m!689927 () Bool)

(assert (=> b!738160 m!689927))

(declare-fun m!689929 () Bool)

(assert (=> b!738151 m!689929))

(declare-fun m!689931 () Bool)

(assert (=> b!738151 m!689931))

(declare-fun m!689933 () Bool)

(assert (=> b!738151 m!689933))

(declare-fun m!689935 () Bool)

(assert (=> b!738151 m!689935))

(assert (=> b!738151 m!689931))

(declare-fun m!689937 () Bool)

(assert (=> b!738151 m!689937))

(assert (=> b!738147 m!689913))

(assert (=> b!738147 m!689913))

(declare-fun m!689939 () Bool)

(assert (=> b!738147 m!689939))

(declare-fun m!689941 () Bool)

(assert (=> b!738161 m!689941))

(declare-fun m!689943 () Bool)

(assert (=> b!738138 m!689943))

(declare-fun m!689945 () Bool)

(assert (=> b!738138 m!689945))

(assert (=> b!738153 m!689913))

(assert (=> b!738153 m!689913))

(assert (=> b!738153 m!689927))

(declare-fun m!689947 () Bool)

(assert (=> b!738152 m!689947))

(declare-fun m!689949 () Bool)

(assert (=> b!738155 m!689949))

(assert (=> b!738150 m!689913))

(assert (=> b!738150 m!689913))

(declare-fun m!689951 () Bool)

(assert (=> b!738150 m!689951))

(assert (=> b!738156 m!689913))

(assert (=> b!738156 m!689913))

(declare-fun m!689953 () Bool)

(assert (=> b!738156 m!689953))

(assert (=> b!738143 m!689913))

(assert (=> b!738143 m!689913))

(declare-fun m!689955 () Bool)

(assert (=> b!738143 m!689955))

(declare-fun m!689957 () Bool)

(assert (=> b!738154 m!689957))

(declare-fun m!689959 () Bool)

(assert (=> start!65226 m!689959))

(declare-fun m!689961 () Bool)

(assert (=> start!65226 m!689961))

(assert (=> b!738158 m!689913))

(assert (=> b!738158 m!689913))

(assert (=> b!738158 m!689925))

(assert (=> b!738158 m!689913))

(assert (=> b!738158 m!689939))

(declare-fun m!689963 () Bool)

(assert (=> b!738141 m!689963))

(check-sat (not b!738161) (not b!738143) (not b!738147) (not b!738157) (not b!738141) (not b!738153) (not b!738156) (not b!738149) (not b!738142) (not b!738154) (not b!738138) (not b!738152) (not b!738155) (not b!738158) (not b!738151) (not b!738150) (not b!738144) (not start!65226) (not b!738160) (not b!738148))
(check-sat)
