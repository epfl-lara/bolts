; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64536 () Bool)

(assert start!64536)

(declare-fun b!726163 () Bool)

(declare-fun res!487307 () Bool)

(declare-fun e!406617 () Bool)

(assert (=> b!726163 (=> (not res!487307) (not e!406617))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41007 0))(
  ( (array!41008 (arr!19621 (Array (_ BitVec 32) (_ BitVec 64))) (size!20042 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41007)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!726163 (= res!487307 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20042 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20042 a!3186))))))

(declare-fun res!487308 () Bool)

(declare-fun e!406611 () Bool)

(assert (=> start!64536 (=> (not res!487308) (not e!406611))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64536 (= res!487308 (validMask!0 mask!3328))))

(assert (=> start!64536 e!406611))

(assert (=> start!64536 true))

(declare-fun array_inv!15395 (array!41007) Bool)

(assert (=> start!64536 (array_inv!15395 a!3186)))

(declare-fun b!726164 () Bool)

(declare-fun res!487314 () Bool)

(assert (=> b!726164 (=> (not res!487314) (not e!406611))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726164 (= res!487314 (validKeyInArray!0 (select (arr!19621 a!3186) j!159)))))

(declare-fun b!726165 () Bool)

(declare-fun e!406615 () Bool)

(assert (=> b!726165 (= e!406617 e!406615)))

(declare-fun res!487315 () Bool)

(assert (=> b!726165 (=> (not res!487315) (not e!406615))))

(declare-datatypes ((SeekEntryResult!7228 0))(
  ( (MissingZero!7228 (index!31279 (_ BitVec 32))) (Found!7228 (index!31280 (_ BitVec 32))) (Intermediate!7228 (undefined!8040 Bool) (index!31281 (_ BitVec 32)) (x!62295 (_ BitVec 32))) (Undefined!7228) (MissingVacant!7228 (index!31282 (_ BitVec 32))) )
))
(declare-fun lt!321617 () SeekEntryResult!7228)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41007 (_ BitVec 32)) SeekEntryResult!7228)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726165 (= res!487315 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19621 a!3186) j!159) mask!3328) (select (arr!19621 a!3186) j!159) a!3186 mask!3328) lt!321617))))

