; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65682 () Bool)

(assert start!65682)

(declare-fun b!752191 () Bool)

(declare-fun res!508060 () Bool)

(declare-fun e!419604 () Bool)

(assert (=> b!752191 (=> (not res!508060) (not e!419604))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41808 0))(
  ( (array!41809 (arr!20014 (Array (_ BitVec 32) (_ BitVec 64))) (size!20435 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41808)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!752191 (= res!508060 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20435 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20435 a!3186))))))

(declare-fun res!508058 () Bool)

(declare-fun e!419603 () Bool)

(assert (=> start!65682 (=> (not res!508058) (not e!419603))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65682 (= res!508058 (validMask!0 mask!3328))))

(assert (=> start!65682 e!419603))

(assert (=> start!65682 true))

(declare-fun array_inv!15788 (array!41808) Bool)

(assert (=> start!65682 (array_inv!15788 a!3186)))

(declare-fun b!752192 () Bool)

(declare-datatypes ((Unit!25886 0))(
  ( (Unit!25887) )
))
(declare-fun e!419607 () Unit!25886)

(declare-fun Unit!25888 () Unit!25886)

(assert (=> b!752192 (= e!419607 Unit!25888)))

(declare-fun b!752193 () Bool)

(declare-fun e!419610 () Bool)

(declare-fun e!419600 () Bool)

(assert (=> b!752193 (= e!419610 e!419600)))

(declare-fun res!508063 () Bool)

(assert (=> b!752193 (=> res!508063 e!419600)))

(declare-datatypes ((SeekEntryResult!7621 0))(
  ( (MissingZero!7621 (index!32851 (_ BitVec 32))) (Found!7621 (index!32852 (_ BitVec 32))) (Intermediate!7621 (undefined!8433 Bool) (index!32853 (_ BitVec 32)) (x!63796 (_ BitVec 32))) (Undefined!7621) (MissingVacant!7621 (index!32854 (_ BitVec 32))) )
))
(declare-fun lt!334604 () SeekEntryResult!7621)

(declare-fun lt!334602 () SeekEntryResult!7621)

(assert (=> b!752193 (= res!508063 (not (= lt!334604 lt!334602)))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41808 (_ BitVec 32)) SeekEntryResult!7621)

