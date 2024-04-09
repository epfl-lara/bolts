; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65890 () Bool)

(assert start!65890)

(declare-fun b!759220 () Bool)

(declare-fun res!513874 () Bool)

(declare-fun e!423279 () Bool)

(assert (=> b!759220 (=> (not res!513874) (not e!423279))))

(declare-datatypes ((array!42016 0))(
  ( (array!42017 (arr!20118 (Array (_ BitVec 32) (_ BitVec 64))) (size!20539 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42016)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!759220 (= res!513874 (and (= (size!20539 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20539 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20539 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!759221 () Bool)

(declare-fun res!513876 () Bool)

(declare-fun e!423277 () Bool)

(assert (=> b!759221 (=> (not res!513876) (not e!423277))))

(declare-datatypes ((List!14173 0))(
  ( (Nil!14170) (Cons!14169 (h!15241 (_ BitVec 64)) (t!20496 List!14173)) )
))
(declare-fun arrayNoDuplicates!0 (array!42016 (_ BitVec 32) List!14173) Bool)

(assert (=> b!759221 (= res!513876 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14170))))

(declare-fun b!759222 () Bool)

(assert (=> b!759222 (= e!423279 e!423277)))

(declare-fun res!513882 () Bool)

(assert (=> b!759222 (=> (not res!513882) (not e!423277))))

(declare-datatypes ((SeekEntryResult!7725 0))(
  ( (MissingZero!7725 (index!33267 (_ BitVec 32))) (Found!7725 (index!33268 (_ BitVec 32))) (Intermediate!7725 (undefined!8537 Bool) (index!33269 (_ BitVec 32)) (x!64180 (_ BitVec 32))) (Undefined!7725) (MissingVacant!7725 (index!33270 (_ BitVec 32))) )
))
(declare-fun lt!338331 () SeekEntryResult!7725)

(assert (=> b!759222 (= res!513882 (or (= lt!338331 (MissingZero!7725 i!1173)) (= lt!338331 (MissingVacant!7725 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42016 (_ BitVec 32)) SeekEntryResult!7725)

(assert (=> b!759222 (= lt!338331 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!759223 () Bool)

(declare-fun res!513871 () Bool)

(declare-fun e!423272 () Bool)

(assert (=> b!759223 (=> (not res!513871) (not e!423272))))

(declare-fun e!423273 () Bool)

(assert (=> b!759223 (= res!513871 e!423273)))

(declare-fun c!83055 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!759223 (= c!83055 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!759224 () Bool)

(declare-fun e!423276 () Bool)

(assert (=> b!759224 (= e!423276 (not true))))

(declare-fun e!423274 () Bool)

(assert (=> b!759224 e!423274))

(declare-fun res!513873 () Bool)

(assert (=> b!759224 (=> (not res!513873) (not e!423274))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42016 (_ BitVec 32)) Bool)

(assert (=> b!759224 (= res!513873 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26290 0))(
  ( (Unit!26291) )
))
(declare-fun lt!338333 () Unit!26290)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42016 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26290)

(assert (=> b!759224 (= lt!338333 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!759225 () Bool)

(declare-fun res!513885 () Bool)

(assert (=> b!759225 (=> (not res!513885) (not e!423277))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!759225 (= res!513885 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20539 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20539 a!3186))))))

(declare-fun b!759226 () Bool)

(assert (=> b!759226 (= e!423272 e!423276)))

(declare-fun res!513879 () Bool)

(assert (=> b!759226 (=> (not res!513879) (not e!423276))))

(declare-fun lt!338332 () array!42016)

(declare-fun lt!338335 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42016 (_ BitVec 32)) SeekEntryResult!7725)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!759226 (= res!513879 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338335 mask!3328) lt!338335 lt!338332 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338335 lt!338332 mask!3328)))))

(assert (=> b!759226 (= lt!338335 (select (store (arr!20118 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!759226 (= lt!338332 (array!42017 (store (arr!20118 a!3186) i!1173 k!2102) (size!20539 a!3186)))))

(declare-fun b!759227 () Bool)

(declare-fun res!513881 () Bool)

(assert (=> b!759227 (=> (not res!513881) (not e!423279))))

(declare-fun arrayContainsKey!0 (array!42016 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!759227 (= res!513881 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!759228 () Bool)

(declare-fun lt!338336 () SeekEntryResult!7725)

(assert (=> b!759228 (= e!423273 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20118 a!3186) j!159) a!3186 mask!3328) lt!338336))))

(declare-fun e!423275 () Bool)

(declare-fun b!759229 () Bool)

(declare-fun lt!338334 () SeekEntryResult!7725)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42016 (_ BitVec 32)) SeekEntryResult!7725)

(assert (=> b!759229 (= e!423275 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20118 a!3186) j!159) a!3186 mask!3328) lt!338334))))

(declare-fun b!759230 () Bool)

(assert (=> b!759230 (= e!423277 e!423272)))

(declare-fun res!513872 () Bool)

(assert (=> b!759230 (=> (not res!513872) (not e!423272))))

(assert (=> b!759230 (= res!513872 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20118 a!3186) j!159) mask!3328) (select (arr!20118 a!3186) j!159) a!3186 mask!3328) lt!338336))))

