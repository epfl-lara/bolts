; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46626 () Bool)

(assert start!46626)

(declare-fun b!514531 () Bool)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32955 0))(
  ( (array!32956 (arr!15844 (Array (_ BitVec 32) (_ BitVec 64))) (size!16208 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32955)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!300463 () Bool)

(declare-datatypes ((SeekEntryResult!4318 0))(
  ( (MissingZero!4318 (index!19460 (_ BitVec 32))) (Found!4318 (index!19461 (_ BitVec 32))) (Intermediate!4318 (undefined!5130 Bool) (index!19462 (_ BitVec 32)) (x!48454 (_ BitVec 32))) (Undefined!4318) (MissingVacant!4318 (index!19463 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32955 (_ BitVec 32)) SeekEntryResult!4318)

(assert (=> b!514531 (= e!300463 (= (seekEntryOrOpen!0 (select (arr!15844 a!3235) j!176) a!3235 mask!3524) (Found!4318 j!176)))))

(declare-fun b!514532 () Bool)

(declare-fun res!314435 () Bool)

(declare-fun e!300464 () Bool)

(assert (=> b!514532 (=> (not res!314435) (not e!300464))))

(declare-datatypes ((List!10055 0))(
  ( (Nil!10052) (Cons!10051 (h!10946 (_ BitVec 64)) (t!16291 List!10055)) )
))
(declare-fun arrayNoDuplicates!0 (array!32955 (_ BitVec 32) List!10055) Bool)

(assert (=> b!514532 (= res!314435 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10052))))

(declare-fun res!314437 () Bool)

(declare-fun e!300466 () Bool)

(assert (=> start!46626 (=> (not res!314437) (not e!300466))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46626 (= res!314437 (validMask!0 mask!3524))))

(assert (=> start!46626 e!300466))

(assert (=> start!46626 true))

(declare-fun array_inv!11618 (array!32955) Bool)

(assert (=> start!46626 (array_inv!11618 a!3235)))

(declare-fun b!514533 () Bool)

(declare-fun res!314434 () Bool)

(assert (=> b!514533 (=> (not res!314434) (not e!300464))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32955 (_ BitVec 32)) Bool)

(assert (=> b!514533 (= res!314434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!514534 () Bool)

(declare-fun e!300462 () Bool)

(declare-fun lt!235605 () SeekEntryResult!4318)

(assert (=> b!514534 (= e!300462 (and (bvsge (index!19462 lt!235605) #b00000000000000000000000000000000) (bvslt (index!19462 lt!235605) (size!16208 a!3235))))))

(assert (=> b!514534 (and (bvslt (x!48454 lt!235605) #b01111111111111111111111111111110) (or (= (select (arr!15844 a!3235) (index!19462 lt!235605)) (select (arr!15844 a!3235) j!176)) (= (select (arr!15844 a!3235) (index!19462 lt!235605)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15844 a!3235) (index!19462 lt!235605)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!514535 () Bool)

(declare-fun res!314429 () Bool)

(assert (=> b!514535 (=> res!314429 e!300462)))

(get-info :version)

(assert (=> b!514535 (= res!314429 (or (undefined!5130 lt!235605) (not ((_ is Intermediate!4318) lt!235605))))))

(declare-fun b!514536 () Bool)

(assert (=> b!514536 (= e!300466 e!300464)))

(declare-fun res!314432 () Bool)

(assert (=> b!514536 (=> (not res!314432) (not e!300464))))

(declare-fun lt!235606 () SeekEntryResult!4318)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!514536 (= res!314432 (or (= lt!235606 (MissingZero!4318 i!1204)) (= lt!235606 (MissingVacant!4318 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!514536 (= lt!235606 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!514537 () Bool)

(declare-fun res!314438 () Bool)

(assert (=> b!514537 (=> (not res!314438) (not e!300466))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!514537 (= res!314438 (validKeyInArray!0 (select (arr!15844 a!3235) j!176)))))

(declare-fun b!514538 () Bool)

(declare-fun res!314433 () Bool)

(assert (=> b!514538 (=> (not res!314433) (not e!300466))))

(assert (=> b!514538 (= res!314433 (and (= (size!16208 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16208 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16208 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!514539 () Bool)

(assert (=> b!514539 (= e!300464 (not e!300462))))

(declare-fun res!314436 () Bool)

(assert (=> b!514539 (=> res!314436 e!300462)))

(declare-fun lt!235603 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32955 (_ BitVec 32)) SeekEntryResult!4318)

(assert (=> b!514539 (= res!314436 (= lt!235605 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235603 (select (store (arr!15844 a!3235) i!1204 k0!2280) j!176) (array!32956 (store (arr!15844 a!3235) i!1204 k0!2280) (size!16208 a!3235)) mask!3524)))))

(declare-fun lt!235604 () (_ BitVec 32))

(assert (=> b!514539 (= lt!235605 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235604 (select (arr!15844 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514539 (= lt!235603 (toIndex!0 (select (store (arr!15844 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!514539 (= lt!235604 (toIndex!0 (select (arr!15844 a!3235) j!176) mask!3524))))

(assert (=> b!514539 e!300463))

(declare-fun res!314430 () Bool)

(assert (=> b!514539 (=> (not res!314430) (not e!300463))))

(assert (=> b!514539 (= res!314430 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15886 0))(
  ( (Unit!15887) )
))
(declare-fun lt!235607 () Unit!15886)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32955 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15886)

(assert (=> b!514539 (= lt!235607 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!514540 () Bool)

(declare-fun res!314431 () Bool)

(assert (=> b!514540 (=> (not res!314431) (not e!300466))))

(declare-fun arrayContainsKey!0 (array!32955 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!514540 (= res!314431 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!514541 () Bool)

(declare-fun res!314428 () Bool)

(assert (=> b!514541 (=> (not res!314428) (not e!300466))))

(assert (=> b!514541 (= res!314428 (validKeyInArray!0 k0!2280))))

(assert (= (and start!46626 res!314437) b!514538))

(assert (= (and b!514538 res!314433) b!514537))

(assert (= (and b!514537 res!314438) b!514541))

(assert (= (and b!514541 res!314428) b!514540))

(assert (= (and b!514540 res!314431) b!514536))

(assert (= (and b!514536 res!314432) b!514533))

(assert (= (and b!514533 res!314434) b!514532))

(assert (= (and b!514532 res!314435) b!514539))

(assert (= (and b!514539 res!314430) b!514531))

(assert (= (and b!514539 (not res!314436)) b!514535))

(assert (= (and b!514535 (not res!314429)) b!514534))

(declare-fun m!495927 () Bool)

(assert (=> b!514540 m!495927))

(declare-fun m!495929 () Bool)

(assert (=> b!514534 m!495929))

(declare-fun m!495931 () Bool)

(assert (=> b!514534 m!495931))

(declare-fun m!495933 () Bool)

(assert (=> start!46626 m!495933))

(declare-fun m!495935 () Bool)

(assert (=> start!46626 m!495935))

(assert (=> b!514537 m!495931))

(assert (=> b!514537 m!495931))

(declare-fun m!495937 () Bool)

(assert (=> b!514537 m!495937))

(declare-fun m!495939 () Bool)

(assert (=> b!514536 m!495939))

(declare-fun m!495941 () Bool)

(assert (=> b!514541 m!495941))

(declare-fun m!495943 () Bool)

(assert (=> b!514533 m!495943))

(declare-fun m!495945 () Bool)

(assert (=> b!514539 m!495945))

(declare-fun m!495947 () Bool)

(assert (=> b!514539 m!495947))

(declare-fun m!495949 () Bool)

(assert (=> b!514539 m!495949))

(assert (=> b!514539 m!495931))

(declare-fun m!495951 () Bool)

(assert (=> b!514539 m!495951))

(assert (=> b!514539 m!495931))

(declare-fun m!495953 () Bool)

(assert (=> b!514539 m!495953))

(assert (=> b!514539 m!495949))

(declare-fun m!495955 () Bool)

(assert (=> b!514539 m!495955))

(assert (=> b!514539 m!495931))

(declare-fun m!495957 () Bool)

(assert (=> b!514539 m!495957))

(assert (=> b!514539 m!495949))

(declare-fun m!495959 () Bool)

(assert (=> b!514539 m!495959))

(declare-fun m!495961 () Bool)

(assert (=> b!514532 m!495961))

(assert (=> b!514531 m!495931))

(assert (=> b!514531 m!495931))

(declare-fun m!495963 () Bool)

(assert (=> b!514531 m!495963))

(check-sat (not b!514540) (not b!514541) (not b!514531) (not b!514532) (not b!514533) (not b!514539) (not start!46626) (not b!514536) (not b!514537))
(check-sat)
(get-model)

(declare-fun d!79327 () Bool)

(declare-fun lt!235631 () SeekEntryResult!4318)

(assert (=> d!79327 (and (or ((_ is Undefined!4318) lt!235631) (not ((_ is Found!4318) lt!235631)) (and (bvsge (index!19461 lt!235631) #b00000000000000000000000000000000) (bvslt (index!19461 lt!235631) (size!16208 a!3235)))) (or ((_ is Undefined!4318) lt!235631) ((_ is Found!4318) lt!235631) (not ((_ is MissingZero!4318) lt!235631)) (and (bvsge (index!19460 lt!235631) #b00000000000000000000000000000000) (bvslt (index!19460 lt!235631) (size!16208 a!3235)))) (or ((_ is Undefined!4318) lt!235631) ((_ is Found!4318) lt!235631) ((_ is MissingZero!4318) lt!235631) (not ((_ is MissingVacant!4318) lt!235631)) (and (bvsge (index!19463 lt!235631) #b00000000000000000000000000000000) (bvslt (index!19463 lt!235631) (size!16208 a!3235)))) (or ((_ is Undefined!4318) lt!235631) (ite ((_ is Found!4318) lt!235631) (= (select (arr!15844 a!3235) (index!19461 lt!235631)) (select (arr!15844 a!3235) j!176)) (ite ((_ is MissingZero!4318) lt!235631) (= (select (arr!15844 a!3235) (index!19460 lt!235631)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4318) lt!235631) (= (select (arr!15844 a!3235) (index!19463 lt!235631)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!300490 () SeekEntryResult!4318)

(assert (=> d!79327 (= lt!235631 e!300490)))

(declare-fun c!60347 () Bool)

(declare-fun lt!235629 () SeekEntryResult!4318)

(assert (=> d!79327 (= c!60347 (and ((_ is Intermediate!4318) lt!235629) (undefined!5130 lt!235629)))))

(assert (=> d!79327 (= lt!235629 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15844 a!3235) j!176) mask!3524) (select (arr!15844 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79327 (validMask!0 mask!3524)))

(assert (=> d!79327 (= (seekEntryOrOpen!0 (select (arr!15844 a!3235) j!176) a!3235 mask!3524) lt!235631)))

(declare-fun e!300489 () SeekEntryResult!4318)

(declare-fun b!514587 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32955 (_ BitVec 32)) SeekEntryResult!4318)

(assert (=> b!514587 (= e!300489 (seekKeyOrZeroReturnVacant!0 (x!48454 lt!235629) (index!19462 lt!235629) (index!19462 lt!235629) (select (arr!15844 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!514588 () Bool)

(declare-fun e!300488 () SeekEntryResult!4318)

(assert (=> b!514588 (= e!300490 e!300488)))

(declare-fun lt!235630 () (_ BitVec 64))

(assert (=> b!514588 (= lt!235630 (select (arr!15844 a!3235) (index!19462 lt!235629)))))

(declare-fun c!60345 () Bool)

(assert (=> b!514588 (= c!60345 (= lt!235630 (select (arr!15844 a!3235) j!176)))))

(declare-fun b!514589 () Bool)

(declare-fun c!60346 () Bool)

(assert (=> b!514589 (= c!60346 (= lt!235630 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514589 (= e!300488 e!300489)))

(declare-fun b!514590 () Bool)

(assert (=> b!514590 (= e!300488 (Found!4318 (index!19462 lt!235629)))))

(declare-fun b!514591 () Bool)

(assert (=> b!514591 (= e!300489 (MissingZero!4318 (index!19462 lt!235629)))))

(declare-fun b!514592 () Bool)

(assert (=> b!514592 (= e!300490 Undefined!4318)))

(assert (= (and d!79327 c!60347) b!514592))

(assert (= (and d!79327 (not c!60347)) b!514588))

(assert (= (and b!514588 c!60345) b!514590))

(assert (= (and b!514588 (not c!60345)) b!514589))

(assert (= (and b!514589 c!60346) b!514591))

(assert (= (and b!514589 (not c!60346)) b!514587))

(assert (=> d!79327 m!495951))

(assert (=> d!79327 m!495931))

(declare-fun m!496003 () Bool)

(assert (=> d!79327 m!496003))

(declare-fun m!496005 () Bool)

(assert (=> d!79327 m!496005))

(declare-fun m!496007 () Bool)

(assert (=> d!79327 m!496007))

(assert (=> d!79327 m!495931))

(assert (=> d!79327 m!495951))

(declare-fun m!496009 () Bool)

(assert (=> d!79327 m!496009))

(assert (=> d!79327 m!495933))

(assert (=> b!514587 m!495931))

(declare-fun m!496011 () Bool)

(assert (=> b!514587 m!496011))

(declare-fun m!496013 () Bool)

(assert (=> b!514588 m!496013))

(assert (=> b!514531 d!79327))

(declare-fun d!79329 () Bool)

(assert (=> d!79329 (= (validKeyInArray!0 (select (arr!15844 a!3235) j!176)) (and (not (= (select (arr!15844 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15844 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!514537 d!79329))

(declare-fun d!79331 () Bool)

(declare-fun res!314478 () Bool)

(declare-fun e!300499 () Bool)

(assert (=> d!79331 (=> res!314478 e!300499)))

(assert (=> d!79331 (= res!314478 (bvsge #b00000000000000000000000000000000 (size!16208 a!3235)))))

(assert (=> d!79331 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10052) e!300499)))

(declare-fun b!514603 () Bool)

(declare-fun e!300502 () Bool)

(declare-fun contains!2744 (List!10055 (_ BitVec 64)) Bool)

(assert (=> b!514603 (= e!300502 (contains!2744 Nil!10052 (select (arr!15844 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!514604 () Bool)

(declare-fun e!300501 () Bool)

(declare-fun call!31619 () Bool)

(assert (=> b!514604 (= e!300501 call!31619)))

(declare-fun b!514605 () Bool)

(declare-fun e!300500 () Bool)

(assert (=> b!514605 (= e!300499 e!300500)))

(declare-fun res!314480 () Bool)

(assert (=> b!514605 (=> (not res!314480) (not e!300500))))

(assert (=> b!514605 (= res!314480 (not e!300502))))

(declare-fun res!314479 () Bool)

(assert (=> b!514605 (=> (not res!314479) (not e!300502))))

(assert (=> b!514605 (= res!314479 (validKeyInArray!0 (select (arr!15844 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!514606 () Bool)

(assert (=> b!514606 (= e!300500 e!300501)))

(declare-fun c!60350 () Bool)

(assert (=> b!514606 (= c!60350 (validKeyInArray!0 (select (arr!15844 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!514607 () Bool)

(assert (=> b!514607 (= e!300501 call!31619)))

(declare-fun bm!31616 () Bool)

(assert (=> bm!31616 (= call!31619 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60350 (Cons!10051 (select (arr!15844 a!3235) #b00000000000000000000000000000000) Nil!10052) Nil!10052)))))

(assert (= (and d!79331 (not res!314478)) b!514605))

(assert (= (and b!514605 res!314479) b!514603))

(assert (= (and b!514605 res!314480) b!514606))

(assert (= (and b!514606 c!60350) b!514607))

(assert (= (and b!514606 (not c!60350)) b!514604))

(assert (= (or b!514607 b!514604) bm!31616))

(declare-fun m!496015 () Bool)

(assert (=> b!514603 m!496015))

(assert (=> b!514603 m!496015))

(declare-fun m!496017 () Bool)

(assert (=> b!514603 m!496017))

(assert (=> b!514605 m!496015))

(assert (=> b!514605 m!496015))

(declare-fun m!496019 () Bool)

(assert (=> b!514605 m!496019))

(assert (=> b!514606 m!496015))

(assert (=> b!514606 m!496015))

(assert (=> b!514606 m!496019))

(assert (=> bm!31616 m!496015))

(declare-fun m!496021 () Bool)

(assert (=> bm!31616 m!496021))

(assert (=> b!514532 d!79331))

(declare-fun b!514616 () Bool)

(declare-fun e!300509 () Bool)

(declare-fun e!300511 () Bool)

(assert (=> b!514616 (= e!300509 e!300511)))

(declare-fun c!60353 () Bool)

(assert (=> b!514616 (= c!60353 (validKeyInArray!0 (select (arr!15844 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31619 () Bool)

(declare-fun call!31622 () Bool)

(assert (=> bm!31619 (= call!31622 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!514617 () Bool)

(declare-fun e!300510 () Bool)

(assert (=> b!514617 (= e!300511 e!300510)))

(declare-fun lt!235639 () (_ BitVec 64))

(assert (=> b!514617 (= lt!235639 (select (arr!15844 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!235638 () Unit!15886)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32955 (_ BitVec 64) (_ BitVec 32)) Unit!15886)

(assert (=> b!514617 (= lt!235638 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235639 #b00000000000000000000000000000000))))

(assert (=> b!514617 (arrayContainsKey!0 a!3235 lt!235639 #b00000000000000000000000000000000)))

(declare-fun lt!235640 () Unit!15886)

(assert (=> b!514617 (= lt!235640 lt!235638)))

(declare-fun res!314486 () Bool)

(assert (=> b!514617 (= res!314486 (= (seekEntryOrOpen!0 (select (arr!15844 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4318 #b00000000000000000000000000000000)))))

(assert (=> b!514617 (=> (not res!314486) (not e!300510))))

(declare-fun b!514618 () Bool)

(assert (=> b!514618 (= e!300511 call!31622)))

(declare-fun d!79335 () Bool)

(declare-fun res!314485 () Bool)

(assert (=> d!79335 (=> res!314485 e!300509)))

(assert (=> d!79335 (= res!314485 (bvsge #b00000000000000000000000000000000 (size!16208 a!3235)))))

(assert (=> d!79335 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!300509)))

(declare-fun b!514619 () Bool)

(assert (=> b!514619 (= e!300510 call!31622)))

(assert (= (and d!79335 (not res!314485)) b!514616))

(assert (= (and b!514616 c!60353) b!514617))

(assert (= (and b!514616 (not c!60353)) b!514618))

(assert (= (and b!514617 res!314486) b!514619))

(assert (= (or b!514619 b!514618) bm!31619))

(assert (=> b!514616 m!496015))

(assert (=> b!514616 m!496015))

(assert (=> b!514616 m!496019))

(declare-fun m!496023 () Bool)

(assert (=> bm!31619 m!496023))

(assert (=> b!514617 m!496015))

(declare-fun m!496025 () Bool)

(assert (=> b!514617 m!496025))

(declare-fun m!496027 () Bool)

(assert (=> b!514617 m!496027))

(assert (=> b!514617 m!496015))

(declare-fun m!496029 () Bool)

(assert (=> b!514617 m!496029))

(assert (=> b!514533 d!79335))

(declare-fun b!514695 () Bool)

(declare-fun e!300561 () SeekEntryResult!4318)

(assert (=> b!514695 (= e!300561 (Intermediate!4318 true lt!235603 #b00000000000000000000000000000000))))

(declare-fun b!514696 () Bool)

(declare-fun e!300564 () SeekEntryResult!4318)

(assert (=> b!514696 (= e!300564 (Intermediate!4318 false lt!235603 #b00000000000000000000000000000000))))

(declare-fun lt!235666 () SeekEntryResult!4318)

(declare-fun b!514697 () Bool)

(assert (=> b!514697 (and (bvsge (index!19462 lt!235666) #b00000000000000000000000000000000) (bvslt (index!19462 lt!235666) (size!16208 (array!32956 (store (arr!15844 a!3235) i!1204 k0!2280) (size!16208 a!3235)))))))

(declare-fun res!314515 () Bool)

(assert (=> b!514697 (= res!314515 (= (select (arr!15844 (array!32956 (store (arr!15844 a!3235) i!1204 k0!2280) (size!16208 a!3235))) (index!19462 lt!235666)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!300563 () Bool)

(assert (=> b!514697 (=> res!314515 e!300563)))

(declare-fun b!514698 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514698 (= e!300564 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235603 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15844 a!3235) i!1204 k0!2280) j!176) (array!32956 (store (arr!15844 a!3235) i!1204 k0!2280) (size!16208 a!3235)) mask!3524))))

(declare-fun b!514699 () Bool)

(assert (=> b!514699 (= e!300561 e!300564)))

(declare-fun c!60378 () Bool)

(declare-fun lt!235667 () (_ BitVec 64))

(assert (=> b!514699 (= c!60378 (or (= lt!235667 (select (store (arr!15844 a!3235) i!1204 k0!2280) j!176)) (= (bvadd lt!235667 lt!235667) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!514700 () Bool)

(declare-fun e!300565 () Bool)

(assert (=> b!514700 (= e!300565 (bvsge (x!48454 lt!235666) #b01111111111111111111111111111110))))

(declare-fun b!514702 () Bool)

(assert (=> b!514702 (and (bvsge (index!19462 lt!235666) #b00000000000000000000000000000000) (bvslt (index!19462 lt!235666) (size!16208 (array!32956 (store (arr!15844 a!3235) i!1204 k0!2280) (size!16208 a!3235)))))))

(assert (=> b!514702 (= e!300563 (= (select (arr!15844 (array!32956 (store (arr!15844 a!3235) i!1204 k0!2280) (size!16208 a!3235))) (index!19462 lt!235666)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!514703 () Bool)

(declare-fun e!300562 () Bool)

(assert (=> b!514703 (= e!300565 e!300562)))

(declare-fun res!314517 () Bool)

(assert (=> b!514703 (= res!314517 (and ((_ is Intermediate!4318) lt!235666) (not (undefined!5130 lt!235666)) (bvslt (x!48454 lt!235666) #b01111111111111111111111111111110) (bvsge (x!48454 lt!235666) #b00000000000000000000000000000000) (bvsge (x!48454 lt!235666) #b00000000000000000000000000000000)))))

(assert (=> b!514703 (=> (not res!314517) (not e!300562))))

(declare-fun b!514701 () Bool)

(assert (=> b!514701 (and (bvsge (index!19462 lt!235666) #b00000000000000000000000000000000) (bvslt (index!19462 lt!235666) (size!16208 (array!32956 (store (arr!15844 a!3235) i!1204 k0!2280) (size!16208 a!3235)))))))

(declare-fun res!314516 () Bool)

(assert (=> b!514701 (= res!314516 (= (select (arr!15844 (array!32956 (store (arr!15844 a!3235) i!1204 k0!2280) (size!16208 a!3235))) (index!19462 lt!235666)) (select (store (arr!15844 a!3235) i!1204 k0!2280) j!176)))))

(assert (=> b!514701 (=> res!314516 e!300563)))

(assert (=> b!514701 (= e!300562 e!300563)))

(declare-fun d!79339 () Bool)

(assert (=> d!79339 e!300565))

(declare-fun c!60379 () Bool)

(assert (=> d!79339 (= c!60379 (and ((_ is Intermediate!4318) lt!235666) (undefined!5130 lt!235666)))))

(assert (=> d!79339 (= lt!235666 e!300561)))

(declare-fun c!60380 () Bool)

(assert (=> d!79339 (= c!60380 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79339 (= lt!235667 (select (arr!15844 (array!32956 (store (arr!15844 a!3235) i!1204 k0!2280) (size!16208 a!3235))) lt!235603))))

(assert (=> d!79339 (validMask!0 mask!3524)))

(assert (=> d!79339 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235603 (select (store (arr!15844 a!3235) i!1204 k0!2280) j!176) (array!32956 (store (arr!15844 a!3235) i!1204 k0!2280) (size!16208 a!3235)) mask!3524) lt!235666)))

(assert (= (and d!79339 c!60380) b!514695))

(assert (= (and d!79339 (not c!60380)) b!514699))

(assert (= (and b!514699 c!60378) b!514696))

(assert (= (and b!514699 (not c!60378)) b!514698))

(assert (= (and d!79339 c!60379) b!514700))

(assert (= (and d!79339 (not c!60379)) b!514703))

(assert (= (and b!514703 res!314517) b!514701))

(assert (= (and b!514701 (not res!314516)) b!514697))

(assert (= (and b!514697 (not res!314515)) b!514702))

(declare-fun m!496079 () Bool)

(assert (=> d!79339 m!496079))

(assert (=> d!79339 m!495933))

(declare-fun m!496081 () Bool)

(assert (=> b!514698 m!496081))

(assert (=> b!514698 m!496081))

(assert (=> b!514698 m!495949))

(declare-fun m!496083 () Bool)

(assert (=> b!514698 m!496083))

(declare-fun m!496085 () Bool)

(assert (=> b!514697 m!496085))

(assert (=> b!514701 m!496085))

(assert (=> b!514702 m!496085))

(assert (=> b!514539 d!79339))

(declare-fun d!79353 () Bool)

(declare-fun lt!235685 () (_ BitVec 32))

(declare-fun lt!235684 () (_ BitVec 32))

(assert (=> d!79353 (= lt!235685 (bvmul (bvxor lt!235684 (bvlshr lt!235684 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79353 (= lt!235684 ((_ extract 31 0) (bvand (bvxor (select (arr!15844 a!3235) j!176) (bvlshr (select (arr!15844 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79353 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314518 (let ((h!10949 ((_ extract 31 0) (bvand (bvxor (select (arr!15844 a!3235) j!176) (bvlshr (select (arr!15844 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48458 (bvmul (bvxor h!10949 (bvlshr h!10949 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48458 (bvlshr x!48458 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314518 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314518 #b00000000000000000000000000000000))))))

(assert (=> d!79353 (= (toIndex!0 (select (arr!15844 a!3235) j!176) mask!3524) (bvand (bvxor lt!235685 (bvlshr lt!235685 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!514539 d!79353))

(declare-fun b!514716 () Bool)

(declare-fun e!300572 () Bool)

(declare-fun e!300574 () Bool)

(assert (=> b!514716 (= e!300572 e!300574)))

(declare-fun c!60387 () Bool)

(assert (=> b!514716 (= c!60387 (validKeyInArray!0 (select (arr!15844 a!3235) j!176)))))

(declare-fun call!31629 () Bool)

(declare-fun bm!31626 () Bool)

(assert (=> bm!31626 (= call!31629 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!514717 () Bool)

(declare-fun e!300573 () Bool)

(assert (=> b!514717 (= e!300574 e!300573)))

(declare-fun lt!235687 () (_ BitVec 64))

(assert (=> b!514717 (= lt!235687 (select (arr!15844 a!3235) j!176))))

(declare-fun lt!235686 () Unit!15886)

(assert (=> b!514717 (= lt!235686 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235687 j!176))))

(assert (=> b!514717 (arrayContainsKey!0 a!3235 lt!235687 #b00000000000000000000000000000000)))

(declare-fun lt!235688 () Unit!15886)

(assert (=> b!514717 (= lt!235688 lt!235686)))

(declare-fun res!314520 () Bool)

(assert (=> b!514717 (= res!314520 (= (seekEntryOrOpen!0 (select (arr!15844 a!3235) j!176) a!3235 mask!3524) (Found!4318 j!176)))))

(assert (=> b!514717 (=> (not res!314520) (not e!300573))))

(declare-fun b!514718 () Bool)

(assert (=> b!514718 (= e!300574 call!31629)))

(declare-fun d!79357 () Bool)

(declare-fun res!314519 () Bool)

(assert (=> d!79357 (=> res!314519 e!300572)))

(assert (=> d!79357 (= res!314519 (bvsge j!176 (size!16208 a!3235)))))

(assert (=> d!79357 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!300572)))

(declare-fun b!514719 () Bool)

(assert (=> b!514719 (= e!300573 call!31629)))

(assert (= (and d!79357 (not res!314519)) b!514716))

(assert (= (and b!514716 c!60387) b!514717))

(assert (= (and b!514716 (not c!60387)) b!514718))

(assert (= (and b!514717 res!314520) b!514719))

(assert (= (or b!514719 b!514718) bm!31626))

(assert (=> b!514716 m!495931))

(assert (=> b!514716 m!495931))

(assert (=> b!514716 m!495937))

(declare-fun m!496087 () Bool)

(assert (=> bm!31626 m!496087))

(assert (=> b!514717 m!495931))

(declare-fun m!496089 () Bool)

(assert (=> b!514717 m!496089))

(declare-fun m!496091 () Bool)

(assert (=> b!514717 m!496091))

(assert (=> b!514717 m!495931))

(assert (=> b!514717 m!495963))

(assert (=> b!514539 d!79357))

(declare-fun b!514726 () Bool)

(declare-fun e!300578 () SeekEntryResult!4318)

(assert (=> b!514726 (= e!300578 (Intermediate!4318 true lt!235604 #b00000000000000000000000000000000))))

(declare-fun b!514727 () Bool)

(declare-fun e!300581 () SeekEntryResult!4318)

(assert (=> b!514727 (= e!300581 (Intermediate!4318 false lt!235604 #b00000000000000000000000000000000))))

(declare-fun b!514728 () Bool)

(declare-fun lt!235692 () SeekEntryResult!4318)

(assert (=> b!514728 (and (bvsge (index!19462 lt!235692) #b00000000000000000000000000000000) (bvslt (index!19462 lt!235692) (size!16208 a!3235)))))

(declare-fun res!314521 () Bool)

(assert (=> b!514728 (= res!314521 (= (select (arr!15844 a!3235) (index!19462 lt!235692)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!300580 () Bool)

(assert (=> b!514728 (=> res!314521 e!300580)))

(declare-fun b!514729 () Bool)

(assert (=> b!514729 (= e!300581 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235604 #b00000000000000000000000000000000 mask!3524) (select (arr!15844 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!514730 () Bool)

(assert (=> b!514730 (= e!300578 e!300581)))

(declare-fun c!60391 () Bool)

(declare-fun lt!235693 () (_ BitVec 64))

(assert (=> b!514730 (= c!60391 (or (= lt!235693 (select (arr!15844 a!3235) j!176)) (= (bvadd lt!235693 lt!235693) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!514731 () Bool)

(declare-fun e!300582 () Bool)

(assert (=> b!514731 (= e!300582 (bvsge (x!48454 lt!235692) #b01111111111111111111111111111110))))

(declare-fun b!514733 () Bool)

(assert (=> b!514733 (and (bvsge (index!19462 lt!235692) #b00000000000000000000000000000000) (bvslt (index!19462 lt!235692) (size!16208 a!3235)))))

(assert (=> b!514733 (= e!300580 (= (select (arr!15844 a!3235) (index!19462 lt!235692)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!514734 () Bool)

(declare-fun e!300579 () Bool)

(assert (=> b!514734 (= e!300582 e!300579)))

(declare-fun res!314523 () Bool)

(assert (=> b!514734 (= res!314523 (and ((_ is Intermediate!4318) lt!235692) (not (undefined!5130 lt!235692)) (bvslt (x!48454 lt!235692) #b01111111111111111111111111111110) (bvsge (x!48454 lt!235692) #b00000000000000000000000000000000) (bvsge (x!48454 lt!235692) #b00000000000000000000000000000000)))))

(assert (=> b!514734 (=> (not res!314523) (not e!300579))))

(declare-fun b!514732 () Bool)

(assert (=> b!514732 (and (bvsge (index!19462 lt!235692) #b00000000000000000000000000000000) (bvslt (index!19462 lt!235692) (size!16208 a!3235)))))

(declare-fun res!314522 () Bool)

(assert (=> b!514732 (= res!314522 (= (select (arr!15844 a!3235) (index!19462 lt!235692)) (select (arr!15844 a!3235) j!176)))))

(assert (=> b!514732 (=> res!314522 e!300580)))

(assert (=> b!514732 (= e!300579 e!300580)))

(declare-fun d!79359 () Bool)

(assert (=> d!79359 e!300582))

(declare-fun c!60392 () Bool)

(assert (=> d!79359 (= c!60392 (and ((_ is Intermediate!4318) lt!235692) (undefined!5130 lt!235692)))))

(assert (=> d!79359 (= lt!235692 e!300578)))

(declare-fun c!60393 () Bool)

(assert (=> d!79359 (= c!60393 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79359 (= lt!235693 (select (arr!15844 a!3235) lt!235604))))

(assert (=> d!79359 (validMask!0 mask!3524)))

(assert (=> d!79359 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235604 (select (arr!15844 a!3235) j!176) a!3235 mask!3524) lt!235692)))

(assert (= (and d!79359 c!60393) b!514726))

(assert (= (and d!79359 (not c!60393)) b!514730))

(assert (= (and b!514730 c!60391) b!514727))

(assert (= (and b!514730 (not c!60391)) b!514729))

(assert (= (and d!79359 c!60392) b!514731))

(assert (= (and d!79359 (not c!60392)) b!514734))

(assert (= (and b!514734 res!314523) b!514732))

(assert (= (and b!514732 (not res!314522)) b!514728))

(assert (= (and b!514728 (not res!314521)) b!514733))

(declare-fun m!496107 () Bool)

(assert (=> d!79359 m!496107))

(assert (=> d!79359 m!495933))

(declare-fun m!496109 () Bool)

(assert (=> b!514729 m!496109))

(assert (=> b!514729 m!496109))

(assert (=> b!514729 m!495931))

(declare-fun m!496111 () Bool)

(assert (=> b!514729 m!496111))

(declare-fun m!496113 () Bool)

(assert (=> b!514728 m!496113))

(assert (=> b!514732 m!496113))

(assert (=> b!514733 m!496113))

(assert (=> b!514539 d!79359))

(declare-fun d!79363 () Bool)

(assert (=> d!79363 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!235702 () Unit!15886)

(declare-fun choose!38 (array!32955 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15886)

(assert (=> d!79363 (= lt!235702 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79363 (validMask!0 mask!3524)))

(assert (=> d!79363 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!235702)))

(declare-fun bs!16269 () Bool)

(assert (= bs!16269 d!79363))

(assert (=> bs!16269 m!495953))

(declare-fun m!496115 () Bool)

(assert (=> bs!16269 m!496115))

(assert (=> bs!16269 m!495933))

(assert (=> b!514539 d!79363))

(declare-fun d!79367 () Bool)

(declare-fun lt!235707 () (_ BitVec 32))

(declare-fun lt!235706 () (_ BitVec 32))

(assert (=> d!79367 (= lt!235707 (bvmul (bvxor lt!235706 (bvlshr lt!235706 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79367 (= lt!235706 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15844 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15844 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79367 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314518 (let ((h!10949 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15844 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15844 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48458 (bvmul (bvxor h!10949 (bvlshr h!10949 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48458 (bvlshr x!48458 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314518 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314518 #b00000000000000000000000000000000))))))

(assert (=> d!79367 (= (toIndex!0 (select (store (arr!15844 a!3235) i!1204 k0!2280) j!176) mask!3524) (bvand (bvxor lt!235707 (bvlshr lt!235707 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!514539 d!79367))

(declare-fun d!79369 () Bool)

(declare-fun res!314531 () Bool)

(declare-fun e!300590 () Bool)

(assert (=> d!79369 (=> res!314531 e!300590)))

(assert (=> d!79369 (= res!314531 (= (select (arr!15844 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!79369 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!300590)))

(declare-fun b!514743 () Bool)

(declare-fun e!300591 () Bool)

(assert (=> b!514743 (= e!300590 e!300591)))

(declare-fun res!314532 () Bool)

(assert (=> b!514743 (=> (not res!314532) (not e!300591))))

(assert (=> b!514743 (= res!314532 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16208 a!3235)))))

(declare-fun b!514744 () Bool)

(assert (=> b!514744 (= e!300591 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79369 (not res!314531)) b!514743))

(assert (= (and b!514743 res!314532) b!514744))

(assert (=> d!79369 m!496015))

(declare-fun m!496123 () Bool)

(assert (=> b!514744 m!496123))

(assert (=> b!514540 d!79369))

(declare-fun d!79373 () Bool)

(assert (=> d!79373 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!514541 d!79373))

(declare-fun d!79375 () Bool)

(assert (=> d!79375 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46626 d!79375))

(declare-fun d!79379 () Bool)

(assert (=> d!79379 (= (array_inv!11618 a!3235) (bvsge (size!16208 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46626 d!79379))

(declare-fun d!79383 () Bool)

(declare-fun lt!235718 () SeekEntryResult!4318)

(assert (=> d!79383 (and (or ((_ is Undefined!4318) lt!235718) (not ((_ is Found!4318) lt!235718)) (and (bvsge (index!19461 lt!235718) #b00000000000000000000000000000000) (bvslt (index!19461 lt!235718) (size!16208 a!3235)))) (or ((_ is Undefined!4318) lt!235718) ((_ is Found!4318) lt!235718) (not ((_ is MissingZero!4318) lt!235718)) (and (bvsge (index!19460 lt!235718) #b00000000000000000000000000000000) (bvslt (index!19460 lt!235718) (size!16208 a!3235)))) (or ((_ is Undefined!4318) lt!235718) ((_ is Found!4318) lt!235718) ((_ is MissingZero!4318) lt!235718) (not ((_ is MissingVacant!4318) lt!235718)) (and (bvsge (index!19463 lt!235718) #b00000000000000000000000000000000) (bvslt (index!19463 lt!235718) (size!16208 a!3235)))) (or ((_ is Undefined!4318) lt!235718) (ite ((_ is Found!4318) lt!235718) (= (select (arr!15844 a!3235) (index!19461 lt!235718)) k0!2280) (ite ((_ is MissingZero!4318) lt!235718) (= (select (arr!15844 a!3235) (index!19460 lt!235718)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4318) lt!235718) (= (select (arr!15844 a!3235) (index!19463 lt!235718)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!300614 () SeekEntryResult!4318)

(assert (=> d!79383 (= lt!235718 e!300614)))

(declare-fun c!60409 () Bool)

(declare-fun lt!235716 () SeekEntryResult!4318)

(assert (=> d!79383 (= c!60409 (and ((_ is Intermediate!4318) lt!235716) (undefined!5130 lt!235716)))))

(assert (=> d!79383 (= lt!235716 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!79383 (validMask!0 mask!3524)))

(assert (=> d!79383 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!235718)))

(declare-fun e!300613 () SeekEntryResult!4318)

(declare-fun b!514781 () Bool)

(assert (=> b!514781 (= e!300613 (seekKeyOrZeroReturnVacant!0 (x!48454 lt!235716) (index!19462 lt!235716) (index!19462 lt!235716) k0!2280 a!3235 mask!3524))))

(declare-fun b!514782 () Bool)

(declare-fun e!300612 () SeekEntryResult!4318)

(assert (=> b!514782 (= e!300614 e!300612)))

(declare-fun lt!235717 () (_ BitVec 64))

(assert (=> b!514782 (= lt!235717 (select (arr!15844 a!3235) (index!19462 lt!235716)))))

(declare-fun c!60407 () Bool)

(assert (=> b!514782 (= c!60407 (= lt!235717 k0!2280))))

(declare-fun b!514783 () Bool)

(declare-fun c!60408 () Bool)

(assert (=> b!514783 (= c!60408 (= lt!235717 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514783 (= e!300612 e!300613)))

(declare-fun b!514784 () Bool)

(assert (=> b!514784 (= e!300612 (Found!4318 (index!19462 lt!235716)))))

(declare-fun b!514785 () Bool)

(assert (=> b!514785 (= e!300613 (MissingZero!4318 (index!19462 lt!235716)))))

(declare-fun b!514786 () Bool)

(assert (=> b!514786 (= e!300614 Undefined!4318)))

(assert (= (and d!79383 c!60409) b!514786))

(assert (= (and d!79383 (not c!60409)) b!514782))

(assert (= (and b!514782 c!60407) b!514784))

(assert (= (and b!514782 (not c!60407)) b!514783))

(assert (= (and b!514783 c!60408) b!514785))

(assert (= (and b!514783 (not c!60408)) b!514781))

(declare-fun m!496141 () Bool)

(assert (=> d!79383 m!496141))

(declare-fun m!496143 () Bool)

(assert (=> d!79383 m!496143))

(declare-fun m!496145 () Bool)

(assert (=> d!79383 m!496145))

(declare-fun m!496147 () Bool)

(assert (=> d!79383 m!496147))

(assert (=> d!79383 m!496141))

(declare-fun m!496149 () Bool)

(assert (=> d!79383 m!496149))

(assert (=> d!79383 m!495933))

(declare-fun m!496151 () Bool)

(assert (=> b!514781 m!496151))

(declare-fun m!496153 () Bool)

(assert (=> b!514782 m!496153))

(assert (=> b!514536 d!79383))

(check-sat (not b!514605) (not bm!31619) (not b!514616) (not b!514698) (not b!514744) (not b!514606) (not bm!31626) (not b!514717) (not d!79363) (not b!514617) (not bm!31616) (not d!79359) (not b!514729) (not d!79339) (not b!514587) (not d!79327) (not d!79383) (not b!514781) (not b!514716) (not b!514603))
(check-sat)
