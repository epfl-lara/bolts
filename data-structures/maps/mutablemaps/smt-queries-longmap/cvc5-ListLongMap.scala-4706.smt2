; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65314 () Bool)

(assert start!65314)

(declare-fun b!741211 () Bool)

(declare-fun res!498671 () Bool)

(declare-fun e!414356 () Bool)

(assert (=> b!741211 (=> (not res!498671) (not e!414356))))

(declare-datatypes ((array!41440 0))(
  ( (array!41441 (arr!19830 (Array (_ BitVec 32) (_ BitVec 64))) (size!20251 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41440)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!741211 (= res!498671 (validKeyInArray!0 (select (arr!19830 a!3186) j!159)))))

(declare-fun e!414354 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7437 0))(
  ( (MissingZero!7437 (index!32115 (_ BitVec 32))) (Found!7437 (index!32116 (_ BitVec 32))) (Intermediate!7437 (undefined!8249 Bool) (index!32117 (_ BitVec 32)) (x!63124 (_ BitVec 32))) (Undefined!7437) (MissingVacant!7437 (index!32118 (_ BitVec 32))) )
))
(declare-fun lt!329333 () SeekEntryResult!7437)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!741212 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41440 (_ BitVec 32)) SeekEntryResult!7437)

(assert (=> b!741212 (= e!414354 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19830 a!3186) j!159) a!3186 mask!3328) lt!329333))))

(declare-fun b!741213 () Bool)

(declare-fun e!414358 () Bool)

(assert (=> b!741213 (= e!414358 (not true))))

(declare-fun e!414357 () Bool)

(assert (=> b!741213 e!414357))

(declare-fun res!498680 () Bool)

(assert (=> b!741213 (=> (not res!498680) (not e!414357))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41440 (_ BitVec 32)) Bool)

(assert (=> b!741213 (= res!498680 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25354 0))(
  ( (Unit!25355) )
))
(declare-fun lt!329336 () Unit!25354)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41440 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25354)

(assert (=> b!741213 (= lt!329336 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!741214 () Bool)

(declare-fun e!414353 () Bool)

(assert (=> b!741214 (= e!414357 e!414353)))

(declare-fun res!498673 () Bool)

(assert (=> b!741214 (=> (not res!498673) (not e!414353))))

(declare-fun lt!329335 () SeekEntryResult!7437)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41440 (_ BitVec 32)) SeekEntryResult!7437)

(assert (=> b!741214 (= res!498673 (= (seekEntryOrOpen!0 (select (arr!19830 a!3186) j!159) a!3186 mask!3328) lt!329335))))

(assert (=> b!741214 (= lt!329335 (Found!7437 j!159))))

(declare-fun b!741215 () Bool)

(declare-fun res!498674 () Bool)

(assert (=> b!741215 (=> (not res!498674) (not e!414356))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!741215 (= res!498674 (validKeyInArray!0 k!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!741216 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41440 (_ BitVec 32)) SeekEntryResult!7437)

(assert (=> b!741216 (= e!414353 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19830 a!3186) j!159) a!3186 mask!3328) lt!329335))))

(declare-fun b!741217 () Bool)

(declare-fun res!498672 () Bool)

(declare-fun e!414360 () Bool)

(assert (=> b!741217 (=> (not res!498672) (not e!414360))))

(assert (=> b!741217 (= res!498672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!741218 () Bool)

(declare-fun res!498670 () Bool)

(declare-fun e!414359 () Bool)

(assert (=> b!741218 (=> (not res!498670) (not e!414359))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!741218 (= res!498670 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19830 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!498683 () Bool)

(assert (=> start!65314 (=> (not res!498683) (not e!414356))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65314 (= res!498683 (validMask!0 mask!3328))))

(assert (=> start!65314 e!414356))

(assert (=> start!65314 true))

(declare-fun array_inv!15604 (array!41440) Bool)

(assert (=> start!65314 (array_inv!15604 a!3186)))

(declare-fun b!741219 () Bool)

(declare-fun res!498676 () Bool)

(assert (=> b!741219 (=> (not res!498676) (not e!414359))))

(assert (=> b!741219 (= res!498676 e!414354)))

(declare-fun c!81651 () Bool)

(assert (=> b!741219 (= c!81651 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!741220 () Bool)

(assert (=> b!741220 (= e!414356 e!414360)))

(declare-fun res!498682 () Bool)

(assert (=> b!741220 (=> (not res!498682) (not e!414360))))

(declare-fun lt!329332 () SeekEntryResult!7437)

(assert (=> b!741220 (= res!498682 (or (= lt!329332 (MissingZero!7437 i!1173)) (= lt!329332 (MissingVacant!7437 i!1173))))))

(assert (=> b!741220 (= lt!329332 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!741221 () Bool)

(declare-fun res!498681 () Bool)

(assert (=> b!741221 (=> (not res!498681) (not e!414360))))

(assert (=> b!741221 (= res!498681 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20251 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20251 a!3186))))))

(declare-fun b!741222 () Bool)

(assert (=> b!741222 (= e!414360 e!414359)))

(declare-fun res!498677 () Bool)

(assert (=> b!741222 (=> (not res!498677) (not e!414359))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!741222 (= res!498677 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19830 a!3186) j!159) mask!3328) (select (arr!19830 a!3186) j!159) a!3186 mask!3328) lt!329333))))

