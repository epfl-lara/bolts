; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65598 () Bool)

(assert start!65598)

(declare-fun b!749387 () Bool)

(declare-fun res!505750 () Bool)

(declare-fun e!418184 () Bool)

(assert (=> b!749387 (=> (not res!505750) (not e!418184))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41724 0))(
  ( (array!41725 (arr!19972 (Array (_ BitVec 32) (_ BitVec 64))) (size!20393 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41724)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!749387 (= res!505750 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19972 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!749388 () Bool)

(declare-fun res!505757 () Bool)

(declare-fun e!418191 () Bool)

(assert (=> b!749388 (=> (not res!505757) (not e!418191))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41724 (_ BitVec 32)) Bool)

(assert (=> b!749388 (= res!505757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!749389 () Bool)

(declare-fun res!505763 () Bool)

(declare-fun e!418187 () Bool)

(assert (=> b!749389 (=> (not res!505763) (not e!418187))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41724 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!749389 (= res!505763 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!749390 () Bool)

(declare-fun e!418182 () Bool)

(declare-fun e!418190 () Bool)

(assert (=> b!749390 (= e!418182 (not e!418190))))

(declare-fun res!505767 () Bool)

(assert (=> b!749390 (=> res!505767 e!418190)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7579 0))(
  ( (MissingZero!7579 (index!32683 (_ BitVec 32))) (Found!7579 (index!32684 (_ BitVec 32))) (Intermediate!7579 (undefined!8391 Bool) (index!32685 (_ BitVec 32)) (x!63642 (_ BitVec 32))) (Undefined!7579) (MissingVacant!7579 (index!32686 (_ BitVec 32))) )
))
(declare-fun lt!333191 () SeekEntryResult!7579)

(get-info :version)

(assert (=> b!749390 (= res!505767 (or (not ((_ is Intermediate!7579) lt!333191)) (bvslt x!1131 (x!63642 lt!333191)) (not (= x!1131 (x!63642 lt!333191))) (not (= index!1321 (index!32685 lt!333191)))))))

(declare-fun e!418185 () Bool)

(assert (=> b!749390 e!418185))

(declare-fun res!505758 () Bool)

(assert (=> b!749390 (=> (not res!505758) (not e!418185))))

(declare-fun lt!333185 () SeekEntryResult!7579)

(declare-fun lt!333187 () SeekEntryResult!7579)

(assert (=> b!749390 (= res!505758 (= lt!333185 lt!333187))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!749390 (= lt!333187 (Found!7579 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41724 (_ BitVec 32)) SeekEntryResult!7579)

(assert (=> b!749390 (= lt!333185 (seekEntryOrOpen!0 (select (arr!19972 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!749390 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25718 0))(
  ( (Unit!25719) )
))
(declare-fun lt!333184 () Unit!25718)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41724 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25718)

(assert (=> b!749390 (= lt!333184 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!749391 () Bool)

(declare-fun e!418188 () Bool)

(declare-fun lt!333181 () SeekEntryResult!7579)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41724 (_ BitVec 32)) SeekEntryResult!7579)

(assert (=> b!749391 (= e!418188 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19972 a!3186) j!159) a!3186 mask!3328) lt!333181))))

(declare-fun b!749392 () Bool)

(declare-fun res!505751 () Bool)

(assert (=> b!749392 (=> res!505751 e!418190)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41724 (_ BitVec 32)) SeekEntryResult!7579)

(assert (=> b!749392 (= res!505751 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19972 a!3186) j!159) a!3186 mask!3328) lt!333187)))))

(declare-fun b!749393 () Bool)

(assert (=> b!749393 (= e!418191 e!418184)))

(declare-fun res!505765 () Bool)

(assert (=> b!749393 (=> (not res!505765) (not e!418184))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!749393 (= res!505765 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19972 a!3186) j!159) mask!3328) (select (arr!19972 a!3186) j!159) a!3186 mask!3328) lt!333181))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!749393 (= lt!333181 (Intermediate!7579 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!749394 () Bool)

(declare-fun lt!333189 () array!41724)

(declare-fun lt!333188 () (_ BitVec 64))

(declare-fun e!418183 () Bool)

(assert (=> b!749394 (= e!418183 (= (seekEntryOrOpen!0 lt!333188 lt!333189 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333188 lt!333189 mask!3328)))))

(declare-fun b!749395 () Bool)

(declare-fun e!418189 () Unit!25718)

(declare-fun Unit!25720 () Unit!25718)

(assert (=> b!749395 (= e!418189 Unit!25720)))

(declare-fun b!749396 () Bool)

(declare-fun res!505766 () Bool)

(assert (=> b!749396 (=> (not res!505766) (not e!418184))))

(assert (=> b!749396 (= res!505766 e!418188)))

(declare-fun c!82199 () Bool)

(assert (=> b!749396 (= c!82199 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!505754 () Bool)

(assert (=> start!65598 (=> (not res!505754) (not e!418187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65598 (= res!505754 (validMask!0 mask!3328))))

(assert (=> start!65598 e!418187))

(assert (=> start!65598 true))

(declare-fun array_inv!15746 (array!41724) Bool)

(assert (=> start!65598 (array_inv!15746 a!3186)))

(declare-fun b!749397 () Bool)

(declare-fun e!418186 () Bool)

(assert (=> b!749397 (= e!418190 e!418186)))

(declare-fun res!505755 () Bool)

(assert (=> b!749397 (=> res!505755 e!418186)))

(declare-fun lt!333182 () (_ BitVec 64))

(assert (=> b!749397 (= res!505755 (= lt!333182 lt!333188))))

(assert (=> b!749397 (= lt!333182 (select (store (arr!19972 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!749398 () Bool)

(assert (=> b!749398 (= e!418186 (bvsge mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!749398 e!418183))

(declare-fun res!505752 () Bool)

(assert (=> b!749398 (=> (not res!505752) (not e!418183))))

(assert (=> b!749398 (= res!505752 (= lt!333182 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333190 () Unit!25718)

(assert (=> b!749398 (= lt!333190 e!418189)))

(declare-fun c!82200 () Bool)

(assert (=> b!749398 (= c!82200 (= lt!333182 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!749399 () Bool)

(assert (=> b!749399 (= e!418187 e!418191)))

(declare-fun res!505759 () Bool)

(assert (=> b!749399 (=> (not res!505759) (not e!418191))))

(declare-fun lt!333183 () SeekEntryResult!7579)

(assert (=> b!749399 (= res!505759 (or (= lt!333183 (MissingZero!7579 i!1173)) (= lt!333183 (MissingVacant!7579 i!1173))))))

(assert (=> b!749399 (= lt!333183 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!749400 () Bool)

(declare-fun res!505756 () Bool)

(assert (=> b!749400 (=> (not res!505756) (not e!418187))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!749400 (= res!505756 (validKeyInArray!0 (select (arr!19972 a!3186) j!159)))))

(declare-fun b!749401 () Bool)

(declare-fun res!505761 () Bool)

(assert (=> b!749401 (=> (not res!505761) (not e!418191))))

(assert (=> b!749401 (= res!505761 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20393 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20393 a!3186))))))

(declare-fun b!749402 () Bool)

(assert (=> b!749402 (= e!418188 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19972 a!3186) j!159) a!3186 mask!3328) (Found!7579 j!159)))))

(declare-fun b!749403 () Bool)

(declare-fun res!505753 () Bool)

(assert (=> b!749403 (=> (not res!505753) (not e!418187))))

(assert (=> b!749403 (= res!505753 (validKeyInArray!0 k0!2102))))

(declare-fun b!749404 () Bool)

(declare-fun res!505760 () Bool)

(assert (=> b!749404 (=> (not res!505760) (not e!418191))))

(declare-datatypes ((List!14027 0))(
  ( (Nil!14024) (Cons!14023 (h!15095 (_ BitVec 64)) (t!20350 List!14027)) )
))
(declare-fun arrayNoDuplicates!0 (array!41724 (_ BitVec 32) List!14027) Bool)

(assert (=> b!749404 (= res!505760 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14024))))

(declare-fun b!749405 () Bool)

(declare-fun res!505762 () Bool)

(assert (=> b!749405 (=> (not res!505762) (not e!418187))))

(assert (=> b!749405 (= res!505762 (and (= (size!20393 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20393 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20393 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!749406 () Bool)

(assert (=> b!749406 (= e!418184 e!418182)))

(declare-fun res!505764 () Bool)

(assert (=> b!749406 (=> (not res!505764) (not e!418182))))

(declare-fun lt!333186 () SeekEntryResult!7579)

(assert (=> b!749406 (= res!505764 (= lt!333186 lt!333191))))

(assert (=> b!749406 (= lt!333191 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333188 lt!333189 mask!3328))))

(assert (=> b!749406 (= lt!333186 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333188 mask!3328) lt!333188 lt!333189 mask!3328))))

(assert (=> b!749406 (= lt!333188 (select (store (arr!19972 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!749406 (= lt!333189 (array!41725 (store (arr!19972 a!3186) i!1173 k0!2102) (size!20393 a!3186)))))

(declare-fun b!749407 () Bool)

(assert (=> b!749407 (= e!418185 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19972 a!3186) j!159) a!3186 mask!3328) lt!333187))))

(declare-fun b!749408 () Bool)

(declare-fun Unit!25721 () Unit!25718)

(assert (=> b!749408 (= e!418189 Unit!25721)))

(assert (=> b!749408 false))

(assert (= (and start!65598 res!505754) b!749405))

(assert (= (and b!749405 res!505762) b!749400))

(assert (= (and b!749400 res!505756) b!749403))

(assert (= (and b!749403 res!505753) b!749389))

(assert (= (and b!749389 res!505763) b!749399))

(assert (= (and b!749399 res!505759) b!749388))

(assert (= (and b!749388 res!505757) b!749404))

(assert (= (and b!749404 res!505760) b!749401))

(assert (= (and b!749401 res!505761) b!749393))

(assert (= (and b!749393 res!505765) b!749387))

(assert (= (and b!749387 res!505750) b!749396))

(assert (= (and b!749396 c!82199) b!749391))

(assert (= (and b!749396 (not c!82199)) b!749402))

(assert (= (and b!749396 res!505766) b!749406))

(assert (= (and b!749406 res!505764) b!749390))

(assert (= (and b!749390 res!505758) b!749407))

(assert (= (and b!749390 (not res!505767)) b!749392))

(assert (= (and b!749392 (not res!505751)) b!749397))

(assert (= (and b!749397 (not res!505755)) b!749398))

(assert (= (and b!749398 c!82200) b!749408))

(assert (= (and b!749398 (not c!82200)) b!749395))

(assert (= (and b!749398 res!505752) b!749394))

(declare-fun m!699077 () Bool)

(assert (=> b!749407 m!699077))

(assert (=> b!749407 m!699077))

(declare-fun m!699079 () Bool)

(assert (=> b!749407 m!699079))

(declare-fun m!699081 () Bool)

(assert (=> start!65598 m!699081))

(declare-fun m!699083 () Bool)

(assert (=> start!65598 m!699083))

(declare-fun m!699085 () Bool)

(assert (=> b!749406 m!699085))

(declare-fun m!699087 () Bool)

(assert (=> b!749406 m!699087))

(declare-fun m!699089 () Bool)

(assert (=> b!749406 m!699089))

(declare-fun m!699091 () Bool)

(assert (=> b!749406 m!699091))

(declare-fun m!699093 () Bool)

(assert (=> b!749406 m!699093))

(assert (=> b!749406 m!699085))

(declare-fun m!699095 () Bool)

(assert (=> b!749388 m!699095))

(declare-fun m!699097 () Bool)

(assert (=> b!749387 m!699097))

(declare-fun m!699099 () Bool)

(assert (=> b!749399 m!699099))

(assert (=> b!749392 m!699077))

(assert (=> b!749392 m!699077))

(declare-fun m!699101 () Bool)

(assert (=> b!749392 m!699101))

(assert (=> b!749390 m!699077))

(assert (=> b!749390 m!699077))

(declare-fun m!699103 () Bool)

(assert (=> b!749390 m!699103))

(declare-fun m!699105 () Bool)

(assert (=> b!749390 m!699105))

(declare-fun m!699107 () Bool)

(assert (=> b!749390 m!699107))

(assert (=> b!749400 m!699077))

(assert (=> b!749400 m!699077))

(declare-fun m!699109 () Bool)

(assert (=> b!749400 m!699109))

(assert (=> b!749393 m!699077))

(assert (=> b!749393 m!699077))

(declare-fun m!699111 () Bool)

(assert (=> b!749393 m!699111))

(assert (=> b!749393 m!699111))

(assert (=> b!749393 m!699077))

(declare-fun m!699113 () Bool)

(assert (=> b!749393 m!699113))

(declare-fun m!699115 () Bool)

(assert (=> b!749389 m!699115))

(assert (=> b!749397 m!699091))

(declare-fun m!699117 () Bool)

(assert (=> b!749397 m!699117))

(declare-fun m!699119 () Bool)

(assert (=> b!749394 m!699119))

(declare-fun m!699121 () Bool)

(assert (=> b!749394 m!699121))

(assert (=> b!749391 m!699077))

(assert (=> b!749391 m!699077))

(declare-fun m!699123 () Bool)

(assert (=> b!749391 m!699123))

(declare-fun m!699125 () Bool)

(assert (=> b!749404 m!699125))

(declare-fun m!699127 () Bool)

(assert (=> b!749403 m!699127))

(assert (=> b!749402 m!699077))

(assert (=> b!749402 m!699077))

(assert (=> b!749402 m!699101))

(check-sat (not b!749399) (not b!749388) (not b!749392) (not b!749404) (not start!65598) (not b!749406) (not b!749400) (not b!749403) (not b!749394) (not b!749390) (not b!749402) (not b!749389) (not b!749393) (not b!749391) (not b!749407))
(check-sat)
