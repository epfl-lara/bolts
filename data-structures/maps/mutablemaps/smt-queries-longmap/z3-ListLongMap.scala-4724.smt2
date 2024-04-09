; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65424 () Bool)

(assert start!65424)

(declare-fun b!744264 () Bool)

(declare-fun e!415792 () Bool)

(assert (=> b!744264 (= e!415792 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41550 0))(
  ( (array!41551 (arr!19885 (Array (_ BitVec 32) (_ BitVec 64))) (size!20306 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41550)

(declare-datatypes ((SeekEntryResult!7492 0))(
  ( (MissingZero!7492 (index!32335 (_ BitVec 32))) (Found!7492 (index!32336 (_ BitVec 32))) (Intermediate!7492 (undefined!8304 Bool) (index!32337 (_ BitVec 32)) (x!63323 (_ BitVec 32))) (Undefined!7492) (MissingVacant!7492 (index!32338 (_ BitVec 32))) )
))
(declare-fun lt!330652 () SeekEntryResult!7492)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41550 (_ BitVec 32)) SeekEntryResult!7492)

(assert (=> b!744264 (= lt!330652 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19885 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!744265 () Bool)

(declare-fun e!415794 () Bool)

(assert (=> b!744265 (= e!415794 (not e!415792))))

(declare-fun res!501406 () Bool)

(assert (=> b!744265 (=> res!501406 e!415792)))

(declare-fun lt!330657 () SeekEntryResult!7492)

(get-info :version)

(assert (=> b!744265 (= res!501406 (or (not ((_ is Intermediate!7492) lt!330657)) (bvslt x!1131 (x!63323 lt!330657)) (not (= x!1131 (x!63323 lt!330657))) (not (= index!1321 (index!32337 lt!330657)))))))

(declare-fun e!415786 () Bool)

(assert (=> b!744265 e!415786))

(declare-fun res!501402 () Bool)

(assert (=> b!744265 (=> (not res!501402) (not e!415786))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41550 (_ BitVec 32)) Bool)

(assert (=> b!744265 (= res!501402 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25464 0))(
  ( (Unit!25465) )
))
(declare-fun lt!330656 () Unit!25464)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41550 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25464)

(assert (=> b!744265 (= lt!330656 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!744266 () Bool)

(declare-fun res!501404 () Bool)

(declare-fun e!415790 () Bool)

(assert (=> b!744266 (=> (not res!501404) (not e!415790))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!744266 (= res!501404 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19885 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!744267 () Bool)

(declare-fun res!501395 () Bool)

(declare-fun e!415789 () Bool)

(assert (=> b!744267 (=> (not res!501395) (not e!415789))))

(declare-datatypes ((List!13940 0))(
  ( (Nil!13937) (Cons!13936 (h!15008 (_ BitVec 64)) (t!20263 List!13940)) )
))
(declare-fun arrayNoDuplicates!0 (array!41550 (_ BitVec 32) List!13940) Bool)

(assert (=> b!744267 (= res!501395 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13937))))

(declare-fun b!744268 () Bool)

(declare-fun e!415787 () Bool)

(assert (=> b!744268 (= e!415787 e!415789)))

(declare-fun res!501396 () Bool)

(assert (=> b!744268 (=> (not res!501396) (not e!415789))))

(declare-fun lt!330653 () SeekEntryResult!7492)

(assert (=> b!744268 (= res!501396 (or (= lt!330653 (MissingZero!7492 i!1173)) (= lt!330653 (MissingVacant!7492 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41550 (_ BitVec 32)) SeekEntryResult!7492)

(assert (=> b!744268 (= lt!330653 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun e!415793 () Bool)

(declare-fun lt!330655 () SeekEntryResult!7492)

(declare-fun b!744269 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41550 (_ BitVec 32)) SeekEntryResult!7492)

(assert (=> b!744269 (= e!415793 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19885 a!3186) j!159) a!3186 mask!3328) lt!330655))))

(declare-fun e!415788 () Bool)

(declare-fun lt!330658 () SeekEntryResult!7492)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!744270 () Bool)

(assert (=> b!744270 (= e!415788 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19885 a!3186) j!159) a!3186 mask!3328) lt!330658))))

(declare-fun res!501397 () Bool)

(assert (=> start!65424 (=> (not res!501397) (not e!415787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65424 (= res!501397 (validMask!0 mask!3328))))

(assert (=> start!65424 e!415787))

(assert (=> start!65424 true))

(declare-fun array_inv!15659 (array!41550) Bool)

(assert (=> start!65424 (array_inv!15659 a!3186)))

(declare-fun b!744271 () Bool)

(assert (=> b!744271 (= e!415793 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19885 a!3186) j!159) a!3186 mask!3328) (Found!7492 j!159)))))

