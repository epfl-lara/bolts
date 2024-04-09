; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66936 () Bool)

(assert start!66936)

(declare-fun b!772127 () Bool)

(declare-fun e!429865 () Bool)

(declare-fun e!429859 () Bool)

(assert (=> b!772127 (= e!429865 e!429859)))

(declare-fun res!522416 () Bool)

(assert (=> b!772127 (=> (not res!522416) (not e!429859))))

(declare-datatypes ((array!42384 0))(
  ( (array!42385 (arr!20287 (Array (_ BitVec 32) (_ BitVec 64))) (size!20708 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42384)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7894 0))(
  ( (MissingZero!7894 (index!33943 (_ BitVec 32))) (Found!7894 (index!33944 (_ BitVec 32))) (Intermediate!7894 (undefined!8706 Bool) (index!33945 (_ BitVec 32)) (x!64902 (_ BitVec 32))) (Undefined!7894) (MissingVacant!7894 (index!33946 (_ BitVec 32))) )
))
(declare-fun lt!343796 () SeekEntryResult!7894)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42384 (_ BitVec 32)) SeekEntryResult!7894)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772127 (= res!522416 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20287 a!3186) j!159) mask!3328) (select (arr!20287 a!3186) j!159) a!3186 mask!3328) lt!343796))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!772127 (= lt!343796 (Intermediate!7894 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!772128 () Bool)

(declare-fun res!522412 () Bool)

(assert (=> b!772128 (=> (not res!522412) (not e!429859))))

(declare-fun e!429857 () Bool)

(assert (=> b!772128 (= res!522412 e!429857)))

(declare-fun c!85260 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!772128 (= c!85260 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!772129 () Bool)

(declare-fun res!522406 () Bool)

(assert (=> b!772129 (=> (not res!522406) (not e!429859))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!772129 (= res!522406 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20287 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772130 () Bool)

(declare-fun e!429864 () Bool)

(declare-fun e!429863 () Bool)

(assert (=> b!772130 (= e!429864 e!429863)))

(declare-fun res!522417 () Bool)

(assert (=> b!772130 (=> (not res!522417) (not e!429863))))

(declare-fun lt!343795 () SeekEntryResult!7894)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42384 (_ BitVec 32)) SeekEntryResult!7894)

(assert (=> b!772130 (= res!522417 (= (seekEntryOrOpen!0 (select (arr!20287 a!3186) j!159) a!3186 mask!3328) lt!343795))))

(assert (=> b!772130 (= lt!343795 (Found!7894 j!159))))

(declare-fun b!772131 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42384 (_ BitVec 32)) SeekEntryResult!7894)

(assert (=> b!772131 (= e!429863 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20287 a!3186) j!159) a!3186 mask!3328) lt!343795))))

(declare-fun e!429858 () Bool)

(declare-fun lt!343800 () (_ BitVec 32))

(declare-fun b!772132 () Bool)

