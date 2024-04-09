; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67932 () Bool)

(assert start!67932)

(declare-fun b!790253 () Bool)

(declare-fun e!439239 () Bool)

(declare-fun e!439240 () Bool)

(assert (=> b!790253 (= e!439239 e!439240)))

(declare-fun res!535543 () Bool)

(assert (=> b!790253 (=> (not res!535543) (not e!439240))))

(declare-datatypes ((SeekEntryResult!8122 0))(
  ( (MissingZero!8122 (index!34855 (_ BitVec 32))) (Found!8122 (index!34856 (_ BitVec 32))) (Intermediate!8122 (undefined!8934 Bool) (index!34857 (_ BitVec 32)) (x!65816 (_ BitVec 32))) (Undefined!8122) (MissingVacant!8122 (index!34858 (_ BitVec 32))) )
))
(declare-fun lt!352820 () SeekEntryResult!8122)

(declare-fun lt!352818 () SeekEntryResult!8122)

(assert (=> b!790253 (= res!535543 (= lt!352820 lt!352818))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!352825 () (_ BitVec 64))

(declare-datatypes ((array!42864 0))(
  ( (array!42865 (arr!20515 (Array (_ BitVec 32) (_ BitVec 64))) (size!20936 (_ BitVec 32))) )
))
(declare-fun lt!352823 () array!42864)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42864 (_ BitVec 32)) SeekEntryResult!8122)

(assert (=> b!790253 (= lt!352818 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352825 lt!352823 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!790253 (= lt!352820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352825 mask!3328) lt!352825 lt!352823 mask!3328))))

(declare-fun a!3186 () array!42864)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!790253 (= lt!352825 (select (store (arr!20515 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!790253 (= lt!352823 (array!42865 (store (arr!20515 a!3186) i!1173 k0!2102) (size!20936 a!3186)))))

(declare-fun b!790254 () Bool)

(declare-fun res!535537 () Bool)

(declare-fun e!439238 () Bool)

(assert (=> b!790254 (=> (not res!535537) (not e!439238))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!790254 (= res!535537 (validKeyInArray!0 (select (arr!20515 a!3186) j!159)))))

(declare-fun b!790255 () Bool)

(get-info :version)

(assert (=> b!790255 (= e!439240 (not ((_ is Intermediate!8122) lt!352818)))))

(declare-fun e!439233 () Bool)

(assert (=> b!790255 e!439233))

(declare-fun res!535531 () Bool)

(assert (=> b!790255 (=> (not res!535531) (not e!439233))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42864 (_ BitVec 32)) Bool)

(assert (=> b!790255 (= res!535531 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!27396 0))(
  ( (Unit!27397) )
))
(declare-fun lt!352821 () Unit!27396)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42864 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27396)

(assert (=> b!790255 (= lt!352821 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!790256 () Bool)

(declare-fun res!535530 () Bool)

(declare-fun e!439237 () Bool)

(assert (=> b!790256 (=> (not res!535530) (not e!439237))))

(assert (=> b!790256 (= res!535530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!790257 () Bool)

(declare-fun e!439235 () Bool)

(assert (=> b!790257 (= e!439233 e!439235)))

(declare-fun res!535539 () Bool)

(assert (=> b!790257 (=> (not res!535539) (not e!439235))))

(declare-fun lt!352819 () SeekEntryResult!8122)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42864 (_ BitVec 32)) SeekEntryResult!8122)

(assert (=> b!790257 (= res!535539 (= (seekEntryOrOpen!0 (select (arr!20515 a!3186) j!159) a!3186 mask!3328) lt!352819))))

(assert (=> b!790257 (= lt!352819 (Found!8122 j!159))))

(declare-fun b!790258 () Bool)

(declare-fun res!535542 () Bool)

(assert (=> b!790258 (=> (not res!535542) (not e!439238))))

(declare-fun arrayContainsKey!0 (array!42864 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!790258 (= res!535542 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!790259 () Bool)

(declare-fun res!535529 () Bool)

(assert (=> b!790259 (=> (not res!535529) (not e!439239))))

(declare-fun e!439236 () Bool)

(assert (=> b!790259 (= res!535529 e!439236)))

(declare-fun c!87771 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!790259 (= c!87771 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!535532 () Bool)

(assert (=> start!67932 (=> (not res!535532) (not e!439238))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67932 (= res!535532 (validMask!0 mask!3328))))

(assert (=> start!67932 e!439238))

(assert (=> start!67932 true))

(declare-fun array_inv!16289 (array!42864) Bool)

(assert (=> start!67932 (array_inv!16289 a!3186)))

(declare-fun b!790260 () Bool)

(assert (=> b!790260 (= e!439238 e!439237)))

(declare-fun res!535536 () Bool)

(assert (=> b!790260 (=> (not res!535536) (not e!439237))))

(declare-fun lt!352822 () SeekEntryResult!8122)

(assert (=> b!790260 (= res!535536 (or (= lt!352822 (MissingZero!8122 i!1173)) (= lt!352822 (MissingVacant!8122 i!1173))))))

(assert (=> b!790260 (= lt!352822 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!790261 () Bool)

(declare-fun lt!352824 () SeekEntryResult!8122)

(assert (=> b!790261 (= e!439236 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20515 a!3186) j!159) a!3186 mask!3328) lt!352824))))

(declare-fun b!790262 () Bool)

(declare-fun res!535533 () Bool)

(assert (=> b!790262 (=> (not res!535533) (not e!439237))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!790262 (= res!535533 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20936 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20936 a!3186))))))

(declare-fun b!790263 () Bool)

(declare-fun res!535540 () Bool)

(assert (=> b!790263 (=> (not res!535540) (not e!439238))))

(assert (=> b!790263 (= res!535540 (validKeyInArray!0 k0!2102))))

(declare-fun b!790264 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42864 (_ BitVec 32)) SeekEntryResult!8122)

(assert (=> b!790264 (= e!439235 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20515 a!3186) j!159) a!3186 mask!3328) lt!352819))))

(declare-fun b!790265 () Bool)

(assert (=> b!790265 (= e!439236 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20515 a!3186) j!159) a!3186 mask!3328) (Found!8122 j!159)))))

(declare-fun b!790266 () Bool)

(declare-fun res!535538 () Bool)

(assert (=> b!790266 (=> (not res!535538) (not e!439237))))

(declare-datatypes ((List!14570 0))(
  ( (Nil!14567) (Cons!14566 (h!15692 (_ BitVec 64)) (t!20893 List!14570)) )
))
(declare-fun arrayNoDuplicates!0 (array!42864 (_ BitVec 32) List!14570) Bool)

(assert (=> b!790266 (= res!535538 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14567))))

(declare-fun b!790267 () Bool)

(declare-fun res!535534 () Bool)

(assert (=> b!790267 (=> (not res!535534) (not e!439238))))