(declare-fun b!744272 () Bool)

(declare-fun res!501398 () Bool)

(assert (=> b!744272 (=> (not res!501398) (not e!415787))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744272 (= res!501398 (validKeyInArray!0 k0!2102))))

(declare-fun b!744273 () Bool)

(declare-fun res!501403 () Bool)

(assert (=> b!744273 (=> (not res!501403) (not e!415787))))

(declare-fun arrayContainsKey!0 (array!41550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744273 (= res!501403 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!744274 () Bool)

(assert (=> b!744274 (= e!415786 e!415788)))

(declare-fun res!501405 () Bool)

(assert (=> b!744274 (=> (not res!501405) (not e!415788))))

(assert (=> b!744274 (= res!501405 (= (seekEntryOrOpen!0 (select (arr!19885 a!3186) j!159) a!3186 mask!3328) lt!330658))))

(assert (=> b!744274 (= lt!330658 (Found!7492 j!159))))

(declare-fun b!744275 () Bool)

(declare-fun res!501399 () Bool)

(assert (=> b!744275 (=> (not res!501399) (not e!415789))))

(assert (=> b!744275 (= res!501399 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20306 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20306 a!3186))))))

(declare-fun b!744276 () Bool)

(assert (=> b!744276 (= e!415790 e!415794)))

(declare-fun res!501401 () Bool)

(assert (=> b!744276 (=> (not res!501401) (not e!415794))))

(declare-fun lt!330651 () SeekEntryResult!7492)

(assert (=> b!744276 (= res!501401 (= lt!330651 lt!330657))))

(declare-fun lt!330659 () array!41550)

(declare-fun lt!330654 () (_ BitVec 64))

(assert (=> b!744276 (= lt!330657 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330654 lt!330659 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744276 (= lt!330651 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330654 mask!3328) lt!330654 lt!330659 mask!3328))))

(assert (=> b!744276 (= lt!330654 (select (store (arr!19885 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!744276 (= lt!330659 (array!41551 (store (arr!19885 a!3186) i!1173 k0!2102) (size!20306 a!3186)))))

(declare-fun b!744277 () Bool)

(declare-fun res!501408 () Bool)

(assert (=> b!744277 (=> (not res!501408) (not e!415787))))

(assert (=> b!744277 (= res!501408 (validKeyInArray!0 (select (arr!19885 a!3186) j!159)))))

(declare-fun b!744278 () Bool)

(assert (=> b!744278 (= e!415789 e!415790)))

(declare-fun res!501407 () Bool)

(assert (=> b!744278 (=> (not res!501407) (not e!415790))))

(assert (=> b!744278 (= res!501407 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19885 a!3186) j!159) mask!3328) (select (arr!19885 a!3186) j!159) a!3186 mask!3328) lt!330655))))