(assert (=> b!752193 (= lt!334604 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20014 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!752194 () Bool)

(declare-fun res!508055 () Bool)

(assert (=> b!752194 (=> (not res!508055) (not e!419603))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!752194 (= res!508055 (validKeyInArray!0 k0!2102))))

(declare-fun b!752195 () Bool)

(declare-fun e!419605 () Bool)

(declare-fun lt!334609 () SeekEntryResult!7621)

(assert (=> b!752195 (= e!419605 (= lt!334609 lt!334604))))

(declare-fun b!752196 () Bool)

(declare-fun e!419609 () Bool)

(assert (=> b!752196 (= e!419609 (not e!419610))))

(declare-fun res!508056 () Bool)

(assert (=> b!752196 (=> res!508056 e!419610)))

(declare-fun lt!334610 () SeekEntryResult!7621)

(get-info :version)

(assert (=> b!752196 (= res!508056 (or (not ((_ is Intermediate!7621) lt!334610)) (bvslt x!1131 (x!63796 lt!334610)) (not (= x!1131 (x!63796 lt!334610))) (not (= index!1321 (index!32853 lt!334610)))))))

(declare-fun e!419602 () Bool)

(assert (=> b!752196 e!419602))

(declare-fun res!508057 () Bool)

(assert (=> b!752196 (=> (not res!508057) (not e!419602))))

(assert (=> b!752196 (= res!508057 (= lt!334609 lt!334602))))

(assert (=> b!752196 (= lt!334602 (Found!7621 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41808 (_ BitVec 32)) SeekEntryResult!7621)

(assert (=> b!752196 (= lt!334609 (seekEntryOrOpen!0 (select (arr!20014 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41808 (_ BitVec 32)) Bool)

(assert (=> b!752196 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334605 () Unit!25886)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41808 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25886)

(assert (=> b!752196 (= lt!334605 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!752197 () Bool)

(declare-fun res!508050 () Bool)

(assert (=> b!752197 (=> (not res!508050) (not e!419604))))

(assert (=> b!752197 (= res!508050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!752198 () Bool)

(declare-fun res!508053 () Bool)

(assert (=> b!752198 (=> (not res!508053) (not e!419603))))

(declare-fun arrayContainsKey!0 (array!41808 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!752198 (= res!508053 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!752199 () Bool)

(declare-fun Unit!25889 () Unit!25886)

(assert (=> b!752199 (= e!419607 Unit!25889)))

(assert (=> b!752199 false))

(declare-fun b!752200 () Bool)

(assert (=> b!752200 (= e!419602 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20014 a!3186) j!159) a!3186 mask!3328) lt!334602))))

(declare-fun b!752201 () Bool)

(declare-fun e!419608 () Bool)

(assert (=> b!752201 (= e!419604 e!419608)))

(declare-fun res!508065 () Bool)

(assert (=> b!752201 (=> (not res!508065) (not e!419608))))

(declare-fun lt!334601 () SeekEntryResult!7621)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41808 (_ BitVec 32)) SeekEntryResult!7621)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!752201 (= res!508065 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20014 a!3186) j!159) mask!3328) (select (arr!20014 a!3186) j!159) a!3186 mask!3328) lt!334601))))

(assert (=> b!752201 (= lt!334601 (Intermediate!7621 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!752202 () Bool)

(declare-fun e!419601 () Bool)

(assert (=> b!752202 (= e!419601 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!752202 e!419605))

(declare-fun res!508054 () Bool)

(assert (=> b!752202 (=> (not res!508054) (not e!419605))))

(declare-fun lt!334603 () (_ BitVec 64))

(assert (=> b!752202 (= res!508054 (= lt!334603 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334599 () Unit!25886)

(assert (=> b!752202 (= lt!334599 e!419607)))

(declare-fun c!82451 () Bool)

(assert (=> b!752202 (= c!82451 (= lt!334603 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!752203 () Bool)

(declare-fun res!508059 () Bool)

(assert (=> b!752203 (=> (not res!508059) (not e!419603))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!752203 (= res!508059 (and (= (size!20435 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20435 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20435 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!752204 () Bool)

(assert (=> b!752204 (= e!419608 e!419609)))

(declare-fun res!508061 () Bool)

(assert (=> b!752204 (=> (not res!508061) (not e!419609))))

(declare-fun lt!334606 () SeekEntryResult!7621)

(assert (=> b!752204 (= res!508061 (= lt!334606 lt!334610))))

(declare-fun lt!334600 () (_ BitVec 64))

(declare-fun lt!334607 () array!41808)

(assert (=> b!752204 (= lt!334610 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334600 lt!334607 mask!3328))))

(assert (=> b!752204 (= lt!334606 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334600 mask!3328) lt!334600 lt!334607 mask!3328))))

(assert (=> b!752204 (= lt!334600 (select (store (arr!20014 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!752204 (= lt!334607 (array!41809 (store (arr!20014 a!3186) i!1173 k0!2102) (size!20435 a!3186)))))

(declare-fun b!752205 () Bool)

(assert (=> b!752205 (= e!419603 e!419604)))

(declare-fun res!508062 () Bool)

(assert (=> b!752205 (=> (not res!508062) (not e!419604))))

(declare-fun lt!334608 () SeekEntryResult!7621)

(assert (=> b!752205 (= res!508062 (or (= lt!334608 (MissingZero!7621 i!1173)) (= lt!334608 (MissingVacant!7621 i!1173))))))

(assert (=> b!752205 (= lt!334608 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!752206 () Bool)

(declare-fun e!419599 () Bool)

(assert (=> b!752206 (= e!419599 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20014 a!3186) j!159) a!3186 mask!3328) lt!334601))))

(declare-fun b!752207 () Bool)

(declare-fun res!508051 () Bool)

(assert (=> b!752207 (=> (not res!508051) (not e!419608))))

(assert (=> b!752207 (= res!508051 e!419599)))

(declare-fun c!82452 () Bool)

(assert (=> b!752207 (= c!82452 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!752208 () Bool)

(declare-fun res!508066 () Bool)

(assert (=> b!752208 (=> (not res!508066) (not e!419608))))

(assert (=> b!752208 (= res!508066 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20014 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!752209 () Bool)

(declare-fun res!508052 () Bool)

(assert (=> b!752209 (=> (not res!508052) (not e!419605))))

(assert (=> b!752209 (= res!508052 (= (seekEntryOrOpen!0 lt!334600 lt!334607 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334600 lt!334607 mask!3328)))))

(declare-fun b!752210 () Bool)

(declare-fun res!508064 () Bool)

(assert (=> b!752210 (=> (not res!508064) (not e!419604))))

(declare-datatypes ((List!14069 0))(
  ( (Nil!14066) (Cons!14065 (h!15137 (_ BitVec 64)) (t!20392 List!14069)) )
))
(declare-fun arrayNoDuplicates!0 (array!41808 (_ BitVec 32) List!14069) Bool)

(assert (=> b!752210 (= res!508064 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14066))))

(declare-fun b!752211 () Bool)

(assert (=> b!752211 (= e!419600 e!419601)))

(declare-fun res!508067 () Bool)

(assert (=> b!752211 (=> res!508067 e!419601)))

(assert (=> b!752211 (= res!508067 (= lt!334603 lt!334600))))

(assert (=> b!752211 (= lt!334603 (select (store (arr!20014 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!752212 () Bool)

(assert (=> b!752212 (= e!419599 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20014 a!3186) j!159) a!3186 mask!3328) (Found!7621 j!159)))))

(declare-fun b!752213 () Bool)

(declare-fun res!508068 () Bool)

(assert (=> b!752213 (=> (not res!508068) (not e!419603))))

(assert (=> b!752213 (= res!508068 (validKeyInArray!0 (select (arr!20014 a!3186) j!159)))))

(assert (= (and start!65682 res!508058) b!752203))

(assert (= (and b!752203 res!508059) b!752213))

(assert (= (and b!752213 res!508068) b!752194))

(assert (= (and b!752194 res!508055) b!752198))

(assert (= (and b!752198 res!508053) b!752205))

(assert (= (and b!752205 res!508062) b!752197))

(assert (= (and b!752197 res!508050) b!752210))

(assert (= (and b!752210 res!508064) b!752191))

(assert (= (and b!752191 res!508060) b!752201))

(assert (= (and b!752201 res!508065) b!752208))

(assert (= (and b!752208 res!508066) b!752207))

(assert (= (and b!752207 c!82452) b!752206))

(assert (= (and b!752207 (not c!82452)) b!752212))

(assert (= (and b!752207 res!508051) b!752204))

(assert (= (and b!752204 res!508061) b!752196))

(assert (= (and b!752196 res!508057) b!752200))

(assert (= (and b!752196 (not res!508056)) b!752193))

(assert (= (and b!752193 (not res!508063)) b!752211))

(assert (= (and b!752211 (not res!508067)) b!752202))

(assert (= (and b!752202 c!82451) b!752199))

(assert (= (and b!752202 (not c!82451)) b!752192))

(assert (= (and b!752202 res!508054) b!752209))

(assert (= (and b!752209 res!508052) b!752195))

(declare-fun m!701261 () Bool)

(assert (=> start!65682 m!701261))

(declare-fun m!701263 () Bool)

(assert (=> start!65682 m!701263))

(declare-fun m!701265 () Bool)

(assert (=> b!752197 m!701265))

(declare-fun m!701267 () Bool)

(assert (=> b!752194 m!701267))

(declare-fun m!701269 () Bool)

(assert (=> b!752209 m!701269))

(declare-fun m!701271 () Bool)

(assert (=> b!752209 m!701271))

(declare-fun m!701273 () Bool)

(assert (=> b!752193 m!701273))

(assert (=> b!752193 m!701273))

(declare-fun m!701275 () Bool)

(assert (=> b!752193 m!701275))

(declare-fun m!701277 () Bool)

(assert (=> b!752204 m!701277))

(declare-fun m!701279 () Bool)

(assert (=> b!752204 m!701279))

(assert (=> b!752204 m!701277))

(declare-fun m!701281 () Bool)

(assert (=> b!752204 m!701281))

(declare-fun m!701283 () Bool)

(assert (=> b!752204 m!701283))

(declare-fun m!701285 () Bool)

(assert (=> b!752204 m!701285))

(declare-fun m!701287 () Bool)

(assert (=> b!752210 m!701287))

(assert (=> b!752211 m!701279))

(declare-fun m!701289 () Bool)

(assert (=> b!752211 m!701289))

(assert (=> b!752200 m!701273))

(assert (=> b!752200 m!701273))

(declare-fun m!701291 () Bool)

(assert (=> b!752200 m!701291))

(assert (=> b!752201 m!701273))

(assert (=> b!752201 m!701273))

(declare-fun m!701293 () Bool)

(assert (=> b!752201 m!701293))

(assert (=> b!752201 m!701293))

(assert (=> b!752201 m!701273))

(declare-fun m!701295 () Bool)

(assert (=> b!752201 m!701295))

(assert (=> b!752213 m!701273))

(assert (=> b!752213 m!701273))

(declare-fun m!701297 () Bool)

(assert (=> b!752213 m!701297))

(declare-fun m!701299 () Bool)

(assert (=> b!752208 m!701299))

(declare-fun m!701301 () Bool)

(assert (=> b!752205 m!701301))

(assert (=> b!752196 m!701273))

(assert (=> b!752196 m!701273))

(declare-fun m!701303 () Bool)

(assert (=> b!752196 m!701303))

(declare-fun m!701305 () Bool)

(assert (=> b!752196 m!701305))

(declare-fun m!701307 () Bool)

(assert (=> b!752196 m!701307))

(assert (=> b!752212 m!701273))

(assert (=> b!752212 m!701273))

(assert (=> b!752212 m!701275))

(assert (=> b!752206 m!701273))

(assert (=> b!752206 m!701273))

(declare-fun m!701309 () Bool)

(assert (=> b!752206 m!701309))

(declare-fun m!701311 () Bool)

(assert (=> b!752198 m!701311))

(check-sat (not b!752196) (not b!752197) (not b!752209) (not b!752213) (not b!752193) (not start!65682) (not b!752200) (not b!752198) (not b!752210) (not b!752201) (not b!752194) (not b!752204) (not b!752212) (not b!752206) (not b!752205))
(check-sat)
