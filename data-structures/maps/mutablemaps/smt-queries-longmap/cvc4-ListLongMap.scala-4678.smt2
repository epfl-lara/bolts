; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65150 () Bool)

(assert start!65150)

(declare-fun b!735402 () Bool)

(declare-fun e!411479 () Bool)

(declare-fun e!411473 () Bool)

(assert (=> b!735402 (= e!411479 e!411473)))

(declare-fun res!494266 () Bool)

(assert (=> b!735402 (=> (not res!494266) (not e!411473))))

(declare-datatypes ((SeekEntryResult!7355 0))(
  ( (MissingZero!7355 (index!31787 (_ BitVec 32))) (Found!7355 (index!31788 (_ BitVec 32))) (Intermediate!7355 (undefined!8167 Bool) (index!31789 (_ BitVec 32)) (x!62818 (_ BitVec 32))) (Undefined!7355) (MissingVacant!7355 (index!31790 (_ BitVec 32))) )
))
(declare-fun lt!326039 () SeekEntryResult!7355)

(declare-fun lt!326029 () SeekEntryResult!7355)

(assert (=> b!735402 (= res!494266 (= lt!326039 lt!326029))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!326038 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41276 0))(
  ( (array!41277 (arr!19748 (Array (_ BitVec 32) (_ BitVec 64))) (size!20169 (_ BitVec 32))) )
))
(declare-fun lt!326030 () array!41276)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41276 (_ BitVec 32)) SeekEntryResult!7355)

(assert (=> b!735402 (= lt!326029 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326038 lt!326030 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735402 (= lt!326039 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326038 mask!3328) lt!326038 lt!326030 mask!3328))))

(declare-fun a!3186 () array!41276)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!735402 (= lt!326038 (select (store (arr!19748 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!735402 (= lt!326030 (array!41277 (store (arr!19748 a!3186) i!1173 k!2102) (size!20169 a!3186)))))

(declare-fun b!735403 () Bool)

(declare-fun res!494269 () Bool)

(declare-fun e!411476 () Bool)

(assert (=> b!735403 (=> (not res!494269) (not e!411476))))

(assert (=> b!735403 (= res!494269 (and (= (size!20169 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20169 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20169 a!3186)) (not (= i!1173 j!159))))))

(declare-fun lt!326035 () SeekEntryResult!7355)

(declare-fun b!735404 () Bool)

(declare-fun lt!326037 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!411475 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41276 (_ BitVec 32)) SeekEntryResult!7355)

(assert (=> b!735404 (= e!411475 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326037 resIntermediateIndex!5 (select (arr!19748 a!3186) j!159) a!3186 mask!3328) lt!326035)))))

(declare-fun b!735405 () Bool)

(declare-fun res!494267 () Bool)

(assert (=> b!735405 (=> (not res!494267) (not e!411476))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!735405 (= res!494267 (validKeyInArray!0 (select (arr!19748 a!3186) j!159)))))

(declare-fun b!735406 () Bool)

(declare-fun res!494273 () Bool)

(assert (=> b!735406 (=> (not res!494273) (not e!411476))))

(assert (=> b!735406 (= res!494273 (validKeyInArray!0 k!2102))))

(declare-fun b!735407 () Bool)

(declare-fun lt!326041 () SeekEntryResult!7355)

(assert (=> b!735407 (= e!411475 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326037 (select (arr!19748 a!3186) j!159) a!3186 mask!3328) lt!326041)))))

(declare-fun b!735408 () Bool)

(declare-fun e!411481 () Bool)

(assert (=> b!735408 (= e!411481 e!411479)))

(declare-fun res!494272 () Bool)

(assert (=> b!735408 (=> (not res!494272) (not e!411479))))

