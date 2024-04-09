; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67930 () Bool)

(assert start!67930)

(declare-fun b!790202 () Bool)

(declare-fun e!439216 () Bool)

(declare-fun e!439210 () Bool)

(assert (=> b!790202 (= e!439216 e!439210)))

(declare-fun res!535485 () Bool)

(assert (=> b!790202 (=> (not res!535485) (not e!439210))))

(declare-datatypes ((SeekEntryResult!8121 0))(
  ( (MissingZero!8121 (index!34851 (_ BitVec 32))) (Found!8121 (index!34852 (_ BitVec 32))) (Intermediate!8121 (undefined!8933 Bool) (index!34853 (_ BitVec 32)) (x!65815 (_ BitVec 32))) (Undefined!8121) (MissingVacant!8121 (index!34854 (_ BitVec 32))) )
))
(declare-fun lt!352801 () SeekEntryResult!8121)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!790202 (= res!535485 (or (= lt!352801 (MissingZero!8121 i!1173)) (= lt!352801 (MissingVacant!8121 i!1173))))))

(declare-datatypes ((array!42862 0))(
  ( (array!42863 (arr!20514 (Array (_ BitVec 32) (_ BitVec 64))) (size!20935 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42862)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42862 (_ BitVec 32)) SeekEntryResult!8121)

(assert (=> b!790202 (= lt!352801 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!790203 () Bool)

(declare-fun res!535497 () Bool)

(assert (=> b!790203 (=> (not res!535497) (not e!439216))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!790203 (= res!535497 (validKeyInArray!0 k!2102))))

(declare-fun b!790204 () Bool)

(declare-fun res!535486 () Bool)

(assert (=> b!790204 (=> (not res!535486) (not e!439210))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!790204 (= res!535486 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20935 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20935 a!3186))))))

(declare-fun b!790205 () Bool)

(declare-fun lt!352799 () SeekEntryResult!8121)

(declare-fun e!439213 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42862 (_ BitVec 32)) SeekEntryResult!8121)

(assert (=> b!790205 (= e!439213 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20514 a!3186) j!159) a!3186 mask!3328) lt!352799))))

(declare-fun b!790206 () Bool)

(declare-fun e!439212 () Bool)

(declare-fun lt!352794 () SeekEntryResult!8121)

(assert (=> b!790206 (= e!439212 (not (is-Intermediate!8121 lt!352794)))))

(declare-fun e!439214 () Bool)

(assert (=> b!790206 e!439214))

(declare-fun res!535488 () Bool)

(assert (=> b!790206 (=> (not res!535488) (not e!439214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42862 (_ BitVec 32)) Bool)

(assert (=> b!790206 (= res!535488 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!27394 0))(
  ( (Unit!27395) )
))
(declare-fun lt!352800 () Unit!27394)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42862 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27394)

(assert (=> b!790206 (= lt!352800 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!790207 () Bool)

(declare-fun res!535495 () Bool)

(assert (=> b!790207 (=> (not res!535495) (not e!439210))))

(declare-datatypes ((List!14569 0))(
  ( (Nil!14566) (Cons!14565 (h!15691 (_ BitVec 64)) (t!20892 List!14569)) )
))
(declare-fun arrayNoDuplicates!0 (array!42862 (_ BitVec 32) List!14569) Bool)

(assert (=> b!790207 (= res!535495 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14566))))

(declare-fun res!535491 () Bool)

(assert (=> start!67930 (=> (not res!535491) (not e!439216))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67930 (= res!535491 (validMask!0 mask!3328))))

(assert (=> start!67930 e!439216))

(assert (=> start!67930 true))

(declare-fun array_inv!16288 (array!42862) Bool)

(assert (=> start!67930 (array_inv!16288 a!3186)))

(declare-fun b!790208 () Bool)

(declare-fun res!535490 () Bool)

(assert (=> b!790208 (=> (not res!535490) (not e!439210))))

(assert (=> b!790208 (= res!535490 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!790209 () Bool)

(declare-fun res!535484 () Bool)

(assert (=> b!790209 (=> (not res!535484) (not e!439216))))

(assert (=> b!790209 (= res!535484 (validKeyInArray!0 (select (arr!20514 a!3186) j!159)))))

(declare-fun b!790210 () Bool)

(declare-fun res!535489 () Bool)

(assert (=> b!790210 (=> (not res!535489) (not e!439216))))

(declare-fun arrayContainsKey!0 (array!42862 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!790210 (= res!535489 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!790211 () Bool)

(declare-fun e!439209 () Bool)

(assert (=> b!790211 (= e!439210 e!439209)))

(declare-fun res!535494 () Bool)

(assert (=> b!790211 (=> (not res!535494) (not e!439209))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!790211 (= res!535494 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20514 a!3186) j!159) mask!3328) (select (arr!20514 a!3186) j!159) a!3186 mask!3328) lt!352799))))

(assert (=> b!790211 (= lt!352799 (Intermediate!8121 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun lt!352797 () SeekEntryResult!8121)

(declare-fun e!439211 () Bool)

(declare-fun b!790212 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42862 (_ BitVec 32)) SeekEntryResult!8121)

(assert (=> b!790212 (= e!439211 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20514 a!3186) j!159) a!3186 mask!3328) lt!352797))))

(declare-fun b!790213 () Bool)

(assert (=> b!790213 (= e!439209 e!439212)))

(declare-fun res!535496 () Bool)

(assert (=> b!790213 (=> (not res!535496) (not e!439212))))

(declare-fun lt!352795 () SeekEntryResult!8121)

(assert (=> b!790213 (= res!535496 (= lt!352795 lt!352794))))

(declare-fun lt!352798 () array!42862)

(declare-fun lt!352796 () (_ BitVec 64))

(assert (=> b!790213 (= lt!352794 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352796 lt!352798 mask!3328))))

(assert (=> b!790213 (= lt!352795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352796 mask!3328) lt!352796 lt!352798 mask!3328))))