(assert (=> b!759230 (= lt!338336 (Intermediate!7725 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!759231 () Bool)

(declare-fun res!513877 () Bool)

(assert (=> b!759231 (=> (not res!513877) (not e!423279))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!759231 (= res!513877 (validKeyInArray!0 (select (arr!20118 a!3186) j!159)))))

(declare-fun b!759232 () Bool)

(assert (=> b!759232 (= e!423273 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20118 a!3186) j!159) a!3186 mask!3328) (Found!7725 j!159)))))

(declare-fun b!759233 () Bool)

(assert (=> b!759233 (= e!423274 e!423275)))

(declare-fun res!513883 () Bool)

(assert (=> b!759233 (=> (not res!513883) (not e!423275))))

(assert (=> b!759233 (= res!513883 (= (seekEntryOrOpen!0 (select (arr!20118 a!3186) j!159) a!3186 mask!3328) lt!338334))))

(assert (=> b!759233 (= lt!338334 (Found!7725 j!159))))

(declare-fun b!759234 () Bool)

(declare-fun res!513880 () Bool)

(assert (=> b!759234 (=> (not res!513880) (not e!423277))))

(assert (=> b!759234 (= res!513880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!513875 () Bool)

(assert (=> start!65890 (=> (not res!513875) (not e!423279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65890 (= res!513875 (validMask!0 mask!3328))))

(assert (=> start!65890 e!423279))

(assert (=> start!65890 true))

(declare-fun array_inv!15892 (array!42016) Bool)

(assert (=> start!65890 (array_inv!15892 a!3186)))

(declare-fun b!759235 () Bool)

(declare-fun res!513878 () Bool)

(assert (=> b!759235 (=> (not res!513878) (not e!423279))))

(assert (=> b!759235 (= res!513878 (validKeyInArray!0 k!2102))))

(declare-fun b!759236 () Bool)

(declare-fun res!513884 () Bool)

(assert (=> b!759236 (=> (not res!513884) (not e!423272))))

(assert (=> b!759236 (= res!513884 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20118 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!65890 res!513875) b!759220))

(assert (= (and b!759220 res!513874) b!759231))

(assert (= (and b!759231 res!513877) b!759235))

(assert (= (and b!759235 res!513878) b!759227))

(assert (= (and b!759227 res!513881) b!759222))

(assert (= (and b!759222 res!513882) b!759234))

(assert (= (and b!759234 res!513880) b!759221))

(assert (= (and b!759221 res!513876) b!759225))

(assert (= (and b!759225 res!513885) b!759230))

(assert (= (and b!759230 res!513872) b!759236))

(assert (= (and b!759236 res!513884) b!759223))

(assert (= (and b!759223 c!83055) b!759228))

(assert (= (and b!759223 (not c!83055)) b!759232))

(assert (= (and b!759223 res!513871) b!759226))

(assert (= (and b!759226 res!513879) b!759224))

(assert (= (and b!759224 res!513873) b!759233))

(assert (= (and b!759233 res!513883) b!759229))

(declare-fun m!706687 () Bool)

(assert (=> b!759230 m!706687))

(assert (=> b!759230 m!706687))

(declare-fun m!706689 () Bool)

(assert (=> b!759230 m!706689))

(assert (=> b!759230 m!706689))

(assert (=> b!759230 m!706687))

(declare-fun m!706691 () Bool)

(assert (=> b!759230 m!706691))

(declare-fun m!706693 () Bool)

(assert (=> b!759226 m!706693))

(declare-fun m!706695 () Bool)

(assert (=> b!759226 m!706695))

(declare-fun m!706697 () Bool)

(assert (=> b!759226 m!706697))

(declare-fun m!706699 () Bool)

(assert (=> b!759226 m!706699))

(assert (=> b!759226 m!706693))

(declare-fun m!706701 () Bool)

(assert (=> b!759226 m!706701))

(assert (=> b!759231 m!706687))

(assert (=> b!759231 m!706687))

(declare-fun m!706703 () Bool)

(assert (=> b!759231 m!706703))

(assert (=> b!759233 m!706687))

(assert (=> b!759233 m!706687))

(declare-fun m!706705 () Bool)

(assert (=> b!759233 m!706705))

(assert (=> b!759228 m!706687))

(assert (=> b!759228 m!706687))

(declare-fun m!706707 () Bool)

(assert (=> b!759228 m!706707))

(declare-fun m!706709 () Bool)

(assert (=> b!759234 m!706709))

(declare-fun m!706711 () Bool)

(assert (=> b!759236 m!706711))

(declare-fun m!706713 () Bool)

(assert (=> b!759222 m!706713))

(declare-fun m!706715 () Bool)

(assert (=> b!759224 m!706715))

(declare-fun m!706717 () Bool)

(assert (=> b!759224 m!706717))

(declare-fun m!706719 () Bool)

(assert (=> b!759221 m!706719))

(declare-fun m!706721 () Bool)

(assert (=> start!65890 m!706721))

(declare-fun m!706723 () Bool)

(assert (=> start!65890 m!706723))

(assert (=> b!759229 m!706687))

(assert (=> b!759229 m!706687))

(declare-fun m!706725 () Bool)

(assert (=> b!759229 m!706725))

(declare-fun m!706727 () Bool)

(assert (=> b!759227 m!706727))

(declare-fun m!706729 () Bool)

(assert (=> b!759235 m!706729))

(assert (=> b!759232 m!706687))

(assert (=> b!759232 m!706687))

(declare-fun m!706731 () Bool)

(assert (=> b!759232 m!706731))

(push 1)

