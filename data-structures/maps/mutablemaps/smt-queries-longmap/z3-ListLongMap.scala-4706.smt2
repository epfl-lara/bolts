; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65316 () Bool)

(assert start!65316)

(declare-fun res!498715 () Bool)

(declare-fun e!414384 () Bool)

(assert (=> start!65316 (=> (not res!498715) (not e!414384))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65316 (= res!498715 (validMask!0 mask!3328))))

(assert (=> start!65316 e!414384))

(assert (=> start!65316 true))

(declare-datatypes ((array!41442 0))(
  ( (array!41443 (arr!19831 (Array (_ BitVec 32) (_ BitVec 64))) (size!20252 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41442)

(declare-fun array_inv!15605 (array!41442) Bool)

(assert (=> start!65316 (array_inv!15605 a!3186)))

(declare-fun b!741262 () Bool)

(declare-fun res!498720 () Bool)

(declare-fun e!414379 () Bool)

(assert (=> b!741262 (=> (not res!498720) (not e!414379))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!741262 (= res!498720 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20252 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20252 a!3186))))))

(declare-fun b!741263 () Bool)

(declare-fun res!498729 () Bool)

(declare-fun e!414377 () Bool)

(assert (=> b!741263 (=> (not res!498729) (not e!414377))))

(declare-fun e!414382 () Bool)

(assert (=> b!741263 (= res!498729 e!414382)))

(declare-fun c!81654 () Bool)

(assert (=> b!741263 (= c!81654 (bvsle x!1131 resIntermediateX!5))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!741264 () Bool)

(declare-datatypes ((SeekEntryResult!7438 0))(
  ( (MissingZero!7438 (index!32119 (_ BitVec 32))) (Found!7438 (index!32120 (_ BitVec 32))) (Intermediate!7438 (undefined!8250 Bool) (index!32121 (_ BitVec 32)) (x!63125 (_ BitVec 32))) (Undefined!7438) (MissingVacant!7438 (index!32122 (_ BitVec 32))) )
))
(declare-fun lt!329350 () SeekEntryResult!7438)

(declare-fun e!414378 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41442 (_ BitVec 32)) SeekEntryResult!7438)

(assert (=> b!741264 (= e!414378 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19831 a!3186) j!159) a!3186 mask!3328) lt!329350))))

(declare-fun b!741265 () Bool)

(declare-fun res!498724 () Bool)

(assert (=> b!741265 (=> (not res!498724) (not e!414384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741265 (= res!498724 (validKeyInArray!0 (select (arr!19831 a!3186) j!159)))))

(declare-fun b!741266 () Bool)

(declare-fun res!498726 () Bool)

(assert (=> b!741266 (=> (not res!498726) (not e!414384))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!741266 (= res!498726 (validKeyInArray!0 k0!2102))))

(declare-fun b!741267 () Bool)

(declare-fun e!414381 () Bool)

(assert (=> b!741267 (= e!414381 (not true))))

(declare-fun e!414380 () Bool)

(assert (=> b!741267 e!414380))

(declare-fun res!498719 () Bool)

(assert (=> b!741267 (=> (not res!498719) (not e!414380))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41442 (_ BitVec 32)) Bool)

(assert (=> b!741267 (= res!498719 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25356 0))(
  ( (Unit!25357) )
))
(declare-fun lt!329351 () Unit!25356)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41442 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25356)

(assert (=> b!741267 (= lt!329351 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741268 () Bool)

(assert (=> b!741268 (= e!414380 e!414378)))

(declare-fun res!498727 () Bool)

(assert (=> b!741268 (=> (not res!498727) (not e!414378))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41442 (_ BitVec 32)) SeekEntryResult!7438)

(assert (=> b!741268 (= res!498727 (= (seekEntryOrOpen!0 (select (arr!19831 a!3186) j!159) a!3186 mask!3328) lt!329350))))

(assert (=> b!741268 (= lt!329350 (Found!7438 j!159))))

(declare-fun b!741269 () Bool)

(declare-fun res!498716 () Bool)

(assert (=> b!741269 (=> (not res!498716) (not e!414384))))

(declare-fun arrayContainsKey!0 (array!41442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741269 (= res!498716 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!741270 () Bool)

(assert (=> b!741270 (= e!414384 e!414379)))

(declare-fun res!498718 () Bool)

(assert (=> b!741270 (=> (not res!498718) (not e!414379))))

(declare-fun lt!329349 () SeekEntryResult!7438)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!741270 (= res!498718 (or (= lt!329349 (MissingZero!7438 i!1173)) (= lt!329349 (MissingVacant!7438 i!1173))))))

(assert (=> b!741270 (= lt!329349 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!741271 () Bool)

(declare-fun res!498717 () Bool)

(assert (=> b!741271 (=> (not res!498717) (not e!414377))))

(assert (=> b!741271 (= res!498717 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19831 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!741272 () Bool)

(declare-fun res!498725 () Bool)

(assert (=> b!741272 (=> (not res!498725) (not e!414379))))

(declare-datatypes ((List!13886 0))(
  ( (Nil!13883) (Cons!13882 (h!14954 (_ BitVec 64)) (t!20209 List!13886)) )
))
(declare-fun arrayNoDuplicates!0 (array!41442 (_ BitVec 32) List!13886) Bool)

(assert (=> b!741272 (= res!498725 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13883))))

(declare-fun b!741273 () Bool)

(declare-fun lt!329353 () SeekEntryResult!7438)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41442 (_ BitVec 32)) SeekEntryResult!7438)

(assert (=> b!741273 (= e!414382 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19831 a!3186) j!159) a!3186 mask!3328) lt!329353))))

