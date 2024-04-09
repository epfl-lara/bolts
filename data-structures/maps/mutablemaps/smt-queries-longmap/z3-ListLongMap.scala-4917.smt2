; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67764 () Bool)

(assert start!67764)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42759 0))(
  ( (array!42760 (arr!20464 (Array (_ BitVec 32) (_ BitVec 64))) (size!20885 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42759)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8071 0))(
  ( (MissingZero!8071 (index!34651 (_ BitVec 32))) (Found!8071 (index!34652 (_ BitVec 32))) (Intermediate!8071 (undefined!8883 Bool) (index!34653 (_ BitVec 32)) (x!65620 (_ BitVec 32))) (Undefined!8071) (MissingVacant!8071 (index!34654 (_ BitVec 32))) )
))
(declare-fun lt!350718 () SeekEntryResult!8071)

(declare-fun b!786347 () Bool)

(declare-fun e!437147 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42759 (_ BitVec 32)) SeekEntryResult!8071)

(assert (=> b!786347 (= e!437147 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20464 a!3186) j!159) a!3186 mask!3328) lt!350718))))

(declare-fun b!786348 () Bool)

(declare-datatypes ((Unit!27194 0))(
  ( (Unit!27195) )
))
(declare-fun e!437154 () Unit!27194)

(declare-fun Unit!27196 () Unit!27194)

(assert (=> b!786348 (= e!437154 Unit!27196)))

(declare-fun b!786349 () Bool)

(declare-fun Unit!27197 () Unit!27194)

(assert (=> b!786349 (= e!437154 Unit!27197)))

(assert (=> b!786349 false))

(declare-fun b!786350 () Bool)

(declare-fun e!437148 () Bool)

(declare-fun e!437149 () Bool)

(assert (=> b!786350 (= e!437148 e!437149)))

(declare-fun res!532563 () Bool)

(assert (=> b!786350 (=> (not res!532563) (not e!437149))))

(declare-fun lt!350721 () SeekEntryResult!8071)

(declare-fun lt!350715 () SeekEntryResult!8071)

(assert (=> b!786350 (= res!532563 (= lt!350721 lt!350715))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!350724 () (_ BitVec 64))

(declare-fun lt!350723 () array!42759)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42759 (_ BitVec 32)) SeekEntryResult!8071)

