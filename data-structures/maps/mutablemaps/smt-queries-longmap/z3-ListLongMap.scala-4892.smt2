; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67482 () Bool)

(assert start!67482)

(declare-fun b!780481 () Bool)

(declare-fun e!434162 () Bool)

(declare-fun e!434166 () Bool)

(assert (=> b!780481 (= e!434162 e!434166)))

(declare-fun res!528209 () Bool)

(assert (=> b!780481 (=> (not res!528209) (not e!434166))))

(declare-datatypes ((SeekEntryResult!7996 0))(
  ( (MissingZero!7996 (index!34351 (_ BitVec 32))) (Found!7996 (index!34352 (_ BitVec 32))) (Intermediate!7996 (undefined!8808 Bool) (index!34353 (_ BitVec 32)) (x!65327 (_ BitVec 32))) (Undefined!7996) (MissingVacant!7996 (index!34354 (_ BitVec 32))) )
))
(declare-fun lt!347832 () SeekEntryResult!7996)

(declare-fun lt!347831 () SeekEntryResult!7996)

(assert (=> b!780481 (= res!528209 (= lt!347832 lt!347831))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!42603 0))(
  ( (array!42604 (arr!20389 (Array (_ BitVec 32) (_ BitVec 64))) (size!20810 (_ BitVec 32))) )
))
(declare-fun lt!347839 () array!42603)

(declare-fun lt!347834 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42603 (_ BitVec 32)) SeekEntryResult!7996)

(assert (=> b!780481 (= lt!347831 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!347834 lt!347839 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!780481 (= lt!347832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!347834 mask!3328) lt!347834 lt!347839 mask!3328))))

(declare-fun a!3186 () array!42603)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!780481 (= lt!347834 (select (store (arr!20389 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!780481 (= lt!347839 (array!42604 (store (arr!20389 a!3186) i!1173 k0!2102) (size!20810 a!3186)))))

(declare-fun lt!347838 () SeekEntryResult!7996)

(declare-fun b!780482 () Bool)

(declare-fun e!434167 () Bool)

(assert (=> b!780482 (= e!434167 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20389 a!3186) j!159) a!3186 mask!3328) lt!347838))))

(declare-fun b!780483 () Bool)

(declare-datatypes ((Unit!26894 0))(
  ( (Unit!26895) )
))
(declare-fun e!434168 () Unit!26894)

(declare-fun Unit!26896 () Unit!26894)

(assert (=> b!780483 (= e!434168 Unit!26896)))

(declare-fun b!780484 () Bool)

(declare-fun res!528208 () Bool)

(declare-fun e!434169 () Bool)

(assert (=> b!780484 (=> (not res!528208) (not e!434169))))

(declare-fun arrayContainsKey!0 (array!42603 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!780484 (= res!528208 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!780485 () Bool)

(declare-fun e!434164 () Bool)

(assert (=> b!780485 (= e!434166 (not e!434164))))

(declare-fun res!528220 () Bool)

(assert (=> b!780485 (=> res!528220 e!434164)))

(get-info :version)

(assert (=> b!780485 (= res!528220 (or (not ((_ is Intermediate!7996) lt!347831)) (bvslt x!1131 (x!65327 lt!347831)) (not (= x!1131 (x!65327 lt!347831))) (not (= index!1321 (index!34353 lt!347831)))))))

(declare-fun e!434165 () Bool)

(assert (=> b!780485 e!434165))

(declare-fun res!528211 () Bool)

(assert (=> b!780485 (=> (not res!528211) (not e!434165))))

(declare-fun lt!347837 () SeekEntryResult!7996)

(declare-fun lt!347835 () SeekEntryResult!7996)

(assert (=> b!780485 (= res!528211 (= lt!347837 lt!347835))))

(assert (=> b!780485 (= lt!347835 (Found!7996 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42603 (_ BitVec 32)) SeekEntryResult!7996)

(assert (=> b!780485 (= lt!347837 (seekEntryOrOpen!0 (select (arr!20389 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42603 (_ BitVec 32)) Bool)

(assert (=> b!780485 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!347830 () Unit!26894)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42603 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26894)

(assert (=> b!780485 (= lt!347830 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!780487 () Bool)

(declare-fun res!528217 () Bool)

(assert (=> b!780487 (=> (not res!528217) (not e!434169))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!780487 (= res!528217 (validKeyInArray!0 k0!2102))))

(declare-fun b!780488 () Bool)

(declare-fun e!434170 () Bool)

(assert (=> b!780488 (= e!434170 e!434162)))

(declare-fun res!528215 () Bool)

(assert (=> b!780488 (=> (not res!528215) (not e!434162))))

(assert (=> b!780488 (= res!528215 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20389 a!3186) j!159) mask!3328) (select (arr!20389 a!3186) j!159) a!3186 mask!3328) lt!347838))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!780488 (= lt!347838 (Intermediate!7996 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!780489 () Bool)

(declare-fun res!528205 () Bool)

(assert (=> b!780489 (=> (not res!528205) (not e!434170))))

(assert (=> b!780489 (= res!528205 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20810 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20810 a!3186))))))

(declare-fun b!780490 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42603 (_ BitVec 32)) SeekEntryResult!7996)

(assert (=> b!780490 (= e!434165 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20389 a!3186) j!159) a!3186 mask!3328) lt!347835))))