(declare-fun b!741274 () Bool)

(declare-fun res!498723 () Bool)

(assert (=> b!741274 (=> (not res!498723) (not e!414379))))

(assert (=> b!741274 (= res!498723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741275 () Bool)

(assert (=> b!741275 (= e!414379 e!414377)))

(declare-fun res!498728 () Bool)

(assert (=> b!741275 (=> (not res!498728) (not e!414377))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741275 (= res!498728 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19831 a!3186) j!159) mask!3328) (select (arr!19831 a!3186) j!159) a!3186 mask!3328) lt!329353))))

(assert (=> b!741275 (= lt!329353 (Intermediate!7438 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741276 () Bool)

(declare-fun res!498722 () Bool)

(assert (=> b!741276 (=> (not res!498722) (not e!414384))))

(assert (=> b!741276 (= res!498722 (and (= (size!20252 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20252 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20252 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!741277 () Bool)

(assert (=> b!741277 (= e!414377 e!414381)))

(declare-fun res!498721 () Bool)

(assert (=> b!741277 (=> (not res!498721) (not e!414381))))

(declare-fun lt!329352 () array!41442)

(declare-fun lt!329354 () (_ BitVec 64))

(assert (=> b!741277 (= res!498721 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329354 mask!3328) lt!329354 lt!329352 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329354 lt!329352 mask!3328)))))

(assert (=> b!741277 (= lt!329354 (select (store (arr!19831 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!741277 (= lt!329352 (array!41443 (store (arr!19831 a!3186) i!1173 k0!2102) (size!20252 a!3186)))))

(declare-fun b!741278 () Bool)

(assert (=> b!741278 (= e!414382 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19831 a!3186) j!159) a!3186 mask!3328) (Found!7438 j!159)))))

(assert (= (and start!65316 res!498715) b!741276))

(assert (= (and b!741276 res!498722) b!741265))

(assert (= (and b!741265 res!498724) b!741266))

(assert (= (and b!741266 res!498726) b!741269))

(assert (= (and b!741269 res!498716) b!741270))

(assert (= (and b!741270 res!498718) b!741274))

(assert (= (and b!741274 res!498723) b!741272))

(assert (= (and b!741272 res!498725) b!741262))

(assert (= (and b!741262 res!498720) b!741275))

(assert (= (and b!741275 res!498728) b!741271))

(assert (= (and b!741271 res!498717) b!741263))

(assert (= (and b!741263 c!81654) b!741273))

(assert (= (and b!741263 (not c!81654)) b!741278))

(assert (= (and b!741263 res!498729) b!741277))

(assert (= (and b!741277 res!498721) b!741267))

(assert (= (and b!741267 res!498719) b!741268))

(assert (= (and b!741268 res!498727) b!741264))

(declare-fun m!692339 () Bool)

(assert (=> b!741278 m!692339))

(assert (=> b!741278 m!692339))

(declare-fun m!692341 () Bool)

(assert (=> b!741278 m!692341))

(declare-fun m!692343 () Bool)

(assert (=> b!741277 m!692343))

(declare-fun m!692345 () Bool)

(assert (=> b!741277 m!692345))

(declare-fun m!692347 () Bool)

(assert (=> b!741277 m!692347))

(declare-fun m!692349 () Bool)

(assert (=> b!741277 m!692349))

(assert (=> b!741277 m!692345))

(declare-fun m!692351 () Bool)

(assert (=> b!741277 m!692351))

(declare-fun m!692353 () Bool)

(assert (=> b!741270 m!692353))

(assert (=> b!741265 m!692339))

(assert (=> b!741265 m!692339))

(declare-fun m!692355 () Bool)

(assert (=> b!741265 m!692355))

(assert (=> b!741275 m!692339))

(assert (=> b!741275 m!692339))

(declare-fun m!692357 () Bool)

(assert (=> b!741275 m!692357))

(assert (=> b!741275 m!692357))

(assert (=> b!741275 m!692339))

(declare-fun m!692359 () Bool)

(assert (=> b!741275 m!692359))

(assert (=> b!741264 m!692339))

(assert (=> b!741264 m!692339))

(declare-fun m!692361 () Bool)

(assert (=> b!741264 m!692361))

(declare-fun m!692363 () Bool)

(assert (=> start!65316 m!692363))

(declare-fun m!692365 () Bool)

(assert (=> start!65316 m!692365))

(declare-fun m!692367 () Bool)

(assert (=> b!741274 m!692367))

(declare-fun m!692369 () Bool)

(assert (=> b!741266 m!692369))

(declare-fun m!692371 () Bool)

(assert (=> b!741269 m!692371))

(declare-fun m!692373 () Bool)

(assert (=> b!741271 m!692373))

(declare-fun m!692375 () Bool)

(assert (=> b!741272 m!692375))

(declare-fun m!692377 () Bool)

(assert (=> b!741267 m!692377))

(declare-fun m!692379 () Bool)

(assert (=> b!741267 m!692379))

(assert (=> b!741273 m!692339))

(assert (=> b!741273 m!692339))

(declare-fun m!692381 () Bool)

(assert (=> b!741273 m!692381))

(assert (=> b!741268 m!692339))

(assert (=> b!741268 m!692339))

(declare-fun m!692383 () Bool)

(assert (=> b!741268 m!692383))

(check-sat (not b!741278) (not b!741270) (not b!741273) (not b!741268) (not b!741266) (not b!741275) (not b!741267) (not b!741277) (not b!741272) (not start!65316) (not b!741265) (not b!741274) (not b!741264) (not b!741269))
(check-sat)