(assert (=> b!726165 (= lt!321617 (Intermediate!7228 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726166 () Bool)

(declare-fun res!487311 () Bool)

(assert (=> b!726166 (=> (not res!487311) (not e!406615))))

(declare-fun e!406612 () Bool)

(assert (=> b!726166 (= res!487311 e!406612)))

(declare-fun c!79803 () Bool)

(assert (=> b!726166 (= c!79803 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726167 () Bool)

(declare-fun e!406610 () Bool)

(declare-fun e!406614 () Bool)

(assert (=> b!726167 (= e!406610 e!406614)))

(declare-fun res!487313 () Bool)

(assert (=> b!726167 (=> (not res!487313) (not e!406614))))

(declare-fun lt!321619 () SeekEntryResult!7228)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41007 (_ BitVec 32)) SeekEntryResult!7228)

(assert (=> b!726167 (= res!487313 (= (seekEntryOrOpen!0 (select (arr!19621 a!3186) j!159) a!3186 mask!3328) lt!321619))))

(assert (=> b!726167 (= lt!321619 (Found!7228 j!159))))

(declare-fun b!726168 () Bool)

(assert (=> b!726168 (= e!406611 e!406617)))

(declare-fun res!487306 () Bool)

(assert (=> b!726168 (=> (not res!487306) (not e!406617))))

(declare-fun lt!321620 () SeekEntryResult!7228)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!726168 (= res!487306 (or (= lt!321620 (MissingZero!7228 i!1173)) (= lt!321620 (MissingVacant!7228 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!726168 (= lt!321620 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!726169 () Bool)

(declare-fun res!487317 () Bool)

(assert (=> b!726169 (=> (not res!487317) (not e!406611))))

(declare-fun arrayContainsKey!0 (array!41007 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726169 (= res!487317 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!726170 () Bool)

(declare-fun res!487309 () Bool)

(assert (=> b!726170 (=> (not res!487309) (not e!406617))))

(declare-datatypes ((List!13676 0))(
  ( (Nil!13673) (Cons!13672 (h!14729 (_ BitVec 64)) (t!19999 List!13676)) )
))
(declare-fun arrayNoDuplicates!0 (array!41007 (_ BitVec 32) List!13676) Bool)

(assert (=> b!726170 (= res!487309 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13673))))

(declare-fun b!726171 () Bool)

(declare-fun res!487303 () Bool)

(assert (=> b!726171 (=> (not res!487303) (not e!406611))))

(assert (=> b!726171 (= res!487303 (and (= (size!20042 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20042 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20042 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!726172 () Bool)

(declare-fun lt!321613 () SeekEntryResult!7228)

(declare-fun e!406613 () Bool)

(get-info :version)

(assert (=> b!726172 (= e!406613 (not (or (not ((_ is Intermediate!7228) lt!321613)) (bvsge x!1131 (x!62295 lt!321613)) (bvsge mask!3328 #b00000000000000000000000000000000))))))

(assert (=> b!726172 e!406610))

(declare-fun res!487305 () Bool)

(assert (=> b!726172 (=> (not res!487305) (not e!406610))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41007 (_ BitVec 32)) Bool)

(assert (=> b!726172 (= res!487305 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24774 0))(
  ( (Unit!24775) )
))
(declare-fun lt!321614 () Unit!24774)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41007 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24774)

(assert (=> b!726172 (= lt!321614 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726173 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41007 (_ BitVec 32)) SeekEntryResult!7228)

(assert (=> b!726173 (= e!406612 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19621 a!3186) j!159) a!3186 mask!3328) (Found!7228 j!159)))))

(declare-fun b!726174 () Bool)

(declare-fun res!487310 () Bool)

(assert (=> b!726174 (=> (not res!487310) (not e!406617))))

(assert (=> b!726174 (= res!487310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!726175 () Bool)

(assert (=> b!726175 (= e!406614 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19621 a!3186) j!159) a!3186 mask!3328) lt!321619))))

(declare-fun b!726176 () Bool)

(assert (=> b!726176 (= e!406612 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19621 a!3186) j!159) a!3186 mask!3328) lt!321617))))

(declare-fun b!726177 () Bool)

(assert (=> b!726177 (= e!406615 e!406613)))

(declare-fun res!487304 () Bool)

(assert (=> b!726177 (=> (not res!487304) (not e!406613))))

(declare-fun lt!321616 () SeekEntryResult!7228)

(assert (=> b!726177 (= res!487304 (= lt!321616 lt!321613))))

(declare-fun lt!321618 () (_ BitVec 64))

(declare-fun lt!321615 () array!41007)

(assert (=> b!726177 (= lt!321613 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321618 lt!321615 mask!3328))))

(assert (=> b!726177 (= lt!321616 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321618 mask!3328) lt!321618 lt!321615 mask!3328))))

(assert (=> b!726177 (= lt!321618 (select (store (arr!19621 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!726177 (= lt!321615 (array!41008 (store (arr!19621 a!3186) i!1173 k0!2102) (size!20042 a!3186)))))

(declare-fun b!726178 () Bool)

(declare-fun res!487312 () Bool)

(assert (=> b!726178 (=> (not res!487312) (not e!406615))))

(assert (=> b!726178 (= res!487312 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19621 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726179 () Bool)

(declare-fun res!487316 () Bool)

(assert (=> b!726179 (=> (not res!487316) (not e!406611))))

(assert (=> b!726179 (= res!487316 (validKeyInArray!0 k0!2102))))

(assert (= (and start!64536 res!487308) b!726171))

(assert (= (and b!726171 res!487303) b!726164))

(assert (= (and b!726164 res!487314) b!726179))

(assert (= (and b!726179 res!487316) b!726169))

(assert (= (and b!726169 res!487317) b!726168))

(assert (= (and b!726168 res!487306) b!726174))

(assert (= (and b!726174 res!487310) b!726170))

(assert (= (and b!726170 res!487309) b!726163))

(assert (= (and b!726163 res!487307) b!726165))

(assert (= (and b!726165 res!487315) b!726178))

(assert (= (and b!726178 res!487312) b!726166))

(assert (= (and b!726166 c!79803) b!726176))

(assert (= (and b!726166 (not c!79803)) b!726173))

(assert (= (and b!726166 res!487311) b!726177))

(assert (= (and b!726177 res!487304) b!726172))

(assert (= (and b!726172 res!487305) b!726167))

(assert (= (and b!726167 res!487313) b!726175))

(declare-fun m!680339 () Bool)

(assert (=> b!726173 m!680339))

(assert (=> b!726173 m!680339))

(declare-fun m!680341 () Bool)

(assert (=> b!726173 m!680341))

(declare-fun m!680343 () Bool)

(assert (=> start!64536 m!680343))

(declare-fun m!680345 () Bool)

(assert (=> start!64536 m!680345))

(declare-fun m!680347 () Bool)

(assert (=> b!726172 m!680347))

(declare-fun m!680349 () Bool)

(assert (=> b!726172 m!680349))

(declare-fun m!680351 () Bool)

(assert (=> b!726169 m!680351))

(declare-fun m!680353 () Bool)

(assert (=> b!726179 m!680353))

(declare-fun m!680355 () Bool)

(assert (=> b!726174 m!680355))

(assert (=> b!726176 m!680339))

(assert (=> b!726176 m!680339))

(declare-fun m!680357 () Bool)

(assert (=> b!726176 m!680357))

(assert (=> b!726164 m!680339))

(assert (=> b!726164 m!680339))

(declare-fun m!680359 () Bool)

(assert (=> b!726164 m!680359))

(declare-fun m!680361 () Bool)

(assert (=> b!726168 m!680361))

(assert (=> b!726175 m!680339))

(assert (=> b!726175 m!680339))

(declare-fun m!680363 () Bool)

(assert (=> b!726175 m!680363))

(assert (=> b!726165 m!680339))

(assert (=> b!726165 m!680339))

(declare-fun m!680365 () Bool)

(assert (=> b!726165 m!680365))

(assert (=> b!726165 m!680365))

(assert (=> b!726165 m!680339))

(declare-fun m!680367 () Bool)

(assert (=> b!726165 m!680367))

(declare-fun m!680369 () Bool)

(assert (=> b!726177 m!680369))

(declare-fun m!680371 () Bool)

(assert (=> b!726177 m!680371))

(assert (=> b!726177 m!680369))

(declare-fun m!680373 () Bool)

(assert (=> b!726177 m!680373))

(declare-fun m!680375 () Bool)

(assert (=> b!726177 m!680375))

(declare-fun m!680377 () Bool)

(assert (=> b!726177 m!680377))

(declare-fun m!680379 () Bool)

(assert (=> b!726178 m!680379))

(assert (=> b!726167 m!680339))

(assert (=> b!726167 m!680339))

(declare-fun m!680381 () Bool)

(assert (=> b!726167 m!680381))

(declare-fun m!680383 () Bool)

(assert (=> b!726170 m!680383))

(check-sat (not b!726177) (not b!726169) (not b!726179) (not b!726164) (not start!64536) (not b!726170) (not b!726172) (not b!726168) (not b!726175) (not b!726165) (not b!726174) (not b!726173) (not b!726167) (not b!726176))
(check-sat)