(assert (=> b!735408 (= res!494272 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19748 a!3186) j!159) mask!3328) (select (arr!19748 a!3186) j!159) a!3186 mask!3328) lt!326041))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!735408 (= lt!326041 (Intermediate!7355 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!735409 () Bool)

(declare-fun e!411477 () Bool)

(assert (=> b!735409 (= e!411477 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19748 a!3186) j!159) a!3186 mask!3328) (Found!7355 j!159)))))

(declare-fun b!735410 () Bool)

(assert (=> b!735410 (= e!411476 e!411481)))

(declare-fun res!494262 () Bool)

(assert (=> b!735410 (=> (not res!494262) (not e!411481))))

(declare-fun lt!326042 () SeekEntryResult!7355)

(assert (=> b!735410 (= res!494262 (or (= lt!326042 (MissingZero!7355 i!1173)) (= lt!326042 (MissingVacant!7355 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41276 (_ BitVec 32)) SeekEntryResult!7355)

(assert (=> b!735410 (= lt!326042 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!735411 () Bool)

(declare-datatypes ((Unit!25038 0))(
  ( (Unit!25039) )
))
(declare-fun e!411472 () Unit!25038)

(declare-fun Unit!25040 () Unit!25038)

(assert (=> b!735411 (= e!411472 Unit!25040)))

(assert (=> b!735411 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326037 (select (arr!19748 a!3186) j!159) a!3186 mask!3328) lt!326041)))

(declare-fun b!735412 () Bool)

(declare-fun res!494261 () Bool)

(assert (=> b!735412 (=> (not res!494261) (not e!411481))))

(assert (=> b!735412 (= res!494261 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20169 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20169 a!3186))))))

(declare-fun res!494268 () Bool)

(assert (=> start!65150 (=> (not res!494268) (not e!411476))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65150 (= res!494268 (validMask!0 mask!3328))))

(assert (=> start!65150 e!411476))

(assert (=> start!65150 true))

(declare-fun array_inv!15522 (array!41276) Bool)

(assert (=> start!65150 (array_inv!15522 a!3186)))

(declare-fun b!735413 () Bool)

(declare-fun Unit!25041 () Unit!25038)

(assert (=> b!735413 (= e!411472 Unit!25041)))

(declare-fun lt!326036 () SeekEntryResult!7355)

(assert (=> b!735413 (= lt!326036 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19748 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!735413 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326037 resIntermediateIndex!5 (select (arr!19748 a!3186) j!159) a!3186 mask!3328) lt!326035)))

(declare-fun b!735414 () Bool)

(declare-fun res!494270 () Bool)

(declare-fun e!411474 () Bool)

(assert (=> b!735414 (=> res!494270 e!411474)))

(assert (=> b!735414 (= res!494270 e!411475)))

(declare-fun c!80954 () Bool)

(declare-fun lt!326032 () Bool)

(assert (=> b!735414 (= c!80954 lt!326032)))

(declare-fun b!735415 () Bool)

(declare-fun res!494274 () Bool)

(assert (=> b!735415 (=> (not res!494274) (not e!411481))))

(declare-datatypes ((List!13803 0))(
  ( (Nil!13800) (Cons!13799 (h!14871 (_ BitVec 64)) (t!20126 List!13803)) )
))
(declare-fun arrayNoDuplicates!0 (array!41276 (_ BitVec 32) List!13803) Bool)

(assert (=> b!735415 (= res!494274 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13800))))

(declare-fun b!735416 () Bool)

(assert (=> b!735416 (= e!411477 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19748 a!3186) j!159) a!3186 mask!3328) lt!326041))))

(declare-fun b!735417 () Bool)

(declare-fun res!494257 () Bool)

(assert (=> b!735417 (=> (not res!494257) (not e!411479))))