(assert (=> b!790267 (= res!535534 (and (= (size!20936 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20936 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20936 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!790268 () Bool)

(declare-fun res!535535 () Bool)

(assert (=> b!790268 (=> (not res!535535) (not e!439239))))

(assert (=> b!790268 (= res!535535 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20515 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!790269 () Bool)

(assert (=> b!790269 (= e!439237 e!439239)))

(declare-fun res!535541 () Bool)

(assert (=> b!790269 (=> (not res!535541) (not e!439239))))

(assert (=> b!790269 (= res!535541 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20515 a!3186) j!159) mask!3328) (select (arr!20515 a!3186) j!159) a!3186 mask!3328) lt!352824))))

(assert (=> b!790269 (= lt!352824 (Intermediate!8122 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!67932 res!535532) b!790267))

(assert (= (and b!790267 res!535534) b!790254))

(assert (= (and b!790254 res!535537) b!790263))

(assert (= (and b!790263 res!535540) b!790258))

(assert (= (and b!790258 res!535542) b!790260))

(assert (= (and b!790260 res!535536) b!790256))

(assert (= (and b!790256 res!535530) b!790266))

(assert (= (and b!790266 res!535538) b!790262))

(assert (= (and b!790262 res!535533) b!790269))

(assert (= (and b!790269 res!535541) b!790268))

(assert (= (and b!790268 res!535535) b!790259))

(assert (= (and b!790259 c!87771) b!790261))

(assert (= (and b!790259 (not c!87771)) b!790265))

(assert (= (and b!790259 res!535529) b!790253))

(assert (= (and b!790253 res!535543) b!790255))

(assert (= (and b!790255 res!535531) b!790257))

(assert (= (and b!790257 res!535539) b!790264))

(declare-fun m!731267 () Bool)

(assert (=> b!790256 m!731267))

(declare-fun m!731269 () Bool)

(assert (=> b!790255 m!731269))

(declare-fun m!731271 () Bool)

(assert (=> b!790255 m!731271))

(declare-fun m!731273 () Bool)

(assert (=> b!790254 m!731273))

(assert (=> b!790254 m!731273))

(declare-fun m!731275 () Bool)

(assert (=> b!790254 m!731275))

(declare-fun m!731277 () Bool)

(assert (=> b!790266 m!731277))

(assert (=> b!790269 m!731273))

(assert (=> b!790269 m!731273))

(declare-fun m!731279 () Bool)

(assert (=> b!790269 m!731279))

(assert (=> b!790269 m!731279))

(assert (=> b!790269 m!731273))

(declare-fun m!731281 () Bool)

(assert (=> b!790269 m!731281))

(assert (=> b!790257 m!731273))

(assert (=> b!790257 m!731273))

(declare-fun m!731283 () Bool)

(assert (=> b!790257 m!731283))

(declare-fun m!731285 () Bool)

(assert (=> b!790253 m!731285))

(declare-fun m!731287 () Bool)

(assert (=> b!790253 m!731287))

(declare-fun m!731289 () Bool)

(assert (=> b!790253 m!731289))

(assert (=> b!790253 m!731285))

(declare-fun m!731291 () Bool)

(assert (=> b!790253 m!731291))

(declare-fun m!731293 () Bool)

(assert (=> b!790253 m!731293))

(declare-fun m!731295 () Bool)

(assert (=> b!790268 m!731295))

(declare-fun m!731297 () Bool)

(assert (=> b!790260 m!731297))

(assert (=> b!790264 m!731273))

(assert (=> b!790264 m!731273))

(declare-fun m!731299 () Bool)

(assert (=> b!790264 m!731299))

(declare-fun m!731301 () Bool)

(assert (=> b!790263 m!731301))

(assert (=> b!790265 m!731273))

(assert (=> b!790265 m!731273))

(declare-fun m!731303 () Bool)

(assert (=> b!790265 m!731303))

(declare-fun m!731305 () Bool)

(assert (=> b!790258 m!731305))

(assert (=> b!790261 m!731273))

(assert (=> b!790261 m!731273))

(declare-fun m!731307 () Bool)

(assert (=> b!790261 m!731307))

(declare-fun m!731309 () Bool)

(assert (=> start!67932 m!731309))

(declare-fun m!731311 () Bool)

(assert (=> start!67932 m!731311))

(check-sat (not b!790255) (not b!790263) (not b!790256) (not b!790258) (not b!790265) (not b!790253) (not b!790269) (not b!790264) (not b!790254) (not start!67932) (not b!790260) (not b!790261) (not b!790266) (not b!790257))
(check-sat)
(get-model)

(declare-fun b!790333 () Bool)

(declare-fun lt!352858 () SeekEntryResult!8122)

(declare-fun e!439273 () SeekEntryResult!8122)

(assert (=> b!790333 (= e!439273 (seekKeyOrZeroReturnVacant!0 (x!65816 lt!352858) (index!34857 lt!352858) (index!34857 lt!352858) (select (arr!20515 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!790334 () Bool)

(assert (=> b!790334 (= e!439273 (MissingZero!8122 (index!34857 lt!352858)))))

(declare-fun b!790335 () Bool)

(declare-fun e!439272 () SeekEntryResult!8122)

(assert (=> b!790335 (= e!439272 Undefined!8122)))

(declare-fun b!790336 () Bool)

(declare-fun c!87781 () Bool)

(declare-fun lt!352857 () (_ BitVec 64))

(assert (=> b!790336 (= c!87781 (= lt!352857 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!439271 () SeekEntryResult!8122)

(assert (=> b!790336 (= e!439271 e!439273)))

(declare-fun b!790337 () Bool)

(assert (=> b!790337 (= e!439271 (Found!8122 (index!34857 lt!352858)))))

(declare-fun b!790338 () Bool)

(assert (=> b!790338 (= e!439272 e!439271)))

(assert (=> b!790338 (= lt!352857 (select (arr!20515 a!3186) (index!34857 lt!352858)))))

(declare-fun c!87782 () Bool)

(assert (=> b!790338 (= c!87782 (= lt!352857 (select (arr!20515 a!3186) j!159)))))

(declare-fun d!102883 () Bool)

(declare-fun lt!352856 () SeekEntryResult!8122)

(assert (=> d!102883 (and (or ((_ is Undefined!8122) lt!352856) (not ((_ is Found!8122) lt!352856)) (and (bvsge (index!34856 lt!352856) #b00000000000000000000000000000000) (bvslt (index!34856 lt!352856) (size!20936 a!3186)))) (or ((_ is Undefined!8122) lt!352856) ((_ is Found!8122) lt!352856) (not ((_ is MissingZero!8122) lt!352856)) (and (bvsge (index!34855 lt!352856) #b00000000000000000000000000000000) (bvslt (index!34855 lt!352856) (size!20936 a!3186)))) (or ((_ is Undefined!8122) lt!352856) ((_ is Found!8122) lt!352856) ((_ is MissingZero!8122) lt!352856) (not ((_ is MissingVacant!8122) lt!352856)) (and (bvsge (index!34858 lt!352856) #b00000000000000000000000000000000) (bvslt (index!34858 lt!352856) (size!20936 a!3186)))) (or ((_ is Undefined!8122) lt!352856) (ite ((_ is Found!8122) lt!352856) (= (select (arr!20515 a!3186) (index!34856 lt!352856)) (select (arr!20515 a!3186) j!159)) (ite ((_ is MissingZero!8122) lt!352856) (= (select (arr!20515 a!3186) (index!34855 lt!352856)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8122) lt!352856) (= (select (arr!20515 a!3186) (index!34858 lt!352856)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102883 (= lt!352856 e!439272)))

(declare-fun c!87783 () Bool)

(assert (=> d!102883 (= c!87783 (and ((_ is Intermediate!8122) lt!352858) (undefined!8934 lt!352858)))))

(assert (=> d!102883 (= lt!352858 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20515 a!3186) j!159) mask!3328) (select (arr!20515 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102883 (validMask!0 mask!3328)))

(assert (=> d!102883 (= (seekEntryOrOpen!0 (select (arr!20515 a!3186) j!159) a!3186 mask!3328) lt!352856)))

(assert (= (and d!102883 c!87783) b!790335))

(assert (= (and d!102883 (not c!87783)) b!790338))

(assert (= (and b!790338 c!87782) b!790337))

(assert (= (and b!790338 (not c!87782)) b!790336))

(assert (= (and b!790336 c!87781) b!790334))

(assert (= (and b!790336 (not c!87781)) b!790333))

(assert (=> b!790333 m!731273))

(declare-fun m!731359 () Bool)

(assert (=> b!790333 m!731359))

(declare-fun m!731361 () Bool)

(assert (=> b!790338 m!731361))

(declare-fun m!731363 () Bool)

(assert (=> d!102883 m!731363))

(assert (=> d!102883 m!731279))

(assert (=> d!102883 m!731273))

(assert (=> d!102883 m!731281))

(assert (=> d!102883 m!731273))

(assert (=> d!102883 m!731279))

(assert (=> d!102883 m!731309))

(declare-fun m!731365 () Bool)

(assert (=> d!102883 m!731365))

(declare-fun m!731367 () Bool)

(assert (=> d!102883 m!731367))

(assert (=> b!790257 d!102883))

(declare-fun bm!35301 () Bool)

(declare-fun call!35304 () Bool)

(assert (=> bm!35301 (= call!35304 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!790362 () Bool)

(declare-fun e!439294 () Bool)

(declare-fun e!439293 () Bool)

(assert (=> b!790362 (= e!439294 e!439293)))

(declare-fun lt!352867 () (_ BitVec 64))

(assert (=> b!790362 (= lt!352867 (select (arr!20515 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!352865 () Unit!27396)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42864 (_ BitVec 64) (_ BitVec 32)) Unit!27396)

(assert (=> b!790362 (= lt!352865 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!352867 #b00000000000000000000000000000000))))

(assert (=> b!790362 (arrayContainsKey!0 a!3186 lt!352867 #b00000000000000000000000000000000)))

(declare-fun lt!352866 () Unit!27396)

(assert (=> b!790362 (= lt!352866 lt!352865)))

(declare-fun res!535603 () Bool)

(assert (=> b!790362 (= res!535603 (= (seekEntryOrOpen!0 (select (arr!20515 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!8122 #b00000000000000000000000000000000)))))

(assert (=> b!790362 (=> (not res!535603) (not e!439293))))

(declare-fun b!790363 () Bool)

(assert (=> b!790363 (= e!439293 call!35304)))

(declare-fun b!790364 () Bool)

(assert (=> b!790364 (= e!439294 call!35304)))

(declare-fun b!790365 () Bool)

(declare-fun e!439292 () Bool)

(assert (=> b!790365 (= e!439292 e!439294)))

(declare-fun c!87789 () Bool)

(assert (=> b!790365 (= c!87789 (validKeyInArray!0 (select (arr!20515 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!102887 () Bool)

(declare-fun res!535602 () Bool)

(assert (=> d!102887 (=> res!535602 e!439292)))

(assert (=> d!102887 (= res!535602 (bvsge #b00000000000000000000000000000000 (size!20936 a!3186)))))

(assert (=> d!102887 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!439292)))

(assert (= (and d!102887 (not res!535602)) b!790365))

(assert (= (and b!790365 c!87789) b!790362))

(assert (= (and b!790365 (not c!87789)) b!790364))

(assert (= (and b!790362 res!535603) b!790363))

(assert (= (or b!790363 b!790364) bm!35301))

(declare-fun m!731377 () Bool)

(assert (=> bm!35301 m!731377))

(declare-fun m!731379 () Bool)

(assert (=> b!790362 m!731379))

(declare-fun m!731381 () Bool)

(assert (=> b!790362 m!731381))

(declare-fun m!731383 () Bool)

(assert (=> b!790362 m!731383))

(assert (=> b!790362 m!731379))

(declare-fun m!731385 () Bool)

(assert (=> b!790362 m!731385))

(assert (=> b!790365 m!731379))

(assert (=> b!790365 m!731379))

(declare-fun m!731387 () Bool)

(assert (=> b!790365 m!731387))

(assert (=> b!790256 d!102887))

(declare-fun b!790376 () Bool)

(declare-fun e!439305 () Bool)

(declare-fun e!439304 () Bool)

(assert (=> b!790376 (= e!439305 e!439304)))

(declare-fun res!535612 () Bool)

(assert (=> b!790376 (=> (not res!535612) (not e!439304))))

(declare-fun e!439306 () Bool)

(assert (=> b!790376 (= res!535612 (not e!439306))))

(declare-fun res!535611 () Bool)

(assert (=> b!790376 (=> (not res!535611) (not e!439306))))

(assert (=> b!790376 (= res!535611 (validKeyInArray!0 (select (arr!20515 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!790377 () Bool)

(declare-fun e!439303 () Bool)

(assert (=> b!790377 (= e!439304 e!439303)))

(declare-fun c!87792 () Bool)

(assert (=> b!790377 (= c!87792 (validKeyInArray!0 (select (arr!20515 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!790378 () Bool)

(declare-fun call!35307 () Bool)

(assert (=> b!790378 (= e!439303 call!35307)))

(declare-fun d!102891 () Bool)

(declare-fun res!535610 () Bool)

(assert (=> d!102891 (=> res!535610 e!439305)))

(assert (=> d!102891 (= res!535610 (bvsge #b00000000000000000000000000000000 (size!20936 a!3186)))))

(assert (=> d!102891 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14567) e!439305)))

(declare-fun bm!35304 () Bool)

(assert (=> bm!35304 (= call!35307 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!87792 (Cons!14566 (select (arr!20515 a!3186) #b00000000000000000000000000000000) Nil!14567) Nil!14567)))))

(declare-fun b!790379 () Bool)

(declare-fun contains!4115 (List!14570 (_ BitVec 64)) Bool)

(assert (=> b!790379 (= e!439306 (contains!4115 Nil!14567 (select (arr!20515 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!790380 () Bool)

(assert (=> b!790380 (= e!439303 call!35307)))

(assert (= (and d!102891 (not res!535610)) b!790376))

(assert (= (and b!790376 res!535611) b!790379))

(assert (= (and b!790376 res!535612) b!790377))

(assert (= (and b!790377 c!87792) b!790380))

(assert (= (and b!790377 (not c!87792)) b!790378))

(assert (= (or b!790380 b!790378) bm!35304))

(assert (=> b!790376 m!731379))

(assert (=> b!790376 m!731379))

(assert (=> b!790376 m!731387))

(assert (=> b!790377 m!731379))

(assert (=> b!790377 m!731379))

(assert (=> b!790377 m!731387))

(assert (=> bm!35304 m!731379))

(declare-fun m!731389 () Bool)

(assert (=> bm!35304 m!731389))

(assert (=> b!790379 m!731379))

(assert (=> b!790379 m!731379))

(declare-fun m!731391 () Bool)

(assert (=> b!790379 m!731391))

(assert (=> b!790266 d!102891))

(declare-fun bm!35305 () Bool)

(declare-fun call!35308 () Bool)

(assert (=> bm!35305 (= call!35308 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!790381 () Bool)

(declare-fun e!439309 () Bool)

(declare-fun e!439308 () Bool)

(assert (=> b!790381 (= e!439309 e!439308)))

(declare-fun lt!352870 () (_ BitVec 64))

(assert (=> b!790381 (= lt!352870 (select (arr!20515 a!3186) j!159))))

(declare-fun lt!352868 () Unit!27396)

(assert (=> b!790381 (= lt!352868 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!352870 j!159))))

(assert (=> b!790381 (arrayContainsKey!0 a!3186 lt!352870 #b00000000000000000000000000000000)))

(declare-fun lt!352869 () Unit!27396)

(assert (=> b!790381 (= lt!352869 lt!352868)))

(declare-fun res!535614 () Bool)

(assert (=> b!790381 (= res!535614 (= (seekEntryOrOpen!0 (select (arr!20515 a!3186) j!159) a!3186 mask!3328) (Found!8122 j!159)))))

(assert (=> b!790381 (=> (not res!535614) (not e!439308))))

(declare-fun b!790382 () Bool)

(assert (=> b!790382 (= e!439308 call!35308)))

(declare-fun b!790383 () Bool)

(assert (=> b!790383 (= e!439309 call!35308)))

(declare-fun b!790384 () Bool)

(declare-fun e!439307 () Bool)

(assert (=> b!790384 (= e!439307 e!439309)))

(declare-fun c!87793 () Bool)

(assert (=> b!790384 (= c!87793 (validKeyInArray!0 (select (arr!20515 a!3186) j!159)))))

(declare-fun d!102895 () Bool)

(declare-fun res!535613 () Bool)

(assert (=> d!102895 (=> res!535613 e!439307)))

(assert (=> d!102895 (= res!535613 (bvsge j!159 (size!20936 a!3186)))))

(assert (=> d!102895 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!439307)))

(assert (= (and d!102895 (not res!535613)) b!790384))

(assert (= (and b!790384 c!87793) b!790381))

(assert (= (and b!790384 (not c!87793)) b!790383))

(assert (= (and b!790381 res!535614) b!790382))

(assert (= (or b!790382 b!790383) bm!35305))

(declare-fun m!731393 () Bool)

(assert (=> bm!35305 m!731393))

(assert (=> b!790381 m!731273))

(declare-fun m!731395 () Bool)

(assert (=> b!790381 m!731395))

(declare-fun m!731397 () Bool)

(assert (=> b!790381 m!731397))

(assert (=> b!790381 m!731273))

(assert (=> b!790381 m!731283))

(assert (=> b!790384 m!731273))

(assert (=> b!790384 m!731273))

(assert (=> b!790384 m!731275))

(assert (=> b!790255 d!102895))

(declare-fun d!102897 () Bool)

(assert (=> d!102897 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!352882 () Unit!27396)

(declare-fun choose!38 (array!42864 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27396)

(assert (=> d!102897 (= lt!352882 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102897 (validMask!0 mask!3328)))

(assert (=> d!102897 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!352882)))

(declare-fun bs!21853 () Bool)

(assert (= bs!21853 d!102897))

(assert (=> bs!21853 m!731269))

(declare-fun m!731409 () Bool)

(assert (=> bs!21853 m!731409))

(assert (=> bs!21853 m!731309))

(assert (=> b!790255 d!102897))

(declare-fun b!790469 () Bool)

(declare-fun c!87829 () Bool)

(declare-fun lt!352900 () (_ BitVec 64))

(assert (=> b!790469 (= c!87829 (= lt!352900 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!439356 () SeekEntryResult!8122)

(declare-fun e!439355 () SeekEntryResult!8122)

(assert (=> b!790469 (= e!439356 e!439355)))

(declare-fun b!790470 () Bool)

(declare-fun e!439357 () SeekEntryResult!8122)

(assert (=> b!790470 (= e!439357 e!439356)))

(declare-fun c!87828 () Bool)

(assert (=> b!790470 (= c!87828 (= lt!352900 (select (arr!20515 a!3186) j!159)))))

(declare-fun b!790471 () Bool)

(assert (=> b!790471 (= e!439357 Undefined!8122)))

(declare-fun b!790472 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!790472 (= e!439355 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20515 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!790474 () Bool)

(assert (=> b!790474 (= e!439356 (Found!8122 index!1321))))

(declare-fun b!790473 () Bool)

(assert (=> b!790473 (= e!439355 (MissingVacant!8122 resIntermediateIndex!5))))

(declare-fun lt!352899 () SeekEntryResult!8122)

(declare-fun d!102901 () Bool)

(assert (=> d!102901 (and (or ((_ is Undefined!8122) lt!352899) (not ((_ is Found!8122) lt!352899)) (and (bvsge (index!34856 lt!352899) #b00000000000000000000000000000000) (bvslt (index!34856 lt!352899) (size!20936 a!3186)))) (or ((_ is Undefined!8122) lt!352899) ((_ is Found!8122) lt!352899) (not ((_ is MissingVacant!8122) lt!352899)) (not (= (index!34858 lt!352899) resIntermediateIndex!5)) (and (bvsge (index!34858 lt!352899) #b00000000000000000000000000000000) (bvslt (index!34858 lt!352899) (size!20936 a!3186)))) (or ((_ is Undefined!8122) lt!352899) (ite ((_ is Found!8122) lt!352899) (= (select (arr!20515 a!3186) (index!34856 lt!352899)) (select (arr!20515 a!3186) j!159)) (and ((_ is MissingVacant!8122) lt!352899) (= (index!34858 lt!352899) resIntermediateIndex!5) (= (select (arr!20515 a!3186) (index!34858 lt!352899)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102901 (= lt!352899 e!439357)))

(declare-fun c!87827 () Bool)

(assert (=> d!102901 (= c!87827 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102901 (= lt!352900 (select (arr!20515 a!3186) index!1321))))

(assert (=> d!102901 (validMask!0 mask!3328)))

(assert (=> d!102901 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20515 a!3186) j!159) a!3186 mask!3328) lt!352899)))

(assert (= (and d!102901 c!87827) b!790471))

(assert (= (and d!102901 (not c!87827)) b!790470))

(assert (= (and b!790470 c!87828) b!790474))

(assert (= (and b!790470 (not c!87828)) b!790469))

(assert (= (and b!790469 c!87829) b!790473))

(assert (= (and b!790469 (not c!87829)) b!790472))

(declare-fun m!731427 () Bool)

(assert (=> b!790472 m!731427))

(assert (=> b!790472 m!731427))

(assert (=> b!790472 m!731273))

(declare-fun m!731429 () Bool)

(assert (=> b!790472 m!731429))

(declare-fun m!731431 () Bool)

(assert (=> d!102901 m!731431))

(declare-fun m!731433 () Bool)

(assert (=> d!102901 m!731433))

(declare-fun m!731435 () Bool)

(assert (=> d!102901 m!731435))

(assert (=> d!102901 m!731309))

(assert (=> b!790265 d!102901))

(declare-fun d!102911 () Bool)

(assert (=> d!102911 (= (validKeyInArray!0 (select (arr!20515 a!3186) j!159)) (and (not (= (select (arr!20515 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20515 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!790254 d!102911))

(declare-fun b!790475 () Bool)

(declare-fun c!87832 () Bool)

(declare-fun lt!352908 () (_ BitVec 64))

(assert (=> b!790475 (= c!87832 (= lt!352908 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!439359 () SeekEntryResult!8122)

(declare-fun e!439358 () SeekEntryResult!8122)

(assert (=> b!790475 (= e!439359 e!439358)))

(declare-fun b!790476 () Bool)

(declare-fun e!439360 () SeekEntryResult!8122)

(assert (=> b!790476 (= e!439360 e!439359)))

(declare-fun c!87831 () Bool)

(assert (=> b!790476 (= c!87831 (= lt!352908 (select (arr!20515 a!3186) j!159)))))

(declare-fun b!790477 () Bool)

(assert (=> b!790477 (= e!439360 Undefined!8122)))

(declare-fun b!790478 () Bool)

(assert (=> b!790478 (= e!439358 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20515 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!790480 () Bool)

(assert (=> b!790480 (= e!439359 (Found!8122 resIntermediateIndex!5))))

(declare-fun b!790479 () Bool)

(assert (=> b!790479 (= e!439358 (MissingVacant!8122 resIntermediateIndex!5))))

(declare-fun lt!352907 () SeekEntryResult!8122)

(declare-fun d!102913 () Bool)

(assert (=> d!102913 (and (or ((_ is Undefined!8122) lt!352907) (not ((_ is Found!8122) lt!352907)) (and (bvsge (index!34856 lt!352907) #b00000000000000000000000000000000) (bvslt (index!34856 lt!352907) (size!20936 a!3186)))) (or ((_ is Undefined!8122) lt!352907) ((_ is Found!8122) lt!352907) (not ((_ is MissingVacant!8122) lt!352907)) (not (= (index!34858 lt!352907) resIntermediateIndex!5)) (and (bvsge (index!34858 lt!352907) #b00000000000000000000000000000000) (bvslt (index!34858 lt!352907) (size!20936 a!3186)))) (or ((_ is Undefined!8122) lt!352907) (ite ((_ is Found!8122) lt!352907) (= (select (arr!20515 a!3186) (index!34856 lt!352907)) (select (arr!20515 a!3186) j!159)) (and ((_ is MissingVacant!8122) lt!352907) (= (index!34858 lt!352907) resIntermediateIndex!5) (= (select (arr!20515 a!3186) (index!34858 lt!352907)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102913 (= lt!352907 e!439360)))

(declare-fun c!87830 () Bool)

(assert (=> d!102913 (= c!87830 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!102913 (= lt!352908 (select (arr!20515 a!3186) resIntermediateIndex!5))))

(assert (=> d!102913 (validMask!0 mask!3328)))

(assert (=> d!102913 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20515 a!3186) j!159) a!3186 mask!3328) lt!352907)))

(assert (= (and d!102913 c!87830) b!790477))

(assert (= (and d!102913 (not c!87830)) b!790476))

(assert (= (and b!790476 c!87831) b!790480))

(assert (= (and b!790476 (not c!87831)) b!790475))

(assert (= (and b!790475 c!87832) b!790479))

(assert (= (and b!790475 (not c!87832)) b!790478))

(declare-fun m!731437 () Bool)

(assert (=> b!790478 m!731437))

(assert (=> b!790478 m!731437))

(assert (=> b!790478 m!731273))

(declare-fun m!731439 () Bool)

(assert (=> b!790478 m!731439))

(declare-fun m!731441 () Bool)

(assert (=> d!102913 m!731441))

(declare-fun m!731443 () Bool)

(assert (=> d!102913 m!731443))

(assert (=> d!102913 m!731295))

(assert (=> d!102913 m!731309))

(assert (=> b!790264 d!102913))

(declare-fun b!790592 () Bool)

(declare-fun e!439426 () Bool)

(declare-fun lt!352949 () SeekEntryResult!8122)

(assert (=> b!790592 (= e!439426 (bvsge (x!65816 lt!352949) #b01111111111111111111111111111110))))

(declare-fun d!102917 () Bool)

(assert (=> d!102917 e!439426))

(declare-fun c!87876 () Bool)

(assert (=> d!102917 (= c!87876 (and ((_ is Intermediate!8122) lt!352949) (undefined!8934 lt!352949)))))

(declare-fun e!439425 () SeekEntryResult!8122)

(assert (=> d!102917 (= lt!352949 e!439425)))

(declare-fun c!87877 () Bool)

(assert (=> d!102917 (= c!87877 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!352948 () (_ BitVec 64))

(assert (=> d!102917 (= lt!352948 (select (arr!20515 lt!352823) index!1321))))

(assert (=> d!102917 (validMask!0 mask!3328)))

(assert (=> d!102917 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352825 lt!352823 mask!3328) lt!352949)))

(declare-fun b!790593 () Bool)

(declare-fun e!439427 () SeekEntryResult!8122)

(assert (=> b!790593 (= e!439425 e!439427)))

(declare-fun c!87875 () Bool)

(assert (=> b!790593 (= c!87875 (or (= lt!352948 lt!352825) (= (bvadd lt!352948 lt!352948) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!790594 () Bool)

(assert (=> b!790594 (and (bvsge (index!34857 lt!352949) #b00000000000000000000000000000000) (bvslt (index!34857 lt!352949) (size!20936 lt!352823)))))

(declare-fun res!535662 () Bool)

(assert (=> b!790594 (= res!535662 (= (select (arr!20515 lt!352823) (index!34857 lt!352949)) lt!352825))))

(declare-fun e!439424 () Bool)

(assert (=> b!790594 (=> res!535662 e!439424)))

(declare-fun e!439423 () Bool)

(assert (=> b!790594 (= e!439423 e!439424)))

(declare-fun b!790595 () Bool)

(assert (=> b!790595 (= e!439425 (Intermediate!8122 true index!1321 x!1131))))

(declare-fun b!790596 () Bool)

(assert (=> b!790596 (and (bvsge (index!34857 lt!352949) #b00000000000000000000000000000000) (bvslt (index!34857 lt!352949) (size!20936 lt!352823)))))

(declare-fun res!535663 () Bool)

(assert (=> b!790596 (= res!535663 (= (select (arr!20515 lt!352823) (index!34857 lt!352949)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!790596 (=> res!535663 e!439424)))

(declare-fun b!790597 () Bool)

(assert (=> b!790597 (= e!439427 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!352825 lt!352823 mask!3328))))

(declare-fun b!790598 () Bool)

(assert (=> b!790598 (= e!439427 (Intermediate!8122 false index!1321 x!1131))))

(declare-fun b!790599 () Bool)

(assert (=> b!790599 (and (bvsge (index!34857 lt!352949) #b00000000000000000000000000000000) (bvslt (index!34857 lt!352949) (size!20936 lt!352823)))))

(assert (=> b!790599 (= e!439424 (= (select (arr!20515 lt!352823) (index!34857 lt!352949)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!790600 () Bool)

(assert (=> b!790600 (= e!439426 e!439423)))

(declare-fun res!535664 () Bool)

(assert (=> b!790600 (= res!535664 (and ((_ is Intermediate!8122) lt!352949) (not (undefined!8934 lt!352949)) (bvslt (x!65816 lt!352949) #b01111111111111111111111111111110) (bvsge (x!65816 lt!352949) #b00000000000000000000000000000000) (bvsge (x!65816 lt!352949) x!1131)))))

(assert (=> b!790600 (=> (not res!535664) (not e!439423))))

(assert (= (and d!102917 c!87877) b!790595))

(assert (= (and d!102917 (not c!87877)) b!790593))

(assert (= (and b!790593 c!87875) b!790598))

(assert (= (and b!790593 (not c!87875)) b!790597))

(assert (= (and d!102917 c!87876) b!790592))

(assert (= (and d!102917 (not c!87876)) b!790600))

(assert (= (and b!790600 res!535664) b!790594))

(assert (= (and b!790594 (not res!535662)) b!790596))

(assert (= (and b!790596 (not res!535663)) b!790599))

(declare-fun m!731517 () Bool)

(assert (=> b!790596 m!731517))

(assert (=> b!790599 m!731517))

(assert (=> b!790597 m!731427))

(assert (=> b!790597 m!731427))

(declare-fun m!731519 () Bool)

(assert (=> b!790597 m!731519))

(assert (=> b!790594 m!731517))

(declare-fun m!731521 () Bool)

(assert (=> d!102917 m!731521))

(assert (=> d!102917 m!731309))

(assert (=> b!790253 d!102917))

(declare-fun b!790609 () Bool)

(declare-fun e!439437 () Bool)

(declare-fun lt!352957 () SeekEntryResult!8122)

(assert (=> b!790609 (= e!439437 (bvsge (x!65816 lt!352957) #b01111111111111111111111111111110))))

(declare-fun d!102947 () Bool)

(assert (=> d!102947 e!439437))

(declare-fun c!87881 () Bool)

(assert (=> d!102947 (= c!87881 (and ((_ is Intermediate!8122) lt!352957) (undefined!8934 lt!352957)))))

(declare-fun e!439436 () SeekEntryResult!8122)

(assert (=> d!102947 (= lt!352957 e!439436)))

(declare-fun c!87882 () Bool)

(assert (=> d!102947 (= c!87882 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!352956 () (_ BitVec 64))

(assert (=> d!102947 (= lt!352956 (select (arr!20515 lt!352823) (toIndex!0 lt!352825 mask!3328)))))

(assert (=> d!102947 (validMask!0 mask!3328)))

(assert (=> d!102947 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352825 mask!3328) lt!352825 lt!352823 mask!3328) lt!352957)))

(declare-fun b!790610 () Bool)

(declare-fun e!439438 () SeekEntryResult!8122)

(assert (=> b!790610 (= e!439436 e!439438)))

(declare-fun c!87880 () Bool)

(assert (=> b!790610 (= c!87880 (or (= lt!352956 lt!352825) (= (bvadd lt!352956 lt!352956) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!790611 () Bool)

(assert (=> b!790611 (and (bvsge (index!34857 lt!352957) #b00000000000000000000000000000000) (bvslt (index!34857 lt!352957) (size!20936 lt!352823)))))

(declare-fun res!535669 () Bool)

(assert (=> b!790611 (= res!535669 (= (select (arr!20515 lt!352823) (index!34857 lt!352957)) lt!352825))))

(declare-fun e!439435 () Bool)

(assert (=> b!790611 (=> res!535669 e!439435)))

(declare-fun e!439434 () Bool)

(assert (=> b!790611 (= e!439434 e!439435)))

(declare-fun b!790612 () Bool)

(assert (=> b!790612 (= e!439436 (Intermediate!8122 true (toIndex!0 lt!352825 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!790613 () Bool)

(assert (=> b!790613 (and (bvsge (index!34857 lt!352957) #b00000000000000000000000000000000) (bvslt (index!34857 lt!352957) (size!20936 lt!352823)))))

(declare-fun res!535670 () Bool)

(assert (=> b!790613 (= res!535670 (= (select (arr!20515 lt!352823) (index!34857 lt!352957)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!790613 (=> res!535670 e!439435)))

(declare-fun b!790614 () Bool)

(assert (=> b!790614 (= e!439438 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!352825 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!352825 lt!352823 mask!3328))))

(declare-fun b!790615 () Bool)

(assert (=> b!790615 (= e!439438 (Intermediate!8122 false (toIndex!0 lt!352825 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!790616 () Bool)

(assert (=> b!790616 (and (bvsge (index!34857 lt!352957) #b00000000000000000000000000000000) (bvslt (index!34857 lt!352957) (size!20936 lt!352823)))))

(assert (=> b!790616 (= e!439435 (= (select (arr!20515 lt!352823) (index!34857 lt!352957)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!790617 () Bool)

(assert (=> b!790617 (= e!439437 e!439434)))

(declare-fun res!535671 () Bool)

(assert (=> b!790617 (= res!535671 (and ((_ is Intermediate!8122) lt!352957) (not (undefined!8934 lt!352957)) (bvslt (x!65816 lt!352957) #b01111111111111111111111111111110) (bvsge (x!65816 lt!352957) #b00000000000000000000000000000000) (bvsge (x!65816 lt!352957) #b00000000000000000000000000000000)))))

(assert (=> b!790617 (=> (not res!535671) (not e!439434))))

(assert (= (and d!102947 c!87882) b!790612))

(assert (= (and d!102947 (not c!87882)) b!790610))

(assert (= (and b!790610 c!87880) b!790615))

(assert (= (and b!790610 (not c!87880)) b!790614))

(assert (= (and d!102947 c!87881) b!790609))

(assert (= (and d!102947 (not c!87881)) b!790617))

(assert (= (and b!790617 res!535671) b!790611))

(assert (= (and b!790611 (not res!535669)) b!790613))

(assert (= (and b!790613 (not res!535670)) b!790616))

(declare-fun m!731523 () Bool)

(assert (=> b!790613 m!731523))

(assert (=> b!790616 m!731523))

(assert (=> b!790614 m!731285))

(declare-fun m!731525 () Bool)

(assert (=> b!790614 m!731525))

(assert (=> b!790614 m!731525))

(declare-fun m!731527 () Bool)

(assert (=> b!790614 m!731527))

(assert (=> b!790611 m!731523))

(assert (=> d!102947 m!731285))

(declare-fun m!731529 () Bool)

(assert (=> d!102947 m!731529))

(assert (=> d!102947 m!731309))

(assert (=> b!790253 d!102947))

(declare-fun d!102949 () Bool)

(declare-fun lt!352975 () (_ BitVec 32))

(declare-fun lt!352974 () (_ BitVec 32))

(assert (=> d!102949 (= lt!352975 (bvmul (bvxor lt!352974 (bvlshr lt!352974 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102949 (= lt!352974 ((_ extract 31 0) (bvand (bvxor lt!352825 (bvlshr lt!352825 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102949 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!535672 (let ((h!15696 ((_ extract 31 0) (bvand (bvxor lt!352825 (bvlshr lt!352825 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65826 (bvmul (bvxor h!15696 (bvlshr h!15696 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65826 (bvlshr x!65826 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!535672 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!535672 #b00000000000000000000000000000000))))))

(assert (=> d!102949 (= (toIndex!0 lt!352825 mask!3328) (bvand (bvxor lt!352975 (bvlshr lt!352975 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!790253 d!102949))

(declare-fun d!102959 () Bool)

(assert (=> d!102959 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!790263 d!102959))

(declare-fun b!790640 () Bool)

(declare-fun e!439460 () Bool)

(declare-fun lt!352977 () SeekEntryResult!8122)

(assert (=> b!790640 (= e!439460 (bvsge (x!65816 lt!352977) #b01111111111111111111111111111110))))

(declare-fun d!102961 () Bool)

(assert (=> d!102961 e!439460))

(declare-fun c!87888 () Bool)

(assert (=> d!102961 (= c!87888 (and ((_ is Intermediate!8122) lt!352977) (undefined!8934 lt!352977)))))

(declare-fun e!439459 () SeekEntryResult!8122)

(assert (=> d!102961 (= lt!352977 e!439459)))

(declare-fun c!87889 () Bool)

(assert (=> d!102961 (= c!87889 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!352976 () (_ BitVec 64))

(assert (=> d!102961 (= lt!352976 (select (arr!20515 a!3186) index!1321))))

(assert (=> d!102961 (validMask!0 mask!3328)))

(assert (=> d!102961 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20515 a!3186) j!159) a!3186 mask!3328) lt!352977)))

(declare-fun b!790641 () Bool)

(declare-fun e!439461 () SeekEntryResult!8122)

(assert (=> b!790641 (= e!439459 e!439461)))

(declare-fun c!87887 () Bool)

(assert (=> b!790641 (= c!87887 (or (= lt!352976 (select (arr!20515 a!3186) j!159)) (= (bvadd lt!352976 lt!352976) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!790642 () Bool)

(assert (=> b!790642 (and (bvsge (index!34857 lt!352977) #b00000000000000000000000000000000) (bvslt (index!34857 lt!352977) (size!20936 a!3186)))))

(declare-fun res!535687 () Bool)

(assert (=> b!790642 (= res!535687 (= (select (arr!20515 a!3186) (index!34857 lt!352977)) (select (arr!20515 a!3186) j!159)))))

(declare-fun e!439458 () Bool)

(assert (=> b!790642 (=> res!535687 e!439458)))

(declare-fun e!439457 () Bool)

(assert (=> b!790642 (= e!439457 e!439458)))

(declare-fun b!790643 () Bool)

(assert (=> b!790643 (= e!439459 (Intermediate!8122 true index!1321 x!1131))))

(declare-fun b!790644 () Bool)

(assert (=> b!790644 (and (bvsge (index!34857 lt!352977) #b00000000000000000000000000000000) (bvslt (index!34857 lt!352977) (size!20936 a!3186)))))

(declare-fun res!535688 () Bool)

(assert (=> b!790644 (= res!535688 (= (select (arr!20515 a!3186) (index!34857 lt!352977)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!790644 (=> res!535688 e!439458)))

(declare-fun b!790645 () Bool)

(assert (=> b!790645 (= e!439461 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20515 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!790646 () Bool)

(assert (=> b!790646 (= e!439461 (Intermediate!8122 false index!1321 x!1131))))

(declare-fun b!790647 () Bool)

(assert (=> b!790647 (and (bvsge (index!34857 lt!352977) #b00000000000000000000000000000000) (bvslt (index!34857 lt!352977) (size!20936 a!3186)))))

(assert (=> b!790647 (= e!439458 (= (select (arr!20515 a!3186) (index!34857 lt!352977)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!790648 () Bool)

(assert (=> b!790648 (= e!439460 e!439457)))

(declare-fun res!535689 () Bool)

(assert (=> b!790648 (= res!535689 (and ((_ is Intermediate!8122) lt!352977) (not (undefined!8934 lt!352977)) (bvslt (x!65816 lt!352977) #b01111111111111111111111111111110) (bvsge (x!65816 lt!352977) #b00000000000000000000000000000000) (bvsge (x!65816 lt!352977) x!1131)))))

(assert (=> b!790648 (=> (not res!535689) (not e!439457))))

(assert (= (and d!102961 c!87889) b!790643))

(assert (= (and d!102961 (not c!87889)) b!790641))

(assert (= (and b!790641 c!87887) b!790646))

(assert (= (and b!790641 (not c!87887)) b!790645))

(assert (= (and d!102961 c!87888) b!790640))

(assert (= (and d!102961 (not c!87888)) b!790648))

(assert (= (and b!790648 res!535689) b!790642))

(assert (= (and b!790642 (not res!535687)) b!790644))

(assert (= (and b!790644 (not res!535688)) b!790647))

(declare-fun m!731547 () Bool)

(assert (=> b!790644 m!731547))

(assert (=> b!790647 m!731547))

(assert (=> b!790645 m!731427))

(assert (=> b!790645 m!731427))

(assert (=> b!790645 m!731273))

(declare-fun m!731549 () Bool)

(assert (=> b!790645 m!731549))

(assert (=> b!790642 m!731547))

(assert (=> d!102961 m!731435))

(assert (=> d!102961 m!731309))

(assert (=> b!790261 d!102961))

(declare-fun lt!352985 () SeekEntryResult!8122)

(declare-fun e!439467 () SeekEntryResult!8122)

(declare-fun b!790655 () Bool)

(assert (=> b!790655 (= e!439467 (seekKeyOrZeroReturnVacant!0 (x!65816 lt!352985) (index!34857 lt!352985) (index!34857 lt!352985) k0!2102 a!3186 mask!3328))))

(declare-fun b!790656 () Bool)

(assert (=> b!790656 (= e!439467 (MissingZero!8122 (index!34857 lt!352985)))))

(declare-fun b!790657 () Bool)

(declare-fun e!439466 () SeekEntryResult!8122)

(assert (=> b!790657 (= e!439466 Undefined!8122)))

(declare-fun b!790658 () Bool)

(declare-fun c!87893 () Bool)

(declare-fun lt!352984 () (_ BitVec 64))

(assert (=> b!790658 (= c!87893 (= lt!352984 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!439465 () SeekEntryResult!8122)

(assert (=> b!790658 (= e!439465 e!439467)))

(declare-fun b!790659 () Bool)

(assert (=> b!790659 (= e!439465 (Found!8122 (index!34857 lt!352985)))))

(declare-fun b!790660 () Bool)

(assert (=> b!790660 (= e!439466 e!439465)))

(assert (=> b!790660 (= lt!352984 (select (arr!20515 a!3186) (index!34857 lt!352985)))))

(declare-fun c!87894 () Bool)

(assert (=> b!790660 (= c!87894 (= lt!352984 k0!2102))))

(declare-fun d!102965 () Bool)

(declare-fun lt!352983 () SeekEntryResult!8122)

(assert (=> d!102965 (and (or ((_ is Undefined!8122) lt!352983) (not ((_ is Found!8122) lt!352983)) (and (bvsge (index!34856 lt!352983) #b00000000000000000000000000000000) (bvslt (index!34856 lt!352983) (size!20936 a!3186)))) (or ((_ is Undefined!8122) lt!352983) ((_ is Found!8122) lt!352983) (not ((_ is MissingZero!8122) lt!352983)) (and (bvsge (index!34855 lt!352983) #b00000000000000000000000000000000) (bvslt (index!34855 lt!352983) (size!20936 a!3186)))) (or ((_ is Undefined!8122) lt!352983) ((_ is Found!8122) lt!352983) ((_ is MissingZero!8122) lt!352983) (not ((_ is MissingVacant!8122) lt!352983)) (and (bvsge (index!34858 lt!352983) #b00000000000000000000000000000000) (bvslt (index!34858 lt!352983) (size!20936 a!3186)))) (or ((_ is Undefined!8122) lt!352983) (ite ((_ is Found!8122) lt!352983) (= (select (arr!20515 a!3186) (index!34856 lt!352983)) k0!2102) (ite ((_ is MissingZero!8122) lt!352983) (= (select (arr!20515 a!3186) (index!34855 lt!352983)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8122) lt!352983) (= (select (arr!20515 a!3186) (index!34858 lt!352983)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102965 (= lt!352983 e!439466)))

(declare-fun c!87895 () Bool)

(assert (=> d!102965 (= c!87895 (and ((_ is Intermediate!8122) lt!352985) (undefined!8934 lt!352985)))))

(assert (=> d!102965 (= lt!352985 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!102965 (validMask!0 mask!3328)))

(assert (=> d!102965 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!352983)))

(assert (= (and d!102965 c!87895) b!790657))

(assert (= (and d!102965 (not c!87895)) b!790660))

(assert (= (and b!790660 c!87894) b!790659))

(assert (= (and b!790660 (not c!87894)) b!790658))

(assert (= (and b!790658 c!87893) b!790656))

(assert (= (and b!790658 (not c!87893)) b!790655))

(declare-fun m!731559 () Bool)

(assert (=> b!790655 m!731559))

(declare-fun m!731561 () Bool)

(assert (=> b!790660 m!731561))

(declare-fun m!731563 () Bool)

(assert (=> d!102965 m!731563))

(declare-fun m!731565 () Bool)

(assert (=> d!102965 m!731565))

(declare-fun m!731567 () Bool)

(assert (=> d!102965 m!731567))

(assert (=> d!102965 m!731565))

(assert (=> d!102965 m!731309))

(declare-fun m!731569 () Bool)

(assert (=> d!102965 m!731569))

(declare-fun m!731571 () Bool)

(assert (=> d!102965 m!731571))

(assert (=> b!790260 d!102965))

(declare-fun d!102967 () Bool)

(assert (=> d!102967 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67932 d!102967))

(declare-fun d!102971 () Bool)

(assert (=> d!102971 (= (array_inv!16289 a!3186) (bvsge (size!20936 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67932 d!102971))

(declare-fun b!790665 () Bool)

(declare-fun e!439474 () Bool)

(declare-fun lt!352990 () SeekEntryResult!8122)

(assert (=> b!790665 (= e!439474 (bvsge (x!65816 lt!352990) #b01111111111111111111111111111110))))

(declare-fun d!102973 () Bool)

(assert (=> d!102973 e!439474))

(declare-fun c!87898 () Bool)

(assert (=> d!102973 (= c!87898 (and ((_ is Intermediate!8122) lt!352990) (undefined!8934 lt!352990)))))

(declare-fun e!439473 () SeekEntryResult!8122)

(assert (=> d!102973 (= lt!352990 e!439473)))

(declare-fun c!87899 () Bool)

(assert (=> d!102973 (= c!87899 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!352989 () (_ BitVec 64))

(assert (=> d!102973 (= lt!352989 (select (arr!20515 a!3186) (toIndex!0 (select (arr!20515 a!3186) j!159) mask!3328)))))

(assert (=> d!102973 (validMask!0 mask!3328)))

(assert (=> d!102973 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20515 a!3186) j!159) mask!3328) (select (arr!20515 a!3186) j!159) a!3186 mask!3328) lt!352990)))

(declare-fun b!790666 () Bool)

(declare-fun e!439475 () SeekEntryResult!8122)

(assert (=> b!790666 (= e!439473 e!439475)))

(declare-fun c!87897 () Bool)

(assert (=> b!790666 (= c!87897 (or (= lt!352989 (select (arr!20515 a!3186) j!159)) (= (bvadd lt!352989 lt!352989) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!790667 () Bool)

(assert (=> b!790667 (and (bvsge (index!34857 lt!352990) #b00000000000000000000000000000000) (bvslt (index!34857 lt!352990) (size!20936 a!3186)))))

(declare-fun res!535692 () Bool)

(assert (=> b!790667 (= res!535692 (= (select (arr!20515 a!3186) (index!34857 lt!352990)) (select (arr!20515 a!3186) j!159)))))

(declare-fun e!439472 () Bool)

(assert (=> b!790667 (=> res!535692 e!439472)))

(declare-fun e!439471 () Bool)

(assert (=> b!790667 (= e!439471 e!439472)))

(declare-fun b!790668 () Bool)

(assert (=> b!790668 (= e!439473 (Intermediate!8122 true (toIndex!0 (select (arr!20515 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!790669 () Bool)

(assert (=> b!790669 (and (bvsge (index!34857 lt!352990) #b00000000000000000000000000000000) (bvslt (index!34857 lt!352990) (size!20936 a!3186)))))

(declare-fun res!535693 () Bool)

(assert (=> b!790669 (= res!535693 (= (select (arr!20515 a!3186) (index!34857 lt!352990)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!790669 (=> res!535693 e!439472)))

(declare-fun b!790670 () Bool)

(assert (=> b!790670 (= e!439475 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20515 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20515 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!790671 () Bool)

(assert (=> b!790671 (= e!439475 (Intermediate!8122 false (toIndex!0 (select (arr!20515 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!790672 () Bool)

(assert (=> b!790672 (and (bvsge (index!34857 lt!352990) #b00000000000000000000000000000000) (bvslt (index!34857 lt!352990) (size!20936 a!3186)))))

(assert (=> b!790672 (= e!439472 (= (select (arr!20515 a!3186) (index!34857 lt!352990)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!790673 () Bool)

(assert (=> b!790673 (= e!439474 e!439471)))

(declare-fun res!535694 () Bool)

(assert (=> b!790673 (= res!535694 (and ((_ is Intermediate!8122) lt!352990) (not (undefined!8934 lt!352990)) (bvslt (x!65816 lt!352990) #b01111111111111111111111111111110) (bvsge (x!65816 lt!352990) #b00000000000000000000000000000000) (bvsge (x!65816 lt!352990) #b00000000000000000000000000000000)))))

(assert (=> b!790673 (=> (not res!535694) (not e!439471))))

(assert (= (and d!102973 c!87899) b!790668))

(assert (= (and d!102973 (not c!87899)) b!790666))

(assert (= (and b!790666 c!87897) b!790671))

(assert (= (and b!790666 (not c!87897)) b!790670))

(assert (= (and d!102973 c!87898) b!790665))

(assert (= (and d!102973 (not c!87898)) b!790673))

(assert (= (and b!790673 res!535694) b!790667))

(assert (= (and b!790667 (not res!535692)) b!790669))

(assert (= (and b!790669 (not res!535693)) b!790672))

(declare-fun m!731583 () Bool)

(assert (=> b!790669 m!731583))

(assert (=> b!790672 m!731583))

(assert (=> b!790670 m!731279))

(declare-fun m!731585 () Bool)

(assert (=> b!790670 m!731585))

(assert (=> b!790670 m!731585))

(assert (=> b!790670 m!731273))

(declare-fun m!731587 () Bool)

(assert (=> b!790670 m!731587))

(assert (=> b!790667 m!731583))

(assert (=> d!102973 m!731279))

(declare-fun m!731593 () Bool)

(assert (=> d!102973 m!731593))

(assert (=> d!102973 m!731309))

(assert (=> b!790269 d!102973))

(declare-fun d!102979 () Bool)

(declare-fun lt!352994 () (_ BitVec 32))

(declare-fun lt!352993 () (_ BitVec 32))

(assert (=> d!102979 (= lt!352994 (bvmul (bvxor lt!352993 (bvlshr lt!352993 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102979 (= lt!352993 ((_ extract 31 0) (bvand (bvxor (select (arr!20515 a!3186) j!159) (bvlshr (select (arr!20515 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102979 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!535672 (let ((h!15696 ((_ extract 31 0) (bvand (bvxor (select (arr!20515 a!3186) j!159) (bvlshr (select (arr!20515 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65826 (bvmul (bvxor h!15696 (bvlshr h!15696 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65826 (bvlshr x!65826 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!535672 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!535672 #b00000000000000000000000000000000))))))

(assert (=> d!102979 (= (toIndex!0 (select (arr!20515 a!3186) j!159) mask!3328) (bvand (bvxor lt!352994 (bvlshr lt!352994 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!790269 d!102979))

(declare-fun d!102983 () Bool)

(declare-fun res!535699 () Bool)

(declare-fun e!439483 () Bool)

(assert (=> d!102983 (=> res!535699 e!439483)))

(assert (=> d!102983 (= res!535699 (= (select (arr!20515 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!102983 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!439483)))

(declare-fun b!790684 () Bool)

(declare-fun e!439484 () Bool)

(assert (=> b!790684 (= e!439483 e!439484)))

(declare-fun res!535700 () Bool)

(assert (=> b!790684 (=> (not res!535700) (not e!439484))))

(assert (=> b!790684 (= res!535700 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20936 a!3186)))))

(declare-fun b!790685 () Bool)

(assert (=> b!790685 (= e!439484 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!102983 (not res!535699)) b!790684))

(assert (= (and b!790684 res!535700) b!790685))

(assert (=> d!102983 m!731379))

(declare-fun m!731599 () Bool)

(assert (=> b!790685 m!731599))

(assert (=> b!790258 d!102983))

(check-sat (not d!102917) (not b!790333) (not b!790685) (not b!790597) (not b!790472) (not d!102961) (not d!102947) (not b!790376) (not bm!35301) (not b!790365) (not d!102973) (not b!790478) (not b!790614) (not b!790379) (not b!790381) (not b!790377) (not b!790655) (not b!790384) (not bm!35304) (not b!790670) (not bm!35305) (not b!790362) (not d!102901) (not d!102965) (not d!102913) (not d!102883) (not d!102897) (not b!790645))
(check-sat)
