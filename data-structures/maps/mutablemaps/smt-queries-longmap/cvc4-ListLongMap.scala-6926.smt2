; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87092 () Bool)

(assert start!87092)

(declare-fun b!1009728 () Bool)

(declare-fun res!678417 () Bool)

(declare-fun e!568103 () Bool)

(assert (=> b!1009728 (=> (not res!678417) (not e!568103))))

(declare-datatypes ((array!63611 0))(
  ( (array!63612 (arr!30621 (Array (_ BitVec 32) (_ BitVec 64))) (size!31124 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63611)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63611 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1009728 (= res!678417 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1009729 () Bool)

(declare-fun e!568106 () Bool)

(declare-fun e!568105 () Bool)

(assert (=> b!1009729 (= e!568106 e!568105)))

(declare-fun res!678425 () Bool)

(assert (=> b!1009729 (=> (not res!678425) (not e!568105))))

(declare-datatypes ((SeekEntryResult!9553 0))(
  ( (MissingZero!9553 (index!40582 (_ BitVec 32))) (Found!9553 (index!40583 (_ BitVec 32))) (Intermediate!9553 (undefined!10365 Bool) (index!40584 (_ BitVec 32)) (x!88007 (_ BitVec 32))) (Undefined!9553) (MissingVacant!9553 (index!40585 (_ BitVec 32))) )
))
(declare-fun lt!446285 () SeekEntryResult!9553)

(declare-fun lt!446284 () SeekEntryResult!9553)

(assert (=> b!1009729 (= res!678425 (= lt!446285 lt!446284))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63611 (_ BitVec 32)) SeekEntryResult!9553)

(assert (=> b!1009729 (= lt!446285 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30621 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009730 () Bool)

(declare-fun res!678426 () Bool)

(declare-fun e!568102 () Bool)

(assert (=> b!1009730 (=> (not res!678426) (not e!568102))))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1009730 (= res!678426 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31124 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31124 a!3219))))))

(declare-fun b!1009731 () Bool)

(declare-fun res!678418 () Bool)

(declare-fun e!568104 () Bool)

(assert (=> b!1009731 (=> (not res!678418) (not e!568104))))

(declare-fun lt!446289 () (_ BitVec 64))

(declare-fun lt!446283 () array!63611)

(assert (=> b!1009731 (= res!678418 (not (= lt!446285 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446289 lt!446283 mask!3464))))))

(declare-fun b!1009732 () Bool)

(declare-fun res!678420 () Bool)

(assert (=> b!1009732 (=> (not res!678420) (not e!568103))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1009732 (= res!678420 (validKeyInArray!0 k!2224))))

(declare-fun b!1009733 () Bool)

(declare-fun res!678419 () Bool)

(assert (=> b!1009733 (=> (not res!678419) (not e!568103))))

(assert (=> b!1009733 (= res!678419 (validKeyInArray!0 (select (arr!30621 a!3219) j!170)))))

(declare-fun b!1009734 () Bool)

(assert (=> b!1009734 (= e!568103 e!568102)))

(declare-fun res!678427 () Bool)

(assert (=> b!1009734 (=> (not res!678427) (not e!568102))))

(declare-fun lt!446287 () SeekEntryResult!9553)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1009734 (= res!678427 (or (= lt!446287 (MissingVacant!9553 i!1194)) (= lt!446287 (MissingZero!9553 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63611 (_ BitVec 32)) SeekEntryResult!9553)

(assert (=> b!1009734 (= lt!446287 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1009736 () Bool)

(assert (=> b!1009736 (= e!568105 e!568104)))

(declare-fun res!678429 () Bool)

(assert (=> b!1009736 (=> (not res!678429) (not e!568104))))

(declare-fun lt!446288 () SeekEntryResult!9553)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009736 (= res!678429 (not (= lt!446288 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446289 mask!3464) lt!446289 lt!446283 mask!3464))))))