(declare-fun b!780491 () Bool)

(declare-fun res!528214 () Bool)

(assert (=> b!780491 (=> res!528214 e!434164)))

(assert (=> b!780491 (= res!528214 (= (select (store (arr!20389 a!3186) i!1173 k0!2102) index!1321) lt!347834))))

(declare-fun b!780492 () Bool)

(declare-fun Unit!26897 () Unit!26894)

(assert (=> b!780492 (= e!434168 Unit!26897)))

(assert (=> b!780492 false))

(declare-fun b!780493 () Bool)

(declare-fun res!528212 () Bool)

(assert (=> b!780493 (=> (not res!528212) (not e!434169))))

(assert (=> b!780493 (= res!528212 (and (= (size!20810 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20810 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20810 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!780494 () Bool)

(declare-fun res!528218 () Bool)

(assert (=> b!780494 (=> (not res!528218) (not e!434170))))

(declare-datatypes ((List!14444 0))(
  ( (Nil!14441) (Cons!14440 (h!15557 (_ BitVec 64)) (t!20767 List!14444)) )
))
(declare-fun arrayNoDuplicates!0 (array!42603 (_ BitVec 32) List!14444) Bool)

(assert (=> b!780494 (= res!528218 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14441))))

(declare-fun b!780495 () Bool)

(declare-fun res!528207 () Bool)

(assert (=> b!780495 (=> (not res!528207) (not e!434169))))

(assert (=> b!780495 (= res!528207 (validKeyInArray!0 (select (arr!20389 a!3186) j!159)))))

(declare-fun b!780486 () Bool)

(declare-fun res!528216 () Bool)

(assert (=> b!780486 (=> res!528216 e!434164)))

(assert (=> b!780486 (= res!528216 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20389 a!3186) j!159) a!3186 mask!3328) lt!347835)))))

(declare-fun res!528213 () Bool)

(assert (=> start!67482 (=> (not res!528213) (not e!434169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67482 (= res!528213 (validMask!0 mask!3328))))

(assert (=> start!67482 e!434169))

(assert (=> start!67482 true))

(declare-fun array_inv!16163 (array!42603) Bool)

(assert (=> start!67482 (array_inv!16163 a!3186)))

(declare-fun b!780496 () Bool)

(assert (=> b!780496 (= e!434167 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20389 a!3186) j!159) a!3186 mask!3328) (Found!7996 j!159)))))

(declare-fun b!780497 () Bool)

(declare-fun res!528210 () Bool)

(assert (=> b!780497 (=> (not res!528210) (not e!434170))))

