; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65232 () Bool)

(assert start!65232)

(declare-fun b!738354 () Bool)

(declare-fun e!412949 () Bool)

(assert (=> b!738354 (= e!412949 true)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!327755 () (_ BitVec 64))

(declare-fun lt!327751 () (_ BitVec 32))

(declare-datatypes ((array!41358 0))(
  ( (array!41359 (arr!19789 (Array (_ BitVec 32) (_ BitVec 64))) (size!20210 (_ BitVec 32))) )
))
(declare-fun lt!327759 () array!41358)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7396 0))(
  ( (MissingZero!7396 (index!31951 (_ BitVec 32))) (Found!7396 (index!31952 (_ BitVec 32))) (Intermediate!7396 (undefined!8208 Bool) (index!31953 (_ BitVec 32)) (x!62971 (_ BitVec 32))) (Undefined!7396) (MissingVacant!7396 (index!31954 (_ BitVec 32))) )
))
(declare-fun lt!327754 () SeekEntryResult!7396)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41358 (_ BitVec 32)) SeekEntryResult!7396)

(assert (=> b!738354 (= lt!327754 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327751 lt!327755 lt!327759 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun a!3186 () array!41358)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!412950 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!738355 () Bool)

(declare-fun lt!327757 () SeekEntryResult!7396)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41358 (_ BitVec 32)) SeekEntryResult!7396)

(assert (=> b!738355 (= e!412950 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19789 a!3186) j!159) a!3186 mask!3328) lt!327757))))

(declare-fun b!738356 () Bool)

(declare-fun e!412958 () Bool)

(declare-fun e!412959 () Bool)

(assert (=> b!738356 (= e!412958 e!412959)))

(declare-fun res!496486 () Bool)

(assert (=> b!738356 (=> (not res!496486) (not e!412959))))

(declare-fun lt!327761 () SeekEntryResult!7396)

(declare-fun lt!327762 () SeekEntryResult!7396)