(assert (=> b!772132 (= e!429858 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (and (bvsge lt!343800 #b00000000000000000000000000000000) (bvslt lt!343800 (size!20708 a!3186)))))))

(declare-datatypes ((Unit!26612 0))(
  ( (Unit!26613) )
))
(declare-fun lt!343797 () Unit!26612)

(declare-fun e!429861 () Unit!26612)

(assert (=> b!772132 (= lt!343797 e!429861)))

(declare-fun c!85259 () Bool)

(assert (=> b!772132 (= c!85259 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772132 (= lt!343800 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!772133 () Bool)

(declare-fun res!522409 () Bool)

(declare-fun e!429862 () Bool)

(assert (=> b!772133 (=> (not res!522409) (not e!429862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!772133 (= res!522409 (validKeyInArray!0 (select (arr!20287 a!3186) j!159)))))

(declare-fun b!772134 () Bool)

(declare-fun res!522410 () Bool)

(assert (=> b!772134 (=> (not res!522410) (not e!429862))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42384 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!772134 (= res!522410 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!522411 () Bool)

(assert (=> start!66936 (=> (not res!522411) (not e!429862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66936 (= res!522411 (validMask!0 mask!3328))))

(assert (=> start!66936 e!429862))

(assert (=> start!66936 true))

(declare-fun array_inv!16061 (array!42384) Bool)

(assert (=> start!66936 (array_inv!16061 a!3186)))

(declare-fun b!772135 () Bool)

(assert (=> b!772135 (= e!429862 e!429865)))

(declare-fun res!522405 () Bool)

(assert (=> b!772135 (=> (not res!522405) (not e!429865))))

(declare-fun lt!343804 () SeekEntryResult!7894)

(assert (=> b!772135 (= res!522405 (or (= lt!343804 (MissingZero!7894 i!1173)) (= lt!343804 (MissingVacant!7894 i!1173))))))

(assert (=> b!772135 (= lt!343804 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!772136 () Bool)

(assert (=> b!772136 (= e!429857 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20287 a!3186) j!159) a!3186 mask!3328) (Found!7894 j!159)))))

(declare-fun b!772137 () Bool)

(declare-fun e!429860 () Bool)

(assert (=> b!772137 (= e!429859 e!429860)))

(declare-fun res!522413 () Bool)

(assert (=> b!772137 (=> (not res!522413) (not e!429860))))

(declare-fun lt!343801 () SeekEntryResult!7894)

(declare-fun lt!343803 () SeekEntryResult!7894)

(assert (=> b!772137 (= res!522413 (= lt!343801 lt!343803))))

(declare-fun lt!343802 () (_ BitVec 64))

(declare-fun lt!343794 () array!42384)

(assert (=> b!772137 (= lt!343803 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343802 lt!343794 mask!3328))))

(assert (=> b!772137 (= lt!343801 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343802 mask!3328) lt!343802 lt!343794 mask!3328))))

(assert (=> b!772137 (= lt!343802 (select (store (arr!20287 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!772137 (= lt!343794 (array!42385 (store (arr!20287 a!3186) i!1173 k0!2102) (size!20708 a!3186)))))

(declare-fun b!772138 () Bool)

(declare-fun res!522407 () Bool)

(assert (=> b!772138 (=> (not res!522407) (not e!429862))))

(assert (=> b!772138 (= res!522407 (and (= (size!20708 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20708 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20708 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!772139 () Bool)

(assert (=> b!772139 (= e!429860 (not e!429858))))

(declare-fun res!522415 () Bool)

(assert (=> b!772139 (=> res!522415 e!429858)))

(get-info :version)

(assert (=> b!772139 (= res!522415 (or (not ((_ is Intermediate!7894) lt!343803)) (bvsge x!1131 (x!64902 lt!343803))))))

(assert (=> b!772139 e!429864))

(declare-fun res!522408 () Bool)

(assert (=> b!772139 (=> (not res!522408) (not e!429864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42384 (_ BitVec 32)) Bool)

(assert (=> b!772139 (= res!522408 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343799 () Unit!26612)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42384 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26612)

(assert (=> b!772139 (= lt!343799 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!772140 () Bool)

(declare-fun res!522404 () Bool)

(assert (=> b!772140 (=> (not res!522404) (not e!429862))))

(assert (=> b!772140 (= res!522404 (validKeyInArray!0 k0!2102))))

(declare-fun b!772141 () Bool)

(assert (=> b!772141 (= e!429857 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20287 a!3186) j!159) a!3186 mask!3328) lt!343796))))

(declare-fun b!772142 () Bool)

(declare-fun res!522414 () Bool)

(assert (=> b!772142 (=> (not res!522414) (not e!429865))))

(declare-datatypes ((List!14342 0))(
  ( (Nil!14339) (Cons!14338 (h!15440 (_ BitVec 64)) (t!20665 List!14342)) )
))
(declare-fun arrayNoDuplicates!0 (array!42384 (_ BitVec 32) List!14342) Bool)

(assert (=> b!772142 (= res!522414 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14339))))

(declare-fun b!772143 () Bool)

(declare-fun Unit!26614 () Unit!26612)

(assert (=> b!772143 (= e!429861 Unit!26614)))

(assert (=> b!772143 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343800 (select (arr!20287 a!3186) j!159) a!3186 mask!3328) lt!343796)))

(declare-fun b!772144 () Bool)

(declare-fun res!522418 () Bool)

(assert (=> b!772144 (=> (not res!522418) (not e!429865))))

(assert (=> b!772144 (= res!522418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!772145 () Bool)

(declare-fun Unit!26615 () Unit!26612)

(assert (=> b!772145 (= e!429861 Unit!26615)))

(declare-fun lt!343798 () SeekEntryResult!7894)

(assert (=> b!772145 (= lt!343798 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20287 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!772145 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343800 resIntermediateIndex!5 (select (arr!20287 a!3186) j!159) a!3186 mask!3328) (Found!7894 j!159))))

(declare-fun b!772146 () Bool)

(declare-fun res!522403 () Bool)

(assert (=> b!772146 (=> (not res!522403) (not e!429865))))

(assert (=> b!772146 (= res!522403 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20708 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20708 a!3186))))))

(assert (= (and start!66936 res!522411) b!772138))

(assert (= (and b!772138 res!522407) b!772133))

(assert (= (and b!772133 res!522409) b!772140))

(assert (= (and b!772140 res!522404) b!772134))

(assert (= (and b!772134 res!522410) b!772135))

(assert (= (and b!772135 res!522405) b!772144))

(assert (= (and b!772144 res!522418) b!772142))

(assert (= (and b!772142 res!522414) b!772146))

(assert (= (and b!772146 res!522403) b!772127))

(assert (= (and b!772127 res!522416) b!772129))

(assert (= (and b!772129 res!522406) b!772128))

(assert (= (and b!772128 c!85260) b!772141))

(assert (= (and b!772128 (not c!85260)) b!772136))

(assert (= (and b!772128 res!522412) b!772137))

(assert (= (and b!772137 res!522413) b!772139))

(assert (= (and b!772139 res!522408) b!772130))

(assert (= (and b!772130 res!522417) b!772131))

(assert (= (and b!772139 (not res!522415)) b!772132))

(assert (= (and b!772132 c!85259) b!772143))

(assert (= (and b!772132 (not c!85259)) b!772145))

(declare-fun m!717167 () Bool)

(assert (=> b!772132 m!717167))

(declare-fun m!717169 () Bool)

(assert (=> b!772139 m!717169))

(declare-fun m!717171 () Bool)

(assert (=> b!772139 m!717171))

(declare-fun m!717173 () Bool)

(assert (=> b!772143 m!717173))

(assert (=> b!772143 m!717173))

(declare-fun m!717175 () Bool)

(assert (=> b!772143 m!717175))

(assert (=> b!772127 m!717173))

(assert (=> b!772127 m!717173))

(declare-fun m!717177 () Bool)

(assert (=> b!772127 m!717177))

(assert (=> b!772127 m!717177))

(assert (=> b!772127 m!717173))

(declare-fun m!717179 () Bool)

(assert (=> b!772127 m!717179))

(assert (=> b!772141 m!717173))

(assert (=> b!772141 m!717173))

(declare-fun m!717181 () Bool)

(assert (=> b!772141 m!717181))

(declare-fun m!717183 () Bool)

(assert (=> b!772135 m!717183))

(assert (=> b!772145 m!717173))

(assert (=> b!772145 m!717173))

(declare-fun m!717185 () Bool)

(assert (=> b!772145 m!717185))

(assert (=> b!772145 m!717173))

(declare-fun m!717187 () Bool)

(assert (=> b!772145 m!717187))

(declare-fun m!717189 () Bool)

(assert (=> b!772134 m!717189))

(declare-fun m!717191 () Bool)

(assert (=> b!772129 m!717191))

(declare-fun m!717193 () Bool)

(assert (=> b!772140 m!717193))

(assert (=> b!772131 m!717173))

(assert (=> b!772131 m!717173))

(declare-fun m!717195 () Bool)

(assert (=> b!772131 m!717195))

(assert (=> b!772130 m!717173))

(assert (=> b!772130 m!717173))

(declare-fun m!717197 () Bool)

(assert (=> b!772130 m!717197))

(declare-fun m!717199 () Bool)

(assert (=> b!772144 m!717199))

(declare-fun m!717201 () Bool)

(assert (=> start!66936 m!717201))

(declare-fun m!717203 () Bool)

(assert (=> start!66936 m!717203))

(assert (=> b!772136 m!717173))

(assert (=> b!772136 m!717173))

(assert (=> b!772136 m!717185))

(declare-fun m!717205 () Bool)

(assert (=> b!772142 m!717205))

(assert (=> b!772133 m!717173))

(assert (=> b!772133 m!717173))

(declare-fun m!717207 () Bool)

(assert (=> b!772133 m!717207))

(declare-fun m!717209 () Bool)

(assert (=> b!772137 m!717209))

(declare-fun m!717211 () Bool)

(assert (=> b!772137 m!717211))

(declare-fun m!717213 () Bool)

(assert (=> b!772137 m!717213))

(declare-fun m!717215 () Bool)

(assert (=> b!772137 m!717215))

(assert (=> b!772137 m!717209))

(declare-fun m!717217 () Bool)

(assert (=> b!772137 m!717217))

(check-sat (not b!772133) (not b!772145) (not b!772131) (not b!772132) (not b!772127) (not b!772139) (not b!772134) (not b!772143) (not start!66936) (not b!772142) (not b!772144) (not b!772136) (not b!772130) (not b!772140) (not b!772137) (not b!772135) (not b!772141))
(check-sat)
(get-model)

(declare-fun b!772219 () Bool)

(declare-fun e!429904 () SeekEntryResult!7894)

(assert (=> b!772219 (= e!429904 Undefined!7894)))

(declare-fun b!772220 () Bool)

(declare-fun e!429903 () SeekEntryResult!7894)

(assert (=> b!772220 (= e!429903 (Found!7894 index!1321))))

(declare-fun b!772221 () Bool)

(declare-fun c!85274 () Bool)

(declare-fun lt!343842 () (_ BitVec 64))

(assert (=> b!772221 (= c!85274 (= lt!343842 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429902 () SeekEntryResult!7894)

(assert (=> b!772221 (= e!429903 e!429902)))

(declare-fun b!772222 () Bool)

(assert (=> b!772222 (= e!429902 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20287 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!772223 () Bool)

(assert (=> b!772223 (= e!429902 (MissingVacant!7894 resIntermediateIndex!5))))

(declare-fun b!772224 () Bool)

(assert (=> b!772224 (= e!429904 e!429903)))

(declare-fun c!85275 () Bool)

(assert (=> b!772224 (= c!85275 (= lt!343842 (select (arr!20287 a!3186) j!159)))))

(declare-fun d!101741 () Bool)

(declare-fun lt!343843 () SeekEntryResult!7894)

(assert (=> d!101741 (and (or ((_ is Undefined!7894) lt!343843) (not ((_ is Found!7894) lt!343843)) (and (bvsge (index!33944 lt!343843) #b00000000000000000000000000000000) (bvslt (index!33944 lt!343843) (size!20708 a!3186)))) (or ((_ is Undefined!7894) lt!343843) ((_ is Found!7894) lt!343843) (not ((_ is MissingVacant!7894) lt!343843)) (not (= (index!33946 lt!343843) resIntermediateIndex!5)) (and (bvsge (index!33946 lt!343843) #b00000000000000000000000000000000) (bvslt (index!33946 lt!343843) (size!20708 a!3186)))) (or ((_ is Undefined!7894) lt!343843) (ite ((_ is Found!7894) lt!343843) (= (select (arr!20287 a!3186) (index!33944 lt!343843)) (select (arr!20287 a!3186) j!159)) (and ((_ is MissingVacant!7894) lt!343843) (= (index!33946 lt!343843) resIntermediateIndex!5) (= (select (arr!20287 a!3186) (index!33946 lt!343843)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101741 (= lt!343843 e!429904)))

(declare-fun c!85273 () Bool)

(assert (=> d!101741 (= c!85273 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101741 (= lt!343842 (select (arr!20287 a!3186) index!1321))))

(assert (=> d!101741 (validMask!0 mask!3328)))

(assert (=> d!101741 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20287 a!3186) j!159) a!3186 mask!3328) lt!343843)))

(assert (= (and d!101741 c!85273) b!772219))

(assert (= (and d!101741 (not c!85273)) b!772224))

(assert (= (and b!772224 c!85275) b!772220))

(assert (= (and b!772224 (not c!85275)) b!772221))

(assert (= (and b!772221 c!85274) b!772223))

(assert (= (and b!772221 (not c!85274)) b!772222))

(assert (=> b!772222 m!717167))

(assert (=> b!772222 m!717167))

(assert (=> b!772222 m!717173))

(declare-fun m!717271 () Bool)

(assert (=> b!772222 m!717271))

(declare-fun m!717273 () Bool)

(assert (=> d!101741 m!717273))

(declare-fun m!717275 () Bool)

(assert (=> d!101741 m!717275))

(declare-fun m!717277 () Bool)

(assert (=> d!101741 m!717277))

(assert (=> d!101741 m!717201))

(assert (=> b!772136 d!101741))

(declare-fun d!101743 () Bool)

(declare-fun e!429918 () Bool)

(assert (=> d!101743 e!429918))

(declare-fun c!85284 () Bool)

(declare-fun lt!343848 () SeekEntryResult!7894)

(assert (=> d!101743 (= c!85284 (and ((_ is Intermediate!7894) lt!343848) (undefined!8706 lt!343848)))))

(declare-fun e!429915 () SeekEntryResult!7894)

(assert (=> d!101743 (= lt!343848 e!429915)))

(declare-fun c!85283 () Bool)

(assert (=> d!101743 (= c!85283 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!343849 () (_ BitVec 64))

(assert (=> d!101743 (= lt!343849 (select (arr!20287 lt!343794) index!1321))))

(assert (=> d!101743 (validMask!0 mask!3328)))

(assert (=> d!101743 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343802 lt!343794 mask!3328) lt!343848)))

(declare-fun b!772243 () Bool)

(assert (=> b!772243 (and (bvsge (index!33945 lt!343848) #b00000000000000000000000000000000) (bvslt (index!33945 lt!343848) (size!20708 lt!343794)))))

(declare-fun res!522473 () Bool)

(assert (=> b!772243 (= res!522473 (= (select (arr!20287 lt!343794) (index!33945 lt!343848)) lt!343802))))

(declare-fun e!429917 () Bool)

(assert (=> b!772243 (=> res!522473 e!429917)))

(declare-fun e!429916 () Bool)

(assert (=> b!772243 (= e!429916 e!429917)))

(declare-fun b!772244 () Bool)

(assert (=> b!772244 (= e!429915 (Intermediate!7894 true index!1321 x!1131))))

(declare-fun b!772245 () Bool)

(declare-fun e!429919 () SeekEntryResult!7894)

(assert (=> b!772245 (= e!429915 e!429919)))

(declare-fun c!85282 () Bool)

(assert (=> b!772245 (= c!85282 (or (= lt!343849 lt!343802) (= (bvadd lt!343849 lt!343849) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772246 () Bool)

(assert (=> b!772246 (= e!429918 e!429916)))

(declare-fun res!522474 () Bool)

(assert (=> b!772246 (= res!522474 (and ((_ is Intermediate!7894) lt!343848) (not (undefined!8706 lt!343848)) (bvslt (x!64902 lt!343848) #b01111111111111111111111111111110) (bvsge (x!64902 lt!343848) #b00000000000000000000000000000000) (bvsge (x!64902 lt!343848) x!1131)))))

(assert (=> b!772246 (=> (not res!522474) (not e!429916))))

(declare-fun b!772247 () Bool)

(assert (=> b!772247 (= e!429919 (Intermediate!7894 false index!1321 x!1131))))

(declare-fun b!772248 () Bool)

(assert (=> b!772248 (and (bvsge (index!33945 lt!343848) #b00000000000000000000000000000000) (bvslt (index!33945 lt!343848) (size!20708 lt!343794)))))

(assert (=> b!772248 (= e!429917 (= (select (arr!20287 lt!343794) (index!33945 lt!343848)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!772249 () Bool)

(assert (=> b!772249 (and (bvsge (index!33945 lt!343848) #b00000000000000000000000000000000) (bvslt (index!33945 lt!343848) (size!20708 lt!343794)))))

(declare-fun res!522475 () Bool)

(assert (=> b!772249 (= res!522475 (= (select (arr!20287 lt!343794) (index!33945 lt!343848)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!772249 (=> res!522475 e!429917)))

(declare-fun b!772250 () Bool)

(assert (=> b!772250 (= e!429918 (bvsge (x!64902 lt!343848) #b01111111111111111111111111111110))))

(declare-fun b!772251 () Bool)

(assert (=> b!772251 (= e!429919 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!343802 lt!343794 mask!3328))))

(assert (= (and d!101743 c!85283) b!772244))

(assert (= (and d!101743 (not c!85283)) b!772245))

(assert (= (and b!772245 c!85282) b!772247))

(assert (= (and b!772245 (not c!85282)) b!772251))

(assert (= (and d!101743 c!85284) b!772250))

(assert (= (and d!101743 (not c!85284)) b!772246))

(assert (= (and b!772246 res!522474) b!772243))

(assert (= (and b!772243 (not res!522473)) b!772249))

(assert (= (and b!772249 (not res!522475)) b!772248))

(declare-fun m!717279 () Bool)

(assert (=> b!772249 m!717279))

(assert (=> b!772248 m!717279))

(assert (=> b!772243 m!717279))

(declare-fun m!717281 () Bool)

(assert (=> d!101743 m!717281))

(assert (=> d!101743 m!717201))

(assert (=> b!772251 m!717167))

(assert (=> b!772251 m!717167))

(declare-fun m!717283 () Bool)

(assert (=> b!772251 m!717283))

(assert (=> b!772137 d!101743))

(declare-fun d!101749 () Bool)

(declare-fun e!429923 () Bool)

(assert (=> d!101749 e!429923))

(declare-fun c!85287 () Bool)

(declare-fun lt!343850 () SeekEntryResult!7894)

(assert (=> d!101749 (= c!85287 (and ((_ is Intermediate!7894) lt!343850) (undefined!8706 lt!343850)))))

(declare-fun e!429920 () SeekEntryResult!7894)

(assert (=> d!101749 (= lt!343850 e!429920)))

(declare-fun c!85286 () Bool)

(assert (=> d!101749 (= c!85286 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!343851 () (_ BitVec 64))

(assert (=> d!101749 (= lt!343851 (select (arr!20287 lt!343794) (toIndex!0 lt!343802 mask!3328)))))

(assert (=> d!101749 (validMask!0 mask!3328)))

(assert (=> d!101749 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343802 mask!3328) lt!343802 lt!343794 mask!3328) lt!343850)))

(declare-fun b!772252 () Bool)

(assert (=> b!772252 (and (bvsge (index!33945 lt!343850) #b00000000000000000000000000000000) (bvslt (index!33945 lt!343850) (size!20708 lt!343794)))))

(declare-fun res!522476 () Bool)

(assert (=> b!772252 (= res!522476 (= (select (arr!20287 lt!343794) (index!33945 lt!343850)) lt!343802))))

(declare-fun e!429922 () Bool)

(assert (=> b!772252 (=> res!522476 e!429922)))

(declare-fun e!429921 () Bool)

(assert (=> b!772252 (= e!429921 e!429922)))

(declare-fun b!772253 () Bool)

(assert (=> b!772253 (= e!429920 (Intermediate!7894 true (toIndex!0 lt!343802 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!772254 () Bool)

(declare-fun e!429924 () SeekEntryResult!7894)

(assert (=> b!772254 (= e!429920 e!429924)))

(declare-fun c!85285 () Bool)

(assert (=> b!772254 (= c!85285 (or (= lt!343851 lt!343802) (= (bvadd lt!343851 lt!343851) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772255 () Bool)

(assert (=> b!772255 (= e!429923 e!429921)))

(declare-fun res!522477 () Bool)

(assert (=> b!772255 (= res!522477 (and ((_ is Intermediate!7894) lt!343850) (not (undefined!8706 lt!343850)) (bvslt (x!64902 lt!343850) #b01111111111111111111111111111110) (bvsge (x!64902 lt!343850) #b00000000000000000000000000000000) (bvsge (x!64902 lt!343850) #b00000000000000000000000000000000)))))

(assert (=> b!772255 (=> (not res!522477) (not e!429921))))

(declare-fun b!772256 () Bool)

(assert (=> b!772256 (= e!429924 (Intermediate!7894 false (toIndex!0 lt!343802 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!772257 () Bool)

(assert (=> b!772257 (and (bvsge (index!33945 lt!343850) #b00000000000000000000000000000000) (bvslt (index!33945 lt!343850) (size!20708 lt!343794)))))

(assert (=> b!772257 (= e!429922 (= (select (arr!20287 lt!343794) (index!33945 lt!343850)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!772258 () Bool)

(assert (=> b!772258 (and (bvsge (index!33945 lt!343850) #b00000000000000000000000000000000) (bvslt (index!33945 lt!343850) (size!20708 lt!343794)))))

(declare-fun res!522478 () Bool)

(assert (=> b!772258 (= res!522478 (= (select (arr!20287 lt!343794) (index!33945 lt!343850)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!772258 (=> res!522478 e!429922)))

(declare-fun b!772259 () Bool)

(assert (=> b!772259 (= e!429923 (bvsge (x!64902 lt!343850) #b01111111111111111111111111111110))))

(declare-fun b!772260 () Bool)

(assert (=> b!772260 (= e!429924 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!343802 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!343802 lt!343794 mask!3328))))

(assert (= (and d!101749 c!85286) b!772253))

(assert (= (and d!101749 (not c!85286)) b!772254))

(assert (= (and b!772254 c!85285) b!772256))

(assert (= (and b!772254 (not c!85285)) b!772260))

(assert (= (and d!101749 c!85287) b!772259))

(assert (= (and d!101749 (not c!85287)) b!772255))

(assert (= (and b!772255 res!522477) b!772252))

(assert (= (and b!772252 (not res!522476)) b!772258))

(assert (= (and b!772258 (not res!522478)) b!772257))

(declare-fun m!717285 () Bool)

(assert (=> b!772258 m!717285))

(assert (=> b!772257 m!717285))

(assert (=> b!772252 m!717285))

(assert (=> d!101749 m!717209))

(declare-fun m!717287 () Bool)

(assert (=> d!101749 m!717287))

(assert (=> d!101749 m!717201))

(assert (=> b!772260 m!717209))

(declare-fun m!717289 () Bool)

(assert (=> b!772260 m!717289))

(assert (=> b!772260 m!717289))

(declare-fun m!717291 () Bool)

(assert (=> b!772260 m!717291))

(assert (=> b!772137 d!101749))

(declare-fun d!101751 () Bool)

(declare-fun lt!343866 () (_ BitVec 32))

(declare-fun lt!343865 () (_ BitVec 32))

(assert (=> d!101751 (= lt!343866 (bvmul (bvxor lt!343865 (bvlshr lt!343865 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101751 (= lt!343865 ((_ extract 31 0) (bvand (bvxor lt!343802 (bvlshr lt!343802 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101751 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!522479 (let ((h!15442 ((_ extract 31 0) (bvand (bvxor lt!343802 (bvlshr lt!343802 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64906 (bvmul (bvxor h!15442 (bvlshr h!15442 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64906 (bvlshr x!64906 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!522479 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!522479 #b00000000000000000000000000000000))))))

(assert (=> d!101751 (= (toIndex!0 lt!343802 mask!3328) (bvand (bvxor lt!343866 (bvlshr lt!343866 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!772137 d!101751))

(declare-fun d!101755 () Bool)

(declare-fun e!429937 () Bool)

(assert (=> d!101755 e!429937))

(declare-fun c!85293 () Bool)

(declare-fun lt!343871 () SeekEntryResult!7894)

(assert (=> d!101755 (= c!85293 (and ((_ is Intermediate!7894) lt!343871) (undefined!8706 lt!343871)))))

(declare-fun e!429934 () SeekEntryResult!7894)

(assert (=> d!101755 (= lt!343871 e!429934)))

(declare-fun c!85292 () Bool)

(assert (=> d!101755 (= c!85292 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!343872 () (_ BitVec 64))

(assert (=> d!101755 (= lt!343872 (select (arr!20287 a!3186) (toIndex!0 (select (arr!20287 a!3186) j!159) mask!3328)))))

(assert (=> d!101755 (validMask!0 mask!3328)))

(assert (=> d!101755 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20287 a!3186) j!159) mask!3328) (select (arr!20287 a!3186) j!159) a!3186 mask!3328) lt!343871)))

(declare-fun b!772275 () Bool)

(assert (=> b!772275 (and (bvsge (index!33945 lt!343871) #b00000000000000000000000000000000) (bvslt (index!33945 lt!343871) (size!20708 a!3186)))))

(declare-fun res!522486 () Bool)

(assert (=> b!772275 (= res!522486 (= (select (arr!20287 a!3186) (index!33945 lt!343871)) (select (arr!20287 a!3186) j!159)))))

(declare-fun e!429936 () Bool)

(assert (=> b!772275 (=> res!522486 e!429936)))

(declare-fun e!429935 () Bool)

(assert (=> b!772275 (= e!429935 e!429936)))

(declare-fun b!772276 () Bool)

(assert (=> b!772276 (= e!429934 (Intermediate!7894 true (toIndex!0 (select (arr!20287 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!772277 () Bool)

(declare-fun e!429938 () SeekEntryResult!7894)

(assert (=> b!772277 (= e!429934 e!429938)))

(declare-fun c!85291 () Bool)

(assert (=> b!772277 (= c!85291 (or (= lt!343872 (select (arr!20287 a!3186) j!159)) (= (bvadd lt!343872 lt!343872) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772278 () Bool)

(assert (=> b!772278 (= e!429937 e!429935)))

(declare-fun res!522487 () Bool)

(assert (=> b!772278 (= res!522487 (and ((_ is Intermediate!7894) lt!343871) (not (undefined!8706 lt!343871)) (bvslt (x!64902 lt!343871) #b01111111111111111111111111111110) (bvsge (x!64902 lt!343871) #b00000000000000000000000000000000) (bvsge (x!64902 lt!343871) #b00000000000000000000000000000000)))))

(assert (=> b!772278 (=> (not res!522487) (not e!429935))))

(declare-fun b!772279 () Bool)

(assert (=> b!772279 (= e!429938 (Intermediate!7894 false (toIndex!0 (select (arr!20287 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!772280 () Bool)

(assert (=> b!772280 (and (bvsge (index!33945 lt!343871) #b00000000000000000000000000000000) (bvslt (index!33945 lt!343871) (size!20708 a!3186)))))

(assert (=> b!772280 (= e!429936 (= (select (arr!20287 a!3186) (index!33945 lt!343871)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!772281 () Bool)

(assert (=> b!772281 (and (bvsge (index!33945 lt!343871) #b00000000000000000000000000000000) (bvslt (index!33945 lt!343871) (size!20708 a!3186)))))

(declare-fun res!522488 () Bool)

(assert (=> b!772281 (= res!522488 (= (select (arr!20287 a!3186) (index!33945 lt!343871)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!772281 (=> res!522488 e!429936)))

(declare-fun b!772282 () Bool)

(assert (=> b!772282 (= e!429937 (bvsge (x!64902 lt!343871) #b01111111111111111111111111111110))))

(declare-fun b!772283 () Bool)

(assert (=> b!772283 (= e!429938 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20287 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20287 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!101755 c!85292) b!772276))

(assert (= (and d!101755 (not c!85292)) b!772277))

(assert (= (and b!772277 c!85291) b!772279))

(assert (= (and b!772277 (not c!85291)) b!772283))

(assert (= (and d!101755 c!85293) b!772282))

(assert (= (and d!101755 (not c!85293)) b!772278))

(assert (= (and b!772278 res!522487) b!772275))

(assert (= (and b!772275 (not res!522486)) b!772281))

(assert (= (and b!772281 (not res!522488)) b!772280))

(declare-fun m!717299 () Bool)

(assert (=> b!772281 m!717299))

(assert (=> b!772280 m!717299))

(assert (=> b!772275 m!717299))

(assert (=> d!101755 m!717177))

(declare-fun m!717301 () Bool)

(assert (=> d!101755 m!717301))

(assert (=> d!101755 m!717201))

(assert (=> b!772283 m!717177))

(declare-fun m!717303 () Bool)

(assert (=> b!772283 m!717303))

(assert (=> b!772283 m!717303))

(assert (=> b!772283 m!717173))

(declare-fun m!717305 () Bool)

(assert (=> b!772283 m!717305))

(assert (=> b!772127 d!101755))

(declare-fun d!101757 () Bool)

(declare-fun lt!343874 () (_ BitVec 32))

(declare-fun lt!343873 () (_ BitVec 32))

(assert (=> d!101757 (= lt!343874 (bvmul (bvxor lt!343873 (bvlshr lt!343873 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101757 (= lt!343873 ((_ extract 31 0) (bvand (bvxor (select (arr!20287 a!3186) j!159) (bvlshr (select (arr!20287 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101757 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!522479 (let ((h!15442 ((_ extract 31 0) (bvand (bvxor (select (arr!20287 a!3186) j!159) (bvlshr (select (arr!20287 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64906 (bvmul (bvxor h!15442 (bvlshr h!15442 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64906 (bvlshr x!64906 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!522479 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!522479 #b00000000000000000000000000000000))))))

(assert (=> d!101757 (= (toIndex!0 (select (arr!20287 a!3186) j!159) mask!3328) (bvand (bvxor lt!343874 (bvlshr lt!343874 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!772127 d!101757))

(declare-fun d!101759 () Bool)

(assert (=> d!101759 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66936 d!101759))

(declare-fun d!101769 () Bool)

(assert (=> d!101769 (= (array_inv!16061 a!3186) (bvsge (size!20708 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66936 d!101769))

(declare-fun d!101771 () Bool)

(declare-fun res!522512 () Bool)

(declare-fun e!429983 () Bool)

(assert (=> d!101771 (=> res!522512 e!429983)))

(assert (=> d!101771 (= res!522512 (bvsge j!159 (size!20708 a!3186)))))

(assert (=> d!101771 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!429983)))

(declare-fun b!772357 () Bool)

(declare-fun e!429982 () Bool)

(declare-fun call!35137 () Bool)

(assert (=> b!772357 (= e!429982 call!35137)))

(declare-fun b!772358 () Bool)

(declare-fun e!429984 () Bool)

(assert (=> b!772358 (= e!429984 e!429982)))

(declare-fun lt!343906 () (_ BitVec 64))

(assert (=> b!772358 (= lt!343906 (select (arr!20287 a!3186) j!159))))

(declare-fun lt!343907 () Unit!26612)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42384 (_ BitVec 64) (_ BitVec 32)) Unit!26612)

(assert (=> b!772358 (= lt!343907 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!343906 j!159))))

(assert (=> b!772358 (arrayContainsKey!0 a!3186 lt!343906 #b00000000000000000000000000000000)))

(declare-fun lt!343905 () Unit!26612)

(assert (=> b!772358 (= lt!343905 lt!343907)))

(declare-fun res!522511 () Bool)

(assert (=> b!772358 (= res!522511 (= (seekEntryOrOpen!0 (select (arr!20287 a!3186) j!159) a!3186 mask!3328) (Found!7894 j!159)))))

(assert (=> b!772358 (=> (not res!522511) (not e!429982))))

(declare-fun b!772359 () Bool)

(assert (=> b!772359 (= e!429983 e!429984)))

(declare-fun c!85321 () Bool)

(assert (=> b!772359 (= c!85321 (validKeyInArray!0 (select (arr!20287 a!3186) j!159)))))

(declare-fun b!772360 () Bool)

(assert (=> b!772360 (= e!429984 call!35137)))

(declare-fun bm!35134 () Bool)

(assert (=> bm!35134 (= call!35137 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!101771 (not res!522512)) b!772359))

(assert (= (and b!772359 c!85321) b!772358))

(assert (= (and b!772359 (not c!85321)) b!772360))

(assert (= (and b!772358 res!522511) b!772357))

(assert (= (or b!772357 b!772360) bm!35134))

(assert (=> b!772358 m!717173))

(declare-fun m!717351 () Bool)

(assert (=> b!772358 m!717351))

(declare-fun m!717353 () Bool)

(assert (=> b!772358 m!717353))

(assert (=> b!772358 m!717173))

(assert (=> b!772358 m!717197))

(assert (=> b!772359 m!717173))

(assert (=> b!772359 m!717173))

(assert (=> b!772359 m!717207))

(declare-fun m!717355 () Bool)

(assert (=> bm!35134 m!717355))

(assert (=> b!772139 d!101771))

(declare-fun d!101779 () Bool)

(assert (=> d!101779 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!343912 () Unit!26612)

(declare-fun choose!38 (array!42384 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26612)

(assert (=> d!101779 (= lt!343912 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101779 (validMask!0 mask!3328)))

(assert (=> d!101779 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!343912)))

(declare-fun bs!21596 () Bool)

(assert (= bs!21596 d!101779))

(assert (=> bs!21596 m!717169))

(declare-fun m!717357 () Bool)

(assert (=> bs!21596 m!717357))

(assert (=> bs!21596 m!717201))

(assert (=> b!772139 d!101779))

(declare-fun d!101787 () Bool)

(assert (=> d!101787 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!772140 d!101787))

(declare-fun b!772424 () Bool)

(declare-fun e!430024 () SeekEntryResult!7894)

(declare-fun lt!343935 () SeekEntryResult!7894)

(assert (=> b!772424 (= e!430024 (seekKeyOrZeroReturnVacant!0 (x!64902 lt!343935) (index!33945 lt!343935) (index!33945 lt!343935) (select (arr!20287 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!772425 () Bool)

(declare-fun e!430023 () SeekEntryResult!7894)

(assert (=> b!772425 (= e!430023 (Found!7894 (index!33945 lt!343935)))))

(declare-fun d!101795 () Bool)

(declare-fun lt!343934 () SeekEntryResult!7894)

(assert (=> d!101795 (and (or ((_ is Undefined!7894) lt!343934) (not ((_ is Found!7894) lt!343934)) (and (bvsge (index!33944 lt!343934) #b00000000000000000000000000000000) (bvslt (index!33944 lt!343934) (size!20708 a!3186)))) (or ((_ is Undefined!7894) lt!343934) ((_ is Found!7894) lt!343934) (not ((_ is MissingZero!7894) lt!343934)) (and (bvsge (index!33943 lt!343934) #b00000000000000000000000000000000) (bvslt (index!33943 lt!343934) (size!20708 a!3186)))) (or ((_ is Undefined!7894) lt!343934) ((_ is Found!7894) lt!343934) ((_ is MissingZero!7894) lt!343934) (not ((_ is MissingVacant!7894) lt!343934)) (and (bvsge (index!33946 lt!343934) #b00000000000000000000000000000000) (bvslt (index!33946 lt!343934) (size!20708 a!3186)))) (or ((_ is Undefined!7894) lt!343934) (ite ((_ is Found!7894) lt!343934) (= (select (arr!20287 a!3186) (index!33944 lt!343934)) (select (arr!20287 a!3186) j!159)) (ite ((_ is MissingZero!7894) lt!343934) (= (select (arr!20287 a!3186) (index!33943 lt!343934)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7894) lt!343934) (= (select (arr!20287 a!3186) (index!33946 lt!343934)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!430025 () SeekEntryResult!7894)

(assert (=> d!101795 (= lt!343934 e!430025)))

(declare-fun c!85344 () Bool)

(assert (=> d!101795 (= c!85344 (and ((_ is Intermediate!7894) lt!343935) (undefined!8706 lt!343935)))))

(assert (=> d!101795 (= lt!343935 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20287 a!3186) j!159) mask!3328) (select (arr!20287 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101795 (validMask!0 mask!3328)))

(assert (=> d!101795 (= (seekEntryOrOpen!0 (select (arr!20287 a!3186) j!159) a!3186 mask!3328) lt!343934)))

(declare-fun b!772426 () Bool)

(declare-fun c!85345 () Bool)

(declare-fun lt!343933 () (_ BitVec 64))

(assert (=> b!772426 (= c!85345 (= lt!343933 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!772426 (= e!430023 e!430024)))

(declare-fun b!772427 () Bool)

(assert (=> b!772427 (= e!430025 Undefined!7894)))

(declare-fun b!772428 () Bool)

(assert (=> b!772428 (= e!430024 (MissingZero!7894 (index!33945 lt!343935)))))

(declare-fun b!772429 () Bool)

(assert (=> b!772429 (= e!430025 e!430023)))

(assert (=> b!772429 (= lt!343933 (select (arr!20287 a!3186) (index!33945 lt!343935)))))

(declare-fun c!85343 () Bool)

(assert (=> b!772429 (= c!85343 (= lt!343933 (select (arr!20287 a!3186) j!159)))))

(assert (= (and d!101795 c!85344) b!772427))

(assert (= (and d!101795 (not c!85344)) b!772429))

(assert (= (and b!772429 c!85343) b!772425))

(assert (= (and b!772429 (not c!85343)) b!772426))

(assert (= (and b!772426 c!85345) b!772428))

(assert (= (and b!772426 (not c!85345)) b!772424))

(assert (=> b!772424 m!717173))

(declare-fun m!717383 () Bool)

(assert (=> b!772424 m!717383))

(assert (=> d!101795 m!717177))

(assert (=> d!101795 m!717173))

(assert (=> d!101795 m!717179))

(assert (=> d!101795 m!717201))

(declare-fun m!717385 () Bool)

(assert (=> d!101795 m!717385))

(declare-fun m!717387 () Bool)

(assert (=> d!101795 m!717387))

(declare-fun m!717389 () Bool)

(assert (=> d!101795 m!717389))

(assert (=> d!101795 m!717173))

(assert (=> d!101795 m!717177))

(declare-fun m!717391 () Bool)

(assert (=> b!772429 m!717391))

(assert (=> b!772130 d!101795))

(declare-fun d!101805 () Bool)

(declare-fun e!430029 () Bool)

(assert (=> d!101805 e!430029))

(declare-fun c!85348 () Bool)

(declare-fun lt!343936 () SeekEntryResult!7894)

(assert (=> d!101805 (= c!85348 (and ((_ is Intermediate!7894) lt!343936) (undefined!8706 lt!343936)))))

(declare-fun e!430026 () SeekEntryResult!7894)

(assert (=> d!101805 (= lt!343936 e!430026)))

(declare-fun c!85347 () Bool)

(assert (=> d!101805 (= c!85347 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!343937 () (_ BitVec 64))

(assert (=> d!101805 (= lt!343937 (select (arr!20287 a!3186) index!1321))))

(assert (=> d!101805 (validMask!0 mask!3328)))

(assert (=> d!101805 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20287 a!3186) j!159) a!3186 mask!3328) lt!343936)))

(declare-fun b!772430 () Bool)

(assert (=> b!772430 (and (bvsge (index!33945 lt!343936) #b00000000000000000000000000000000) (bvslt (index!33945 lt!343936) (size!20708 a!3186)))))

(declare-fun res!522535 () Bool)

(assert (=> b!772430 (= res!522535 (= (select (arr!20287 a!3186) (index!33945 lt!343936)) (select (arr!20287 a!3186) j!159)))))

(declare-fun e!430028 () Bool)

(assert (=> b!772430 (=> res!522535 e!430028)))

(declare-fun e!430027 () Bool)

(assert (=> b!772430 (= e!430027 e!430028)))

(declare-fun b!772431 () Bool)

(assert (=> b!772431 (= e!430026 (Intermediate!7894 true index!1321 x!1131))))

(declare-fun b!772432 () Bool)

(declare-fun e!430030 () SeekEntryResult!7894)

(assert (=> b!772432 (= e!430026 e!430030)))

(declare-fun c!85346 () Bool)

(assert (=> b!772432 (= c!85346 (or (= lt!343937 (select (arr!20287 a!3186) j!159)) (= (bvadd lt!343937 lt!343937) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772433 () Bool)

(assert (=> b!772433 (= e!430029 e!430027)))

(declare-fun res!522536 () Bool)

(assert (=> b!772433 (= res!522536 (and ((_ is Intermediate!7894) lt!343936) (not (undefined!8706 lt!343936)) (bvslt (x!64902 lt!343936) #b01111111111111111111111111111110) (bvsge (x!64902 lt!343936) #b00000000000000000000000000000000) (bvsge (x!64902 lt!343936) x!1131)))))

(assert (=> b!772433 (=> (not res!522536) (not e!430027))))

(declare-fun b!772434 () Bool)

(assert (=> b!772434 (= e!430030 (Intermediate!7894 false index!1321 x!1131))))

(declare-fun b!772435 () Bool)

(assert (=> b!772435 (and (bvsge (index!33945 lt!343936) #b00000000000000000000000000000000) (bvslt (index!33945 lt!343936) (size!20708 a!3186)))))

(assert (=> b!772435 (= e!430028 (= (select (arr!20287 a!3186) (index!33945 lt!343936)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!772436 () Bool)

(assert (=> b!772436 (and (bvsge (index!33945 lt!343936) #b00000000000000000000000000000000) (bvslt (index!33945 lt!343936) (size!20708 a!3186)))))

(declare-fun res!522537 () Bool)

(assert (=> b!772436 (= res!522537 (= (select (arr!20287 a!3186) (index!33945 lt!343936)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!772436 (=> res!522537 e!430028)))

(declare-fun b!772437 () Bool)

(assert (=> b!772437 (= e!430029 (bvsge (x!64902 lt!343936) #b01111111111111111111111111111110))))

(declare-fun b!772438 () Bool)

(assert (=> b!772438 (= e!430030 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20287 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!101805 c!85347) b!772431))

(assert (= (and d!101805 (not c!85347)) b!772432))

(assert (= (and b!772432 c!85346) b!772434))

(assert (= (and b!772432 (not c!85346)) b!772438))

(assert (= (and d!101805 c!85348) b!772437))

(assert (= (and d!101805 (not c!85348)) b!772433))

(assert (= (and b!772433 res!522536) b!772430))

(assert (= (and b!772430 (not res!522535)) b!772436))

(assert (= (and b!772436 (not res!522537)) b!772435))

(declare-fun m!717393 () Bool)

(assert (=> b!772436 m!717393))

(assert (=> b!772435 m!717393))

(assert (=> b!772430 m!717393))

(assert (=> d!101805 m!717277))

(assert (=> d!101805 m!717201))

(assert (=> b!772438 m!717167))

(assert (=> b!772438 m!717167))

(assert (=> b!772438 m!717173))

(declare-fun m!717395 () Bool)

(assert (=> b!772438 m!717395))

(assert (=> b!772141 d!101805))

(declare-fun b!772445 () Bool)

(declare-fun e!430037 () SeekEntryResult!7894)

(assert (=> b!772445 (= e!430037 Undefined!7894)))

(declare-fun b!772446 () Bool)

(declare-fun e!430036 () SeekEntryResult!7894)

(assert (=> b!772446 (= e!430036 (Found!7894 resIntermediateIndex!5))))

(declare-fun b!772447 () Bool)

(declare-fun c!85350 () Bool)

(declare-fun lt!343942 () (_ BitVec 64))

(assert (=> b!772447 (= c!85350 (= lt!343942 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!430035 () SeekEntryResult!7894)

(assert (=> b!772447 (= e!430036 e!430035)))

(declare-fun b!772448 () Bool)

(assert (=> b!772448 (= e!430035 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20287 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!772450 () Bool)

(assert (=> b!772450 (= e!430035 (MissingVacant!7894 resIntermediateIndex!5))))

(declare-fun b!772452 () Bool)

(assert (=> b!772452 (= e!430037 e!430036)))

(declare-fun c!85351 () Bool)

(assert (=> b!772452 (= c!85351 (= lt!343942 (select (arr!20287 a!3186) j!159)))))

(declare-fun lt!343943 () SeekEntryResult!7894)

(declare-fun d!101807 () Bool)

(assert (=> d!101807 (and (or ((_ is Undefined!7894) lt!343943) (not ((_ is Found!7894) lt!343943)) (and (bvsge (index!33944 lt!343943) #b00000000000000000000000000000000) (bvslt (index!33944 lt!343943) (size!20708 a!3186)))) (or ((_ is Undefined!7894) lt!343943) ((_ is Found!7894) lt!343943) (not ((_ is MissingVacant!7894) lt!343943)) (not (= (index!33946 lt!343943) resIntermediateIndex!5)) (and (bvsge (index!33946 lt!343943) #b00000000000000000000000000000000) (bvslt (index!33946 lt!343943) (size!20708 a!3186)))) (or ((_ is Undefined!7894) lt!343943) (ite ((_ is Found!7894) lt!343943) (= (select (arr!20287 a!3186) (index!33944 lt!343943)) (select (arr!20287 a!3186) j!159)) (and ((_ is MissingVacant!7894) lt!343943) (= (index!33946 lt!343943) resIntermediateIndex!5) (= (select (arr!20287 a!3186) (index!33946 lt!343943)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101807 (= lt!343943 e!430037)))

(declare-fun c!85349 () Bool)

(assert (=> d!101807 (= c!85349 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!101807 (= lt!343942 (select (arr!20287 a!3186) resIntermediateIndex!5))))

(assert (=> d!101807 (validMask!0 mask!3328)))

(assert (=> d!101807 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20287 a!3186) j!159) a!3186 mask!3328) lt!343943)))

(assert (= (and d!101807 c!85349) b!772445))

(assert (= (and d!101807 (not c!85349)) b!772452))

(assert (= (and b!772452 c!85351) b!772446))

(assert (= (and b!772452 (not c!85351)) b!772447))

(assert (= (and b!772447 c!85350) b!772450))

(assert (= (and b!772447 (not c!85350)) b!772448))

(declare-fun m!717397 () Bool)

(assert (=> b!772448 m!717397))

(assert (=> b!772448 m!717397))

(assert (=> b!772448 m!717173))

(declare-fun m!717399 () Bool)

(assert (=> b!772448 m!717399))

(declare-fun m!717401 () Bool)

(assert (=> d!101807 m!717401))

(declare-fun m!717403 () Bool)

(assert (=> d!101807 m!717403))

(assert (=> d!101807 m!717191))

(assert (=> d!101807 m!717201))

(assert (=> b!772131 d!101807))

(declare-fun b!772488 () Bool)

(declare-fun e!430063 () Bool)

(declare-fun e!430064 () Bool)

(assert (=> b!772488 (= e!430063 e!430064)))

(declare-fun c!85366 () Bool)

(assert (=> b!772488 (= c!85366 (validKeyInArray!0 (select (arr!20287 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!772489 () Bool)

(declare-fun e!430062 () Bool)

(declare-fun contains!4093 (List!14342 (_ BitVec 64)) Bool)

(assert (=> b!772489 (= e!430062 (contains!4093 Nil!14339 (select (arr!20287 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!101809 () Bool)

(declare-fun res!522555 () Bool)

(declare-fun e!430065 () Bool)

(assert (=> d!101809 (=> res!522555 e!430065)))

(assert (=> d!101809 (= res!522555 (bvsge #b00000000000000000000000000000000 (size!20708 a!3186)))))

(assert (=> d!101809 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14339) e!430065)))

(declare-fun b!772490 () Bool)

(declare-fun call!35143 () Bool)

(assert (=> b!772490 (= e!430064 call!35143)))

(declare-fun b!772491 () Bool)

(assert (=> b!772491 (= e!430064 call!35143)))

(declare-fun bm!35140 () Bool)

(assert (=> bm!35140 (= call!35143 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!85366 (Cons!14338 (select (arr!20287 a!3186) #b00000000000000000000000000000000) Nil!14339) Nil!14339)))))

(declare-fun b!772492 () Bool)

(assert (=> b!772492 (= e!430065 e!430063)))

(declare-fun res!522554 () Bool)

(assert (=> b!772492 (=> (not res!522554) (not e!430063))))

(assert (=> b!772492 (= res!522554 (not e!430062))))

(declare-fun res!522553 () Bool)

(assert (=> b!772492 (=> (not res!522553) (not e!430062))))

(assert (=> b!772492 (= res!522553 (validKeyInArray!0 (select (arr!20287 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!101809 (not res!522555)) b!772492))

(assert (= (and b!772492 res!522553) b!772489))

(assert (= (and b!772492 res!522554) b!772488))

(assert (= (and b!772488 c!85366) b!772491))

(assert (= (and b!772488 (not c!85366)) b!772490))

(assert (= (or b!772491 b!772490) bm!35140))

(declare-fun m!717425 () Bool)

(assert (=> b!772488 m!717425))

(assert (=> b!772488 m!717425))

(declare-fun m!717427 () Bool)

(assert (=> b!772488 m!717427))

(assert (=> b!772489 m!717425))

(assert (=> b!772489 m!717425))

(declare-fun m!717429 () Bool)

(assert (=> b!772489 m!717429))

(assert (=> bm!35140 m!717425))

(declare-fun m!717431 () Bool)

(assert (=> bm!35140 m!717431))

(assert (=> b!772492 m!717425))

(assert (=> b!772492 m!717425))

(assert (=> b!772492 m!717427))

(assert (=> b!772142 d!101809))

(declare-fun d!101817 () Bool)

(declare-fun lt!343953 () (_ BitVec 32))

(assert (=> d!101817 (and (bvsge lt!343953 #b00000000000000000000000000000000) (bvslt lt!343953 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!101817 (= lt!343953 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!101817 (validMask!0 mask!3328)))

(assert (=> d!101817 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!343953)))

(declare-fun bs!21597 () Bool)

(assert (= bs!21597 d!101817))

(declare-fun m!717433 () Bool)

(assert (=> bs!21597 m!717433))

(assert (=> bs!21597 m!717201))

(assert (=> b!772132 d!101817))

(declare-fun d!101819 () Bool)

(declare-fun e!430069 () Bool)

(assert (=> d!101819 e!430069))

(declare-fun c!85369 () Bool)

(declare-fun lt!343954 () SeekEntryResult!7894)

(assert (=> d!101819 (= c!85369 (and ((_ is Intermediate!7894) lt!343954) (undefined!8706 lt!343954)))))

(declare-fun e!430066 () SeekEntryResult!7894)

(assert (=> d!101819 (= lt!343954 e!430066)))

(declare-fun c!85368 () Bool)

(assert (=> d!101819 (= c!85368 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(declare-fun lt!343955 () (_ BitVec 64))

(assert (=> d!101819 (= lt!343955 (select (arr!20287 a!3186) lt!343800))))

(assert (=> d!101819 (validMask!0 mask!3328)))

(assert (=> d!101819 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343800 (select (arr!20287 a!3186) j!159) a!3186 mask!3328) lt!343954)))

(declare-fun b!772493 () Bool)

(assert (=> b!772493 (and (bvsge (index!33945 lt!343954) #b00000000000000000000000000000000) (bvslt (index!33945 lt!343954) (size!20708 a!3186)))))

(declare-fun res!522556 () Bool)

(assert (=> b!772493 (= res!522556 (= (select (arr!20287 a!3186) (index!33945 lt!343954)) (select (arr!20287 a!3186) j!159)))))

(declare-fun e!430068 () Bool)

(assert (=> b!772493 (=> res!522556 e!430068)))

(declare-fun e!430067 () Bool)

(assert (=> b!772493 (= e!430067 e!430068)))

(declare-fun b!772494 () Bool)

(assert (=> b!772494 (= e!430066 (Intermediate!7894 true lt!343800 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun b!772495 () Bool)

(declare-fun e!430070 () SeekEntryResult!7894)

(assert (=> b!772495 (= e!430066 e!430070)))

(declare-fun c!85367 () Bool)

(assert (=> b!772495 (= c!85367 (or (= lt!343955 (select (arr!20287 a!3186) j!159)) (= (bvadd lt!343955 lt!343955) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772496 () Bool)

(assert (=> b!772496 (= e!430069 e!430067)))

(declare-fun res!522557 () Bool)

(assert (=> b!772496 (= res!522557 (and ((_ is Intermediate!7894) lt!343954) (not (undefined!8706 lt!343954)) (bvslt (x!64902 lt!343954) #b01111111111111111111111111111110) (bvsge (x!64902 lt!343954) #b00000000000000000000000000000000) (bvsge (x!64902 lt!343954) (bvadd #b00000000000000000000000000000001 x!1131))))))

(assert (=> b!772496 (=> (not res!522557) (not e!430067))))

(declare-fun b!772497 () Bool)

(assert (=> b!772497 (= e!430070 (Intermediate!7894 false lt!343800 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun b!772498 () Bool)

(assert (=> b!772498 (and (bvsge (index!33945 lt!343954) #b00000000000000000000000000000000) (bvslt (index!33945 lt!343954) (size!20708 a!3186)))))

(assert (=> b!772498 (= e!430068 (= (select (arr!20287 a!3186) (index!33945 lt!343954)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!772499 () Bool)

(assert (=> b!772499 (and (bvsge (index!33945 lt!343954) #b00000000000000000000000000000000) (bvslt (index!33945 lt!343954) (size!20708 a!3186)))))

(declare-fun res!522558 () Bool)

(assert (=> b!772499 (= res!522558 (= (select (arr!20287 a!3186) (index!33945 lt!343954)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!772499 (=> res!522558 e!430068)))

(declare-fun b!772500 () Bool)

(assert (=> b!772500 (= e!430069 (bvsge (x!64902 lt!343954) #b01111111111111111111111111111110))))

(declare-fun b!772501 () Bool)

(assert (=> b!772501 (= e!430070 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!343800 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) (select (arr!20287 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!101819 c!85368) b!772494))

(assert (= (and d!101819 (not c!85368)) b!772495))

(assert (= (and b!772495 c!85367) b!772497))

(assert (= (and b!772495 (not c!85367)) b!772501))

(assert (= (and d!101819 c!85369) b!772500))

(assert (= (and d!101819 (not c!85369)) b!772496))

(assert (= (and b!772496 res!522557) b!772493))

(assert (= (and b!772493 (not res!522556)) b!772499))

(assert (= (and b!772499 (not res!522558)) b!772498))

(declare-fun m!717435 () Bool)

(assert (=> b!772499 m!717435))

(assert (=> b!772498 m!717435))

(assert (=> b!772493 m!717435))

(declare-fun m!717437 () Bool)

(assert (=> d!101819 m!717437))

(assert (=> d!101819 m!717201))

(declare-fun m!717439 () Bool)

(assert (=> b!772501 m!717439))

(assert (=> b!772501 m!717439))

(assert (=> b!772501 m!717173))

(declare-fun m!717441 () Bool)

(assert (=> b!772501 m!717441))

(assert (=> b!772143 d!101819))

(declare-fun d!101821 () Bool)

(assert (=> d!101821 (= (validKeyInArray!0 (select (arr!20287 a!3186) j!159)) (and (not (= (select (arr!20287 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20287 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!772133 d!101821))

(declare-fun d!101823 () Bool)

(declare-fun res!522560 () Bool)

(declare-fun e!430072 () Bool)

(assert (=> d!101823 (=> res!522560 e!430072)))

(assert (=> d!101823 (= res!522560 (bvsge #b00000000000000000000000000000000 (size!20708 a!3186)))))

(assert (=> d!101823 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!430072)))

(declare-fun b!772502 () Bool)

(declare-fun e!430071 () Bool)

(declare-fun call!35144 () Bool)

(assert (=> b!772502 (= e!430071 call!35144)))

(declare-fun b!772503 () Bool)

(declare-fun e!430073 () Bool)

(assert (=> b!772503 (= e!430073 e!430071)))

(declare-fun lt!343957 () (_ BitVec 64))

(assert (=> b!772503 (= lt!343957 (select (arr!20287 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!343958 () Unit!26612)

(assert (=> b!772503 (= lt!343958 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!343957 #b00000000000000000000000000000000))))

(assert (=> b!772503 (arrayContainsKey!0 a!3186 lt!343957 #b00000000000000000000000000000000)))

(declare-fun lt!343956 () Unit!26612)

(assert (=> b!772503 (= lt!343956 lt!343958)))

(declare-fun res!522559 () Bool)

(assert (=> b!772503 (= res!522559 (= (seekEntryOrOpen!0 (select (arr!20287 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7894 #b00000000000000000000000000000000)))))

(assert (=> b!772503 (=> (not res!522559) (not e!430071))))

(declare-fun b!772504 () Bool)

(assert (=> b!772504 (= e!430072 e!430073)))

(declare-fun c!85370 () Bool)

(assert (=> b!772504 (= c!85370 (validKeyInArray!0 (select (arr!20287 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!772505 () Bool)

(assert (=> b!772505 (= e!430073 call!35144)))

(declare-fun bm!35141 () Bool)

(assert (=> bm!35141 (= call!35144 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!101823 (not res!522560)) b!772504))

(assert (= (and b!772504 c!85370) b!772503))

(assert (= (and b!772504 (not c!85370)) b!772505))

(assert (= (and b!772503 res!522559) b!772502))

(assert (= (or b!772502 b!772505) bm!35141))

(assert (=> b!772503 m!717425))

(declare-fun m!717443 () Bool)

(assert (=> b!772503 m!717443))

(declare-fun m!717445 () Bool)

(assert (=> b!772503 m!717445))

(assert (=> b!772503 m!717425))

(declare-fun m!717447 () Bool)

(assert (=> b!772503 m!717447))

(assert (=> b!772504 m!717425))

(assert (=> b!772504 m!717425))

(assert (=> b!772504 m!717427))

(declare-fun m!717449 () Bool)

(assert (=> bm!35141 m!717449))

(assert (=> b!772144 d!101823))

(declare-fun d!101825 () Bool)

(declare-fun res!522565 () Bool)

(declare-fun e!430078 () Bool)

(assert (=> d!101825 (=> res!522565 e!430078)))

(assert (=> d!101825 (= res!522565 (= (select (arr!20287 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!101825 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!430078)))

(declare-fun b!772510 () Bool)

(declare-fun e!430079 () Bool)

(assert (=> b!772510 (= e!430078 e!430079)))

(declare-fun res!522566 () Bool)

(assert (=> b!772510 (=> (not res!522566) (not e!430079))))

(assert (=> b!772510 (= res!522566 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20708 a!3186)))))

(declare-fun b!772511 () Bool)

(assert (=> b!772511 (= e!430079 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101825 (not res!522565)) b!772510))

(assert (= (and b!772510 res!522566) b!772511))

(assert (=> d!101825 m!717425))

(declare-fun m!717451 () Bool)

(assert (=> b!772511 m!717451))

(assert (=> b!772134 d!101825))

(assert (=> b!772145 d!101741))

(declare-fun b!772512 () Bool)

(declare-fun e!430082 () SeekEntryResult!7894)

(assert (=> b!772512 (= e!430082 Undefined!7894)))

(declare-fun b!772513 () Bool)

(declare-fun e!430081 () SeekEntryResult!7894)

(assert (=> b!772513 (= e!430081 (Found!7894 lt!343800))))

(declare-fun b!772514 () Bool)

(declare-fun c!85372 () Bool)

(declare-fun lt!343959 () (_ BitVec 64))

(assert (=> b!772514 (= c!85372 (= lt!343959 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!430080 () SeekEntryResult!7894)

(assert (=> b!772514 (= e!430081 e!430080)))

(declare-fun b!772515 () Bool)

(assert (=> b!772515 (= e!430080 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!343800 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) resIntermediateIndex!5 (select (arr!20287 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!772516 () Bool)

(assert (=> b!772516 (= e!430080 (MissingVacant!7894 resIntermediateIndex!5))))

(declare-fun b!772517 () Bool)

(assert (=> b!772517 (= e!430082 e!430081)))

(declare-fun c!85373 () Bool)

(assert (=> b!772517 (= c!85373 (= lt!343959 (select (arr!20287 a!3186) j!159)))))

(declare-fun lt!343960 () SeekEntryResult!7894)

(declare-fun d!101827 () Bool)

(assert (=> d!101827 (and (or ((_ is Undefined!7894) lt!343960) (not ((_ is Found!7894) lt!343960)) (and (bvsge (index!33944 lt!343960) #b00000000000000000000000000000000) (bvslt (index!33944 lt!343960) (size!20708 a!3186)))) (or ((_ is Undefined!7894) lt!343960) ((_ is Found!7894) lt!343960) (not ((_ is MissingVacant!7894) lt!343960)) (not (= (index!33946 lt!343960) resIntermediateIndex!5)) (and (bvsge (index!33946 lt!343960) #b00000000000000000000000000000000) (bvslt (index!33946 lt!343960) (size!20708 a!3186)))) (or ((_ is Undefined!7894) lt!343960) (ite ((_ is Found!7894) lt!343960) (= (select (arr!20287 a!3186) (index!33944 lt!343960)) (select (arr!20287 a!3186) j!159)) (and ((_ is MissingVacant!7894) lt!343960) (= (index!33946 lt!343960) resIntermediateIndex!5) (= (select (arr!20287 a!3186) (index!33946 lt!343960)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101827 (= lt!343960 e!430082)))

(declare-fun c!85371 () Bool)

(assert (=> d!101827 (= c!85371 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(assert (=> d!101827 (= lt!343959 (select (arr!20287 a!3186) lt!343800))))

(assert (=> d!101827 (validMask!0 mask!3328)))

(assert (=> d!101827 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343800 resIntermediateIndex!5 (select (arr!20287 a!3186) j!159) a!3186 mask!3328) lt!343960)))

(assert (= (and d!101827 c!85371) b!772512))

(assert (= (and d!101827 (not c!85371)) b!772517))

(assert (= (and b!772517 c!85373) b!772513))

(assert (= (and b!772517 (not c!85373)) b!772514))

(assert (= (and b!772514 c!85372) b!772516))

(assert (= (and b!772514 (not c!85372)) b!772515))

(assert (=> b!772515 m!717439))

(assert (=> b!772515 m!717439))

(assert (=> b!772515 m!717173))

(declare-fun m!717453 () Bool)

(assert (=> b!772515 m!717453))

(declare-fun m!717455 () Bool)

(assert (=> d!101827 m!717455))

(declare-fun m!717457 () Bool)

(assert (=> d!101827 m!717457))

(assert (=> d!101827 m!717437))

(assert (=> d!101827 m!717201))

(assert (=> b!772145 d!101827))

(declare-fun e!430084 () SeekEntryResult!7894)

(declare-fun lt!343963 () SeekEntryResult!7894)

(declare-fun b!772518 () Bool)

(assert (=> b!772518 (= e!430084 (seekKeyOrZeroReturnVacant!0 (x!64902 lt!343963) (index!33945 lt!343963) (index!33945 lt!343963) k0!2102 a!3186 mask!3328))))

(declare-fun b!772519 () Bool)

(declare-fun e!430083 () SeekEntryResult!7894)

(assert (=> b!772519 (= e!430083 (Found!7894 (index!33945 lt!343963)))))

(declare-fun d!101829 () Bool)

(declare-fun lt!343962 () SeekEntryResult!7894)

(assert (=> d!101829 (and (or ((_ is Undefined!7894) lt!343962) (not ((_ is Found!7894) lt!343962)) (and (bvsge (index!33944 lt!343962) #b00000000000000000000000000000000) (bvslt (index!33944 lt!343962) (size!20708 a!3186)))) (or ((_ is Undefined!7894) lt!343962) ((_ is Found!7894) lt!343962) (not ((_ is MissingZero!7894) lt!343962)) (and (bvsge (index!33943 lt!343962) #b00000000000000000000000000000000) (bvslt (index!33943 lt!343962) (size!20708 a!3186)))) (or ((_ is Undefined!7894) lt!343962) ((_ is Found!7894) lt!343962) ((_ is MissingZero!7894) lt!343962) (not ((_ is MissingVacant!7894) lt!343962)) (and (bvsge (index!33946 lt!343962) #b00000000000000000000000000000000) (bvslt (index!33946 lt!343962) (size!20708 a!3186)))) (or ((_ is Undefined!7894) lt!343962) (ite ((_ is Found!7894) lt!343962) (= (select (arr!20287 a!3186) (index!33944 lt!343962)) k0!2102) (ite ((_ is MissingZero!7894) lt!343962) (= (select (arr!20287 a!3186) (index!33943 lt!343962)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7894) lt!343962) (= (select (arr!20287 a!3186) (index!33946 lt!343962)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!430085 () SeekEntryResult!7894)

(assert (=> d!101829 (= lt!343962 e!430085)))

(declare-fun c!85375 () Bool)

(assert (=> d!101829 (= c!85375 (and ((_ is Intermediate!7894) lt!343963) (undefined!8706 lt!343963)))))

(assert (=> d!101829 (= lt!343963 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!101829 (validMask!0 mask!3328)))

(assert (=> d!101829 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!343962)))

(declare-fun b!772520 () Bool)

(declare-fun c!85376 () Bool)

(declare-fun lt!343961 () (_ BitVec 64))

(assert (=> b!772520 (= c!85376 (= lt!343961 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!772520 (= e!430083 e!430084)))

(declare-fun b!772521 () Bool)

(assert (=> b!772521 (= e!430085 Undefined!7894)))

(declare-fun b!772522 () Bool)

(assert (=> b!772522 (= e!430084 (MissingZero!7894 (index!33945 lt!343963)))))

(declare-fun b!772523 () Bool)

(assert (=> b!772523 (= e!430085 e!430083)))

(assert (=> b!772523 (= lt!343961 (select (arr!20287 a!3186) (index!33945 lt!343963)))))

(declare-fun c!85374 () Bool)

(assert (=> b!772523 (= c!85374 (= lt!343961 k0!2102))))

(assert (= (and d!101829 c!85375) b!772521))

(assert (= (and d!101829 (not c!85375)) b!772523))

(assert (= (and b!772523 c!85374) b!772519))

(assert (= (and b!772523 (not c!85374)) b!772520))

(assert (= (and b!772520 c!85376) b!772522))

(assert (= (and b!772520 (not c!85376)) b!772518))

(declare-fun m!717459 () Bool)

(assert (=> b!772518 m!717459))

(declare-fun m!717461 () Bool)

(assert (=> d!101829 m!717461))

(declare-fun m!717463 () Bool)

(assert (=> d!101829 m!717463))

(assert (=> d!101829 m!717201))

(declare-fun m!717465 () Bool)

(assert (=> d!101829 m!717465))

(declare-fun m!717467 () Bool)

(assert (=> d!101829 m!717467))

(declare-fun m!717469 () Bool)

(assert (=> d!101829 m!717469))

(assert (=> d!101829 m!717461))

(declare-fun m!717471 () Bool)

(assert (=> b!772523 m!717471))

(assert (=> b!772135 d!101829))

(check-sat (not b!772222) (not d!101795) (not bm!35141) (not d!101817) (not bm!35134) (not d!101827) (not d!101743) (not b!772492) (not b!772359) (not bm!35140) (not b!772283) (not b!772511) (not b!772358) (not b!772448) (not b!772488) (not d!101829) (not b!772260) (not b!772503) (not b!772424) (not d!101819) (not b!772504) (not d!101741) (not b!772251) (not b!772518) (not d!101755) (not b!772489) (not d!101779) (not d!101805) (not b!772515) (not b!772438) (not b!772501) (not d!101807) (not d!101749))
(check-sat)