(assert (=> b!735417 (= res!494257 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19748 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!735418 () Bool)

(declare-fun res!494259 () Bool)

(assert (=> b!735418 (=> (not res!494259) (not e!411476))))

(declare-fun arrayContainsKey!0 (array!41276 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!735418 (= res!494259 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!735419 () Bool)

(declare-fun e!411483 () Bool)

(declare-fun e!411478 () Bool)

(assert (=> b!735419 (= e!411483 e!411478)))

(declare-fun res!494263 () Bool)

(assert (=> b!735419 (=> (not res!494263) (not e!411478))))

(declare-fun lt!326031 () SeekEntryResult!7355)

(assert (=> b!735419 (= res!494263 (= (seekEntryOrOpen!0 (select (arr!19748 a!3186) j!159) a!3186 mask!3328) lt!326031))))

(assert (=> b!735419 (= lt!326031 (Found!7355 j!159))))

(declare-fun b!735420 () Bool)

(declare-fun e!411480 () Bool)

(assert (=> b!735420 (= e!411480 e!411474)))

(declare-fun res!494260 () Bool)

(assert (=> b!735420 (=> res!494260 e!411474)))

(assert (=> b!735420 (= res!494260 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326037 #b00000000000000000000000000000000) (bvsge lt!326037 (size!20169 a!3186))))))

(declare-fun lt!326034 () Unit!25038)

(assert (=> b!735420 (= lt!326034 e!411472)))

(declare-fun c!80955 () Bool)

(assert (=> b!735420 (= c!80955 lt!326032)))

(assert (=> b!735420 (= lt!326032 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735420 (= lt!326037 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!735421 () Bool)

(assert (=> b!735421 (= e!411473 (not e!411480))))

(declare-fun res!494271 () Bool)

(assert (=> b!735421 (=> res!494271 e!411480)))

(assert (=> b!735421 (= res!494271 (or (not (is-Intermediate!7355 lt!326029)) (bvsge x!1131 (x!62818 lt!326029))))))

(assert (=> b!735421 (= lt!326035 (Found!7355 j!159))))

(assert (=> b!735421 e!411483))

(declare-fun res!494264 () Bool)

(assert (=> b!735421 (=> (not res!494264) (not e!411483))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41276 (_ BitVec 32)) Bool)

(assert (=> b!735421 (= res!494264 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326033 () Unit!25038)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41276 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25038)

(assert (=> b!735421 (= lt!326033 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!735422 () Bool)

(declare-fun res!494265 () Bool)

(assert (=> b!735422 (=> (not res!494265) (not e!411479))))

(assert (=> b!735422 (= res!494265 e!411477)))

(declare-fun c!80953 () Bool)

(assert (=> b!735422 (= c!80953 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!735423 () Bool)

(assert (=> b!735423 (= e!411474 true)))

(declare-fun lt!326040 () SeekEntryResult!7355)

(assert (=> b!735423 (= lt!326040 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326037 lt!326038 lt!326030 mask!3328))))

(declare-fun b!735424 () Bool)

(assert (=> b!735424 (= e!411478 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19748 a!3186) j!159) a!3186 mask!3328) lt!326031))))

(declare-fun b!735425 () Bool)

(declare-fun res!494258 () Bool)

(assert (=> b!735425 (=> (not res!494258) (not e!411481))))

(assert (=> b!735425 (= res!494258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65150 res!494268) b!735403))

(assert (= (and b!735403 res!494269) b!735405))

(assert (= (and b!735405 res!494267) b!735406))

(assert (= (and b!735406 res!494273) b!735418))

(assert (= (and b!735418 res!494259) b!735410))

(assert (= (and b!735410 res!494262) b!735425))

(assert (= (and b!735425 res!494258) b!735415))

(assert (= (and b!735415 res!494274) b!735412))

(assert (= (and b!735412 res!494261) b!735408))

(assert (= (and b!735408 res!494272) b!735417))

(assert (= (and b!735417 res!494257) b!735422))

(assert (= (and b!735422 c!80953) b!735416))

(assert (= (and b!735422 (not c!80953)) b!735409))

(assert (= (and b!735422 res!494265) b!735402))

(assert (= (and b!735402 res!494266) b!735421))

(assert (= (and b!735421 res!494264) b!735419))

(assert (= (and b!735419 res!494263) b!735424))

(assert (= (and b!735421 (not res!494271)) b!735420))

(assert (= (and b!735420 c!80955) b!735411))

(assert (= (and b!735420 (not c!80955)) b!735413))

(assert (= (and b!735420 (not res!494260)) b!735414))

(assert (= (and b!735414 c!80954) b!735407))

(assert (= (and b!735414 (not c!80954)) b!735404))

(assert (= (and b!735414 (not res!494270)) b!735423))

(declare-fun m!687859 () Bool)

(assert (=> b!735405 m!687859))

(assert (=> b!735405 m!687859))

(declare-fun m!687861 () Bool)

(assert (=> b!735405 m!687861))

(assert (=> b!735407 m!687859))

(assert (=> b!735407 m!687859))

(declare-fun m!687863 () Bool)

(assert (=> b!735407 m!687863))

(assert (=> b!735424 m!687859))

(assert (=> b!735424 m!687859))

(declare-fun m!687865 () Bool)

(assert (=> b!735424 m!687865))

(assert (=> b!735416 m!687859))

(assert (=> b!735416 m!687859))

(declare-fun m!687867 () Bool)

(assert (=> b!735416 m!687867))

(assert (=> b!735409 m!687859))

(assert (=> b!735409 m!687859))

(declare-fun m!687869 () Bool)

(assert (=> b!735409 m!687869))

(assert (=> b!735404 m!687859))

(assert (=> b!735404 m!687859))

(declare-fun m!687871 () Bool)

(assert (=> b!735404 m!687871))

(declare-fun m!687873 () Bool)

(assert (=> b!735415 m!687873))

(assert (=> b!735411 m!687859))

(assert (=> b!735411 m!687859))

(assert (=> b!735411 m!687863))

(declare-fun m!687875 () Bool)

(assert (=> b!735417 m!687875))

(assert (=> b!735408 m!687859))

(assert (=> b!735408 m!687859))

(declare-fun m!687877 () Bool)

(assert (=> b!735408 m!687877))

(assert (=> b!735408 m!687877))

(assert (=> b!735408 m!687859))

(declare-fun m!687879 () Bool)

(assert (=> b!735408 m!687879))

(declare-fun m!687881 () Bool)

(assert (=> start!65150 m!687881))

(declare-fun m!687883 () Bool)

(assert (=> start!65150 m!687883))

(declare-fun m!687885 () Bool)

(assert (=> b!735420 m!687885))

(declare-fun m!687887 () Bool)

(assert (=> b!735410 m!687887))

(declare-fun m!687889 () Bool)

(assert (=> b!735402 m!687889))

(declare-fun m!687891 () Bool)

(assert (=> b!735402 m!687891))

(declare-fun m!687893 () Bool)

(assert (=> b!735402 m!687893))

(declare-fun m!687895 () Bool)

(assert (=> b!735402 m!687895))

(assert (=> b!735402 m!687893))

(declare-fun m!687897 () Bool)

(assert (=> b!735402 m!687897))

(declare-fun m!687899 () Bool)

(assert (=> b!735418 m!687899))

(declare-fun m!687901 () Bool)

(assert (=> b!735421 m!687901))

(declare-fun m!687903 () Bool)

(assert (=> b!735421 m!687903))

(assert (=> b!735419 m!687859))

(assert (=> b!735419 m!687859))

(declare-fun m!687905 () Bool)

(assert (=> b!735419 m!687905))

(declare-fun m!687907 () Bool)

(assert (=> b!735406 m!687907))

(declare-fun m!687909 () Bool)

(assert (=> b!735423 m!687909))

(declare-fun m!687911 () Bool)

(assert (=> b!735425 m!687911))

(assert (=> b!735413 m!687859))

(assert (=> b!735413 m!687859))

(assert (=> b!735413 m!687869))

(assert (=> b!735413 m!687859))

(assert (=> b!735413 m!687871))

(push 1)