(assert (=> b!786350 (= lt!350715 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350724 lt!350723 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!786350 (= lt!350721 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350724 mask!3328) lt!350724 lt!350723 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!786350 (= lt!350724 (select (store (arr!20464 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!786350 (= lt!350723 (array!42760 (store (arr!20464 a!3186) i!1173 k0!2102) (size!20885 a!3186)))))

(declare-fun b!786352 () Bool)

(declare-fun e!437155 () Bool)

(declare-fun e!437151 () Bool)

(assert (=> b!786352 (= e!437155 e!437151)))

(declare-fun res!532568 () Bool)

(assert (=> b!786352 (=> res!532568 e!437151)))

(declare-fun lt!350720 () (_ BitVec 64))

(assert (=> b!786352 (= res!532568 (= lt!350720 lt!350724))))

(assert (=> b!786352 (= lt!350720 (select (store (arr!20464 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun e!437153 () Bool)

(declare-fun b!786353 () Bool)

(declare-fun lt!350716 () SeekEntryResult!8071)

(assert (=> b!786353 (= e!437153 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20464 a!3186) j!159) a!3186 mask!3328) lt!350716))))

(declare-fun b!786354 () Bool)

(declare-fun res!532564 () Bool)

(declare-fun e!437157 () Bool)

(assert (=> b!786354 (=> (not res!532564) (not e!437157))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!786354 (= res!532564 (validKeyInArray!0 (select (arr!20464 a!3186) j!159)))))

(declare-fun b!786355 () Bool)

(declare-fun res!532566 () Bool)

(assert (=> b!786355 (=> (not res!532566) (not e!437157))))

(assert (=> b!786355 (= res!532566 (and (= (size!20885 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20885 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20885 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!786356 () Bool)

(assert (=> b!786356 (= e!437153 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20464 a!3186) j!159) a!3186 mask!3328) (Found!8071 j!159)))))

(declare-fun b!786357 () Bool)

(assert (=> b!786357 (= e!437151 true)))

(declare-fun e!437158 () Bool)

(assert (=> b!786357 e!437158))

(declare-fun res!532555 () Bool)

(assert (=> b!786357 (=> (not res!532555) (not e!437158))))

(assert (=> b!786357 (= res!532555 (= lt!350720 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350717 () Unit!27194)

(assert (=> b!786357 (= lt!350717 e!437154)))

(declare-fun c!87306 () Bool)

(assert (=> b!786357 (= c!87306 (= lt!350720 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!786358 () Bool)

(declare-fun e!437152 () Bool)

(assert (=> b!786358 (= e!437152 e!437155)))

(declare-fun res!532561 () Bool)

(assert (=> b!786358 (=> res!532561 e!437155)))

(declare-fun lt!350722 () SeekEntryResult!8071)

(assert (=> b!786358 (= res!532561 (not (= lt!350722 lt!350718)))))

(assert (=> b!786358 (= lt!350722 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20464 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!786359 () Bool)

(declare-fun res!532558 () Bool)

(declare-fun e!437156 () Bool)

(assert (=> b!786359 (=> (not res!532558) (not e!437156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42759 (_ BitVec 32)) Bool)

(assert (=> b!786359 (= res!532558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!786351 () Bool)

(assert (=> b!786351 (= e!437149 (not e!437152))))

(declare-fun res!532569 () Bool)

(assert (=> b!786351 (=> res!532569 e!437152)))

(get-info :version)

(assert (=> b!786351 (= res!532569 (or (not ((_ is Intermediate!8071) lt!350715)) (bvslt x!1131 (x!65620 lt!350715)) (not (= x!1131 (x!65620 lt!350715))) (not (= index!1321 (index!34653 lt!350715)))))))

(assert (=> b!786351 e!437147))

(declare-fun res!532559 () Bool)

(assert (=> b!786351 (=> (not res!532559) (not e!437147))))

(declare-fun lt!350725 () SeekEntryResult!8071)

(assert (=> b!786351 (= res!532559 (= lt!350725 lt!350718))))

(assert (=> b!786351 (= lt!350718 (Found!8071 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42759 (_ BitVec 32)) SeekEntryResult!8071)

(assert (=> b!786351 (= lt!350725 (seekEntryOrOpen!0 (select (arr!20464 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!786351 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350714 () Unit!27194)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42759 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27194)

(assert (=> b!786351 (= lt!350714 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!532560 () Bool)

(assert (=> start!67764 (=> (not res!532560) (not e!437157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67764 (= res!532560 (validMask!0 mask!3328))))

(assert (=> start!67764 e!437157))

(assert (=> start!67764 true))

(declare-fun array_inv!16238 (array!42759) Bool)

(assert (=> start!67764 (array_inv!16238 a!3186)))

(declare-fun b!786360 () Bool)

(declare-fun res!532556 () Bool)

(assert (=> b!786360 (=> (not res!532556) (not e!437156))))

(declare-datatypes ((List!14519 0))(
  ( (Nil!14516) (Cons!14515 (h!15638 (_ BitVec 64)) (t!20842 List!14519)) )
))
(declare-fun arrayNoDuplicates!0 (array!42759 (_ BitVec 32) List!14519) Bool)

(assert (=> b!786360 (= res!532556 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14516))))

(declare-fun b!786361 () Bool)

(declare-fun res!532567 () Bool)

(assert (=> b!786361 (=> (not res!532567) (not e!437148))))

(assert (=> b!786361 (= res!532567 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20464 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!786362 () Bool)

(declare-fun res!532553 () Bool)

(assert (=> b!786362 (=> (not res!532553) (not e!437158))))

(assert (=> b!786362 (= res!532553 (= (seekEntryOrOpen!0 lt!350724 lt!350723 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350724 lt!350723 mask!3328)))))

(declare-fun b!786363 () Bool)

(assert (=> b!786363 (= e!437158 (= lt!350725 lt!350722))))

(declare-fun b!786364 () Bool)

(declare-fun res!532554 () Bool)

(assert (=> b!786364 (=> (not res!532554) (not e!437156))))

(assert (=> b!786364 (= res!532554 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20885 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20885 a!3186))))))

(declare-fun b!786365 () Bool)

(assert (=> b!786365 (= e!437156 e!437148)))

(declare-fun res!532562 () Bool)

(assert (=> b!786365 (=> (not res!532562) (not e!437148))))

(assert (=> b!786365 (= res!532562 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20464 a!3186) j!159) mask!3328) (select (arr!20464 a!3186) j!159) a!3186 mask!3328) lt!350716))))

(assert (=> b!786365 (= lt!350716 (Intermediate!8071 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!786366 () Bool)

(declare-fun res!532552 () Bool)

(assert (=> b!786366 (=> (not res!532552) (not e!437157))))

(assert (=> b!786366 (= res!532552 (validKeyInArray!0 k0!2102))))

(declare-fun b!786367 () Bool)

(declare-fun res!532565 () Bool)

(assert (=> b!786367 (=> (not res!532565) (not e!437157))))

(declare-fun arrayContainsKey!0 (array!42759 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!786367 (= res!532565 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!786368 () Bool)

(assert (=> b!786368 (= e!437157 e!437156)))

(declare-fun res!532557 () Bool)

(assert (=> b!786368 (=> (not res!532557) (not e!437156))))

(declare-fun lt!350719 () SeekEntryResult!8071)

(assert (=> b!786368 (= res!532557 (or (= lt!350719 (MissingZero!8071 i!1173)) (= lt!350719 (MissingVacant!8071 i!1173))))))

(assert (=> b!786368 (= lt!350719 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!786369 () Bool)

(declare-fun res!532570 () Bool)

(assert (=> b!786369 (=> (not res!532570) (not e!437148))))

(assert (=> b!786369 (= res!532570 e!437153)))

(declare-fun c!87305 () Bool)

(assert (=> b!786369 (= c!87305 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!67764 res!532560) b!786355))

(assert (= (and b!786355 res!532566) b!786354))

(assert (= (and b!786354 res!532564) b!786366))

(assert (= (and b!786366 res!532552) b!786367))

(assert (= (and b!786367 res!532565) b!786368))

(assert (= (and b!786368 res!532557) b!786359))

(assert (= (and b!786359 res!532558) b!786360))

(assert (= (and b!786360 res!532556) b!786364))

(assert (= (and b!786364 res!532554) b!786365))

(assert (= (and b!786365 res!532562) b!786361))

(assert (= (and b!786361 res!532567) b!786369))

(assert (= (and b!786369 c!87305) b!786353))

(assert (= (and b!786369 (not c!87305)) b!786356))

(assert (= (and b!786369 res!532570) b!786350))

(assert (= (and b!786350 res!532563) b!786351))

(assert (= (and b!786351 res!532559) b!786347))

(assert (= (and b!786351 (not res!532569)) b!786358))

(assert (= (and b!786358 (not res!532561)) b!786352))

(assert (= (and b!786352 (not res!532568)) b!786357))

(assert (= (and b!786357 c!87306) b!786349))

(assert (= (and b!786357 (not c!87306)) b!786348))

(assert (= (and b!786357 res!532555) b!786362))

(assert (= (and b!786362 res!532553) b!786363))

(declare-fun m!728237 () Bool)

(assert (=> b!786351 m!728237))

(assert (=> b!786351 m!728237))

(declare-fun m!728239 () Bool)

(assert (=> b!786351 m!728239))

(declare-fun m!728241 () Bool)

(assert (=> b!786351 m!728241))

(declare-fun m!728243 () Bool)

(assert (=> b!786351 m!728243))

(declare-fun m!728245 () Bool)

(assert (=> b!786368 m!728245))

(declare-fun m!728247 () Bool)

(assert (=> b!786360 m!728247))

(declare-fun m!728249 () Bool)

(assert (=> b!786352 m!728249))

(declare-fun m!728251 () Bool)

(assert (=> b!786352 m!728251))

(declare-fun m!728253 () Bool)

(assert (=> b!786350 m!728253))

(declare-fun m!728255 () Bool)

(assert (=> b!786350 m!728255))

(assert (=> b!786350 m!728249))

(declare-fun m!728257 () Bool)

(assert (=> b!786350 m!728257))

(declare-fun m!728259 () Bool)

(assert (=> b!786350 m!728259))

(assert (=> b!786350 m!728253))

(assert (=> b!786358 m!728237))

(assert (=> b!786358 m!728237))

(declare-fun m!728261 () Bool)

(assert (=> b!786358 m!728261))

(assert (=> b!786347 m!728237))

(assert (=> b!786347 m!728237))

(declare-fun m!728263 () Bool)

(assert (=> b!786347 m!728263))

(declare-fun m!728265 () Bool)

(assert (=> start!67764 m!728265))

(declare-fun m!728267 () Bool)

(assert (=> start!67764 m!728267))

(assert (=> b!786365 m!728237))

(assert (=> b!786365 m!728237))

(declare-fun m!728269 () Bool)

(assert (=> b!786365 m!728269))

(assert (=> b!786365 m!728269))

(assert (=> b!786365 m!728237))

(declare-fun m!728271 () Bool)

(assert (=> b!786365 m!728271))

(declare-fun m!728273 () Bool)

(assert (=> b!786366 m!728273))

(assert (=> b!786356 m!728237))

(assert (=> b!786356 m!728237))

(assert (=> b!786356 m!728261))

(declare-fun m!728275 () Bool)

(assert (=> b!786361 m!728275))

(declare-fun m!728277 () Bool)

(assert (=> b!786362 m!728277))

(declare-fun m!728279 () Bool)

(assert (=> b!786362 m!728279))

(assert (=> b!786354 m!728237))

(assert (=> b!786354 m!728237))

(declare-fun m!728281 () Bool)

(assert (=> b!786354 m!728281))

(declare-fun m!728283 () Bool)

(assert (=> b!786359 m!728283))

(declare-fun m!728285 () Bool)

(assert (=> b!786367 m!728285))

(assert (=> b!786353 m!728237))

(assert (=> b!786353 m!728237))

(declare-fun m!728287 () Bool)

(assert (=> b!786353 m!728287))

(check-sat (not b!786360) (not b!786356) (not b!786359) (not b!786362) (not b!786347) (not b!786366) (not b!786368) (not b!786350) (not b!786367) (not b!786353) (not b!786354) (not b!786358) (not start!67764) (not b!786351) (not b!786365))
(check-sat)