(assert (=> b!741222 (= lt!329333 (Intermediate!7437 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!741223 () Bool)

(declare-fun res!498684 () Bool)

(assert (=> b!741223 (=> (not res!498684) (not e!414356))))

(declare-fun arrayContainsKey!0 (array!41440 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!741223 (= res!498684 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!741224 () Bool)

(assert (=> b!741224 (= e!414359 e!414358)))

(declare-fun res!498678 () Bool)

(assert (=> b!741224 (=> (not res!498678) (not e!414358))))

(declare-fun lt!329331 () (_ BitVec 64))

(declare-fun lt!329334 () array!41440)

(assert (=> b!741224 (= res!498678 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329331 mask!3328) lt!329331 lt!329334 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329331 lt!329334 mask!3328)))))

(assert (=> b!741224 (= lt!329331 (select (store (arr!19830 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!741224 (= lt!329334 (array!41441 (store (arr!19830 a!3186) i!1173 k!2102) (size!20251 a!3186)))))

(declare-fun b!741225 () Bool)

(declare-fun res!498679 () Bool)

(assert (=> b!741225 (=> (not res!498679) (not e!414360))))

(declare-datatypes ((List!13885 0))(
  ( (Nil!13882) (Cons!13881 (h!14953 (_ BitVec 64)) (t!20208 List!13885)) )
))
(declare-fun arrayNoDuplicates!0 (array!41440 (_ BitVec 32) List!13885) Bool)

(assert (=> b!741225 (= res!498679 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13882))))

(declare-fun b!741226 () Bool)

(declare-fun res!498675 () Bool)

(assert (=> b!741226 (=> (not res!498675) (not e!414356))))

(assert (=> b!741226 (= res!498675 (and (= (size!20251 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20251 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20251 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!741227 () Bool)

(assert (=> b!741227 (= e!414354 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19830 a!3186) j!159) a!3186 mask!3328) (Found!7437 j!159)))))

(assert (= (and start!65314 res!498683) b!741226))

(assert (= (and b!741226 res!498675) b!741211))

(assert (= (and b!741211 res!498671) b!741215))

(assert (= (and b!741215 res!498674) b!741223))

(assert (= (and b!741223 res!498684) b!741220))

(assert (= (and b!741220 res!498682) b!741217))

(assert (= (and b!741217 res!498672) b!741225))

(assert (= (and b!741225 res!498679) b!741221))

(assert (= (and b!741221 res!498681) b!741222))

(assert (= (and b!741222 res!498677) b!741218))

(assert (= (and b!741218 res!498670) b!741219))

(assert (= (and b!741219 c!81651) b!741212))

(assert (= (and b!741219 (not c!81651)) b!741227))

(assert (= (and b!741219 res!498676) b!741224))

(assert (= (and b!741224 res!498678) b!741213))

(assert (= (and b!741213 res!498680) b!741214))

(assert (= (and b!741214 res!498673) b!741216))

(declare-fun m!692293 () Bool)

(assert (=> b!741225 m!692293))

(declare-fun m!692295 () Bool)

(assert (=> b!741214 m!692295))

(assert (=> b!741214 m!692295))

(declare-fun m!692297 () Bool)

(assert (=> b!741214 m!692297))

(declare-fun m!692299 () Bool)

(assert (=> b!741218 m!692299))

(assert (=> b!741222 m!692295))

(assert (=> b!741222 m!692295))

(declare-fun m!692301 () Bool)

(assert (=> b!741222 m!692301))

(assert (=> b!741222 m!692301))

(assert (=> b!741222 m!692295))

(declare-fun m!692303 () Bool)

(assert (=> b!741222 m!692303))

(assert (=> b!741211 m!692295))

(assert (=> b!741211 m!692295))

(declare-fun m!692305 () Bool)

(assert (=> b!741211 m!692305))

(assert (=> b!741216 m!692295))

(assert (=> b!741216 m!692295))

(declare-fun m!692307 () Bool)

(assert (=> b!741216 m!692307))

(declare-fun m!692309 () Bool)

(assert (=> b!741213 m!692309))

(declare-fun m!692311 () Bool)

(assert (=> b!741213 m!692311))

(assert (=> b!741212 m!692295))

(assert (=> b!741212 m!692295))

(declare-fun m!692313 () Bool)

(assert (=> b!741212 m!692313))

(declare-fun m!692315 () Bool)

(assert (=> b!741215 m!692315))

(declare-fun m!692317 () Bool)

(assert (=> b!741217 m!692317))

(declare-fun m!692319 () Bool)

(assert (=> b!741223 m!692319))

(assert (=> b!741227 m!692295))

(assert (=> b!741227 m!692295))

(declare-fun m!692321 () Bool)

(assert (=> b!741227 m!692321))

(declare-fun m!692323 () Bool)

(assert (=> b!741224 m!692323))

(assert (=> b!741224 m!692323))

(declare-fun m!692325 () Bool)

(assert (=> b!741224 m!692325))

(declare-fun m!692327 () Bool)

(assert (=> b!741224 m!692327))

(declare-fun m!692329 () Bool)

(assert (=> b!741224 m!692329))

(declare-fun m!692331 () Bool)

(assert (=> b!741224 m!692331))

(declare-fun m!692333 () Bool)

(assert (=> start!65314 m!692333))

(declare-fun m!692335 () Bool)

(assert (=> start!65314 m!692335))

(declare-fun m!692337 () Bool)

(assert (=> b!741220 m!692337))

(push 1)