(assert (=> b!744278 (= lt!330655 (Intermediate!7492 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!744279 () Bool)

(declare-fun res!501394 () Bool)

(assert (=> b!744279 (=> (not res!501394) (not e!415790))))

(assert (=> b!744279 (= res!501394 e!415793)))

(declare-fun c!81816 () Bool)

(assert (=> b!744279 (= c!81816 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744280 () Bool)

(declare-fun res!501400 () Bool)

(assert (=> b!744280 (=> (not res!501400) (not e!415787))))

(assert (=> b!744280 (= res!501400 (and (= (size!20306 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20306 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20306 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!744281 () Bool)

(declare-fun res!501393 () Bool)

(assert (=> b!744281 (=> (not res!501393) (not e!415789))))

(assert (=> b!744281 (= res!501393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65424 res!501397) b!744280))

(assert (= (and b!744280 res!501400) b!744277))

(assert (= (and b!744277 res!501408) b!744272))

(assert (= (and b!744272 res!501398) b!744273))

(assert (= (and b!744273 res!501403) b!744268))

(assert (= (and b!744268 res!501396) b!744281))

(assert (= (and b!744281 res!501393) b!744267))

(assert (= (and b!744267 res!501395) b!744275))

(assert (= (and b!744275 res!501399) b!744278))

(assert (= (and b!744278 res!501407) b!744266))

(assert (= (and b!744266 res!501404) b!744279))

(assert (= (and b!744279 c!81816) b!744269))

(assert (= (and b!744279 (not c!81816)) b!744271))

(assert (= (and b!744279 res!501394) b!744276))

(assert (= (and b!744276 res!501401) b!744265))

(assert (= (and b!744265 res!501402) b!744274))

(assert (= (and b!744274 res!501405) b!744270))

(assert (= (and b!744265 (not res!501406)) b!744264))

(declare-fun m!694901 () Bool)

(assert (=> b!744271 m!694901))

(assert (=> b!744271 m!694901))

(declare-fun m!694903 () Bool)

(assert (=> b!744271 m!694903))

(assert (=> b!744269 m!694901))

(assert (=> b!744269 m!694901))

(declare-fun m!694905 () Bool)

(assert (=> b!744269 m!694905))

(assert (=> b!744277 m!694901))

(assert (=> b!744277 m!694901))

(declare-fun m!694907 () Bool)

(assert (=> b!744277 m!694907))

(declare-fun m!694909 () Bool)

(assert (=> b!744272 m!694909))

(assert (=> b!744274 m!694901))

(assert (=> b!744274 m!694901))

(declare-fun m!694911 () Bool)

(assert (=> b!744274 m!694911))

(declare-fun m!694913 () Bool)

(assert (=> b!744268 m!694913))

(declare-fun m!694915 () Bool)

(assert (=> b!744267 m!694915))

(declare-fun m!694917 () Bool)

(assert (=> b!744265 m!694917))

(declare-fun m!694919 () Bool)

(assert (=> b!744265 m!694919))

(declare-fun m!694921 () Bool)

(assert (=> start!65424 m!694921))

(declare-fun m!694923 () Bool)

(assert (=> start!65424 m!694923))

(declare-fun m!694925 () Bool)

(assert (=> b!744266 m!694925))

(declare-fun m!694927 () Bool)

(assert (=> b!744281 m!694927))

(declare-fun m!694929 () Bool)

(assert (=> b!744273 m!694929))

(assert (=> b!744270 m!694901))

(assert (=> b!744270 m!694901))

(declare-fun m!694931 () Bool)

(assert (=> b!744270 m!694931))

(assert (=> b!744264 m!694901))

(assert (=> b!744264 m!694901))

(assert (=> b!744264 m!694903))

(declare-fun m!694933 () Bool)

(assert (=> b!744276 m!694933))

(declare-fun m!694935 () Bool)

(assert (=> b!744276 m!694935))

(declare-fun m!694937 () Bool)

(assert (=> b!744276 m!694937))

(declare-fun m!694939 () Bool)

(assert (=> b!744276 m!694939))

(declare-fun m!694941 () Bool)

(assert (=> b!744276 m!694941))

(assert (=> b!744276 m!694935))

(assert (=> b!744278 m!694901))

(assert (=> b!744278 m!694901))

(declare-fun m!694943 () Bool)

(assert (=> b!744278 m!694943))

(assert (=> b!744278 m!694943))

(assert (=> b!744278 m!694901))

(declare-fun m!694945 () Bool)

(assert (=> b!744278 m!694945))

(check-sat (not b!744265) (not b!744272) (not start!65424) (not b!744274) (not b!744276) (not b!744268) (not b!744271) (not b!744273) (not b!744281) (not b!744267) (not b!744269) (not b!744277) (not b!744270) (not b!744278) (not b!744264))
(check-sat)
