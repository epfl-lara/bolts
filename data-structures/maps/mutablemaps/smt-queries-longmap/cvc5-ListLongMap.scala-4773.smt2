; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65716 () Bool)

(assert start!65716)

(declare-fun res!509035 () Bool)

(declare-fun e!420219 () Bool)

(assert (=> start!65716 (=> (not res!509035) (not e!420219))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65716 (= res!509035 (validMask!0 mask!3328))))

(assert (=> start!65716 e!420219))

(assert (=> start!65716 true))

(declare-datatypes ((array!41842 0))(
  ( (array!41843 (arr!20031 (Array (_ BitVec 32) (_ BitVec 64))) (size!20452 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41842)

(declare-fun array_inv!15805 (array!41842) Bool)

(assert (=> start!65716 (array_inv!15805 a!3186)))

(declare-datatypes ((SeekEntryResult!7638 0))(
  ( (MissingZero!7638 (index!32919 (_ BitVec 32))) (Found!7638 (index!32920 (_ BitVec 32))) (Intermediate!7638 (undefined!8450 Bool) (index!32921 (_ BitVec 32)) (x!63861 (_ BitVec 32))) (Undefined!7638) (MissingVacant!7638 (index!32922 (_ BitVec 32))) )
))
(declare-fun lt!335217 () SeekEntryResult!7638)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!420212 () Bool)

(declare-fun b!753364 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41842 (_ BitVec 32)) SeekEntryResult!7638)

(assert (=> b!753364 (= e!420212 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20031 a!3186) j!159) a!3186 mask!3328) lt!335217))))

(declare-fun b!753365 () Bool)

(declare-fun e!420216 () Bool)

(declare-fun e!420221 () Bool)

(assert (=> b!753365 (= e!420216 e!420221)))

(declare-fun res!509022 () Bool)

(assert (=> b!753365 (=> res!509022 e!420221)))

(declare-fun lt!335216 () SeekEntryResult!7638)

(declare-fun lt!335211 () SeekEntryResult!7638)

(assert (=> b!753365 (= res!509022 (not (= lt!335216 lt!335211)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41842 (_ BitVec 32)) SeekEntryResult!7638)

(assert (=> b!753365 (= lt!335216 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20031 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!753366 () Bool)

(declare-datatypes ((Unit!25954 0))(
  ( (Unit!25955) )
))
(declare-fun e!420211 () Unit!25954)

(declare-fun Unit!25956 () Unit!25954)

(assert (=> b!753366 (= e!420211 Unit!25956)))

(declare-fun e!420218 () Bool)

(declare-fun b!753367 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!753367 (= e!420218 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20031 a!3186) j!159) a!3186 mask!3328) lt!335211))))

(declare-fun b!753368 () Bool)

(assert (=> b!753368 (= e!420212 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20031 a!3186) j!159) a!3186 mask!3328) (Found!7638 j!159)))))

(declare-fun b!753369 () Bool)

(declare-fun res!509027 () Bool)

(assert (=> b!753369 (=> (not res!509027) (not e!420219))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!753369 (= res!509027 (validKeyInArray!0 (select (arr!20031 a!3186) j!159)))))

(declare-fun b!753370 () Bool)

(declare-fun res!509023 () Bool)

(declare-fun e!420214 () Bool)

(assert (=> b!753370 (=> (not res!509023) (not e!420214))))

(declare-fun lt!335222 () array!41842)

(declare-fun lt!335219 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41842 (_ BitVec 32)) SeekEntryResult!7638)

(assert (=> b!753370 (= res!509023 (= (seekEntryOrOpen!0 lt!335219 lt!335222 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335219 lt!335222 mask!3328)))))

(declare-fun b!753371 () Bool)

(declare-fun e!420215 () Bool)

(assert (=> b!753371 (= e!420215 true)))

(assert (=> b!753371 e!420214))

(declare-fun res!509021 () Bool)

(assert (=> b!753371 (=> (not res!509021) (not e!420214))))

(declare-fun lt!335218 () (_ BitVec 64))

