; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65874 () Bool)

(assert start!65874)

(declare-fun b!758788 () Bool)

(declare-fun e!423070 () Bool)

(declare-fun e!423061 () Bool)

(assert (=> b!758788 (= e!423070 e!423061)))

(declare-fun res!513509 () Bool)

(assert (=> b!758788 (=> (not res!513509) (not e!423061))))

(declare-datatypes ((array!42000 0))(
  ( (array!42001 (arr!20110 (Array (_ BitVec 32) (_ BitVec 64))) (size!20531 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42000)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7717 0))(
  ( (MissingZero!7717 (index!33235 (_ BitVec 32))) (Found!7717 (index!33236 (_ BitVec 32))) (Intermediate!7717 (undefined!8529 Bool) (index!33237 (_ BitVec 32)) (x!64148 (_ BitVec 32))) (Undefined!7717) (MissingVacant!7717 (index!33238 (_ BitVec 32))) )
))
(declare-fun lt!338160 () SeekEntryResult!7717)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42000 (_ BitVec 32)) SeekEntryResult!7717)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!758788 (= res!513509 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20110 a!3186) j!159) mask!3328) (select (arr!20110 a!3186) j!159) a!3186 mask!3328) lt!338160))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!758788 (= lt!338160 (Intermediate!7717 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!758789 () Bool)

(declare-fun e!423072 () Bool)

(declare-fun e!423060 () Bool)

(assert (=> b!758789 (= e!423072 e!423060)))

(declare-fun res!513506 () Bool)

(assert (=> b!758789 (=> res!513506 e!423060)))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!758789 (= res!513506 (or (not (= (select (arr!20110 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!338159 () SeekEntryResult!7717)

(declare-fun lt!338151 () SeekEntryResult!7717)

(declare-fun lt!338154 () SeekEntryResult!7717)

(declare-fun lt!338152 () SeekEntryResult!7717)

(assert (=> b!758789 (and (= lt!338154 lt!338151) (= lt!338152 lt!338159))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!338165 () array!42000)

(declare-fun lt!338163 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42000 (_ BitVec 32)) SeekEntryResult!7717)

(assert (=> b!758789 (= lt!338151 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!338163 lt!338165 mask!3328))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42000 (_ BitVec 32)) SeekEntryResult!7717)

(assert (=> b!758789 (= lt!338154 (seekEntryOrOpen!0 lt!338163 lt!338165 mask!3328))))

(declare-fun lt!338158 () (_ BitVec 64))

(assert (=> b!758789 (= lt!338158 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!26270 0))(
  ( (Unit!26271) )
))
(declare-fun lt!338157 () Unit!26270)

(declare-fun e!423067 () Unit!26270)

(assert (=> b!758789 (= lt!338157 e!423067)))

(declare-fun c!83028 () Bool)

(assert (=> b!758789 (= c!83028 (= lt!338158 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!758790 () Bool)

(declare-fun res!513510 () Bool)

(declare-fun e!423064 () Bool)

(assert (=> b!758790 (=> (not res!513510) (not e!423064))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!758790 (= res!513510 (validKeyInArray!0 (select (arr!20110 a!3186) j!159)))))

(declare-fun b!758791 () Bool)

(declare-fun e!423062 () Bool)

(assert (=> b!758791 (= e!423062 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20110 a!3186) j!159) a!3186 mask!3328) (Found!7717 j!159)))))

(declare-fun b!758792 () Bool)

(declare-fun res!513512 () Bool)

(assert (=> b!758792 (=> (not res!513512) (not e!423064))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42000 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!758792 (= res!513512 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!758793 () Bool)

(declare-fun e!423068 () Bool)

(assert (=> b!758793 (= e!423068 (validKeyInArray!0 lt!338163))))

(declare-fun res!513508 () Bool)

(assert (=> start!65874 (=> (not res!513508) (not e!423064))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65874 (= res!513508 (validMask!0 mask!3328))))

(assert (=> start!65874 e!423064))

(assert (=> start!65874 true))

(declare-fun array_inv!15884 (array!42000) Bool)

(assert (=> start!65874 (array_inv!15884 a!3186)))

(declare-fun b!758794 () Bool)

(declare-fun e!423065 () Bool)

(declare-fun e!423071 () Bool)

(assert (=> b!758794 (= e!423065 (not e!423071))))

(declare-fun res!513497 () Bool)

(assert (=> b!758794 (=> res!513497 e!423071)))

(declare-fun lt!338156 () SeekEntryResult!7717)

(get-info :version)

(assert (=> b!758794 (= res!513497 (or (not ((_ is Intermediate!7717) lt!338156)) (bvslt x!1131 (x!64148 lt!338156)) (not (= x!1131 (x!64148 lt!338156))) (not (= index!1321 (index!33237 lt!338156)))))))

(declare-fun e!423063 () Bool)

(assert (=> b!758794 e!423063))

(declare-fun res!513501 () Bool)

(assert (=> b!758794 (=> (not res!513501) (not e!423063))))

(declare-fun lt!338155 () SeekEntryResult!7717)

(assert (=> b!758794 (= res!513501 (= lt!338152 lt!338155))))

(assert (=> b!758794 (= lt!338155 (Found!7717 j!159))))

(assert (=> b!758794 (= lt!338152 (seekEntryOrOpen!0 (select (arr!20110 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42000 (_ BitVec 32)) Bool)

(assert (=> b!758794 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!338153 () Unit!26270)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42000 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26270)

(assert (=> b!758794 (= lt!338153 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!758795 () Bool)

(declare-fun res!513503 () Bool)

(assert (=> b!758795 (=> (not res!513503) (not e!423070))))

(assert (=> b!758795 (= res!513503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!758796 () Bool)

(assert (=> b!758796 (= e!423062 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20110 a!3186) j!159) a!3186 mask!3328) lt!338160))))

(declare-fun b!758797 () Bool)

(declare-fun res!513502 () Bool)

(assert (=> b!758797 (=> (not res!513502) (not e!423070))))

(assert (=> b!758797 (= res!513502 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20531 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20531 a!3186))))))

(declare-fun b!758798 () Bool)

(assert (=> b!758798 (= e!423063 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20110 a!3186) j!159) a!3186 mask!3328) lt!338155))))

(declare-fun b!758799 () Bool)

(declare-fun res!513513 () Bool)

(assert (=> b!758799 (=> (not res!513513) (not e!423061))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!758799 (= res!513513 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20110 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!758800 () Bool)

(declare-fun res!513507 () Bool)

(assert (=> b!758800 (=> (not res!513507) (not e!423070))))

(declare-datatypes ((List!14165 0))(
  ( (Nil!14162) (Cons!14161 (h!15233 (_ BitVec 64)) (t!20488 List!14165)) )
))
(declare-fun arrayNoDuplicates!0 (array!42000 (_ BitVec 32) List!14165) Bool)

(assert (=> b!758800 (= res!513507 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14162))))

(declare-fun b!758801 () Bool)

(declare-fun res!513505 () Bool)

(assert (=> b!758801 (=> (not res!513505) (not e!423061))))

(assert (=> b!758801 (= res!513505 e!423062)))

(declare-fun c!83027 () Bool)

(assert (=> b!758801 (= c!83027 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!758802 () Bool)

(declare-fun res!513496 () Bool)

(assert (=> b!758802 (=> (not res!513496) (not e!423064))))

(assert (=> b!758802 (= res!513496 (validKeyInArray!0 k0!2102))))

(declare-fun b!758803 () Bool)

(assert (=> b!758803 (= e!423060 e!423068)))

(declare-fun res!513511 () Bool)

(assert (=> b!758803 (=> res!513511 e!423068)))

(assert (=> b!758803 (= res!513511 (bvslt mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!758803 (= lt!338151 lt!338159)))

(declare-fun lt!338161 () Unit!26270)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!42000 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26270)

(assert (=> b!758803 (= lt!338161 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k0!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun b!758804 () Bool)

(declare-fun Unit!26272 () Unit!26270)

(assert (=> b!758804 (= e!423067 Unit!26272)))

(declare-fun b!758805 () Bool)

(declare-fun e!423069 () Bool)

(assert (=> b!758805 (= e!423071 e!423069)))

(declare-fun res!513500 () Bool)

(assert (=> b!758805 (=> res!513500 e!423069)))

(assert (=> b!758805 (= res!513500 (not (= lt!338159 lt!338155)))))

(assert (=> b!758805 (= lt!338159 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20110 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!758806 () Bool)

(assert (=> b!758806 (= e!423064 e!423070)))

(declare-fun res!513504 () Bool)

(assert (=> b!758806 (=> (not res!513504) (not e!423070))))

(declare-fun lt!338162 () SeekEntryResult!7717)

(assert (=> b!758806 (= res!513504 (or (= lt!338162 (MissingZero!7717 i!1173)) (= lt!338162 (MissingVacant!7717 i!1173))))))

(assert (=> b!758806 (= lt!338162 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!758807 () Bool)

(assert (=> b!758807 (= e!423061 e!423065)))

(declare-fun res!513499 () Bool)

(assert (=> b!758807 (=> (not res!513499) (not e!423065))))

(declare-fun lt!338164 () SeekEntryResult!7717)

(assert (=> b!758807 (= res!513499 (= lt!338164 lt!338156))))

(assert (=> b!758807 (= lt!338156 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338163 lt!338165 mask!3328))))

(assert (=> b!758807 (= lt!338164 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338163 mask!3328) lt!338163 lt!338165 mask!3328))))

(assert (=> b!758807 (= lt!338163 (select (store (arr!20110 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!758807 (= lt!338165 (array!42001 (store (arr!20110 a!3186) i!1173 k0!2102) (size!20531 a!3186)))))

(declare-fun b!758808 () Bool)

(declare-fun res!513495 () Bool)

(assert (=> b!758808 (=> (not res!513495) (not e!423064))))

(assert (=> b!758808 (= res!513495 (and (= (size!20531 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20531 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20531 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!758809 () Bool)

(declare-fun Unit!26273 () Unit!26270)

(assert (=> b!758809 (= e!423067 Unit!26273)))

(assert (=> b!758809 false))

(declare-fun b!758810 () Bool)

(assert (=> b!758810 (= e!423069 e!423072)))

(declare-fun res!513498 () Bool)

(assert (=> b!758810 (=> res!513498 e!423072)))

(assert (=> b!758810 (= res!513498 (= lt!338158 lt!338163))))

(assert (=> b!758810 (= lt!338158 (select (store (arr!20110 a!3186) i!1173 k0!2102) index!1321))))

(assert (= (and start!65874 res!513508) b!758808))

(assert (= (and b!758808 res!513495) b!758790))

(assert (= (and b!758790 res!513510) b!758802))

(assert (= (and b!758802 res!513496) b!758792))

(assert (= (and b!758792 res!513512) b!758806))

(assert (= (and b!758806 res!513504) b!758795))

(assert (= (and b!758795 res!513503) b!758800))

(assert (= (and b!758800 res!513507) b!758797))

(assert (= (and b!758797 res!513502) b!758788))

(assert (= (and b!758788 res!513509) b!758799))

(assert (= (and b!758799 res!513513) b!758801))

(assert (= (and b!758801 c!83027) b!758796))

(assert (= (and b!758801 (not c!83027)) b!758791))

(assert (= (and b!758801 res!513505) b!758807))

(assert (= (and b!758807 res!513499) b!758794))

(assert (= (and b!758794 res!513501) b!758798))

(assert (= (and b!758794 (not res!513497)) b!758805))

(assert (= (and b!758805 (not res!513500)) b!758810))

(assert (= (and b!758810 (not res!513498)) b!758789))

(assert (= (and b!758789 c!83028) b!758809))

(assert (= (and b!758789 (not c!83028)) b!758804))

(assert (= (and b!758789 (not res!513506)) b!758803))

(assert (= (and b!758803 (not res!513511)) b!758793))

(declare-fun m!706295 () Bool)

(assert (=> b!758806 m!706295))

(declare-fun m!706297 () Bool)

(assert (=> b!758798 m!706297))

(assert (=> b!758798 m!706297))

(declare-fun m!706299 () Bool)

(assert (=> b!758798 m!706299))

(declare-fun m!706301 () Bool)

(assert (=> b!758800 m!706301))

(declare-fun m!706303 () Bool)

(assert (=> b!758807 m!706303))

(declare-fun m!706305 () Bool)

(assert (=> b!758807 m!706305))

(declare-fun m!706307 () Bool)

(assert (=> b!758807 m!706307))

(assert (=> b!758807 m!706303))

(declare-fun m!706309 () Bool)

(assert (=> b!758807 m!706309))

(declare-fun m!706311 () Bool)

(assert (=> b!758807 m!706311))

(declare-fun m!706313 () Bool)

(assert (=> b!758792 m!706313))

(assert (=> b!758791 m!706297))

(assert (=> b!758791 m!706297))

(declare-fun m!706315 () Bool)

(assert (=> b!758791 m!706315))

(declare-fun m!706317 () Bool)

(assert (=> b!758793 m!706317))

(assert (=> b!758796 m!706297))

(assert (=> b!758796 m!706297))

(declare-fun m!706319 () Bool)

(assert (=> b!758796 m!706319))

(declare-fun m!706321 () Bool)

(assert (=> b!758803 m!706321))

(declare-fun m!706323 () Bool)

(assert (=> b!758799 m!706323))

(declare-fun m!706325 () Bool)

(assert (=> b!758802 m!706325))

(assert (=> b!758790 m!706297))

(assert (=> b!758790 m!706297))

(declare-fun m!706327 () Bool)

(assert (=> b!758790 m!706327))

(assert (=> b!758810 m!706307))

(declare-fun m!706329 () Bool)

(assert (=> b!758810 m!706329))

(assert (=> b!758794 m!706297))

(assert (=> b!758794 m!706297))

(declare-fun m!706331 () Bool)

(assert (=> b!758794 m!706331))

(declare-fun m!706333 () Bool)

(assert (=> b!758794 m!706333))

(declare-fun m!706335 () Bool)

(assert (=> b!758794 m!706335))

(declare-fun m!706337 () Bool)

(assert (=> b!758789 m!706337))

(declare-fun m!706339 () Bool)

(assert (=> b!758789 m!706339))

(declare-fun m!706341 () Bool)

(assert (=> b!758789 m!706341))

(assert (=> b!758788 m!706297))

(assert (=> b!758788 m!706297))

(declare-fun m!706343 () Bool)

(assert (=> b!758788 m!706343))

(assert (=> b!758788 m!706343))

(assert (=> b!758788 m!706297))

(declare-fun m!706345 () Bool)

(assert (=> b!758788 m!706345))

(assert (=> b!758805 m!706297))

(assert (=> b!758805 m!706297))

(assert (=> b!758805 m!706315))

(declare-fun m!706347 () Bool)

(assert (=> start!65874 m!706347))

(declare-fun m!706349 () Bool)

(assert (=> start!65874 m!706349))

(declare-fun m!706351 () Bool)

(assert (=> b!758795 m!706351))

(check-sat (not b!758802) (not b!758793) (not b!758789) (not start!65874) (not b!758807) (not b!758806) (not b!758800) (not b!758791) (not b!758805) (not b!758790) (not b!758798) (not b!758796) (not b!758795) (not b!758794) (not b!758792) (not b!758788) (not b!758803))
(check-sat)