(assert (=> b!790213 (= lt!352796 (select (store (arr!20514 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!790213 (= lt!352798 (array!42863 (store (arr!20514 a!3186) i!1173 k!2102) (size!20935 a!3186)))))

(declare-fun b!790214 () Bool)

(declare-fun res!535493 () Bool)

(assert (=> b!790214 (=> (not res!535493) (not e!439209))))

(assert (=> b!790214 (= res!535493 e!439213)))

(declare-fun c!87768 () Bool)

(assert (=> b!790214 (= c!87768 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!790215 () Bool)

(assert (=> b!790215 (= e!439214 e!439211)))

(declare-fun res!535487 () Bool)

(assert (=> b!790215 (=> (not res!535487) (not e!439211))))

(assert (=> b!790215 (= res!535487 (= (seekEntryOrOpen!0 (select (arr!20514 a!3186) j!159) a!3186 mask!3328) lt!352797))))

(assert (=> b!790215 (= lt!352797 (Found!8121 j!159))))

(declare-fun b!790216 () Bool)

(declare-fun res!535492 () Bool)

(assert (=> b!790216 (=> (not res!535492) (not e!439209))))

(assert (=> b!790216 (= res!535492 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20514 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!790217 () Bool)

(declare-fun res!535498 () Bool)

(assert (=> b!790217 (=> (not res!535498) (not e!439216))))

(assert (=> b!790217 (= res!535498 (and (= (size!20935 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20935 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20935 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!790218 () Bool)

(assert (=> b!790218 (= e!439213 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20514 a!3186) j!159) a!3186 mask!3328) (Found!8121 j!159)))))

(assert (= (and start!67930 res!535491) b!790217))

(assert (= (and b!790217 res!535498) b!790209))

(assert (= (and b!790209 res!535484) b!790203))

(assert (= (and b!790203 res!535497) b!790210))

(assert (= (and b!790210 res!535489) b!790202))

(assert (= (and b!790202 res!535485) b!790208))

(assert (= (and b!790208 res!535490) b!790207))

(assert (= (and b!790207 res!535495) b!790204))

(assert (= (and b!790204 res!535486) b!790211))

(assert (= (and b!790211 res!535494) b!790216))

(assert (= (and b!790216 res!535492) b!790214))

(assert (= (and b!790214 c!87768) b!790205))

(assert (= (and b!790214 (not c!87768)) b!790218))

(assert (= (and b!790214 res!535493) b!790213))

(assert (= (and b!790213 res!535496) b!790206))

(assert (= (and b!790206 res!535488) b!790215))

(assert (= (and b!790215 res!535487) b!790212))

(declare-fun m!731221 () Bool)

(assert (=> b!790206 m!731221))

(declare-fun m!731223 () Bool)

(assert (=> b!790206 m!731223))

(declare-fun m!731225 () Bool)

(assert (=> b!790216 m!731225))

(declare-fun m!731227 () Bool)

(assert (=> b!790210 m!731227))

(declare-fun m!731229 () Bool)

(assert (=> start!67930 m!731229))

(declare-fun m!731231 () Bool)

(assert (=> start!67930 m!731231))

(declare-fun m!731233 () Bool)

(assert (=> b!790202 m!731233))

(declare-fun m!731235 () Bool)

(assert (=> b!790209 m!731235))

(assert (=> b!790209 m!731235))

(declare-fun m!731237 () Bool)

(assert (=> b!790209 m!731237))

(declare-fun m!731239 () Bool)

(assert (=> b!790208 m!731239))

(assert (=> b!790205 m!731235))

(assert (=> b!790205 m!731235))

(declare-fun m!731241 () Bool)

(assert (=> b!790205 m!731241))

(assert (=> b!790218 m!731235))

(assert (=> b!790218 m!731235))

(declare-fun m!731243 () Bool)

(assert (=> b!790218 m!731243))

(declare-fun m!731245 () Bool)

(assert (=> b!790203 m!731245))

(assert (=> b!790211 m!731235))

(assert (=> b!790211 m!731235))

(declare-fun m!731247 () Bool)

(assert (=> b!790211 m!731247))

(assert (=> b!790211 m!731247))

(assert (=> b!790211 m!731235))

(declare-fun m!731249 () Bool)

(assert (=> b!790211 m!731249))

(declare-fun m!731251 () Bool)

(assert (=> b!790207 m!731251))

(assert (=> b!790212 m!731235))

(assert (=> b!790212 m!731235))

(declare-fun m!731253 () Bool)

(assert (=> b!790212 m!731253))

(assert (=> b!790215 m!731235))

(assert (=> b!790215 m!731235))

(declare-fun m!731255 () Bool)

(assert (=> b!790215 m!731255))

(declare-fun m!731257 () Bool)

(assert (=> b!790213 m!731257))

(declare-fun m!731259 () Bool)

(assert (=> b!790213 m!731259))

(declare-fun m!731261 () Bool)

(assert (=> b!790213 m!731261))

(assert (=> b!790213 m!731257))

(declare-fun m!731263 () Bool)

(assert (=> b!790213 m!731263))

(declare-fun m!731265 () Bool)

(assert (=> b!790213 m!731265))

(push 1)

(assert (not b!790205))

(assert (not b!790215))

(assert (not start!67930))

(assert (not b!790213))

(assert (not b!790210))

(assert (not b!790211))

(assert (not b!790206))

(assert (not b!790209))

(assert (not b!790218))

(assert (not b!790207))

(assert (not b!790203))

(assert (not b!790202))

(assert (not b!790208))

(assert (not b!790212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!790421 () Bool)

(declare-fun e!439330 () Bool)

(declare-fun e!439333 () Bool)

(assert (=> b!790421 (= e!439330 e!439333)))

(declare-fun res!535621 () Bool)

(declare-fun lt!352888 () SeekEntryResult!8121)

(assert (=> b!790421 (= res!535621 (and (is-Intermediate!8121 lt!352888) (not (undefined!8933 lt!352888)) (bvslt (x!65815 lt!352888) #b01111111111111111111111111111110) (bvsge (x!65815 lt!352888) #b00000000000000000000000000000000) (bvsge (x!65815 lt!352888) x!1131)))))

(assert (=> b!790421 (=> (not res!535621) (not e!439333))))

(declare-fun b!790422 () Bool)

(assert (=> b!790422 (= e!439330 (bvsge (x!65815 lt!352888) #b01111111111111111111111111111110))))

(declare-fun d!102893 () Bool)

(assert (=> d!102893 e!439330))

(declare-fun c!87811 () Bool)

(assert (=> d!102893 (= c!87811 (and (is-Intermediate!8121 lt!352888) (undefined!8933 lt!352888)))))

(declare-fun e!439332 () SeekEntryResult!8121)

(assert (=> d!102893 (= lt!352888 e!439332)))

(declare-fun c!87810 () Bool)

(assert (=> d!102893 (= c!87810 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!352887 () (_ BitVec 64))

(assert (=> d!102893 (= lt!352887 (select (arr!20514 lt!352798) index!1321))))

(assert (=> d!102893 (validMask!0 mask!3328)))

(assert (=> d!102893 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352796 lt!352798 mask!3328) lt!352888)))

(declare-fun b!790423 () Bool)

(declare-fun e!439329 () SeekEntryResult!8121)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!790423 (= e!439329 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!352796 lt!352798 mask!3328))))

(declare-fun b!790424 () Bool)

(assert (=> b!790424 (and (bvsge (index!34853 lt!352888) #b00000000000000000000000000000000) (bvslt (index!34853 lt!352888) (size!20935 lt!352798)))))

(declare-fun e!439331 () Bool)

(assert (=> b!790424 (= e!439331 (= (select (arr!20514 lt!352798) (index!34853 lt!352888)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!790425 () Bool)

(assert (=> b!790425 (= e!439332 (Intermediate!8121 true index!1321 x!1131))))

(declare-fun b!790426 () Bool)

(assert (=> b!790426 (and (bvsge (index!34853 lt!352888) #b00000000000000000000000000000000) (bvslt (index!34853 lt!352888) (size!20935 lt!352798)))))

(declare-fun res!535623 () Bool)

(assert (=> b!790426 (= res!535623 (= (select (arr!20514 lt!352798) (index!34853 lt!352888)) lt!352796))))

(assert (=> b!790426 (=> res!535623 e!439331)))

(assert (=> b!790426 (= e!439333 e!439331)))

(declare-fun b!790427 () Bool)

(assert (=> b!790427 (= e!439329 (Intermediate!8121 false index!1321 x!1131))))

(declare-fun b!790428 () Bool)

(assert (=> b!790428 (and (bvsge (index!34853 lt!352888) #b00000000000000000000000000000000) (bvslt (index!34853 lt!352888) (size!20935 lt!352798)))))

(declare-fun res!535622 () Bool)

(assert (=> b!790428 (= res!535622 (= (select (arr!20514 lt!352798) (index!34853 lt!352888)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!790428 (=> res!535622 e!439331)))

(declare-fun b!790429 () Bool)

(assert (=> b!790429 (= e!439332 e!439329)))

(declare-fun c!87809 () Bool)

(assert (=> b!790429 (= c!87809 (or (= lt!352887 lt!352796) (= (bvadd lt!352887 lt!352887) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!102893 c!87810) b!790425))

(assert (= (and d!102893 (not c!87810)) b!790429))

(assert (= (and b!790429 c!87809) b!790427))

(assert (= (and b!790429 (not c!87809)) b!790423))

(assert (= (and d!102893 c!87811) b!790422))

(assert (= (and d!102893 (not c!87811)) b!790421))

(assert (= (and b!790421 res!535621) b!790426))

(assert (= (and b!790426 (not res!535623)) b!790428))

(assert (= (and b!790428 (not res!535622)) b!790424))

(declare-fun m!731411 () Bool)

(assert (=> b!790426 m!731411))

(assert (=> b!790428 m!731411))

(declare-fun m!731413 () Bool)

(assert (=> d!102893 m!731413))

(assert (=> d!102893 m!731229))

(assert (=> b!790424 m!731411))

(declare-fun m!731415 () Bool)

(assert (=> b!790423 m!731415))

(assert (=> b!790423 m!731415))

(declare-fun m!731417 () Bool)

(assert (=> b!790423 m!731417))

(assert (=> b!790213 d!102893))

(declare-fun b!790430 () Bool)

(declare-fun e!439335 () Bool)

(declare-fun e!439338 () Bool)

(assert (=> b!790430 (= e!439335 e!439338)))

(declare-fun res!535624 () Bool)

(declare-fun lt!352890 () SeekEntryResult!8121)

(assert (=> b!790430 (= res!535624 (and (is-Intermediate!8121 lt!352890) (not (undefined!8933 lt!352890)) (bvslt (x!65815 lt!352890) #b01111111111111111111111111111110) (bvsge (x!65815 lt!352890) #b00000000000000000000000000000000) (bvsge (x!65815 lt!352890) #b00000000000000000000000000000000)))))

(assert (=> b!790430 (=> (not res!535624) (not e!439338))))

(declare-fun b!790431 () Bool)

(assert (=> b!790431 (= e!439335 (bvsge (x!65815 lt!352890) #b01111111111111111111111111111110))))

(declare-fun d!102907 () Bool)

(assert (=> d!102907 e!439335))

(declare-fun c!87814 () Bool)

(assert (=> d!102907 (= c!87814 (and (is-Intermediate!8121 lt!352890) (undefined!8933 lt!352890)))))

(declare-fun e!439337 () SeekEntryResult!8121)

(assert (=> d!102907 (= lt!352890 e!439337)))

(declare-fun c!87813 () Bool)

(assert (=> d!102907 (= c!87813 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!352889 () (_ BitVec 64))

(assert (=> d!102907 (= lt!352889 (select (arr!20514 lt!352798) (toIndex!0 lt!352796 mask!3328)))))

(assert (=> d!102907 (validMask!0 mask!3328)))

(assert (=> d!102907 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352796 mask!3328) lt!352796 lt!352798 mask!3328) lt!352890)))

(declare-fun e!439334 () SeekEntryResult!8121)

(declare-fun b!790432 () Bool)

(assert (=> b!790432 (= e!439334 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!352796 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!352796 lt!352798 mask!3328))))

(declare-fun b!790433 () Bool)

(assert (=> b!790433 (and (bvsge (index!34853 lt!352890) #b00000000000000000000000000000000) (bvslt (index!34853 lt!352890) (size!20935 lt!352798)))))

(declare-fun e!439336 () Bool)

(assert (=> b!790433 (= e!439336 (= (select (arr!20514 lt!352798) (index!34853 lt!352890)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!790434 () Bool)

(assert (=> b!790434 (= e!439337 (Intermediate!8121 true (toIndex!0 lt!352796 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!790435 () Bool)

(assert (=> b!790435 (and (bvsge (index!34853 lt!352890) #b00000000000000000000000000000000) (bvslt (index!34853 lt!352890) (size!20935 lt!352798)))))

(declare-fun res!535626 () Bool)

(assert (=> b!790435 (= res!535626 (= (select (arr!20514 lt!352798) (index!34853 lt!352890)) lt!352796))))

(assert (=> b!790435 (=> res!535626 e!439336)))

(assert (=> b!790435 (= e!439338 e!439336)))

(declare-fun b!790436 () Bool)

(assert (=> b!790436 (= e!439334 (Intermediate!8121 false (toIndex!0 lt!352796 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!790437 () Bool)

(assert (=> b!790437 (and (bvsge (index!34853 lt!352890) #b00000000000000000000000000000000) (bvslt (index!34853 lt!352890) (size!20935 lt!352798)))))

(declare-fun res!535625 () Bool)

(assert (=> b!790437 (= res!535625 (= (select (arr!20514 lt!352798) (index!34853 lt!352890)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!790437 (=> res!535625 e!439336)))

(declare-fun b!790438 () Bool)

(assert (=> b!790438 (= e!439337 e!439334)))

(declare-fun c!87812 () Bool)

(assert (=> b!790438 (= c!87812 (or (= lt!352889 lt!352796) (= (bvadd lt!352889 lt!352889) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!102907 c!87813) b!790434))

(assert (= (and d!102907 (not c!87813)) b!790438))

(assert (= (and b!790438 c!87812) b!790436))

(assert (= (and b!790438 (not c!87812)) b!790432))

(assert (= (and d!102907 c!87814) b!790431))

(assert (= (and d!102907 (not c!87814)) b!790430))

(assert (= (and b!790430 res!535624) b!790435))

(assert (= (and b!790435 (not res!535626)) b!790437))

(assert (= (and b!790437 (not res!535625)) b!790433))

(declare-fun m!731419 () Bool)

(assert (=> b!790435 m!731419))

(assert (=> b!790437 m!731419))

(assert (=> d!102907 m!731257))

(declare-fun m!731421 () Bool)

(assert (=> d!102907 m!731421))

(assert (=> d!102907 m!731229))

(assert (=> b!790433 m!731419))

(assert (=> b!790432 m!731257))

(declare-fun m!731423 () Bool)

(assert (=> b!790432 m!731423))

(assert (=> b!790432 m!731423))

(declare-fun m!731425 () Bool)

(assert (=> b!790432 m!731425))

(assert (=> b!790213 d!102907))

(declare-fun d!102909 () Bool)

(declare-fun lt!352906 () (_ BitVec 32))

(declare-fun lt!352905 () (_ BitVec 32))

(assert (=> d!102909 (= lt!352906 (bvmul (bvxor lt!352905 (bvlshr lt!352905 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102909 (= lt!352905 ((_ extract 31 0) (bvand (bvxor lt!352796 (bvlshr lt!352796 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102909 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!535627 (let ((h!15694 ((_ extract 31 0) (bvand (bvxor lt!352796 (bvlshr lt!352796 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65820 (bvmul (bvxor h!15694 (bvlshr h!15694 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65820 (bvlshr x!65820 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!535627 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!535627 #b00000000000000000000000000000000))))))

(assert (=> d!102909 (= (toIndex!0 lt!352796 mask!3328) (bvand (bvxor lt!352906 (bvlshr lt!352906 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!790213 d!102909))

(declare-fun b!790543 () Bool)

(declare-fun e!439395 () SeekEntryResult!8121)

(assert (=> b!790543 (= e!439395 Undefined!8121)))

(declare-fun b!790545 () Bool)

(declare-fun e!439393 () SeekEntryResult!8121)

(assert (=> b!790545 (= e!439393 (MissingVacant!8121 resIntermediateIndex!5))))

(declare-fun b!790546 () Bool)

(declare-fun c!87861 () Bool)

(declare-fun lt!352936 () (_ BitVec 64))

(assert (=> b!790546 (= c!87861 (= lt!352936 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!439394 () SeekEntryResult!8121)

(assert (=> b!790546 (= e!439394 e!439393)))

(declare-fun b!790547 () Bool)

(assert (=> b!790547 (= e!439395 e!439394)))

(declare-fun c!87863 () Bool)

(assert (=> b!790547 (= c!87863 (= lt!352936 (select (arr!20514 a!3186) j!159)))))

(declare-fun b!790548 () Bool)

(assert (=> b!790548 (= e!439394 (Found!8121 resIntermediateIndex!5))))

(declare-fun lt!352937 () SeekEntryResult!8121)

(declare-fun d!102915 () Bool)

(assert (=> d!102915 (and (or (is-Undefined!8121 lt!352937) (not (is-Found!8121 lt!352937)) (and (bvsge (index!34852 lt!352937) #b00000000000000000000000000000000) (bvslt (index!34852 lt!352937) (size!20935 a!3186)))) (or (is-Undefined!8121 lt!352937) (is-Found!8121 lt!352937) (not (is-MissingVacant!8121 lt!352937)) (not (= (index!34854 lt!352937) resIntermediateIndex!5)) (and (bvsge (index!34854 lt!352937) #b00000000000000000000000000000000) (bvslt (index!34854 lt!352937) (size!20935 a!3186)))) (or (is-Undefined!8121 lt!352937) (ite (is-Found!8121 lt!352937) (= (select (arr!20514 a!3186) (index!34852 lt!352937)) (select (arr!20514 a!3186) j!159)) (and (is-MissingVacant!8121 lt!352937) (= (index!34854 lt!352937) resIntermediateIndex!5) (= (select (arr!20514 a!3186) (index!34854 lt!352937)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102915 (= lt!352937 e!439395)))

(declare-fun c!87862 () Bool)

(assert (=> d!102915 (= c!87862 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!102915 (= lt!352936 (select (arr!20514 a!3186) resIntermediateIndex!5))))

(assert (=> d!102915 (validMask!0 mask!3328)))

(assert (=> d!102915 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20514 a!3186) j!159) a!3186 mask!3328) lt!352937)))

(declare-fun b!790544 () Bool)

(assert (=> b!790544 (= e!439393 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20514 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!102915 c!87862) b!790543))

(assert (= (and d!102915 (not c!87862)) b!790547))

(assert (= (and b!790547 c!87863) b!790548))

(assert (= (and b!790547 (not c!87863)) b!790546))

(assert (= (and b!790546 c!87861) b!790545))

(assert (= (and b!790546 (not c!87861)) b!790544))

(declare-fun m!731483 () Bool)

(assert (=> d!102915 m!731483))

(declare-fun m!731485 () Bool)

(assert (=> d!102915 m!731485))

(assert (=> d!102915 m!731225))

(assert (=> d!102915 m!731229))

(declare-fun m!731487 () Bool)

(assert (=> b!790544 m!731487))

(assert (=> b!790544 m!731487))

(assert (=> b!790544 m!731235))

(declare-fun m!731489 () Bool)

(assert (=> b!790544 m!731489))

(assert (=> b!790212 d!102915))

(declare-fun b!790562 () Bool)

(declare-fun e!439404 () Bool)

(declare-fun e!439407 () Bool)

(assert (=> b!790562 (= e!439404 e!439407)))

(declare-fun res!535644 () Bool)

(declare-fun lt!352941 () SeekEntryResult!8121)

(assert (=> b!790562 (= res!535644 (and (is-Intermediate!8121 lt!352941) (not (undefined!8933 lt!352941)) (bvslt (x!65815 lt!352941) #b01111111111111111111111111111110) (bvsge (x!65815 lt!352941) #b00000000000000000000000000000000) (bvsge (x!65815 lt!352941) #b00000000000000000000000000000000)))))

(assert (=> b!790562 (=> (not res!535644) (not e!439407))))

(declare-fun b!790563 () Bool)

(assert (=> b!790563 (= e!439404 (bvsge (x!65815 lt!352941) #b01111111111111111111111111111110))))

(declare-fun d!102929 () Bool)

(assert (=> d!102929 e!439404))

(declare-fun c!87871 () Bool)

(assert (=> d!102929 (= c!87871 (and (is-Intermediate!8121 lt!352941) (undefined!8933 lt!352941)))))

(declare-fun e!439406 () SeekEntryResult!8121)

(assert (=> d!102929 (= lt!352941 e!439406)))

(declare-fun c!87870 () Bool)

(assert (=> d!102929 (= c!87870 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!352940 () (_ BitVec 64))

(assert (=> d!102929 (= lt!352940 (select (arr!20514 a!3186) (toIndex!0 (select (arr!20514 a!3186) j!159) mask!3328)))))

(assert (=> d!102929 (validMask!0 mask!3328)))

(assert (=> d!102929 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20514 a!3186) j!159) mask!3328) (select (arr!20514 a!3186) j!159) a!3186 mask!3328) lt!352941)))

(declare-fun b!790564 () Bool)

(declare-fun e!439403 () SeekEntryResult!8121)

(assert (=> b!790564 (= e!439403 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20514 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20514 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!790565 () Bool)

(assert (=> b!790565 (and (bvsge (index!34853 lt!352941) #b00000000000000000000000000000000) (bvslt (index!34853 lt!352941) (size!20935 a!3186)))))

(declare-fun e!439405 () Bool)

(assert (=> b!790565 (= e!439405 (= (select (arr!20514 a!3186) (index!34853 lt!352941)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!790566 () Bool)

(assert (=> b!790566 (= e!439406 (Intermediate!8121 true (toIndex!0 (select (arr!20514 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!790567 () Bool)

(assert (=> b!790567 (and (bvsge (index!34853 lt!352941) #b00000000000000000000000000000000) (bvslt (index!34853 lt!352941) (size!20935 a!3186)))))

(declare-fun res!535646 () Bool)

(assert (=> b!790567 (= res!535646 (= (select (arr!20514 a!3186) (index!34853 lt!352941)) (select (arr!20514 a!3186) j!159)))))

(assert (=> b!790567 (=> res!535646 e!439405)))

(assert (=> b!790567 (= e!439407 e!439405)))

(declare-fun b!790568 () Bool)

(assert (=> b!790568 (= e!439403 (Intermediate!8121 false (toIndex!0 (select (arr!20514 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!790569 () Bool)

(assert (=> b!790569 (and (bvsge (index!34853 lt!352941) #b00000000000000000000000000000000) (bvslt (index!34853 lt!352941) (size!20935 a!3186)))))

(declare-fun res!535645 () Bool)

(assert (=> b!790569 (= res!535645 (= (select (arr!20514 a!3186) (index!34853 lt!352941)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!790569 (=> res!535645 e!439405)))

(declare-fun b!790570 () Bool)

(assert (=> b!790570 (= e!439406 e!439403)))

(declare-fun c!87869 () Bool)

(assert (=> b!790570 (= c!87869 (or (= lt!352940 (select (arr!20514 a!3186) j!159)) (= (bvadd lt!352940 lt!352940) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!102929 c!87870) b!790566))

(assert (= (and d!102929 (not c!87870)) b!790570))

(assert (= (and b!790570 c!87869) b!790568))

(assert (= (and b!790570 (not c!87869)) b!790564))

(assert (= (and d!102929 c!87871) b!790563))

(assert (= (and d!102929 (not c!87871)) b!790562))

(assert (= (and b!790562 res!535644) b!790567))

(assert (= (and b!790567 (not res!535646)) b!790569))

(assert (= (and b!790569 (not res!535645)) b!790565))

(declare-fun m!731499 () Bool)

(assert (=> b!790567 m!731499))

(assert (=> b!790569 m!731499))

(assert (=> d!102929 m!731247))

(declare-fun m!731503 () Bool)

(assert (=> d!102929 m!731503))

(assert (=> d!102929 m!731229))

(assert (=> b!790565 m!731499))

(assert (=> b!790564 m!731247))

(declare-fun m!731509 () Bool)

(assert (=> b!790564 m!731509))

(assert (=> b!790564 m!731509))

(assert (=> b!790564 m!731235))

(declare-fun m!731511 () Bool)

(assert (=> b!790564 m!731511))

(assert (=> b!790211 d!102929))

(declare-fun d!102937 () Bool)

(declare-fun lt!352947 () (_ BitVec 32))

(declare-fun lt!352946 () (_ BitVec 32))

(assert (=> d!102937 (= lt!352947 (bvmul (bvxor lt!352946 (bvlshr lt!352946 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102937 (= lt!352946 ((_ extract 31 0) (bvand (bvxor (select (arr!20514 a!3186) j!159) (bvlshr (select (arr!20514 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102937 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!535627 (let ((h!15694 ((_ extract 31 0) (bvand (bvxor (select (arr!20514 a!3186) j!159) (bvlshr (select (arr!20514 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65820 (bvmul (bvxor h!15694 (bvlshr h!15694 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65820 (bvlshr x!65820 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!535627 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!535627 #b00000000000000000000000000000000))))))

(assert (=> d!102937 (= (toIndex!0 (select (arr!20514 a!3186) j!159) mask!3328) (bvand (bvxor lt!352947 (bvlshr lt!352947 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!790211 d!102937))

(declare-fun d!102939 () Bool)

(declare-fun res!535660 () Bool)

(declare-fun e!439421 () Bool)

(assert (=> d!102939 (=> res!535660 e!439421)))

(assert (=> d!102939 (= res!535660 (= (select (arr!20514 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!102939 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!439421)))

(declare-fun b!790590 () Bool)

(declare-fun e!439422 () Bool)

(assert (=> b!790590 (= e!439421 e!439422)))

(declare-fun res!535661 () Bool)

(assert (=> b!790590 (=> (not res!535661) (not e!439422))))

(assert (=> b!790590 (= res!535661 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20935 a!3186)))))

(declare-fun b!790591 () Bool)

(assert (=> b!790591 (= e!439422 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!102939 (not res!535660)) b!790590))

(assert (= (and b!790590 res!535661) b!790591))

(declare-fun m!731513 () Bool)

(assert (=> d!102939 m!731513))

(declare-fun m!731515 () Bool)

(assert (=> b!790591 m!731515))

(assert (=> b!790210 d!102939))

(declare-fun d!102943 () Bool)

(assert (=> d!102943 (= (validKeyInArray!0 (select (arr!20514 a!3186) j!159)) (and (not (= (select (arr!20514 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20514 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!790209 d!102943))

(declare-fun b!790661 () Bool)

(declare-fun e!439468 () Bool)

(declare-fun e!439469 () Bool)

(assert (=> b!790661 (= e!439468 e!439469)))

(declare-fun lt!352986 () (_ BitVec 64))

(assert (=> b!790661 (= lt!352986 (select (arr!20514 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!352988 () Unit!27394)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42862 (_ BitVec 64) (_ BitVec 32)) Unit!27394)

(assert (=> b!790661 (= lt!352988 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!352986 #b00000000000000000000000000000000))))

(assert (=> b!790661 (arrayContainsKey!0 a!3186 lt!352986 #b00000000000000000000000000000000)))

(declare-fun lt!352987 () Unit!27394)

(assert (=> b!790661 (= lt!352987 lt!352988)))

(declare-fun res!535691 () Bool)

(assert (=> b!790661 (= res!535691 (= (seekEntryOrOpen!0 (select (arr!20514 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!8121 #b00000000000000000000000000000000)))))

(assert (=> b!790661 (=> (not res!535691) (not e!439469))))

(declare-fun bm!35312 () Bool)

(declare-fun call!35315 () Bool)

(assert (=> bm!35312 (= call!35315 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!790662 () Bool)

(declare-fun e!439470 () Bool)

(assert (=> b!790662 (= e!439470 e!439468)))

(declare-fun c!87896 () Bool)

(assert (=> b!790662 (= c!87896 (validKeyInArray!0 (select (arr!20514 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!790663 () Bool)

(assert (=> b!790663 (= e!439469 call!35315)))

(declare-fun d!102945 () Bool)

(declare-fun res!535690 () Bool)

(assert (=> d!102945 (=> res!535690 e!439470)))

(assert (=> d!102945 (= res!535690 (bvsge #b00000000000000000000000000000000 (size!20935 a!3186)))))

(assert (=> d!102945 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!439470)))

(declare-fun b!790664 () Bool)

(assert (=> b!790664 (= e!439468 call!35315)))

(assert (= (and d!102945 (not res!535690)) b!790662))

(assert (= (and b!790662 c!87896) b!790661))

(assert (= (and b!790662 (not c!87896)) b!790664))

(assert (= (and b!790661 res!535691) b!790663))

(assert (= (or b!790663 b!790664) bm!35312))

(assert (=> b!790661 m!731513))

(declare-fun m!731573 () Bool)

(assert (=> b!790661 m!731573))

(declare-fun m!731575 () Bool)

(assert (=> b!790661 m!731575))

(assert (=> b!790661 m!731513))

(declare-fun m!731577 () Bool)

(assert (=> b!790661 m!731577))

(declare-fun m!731579 () Bool)

(assert (=> bm!35312 m!731579))

(assert (=> b!790662 m!731513))

(assert (=> b!790662 m!731513))

(declare-fun m!731581 () Bool)

(assert (=> b!790662 m!731581))

(assert (=> b!790208 d!102945))

(declare-fun d!102969 () Bool)

(assert (=> d!102969 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67930 d!102969))

(declare-fun d!102975 () Bool)

(assert (=> d!102975 (= (array_inv!16288 a!3186) (bvsge (size!20935 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67930 d!102975))

(declare-fun b!790674 () Bool)

(declare-fun e!439478 () SeekEntryResult!8121)

(assert (=> b!790674 (= e!439478 Undefined!8121)))

(declare-fun b!790676 () Bool)

(declare-fun e!439476 () SeekEntryResult!8121)

(assert (=> b!790676 (= e!439476 (MissingVacant!8121 resIntermediateIndex!5))))

(declare-fun b!790677 () Bool)

(declare-fun c!87900 () Bool)

(declare-fun lt!352991 () (_ BitVec 64))

(assert (=> b!790677 (= c!87900 (= lt!352991 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!439477 () SeekEntryResult!8121)

(assert (=> b!790677 (= e!439477 e!439476)))

(declare-fun b!790678 () Bool)

(assert (=> b!790678 (= e!439478 e!439477)))

(declare-fun c!87902 () Bool)

(assert (=> b!790678 (= c!87902 (= lt!352991 (select (arr!20514 a!3186) j!159)))))

(declare-fun b!790679 () Bool)

(assert (=> b!790679 (= e!439477 (Found!8121 index!1321))))

(declare-fun d!102977 () Bool)

(declare-fun lt!352992 () SeekEntryResult!8121)

(assert (=> d!102977 (and (or (is-Undefined!8121 lt!352992) (not (is-Found!8121 lt!352992)) (and (bvsge (index!34852 lt!352992) #b00000000000000000000000000000000) (bvslt (index!34852 lt!352992) (size!20935 a!3186)))) (or (is-Undefined!8121 lt!352992) (is-Found!8121 lt!352992) (not (is-MissingVacant!8121 lt!352992)) (not (= (index!34854 lt!352992) resIntermediateIndex!5)) (and (bvsge (index!34854 lt!352992) #b00000000000000000000000000000000) (bvslt (index!34854 lt!352992) (size!20935 a!3186)))) (or (is-Undefined!8121 lt!352992) (ite (is-Found!8121 lt!352992) (= (select (arr!20514 a!3186) (index!34852 lt!352992)) (select (arr!20514 a!3186) j!159)) (and (is-MissingVacant!8121 lt!352992) (= (index!34854 lt!352992) resIntermediateIndex!5) (= (select (arr!20514 a!3186) (index!34854 lt!352992)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102977 (= lt!352992 e!439478)))

(declare-fun c!87901 () Bool)

(assert (=> d!102977 (= c!87901 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102977 (= lt!352991 (select (arr!20514 a!3186) index!1321))))

(assert (=> d!102977 (validMask!0 mask!3328)))

(assert (=> d!102977 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20514 a!3186) j!159) a!3186 mask!3328) lt!352992)))

(declare-fun b!790675 () Bool)

(assert (=> b!790675 (= e!439476 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20514 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!102977 c!87901) b!790674))

(assert (= (and d!102977 (not c!87901)) b!790678))

(assert (= (and b!790678 c!87902) b!790679))

(assert (= (and b!790678 (not c!87902)) b!790677))

(assert (= (and b!790677 c!87900) b!790676))

(assert (= (and b!790677 (not c!87900)) b!790675))

(declare-fun m!731589 () Bool)

(assert (=> d!102977 m!731589))

(declare-fun m!731591 () Bool)

(assert (=> d!102977 m!731591))

(declare-fun m!731595 () Bool)

(assert (=> d!102977 m!731595))

(assert (=> d!102977 m!731229))

(assert (=> b!790675 m!731415))

(assert (=> b!790675 m!731415))

(assert (=> b!790675 m!731235))

(declare-fun m!731597 () Bool)

(assert (=> b!790675 m!731597))

(assert (=> b!790218 d!102977))

(declare-fun b!790696 () Bool)

(declare-fun e!439495 () Bool)

(declare-fun call!35318 () Bool)

(assert (=> b!790696 (= e!439495 call!35318)))

(declare-fun b!790697 () Bool)

(declare-fun e!439494 () Bool)

(declare-fun e!439493 () Bool)

(assert (=> b!790697 (= e!439494 e!439493)))

(declare-fun res!535709 () Bool)

(assert (=> b!790697 (=> (not res!535709) (not e!439493))))

(declare-fun e!439496 () Bool)

(assert (=> b!790697 (= res!535709 (not e!439496))))

(declare-fun res!535707 () Bool)

(assert (=> b!790697 (=> (not res!535707) (not e!439496))))

(assert (=> b!790697 (= res!535707 (validKeyInArray!0 (select (arr!20514 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!790698 () Bool)

(assert (=> b!790698 (= e!439495 call!35318)))

(declare-fun d!102981 () Bool)

(declare-fun res!535708 () Bool)

(assert (=> d!102981 (=> res!535708 e!439494)))

(assert (=> d!102981 (= res!535708 (bvsge #b00000000000000000000000000000000 (size!20935 a!3186)))))

(assert (=> d!102981 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14566) e!439494)))

(declare-fun b!790699 () Bool)

(assert (=> b!790699 (= e!439493 e!439495)))

(declare-fun c!87905 () Bool)

(assert (=> b!790699 (= c!87905 (validKeyInArray!0 (select (arr!20514 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!790700 () Bool)

(declare-fun contains!4116 (List!14569 (_ BitVec 64)) Bool)

(assert (=> b!790700 (= e!439496 (contains!4116 Nil!14566 (select (arr!20514 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35315 () Bool)

(assert (=> bm!35315 (= call!35318 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!87905 (Cons!14565 (select (arr!20514 a!3186) #b00000000000000000000000000000000) Nil!14566) Nil!14566)))))

(assert (= (and d!102981 (not res!535708)) b!790697))

(assert (= (and b!790697 res!535707) b!790700))

(assert (= (and b!790697 res!535709) b!790699))

(assert (= (and b!790699 c!87905) b!790696))

(assert (= (and b!790699 (not c!87905)) b!790698))

(assert (= (or b!790696 b!790698) bm!35315))

(assert (=> b!790697 m!731513))

(assert (=> b!790697 m!731513))

(assert (=> b!790697 m!731581))

(assert (=> b!790699 m!731513))

(assert (=> b!790699 m!731513))

(assert (=> b!790699 m!731581))

(assert (=> b!790700 m!731513))

(assert (=> b!790700 m!731513))

(declare-fun m!731601 () Bool)

(assert (=> b!790700 m!731601))

(assert (=> bm!35315 m!731513))

(declare-fun m!731603 () Bool)

(assert (=> bm!35315 m!731603))

(assert (=> b!790207 d!102981))

(declare-fun b!790701 () Bool)

(declare-fun e!439497 () Bool)

(declare-fun e!439498 () Bool)

(assert (=> b!790701 (= e!439497 e!439498)))

(declare-fun lt!352995 () (_ BitVec 64))

(assert (=> b!790701 (= lt!352995 (select (arr!20514 a!3186) j!159))))

(declare-fun lt!352997 () Unit!27394)

(assert (=> b!790701 (= lt!352997 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!352995 j!159))))

(assert (=> b!790701 (arrayContainsKey!0 a!3186 lt!352995 #b00000000000000000000000000000000)))

(declare-fun lt!352996 () Unit!27394)

(assert (=> b!790701 (= lt!352996 lt!352997)))

(declare-fun res!535711 () Bool)

(assert (=> b!790701 (= res!535711 (= (seekEntryOrOpen!0 (select (arr!20514 a!3186) j!159) a!3186 mask!3328) (Found!8121 j!159)))))

(assert (=> b!790701 (=> (not res!535711) (not e!439498))))

(declare-fun bm!35316 () Bool)

(declare-fun call!35319 () Bool)

(assert (=> bm!35316 (= call!35319 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!790702 () Bool)

(declare-fun e!439499 () Bool)

(assert (=> b!790702 (= e!439499 e!439497)))

(declare-fun c!87906 () Bool)

(assert (=> b!790702 (= c!87906 (validKeyInArray!0 (select (arr!20514 a!3186) j!159)))))

(declare-fun b!790703 () Bool)

(assert (=> b!790703 (= e!439498 call!35319)))

(declare-fun d!102985 () Bool)

(declare-fun res!535710 () Bool)

(assert (=> d!102985 (=> res!535710 e!439499)))

(assert (=> d!102985 (= res!535710 (bvsge j!159 (size!20935 a!3186)))))

(assert (=> d!102985 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!439499)))

(declare-fun b!790704 () Bool)

(assert (=> b!790704 (= e!439497 call!35319)))

(assert (= (and d!102985 (not res!535710)) b!790702))

(assert (= (and b!790702 c!87906) b!790701))

(assert (= (and b!790702 (not c!87906)) b!790704))

(assert (= (and b!790701 res!535711) b!790703))

(assert (= (or b!790703 b!790704) bm!35316))

(assert (=> b!790701 m!731235))

(declare-fun m!731605 () Bool)

(assert (=> b!790701 m!731605))

(declare-fun m!731607 () Bool)

(assert (=> b!790701 m!731607))

(assert (=> b!790701 m!731235))

(assert (=> b!790701 m!731255))

(declare-fun m!731609 () Bool)

(assert (=> bm!35316 m!731609))

(assert (=> b!790702 m!731235))

(assert (=> b!790702 m!731235))

(assert (=> b!790702 m!731237))

(assert (=> b!790206 d!102985))

(declare-fun d!102987 () Bool)

(assert (=> d!102987 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!353000 () Unit!27394)

(declare-fun choose!38 (array!42862 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27394)

(assert (=> d!102987 (= lt!353000 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102987 (validMask!0 mask!3328)))

(assert (=> d!102987 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!353000)))

(declare-fun bs!21855 () Bool)

(assert (= bs!21855 d!102987))

(assert (=> bs!21855 m!731221))

(declare-fun m!731611 () Bool)

(assert (=> bs!21855 m!731611))

(assert (=> bs!21855 m!731229))

(assert (=> b!790206 d!102987))

(declare-fun b!790705 () Bool)

(declare-fun e!439501 () Bool)

(declare-fun e!439504 () Bool)

(assert (=> b!790705 (= e!439501 e!439504)))

(declare-fun res!535712 () Bool)

(declare-fun lt!353002 () SeekEntryResult!8121)

(assert (=> b!790705 (= res!535712 (and (is-Intermediate!8121 lt!353002) (not (undefined!8933 lt!353002)) (bvslt (x!65815 lt!353002) #b01111111111111111111111111111110) (bvsge (x!65815 lt!353002) #b00000000000000000000000000000000) (bvsge (x!65815 lt!353002) x!1131)))))

(assert (=> b!790705 (=> (not res!535712) (not e!439504))))

(declare-fun b!790706 () Bool)

(assert (=> b!790706 (= e!439501 (bvsge (x!65815 lt!353002) #b01111111111111111111111111111110))))

(declare-fun d!102989 () Bool)

(assert (=> d!102989 e!439501))

(declare-fun c!87909 () Bool)

(assert (=> d!102989 (= c!87909 (and (is-Intermediate!8121 lt!353002) (undefined!8933 lt!353002)))))

(declare-fun e!439503 () SeekEntryResult!8121)

(assert (=> d!102989 (= lt!353002 e!439503)))

(declare-fun c!87908 () Bool)

(assert (=> d!102989 (= c!87908 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!353001 () (_ BitVec 64))

(assert (=> d!102989 (= lt!353001 (select (arr!20514 a!3186) index!1321))))

(assert (=> d!102989 (validMask!0 mask!3328)))

(assert (=> d!102989 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20514 a!3186) j!159) a!3186 mask!3328) lt!353002)))

(declare-fun e!439500 () SeekEntryResult!8121)

(declare-fun b!790707 () Bool)

(assert (=> b!790707 (= e!439500 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20514 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!790708 () Bool)

(assert (=> b!790708 (and (bvsge (index!34853 lt!353002) #b00000000000000000000000000000000) (bvslt (index!34853 lt!353002) (size!20935 a!3186)))))

(declare-fun e!439502 () Bool)

(assert (=> b!790708 (= e!439502 (= (select (arr!20514 a!3186) (index!34853 lt!353002)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!790709 () Bool)

(assert (=> b!790709 (= e!439503 (Intermediate!8121 true index!1321 x!1131))))

(declare-fun b!790710 () Bool)

(assert (=> b!790710 (and (bvsge (index!34853 lt!353002) #b00000000000000000000000000000000) (bvslt (index!34853 lt!353002) (size!20935 a!3186)))))

(declare-fun res!535714 () Bool)

(assert (=> b!790710 (= res!535714 (= (select (arr!20514 a!3186) (index!34853 lt!353002)) (select (arr!20514 a!3186) j!159)))))

(assert (=> b!790710 (=> res!535714 e!439502)))

(assert (=> b!790710 (= e!439504 e!439502)))

(declare-fun b!790711 () Bool)

(assert (=> b!790711 (= e!439500 (Intermediate!8121 false index!1321 x!1131))))

(declare-fun b!790712 () Bool)

(assert (=> b!790712 (and (bvsge (index!34853 lt!353002) #b00000000000000000000000000000000) (bvslt (index!34853 lt!353002) (size!20935 a!3186)))))

(declare-fun res!535713 () Bool)

(assert (=> b!790712 (= res!535713 (= (select (arr!20514 a!3186) (index!34853 lt!353002)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!790712 (=> res!535713 e!439502)))

(declare-fun b!790713 () Bool)

(assert (=> b!790713 (= e!439503 e!439500)))

(declare-fun c!87907 () Bool)

(assert (=> b!790713 (= c!87907 (or (= lt!353001 (select (arr!20514 a!3186) j!159)) (= (bvadd lt!353001 lt!353001) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!102989 c!87908) b!790709))

(assert (= (and d!102989 (not c!87908)) b!790713))

(assert (= (and b!790713 c!87907) b!790711))

(assert (= (and b!790713 (not c!87907)) b!790707))

(assert (= (and d!102989 c!87909) b!790706))

(assert (= (and d!102989 (not c!87909)) b!790705))

(assert (= (and b!790705 res!535712) b!790710))

(assert (= (and b!790710 (not res!535714)) b!790712))

(assert (= (and b!790712 (not res!535713)) b!790708))

(declare-fun m!731613 () Bool)

(assert (=> b!790710 m!731613))

(assert (=> b!790712 m!731613))

(assert (=> d!102989 m!731595))

(assert (=> d!102989 m!731229))

(assert (=> b!790708 m!731613))

(assert (=> b!790707 m!731415))

(assert (=> b!790707 m!731415))

(assert (=> b!790707 m!731235))

(declare-fun m!731615 () Bool)

(assert (=> b!790707 m!731615))

(assert (=> b!790205 d!102989))

(declare-fun b!790726 () Bool)

(declare-fun e!439513 () SeekEntryResult!8121)

(declare-fun e!439511 () SeekEntryResult!8121)

(assert (=> b!790726 (= e!439513 e!439511)))

(declare-fun lt!353009 () (_ BitVec 64))

(declare-fun lt!353010 () SeekEntryResult!8121)

(assert (=> b!790726 (= lt!353009 (select (arr!20514 a!3186) (index!34853 lt!353010)))))

(declare-fun c!87916 () Bool)

(assert (=> b!790726 (= c!87916 (= lt!353009 (select (arr!20514 a!3186) j!159)))))

(declare-fun b!790727 () Bool)

(declare-fun e!439512 () SeekEntryResult!8121)

(assert (=> b!790727 (= e!439512 (seekKeyOrZeroReturnVacant!0 (x!65815 lt!353010) (index!34853 lt!353010) (index!34853 lt!353010) (select (arr!20514 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!102991 () Bool)

(declare-fun lt!353011 () SeekEntryResult!8121)

(assert (=> d!102991 (and (or (is-Undefined!8121 lt!353011) (not (is-Found!8121 lt!353011)) (and (bvsge (index!34852 lt!353011) #b00000000000000000000000000000000) (bvslt (index!34852 lt!353011) (size!20935 a!3186)))) (or (is-Undefined!8121 lt!353011) (is-Found!8121 lt!353011) (not (is-MissingZero!8121 lt!353011)) (and (bvsge (index!34851 lt!353011) #b00000000000000000000000000000000) (bvslt (index!34851 lt!353011) (size!20935 a!3186)))) (or (is-Undefined!8121 lt!353011) (is-Found!8121 lt!353011) (is-MissingZero!8121 lt!353011) (not (is-MissingVacant!8121 lt!353011)) (and (bvsge (index!34854 lt!353011) #b00000000000000000000000000000000) (bvslt (index!34854 lt!353011) (size!20935 a!3186)))) (or (is-Undefined!8121 lt!353011) (ite (is-Found!8121 lt!353011) (= (select (arr!20514 a!3186) (index!34852 lt!353011)) (select (arr!20514 a!3186) j!159)) (ite (is-MissingZero!8121 lt!353011) (= (select (arr!20514 a!3186) (index!34851 lt!353011)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8121 lt!353011) (= (select (arr!20514 a!3186) (index!34854 lt!353011)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102991 (= lt!353011 e!439513)))

(declare-fun c!87918 () Bool)

(assert (=> d!102991 (= c!87918 (and (is-Intermediate!8121 lt!353010) (undefined!8933 lt!353010)))))

(assert (=> d!102991 (= lt!353010 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20514 a!3186) j!159) mask!3328) (select (arr!20514 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102991 (validMask!0 mask!3328)))

(assert (=> d!102991 (= (seekEntryOrOpen!0 (select (arr!20514 a!3186) j!159) a!3186 mask!3328) lt!353011)))

(declare-fun b!790728 () Bool)

(assert (=> b!790728 (= e!439512 (MissingZero!8121 (index!34853 lt!353010)))))

(declare-fun b!790729 () Bool)

(assert (=> b!790729 (= e!439513 Undefined!8121)))

(declare-fun b!790730 () Bool)

(assert (=> b!790730 (= e!439511 (Found!8121 (index!34853 lt!353010)))))

(declare-fun b!790731 () Bool)

(declare-fun c!87917 () Bool)

(assert (=> b!790731 (= c!87917 (= lt!353009 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!790731 (= e!439511 e!439512)))

(assert (= (and d!102991 c!87918) b!790729))

(assert (= (and d!102991 (not c!87918)) b!790726))

(assert (= (and b!790726 c!87916) b!790730))

(assert (= (and b!790726 (not c!87916)) b!790731))

(assert (= (and b!790731 c!87917) b!790728))

(assert (= (and b!790731 (not c!87917)) b!790727))

(declare-fun m!731617 () Bool)

(assert (=> b!790726 m!731617))

(assert (=> b!790727 m!731235))

(declare-fun m!731619 () Bool)

(assert (=> b!790727 m!731619))

(assert (=> d!102991 m!731229))

(declare-fun m!731621 () Bool)

(assert (=> d!102991 m!731621))

(declare-fun m!731623 () Bool)

(assert (=> d!102991 m!731623))

(declare-fun m!731625 () Bool)

(assert (=> d!102991 m!731625))

(assert (=> d!102991 m!731235))

(assert (=> d!102991 m!731247))

(assert (=> d!102991 m!731247))

(assert (=> d!102991 m!731235))

(assert (=> d!102991 m!731249))

(assert (=> b!790215 d!102991))

(declare-fun b!790732 () Bool)

(declare-fun e!439516 () SeekEntryResult!8121)

(declare-fun e!439514 () SeekEntryResult!8121)

(assert (=> b!790732 (= e!439516 e!439514)))

(declare-fun lt!353012 () (_ BitVec 64))

(declare-fun lt!353013 () SeekEntryResult!8121)

(assert (=> b!790732 (= lt!353012 (select (arr!20514 a!3186) (index!34853 lt!353013)))))

(declare-fun c!87919 () Bool)

(assert (=> b!790732 (= c!87919 (= lt!353012 k!2102))))

(declare-fun e!439515 () SeekEntryResult!8121)

(declare-fun b!790733 () Bool)

(assert (=> b!790733 (= e!439515 (seekKeyOrZeroReturnVacant!0 (x!65815 lt!353013) (index!34853 lt!353013) (index!34853 lt!353013) k!2102 a!3186 mask!3328))))

(declare-fun d!102993 () Bool)

(declare-fun lt!353014 () SeekEntryResult!8121)

(assert (=> d!102993 (and (or (is-Undefined!8121 lt!353014) (not (is-Found!8121 lt!353014)) (and (bvsge (index!34852 lt!353014) #b00000000000000000000000000000000) (bvslt (index!34852 lt!353014) (size!20935 a!3186)))) (or (is-Undefined!8121 lt!353014) (is-Found!8121 lt!353014) (not (is-MissingZero!8121 lt!353014)) (and (bvsge (index!34851 lt!353014) #b00000000000000000000000000000000) (bvslt (index!34851 lt!353014) (size!20935 a!3186)))) (or (is-Undefined!8121 lt!353014) (is-Found!8121 lt!353014) (is-MissingZero!8121 lt!353014) (not (is-MissingVacant!8121 lt!353014)) (and (bvsge (index!34854 lt!353014) #b00000000000000000000000000000000) (bvslt (index!34854 lt!353014) (size!20935 a!3186)))) (or (is-Undefined!8121 lt!353014) (ite (is-Found!8121 lt!353014) (= (select (arr!20514 a!3186) (index!34852 lt!353014)) k!2102) (ite (is-MissingZero!8121 lt!353014) (= (select (arr!20514 a!3186) (index!34851 lt!353014)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!8121 lt!353014) (= (select (arr!20514 a!3186) (index!34854 lt!353014)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102993 (= lt!353014 e!439516)))

(declare-fun c!87921 () Bool)

(assert (=> d!102993 (= c!87921 (and (is-Intermediate!8121 lt!353013) (undefined!8933 lt!353013)))))

(assert (=> d!102993 (= lt!353013 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!102993 (validMask!0 mask!3328)))

(assert (=> d!102993 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!353014)))

(declare-fun b!790734 () Bool)

(assert (=> b!790734 (= e!439515 (MissingZero!8121 (index!34853 lt!353013)))))

(declare-fun b!790735 () Bool)

(assert (=> b!790735 (= e!439516 Undefined!8121)))

(declare-fun b!790736 () Bool)

(assert (=> b!790736 (= e!439514 (Found!8121 (index!34853 lt!353013)))))

(declare-fun b!790737 () Bool)

(declare-fun c!87920 () Bool)

(assert (=> b!790737 (= c!87920 (= lt!353012 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!790737 (= e!439514 e!439515)))

(assert (= (and d!102993 c!87921) b!790735))

(assert (= (and d!102993 (not c!87921)) b!790732))

(assert (= (and b!790732 c!87919) b!790736))

(assert (= (and b!790732 (not c!87919)) b!790737))

(assert (= (and b!790737 c!87920) b!790734))

(assert (= (and b!790737 (not c!87920)) b!790733))

(declare-fun m!731627 () Bool)

(assert (=> b!790732 m!731627))

(declare-fun m!731629 () Bool)

(assert (=> b!790733 m!731629))

(assert (=> d!102993 m!731229))

(declare-fun m!731631 () Bool)

(assert (=> d!102993 m!731631))

(declare-fun m!731633 () Bool)

(assert (=> d!102993 m!731633))

(declare-fun m!731635 () Bool)

(assert (=> d!102993 m!731635))

(declare-fun m!731637 () Bool)

(assert (=> d!102993 m!731637))

(assert (=> d!102993 m!731637))

(declare-fun m!731639 () Bool)

(assert (=> d!102993 m!731639))

(assert (=> b!790202 d!102993))

(declare-fun d!102995 () Bool)

(assert (=> d!102995 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!790203 d!102995))

(push 1)