(assert (=> b!753371 (= res!509021 (= lt!335218 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335213 () Unit!25954)

(assert (=> b!753371 (= lt!335213 e!420211)))

(declare-fun c!82554 () Bool)

(assert (=> b!753371 (= c!82554 (= lt!335218 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!753372 () Bool)

(declare-fun res!509025 () Bool)

(declare-fun e!420220 () Bool)

(assert (=> b!753372 (=> (not res!509025) (not e!420220))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!753372 (= res!509025 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20031 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!753373 () Bool)

(declare-fun e!420217 () Bool)

(assert (=> b!753373 (= e!420219 e!420217)))

(declare-fun res!509033 () Bool)

(assert (=> b!753373 (=> (not res!509033) (not e!420217))))

(declare-fun lt!335212 () SeekEntryResult!7638)

(assert (=> b!753373 (= res!509033 (or (= lt!335212 (MissingZero!7638 i!1173)) (= lt!335212 (MissingVacant!7638 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!753373 (= lt!335212 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!753374 () Bool)

(declare-fun Unit!25957 () Unit!25954)

(assert (=> b!753374 (= e!420211 Unit!25957)))

(assert (=> b!753374 false))

(declare-fun b!753375 () Bool)

(declare-fun res!509030 () Bool)

(assert (=> b!753375 (=> (not res!509030) (not e!420217))))

(assert (=> b!753375 (= res!509030 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20452 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20452 a!3186))))))

(declare-fun b!753376 () Bool)

(declare-fun res!509036 () Bool)

(assert (=> b!753376 (=> (not res!509036) (not e!420219))))

(assert (=> b!753376 (= res!509036 (validKeyInArray!0 k!2102))))

(declare-fun b!753377 () Bool)

(assert (=> b!753377 (= e!420221 e!420215)))

(declare-fun res!509019 () Bool)

(assert (=> b!753377 (=> res!509019 e!420215)))

(assert (=> b!753377 (= res!509019 (= lt!335218 lt!335219))))

(assert (=> b!753377 (= lt!335218 (select (store (arr!20031 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!753378 () Bool)

(declare-fun res!509029 () Bool)

(assert (=> b!753378 (=> (not res!509029) (not e!420219))))

(declare-fun arrayContainsKey!0 (array!41842 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!753378 (= res!509029 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!753379 () Bool)

(declare-fun res!509034 () Bool)

(assert (=> b!753379 (=> (not res!509034) (not e!420217))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41842 (_ BitVec 32)) Bool)

(assert (=> b!753379 (= res!509034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!753380 () Bool)

(declare-fun lt!335220 () SeekEntryResult!7638)

(assert (=> b!753380 (= e!420214 (= lt!335220 lt!335216))))

(declare-fun b!753381 () Bool)

(declare-fun e!420213 () Bool)

(assert (=> b!753381 (= e!420213 (not e!420216))))

(declare-fun res!509026 () Bool)

(assert (=> b!753381 (=> res!509026 e!420216)))

(declare-fun lt!335215 () SeekEntryResult!7638)

(assert (=> b!753381 (= res!509026 (or (not (is-Intermediate!7638 lt!335215)) (bvslt x!1131 (x!63861 lt!335215)) (not (= x!1131 (x!63861 lt!335215))) (not (= index!1321 (index!32921 lt!335215)))))))

(assert (=> b!753381 e!420218))

(declare-fun res!509028 () Bool)

(assert (=> b!753381 (=> (not res!509028) (not e!420218))))

(assert (=> b!753381 (= res!509028 (= lt!335220 lt!335211))))

(assert (=> b!753381 (= lt!335211 (Found!7638 j!159))))

(assert (=> b!753381 (= lt!335220 (seekEntryOrOpen!0 (select (arr!20031 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!753381 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335214 () Unit!25954)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41842 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25954)

(assert (=> b!753381 (= lt!335214 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!753382 () Bool)

(assert (=> b!753382 (= e!420220 e!420213)))

(declare-fun res!509037 () Bool)

(assert (=> b!753382 (=> (not res!509037) (not e!420213))))

(declare-fun lt!335221 () SeekEntryResult!7638)

(assert (=> b!753382 (= res!509037 (= lt!335221 lt!335215))))

(assert (=> b!753382 (= lt!335215 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335219 lt!335222 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!753382 (= lt!335221 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335219 mask!3328) lt!335219 lt!335222 mask!3328))))

(assert (=> b!753382 (= lt!335219 (select (store (arr!20031 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!753382 (= lt!335222 (array!41843 (store (arr!20031 a!3186) i!1173 k!2102) (size!20452 a!3186)))))

(declare-fun b!753383 () Bool)

(declare-fun res!509032 () Bool)

(assert (=> b!753383 (=> (not res!509032) (not e!420220))))

(assert (=> b!753383 (= res!509032 e!420212)))

(declare-fun c!82553 () Bool)

(assert (=> b!753383 (= c!82553 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!753384 () Bool)

(assert (=> b!753384 (= e!420217 e!420220)))

(declare-fun res!509031 () Bool)

(assert (=> b!753384 (=> (not res!509031) (not e!420220))))

(assert (=> b!753384 (= res!509031 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20031 a!3186) j!159) mask!3328) (select (arr!20031 a!3186) j!159) a!3186 mask!3328) lt!335217))))

(assert (=> b!753384 (= lt!335217 (Intermediate!7638 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!753385 () Bool)

(declare-fun res!509020 () Bool)

(assert (=> b!753385 (=> (not res!509020) (not e!420219))))

(assert (=> b!753385 (= res!509020 (and (= (size!20452 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20452 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20452 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!753386 () Bool)

(declare-fun res!509024 () Bool)

(assert (=> b!753386 (=> (not res!509024) (not e!420217))))

(declare-datatypes ((List!14086 0))(
  ( (Nil!14083) (Cons!14082 (h!15154 (_ BitVec 64)) (t!20409 List!14086)) )
))
(declare-fun arrayNoDuplicates!0 (array!41842 (_ BitVec 32) List!14086) Bool)

(assert (=> b!753386 (= res!509024 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14083))))

(assert (= (and start!65716 res!509035) b!753385))

(assert (= (and b!753385 res!509020) b!753369))

(assert (= (and b!753369 res!509027) b!753376))

(assert (= (and b!753376 res!509036) b!753378))

(assert (= (and b!753378 res!509029) b!753373))

(assert (= (and b!753373 res!509033) b!753379))

(assert (= (and b!753379 res!509034) b!753386))

(assert (= (and b!753386 res!509024) b!753375))

(assert (= (and b!753375 res!509030) b!753384))

(assert (= (and b!753384 res!509031) b!753372))

(assert (= (and b!753372 res!509025) b!753383))

(assert (= (and b!753383 c!82553) b!753364))

(assert (= (and b!753383 (not c!82553)) b!753368))

(assert (= (and b!753383 res!509032) b!753382))

(assert (= (and b!753382 res!509037) b!753381))

(assert (= (and b!753381 res!509028) b!753367))

(assert (= (and b!753381 (not res!509026)) b!753365))

(assert (= (and b!753365 (not res!509022)) b!753377))

(assert (= (and b!753377 (not res!509019)) b!753371))

(assert (= (and b!753371 c!82554) b!753374))

(assert (= (and b!753371 (not c!82554)) b!753366))

(assert (= (and b!753371 res!509021) b!753370))

(assert (= (and b!753370 res!509023) b!753380))

(declare-fun m!702145 () Bool)

(assert (=> b!753365 m!702145))

(assert (=> b!753365 m!702145))

(declare-fun m!702147 () Bool)

(assert (=> b!753365 m!702147))

(declare-fun m!702149 () Bool)

(assert (=> b!753376 m!702149))

(assert (=> b!753384 m!702145))

(assert (=> b!753384 m!702145))

(declare-fun m!702151 () Bool)

(assert (=> b!753384 m!702151))

(assert (=> b!753384 m!702151))

(assert (=> b!753384 m!702145))

(declare-fun m!702153 () Bool)

(assert (=> b!753384 m!702153))

(declare-fun m!702155 () Bool)

(assert (=> b!753377 m!702155))

(declare-fun m!702157 () Bool)

(assert (=> b!753377 m!702157))

(assert (=> b!753381 m!702145))

(assert (=> b!753381 m!702145))

(declare-fun m!702159 () Bool)

(assert (=> b!753381 m!702159))

(declare-fun m!702161 () Bool)

(assert (=> b!753381 m!702161))

(declare-fun m!702163 () Bool)

(assert (=> b!753381 m!702163))

(declare-fun m!702165 () Bool)

(assert (=> b!753370 m!702165))

(declare-fun m!702167 () Bool)

(assert (=> b!753370 m!702167))

(assert (=> b!753367 m!702145))

(assert (=> b!753367 m!702145))

(declare-fun m!702169 () Bool)

(assert (=> b!753367 m!702169))

(declare-fun m!702171 () Bool)

(assert (=> b!753378 m!702171))

(declare-fun m!702173 () Bool)

(assert (=> start!65716 m!702173))

(declare-fun m!702175 () Bool)

(assert (=> start!65716 m!702175))

(declare-fun m!702177 () Bool)

(assert (=> b!753372 m!702177))

(declare-fun m!702179 () Bool)

(assert (=> b!753386 m!702179))

(assert (=> b!753369 m!702145))

(assert (=> b!753369 m!702145))

(declare-fun m!702181 () Bool)

(assert (=> b!753369 m!702181))

(declare-fun m!702183 () Bool)

(assert (=> b!753379 m!702183))

(assert (=> b!753368 m!702145))

(assert (=> b!753368 m!702145))

(assert (=> b!753368 m!702147))

(declare-fun m!702185 () Bool)

(assert (=> b!753373 m!702185))

(assert (=> b!753364 m!702145))

(assert (=> b!753364 m!702145))

(declare-fun m!702187 () Bool)

(assert (=> b!753364 m!702187))

(declare-fun m!702189 () Bool)

(assert (=> b!753382 m!702189))

(declare-fun m!702191 () Bool)

(assert (=> b!753382 m!702191))

(assert (=> b!753382 m!702155))

(declare-fun m!702193 () Bool)

(assert (=> b!753382 m!702193))

(assert (=> b!753382 m!702189))

(declare-fun m!702195 () Bool)

(assert (=> b!753382 m!702195))

(push 1)