(assert (=> b!738356 (= res!496486 (= lt!327761 lt!327762))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!738356 (= lt!327762 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327755 lt!327759 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738356 (= lt!327761 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327755 mask!3328) lt!327755 lt!327759 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!738356 (= lt!327755 (select (store (arr!19789 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!738356 (= lt!327759 (array!41359 (store (arr!19789 a!3186) i!1173 k0!2102) (size!20210 a!3186)))))

(declare-fun b!738357 () Bool)

(declare-fun res!496475 () Bool)

(declare-fun e!412948 () Bool)

(assert (=> b!738357 (=> (not res!496475) (not e!412948))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41358 (_ BitVec 32)) Bool)

(assert (=> b!738357 (= res!496475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!496471 () Bool)

(declare-fun e!412952 () Bool)

(assert (=> start!65232 (=> (not res!496471) (not e!412952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65232 (= res!496471 (validMask!0 mask!3328))))

(assert (=> start!65232 e!412952))

(assert (=> start!65232 true))

(declare-fun array_inv!15563 (array!41358) Bool)

(assert (=> start!65232 (array_inv!15563 a!3186)))

(declare-fun b!738358 () Bool)

(declare-fun e!412956 () Bool)

(declare-fun lt!327752 () SeekEntryResult!7396)

(assert (=> b!738358 (= e!412956 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327751 resIntermediateIndex!5 (select (arr!19789 a!3186) j!159) a!3186 mask!3328) lt!327752)))))

(declare-fun b!738359 () Bool)

(declare-fun res!496485 () Bool)

(assert (=> b!738359 (=> (not res!496485) (not e!412952))))

(declare-fun arrayContainsKey!0 (array!41358 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!738359 (= res!496485 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!738360 () Bool)

(declare-fun res!496472 () Bool)

(assert (=> b!738360 (=> (not res!496472) (not e!412958))))

(declare-fun e!412955 () Bool)

(assert (=> b!738360 (= res!496472 e!412955)))

(declare-fun c!81323 () Bool)

(assert (=> b!738360 (= c!81323 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!738361 () Bool)

(declare-fun lt!327756 () SeekEntryResult!7396)

(assert (=> b!738361 (= e!412956 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327751 (select (arr!19789 a!3186) j!159) a!3186 mask!3328) lt!327756)))))

(declare-fun b!738362 () Bool)

(declare-fun res!496479 () Bool)

(assert (=> b!738362 (=> (not res!496479) (not e!412958))))

(assert (=> b!738362 (= res!496479 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19789 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!738363 () Bool)

(declare-fun res!496480 () Bool)

(assert (=> b!738363 (=> (not res!496480) (not e!412948))))

(declare-datatypes ((List!13844 0))(
  ( (Nil!13841) (Cons!13840 (h!14912 (_ BitVec 64)) (t!20167 List!13844)) )
))
(declare-fun arrayNoDuplicates!0 (array!41358 (_ BitVec 32) List!13844) Bool)

(assert (=> b!738363 (= res!496480 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13841))))

(declare-fun b!738364 () Bool)

(declare-fun e!412953 () Bool)

(assert (=> b!738364 (= e!412959 (not e!412953))))

(declare-fun res!496481 () Bool)

(assert (=> b!738364 (=> res!496481 e!412953)))

(get-info :version)

(assert (=> b!738364 (= res!496481 (or (not ((_ is Intermediate!7396) lt!327762)) (bvsge x!1131 (x!62971 lt!327762))))))

(assert (=> b!738364 (= lt!327752 (Found!7396 j!159))))

(declare-fun e!412951 () Bool)

(assert (=> b!738364 e!412951))

(declare-fun res!496476 () Bool)

(assert (=> b!738364 (=> (not res!496476) (not e!412951))))

(assert (=> b!738364 (= res!496476 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25202 0))(
  ( (Unit!25203) )
))
(declare-fun lt!327758 () Unit!25202)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41358 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25202)

(assert (=> b!738364 (= lt!327758 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!738365 () Bool)

(declare-fun res!496478 () Bool)

(assert (=> b!738365 (=> (not res!496478) (not e!412948))))

(assert (=> b!738365 (= res!496478 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20210 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20210 a!3186))))))

(declare-fun b!738366 () Bool)

(assert (=> b!738366 (= e!412952 e!412948)))

(declare-fun res!496482 () Bool)

(assert (=> b!738366 (=> (not res!496482) (not e!412948))))

(declare-fun lt!327753 () SeekEntryResult!7396)

(assert (=> b!738366 (= res!496482 (or (= lt!327753 (MissingZero!7396 i!1173)) (= lt!327753 (MissingVacant!7396 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41358 (_ BitVec 32)) SeekEntryResult!7396)

(assert (=> b!738366 (= lt!327753 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!738367 () Bool)

(declare-fun res!496474 () Bool)

(assert (=> b!738367 (=> res!496474 e!412949)))

(assert (=> b!738367 (= res!496474 e!412956)))

(declare-fun c!81322 () Bool)

(declare-fun lt!327763 () Bool)

(assert (=> b!738367 (= c!81322 lt!327763)))

(declare-fun b!738368 () Bool)

(assert (=> b!738368 (= e!412953 e!412949)))

(declare-fun res!496488 () Bool)

(assert (=> b!738368 (=> res!496488 e!412949)))

(assert (=> b!738368 (= res!496488 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327751 #b00000000000000000000000000000000) (bvsge lt!327751 (size!20210 a!3186))))))

(declare-fun lt!327760 () Unit!25202)

(declare-fun e!412954 () Unit!25202)

(assert (=> b!738368 (= lt!327760 e!412954)))

(declare-fun c!81324 () Bool)

(assert (=> b!738368 (= c!81324 lt!327763)))

(assert (=> b!738368 (= lt!327763 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738368 (= lt!327751 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!738369 () Bool)

(declare-fun res!496487 () Bool)

(assert (=> b!738369 (=> (not res!496487) (not e!412952))))

(assert (=> b!738369 (= res!496487 (and (= (size!20210 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20210 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20210 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!738370 () Bool)

(declare-fun Unit!25204 () Unit!25202)

(assert (=> b!738370 (= e!412954 Unit!25204)))

(assert (=> b!738370 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327751 (select (arr!19789 a!3186) j!159) a!3186 mask!3328) lt!327756)))

(declare-fun b!738371 () Bool)

(declare-fun res!496473 () Bool)

(assert (=> b!738371 (=> (not res!496473) (not e!412952))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!738371 (= res!496473 (validKeyInArray!0 (select (arr!19789 a!3186) j!159)))))

(declare-fun b!738372 () Bool)

(declare-fun Unit!25205 () Unit!25202)

(assert (=> b!738372 (= e!412954 Unit!25205)))

(declare-fun lt!327764 () SeekEntryResult!7396)

(assert (=> b!738372 (= lt!327764 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19789 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!738372 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327751 resIntermediateIndex!5 (select (arr!19789 a!3186) j!159) a!3186 mask!3328) lt!327752)))

(declare-fun b!738373 () Bool)

(assert (=> b!738373 (= e!412955 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19789 a!3186) j!159) a!3186 mask!3328) lt!327756))))

(declare-fun b!738374 () Bool)

(assert (=> b!738374 (= e!412955 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19789 a!3186) j!159) a!3186 mask!3328) (Found!7396 j!159)))))

(declare-fun b!738375 () Bool)

(declare-fun res!496477 () Bool)

(assert (=> b!738375 (=> (not res!496477) (not e!412952))))

(assert (=> b!738375 (= res!496477 (validKeyInArray!0 k0!2102))))

(declare-fun b!738376 () Bool)

(assert (=> b!738376 (= e!412948 e!412958)))

(declare-fun res!496484 () Bool)

(assert (=> b!738376 (=> (not res!496484) (not e!412958))))

(assert (=> b!738376 (= res!496484 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19789 a!3186) j!159) mask!3328) (select (arr!19789 a!3186) j!159) a!3186 mask!3328) lt!327756))))

(assert (=> b!738376 (= lt!327756 (Intermediate!7396 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!738377 () Bool)

(assert (=> b!738377 (= e!412951 e!412950)))

(declare-fun res!496483 () Bool)

(assert (=> b!738377 (=> (not res!496483) (not e!412950))))

(assert (=> b!738377 (= res!496483 (= (seekEntryOrOpen!0 (select (arr!19789 a!3186) j!159) a!3186 mask!3328) lt!327757))))

(assert (=> b!738377 (= lt!327757 (Found!7396 j!159))))

(assert (= (and start!65232 res!496471) b!738369))

(assert (= (and b!738369 res!496487) b!738371))

(assert (= (and b!738371 res!496473) b!738375))

(assert (= (and b!738375 res!496477) b!738359))

(assert (= (and b!738359 res!496485) b!738366))

(assert (= (and b!738366 res!496482) b!738357))

(assert (= (and b!738357 res!496475) b!738363))

(assert (= (and b!738363 res!496480) b!738365))

(assert (= (and b!738365 res!496478) b!738376))

(assert (= (and b!738376 res!496484) b!738362))

(assert (= (and b!738362 res!496479) b!738360))

(assert (= (and b!738360 c!81323) b!738373))

(assert (= (and b!738360 (not c!81323)) b!738374))

(assert (= (and b!738360 res!496472) b!738356))

(assert (= (and b!738356 res!496486) b!738364))

(assert (= (and b!738364 res!496476) b!738377))

(assert (= (and b!738377 res!496483) b!738355))

(assert (= (and b!738364 (not res!496481)) b!738368))

(assert (= (and b!738368 c!81324) b!738370))

(assert (= (and b!738368 (not c!81324)) b!738372))

(assert (= (and b!738368 (not res!496488)) b!738367))

(assert (= (and b!738367 c!81322) b!738361))

(assert (= (and b!738367 (not c!81322)) b!738358))

(assert (= (and b!738367 (not res!496474)) b!738354))

(declare-fun m!690073 () Bool)

(assert (=> b!738359 m!690073))

(declare-fun m!690075 () Bool)

(assert (=> b!738368 m!690075))

(declare-fun m!690077 () Bool)

(assert (=> b!738374 m!690077))

(assert (=> b!738374 m!690077))

(declare-fun m!690079 () Bool)

(assert (=> b!738374 m!690079))

(assert (=> b!738358 m!690077))

(assert (=> b!738358 m!690077))

(declare-fun m!690081 () Bool)

(assert (=> b!738358 m!690081))

(declare-fun m!690083 () Bool)

(assert (=> b!738363 m!690083))

(declare-fun m!690085 () Bool)

(assert (=> b!738364 m!690085))

(declare-fun m!690087 () Bool)

(assert (=> b!738364 m!690087))

(assert (=> b!738370 m!690077))

(assert (=> b!738370 m!690077))

(declare-fun m!690089 () Bool)

(assert (=> b!738370 m!690089))

(assert (=> b!738377 m!690077))

(assert (=> b!738377 m!690077))

(declare-fun m!690091 () Bool)

(assert (=> b!738377 m!690091))

(assert (=> b!738376 m!690077))

(assert (=> b!738376 m!690077))

(declare-fun m!690093 () Bool)

(assert (=> b!738376 m!690093))

(assert (=> b!738376 m!690093))

(assert (=> b!738376 m!690077))

(declare-fun m!690095 () Bool)

(assert (=> b!738376 m!690095))

(declare-fun m!690097 () Bool)

(assert (=> start!65232 m!690097))

(declare-fun m!690099 () Bool)

(assert (=> start!65232 m!690099))

(assert (=> b!738371 m!690077))

(assert (=> b!738371 m!690077))

(declare-fun m!690101 () Bool)

(assert (=> b!738371 m!690101))

(assert (=> b!738361 m!690077))

(assert (=> b!738361 m!690077))

(assert (=> b!738361 m!690089))

(assert (=> b!738355 m!690077))

(assert (=> b!738355 m!690077))

(declare-fun m!690103 () Bool)

(assert (=> b!738355 m!690103))

(declare-fun m!690105 () Bool)

(assert (=> b!738362 m!690105))

(declare-fun m!690107 () Bool)

(assert (=> b!738375 m!690107))

(assert (=> b!738372 m!690077))

(assert (=> b!738372 m!690077))

(assert (=> b!738372 m!690079))

(assert (=> b!738372 m!690077))

(assert (=> b!738372 m!690081))

(declare-fun m!690109 () Bool)

(assert (=> b!738357 m!690109))

(declare-fun m!690111 () Bool)

(assert (=> b!738356 m!690111))

(declare-fun m!690113 () Bool)

(assert (=> b!738356 m!690113))

(declare-fun m!690115 () Bool)

(assert (=> b!738356 m!690115))

(declare-fun m!690117 () Bool)

(assert (=> b!738356 m!690117))

(assert (=> b!738356 m!690111))

(declare-fun m!690119 () Bool)

(assert (=> b!738356 m!690119))

(declare-fun m!690121 () Bool)

(assert (=> b!738366 m!690121))

(declare-fun m!690123 () Bool)

(assert (=> b!738354 m!690123))

(assert (=> b!738373 m!690077))

(assert (=> b!738373 m!690077))

(declare-fun m!690125 () Bool)

(assert (=> b!738373 m!690125))

(check-sat (not b!738374) (not b!738370) (not b!738364) (not b!738363) (not b!738355) (not b!738368) (not b!738361) (not b!738359) (not b!738372) (not b!738373) (not start!65232) (not b!738375) (not b!738366) (not b!738354) (not b!738358) (not b!738376) (not b!738377) (not b!738356) (not b!738371) (not b!738357))
(check-sat)