(assert (=> b!780497 (= res!528210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!780498 () Bool)

(declare-fun res!528206 () Bool)

(assert (=> b!780498 (=> (not res!528206) (not e!434162))))

(assert (=> b!780498 (= res!528206 e!434167)))

(declare-fun c!86543 () Bool)

(assert (=> b!780498 (= c!86543 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!780499 () Bool)

(assert (=> b!780499 (= e!434164 true)))

(declare-fun lt!347833 () Unit!26894)

(assert (=> b!780499 (= lt!347833 e!434168)))

(declare-fun c!86544 () Bool)

(assert (=> b!780499 (= c!86544 (= (select (store (arr!20389 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!780500 () Bool)

(assert (=> b!780500 (= e!434169 e!434170)))

(declare-fun res!528204 () Bool)

(assert (=> b!780500 (=> (not res!528204) (not e!434170))))

(declare-fun lt!347836 () SeekEntryResult!7996)

(assert (=> b!780500 (= res!528204 (or (= lt!347836 (MissingZero!7996 i!1173)) (= lt!347836 (MissingVacant!7996 i!1173))))))

(assert (=> b!780500 (= lt!347836 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!780501 () Bool)

(declare-fun res!528219 () Bool)

(assert (=> b!780501 (=> (not res!528219) (not e!434162))))

(assert (=> b!780501 (= res!528219 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20389 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!67482 res!528213) b!780493))

(assert (= (and b!780493 res!528212) b!780495))

(assert (= (and b!780495 res!528207) b!780487))

(assert (= (and b!780487 res!528217) b!780484))

(assert (= (and b!780484 res!528208) b!780500))

(assert (= (and b!780500 res!528204) b!780497))

(assert (= (and b!780497 res!528210) b!780494))

(assert (= (and b!780494 res!528218) b!780489))

(assert (= (and b!780489 res!528205) b!780488))

(assert (= (and b!780488 res!528215) b!780501))

(assert (= (and b!780501 res!528219) b!780498))

(assert (= (and b!780498 c!86543) b!780482))

(assert (= (and b!780498 (not c!86543)) b!780496))

(assert (= (and b!780498 res!528206) b!780481))

(assert (= (and b!780481 res!528209) b!780485))

(assert (= (and b!780485 res!528211) b!780490))

(assert (= (and b!780485 (not res!528220)) b!780486))

(assert (= (and b!780486 (not res!528216)) b!780491))

(assert (= (and b!780491 (not res!528214)) b!780499))

(assert (= (and b!780499 c!86544) b!780492))

(assert (= (and b!780499 (not c!86544)) b!780483))

(declare-fun m!723817 () Bool)

(assert (=> b!780501 m!723817))

(declare-fun m!723819 () Bool)

(assert (=> b!780490 m!723819))

(assert (=> b!780490 m!723819))

(declare-fun m!723821 () Bool)

(assert (=> b!780490 m!723821))

(declare-fun m!723823 () Bool)

(assert (=> b!780499 m!723823))

(declare-fun m!723825 () Bool)

(assert (=> b!780499 m!723825))

(assert (=> b!780485 m!723819))

(assert (=> b!780485 m!723819))

(declare-fun m!723827 () Bool)

(assert (=> b!780485 m!723827))

(declare-fun m!723829 () Bool)

(assert (=> b!780485 m!723829))

(declare-fun m!723831 () Bool)

(assert (=> b!780485 m!723831))

(declare-fun m!723833 () Bool)

(assert (=> b!780497 m!723833))

(assert (=> b!780486 m!723819))

(assert (=> b!780486 m!723819))

(declare-fun m!723835 () Bool)

(assert (=> b!780486 m!723835))

(declare-fun m!723837 () Bool)

(assert (=> b!780487 m!723837))

(declare-fun m!723839 () Bool)

(assert (=> b!780500 m!723839))

(assert (=> b!780488 m!723819))

(assert (=> b!780488 m!723819))

(declare-fun m!723841 () Bool)

(assert (=> b!780488 m!723841))

(assert (=> b!780488 m!723841))

(assert (=> b!780488 m!723819))

(declare-fun m!723843 () Bool)

(assert (=> b!780488 m!723843))

(assert (=> b!780491 m!723823))

(assert (=> b!780491 m!723825))

(declare-fun m!723845 () Bool)

(assert (=> b!780484 m!723845))

(assert (=> b!780496 m!723819))

(assert (=> b!780496 m!723819))

(assert (=> b!780496 m!723835))

(assert (=> b!780482 m!723819))

(assert (=> b!780482 m!723819))

(declare-fun m!723847 () Bool)

(assert (=> b!780482 m!723847))

(declare-fun m!723849 () Bool)

(assert (=> start!67482 m!723849))

(declare-fun m!723851 () Bool)

(assert (=> start!67482 m!723851))

(declare-fun m!723853 () Bool)

(assert (=> b!780481 m!723853))

(assert (=> b!780481 m!723853))

(declare-fun m!723855 () Bool)

(assert (=> b!780481 m!723855))

(declare-fun m!723857 () Bool)

(assert (=> b!780481 m!723857))

(assert (=> b!780481 m!723823))

(declare-fun m!723859 () Bool)

(assert (=> b!780481 m!723859))

(assert (=> b!780495 m!723819))

(assert (=> b!780495 m!723819))

(declare-fun m!723861 () Bool)

(assert (=> b!780495 m!723861))

(declare-fun m!723863 () Bool)

(assert (=> b!780494 m!723863))

(check-sat (not b!780485) (not b!780500) (not b!780487) (not b!780490) (not b!780488) (not b!780486) (not b!780497) (not b!780495) (not b!780481) (not start!67482) (not b!780484) (not b!780496) (not b!780494) (not b!780482))
(check-sat)
