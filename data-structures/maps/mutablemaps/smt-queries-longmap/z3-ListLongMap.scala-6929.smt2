; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87168 () Bool)

(assert start!87168)

(declare-fun b!1010384 () Bool)

(declare-fun res!678885 () Bool)

(declare-fun e!568450 () Bool)

(assert (=> b!1010384 (=> (not res!678885) (not e!568450))))

(declare-datatypes ((array!63630 0))(
  ( (array!63631 (arr!30629 (Array (_ BitVec 32) (_ BitVec 64))) (size!31132 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63630)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1010384 (= res!678885 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31132 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31132 a!3219))))))

(declare-fun b!1010385 () Bool)

(declare-fun e!568454 () Bool)

(declare-fun e!568448 () Bool)

(assert (=> b!1010385 (= e!568454 e!568448)))

(declare-fun res!678879 () Bool)

(assert (=> b!1010385 (=> (not res!678879) (not e!568448))))

(declare-fun lt!446578 () (_ BitVec 32))

(assert (=> b!1010385 (= res!678879 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!446578 #b00000000000000000000000000000000) (bvslt lt!446578 (size!31132 a!3219))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010385 (= lt!446578 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1010386 () Bool)

(declare-fun res!678887 () Bool)

(assert (=> b!1010386 (=> (not res!678887) (not e!568450))))

(declare-datatypes ((List!21431 0))(
  ( (Nil!21428) (Cons!21427 (h!22619 (_ BitVec 64)) (t!30440 List!21431)) )
))
(declare-fun arrayNoDuplicates!0 (array!63630 (_ BitVec 32) List!21431) Bool)

(assert (=> b!1010386 (= res!678887 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21428))))

(declare-fun b!1010387 () Bool)

(declare-fun res!678882 () Bool)

(declare-fun e!568451 () Bool)

(assert (=> b!1010387 (=> (not res!678882) (not e!568451))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1010387 (= res!678882 (validKeyInArray!0 k0!2224))))

(declare-fun b!1010388 () Bool)

(assert (=> b!1010388 (= e!568451 e!568450)))

(declare-fun res!678884 () Bool)

(assert (=> b!1010388 (=> (not res!678884) (not e!568450))))

(declare-datatypes ((SeekEntryResult!9561 0))(
  ( (MissingZero!9561 (index!40614 (_ BitVec 32))) (Found!9561 (index!40615 (_ BitVec 32))) (Intermediate!9561 (undefined!10373 Bool) (index!40616 (_ BitVec 32)) (x!88048 (_ BitVec 32))) (Undefined!9561) (MissingVacant!9561 (index!40617 (_ BitVec 32))) )
))
(declare-fun lt!446579 () SeekEntryResult!9561)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1010388 (= res!678884 (or (= lt!446579 (MissingVacant!9561 i!1194)) (= lt!446579 (MissingZero!9561 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63630 (_ BitVec 32)) SeekEntryResult!9561)

(assert (=> b!1010388 (= lt!446579 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1010389 () Bool)

(declare-fun e!568453 () Bool)

(assert (=> b!1010389 (= e!568453 e!568454)))

(declare-fun res!678890 () Bool)

(assert (=> b!1010389 (=> (not res!678890) (not e!568454))))

(declare-fun lt!446574 () array!63630)

(declare-fun lt!446577 () (_ BitVec 64))

(declare-fun lt!446576 () SeekEntryResult!9561)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63630 (_ BitVec 32)) SeekEntryResult!9561)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010389 (= res!678890 (not (= lt!446576 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446577 mask!3464) lt!446577 lt!446574 mask!3464))))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!1010389 (= lt!446577 (select (store (arr!30629 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1010389 (= lt!446574 (array!63631 (store (arr!30629 a!3219) i!1194 k0!2224) (size!31132 a!3219)))))

(declare-fun b!1010390 () Bool)

(declare-fun lt!446580 () SeekEntryResult!9561)

(assert (=> b!1010390 (= e!568448 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446578 (select (arr!30629 a!3219) j!170) a!3219 mask!3464) lt!446580)))))

(declare-fun b!1010392 () Bool)

(declare-fun res!678883 () Bool)

(assert (=> b!1010392 (=> (not res!678883) (not e!568451))))

(assert (=> b!1010392 (= res!678883 (validKeyInArray!0 (select (arr!30629 a!3219) j!170)))))

(declare-fun b!1010393 () Bool)

(declare-fun res!678881 () Bool)

(assert (=> b!1010393 (=> (not res!678881) (not e!568451))))

(declare-fun arrayContainsKey!0 (array!63630 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1010393 (= res!678881 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1010394 () Bool)

(declare-fun res!678891 () Bool)

(assert (=> b!1010394 (=> (not res!678891) (not e!568451))))

(assert (=> b!1010394 (= res!678891 (and (= (size!31132 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31132 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31132 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1010395 () Bool)

(declare-fun res!678892 () Bool)

(assert (=> b!1010395 (=> (not res!678892) (not e!568450))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63630 (_ BitVec 32)) Bool)

(assert (=> b!1010395 (= res!678892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1010396 () Bool)

(declare-fun res!678886 () Bool)

(assert (=> b!1010396 (=> (not res!678886) (not e!568454))))

(assert (=> b!1010396 (= res!678886 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun res!678878 () Bool)

(assert (=> start!87168 (=> (not res!678878) (not e!568451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87168 (= res!678878 (validMask!0 mask!3464))))

(assert (=> start!87168 e!568451))

(declare-fun array_inv!23619 (array!63630) Bool)

(assert (=> start!87168 (array_inv!23619 a!3219)))

(assert (=> start!87168 true))

(declare-fun b!1010391 () Bool)

(declare-fun e!568449 () Bool)

(assert (=> b!1010391 (= e!568449 e!568453)))

(declare-fun res!678880 () Bool)

(assert (=> b!1010391 (=> (not res!678880) (not e!568453))))

(declare-fun lt!446575 () SeekEntryResult!9561)

(assert (=> b!1010391 (= res!678880 (= lt!446575 lt!446580))))

(assert (=> b!1010391 (= lt!446575 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30629 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010397 () Bool)

(assert (=> b!1010397 (= e!568450 e!568449)))

(declare-fun res!678888 () Bool)

(assert (=> b!1010397 (=> (not res!678888) (not e!568449))))

(assert (=> b!1010397 (= res!678888 (= lt!446576 lt!446580))))

(assert (=> b!1010397 (= lt!446580 (Intermediate!9561 false resIndex!38 resX!38))))

(assert (=> b!1010397 (= lt!446576 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30629 a!3219) j!170) mask!3464) (select (arr!30629 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010398 () Bool)

(declare-fun res!678889 () Bool)

(assert (=> b!1010398 (=> (not res!678889) (not e!568454))))

(assert (=> b!1010398 (= res!678889 (not (= lt!446575 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446577 lt!446574 mask!3464))))))

(assert (= (and start!87168 res!678878) b!1010394))

(assert (= (and b!1010394 res!678891) b!1010392))

(assert (= (and b!1010392 res!678883) b!1010387))

(assert (= (and b!1010387 res!678882) b!1010393))

(assert (= (and b!1010393 res!678881) b!1010388))

(assert (= (and b!1010388 res!678884) b!1010395))

(assert (= (and b!1010395 res!678892) b!1010386))

(assert (= (and b!1010386 res!678887) b!1010384))

(assert (= (and b!1010384 res!678885) b!1010397))

(assert (= (and b!1010397 res!678888) b!1010391))

(assert (= (and b!1010391 res!678880) b!1010389))

(assert (= (and b!1010389 res!678890) b!1010398))

(assert (= (and b!1010398 res!678889) b!1010396))

(assert (= (and b!1010396 res!678886) b!1010385))

(assert (= (and b!1010385 res!678879) b!1010390))

(declare-fun m!934829 () Bool)

(assert (=> b!1010389 m!934829))

(assert (=> b!1010389 m!934829))

(declare-fun m!934831 () Bool)

(assert (=> b!1010389 m!934831))

(declare-fun m!934833 () Bool)

(assert (=> b!1010389 m!934833))

(declare-fun m!934835 () Bool)

(assert (=> b!1010389 m!934835))

(declare-fun m!934837 () Bool)

(assert (=> b!1010392 m!934837))

(assert (=> b!1010392 m!934837))

(declare-fun m!934839 () Bool)

(assert (=> b!1010392 m!934839))

(declare-fun m!934841 () Bool)

(assert (=> b!1010398 m!934841))

(declare-fun m!934843 () Bool)

(assert (=> b!1010385 m!934843))

(assert (=> b!1010390 m!934837))

(assert (=> b!1010390 m!934837))

(declare-fun m!934845 () Bool)

(assert (=> b!1010390 m!934845))

(declare-fun m!934847 () Bool)

(assert (=> b!1010387 m!934847))

(declare-fun m!934849 () Bool)

(assert (=> start!87168 m!934849))

(declare-fun m!934851 () Bool)

(assert (=> start!87168 m!934851))

(declare-fun m!934853 () Bool)

(assert (=> b!1010386 m!934853))

(declare-fun m!934855 () Bool)

(assert (=> b!1010395 m!934855))

(declare-fun m!934857 () Bool)

(assert (=> b!1010388 m!934857))

(assert (=> b!1010397 m!934837))

(assert (=> b!1010397 m!934837))

(declare-fun m!934859 () Bool)

(assert (=> b!1010397 m!934859))

(assert (=> b!1010397 m!934859))

(assert (=> b!1010397 m!934837))

(declare-fun m!934861 () Bool)

(assert (=> b!1010397 m!934861))

(assert (=> b!1010391 m!934837))

(assert (=> b!1010391 m!934837))

(declare-fun m!934863 () Bool)

(assert (=> b!1010391 m!934863))

(declare-fun m!934865 () Bool)

(assert (=> b!1010393 m!934865))

(check-sat (not start!87168) (not b!1010385) (not b!1010397) (not b!1010388) (not b!1010389) (not b!1010398) (not b!1010393) (not b!1010386) (not b!1010390) (not b!1010387) (not b!1010392) (not b!1010395) (not b!1010391))
(check-sat)
(get-model)

(declare-fun d!119961 () Bool)

(declare-fun e!568487 () Bool)

(assert (=> d!119961 e!568487))

(declare-fun c!101921 () Bool)

(declare-fun lt!446607 () SeekEntryResult!9561)

(get-info :version)

(assert (=> d!119961 (= c!101921 (and ((_ is Intermediate!9561) lt!446607) (undefined!10373 lt!446607)))))

(declare-fun e!568488 () SeekEntryResult!9561)

(assert (=> d!119961 (= lt!446607 e!568488)))

(declare-fun c!101922 () Bool)

(assert (=> d!119961 (= c!101922 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!446606 () (_ BitVec 64))

(assert (=> d!119961 (= lt!446606 (select (arr!30629 lt!446574) (toIndex!0 lt!446577 mask!3464)))))

(assert (=> d!119961 (validMask!0 mask!3464)))

(assert (=> d!119961 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446577 mask!3464) lt!446577 lt!446574 mask!3464) lt!446607)))

(declare-fun b!1010462 () Bool)

(assert (=> b!1010462 (and (bvsge (index!40616 lt!446607) #b00000000000000000000000000000000) (bvslt (index!40616 lt!446607) (size!31132 lt!446574)))))

(declare-fun res!678944 () Bool)

(assert (=> b!1010462 (= res!678944 (= (select (arr!30629 lt!446574) (index!40616 lt!446607)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568489 () Bool)

(assert (=> b!1010462 (=> res!678944 e!568489)))

(declare-fun b!1010463 () Bool)

(declare-fun e!568490 () SeekEntryResult!9561)

(assert (=> b!1010463 (= e!568488 e!568490)))

(declare-fun c!101920 () Bool)

(assert (=> b!1010463 (= c!101920 (or (= lt!446606 lt!446577) (= (bvadd lt!446606 lt!446606) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1010464 () Bool)

(assert (=> b!1010464 (and (bvsge (index!40616 lt!446607) #b00000000000000000000000000000000) (bvslt (index!40616 lt!446607) (size!31132 lt!446574)))))

(declare-fun res!678946 () Bool)

(assert (=> b!1010464 (= res!678946 (= (select (arr!30629 lt!446574) (index!40616 lt!446607)) lt!446577))))

(assert (=> b!1010464 (=> res!678946 e!568489)))

(declare-fun e!568486 () Bool)

(assert (=> b!1010464 (= e!568486 e!568489)))

(declare-fun b!1010465 () Bool)

(assert (=> b!1010465 (= e!568487 (bvsge (x!88048 lt!446607) #b01111111111111111111111111111110))))

(declare-fun b!1010466 () Bool)

(assert (=> b!1010466 (= e!568487 e!568486)))

(declare-fun res!678945 () Bool)

(assert (=> b!1010466 (= res!678945 (and ((_ is Intermediate!9561) lt!446607) (not (undefined!10373 lt!446607)) (bvslt (x!88048 lt!446607) #b01111111111111111111111111111110) (bvsge (x!88048 lt!446607) #b00000000000000000000000000000000) (bvsge (x!88048 lt!446607) #b00000000000000000000000000000000)))))

(assert (=> b!1010466 (=> (not res!678945) (not e!568486))))

(declare-fun b!1010467 () Bool)

(assert (=> b!1010467 (= e!568490 (Intermediate!9561 false (toIndex!0 lt!446577 mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1010468 () Bool)

(assert (=> b!1010468 (and (bvsge (index!40616 lt!446607) #b00000000000000000000000000000000) (bvslt (index!40616 lt!446607) (size!31132 lt!446574)))))

(assert (=> b!1010468 (= e!568489 (= (select (arr!30629 lt!446574) (index!40616 lt!446607)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1010469 () Bool)

(assert (=> b!1010469 (= e!568490 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!446577 mask!3464) #b00000000000000000000000000000000 mask!3464) lt!446577 lt!446574 mask!3464))))

(declare-fun b!1010470 () Bool)

(assert (=> b!1010470 (= e!568488 (Intermediate!9561 true (toIndex!0 lt!446577 mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!119961 c!101922) b!1010470))

(assert (= (and d!119961 (not c!101922)) b!1010463))

(assert (= (and b!1010463 c!101920) b!1010467))

(assert (= (and b!1010463 (not c!101920)) b!1010469))

(assert (= (and d!119961 c!101921) b!1010465))

(assert (= (and d!119961 (not c!101921)) b!1010466))

(assert (= (and b!1010466 res!678945) b!1010464))

(assert (= (and b!1010464 (not res!678946)) b!1010462))

(assert (= (and b!1010462 (not res!678944)) b!1010468))

(declare-fun m!934905 () Bool)

(assert (=> b!1010464 m!934905))

(assert (=> d!119961 m!934829))

(declare-fun m!934907 () Bool)

(assert (=> d!119961 m!934907))

(assert (=> d!119961 m!934849))

(assert (=> b!1010468 m!934905))

(assert (=> b!1010469 m!934829))

(declare-fun m!934909 () Bool)

(assert (=> b!1010469 m!934909))

(assert (=> b!1010469 m!934909))

(declare-fun m!934911 () Bool)

(assert (=> b!1010469 m!934911))

(assert (=> b!1010462 m!934905))

(assert (=> b!1010389 d!119961))

(declare-fun d!119963 () Bool)

(declare-fun lt!446613 () (_ BitVec 32))

(declare-fun lt!446612 () (_ BitVec 32))

(assert (=> d!119963 (= lt!446613 (bvmul (bvxor lt!446612 (bvlshr lt!446612 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119963 (= lt!446612 ((_ extract 31 0) (bvand (bvxor lt!446577 (bvlshr lt!446577 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119963 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!678947 (let ((h!22621 ((_ extract 31 0) (bvand (bvxor lt!446577 (bvlshr lt!446577 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88051 (bvmul (bvxor h!22621 (bvlshr h!22621 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88051 (bvlshr x!88051 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!678947 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!678947 #b00000000000000000000000000000000))))))

(assert (=> d!119963 (= (toIndex!0 lt!446577 mask!3464) (bvand (bvxor lt!446613 (bvlshr lt!446613 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1010389 d!119963))

(declare-fun d!119965 () Bool)

(assert (=> d!119965 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1010387 d!119965))

(declare-fun d!119967 () Bool)

(declare-fun e!568492 () Bool)

(assert (=> d!119967 e!568492))

(declare-fun c!101924 () Bool)

(declare-fun lt!446615 () SeekEntryResult!9561)

(assert (=> d!119967 (= c!101924 (and ((_ is Intermediate!9561) lt!446615) (undefined!10373 lt!446615)))))

(declare-fun e!568493 () SeekEntryResult!9561)

(assert (=> d!119967 (= lt!446615 e!568493)))

(declare-fun c!101925 () Bool)

(assert (=> d!119967 (= c!101925 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!446614 () (_ BitVec 64))

(assert (=> d!119967 (= lt!446614 (select (arr!30629 lt!446574) index!1507))))

(assert (=> d!119967 (validMask!0 mask!3464)))

(assert (=> d!119967 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446577 lt!446574 mask!3464) lt!446615)))

(declare-fun b!1010471 () Bool)

(assert (=> b!1010471 (and (bvsge (index!40616 lt!446615) #b00000000000000000000000000000000) (bvslt (index!40616 lt!446615) (size!31132 lt!446574)))))

(declare-fun res!678948 () Bool)

(assert (=> b!1010471 (= res!678948 (= (select (arr!30629 lt!446574) (index!40616 lt!446615)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568494 () Bool)

(assert (=> b!1010471 (=> res!678948 e!568494)))

(declare-fun b!1010472 () Bool)

(declare-fun e!568495 () SeekEntryResult!9561)

(assert (=> b!1010472 (= e!568493 e!568495)))

(declare-fun c!101923 () Bool)

(assert (=> b!1010472 (= c!101923 (or (= lt!446614 lt!446577) (= (bvadd lt!446614 lt!446614) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1010473 () Bool)

(assert (=> b!1010473 (and (bvsge (index!40616 lt!446615) #b00000000000000000000000000000000) (bvslt (index!40616 lt!446615) (size!31132 lt!446574)))))

(declare-fun res!678950 () Bool)

(assert (=> b!1010473 (= res!678950 (= (select (arr!30629 lt!446574) (index!40616 lt!446615)) lt!446577))))

(assert (=> b!1010473 (=> res!678950 e!568494)))

(declare-fun e!568491 () Bool)

(assert (=> b!1010473 (= e!568491 e!568494)))

(declare-fun b!1010474 () Bool)

(assert (=> b!1010474 (= e!568492 (bvsge (x!88048 lt!446615) #b01111111111111111111111111111110))))

(declare-fun b!1010475 () Bool)

(assert (=> b!1010475 (= e!568492 e!568491)))

(declare-fun res!678949 () Bool)

(assert (=> b!1010475 (= res!678949 (and ((_ is Intermediate!9561) lt!446615) (not (undefined!10373 lt!446615)) (bvslt (x!88048 lt!446615) #b01111111111111111111111111111110) (bvsge (x!88048 lt!446615) #b00000000000000000000000000000000) (bvsge (x!88048 lt!446615) x!1245)))))

(assert (=> b!1010475 (=> (not res!678949) (not e!568491))))

(declare-fun b!1010476 () Bool)

(assert (=> b!1010476 (= e!568495 (Intermediate!9561 false index!1507 x!1245))))

(declare-fun b!1010477 () Bool)

(assert (=> b!1010477 (and (bvsge (index!40616 lt!446615) #b00000000000000000000000000000000) (bvslt (index!40616 lt!446615) (size!31132 lt!446574)))))

(assert (=> b!1010477 (= e!568494 (= (select (arr!30629 lt!446574) (index!40616 lt!446615)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1010478 () Bool)

(assert (=> b!1010478 (= e!568495 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) lt!446577 lt!446574 mask!3464))))

(declare-fun b!1010479 () Bool)

(assert (=> b!1010479 (= e!568493 (Intermediate!9561 true index!1507 x!1245))))

(assert (= (and d!119967 c!101925) b!1010479))

(assert (= (and d!119967 (not c!101925)) b!1010472))

(assert (= (and b!1010472 c!101923) b!1010476))

(assert (= (and b!1010472 (not c!101923)) b!1010478))

(assert (= (and d!119967 c!101924) b!1010474))

(assert (= (and d!119967 (not c!101924)) b!1010475))

(assert (= (and b!1010475 res!678949) b!1010473))

(assert (= (and b!1010473 (not res!678950)) b!1010471))

(assert (= (and b!1010471 (not res!678948)) b!1010477))

(declare-fun m!934913 () Bool)

(assert (=> b!1010473 m!934913))

(declare-fun m!934915 () Bool)

(assert (=> d!119967 m!934915))

(assert (=> d!119967 m!934849))

(assert (=> b!1010477 m!934913))

(assert (=> b!1010478 m!934843))

(assert (=> b!1010478 m!934843))

(declare-fun m!934917 () Bool)

(assert (=> b!1010478 m!934917))

(assert (=> b!1010471 m!934913))

(assert (=> b!1010398 d!119967))

(declare-fun b!1010492 () Bool)

(declare-fun e!568502 () SeekEntryResult!9561)

(declare-fun e!568504 () SeekEntryResult!9561)

(assert (=> b!1010492 (= e!568502 e!568504)))

(declare-fun lt!446626 () (_ BitVec 64))

(declare-fun lt!446625 () SeekEntryResult!9561)

(assert (=> b!1010492 (= lt!446626 (select (arr!30629 a!3219) (index!40616 lt!446625)))))

(declare-fun c!101934 () Bool)

(assert (=> b!1010492 (= c!101934 (= lt!446626 k0!2224))))

(declare-fun d!119969 () Bool)

(declare-fun lt!446627 () SeekEntryResult!9561)

(assert (=> d!119969 (and (or ((_ is Undefined!9561) lt!446627) (not ((_ is Found!9561) lt!446627)) (and (bvsge (index!40615 lt!446627) #b00000000000000000000000000000000) (bvslt (index!40615 lt!446627) (size!31132 a!3219)))) (or ((_ is Undefined!9561) lt!446627) ((_ is Found!9561) lt!446627) (not ((_ is MissingZero!9561) lt!446627)) (and (bvsge (index!40614 lt!446627) #b00000000000000000000000000000000) (bvslt (index!40614 lt!446627) (size!31132 a!3219)))) (or ((_ is Undefined!9561) lt!446627) ((_ is Found!9561) lt!446627) ((_ is MissingZero!9561) lt!446627) (not ((_ is MissingVacant!9561) lt!446627)) (and (bvsge (index!40617 lt!446627) #b00000000000000000000000000000000) (bvslt (index!40617 lt!446627) (size!31132 a!3219)))) (or ((_ is Undefined!9561) lt!446627) (ite ((_ is Found!9561) lt!446627) (= (select (arr!30629 a!3219) (index!40615 lt!446627)) k0!2224) (ite ((_ is MissingZero!9561) lt!446627) (= (select (arr!30629 a!3219) (index!40614 lt!446627)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9561) lt!446627) (= (select (arr!30629 a!3219) (index!40617 lt!446627)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!119969 (= lt!446627 e!568502)))

(declare-fun c!101932 () Bool)

(assert (=> d!119969 (= c!101932 (and ((_ is Intermediate!9561) lt!446625) (undefined!10373 lt!446625)))))

(assert (=> d!119969 (= lt!446625 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464))))

(assert (=> d!119969 (validMask!0 mask!3464)))

(assert (=> d!119969 (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) lt!446627)))

(declare-fun b!1010493 () Bool)

(assert (=> b!1010493 (= e!568502 Undefined!9561)))

(declare-fun b!1010494 () Bool)

(declare-fun e!568503 () SeekEntryResult!9561)

(assert (=> b!1010494 (= e!568503 (MissingZero!9561 (index!40616 lt!446625)))))

(declare-fun b!1010495 () Bool)

(declare-fun c!101933 () Bool)

(assert (=> b!1010495 (= c!101933 (= lt!446626 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1010495 (= e!568504 e!568503)))

(declare-fun b!1010496 () Bool)

(assert (=> b!1010496 (= e!568504 (Found!9561 (index!40616 lt!446625)))))

(declare-fun b!1010497 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63630 (_ BitVec 32)) SeekEntryResult!9561)

(assert (=> b!1010497 (= e!568503 (seekKeyOrZeroReturnVacant!0 (x!88048 lt!446625) (index!40616 lt!446625) (index!40616 lt!446625) k0!2224 a!3219 mask!3464))))

(assert (= (and d!119969 c!101932) b!1010493))

(assert (= (and d!119969 (not c!101932)) b!1010492))

(assert (= (and b!1010492 c!101934) b!1010496))

(assert (= (and b!1010492 (not c!101934)) b!1010495))

(assert (= (and b!1010495 c!101933) b!1010494))

(assert (= (and b!1010495 (not c!101933)) b!1010497))

(declare-fun m!934921 () Bool)

(assert (=> b!1010492 m!934921))

(declare-fun m!934923 () Bool)

(assert (=> d!119969 m!934923))

(declare-fun m!934925 () Bool)

(assert (=> d!119969 m!934925))

(assert (=> d!119969 m!934925))

(declare-fun m!934927 () Bool)

(assert (=> d!119969 m!934927))

(declare-fun m!934929 () Bool)

(assert (=> d!119969 m!934929))

(declare-fun m!934931 () Bool)

(assert (=> d!119969 m!934931))

(assert (=> d!119969 m!934849))

(declare-fun m!934933 () Bool)

(assert (=> b!1010497 m!934933))

(assert (=> b!1010388 d!119969))

(declare-fun d!119977 () Bool)

(declare-fun e!568506 () Bool)

(assert (=> d!119977 e!568506))

(declare-fun c!101936 () Bool)

(declare-fun lt!446629 () SeekEntryResult!9561)

(assert (=> d!119977 (= c!101936 (and ((_ is Intermediate!9561) lt!446629) (undefined!10373 lt!446629)))))

(declare-fun e!568507 () SeekEntryResult!9561)

(assert (=> d!119977 (= lt!446629 e!568507)))

(declare-fun c!101937 () Bool)

(assert (=> d!119977 (= c!101937 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!446628 () (_ BitVec 64))

(assert (=> d!119977 (= lt!446628 (select (arr!30629 a!3219) index!1507))))

(assert (=> d!119977 (validMask!0 mask!3464)))

(assert (=> d!119977 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30629 a!3219) j!170) a!3219 mask!3464) lt!446629)))

(declare-fun b!1010498 () Bool)

(assert (=> b!1010498 (and (bvsge (index!40616 lt!446629) #b00000000000000000000000000000000) (bvslt (index!40616 lt!446629) (size!31132 a!3219)))))

(declare-fun res!678951 () Bool)

(assert (=> b!1010498 (= res!678951 (= (select (arr!30629 a!3219) (index!40616 lt!446629)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568508 () Bool)

(assert (=> b!1010498 (=> res!678951 e!568508)))

(declare-fun b!1010499 () Bool)

(declare-fun e!568509 () SeekEntryResult!9561)

(assert (=> b!1010499 (= e!568507 e!568509)))

(declare-fun c!101935 () Bool)

(assert (=> b!1010499 (= c!101935 (or (= lt!446628 (select (arr!30629 a!3219) j!170)) (= (bvadd lt!446628 lt!446628) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1010500 () Bool)

(assert (=> b!1010500 (and (bvsge (index!40616 lt!446629) #b00000000000000000000000000000000) (bvslt (index!40616 lt!446629) (size!31132 a!3219)))))

(declare-fun res!678953 () Bool)

(assert (=> b!1010500 (= res!678953 (= (select (arr!30629 a!3219) (index!40616 lt!446629)) (select (arr!30629 a!3219) j!170)))))

(assert (=> b!1010500 (=> res!678953 e!568508)))

(declare-fun e!568505 () Bool)

(assert (=> b!1010500 (= e!568505 e!568508)))

(declare-fun b!1010501 () Bool)

(assert (=> b!1010501 (= e!568506 (bvsge (x!88048 lt!446629) #b01111111111111111111111111111110))))

(declare-fun b!1010502 () Bool)

(assert (=> b!1010502 (= e!568506 e!568505)))

(declare-fun res!678952 () Bool)

(assert (=> b!1010502 (= res!678952 (and ((_ is Intermediate!9561) lt!446629) (not (undefined!10373 lt!446629)) (bvslt (x!88048 lt!446629) #b01111111111111111111111111111110) (bvsge (x!88048 lt!446629) #b00000000000000000000000000000000) (bvsge (x!88048 lt!446629) x!1245)))))

(assert (=> b!1010502 (=> (not res!678952) (not e!568505))))

(declare-fun b!1010503 () Bool)

(assert (=> b!1010503 (= e!568509 (Intermediate!9561 false index!1507 x!1245))))

(declare-fun b!1010504 () Bool)

(assert (=> b!1010504 (and (bvsge (index!40616 lt!446629) #b00000000000000000000000000000000) (bvslt (index!40616 lt!446629) (size!31132 a!3219)))))

(assert (=> b!1010504 (= e!568508 (= (select (arr!30629 a!3219) (index!40616 lt!446629)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1010505 () Bool)

(assert (=> b!1010505 (= e!568509 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30629 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010506 () Bool)

(assert (=> b!1010506 (= e!568507 (Intermediate!9561 true index!1507 x!1245))))

(assert (= (and d!119977 c!101937) b!1010506))

(assert (= (and d!119977 (not c!101937)) b!1010499))

(assert (= (and b!1010499 c!101935) b!1010503))

(assert (= (and b!1010499 (not c!101935)) b!1010505))

(assert (= (and d!119977 c!101936) b!1010501))

(assert (= (and d!119977 (not c!101936)) b!1010502))

(assert (= (and b!1010502 res!678952) b!1010500))

(assert (= (and b!1010500 (not res!678953)) b!1010498))

(assert (= (and b!1010498 (not res!678951)) b!1010504))

(declare-fun m!934935 () Bool)

(assert (=> b!1010500 m!934935))

(declare-fun m!934937 () Bool)

(assert (=> d!119977 m!934937))

(assert (=> d!119977 m!934849))

(assert (=> b!1010504 m!934935))

(assert (=> b!1010505 m!934843))

(assert (=> b!1010505 m!934843))

(assert (=> b!1010505 m!934837))

(declare-fun m!934939 () Bool)

(assert (=> b!1010505 m!934939))

(assert (=> b!1010498 m!934935))

(assert (=> b!1010391 d!119977))

(declare-fun d!119979 () Bool)

(assert (=> d!119979 (= (validKeyInArray!0 (select (arr!30629 a!3219) j!170)) (and (not (= (select (arr!30629 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30629 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1010392 d!119979))

(declare-fun d!119981 () Bool)

(declare-fun e!568511 () Bool)

(assert (=> d!119981 e!568511))

(declare-fun c!101939 () Bool)

(declare-fun lt!446631 () SeekEntryResult!9561)

(assert (=> d!119981 (= c!101939 (and ((_ is Intermediate!9561) lt!446631) (undefined!10373 lt!446631)))))

(declare-fun e!568512 () SeekEntryResult!9561)

(assert (=> d!119981 (= lt!446631 e!568512)))

(declare-fun c!101940 () Bool)

(assert (=> d!119981 (= c!101940 (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b01111111111111111111111111111110))))

(declare-fun lt!446630 () (_ BitVec 64))

(assert (=> d!119981 (= lt!446630 (select (arr!30629 a!3219) lt!446578))))

(assert (=> d!119981 (validMask!0 mask!3464)))

(assert (=> d!119981 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446578 (select (arr!30629 a!3219) j!170) a!3219 mask!3464) lt!446631)))

(declare-fun b!1010507 () Bool)

(assert (=> b!1010507 (and (bvsge (index!40616 lt!446631) #b00000000000000000000000000000000) (bvslt (index!40616 lt!446631) (size!31132 a!3219)))))

(declare-fun res!678954 () Bool)

(assert (=> b!1010507 (= res!678954 (= (select (arr!30629 a!3219) (index!40616 lt!446631)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568513 () Bool)

(assert (=> b!1010507 (=> res!678954 e!568513)))

(declare-fun b!1010508 () Bool)

(declare-fun e!568514 () SeekEntryResult!9561)

(assert (=> b!1010508 (= e!568512 e!568514)))

(declare-fun c!101938 () Bool)

(assert (=> b!1010508 (= c!101938 (or (= lt!446630 (select (arr!30629 a!3219) j!170)) (= (bvadd lt!446630 lt!446630) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1010509 () Bool)

(assert (=> b!1010509 (and (bvsge (index!40616 lt!446631) #b00000000000000000000000000000000) (bvslt (index!40616 lt!446631) (size!31132 a!3219)))))

(declare-fun res!678956 () Bool)

(assert (=> b!1010509 (= res!678956 (= (select (arr!30629 a!3219) (index!40616 lt!446631)) (select (arr!30629 a!3219) j!170)))))

(assert (=> b!1010509 (=> res!678956 e!568513)))

(declare-fun e!568510 () Bool)

(assert (=> b!1010509 (= e!568510 e!568513)))

(declare-fun b!1010510 () Bool)

(assert (=> b!1010510 (= e!568511 (bvsge (x!88048 lt!446631) #b01111111111111111111111111111110))))

(declare-fun b!1010511 () Bool)

(assert (=> b!1010511 (= e!568511 e!568510)))

(declare-fun res!678955 () Bool)

(assert (=> b!1010511 (= res!678955 (and ((_ is Intermediate!9561) lt!446631) (not (undefined!10373 lt!446631)) (bvslt (x!88048 lt!446631) #b01111111111111111111111111111110) (bvsge (x!88048 lt!446631) #b00000000000000000000000000000000) (bvsge (x!88048 lt!446631) (bvadd #b00000000000000000000000000000001 x!1245))))))

(assert (=> b!1010511 (=> (not res!678955) (not e!568510))))

(declare-fun b!1010512 () Bool)

(assert (=> b!1010512 (= e!568514 (Intermediate!9561 false lt!446578 (bvadd #b00000000000000000000000000000001 x!1245)))))

(declare-fun b!1010513 () Bool)

(assert (=> b!1010513 (and (bvsge (index!40616 lt!446631) #b00000000000000000000000000000000) (bvslt (index!40616 lt!446631) (size!31132 a!3219)))))

(assert (=> b!1010513 (= e!568513 (= (select (arr!30629 a!3219) (index!40616 lt!446631)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1010514 () Bool)

(assert (=> b!1010514 (= e!568514 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245 #b00000000000000000000000000000001) (nextIndex!0 lt!446578 (bvadd #b00000000000000000000000000000001 x!1245) mask!3464) (select (arr!30629 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010515 () Bool)

(assert (=> b!1010515 (= e!568512 (Intermediate!9561 true lt!446578 (bvadd #b00000000000000000000000000000001 x!1245)))))

(assert (= (and d!119981 c!101940) b!1010515))

(assert (= (and d!119981 (not c!101940)) b!1010508))

(assert (= (and b!1010508 c!101938) b!1010512))

(assert (= (and b!1010508 (not c!101938)) b!1010514))

(assert (= (and d!119981 c!101939) b!1010510))

(assert (= (and d!119981 (not c!101939)) b!1010511))

(assert (= (and b!1010511 res!678955) b!1010509))

(assert (= (and b!1010509 (not res!678956)) b!1010507))

(assert (= (and b!1010507 (not res!678954)) b!1010513))

(declare-fun m!934941 () Bool)

(assert (=> b!1010509 m!934941))

(declare-fun m!934943 () Bool)

(assert (=> d!119981 m!934943))

(assert (=> d!119981 m!934849))

(assert (=> b!1010513 m!934941))

(declare-fun m!934945 () Bool)

(assert (=> b!1010514 m!934945))

(assert (=> b!1010514 m!934945))

(assert (=> b!1010514 m!934837))

(declare-fun m!934947 () Bool)

(assert (=> b!1010514 m!934947))

(assert (=> b!1010507 m!934941))

(assert (=> b!1010390 d!119981))

(declare-fun d!119983 () Bool)

(assert (=> d!119983 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!87168 d!119983))

(declare-fun d!119985 () Bool)

(assert (=> d!119985 (= (array_inv!23619 a!3219) (bvsge (size!31132 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!87168 d!119985))

(declare-fun d!119987 () Bool)

(declare-fun res!678973 () Bool)

(declare-fun e!568539 () Bool)

(assert (=> d!119987 (=> res!678973 e!568539)))

(assert (=> d!119987 (= res!678973 (= (select (arr!30629 a!3219) #b00000000000000000000000000000000) k0!2224))))

(assert (=> d!119987 (= (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000) e!568539)))

(declare-fun b!1010556 () Bool)

(declare-fun e!568540 () Bool)

(assert (=> b!1010556 (= e!568539 e!568540)))

(declare-fun res!678974 () Bool)

(assert (=> b!1010556 (=> (not res!678974) (not e!568540))))

(assert (=> b!1010556 (= res!678974 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31132 a!3219)))))

(declare-fun b!1010557 () Bool)

(assert (=> b!1010557 (= e!568540 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119987 (not res!678973)) b!1010556))

(assert (= (and b!1010556 res!678974) b!1010557))

(declare-fun m!934949 () Bool)

(assert (=> d!119987 m!934949))

(declare-fun m!934951 () Bool)

(assert (=> b!1010557 m!934951))

(assert (=> b!1010393 d!119987))

(declare-fun b!1010595 () Bool)

(declare-fun e!568566 () Bool)

(declare-fun e!568567 () Bool)

(assert (=> b!1010595 (= e!568566 e!568567)))

(declare-fun res!678992 () Bool)

(assert (=> b!1010595 (=> (not res!678992) (not e!568567))))

(declare-fun e!568564 () Bool)

(assert (=> b!1010595 (= res!678992 (not e!568564))))

(declare-fun res!678991 () Bool)

(assert (=> b!1010595 (=> (not res!678991) (not e!568564))))

(assert (=> b!1010595 (= res!678991 (validKeyInArray!0 (select (arr!30629 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!119989 () Bool)

(declare-fun res!678993 () Bool)

(assert (=> d!119989 (=> res!678993 e!568566)))

(assert (=> d!119989 (= res!678993 (bvsge #b00000000000000000000000000000000 (size!31132 a!3219)))))

(assert (=> d!119989 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21428) e!568566)))

(declare-fun bm!42409 () Bool)

(declare-fun call!42412 () Bool)

(declare-fun c!101964 () Bool)

(assert (=> bm!42409 (= call!42412 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101964 (Cons!21427 (select (arr!30629 a!3219) #b00000000000000000000000000000000) Nil!21428) Nil!21428)))))

(declare-fun b!1010596 () Bool)

(declare-fun e!568565 () Bool)

(assert (=> b!1010596 (= e!568565 call!42412)))

(declare-fun b!1010597 () Bool)

(assert (=> b!1010597 (= e!568565 call!42412)))

(declare-fun b!1010598 () Bool)

(declare-fun contains!5903 (List!21431 (_ BitVec 64)) Bool)

(assert (=> b!1010598 (= e!568564 (contains!5903 Nil!21428 (select (arr!30629 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!1010599 () Bool)

(assert (=> b!1010599 (= e!568567 e!568565)))

(assert (=> b!1010599 (= c!101964 (validKeyInArray!0 (select (arr!30629 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119989 (not res!678993)) b!1010595))

(assert (= (and b!1010595 res!678991) b!1010598))

(assert (= (and b!1010595 res!678992) b!1010599))

(assert (= (and b!1010599 c!101964) b!1010597))

(assert (= (and b!1010599 (not c!101964)) b!1010596))

(assert (= (or b!1010597 b!1010596) bm!42409))

(assert (=> b!1010595 m!934949))

(assert (=> b!1010595 m!934949))

(declare-fun m!934975 () Bool)

(assert (=> b!1010595 m!934975))

(assert (=> bm!42409 m!934949))

(declare-fun m!934977 () Bool)

(assert (=> bm!42409 m!934977))

(assert (=> b!1010598 m!934949))

(assert (=> b!1010598 m!934949))

(declare-fun m!934979 () Bool)

(assert (=> b!1010598 m!934979))

(assert (=> b!1010599 m!934949))

(assert (=> b!1010599 m!934949))

(assert (=> b!1010599 m!934975))

(assert (=> b!1010386 d!119989))

(declare-fun d!119997 () Bool)

(declare-fun e!568575 () Bool)

(assert (=> d!119997 e!568575))

(declare-fun c!101968 () Bool)

(declare-fun lt!446657 () SeekEntryResult!9561)

(assert (=> d!119997 (= c!101968 (and ((_ is Intermediate!9561) lt!446657) (undefined!10373 lt!446657)))))

(declare-fun e!568576 () SeekEntryResult!9561)

(assert (=> d!119997 (= lt!446657 e!568576)))

(declare-fun c!101969 () Bool)

(assert (=> d!119997 (= c!101969 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!446656 () (_ BitVec 64))

(assert (=> d!119997 (= lt!446656 (select (arr!30629 a!3219) (toIndex!0 (select (arr!30629 a!3219) j!170) mask!3464)))))

(assert (=> d!119997 (validMask!0 mask!3464)))

(assert (=> d!119997 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30629 a!3219) j!170) mask!3464) (select (arr!30629 a!3219) j!170) a!3219 mask!3464) lt!446657)))

(declare-fun b!1010608 () Bool)

(assert (=> b!1010608 (and (bvsge (index!40616 lt!446657) #b00000000000000000000000000000000) (bvslt (index!40616 lt!446657) (size!31132 a!3219)))))

(declare-fun res!678998 () Bool)

(assert (=> b!1010608 (= res!678998 (= (select (arr!30629 a!3219) (index!40616 lt!446657)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!568577 () Bool)

(assert (=> b!1010608 (=> res!678998 e!568577)))

(declare-fun b!1010609 () Bool)

(declare-fun e!568578 () SeekEntryResult!9561)

(assert (=> b!1010609 (= e!568576 e!568578)))

(declare-fun c!101967 () Bool)

(assert (=> b!1010609 (= c!101967 (or (= lt!446656 (select (arr!30629 a!3219) j!170)) (= (bvadd lt!446656 lt!446656) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1010610 () Bool)

(assert (=> b!1010610 (and (bvsge (index!40616 lt!446657) #b00000000000000000000000000000000) (bvslt (index!40616 lt!446657) (size!31132 a!3219)))))

(declare-fun res!679000 () Bool)

(assert (=> b!1010610 (= res!679000 (= (select (arr!30629 a!3219) (index!40616 lt!446657)) (select (arr!30629 a!3219) j!170)))))

(assert (=> b!1010610 (=> res!679000 e!568577)))

(declare-fun e!568574 () Bool)

(assert (=> b!1010610 (= e!568574 e!568577)))

(declare-fun b!1010611 () Bool)

(assert (=> b!1010611 (= e!568575 (bvsge (x!88048 lt!446657) #b01111111111111111111111111111110))))

(declare-fun b!1010612 () Bool)

(assert (=> b!1010612 (= e!568575 e!568574)))

(declare-fun res!678999 () Bool)

(assert (=> b!1010612 (= res!678999 (and ((_ is Intermediate!9561) lt!446657) (not (undefined!10373 lt!446657)) (bvslt (x!88048 lt!446657) #b01111111111111111111111111111110) (bvsge (x!88048 lt!446657) #b00000000000000000000000000000000) (bvsge (x!88048 lt!446657) #b00000000000000000000000000000000)))))

(assert (=> b!1010612 (=> (not res!678999) (not e!568574))))

(declare-fun b!1010613 () Bool)

(assert (=> b!1010613 (= e!568578 (Intermediate!9561 false (toIndex!0 (select (arr!30629 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!1010614 () Bool)

(assert (=> b!1010614 (and (bvsge (index!40616 lt!446657) #b00000000000000000000000000000000) (bvslt (index!40616 lt!446657) (size!31132 a!3219)))))

(assert (=> b!1010614 (= e!568577 (= (select (arr!30629 a!3219) (index!40616 lt!446657)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1010615 () Bool)

(assert (=> b!1010615 (= e!568578 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30629 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30629 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010616 () Bool)

(assert (=> b!1010616 (= e!568576 (Intermediate!9561 true (toIndex!0 (select (arr!30629 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(assert (= (and d!119997 c!101969) b!1010616))

(assert (= (and d!119997 (not c!101969)) b!1010609))

(assert (= (and b!1010609 c!101967) b!1010613))

(assert (= (and b!1010609 (not c!101967)) b!1010615))

(assert (= (and d!119997 c!101968) b!1010611))

(assert (= (and d!119997 (not c!101968)) b!1010612))

(assert (= (and b!1010612 res!678999) b!1010610))

(assert (= (and b!1010610 (not res!679000)) b!1010608))

(assert (= (and b!1010608 (not res!678998)) b!1010614))

(declare-fun m!934981 () Bool)

(assert (=> b!1010610 m!934981))

(assert (=> d!119997 m!934859))

(declare-fun m!934983 () Bool)

(assert (=> d!119997 m!934983))

(assert (=> d!119997 m!934849))

(assert (=> b!1010614 m!934981))

(assert (=> b!1010615 m!934859))

(declare-fun m!934985 () Bool)

(assert (=> b!1010615 m!934985))

(assert (=> b!1010615 m!934985))

(assert (=> b!1010615 m!934837))

(declare-fun m!934987 () Bool)

(assert (=> b!1010615 m!934987))

(assert (=> b!1010608 m!934981))

(assert (=> b!1010397 d!119997))

(declare-fun d!120001 () Bool)

(declare-fun lt!446661 () (_ BitVec 32))

(declare-fun lt!446660 () (_ BitVec 32))

(assert (=> d!120001 (= lt!446661 (bvmul (bvxor lt!446660 (bvlshr lt!446660 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!120001 (= lt!446660 ((_ extract 31 0) (bvand (bvxor (select (arr!30629 a!3219) j!170) (bvlshr (select (arr!30629 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!120001 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!678947 (let ((h!22621 ((_ extract 31 0) (bvand (bvxor (select (arr!30629 a!3219) j!170) (bvlshr (select (arr!30629 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!88051 (bvmul (bvxor h!22621 (bvlshr h!22621 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!88051 (bvlshr x!88051 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!678947 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!678947 #b00000000000000000000000000000000))))))

(assert (=> d!120001 (= (toIndex!0 (select (arr!30629 a!3219) j!170) mask!3464) (bvand (bvxor lt!446661 (bvlshr lt!446661 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!1010397 d!120001))

(declare-fun b!1010663 () Bool)

(declare-fun e!568610 () Bool)

(declare-fun call!42421 () Bool)

(assert (=> b!1010663 (= e!568610 call!42421)))

(declare-fun bm!42418 () Bool)

(assert (=> bm!42418 (= call!42421 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!1010666 () Bool)

(declare-fun e!568611 () Bool)

(assert (=> b!1010666 (= e!568611 call!42421)))

(declare-fun b!1010668 () Bool)

(assert (=> b!1010668 (= e!568611 e!568610)))

(declare-fun lt!446692 () (_ BitVec 64))

(assert (=> b!1010668 (= lt!446692 (select (arr!30629 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32976 0))(
  ( (Unit!32977) )
))
(declare-fun lt!446694 () Unit!32976)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63630 (_ BitVec 64) (_ BitVec 32)) Unit!32976)

(assert (=> b!1010668 (= lt!446694 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!446692 #b00000000000000000000000000000000))))

(assert (=> b!1010668 (arrayContainsKey!0 a!3219 lt!446692 #b00000000000000000000000000000000)))

(declare-fun lt!446693 () Unit!32976)

(assert (=> b!1010668 (= lt!446693 lt!446694)))

(declare-fun res!679024 () Bool)

(assert (=> b!1010668 (= res!679024 (= (seekEntryOrOpen!0 (select (arr!30629 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9561 #b00000000000000000000000000000000)))))

(assert (=> b!1010668 (=> (not res!679024) (not e!568610))))

(declare-fun b!1010670 () Bool)

(declare-fun e!568614 () Bool)

(assert (=> b!1010670 (= e!568614 e!568611)))

(declare-fun c!101985 () Bool)

(assert (=> b!1010670 (= c!101985 (validKeyInArray!0 (select (arr!30629 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!120003 () Bool)

(declare-fun res!679022 () Bool)

(assert (=> d!120003 (=> res!679022 e!568614)))

(assert (=> d!120003 (= res!679022 (bvsge #b00000000000000000000000000000000 (size!31132 a!3219)))))

(assert (=> d!120003 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!568614)))

(assert (= (and d!120003 (not res!679022)) b!1010670))

(assert (= (and b!1010670 c!101985) b!1010668))

(assert (= (and b!1010670 (not c!101985)) b!1010666))

(assert (= (and b!1010668 res!679024) b!1010663))

(assert (= (or b!1010663 b!1010666) bm!42418))

(declare-fun m!935029 () Bool)

(assert (=> bm!42418 m!935029))

(assert (=> b!1010668 m!934949))

(declare-fun m!935031 () Bool)

(assert (=> b!1010668 m!935031))

(declare-fun m!935033 () Bool)

(assert (=> b!1010668 m!935033))

(assert (=> b!1010668 m!934949))

(declare-fun m!935035 () Bool)

(assert (=> b!1010668 m!935035))

(assert (=> b!1010670 m!934949))

(assert (=> b!1010670 m!934949))

(assert (=> b!1010670 m!934975))

(assert (=> b!1010395 d!120003))

(declare-fun d!120015 () Bool)

(declare-fun lt!446699 () (_ BitVec 32))

(assert (=> d!120015 (and (bvsge lt!446699 #b00000000000000000000000000000000) (bvslt lt!446699 (bvadd mask!3464 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!120015 (= lt!446699 (choose!52 index!1507 x!1245 mask!3464))))

(assert (=> d!120015 (validMask!0 mask!3464)))

(assert (=> d!120015 (= (nextIndex!0 index!1507 x!1245 mask!3464) lt!446699)))

(declare-fun bs!28722 () Bool)

(assert (= bs!28722 d!120015))

(declare-fun m!935045 () Bool)

(assert (=> bs!28722 m!935045))

(assert (=> bs!28722 m!934849))

(assert (=> b!1010385 d!120015))

(check-sat (not d!119997) (not d!120015) (not b!1010670) (not b!1010469) (not b!1010615) (not d!119967) (not b!1010598) (not bm!42418) (not d!119961) (not d!119981) (not d!119969) (not b!1010599) (not b!1010497) (not bm!42409) (not b!1010505) (not b!1010595) (not b!1010478) (not b!1010557) (not d!119977) (not b!1010668) (not b!1010514))
(check-sat)