(assert (=> b!1009736 (= lt!446289 (select (store (arr!30621 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1009736 (= lt!446283 (array!63612 (store (arr!30621 a!3219) i!1194 k!2224) (size!31124 a!3219)))))

(declare-fun b!1009737 () Bool)

(declare-fun res!678428 () Bool)

(assert (=> b!1009737 (=> (not res!678428) (not e!568102))))

(declare-datatypes ((List!21423 0))(
  ( (Nil!21420) (Cons!21419 (h!22608 (_ BitVec 64)) (t!30432 List!21423)) )
))
(declare-fun arrayNoDuplicates!0 (array!63611 (_ BitVec 32) List!21423) Bool)

(assert (=> b!1009737 (= res!678428 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21420))))

(declare-fun b!1009738 () Bool)

(declare-fun res!678421 () Bool)

(assert (=> b!1009738 (=> (not res!678421) (not e!568103))))

(assert (=> b!1009738 (= res!678421 (and (= (size!31124 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31124 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31124 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1009739 () Bool)

(declare-fun res!678424 () Bool)

(assert (=> b!1009739 (=> (not res!678424) (not e!568104))))

(assert (=> b!1009739 (= res!678424 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1009740 () Bool)

(assert (=> b!1009740 (= e!568102 e!568106)))

(declare-fun res!678430 () Bool)

(assert (=> b!1009740 (=> (not res!678430) (not e!568106))))

(assert (=> b!1009740 (= res!678430 (= lt!446288 lt!446284))))

(assert (=> b!1009740 (= lt!446284 (Intermediate!9553 false resIndex!38 resX!38))))

(assert (=> b!1009740 (= lt!446288 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30621 a!3219) j!170) mask!3464) (select (arr!30621 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009741 () Bool)

(declare-fun res!678423 () Bool)

(assert (=> b!1009741 (=> (not res!678423) (not e!568102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63611 (_ BitVec 32)) Bool)

(assert (=> b!1009741 (= res!678423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1009735 () Bool)

(declare-fun lt!446286 () (_ BitVec 32))

(assert (=> b!1009735 (= e!568104 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (or (bvslt lt!446286 #b00000000000000000000000000000000) (bvsge lt!446286 (size!31124 a!3219)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1009735 (= lt!446286 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun res!678422 () Bool)

(assert (=> start!87092 (=> (not res!678422) (not e!568103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87092 (= res!678422 (validMask!0 mask!3464))))

(assert (=> start!87092 e!568103))

(declare-fun array_inv!23611 (array!63611) Bool)

(assert (=> start!87092 (array_inv!23611 a!3219)))

(assert (=> start!87092 true))

(assert (= (and start!87092 res!678422) b!1009738))

(assert (= (and b!1009738 res!678421) b!1009733))

(assert (= (and b!1009733 res!678419) b!1009732))

(assert (= (and b!1009732 res!678420) b!1009728))

(assert (= (and b!1009728 res!678417) b!1009734))

(assert (= (and b!1009734 res!678427) b!1009741))

(assert (= (and b!1009741 res!678423) b!1009737))

(assert (= (and b!1009737 res!678428) b!1009730))

(assert (= (and b!1009730 res!678426) b!1009740))

(assert (= (and b!1009740 res!678430) b!1009729))

(assert (= (and b!1009729 res!678425) b!1009736))

(assert (= (and b!1009736 res!678429) b!1009731))

(assert (= (and b!1009731 res!678418) b!1009739))

(assert (= (and b!1009739 res!678424) b!1009735))

(declare-fun m!934353 () Bool)

(assert (=> b!1009740 m!934353))

(assert (=> b!1009740 m!934353))

(declare-fun m!934355 () Bool)

(assert (=> b!1009740 m!934355))

(assert (=> b!1009740 m!934355))

(assert (=> b!1009740 m!934353))

(declare-fun m!934357 () Bool)

(assert (=> b!1009740 m!934357))

(declare-fun m!934359 () Bool)

(assert (=> start!87092 m!934359))

(declare-fun m!934361 () Bool)

(assert (=> start!87092 m!934361))

(assert (=> b!1009729 m!934353))

(assert (=> b!1009729 m!934353))

(declare-fun m!934363 () Bool)

(assert (=> b!1009729 m!934363))

(declare-fun m!934365 () Bool)

(assert (=> b!1009734 m!934365))

(declare-fun m!934367 () Bool)

(assert (=> b!1009735 m!934367))

(declare-fun m!934369 () Bool)

(assert (=> b!1009732 m!934369))

(declare-fun m!934371 () Bool)

(assert (=> b!1009737 m!934371))

(assert (=> b!1009733 m!934353))

(assert (=> b!1009733 m!934353))

(declare-fun m!934373 () Bool)

(assert (=> b!1009733 m!934373))

(declare-fun m!934375 () Bool)

(assert (=> b!1009741 m!934375))

(declare-fun m!934377 () Bool)

(assert (=> b!1009728 m!934377))

(declare-fun m!934379 () Bool)

(assert (=> b!1009736 m!934379))

(assert (=> b!1009736 m!934379))

(declare-fun m!934381 () Bool)

(assert (=> b!1009736 m!934381))

(declare-fun m!934383 () Bool)

(assert (=> b!1009736 m!934383))

(declare-fun m!934385 () Bool)

(assert (=> b!1009736 m!934385))

(declare-fun m!934387 () Bool)

(assert (=> b!1009731 m!934387))

(push 1)

(assert (not b!1009737))

(assert (not b!1009731))

(assert (not b!1009728))

(assert (not b!1009729))

(assert (not b!1009734))

(assert (not b!1009736))

(assert (not start!87092))

(assert (not b!1009741))

(assert (not b!1009732))

(assert (not b!1009735))

(assert (not b!1009733))

(assert (not b!1009740))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1009788 () Bool)

(declare-fun e!568138 () Bool)

(declare-fun e!568136 () Bool)

(assert (=> b!1009788 (= e!568138 e!568136)))

(declare-fun c!101829 () Bool)

(assert (=> b!1009788 (= c!101829 (validKeyInArray!0 (select (arr!30621 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1009789 () Bool)

(declare-fun call!42394 () Bool)

(assert (=> b!1009789 (= e!568136 call!42394)))

(declare-fun b!1009790 () Bool)

(assert (=> b!1009790 (= e!568136 call!42394)))

(declare-fun bm!42391 () Bool)

(assert (=> bm!42391 (= call!42394 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101829 (Cons!21419 (select (arr!30621 a!3219) #b00000000000000000000000000000000) Nil!21420) Nil!21420)))))

(declare-fun b!1009791 () Bool)

(declare-fun e!568135 () Bool)

(assert (=> b!1009791 (= e!568135 e!568138)))

(declare-fun res!678452 () Bool)

(assert (=> b!1009791 (=> (not res!678452) (not e!568138))))

(declare-fun e!568137 () Bool)

(assert (=> b!1009791 (= res!678452 (not e!568137))))

(declare-fun res!678451 () Bool)

(assert (=> b!1009791 (=> (not res!678451) (not e!568137))))

(assert (=> b!1009791 (= res!678451 (validKeyInArray!0 (select (arr!30621 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!119869 () Bool)

(declare-fun res!678450 () Bool)

(assert (=> d!119869 (=> res!678450 e!568135)))

(assert (=> d!119869 (= res!678450 (bvsge #b00000000000000000000000000000000 (size!31124 a!3219)))))

(assert (=> d!119869 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21420) e!568135)))

(declare-fun b!1009792 () Bool)

(declare-fun contains!5900 (List!21423 (_ BitVec 64)) Bool)

(assert (=> b!1009792 (= e!568137 (contains!5900 Nil!21420 (select (arr!30621 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119869 (not res!678450)) b!1009791))

(assert (= (and b!1009791 res!678451) b!1009792))

(assert (= (and b!1009791 res!678452) b!1009788))

(assert (= (and b!1009788 c!101829) b!1009789))

(assert (= (and b!1009788 (not c!101829)) b!1009790))

(assert (= (or b!1009789 b!1009790) bm!42391))

(declare-fun m!934399 () Bool)

(assert (=> b!1009788 m!934399))

(assert (=> b!1009788 m!934399))

(declare-fun m!934403 () Bool)

(assert (=> b!1009788 m!934403))

(assert (=> bm!42391 m!934399))

(declare-fun m!934407 () Bool)

(assert (=> bm!42391 m!934407))

(assert (=> b!1009791 m!934399))

(assert (=> b!1009791 m!934399))

(assert (=> b!1009791 m!934403))

(assert (=> b!1009792 m!934399))

(assert (=> b!1009792 m!934399))

(declare-fun m!934409 () Bool)

(assert (=> b!1009792 m!934409))

(assert (=> b!1009737 d!119869))

(declare-fun b!1009841 () Bool)

(declare-fun e!568174 () SeekEntryResult!9553)

(assert (=> b!1009841 (= e!568174 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!446289 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!446289 lt!446283 mask!3464))))

(declare-fun b!1009842 () Bool)

(declare-fun lt!446314 () SeekEntryResult!9553)

(assert (=> b!1009842 (and (bvsge (index!40584 lt!446314) #b00000000000000000000000000000000) (bvslt (index!40584 lt!446314) (size!31124 lt!446283)))))

(declare-fun res!678477 () Bool)

(assert (=> b!1009842 (= res!678477 (= (select (arr!30621 lt!446283) (index!40584 lt!446314)) lt!446289))))

(declare-fun e!568172 () Bool)

(assert (=> b!1009842 (=> res!678477 e!568172)))

(declare-fun e!568173 () Bool)

(assert (=> b!1009842 (= e!568173 e!568172)))

(declare-fun b!1009843 () Bool)

(declare-fun e!568175 () Bool)

(assert (=> b!1009843 (= e!568175 (bvsge (x!88007 lt!446314) #b01111111111111111111111111111110))))

(declare-fun b!1009845 () Bool)

(declare-fun e!568176 () SeekEntryResult!9553)

(assert (=> b!1009845 (= e!568176 e!568174)))

(declare-fun c!101842 () Bool)

(declare-fun lt!446313 () (_ BitVec 64))

(assert (=> b!1009845 (= c!101842 (or (= lt!446313 lt!446289) (= (bvadd lt!446313 lt!446313) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009846 () Bool)

(assert (=> b!1009846 (= e!568176 (Intermediate!9553 true (toIndex!0 lt!446289 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1009847 () Bool)

(assert (=> b!1009847 (and (bvsge (index!40584 lt!446314) #b00000000000000000000000000000000) (bvslt (index!40584 lt!446314) (size!31124 lt!446283)))))

(declare-fun res!678479 () Bool)

(assert (=> b!1009847 (= res!678479 (= (select (arr!30621 lt!446283) (index!40584 lt!446314)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009847 (=> res!678479 e!568172)))

(declare-fun d!119877 () Bool)

(assert (=> d!119877 e!568175))

(declare-fun c!101844 () Bool)

(assert (=> d!119877 (= c!101844 (and (is-Intermediate!9553 lt!446314) (undefined!10365 lt!446314)))))

(assert (=> d!119877 (= lt!446314 e!568176)))

(declare-fun c!101843 () Bool)

(assert (=> d!119877 (= c!101843 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119877 (= lt!446313 (select (arr!30621 lt!446283) (toIndex!0 lt!446289 mask!3464)))))

(assert (=> d!119877 (validMask!0 mask!3464)))

(assert (=> d!119877 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446289 mask!3464) lt!446289 lt!446283 mask!3464) lt!446314)))

(declare-fun b!1009844 () Bool)

(assert (=> b!1009844 (and (bvsge (index!40584 lt!446314) #b00000000000000000000000000000000) (bvslt (index!40584 lt!446314) (size!31124 lt!446283)))))

(assert (=> b!1009844 (= e!568172 (= (select (arr!30621 lt!446283) (index!40584 lt!446314)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009848 () Bool)

(assert (=> b!1009848 (= e!568175 e!568173)))

(declare-fun res!678478 () Bool)

(assert (=> b!1009848 (= res!678478 (and (is-Intermediate!9553 lt!446314) (not (undefined!10365 lt!446314)) (bvslt (x!88007 lt!446314) #b01111111111111111111111111111110) (bvsge (x!88007 lt!446314) #b00000000000000000000000000000000) (bvsge (x!88007 lt!446314) #b00000000000000000000000000000000)))))

(assert (=> b!1009848 (=> (not res!678478) (not e!568173))))

(declare-fun b!1009849 () Bool)

(assert (=> b!1009849 (= e!568174 (Intermediate!9553 false (toIndex!0 lt!446289 mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!119877 c!101843) b!1009846))

(assert (= (and d!119877 (not c!101843)) b!1009845))

(assert (= (and b!1009845 c!101842) b!1009849))

(assert (= (and b!1009845 (not c!101842)) b!1009841))

(assert (= (and d!119877 c!101844) b!1009843))

(assert (= (and d!119877 (not c!101844)) b!1009848))

(assert (= (and b!1009848 res!678478) b!1009842))

(assert (= (and b!1009842 (not res!678477)) b!1009847))

(assert (= (and b!1009847 (not res!678479)) b!1009844))

(declare-fun m!934429 () Bool)

(assert (=> b!1009842 m!934429))

(assert (=> d!119877 m!934379))

(declare-fun m!934431 () Bool)

(assert (=> d!119877 m!934431))

(assert (=> d!119877 m!934359))

(assert (=> b!1009844 m!934429))

(assert (=> b!1009847 m!934429))

(assert (=> b!1009841 m!934379))

(declare-fun m!934433 () Bool)

(assert (=> b!1009841 m!934433))

(assert (=> b!1009841 m!934433))

(declare-fun m!934435 () Bool)

(assert (=> b!1009841 m!934435))

(assert (=> b!1009736 d!119877))

(declare-fun d!119891 () Bool)

(declare-fun lt!446324 () (_ BitVec 32))

(declare-fun lt!446323 () (_ BitVec 32))

(assert (=> d!119891 (= lt!446324 (bvmul (bvxor lt!446323 (bvlshr lt!446323 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119891 (= lt!446323 ((_ extract 31 0) (bvand (bvxor lt!446289 (bvlshr lt!446289 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119891 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!678480 (let ((h!22610 ((_ extract 31 0) (bvand (bvxor lt!446289 (bvlshr lt!446289 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88012 (bvmul (bvxor h!22610 (bvlshr h!22610 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88012 (bvlshr x!88012 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!678480 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!678480 #b00000000000000000000000000000000))))))

(assert (=> d!119891 (= (toIndex!0 lt!446289 mask!3464) (bvand (bvxor lt!446324 (bvlshr lt!446324 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1009736 d!119891))

(declare-fun d!119893 () Bool)

(assert (=> d!119893 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!87092 d!119893))

(declare-fun d!119899 () Bool)

(assert (=> d!119899 (= (array_inv!23611 a!3219) (bvsge (size!31124 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!87092 d!119899))

(declare-fun b!1009895 () Bool)

(declare-fun e!568203 () SeekEntryResult!9553)

(assert (=> b!1009895 (= e!568203 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30621 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30621 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009896 () Bool)

(declare-fun lt!446337 () SeekEntryResult!9553)

(assert (=> b!1009896 (and (bvsge (index!40584 lt!446337) #b00000000000000000000000000000000) (bvslt (index!40584 lt!446337) (size!31124 a!3219)))))

(declare-fun res!678490 () Bool)

(assert (=> b!1009896 (= res!678490 (= (select (arr!30621 a!3219) (index!40584 lt!446337)) (select (arr!30621 a!3219) j!170)))))

(declare-fun e!568201 () Bool)

(assert (=> b!1009896 (=> res!678490 e!568201)))

(declare-fun e!568202 () Bool)

(assert (=> b!1009896 (= e!568202 e!568201)))

(declare-fun b!1009897 () Bool)

(declare-fun e!568204 () Bool)

(assert (=> b!1009897 (= e!568204 (bvsge (x!88007 lt!446337) #b01111111111111111111111111111110))))

(declare-fun b!1009899 () Bool)

(declare-fun e!568205 () SeekEntryResult!9553)

(assert (=> b!1009899 (= e!568205 e!568203)))

(declare-fun c!101863 () Bool)

(declare-fun lt!446336 () (_ BitVec 64))

(assert (=> b!1009899 (= c!101863 (or (= lt!446336 (select (arr!30621 a!3219) j!170)) (= (bvadd lt!446336 lt!446336) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009900 () Bool)

(assert (=> b!1009900 (= e!568205 (Intermediate!9553 true (toIndex!0 (select (arr!30621 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1009901 () Bool)

(assert (=> b!1009901 (and (bvsge (index!40584 lt!446337) #b00000000000000000000000000000000) (bvslt (index!40584 lt!446337) (size!31124 a!3219)))))

(declare-fun res!678492 () Bool)

(assert (=> b!1009901 (= res!678492 (= (select (arr!30621 a!3219) (index!40584 lt!446337)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009901 (=> res!678492 e!568201)))

(declare-fun d!119901 () Bool)

(assert (=> d!119901 e!568204))

(declare-fun c!101865 () Bool)

(assert (=> d!119901 (= c!101865 (and (is-Intermediate!9553 lt!446337) (undefined!10365 lt!446337)))))

(assert (=> d!119901 (= lt!446337 e!568205)))

(declare-fun c!101864 () Bool)

(assert (=> d!119901 (= c!101864 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119901 (= lt!446336 (select (arr!30621 a!3219) (toIndex!0 (select (arr!30621 a!3219) j!170) mask!3464)))))

(assert (=> d!119901 (validMask!0 mask!3464)))

(assert (=> d!119901 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30621 a!3219) j!170) mask!3464) (select (arr!30621 a!3219) j!170) a!3219 mask!3464) lt!446337)))

(declare-fun b!1009898 () Bool)

(assert (=> b!1009898 (and (bvsge (index!40584 lt!446337) #b00000000000000000000000000000000) (bvslt (index!40584 lt!446337) (size!31124 a!3219)))))

(assert (=> b!1009898 (= e!568201 (= (select (arr!30621 a!3219) (index!40584 lt!446337)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009902 () Bool)

(assert (=> b!1009902 (= e!568204 e!568202)))

(declare-fun res!678491 () Bool)

(assert (=> b!1009902 (= res!678491 (and (is-Intermediate!9553 lt!446337) (not (undefined!10365 lt!446337)) (bvslt (x!88007 lt!446337) #b01111111111111111111111111111110) (bvsge (x!88007 lt!446337) #b00000000000000000000000000000000) (bvsge (x!88007 lt!446337) #b00000000000000000000000000000000)))))

(assert (=> b!1009902 (=> (not res!678491) (not e!568202))))

(declare-fun b!1009903 () Bool)

(assert (=> b!1009903 (= e!568203 (Intermediate!9553 false (toIndex!0 (select (arr!30621 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!119901 c!101864) b!1009900))

(assert (= (and d!119901 (not c!101864)) b!1009899))

(assert (= (and b!1009899 c!101863) b!1009903))

(assert (= (and b!1009899 (not c!101863)) b!1009895))

(assert (= (and d!119901 c!101865) b!1009897))

(assert (= (and d!119901 (not c!101865)) b!1009902))

(assert (= (and b!1009902 res!678491) b!1009896))

(assert (= (and b!1009896 (not res!678490)) b!1009901))

(assert (= (and b!1009901 (not res!678492)) b!1009898))

(declare-fun m!934457 () Bool)

(assert (=> b!1009896 m!934457))

(assert (=> d!119901 m!934355))

(declare-fun m!934459 () Bool)

(assert (=> d!119901 m!934459))

(assert (=> d!119901 m!934359))

(assert (=> b!1009898 m!934457))

(assert (=> b!1009901 m!934457))

(assert (=> b!1009895 m!934355))

(declare-fun m!934461 () Bool)

(assert (=> b!1009895 m!934461))

(assert (=> b!1009895 m!934461))

(assert (=> b!1009895 m!934353))

(declare-fun m!934463 () Bool)

(assert (=> b!1009895 m!934463))

(assert (=> b!1009740 d!119901))

(declare-fun d!119903 () Bool)

(declare-fun lt!446339 () (_ BitVec 32))

(declare-fun lt!446338 () (_ BitVec 32))

(assert (=> d!119903 (= lt!446339 (bvmul (bvxor lt!446338 (bvlshr lt!446338 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119903 (= lt!446338 ((_ extract 31 0) (bvand (bvxor (select (arr!30621 a!3219) j!170) (bvlshr (select (arr!30621 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119903 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!678480 (let ((h!22610 ((_ extract 31 0) (bvand (bvxor (select (arr!30621 a!3219) j!170) (bvlshr (select (arr!30621 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88012 (bvmul (bvxor h!22610 (bvlshr h!22610 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88012 (bvlshr x!88012 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!678480 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!678480 #b00000000000000000000000000000000))))))

(assert (=> d!119903 (= (toIndex!0 (select (arr!30621 a!3219) j!170) mask!3464) (bvand (bvxor lt!446339 (bvlshr lt!446339 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1009740 d!119903))

(declare-fun e!568208 () SeekEntryResult!9553)

(declare-fun b!1009904 () Bool)

(assert (=> b!1009904 (= e!568208 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30621 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1009905 () Bool)

(declare-fun lt!446341 () SeekEntryResult!9553)

(assert (=> b!1009905 (and (bvsge (index!40584 lt!446341) #b00000000000000000000000000000000) (bvslt (index!40584 lt!446341) (size!31124 a!3219)))))

(declare-fun res!678493 () Bool)

(assert (=> b!1009905 (= res!678493 (= (select (arr!30621 a!3219) (index!40584 lt!446341)) (select (arr!30621 a!3219) j!170)))))

(declare-fun e!568206 () Bool)

(assert (=> b!1009905 (=> res!678493 e!568206)))

(declare-fun e!568207 () Bool)

(assert (=> b!1009905 (= e!568207 e!568206)))

(declare-fun b!1009906 () Bool)

(declare-fun e!568209 () Bool)

(assert (=> b!1009906 (= e!568209 (bvsge (x!88007 lt!446341) #b01111111111111111111111111111110))))

(declare-fun b!1009908 () Bool)

(declare-fun e!568210 () SeekEntryResult!9553)

(assert (=> b!1009908 (= e!568210 e!568208)))

(declare-fun c!101866 () Bool)

(declare-fun lt!446340 () (_ BitVec 64))

(assert (=> b!1009908 (= c!101866 (or (= lt!446340 (select (arr!30621 a!3219) j!170)) (= (bvadd lt!446340 lt!446340) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009909 () Bool)

(assert (=> b!1009909 (= e!568210 (Intermediate!9553 true index!1507 x!1245))))

(declare-fun b!1009910 () Bool)

(assert (=> b!1009910 (and (bvsge (index!40584 lt!446341) #b00000000000000000000000000000000) (bvslt (index!40584 lt!446341) (size!31124 a!3219)))))

(declare-fun res!678495 () Bool)

(assert (=> b!1009910 (= res!678495 (= (select (arr!30621 a!3219) (index!40584 lt!446341)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009910 (=> res!678495 e!568206)))

(declare-fun d!119905 () Bool)

(assert (=> d!119905 e!568209))

(declare-fun c!101868 () Bool)

(assert (=> d!119905 (= c!101868 (and (is-Intermediate!9553 lt!446341) (undefined!10365 lt!446341)))))

(assert (=> d!119905 (= lt!446341 e!568210)))

(declare-fun c!101867 () Bool)

(assert (=> d!119905 (= c!101867 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119905 (= lt!446340 (select (arr!30621 a!3219) index!1507))))

(assert (=> d!119905 (validMask!0 mask!3464)))

(assert (=> d!119905 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30621 a!3219) j!170) a!3219 mask!3464) lt!446341)))

(declare-fun b!1009907 () Bool)

(assert (=> b!1009907 (and (bvsge (index!40584 lt!446341) #b00000000000000000000000000000000) (bvslt (index!40584 lt!446341) (size!31124 a!3219)))))

(assert (=> b!1009907 (= e!568206 (= (select (arr!30621 a!3219) (index!40584 lt!446341)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009911 () Bool)

(assert (=> b!1009911 (= e!568209 e!568207)))

(declare-fun res!678494 () Bool)

(assert (=> b!1009911 (= res!678494 (and (is-Intermediate!9553 lt!446341) (not (undefined!10365 lt!446341)) (bvslt (x!88007 lt!446341) #b01111111111111111111111111111110) (bvsge (x!88007 lt!446341) #b00000000000000000000000000000000) (bvsge (x!88007 lt!446341) x!1245)))))

(assert (=> b!1009911 (=> (not res!678494) (not e!568207))))

(declare-fun b!1009912 () Bool)

(assert (=> b!1009912 (= e!568208 (Intermediate!9553 false index!1507 x!1245))))

(assert (= (and d!119905 c!101867) b!1009909))

(assert (= (and d!119905 (not c!101867)) b!1009908))

(assert (= (and b!1009908 c!101866) b!1009912))

(assert (= (and b!1009908 (not c!101866)) b!1009904))

(assert (= (and d!119905 c!101868) b!1009906))

(assert (= (and d!119905 (not c!101868)) b!1009911))

(assert (= (and b!1009911 res!678494) b!1009905))

(assert (= (and b!1009905 (not res!678493)) b!1009910))

(assert (= (and b!1009910 (not res!678495)) b!1009907))

(declare-fun m!934465 () Bool)

(assert (=> b!1009905 m!934465))

(declare-fun m!934467 () Bool)

(assert (=> d!119905 m!934467))

(assert (=> d!119905 m!934359))

(assert (=> b!1009907 m!934465))

(assert (=> b!1009910 m!934465))

(assert (=> b!1009904 m!934367))

(assert (=> b!1009904 m!934367))

(assert (=> b!1009904 m!934353))

(declare-fun m!934469 () Bool)

(assert (=> b!1009904 m!934469))

(assert (=> b!1009729 d!119905))

(declare-fun d!119907 () Bool)

(declare-fun res!678504 () Bool)

(declare-fun e!568221 () Bool)

(assert (=> d!119907 (=> res!678504 e!568221)))

(assert (=> d!119907 (= res!678504 (= (select (arr!30621 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!119907 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!568221)))

(declare-fun b!1009925 () Bool)

(declare-fun e!568222 () Bool)

(assert (=> b!1009925 (= e!568221 e!568222)))

(declare-fun res!678505 () Bool)

(assert (=> b!1009925 (=> (not res!678505) (not e!568222))))

(assert (=> b!1009925 (= res!678505 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31124 a!3219)))))

(declare-fun b!1009926 () Bool)

(assert (=> b!1009926 (= e!568222 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119907 (not res!678504)) b!1009925))

(assert (= (and b!1009925 res!678505) b!1009926))

(assert (=> d!119907 m!934399))

(declare-fun m!934471 () Bool)

(assert (=> b!1009926 m!934471))

(assert (=> b!1009728 d!119907))

(declare-fun d!119909 () Bool)

(assert (=> d!119909 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1009732 d!119909))

(declare-fun b!1009931 () Bool)

(declare-fun e!568228 () SeekEntryResult!9553)

(assert (=> b!1009931 (= e!568228 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!446289 lt!446283 mask!3464))))

(declare-fun b!1009932 () Bool)

(declare-fun lt!446352 () SeekEntryResult!9553)

(assert (=> b!1009932 (and (bvsge (index!40584 lt!446352) #b00000000000000000000000000000000) (bvslt (index!40584 lt!446352) (size!31124 lt!446283)))))

(declare-fun res!678508 () Bool)

(assert (=> b!1009932 (= res!678508 (= (select (arr!30621 lt!446283) (index!40584 lt!446352)) lt!446289))))

(declare-fun e!568226 () Bool)

(assert (=> b!1009932 (=> res!678508 e!568226)))

(declare-fun e!568227 () Bool)

(assert (=> b!1009932 (= e!568227 e!568226)))

(declare-fun b!1009933 () Bool)

(declare-fun e!568229 () Bool)

(assert (=> b!1009933 (= e!568229 (bvsge (x!88007 lt!446352) #b01111111111111111111111111111110))))

(declare-fun b!1009935 () Bool)

(declare-fun e!568230 () SeekEntryResult!9553)

(assert (=> b!1009935 (= e!568230 e!568228)))

(declare-fun c!101872 () Bool)

(declare-fun lt!446351 () (_ BitVec 64))

(assert (=> b!1009935 (= c!101872 (or (= lt!446351 lt!446289) (= (bvadd lt!446351 lt!446351) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1009936 () Bool)

(assert (=> b!1009936 (= e!568230 (Intermediate!9553 true index!1507 x!1245))))

(declare-fun b!1009937 () Bool)

(assert (=> b!1009937 (and (bvsge (index!40584 lt!446352) #b00000000000000000000000000000000) (bvslt (index!40584 lt!446352) (size!31124 lt!446283)))))

(declare-fun res!678510 () Bool)

(assert (=> b!1009937 (= res!678510 (= (select (arr!30621 lt!446283) (index!40584 lt!446352)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1009937 (=> res!678510 e!568226)))

(declare-fun d!119911 () Bool)

(assert (=> d!119911 e!568229))

(declare-fun c!101874 () Bool)

(assert (=> d!119911 (= c!101874 (and (is-Intermediate!9553 lt!446352) (undefined!10365 lt!446352)))))

(assert (=> d!119911 (= lt!446352 e!568230)))

(declare-fun c!101873 () Bool)

(assert (=> d!119911 (= c!101873 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119911 (= lt!446351 (select (arr!30621 lt!446283) index!1507))))

(assert (=> d!119911 (validMask!0 mask!3464)))

(assert (=> d!119911 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446289 lt!446283 mask!3464) lt!446352)))

(declare-fun b!1009934 () Bool)

(assert (=> b!1009934 (and (bvsge (index!40584 lt!446352) #b00000000000000000000000000000000) (bvslt (index!40584 lt!446352) (size!31124 lt!446283)))))

(assert (=> b!1009934 (= e!568226 (= (select (arr!30621 lt!446283) (index!40584 lt!446352)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1009938 () Bool)

(assert (=> b!1009938 (= e!568229 e!568227)))

(declare-fun res!678509 () Bool)

(assert (=> b!1009938 (= res!678509 (and (is-Intermediate!9553 lt!446352) (not (undefined!10365 lt!446352)) (bvslt (x!88007 lt!446352) #b01111111111111111111111111111110) (bvsge (x!88007 lt!446352) #b00000000000000000000000000000000) (bvsge (x!88007 lt!446352) x!1245)))))

(assert (=> b!1009938 (=> (not res!678509) (not e!568227))))

(declare-fun b!1009939 () Bool)

(assert (=> b!1009939 (= e!568228 (Intermediate!9553 false index!1507 x!1245))))

(assert (= (and d!119911 c!101873) b!1009936))

(assert (= (and d!119911 (not c!101873)) b!1009935))

(assert (= (and b!1009935 c!101872) b!1009939))

(assert (= (and b!1009935 (not c!101872)) b!1009931))

(assert (= (and d!119911 c!101874) b!1009933))

(assert (= (and d!119911 (not c!101874)) b!1009938))

(assert (= (and b!1009938 res!678509) b!1009932))

(assert (= (and b!1009932 (not res!678508)) b!1009937))

(assert (= (and b!1009937 (not res!678510)) b!1009934))

(declare-fun m!934481 () Bool)

(assert (=> b!1009932 m!934481))

(declare-fun m!934483 () Bool)

(assert (=> d!119911 m!934483))

(assert (=> d!119911 m!934359))

(assert (=> b!1009934 m!934481))

(assert (=> b!1009937 m!934481))

(assert (=> b!1009931 m!934367))

(assert (=> b!1009931 m!934367))

(declare-fun m!934485 () Bool)

(assert (=> b!1009931 m!934485))

(assert (=> b!1009731 d!119911))

(declare-fun b!1009975 () Bool)

(declare-fun e!568252 () Bool)

(declare-fun e!568251 () Bool)

(assert (=> b!1009975 (= e!568252 e!568251)))

(declare-fun lt!446370 () (_ BitVec 64))

(assert (=> b!1009975 (= lt!446370 (select (arr!30621 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32968 0))(
  ( (Unit!32969) )
))
(declare-fun lt!446372 () Unit!32968)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63611 (_ BitVec 64) (_ BitVec 32)) Unit!32968)

(assert (=> b!1009975 (= lt!446372 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!446370 #b00000000000000000000000000000000))))

(assert (=> b!1009975 (arrayContainsKey!0 a!3219 lt!446370 #b00000000000000000000000000000000)))

(declare-fun lt!446371 () Unit!32968)

(assert (=> b!1009975 (= lt!446371 lt!446372)))

(declare-fun res!678519 () Bool)

(assert (=> b!1009975 (= res!678519 (= (seekEntryOrOpen!0 (select (arr!30621 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9553 #b00000000000000000000000000000000)))))

(assert (=> b!1009975 (=> (not res!678519) (not e!568251))))

(declare-fun b!1009976 () Bool)

(declare-fun e!568253 () Bool)

(assert (=> b!1009976 (= e!568253 e!568252)))

(declare-fun c!101889 () Bool)

(assert (=> b!1009976 (= c!101889 (validKeyInArray!0 (select (arr!30621 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1009977 () Bool)

(declare-fun call!42403 () Bool)

(assert (=> b!1009977 (= e!568252 call!42403)))

(declare-fun b!1009978 () Bool)

(assert (=> b!1009978 (= e!568251 call!42403)))

(declare-fun bm!42400 () Bool)

(assert (=> bm!42400 (= call!42403 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun d!119915 () Bool)

(declare-fun res!678518 () Bool)

(assert (=> d!119915 (=> res!678518 e!568253)))

(assert (=> d!119915 (= res!678518 (bvsge #b00000000000000000000000000000000 (size!31124 a!3219)))))

(assert (=> d!119915 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!568253)))

(assert (= (and d!119915 (not res!678518)) b!1009976))

(assert (= (and b!1009976 c!101889) b!1009975))

(assert (= (and b!1009976 (not c!101889)) b!1009977))

(assert (= (and b!1009975 res!678519) b!1009978))

(assert (= (or b!1009978 b!1009977) bm!42400))

(assert (=> b!1009975 m!934399))

(declare-fun m!934507 () Bool)

(assert (=> b!1009975 m!934507))

(declare-fun m!934509 () Bool)

(assert (=> b!1009975 m!934509))

(assert (=> b!1009975 m!934399))

(declare-fun m!934511 () Bool)

(assert (=> b!1009975 m!934511))

(assert (=> b!1009976 m!934399))

(assert (=> b!1009976 m!934399))

(assert (=> b!1009976 m!934403))

(declare-fun m!934513 () Bool)

(assert (=> bm!42400 m!934513))

(assert (=> b!1009741 d!119915))

(declare-fun d!119925 () Bool)

(declare-fun lt!446379 () (_ BitVec 32))

(assert (=> d!119925 (and (bvsge lt!446379 #b00000000000000000000000000000000) (bvslt lt!446379 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!119925 (= lt!446379 (choose!52 index!1507 x!1245 mask!3464))))

(assert (=> d!119925 (validMask!0 mask!3464)))

(assert (=> d!119925 (= (nextIndex!0 index!1507 x!1245 mask!3464) lt!446379)))

(declare-fun bs!28710 () Bool)

(assert (= bs!28710 d!119925))

(declare-fun m!934523 () Bool)

(assert (=> bs!28710 m!934523))

(assert (=> bs!28710 m!934359))

(assert (=> b!1009735 d!119925))

(declare-fun b!1010041 () Bool)

(declare-fun e!568294 () SeekEntryResult!9553)

(declare-fun lt!446407 () SeekEntryResult!9553)

(assert (=> b!1010041 (= e!568294 (MissingZero!9553 (index!40584 lt!446407)))))

(declare-fun b!1010042 () Bool)

(declare-fun c!101910 () Bool)

(declare-fun lt!446408 () (_ BitVec 64))

(assert (=> b!1010042 (= c!101910 (= lt!446408 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568295 () SeekEntryResult!9553)

(assert (=> b!1010042 (= e!568295 e!568294)))

(declare-fun d!119933 () Bool)

(declare-fun lt!446409 () SeekEntryResult!9553)

(assert (=> d!119933 (and (or (is-Undefined!9553 lt!446409) (not (is-Found!9553 lt!446409)) (and (bvsge (index!40583 lt!446409) #b00000000000000000000000000000000) (bvslt (index!40583 lt!446409) (size!31124 a!3219)))) (or (is-Undefined!9553 lt!446409) (is-Found!9553 lt!446409) (not (is-MissingZero!9553 lt!446409)) (and (bvsge (index!40582 lt!446409) #b00000000000000000000000000000000) (bvslt (index!40582 lt!446409) (size!31124 a!3219)))) (or (is-Undefined!9553 lt!446409) (is-Found!9553 lt!446409) (is-MissingZero!9553 lt!446409) (not (is-MissingVacant!9553 lt!446409)) (and (bvsge (index!40585 lt!446409) #b00000000000000000000000000000000) (bvslt (index!40585 lt!446409) (size!31124 a!3219)))) (or (is-Undefined!9553 lt!446409) (ite (is-Found!9553 lt!446409) (= (select (arr!30621 a!3219) (index!40583 lt!446409)) k!2224) (ite (is-MissingZero!9553 lt!446409) (= (select (arr!30621 a!3219) (index!40582 lt!446409)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9553 lt!446409) (= (select (arr!30621 a!3219) (index!40585 lt!446409)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!568293 () SeekEntryResult!9553)

(assert (=> d!119933 (= lt!446409 e!568293)))

(declare-fun c!101912 () Bool)

(assert (=> d!119933 (= c!101912 (and (is-Intermediate!9553 lt!446407) (undefined!10365 lt!446407)))))

(assert (=> d!119933 (= lt!446407 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!119933 (validMask!0 mask!3464)))

(assert (=> d!119933 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!446409)))

(declare-fun b!1010043 () Bool)

(assert (=> b!1010043 (= e!568293 e!568295)))

(assert (=> b!1010043 (= lt!446408 (select (arr!30621 a!3219) (index!40584 lt!446407)))))

(declare-fun c!101911 () Bool)

(assert (=> b!1010043 (= c!101911 (= lt!446408 k!2224))))

(declare-fun b!1010044 () Bool)

(assert (=> b!1010044 (= e!568295 (Found!9553 (index!40584 lt!446407)))))

(declare-fun b!1010045 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63611 (_ BitVec 32)) SeekEntryResult!9553)

(assert (=> b!1010045 (= e!568294 (seekKeyOrZeroReturnVacant!0 (x!88007 lt!446407) (index!40584 lt!446407) (index!40584 lt!446407) k!2224 a!3219 mask!3464))))

(declare-fun b!1010046 () Bool)

(assert (=> b!1010046 (= e!568293 Undefined!9553)))

(assert (= (and d!119933 c!101912) b!1010046))

(assert (= (and d!119933 (not c!101912)) b!1010043))

(assert (= (and b!1010043 c!101911) b!1010044))

(assert (= (and b!1010043 (not c!101911)) b!1010042))

(assert (= (and b!1010042 c!101910) b!1010041))

(assert (= (and b!1010042 (not c!101910)) b!1010045))

(declare-fun m!934551 () Bool)

(assert (=> d!119933 m!934551))

(declare-fun m!934553 () Bool)

(assert (=> d!119933 m!934553))

(declare-fun m!934555 () Bool)

(assert (=> d!119933 m!934555))

(assert (=> d!119933 m!934553))

(declare-fun m!934557 () Bool)

(assert (=> d!119933 m!934557))

(declare-fun m!934559 () Bool)

(assert (=> d!119933 m!934559))

(assert (=> d!119933 m!934359))

(declare-fun m!934561 () Bool)

(assert (=> b!1010043 m!934561))

(declare-fun m!934563 () Bool)

(assert (=> b!1010045 m!934563))

(assert (=> b!1009734 d!119933))

(declare-fun d!119947 () Bool)

(assert (=> d!119947 (= (validKeyInArray!0 (select (arr!30621 a!3219) j!170)) (and (not (= (select (arr!30621 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30621 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1009733 d!119947))

(push 1)

(assert (not d!119925))

(assert (not d!119877))

(assert (not b!1009841))

(assert (not b!1009975))

(assert (not b!1009788))

(assert (not b!1009792))

(assert (not b!1009895))

(assert (not d!119905))

(assert (not b!1009791))

(assert (not b!1010045))

(assert (not b!1009976))

(assert (not d!119911))

(assert (not bm!42391))

(assert (not bm!42400))

(assert (not b!1009904))

(assert (not b!1009926))

(assert (not b!1009931))

(assert (not d!119901))

(assert (not d!119933))

(check-sat)

(pop 1)

(push 1)

(check-sat)

