; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31656 () Bool)

(assert start!31656)

(declare-fun b!316333 () Bool)

(declare-fun res!171429 () Bool)

(declare-fun e!196768 () Bool)

(assert (=> b!316333 (=> (not res!171429) (not e!196768))))

(declare-datatypes ((array!16127 0))(
  ( (array!16128 (arr!7630 (Array (_ BitVec 32) (_ BitVec 64))) (size!7982 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16127)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16127 (_ BitVec 32)) Bool)

(assert (=> b!316333 (= res!171429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!316334 () Bool)

(declare-fun res!171432 () Bool)

(assert (=> b!316334 (=> (not res!171432) (not e!196768))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16127 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!316334 (= res!171432 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun res!171425 () Bool)

(assert (=> start!31656 (=> (not res!171425) (not e!196768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31656 (= res!171425 (validMask!0 mask!3709))))

(assert (=> start!31656 e!196768))

(declare-fun array_inv!5584 (array!16127) Bool)

(assert (=> start!31656 (array_inv!5584 a!3293)))

(assert (=> start!31656 true))

(declare-fun b!316335 () Bool)

(declare-fun e!196766 () Bool)

(assert (=> b!316335 (= e!196768 e!196766)))

(declare-fun res!171430 () Bool)

(assert (=> b!316335 (=> (not res!171430) (not e!196766))))

(declare-datatypes ((SeekEntryResult!2781 0))(
  ( (MissingZero!2781 (index!13300 (_ BitVec 32))) (Found!2781 (index!13301 (_ BitVec 32))) (Intermediate!2781 (undefined!3593 Bool) (index!13302 (_ BitVec 32)) (x!31519 (_ BitVec 32))) (Undefined!2781) (MissingVacant!2781 (index!13303 (_ BitVec 32))) )
))
(declare-fun lt!154567 () SeekEntryResult!2781)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16127 (_ BitVec 32)) SeekEntryResult!2781)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316335 (= res!171430 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154567))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!316335 (= lt!154567 (Intermediate!2781 false resIndex!52 resX!52))))

(declare-fun b!316336 () Bool)

(declare-fun res!171426 () Bool)

(assert (=> b!316336 (=> (not res!171426) (not e!196768))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16127 (_ BitVec 32)) SeekEntryResult!2781)

(assert (=> b!316336 (= res!171426 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2781 i!1240)))))

(declare-fun b!316337 () Bool)

(declare-fun res!171428 () Bool)

(assert (=> b!316337 (=> (not res!171428) (not e!196768))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!316337 (= res!171428 (validKeyInArray!0 k!2441))))

(declare-fun b!316338 () Bool)

(declare-fun e!196767 () Bool)

(assert (=> b!316338 (= e!196766 e!196767)))

(declare-fun res!171424 () Bool)

(assert (=> b!316338 (=> (not res!171424) (not e!196767))))

(declare-fun lt!154568 () SeekEntryResult!2781)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!316338 (= res!171424 (and (= lt!154568 lt!154567) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7630 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!316338 (= lt!154568 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!316339 () Bool)

(declare-fun res!171427 () Bool)

(assert (=> b!316339 (=> (not res!171427) (not e!196768))))

(assert (=> b!316339 (= res!171427 (and (= (size!7982 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7982 a!3293))))))

(declare-fun b!316340 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!316340 (= e!196767 (not (= lt!154568 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))))

(declare-fun b!316341 () Bool)

(declare-fun res!171431 () Bool)

(assert (=> b!316341 (=> (not res!171431) (not e!196766))))

(assert (=> b!316341 (= res!171431 (and (= (select (arr!7630 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7982 a!3293))))))

(assert (= (and start!31656 res!171425) b!316339))

(assert (= (and b!316339 res!171427) b!316337))

(assert (= (and b!316337 res!171428) b!316334))

(assert (= (and b!316334 res!171432) b!316336))

(assert (= (and b!316336 res!171426) b!316333))

(assert (= (and b!316333 res!171429) b!316335))

(assert (= (and b!316335 res!171430) b!316341))

(assert (= (and b!316341 res!171431) b!316338))

(assert (= (and b!316338 res!171424) b!316340))

(declare-fun m!325231 () Bool)

(assert (=> b!316338 m!325231))

(declare-fun m!325233 () Bool)

(assert (=> b!316338 m!325233))

(declare-fun m!325235 () Bool)

(assert (=> b!316334 m!325235))

(declare-fun m!325237 () Bool)

(assert (=> b!316333 m!325237))

(declare-fun m!325239 () Bool)

(assert (=> b!316335 m!325239))

(assert (=> b!316335 m!325239))

(declare-fun m!325241 () Bool)

(assert (=> b!316335 m!325241))

(declare-fun m!325243 () Bool)

(assert (=> b!316341 m!325243))

(declare-fun m!325245 () Bool)

(assert (=> b!316336 m!325245))

(declare-fun m!325247 () Bool)

(assert (=> start!31656 m!325247))

(declare-fun m!325249 () Bool)

(assert (=> start!31656 m!325249))

(declare-fun m!325251 () Bool)

(assert (=> b!316340 m!325251))

(assert (=> b!316340 m!325251))

(declare-fun m!325253 () Bool)

(assert (=> b!316340 m!325253))

(declare-fun m!325255 () Bool)

(assert (=> b!316337 m!325255))

(push 1)

(assert (not b!316334))

(assert (not b!316338))

(assert (not b!316337))

(assert (not start!31656))

(assert (not b!316335))

(assert (not b!316336))

(assert (not b!316340))

(assert (not b!316333))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!68917 () Bool)

(declare-fun lt!154612 () SeekEntryResult!2781)

(assert (=> d!68917 (and (or (is-Undefined!2781 lt!154612) (not (is-Found!2781 lt!154612)) (and (bvsge (index!13301 lt!154612) #b00000000000000000000000000000000) (bvslt (index!13301 lt!154612) (size!7982 a!3293)))) (or (is-Undefined!2781 lt!154612) (is-Found!2781 lt!154612) (not (is-MissingZero!2781 lt!154612)) (and (bvsge (index!13300 lt!154612) #b00000000000000000000000000000000) (bvslt (index!13300 lt!154612) (size!7982 a!3293)))) (or (is-Undefined!2781 lt!154612) (is-Found!2781 lt!154612) (is-MissingZero!2781 lt!154612) (not (is-MissingVacant!2781 lt!154612)) (and (bvsge (index!13303 lt!154612) #b00000000000000000000000000000000) (bvslt (index!13303 lt!154612) (size!7982 a!3293)))) (or (is-Undefined!2781 lt!154612) (ite (is-Found!2781 lt!154612) (= (select (arr!7630 a!3293) (index!13301 lt!154612)) k!2441) (ite (is-MissingZero!2781 lt!154612) (= (select (arr!7630 a!3293) (index!13300 lt!154612)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2781 lt!154612) (= (select (arr!7630 a!3293) (index!13303 lt!154612)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!196824 () SeekEntryResult!2781)

(assert (=> d!68917 (= lt!154612 e!196824)))

(declare-fun c!50095 () Bool)

(declare-fun lt!154613 () SeekEntryResult!2781)

(assert (=> d!68917 (= c!50095 (and (is-Intermediate!2781 lt!154613) (undefined!3593 lt!154613)))))

(assert (=> d!68917 (= lt!154613 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68917 (validMask!0 mask!3709)))

(assert (=> d!68917 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!154612)))

(declare-fun b!316446 () Bool)

(assert (=> b!316446 (= e!196824 Undefined!2781)))

(declare-fun b!316447 () Bool)

(declare-fun e!196823 () SeekEntryResult!2781)

(assert (=> b!316447 (= e!196824 e!196823)))

(declare-fun lt!154611 () (_ BitVec 64))

(assert (=> b!316447 (= lt!154611 (select (arr!7630 a!3293) (index!13302 lt!154613)))))

(declare-fun c!50094 () Bool)

(assert (=> b!316447 (= c!50094 (= lt!154611 k!2441))))

(declare-fun b!316448 () Bool)

(declare-fun e!196825 () SeekEntryResult!2781)

(assert (=> b!316448 (= e!196825 (MissingZero!2781 (index!13302 lt!154613)))))

(declare-fun b!316449 () Bool)

(assert (=> b!316449 (= e!196823 (Found!2781 (index!13302 lt!154613)))))

(declare-fun b!316450 () Bool)

(declare-fun c!50093 () Bool)

(assert (=> b!316450 (= c!50093 (= lt!154611 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316450 (= e!196823 e!196825)))

(declare-fun b!316451 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16127 (_ BitVec 32)) SeekEntryResult!2781)

(assert (=> b!316451 (= e!196825 (seekKeyOrZeroReturnVacant!0 (x!31519 lt!154613) (index!13302 lt!154613) (index!13302 lt!154613) k!2441 a!3293 mask!3709))))

(assert (= (and d!68917 c!50095) b!316446))

(assert (= (and d!68917 (not c!50095)) b!316447))

(assert (= (and b!316447 c!50094) b!316449))

(assert (= (and b!316447 (not c!50094)) b!316450))

(assert (= (and b!316450 c!50093) b!316448))

(assert (= (and b!316450 (not c!50093)) b!316451))

(assert (=> d!68917 m!325239))

(assert (=> d!68917 m!325241))

(declare-fun m!325333 () Bool)

(assert (=> d!68917 m!325333))

(assert (=> d!68917 m!325247))

(assert (=> d!68917 m!325239))

(declare-fun m!325339 () Bool)

(assert (=> d!68917 m!325339))

(declare-fun m!325341 () Bool)

(assert (=> d!68917 m!325341))

(declare-fun m!325345 () Bool)

(assert (=> b!316447 m!325345))

(declare-fun m!325349 () Bool)

(assert (=> b!316451 m!325349))

(assert (=> b!316336 d!68917))

(declare-fun b!316537 () Bool)

(declare-fun e!196875 () Bool)

(declare-fun e!196874 () Bool)

(assert (=> b!316537 (= e!196875 e!196874)))

(declare-fun res!171529 () Bool)

(declare-fun lt!154645 () SeekEntryResult!2781)

(assert (=> b!316537 (= res!171529 (and (is-Intermediate!2781 lt!154645) (not (undefined!3593 lt!154645)) (bvslt (x!31519 lt!154645) #b01111111111111111111111111111110) (bvsge (x!31519 lt!154645) #b00000000000000000000000000000000) (bvsge (x!31519 lt!154645) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!316537 (=> (not res!171529) (not e!196874))))

(declare-fun b!316538 () Bool)

(assert (=> b!316538 (and (bvsge (index!13302 lt!154645) #b00000000000000000000000000000000) (bvslt (index!13302 lt!154645) (size!7982 a!3293)))))

(declare-fun e!196876 () Bool)

(assert (=> b!316538 (= e!196876 (= (select (arr!7630 a!3293) (index!13302 lt!154645)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!196878 () SeekEntryResult!2781)

(declare-fun b!316539 () Bool)

(assert (=> b!316539 (= e!196878 (Intermediate!2781 true (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!316540 () Bool)

(declare-fun e!196877 () SeekEntryResult!2781)

(assert (=> b!316540 (= e!196878 e!196877)))

(declare-fun c!50124 () Bool)

(declare-fun lt!154644 () (_ BitVec 64))

(assert (=> b!316540 (= c!50124 (or (= lt!154644 k!2441) (= (bvadd lt!154644 lt!154644) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!316542 () Bool)

(assert (=> b!316542 (= e!196877 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!316543 () Bool)

(assert (=> b!316543 (and (bvsge (index!13302 lt!154645) #b00000000000000000000000000000000) (bvslt (index!13302 lt!154645) (size!7982 a!3293)))))

(declare-fun res!171527 () Bool)

(assert (=> b!316543 (= res!171527 (= (select (arr!7630 a!3293) (index!13302 lt!154645)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316543 (=> res!171527 e!196876)))

(declare-fun b!316544 () Bool)

(assert (=> b!316544 (and (bvsge (index!13302 lt!154645) #b00000000000000000000000000000000) (bvslt (index!13302 lt!154645) (size!7982 a!3293)))))

(declare-fun res!171528 () Bool)

(assert (=> b!316544 (= res!171528 (= (select (arr!7630 a!3293) (index!13302 lt!154645)) k!2441))))

(assert (=> b!316544 (=> res!171528 e!196876)))

(assert (=> b!316544 (= e!196874 e!196876)))

(declare-fun b!316545 () Bool)

(assert (=> b!316545 (= e!196875 (bvsge (x!31519 lt!154645) #b01111111111111111111111111111110))))

(declare-fun b!316541 () Bool)

(assert (=> b!316541 (= e!196877 (Intermediate!2781 false (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun d!68923 () Bool)

(assert (=> d!68923 e!196875))

(declare-fun c!50126 () Bool)

(assert (=> d!68923 (= c!50126 (and (is-Intermediate!2781 lt!154645) (undefined!3593 lt!154645)))))

(assert (=> d!68923 (= lt!154645 e!196878)))

(declare-fun c!50125 () Bool)

(assert (=> d!68923 (= c!50125 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(assert (=> d!68923 (= lt!154644 (select (arr!7630 a!3293) (nextIndex!0 index!1781 x!1427 mask!3709)))))

(assert (=> d!68923 (validMask!0 mask!3709)))

(assert (=> d!68923 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709) lt!154645)))

(assert (= (and d!68923 c!50125) b!316539))

(assert (= (and d!68923 (not c!50125)) b!316540))

(assert (= (and b!316540 c!50124) b!316541))

(assert (= (and b!316540 (not c!50124)) b!316542))

(assert (= (and d!68923 c!50126) b!316545))

(assert (= (and d!68923 (not c!50126)) b!316537))

(assert (= (and b!316537 res!171529) b!316544))

(assert (= (and b!316544 (not res!171528)) b!316543))

(assert (= (and b!316543 (not res!171527)) b!316538))

(declare-fun m!325375 () Bool)

(assert (=> b!316543 m!325375))

(assert (=> d!68923 m!325251))

(declare-fun m!325377 () Bool)

(assert (=> d!68923 m!325377))

(assert (=> d!68923 m!325247))

(assert (=> b!316542 m!325251))

(declare-fun m!325379 () Bool)

(assert (=> b!316542 m!325379))

(assert (=> b!316542 m!325379))

(declare-fun m!325381 () Bool)

(assert (=> b!316542 m!325381))

(assert (=> b!316538 m!325375))

(assert (=> b!316544 m!325375))

(assert (=> b!316340 d!68923))

(declare-fun d!68941 () Bool)

(declare-fun lt!154650 () (_ BitVec 32))

(assert (=> d!68941 (and (bvsge lt!154650 #b00000000000000000000000000000000) (bvslt lt!154650 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68941 (= lt!154650 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68941 (validMask!0 mask!3709)))

(assert (=> d!68941 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!154650)))

(declare-fun bs!11048 () Bool)

(assert (= bs!11048 d!68941))

(declare-fun m!325391 () Bool)

(assert (=> bs!11048 m!325391))

(assert (=> bs!11048 m!325247))

(assert (=> b!316340 d!68941))

(declare-fun b!316555 () Bool)

(declare-fun e!196885 () Bool)

(declare-fun e!196884 () Bool)

(assert (=> b!316555 (= e!196885 e!196884)))

(declare-fun res!171535 () Bool)

(declare-fun lt!154652 () SeekEntryResult!2781)

(assert (=> b!316555 (= res!171535 (and (is-Intermediate!2781 lt!154652) (not (undefined!3593 lt!154652)) (bvslt (x!31519 lt!154652) #b01111111111111111111111111111110) (bvsge (x!31519 lt!154652) #b00000000000000000000000000000000) (bvsge (x!31519 lt!154652) #b00000000000000000000000000000000)))))

(assert (=> b!316555 (=> (not res!171535) (not e!196884))))

(declare-fun b!316556 () Bool)

(assert (=> b!316556 (and (bvsge (index!13302 lt!154652) #b00000000000000000000000000000000) (bvslt (index!13302 lt!154652) (size!7982 a!3293)))))

(declare-fun e!196886 () Bool)

(assert (=> b!316556 (= e!196886 (= (select (arr!7630 a!3293) (index!13302 lt!154652)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!316557 () Bool)

(declare-fun e!196888 () SeekEntryResult!2781)

(assert (=> b!316557 (= e!196888 (Intermediate!2781 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!316558 () Bool)

(declare-fun e!196887 () SeekEntryResult!2781)

(assert (=> b!316558 (= e!196888 e!196887)))

(declare-fun c!50130 () Bool)

(declare-fun lt!154651 () (_ BitVec 64))

(assert (=> b!316558 (= c!50130 (or (= lt!154651 k!2441) (= (bvadd lt!154651 lt!154651) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!316560 () Bool)

(assert (=> b!316560 (= e!196887 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!316561 () Bool)

(assert (=> b!316561 (and (bvsge (index!13302 lt!154652) #b00000000000000000000000000000000) (bvslt (index!13302 lt!154652) (size!7982 a!3293)))))

(declare-fun res!171533 () Bool)

(assert (=> b!316561 (= res!171533 (= (select (arr!7630 a!3293) (index!13302 lt!154652)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316561 (=> res!171533 e!196886)))

(declare-fun b!316562 () Bool)

(assert (=> b!316562 (and (bvsge (index!13302 lt!154652) #b00000000000000000000000000000000) (bvslt (index!13302 lt!154652) (size!7982 a!3293)))))

(declare-fun res!171534 () Bool)

(assert (=> b!316562 (= res!171534 (= (select (arr!7630 a!3293) (index!13302 lt!154652)) k!2441))))

(assert (=> b!316562 (=> res!171534 e!196886)))

(assert (=> b!316562 (= e!196884 e!196886)))

(declare-fun b!316563 () Bool)

(assert (=> b!316563 (= e!196885 (bvsge (x!31519 lt!154652) #b01111111111111111111111111111110))))

(declare-fun b!316559 () Bool)

(assert (=> b!316559 (= e!196887 (Intermediate!2781 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun d!68945 () Bool)

(assert (=> d!68945 e!196885))

(declare-fun c!50132 () Bool)

(assert (=> d!68945 (= c!50132 (and (is-Intermediate!2781 lt!154652) (undefined!3593 lt!154652)))))

(assert (=> d!68945 (= lt!154652 e!196888)))

(declare-fun c!50131 () Bool)

(assert (=> d!68945 (= c!50131 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68945 (= lt!154651 (select (arr!7630 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68945 (validMask!0 mask!3709)))

(assert (=> d!68945 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!154652)))

(assert (= (and d!68945 c!50131) b!316557))

(assert (= (and d!68945 (not c!50131)) b!316558))

(assert (= (and b!316558 c!50130) b!316559))

(assert (= (and b!316558 (not c!50130)) b!316560))

(assert (= (and d!68945 c!50132) b!316563))

(assert (= (and d!68945 (not c!50132)) b!316555))

(assert (= (and b!316555 res!171535) b!316562))

(assert (= (and b!316562 (not res!171534)) b!316561))

(assert (= (and b!316561 (not res!171533)) b!316556))

(declare-fun m!325393 () Bool)

(assert (=> b!316561 m!325393))

(assert (=> d!68945 m!325239))

(declare-fun m!325397 () Bool)

(assert (=> d!68945 m!325397))

(assert (=> d!68945 m!325247))

(assert (=> b!316560 m!325239))

(declare-fun m!325399 () Bool)

(assert (=> b!316560 m!325399))

(assert (=> b!316560 m!325399))

(declare-fun m!325401 () Bool)

(assert (=> b!316560 m!325401))

(assert (=> b!316556 m!325393))

(assert (=> b!316562 m!325393))

(assert (=> b!316335 d!68945))

(declare-fun d!68949 () Bool)

(declare-fun lt!154665 () (_ BitVec 32))

(declare-fun lt!154664 () (_ BitVec 32))

(assert (=> d!68949 (= lt!154665 (bvmul (bvxor lt!154664 (bvlshr lt!154664 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68949 (= lt!154664 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68949 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!171539 (let ((h!5394 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31529 (bvmul (bvxor h!5394 (bvlshr h!5394 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31529 (bvlshr x!31529 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!171539 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!171539 #b00000000000000000000000000000000))))))

(assert (=> d!68949 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!154665 (bvlshr lt!154665 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!316335 d!68949))

(declare-fun b!316615 () Bool)

(declare-fun e!196922 () Bool)

(declare-fun call!26012 () Bool)

(assert (=> b!316615 (= e!196922 call!26012)))

(declare-fun bm!26009 () Bool)

(assert (=> bm!26009 (= call!26012 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!316616 () Bool)

(declare-fun e!196920 () Bool)

(assert (=> b!316616 (= e!196920 e!196922)))

(declare-fun lt!154687 () (_ BitVec 64))

(assert (=> b!316616 (= lt!154687 (select (arr!7630 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9779 0))(
  ( (Unit!9780) )
))
(declare-fun lt!154688 () Unit!9779)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16127 (_ BitVec 64) (_ BitVec 32)) Unit!9779)

(assert (=> b!316616 (= lt!154688 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!154687 #b00000000000000000000000000000000))))

(assert (=> b!316616 (arrayContainsKey!0 a!3293 lt!154687 #b00000000000000000000000000000000)))

(declare-fun lt!154689 () Unit!9779)

(assert (=> b!316616 (= lt!154689 lt!154688)))

(declare-fun res!171555 () Bool)

(assert (=> b!316616 (= res!171555 (= (seekEntryOrOpen!0 (select (arr!7630 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2781 #b00000000000000000000000000000000)))))

(assert (=> b!316616 (=> (not res!171555) (not e!196922))))

(declare-fun b!316617 () Bool)

(assert (=> b!316617 (= e!196920 call!26012)))

(declare-fun b!316614 () Bool)

(declare-fun e!196921 () Bool)

(assert (=> b!316614 (= e!196921 e!196920)))

(declare-fun c!50150 () Bool)

(assert (=> b!316614 (= c!50150 (validKeyInArray!0 (select (arr!7630 a!3293) #b00000000000000000000000000000000)))))

(declare-fun d!68957 () Bool)

(declare-fun res!171554 () Bool)

(assert (=> d!68957 (=> res!171554 e!196921)))

(assert (=> d!68957 (= res!171554 (bvsge #b00000000000000000000000000000000 (size!7982 a!3293)))))

(assert (=> d!68957 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!196921)))

(assert (= (and d!68957 (not res!171554)) b!316614))

(assert (= (and b!316614 c!50150) b!316616))

(assert (= (and b!316614 (not c!50150)) b!316617))

(assert (= (and b!316616 res!171555) b!316615))

(assert (= (or b!316615 b!316617) bm!26009))

(declare-fun m!325423 () Bool)

(assert (=> bm!26009 m!325423))

(declare-fun m!325427 () Bool)

(assert (=> b!316616 m!325427))

(declare-fun m!325429 () Bool)

(assert (=> b!316616 m!325429))

(declare-fun m!325431 () Bool)

(assert (=> b!316616 m!325431))

(assert (=> b!316616 m!325427))

(declare-fun m!325435 () Bool)

(assert (=> b!316616 m!325435))

(assert (=> b!316614 m!325427))

(assert (=> b!316614 m!325427))

(declare-fun m!325437 () Bool)

(assert (=> b!316614 m!325437))

(assert (=> b!316333 d!68957))

(declare-fun d!68963 () Bool)

(assert (=> d!68963 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31656 d!68963))

(declare-fun d!68969 () Bool)

(assert (=> d!68969 (= (array_inv!5584 a!3293) (bvsge (size!7982 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31656 d!68969))

(declare-fun d!68971 () Bool)

(declare-fun res!171566 () Bool)

(declare-fun e!196933 () Bool)

(assert (=> d!68971 (=> res!171566 e!196933)))

(assert (=> d!68971 (= res!171566 (= (select (arr!7630 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68971 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!196933)))

(declare-fun b!316628 () Bool)

(declare-fun e!196934 () Bool)

(assert (=> b!316628 (= e!196933 e!196934)))

(declare-fun res!171567 () Bool)

(assert (=> b!316628 (=> (not res!171567) (not e!196934))))

(assert (=> b!316628 (= res!171567 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7982 a!3293)))))

(declare-fun b!316629 () Bool)

(assert (=> b!316629 (= e!196934 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68971 (not res!171566)) b!316628))

(assert (= (and b!316628 res!171567) b!316629))

(assert (=> d!68971 m!325427))

(declare-fun m!325441 () Bool)

(assert (=> b!316629 m!325441))

(assert (=> b!316334 d!68971))

(declare-fun d!68975 () Bool)

(assert (=> d!68975 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!316337 d!68975))

(declare-fun b!316630 () Bool)

(declare-fun e!196936 () Bool)

(declare-fun e!196935 () Bool)

(assert (=> b!316630 (= e!196936 e!196935)))

(declare-fun res!171570 () Bool)

(declare-fun lt!154691 () SeekEntryResult!2781)

(assert (=> b!316630 (= res!171570 (and (is-Intermediate!2781 lt!154691) (not (undefined!3593 lt!154691)) (bvslt (x!31519 lt!154691) #b01111111111111111111111111111110) (bvsge (x!31519 lt!154691) #b00000000000000000000000000000000) (bvsge (x!31519 lt!154691) x!1427)))))

(assert (=> b!316630 (=> (not res!171570) (not e!196935))))

(declare-fun b!316631 () Bool)

(assert (=> b!316631 (and (bvsge (index!13302 lt!154691) #b00000000000000000000000000000000) (bvslt (index!13302 lt!154691) (size!7982 a!3293)))))

(declare-fun e!196937 () Bool)

(assert (=> b!316631 (= e!196937 (= (select (arr!7630 a!3293) (index!13302 lt!154691)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!316632 () Bool)

(declare-fun e!196939 () SeekEntryResult!2781)

(assert (=> b!316632 (= e!196939 (Intermediate!2781 true index!1781 x!1427))))

(declare-fun b!316633 () Bool)

(declare-fun e!196938 () SeekEntryResult!2781)

(assert (=> b!316633 (= e!196939 e!196938)))

(declare-fun c!50151 () Bool)

(declare-fun lt!154690 () (_ BitVec 64))

(assert (=> b!316633 (= c!50151 (or (= lt!154690 k!2441) (= (bvadd lt!154690 lt!154690) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!316635 () Bool)

(assert (=> b!316635 (= e!196938 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!316636 () Bool)

(assert (=> b!316636 (and (bvsge (index!13302 lt!154691) #b00000000000000000000000000000000) (bvslt (index!13302 lt!154691) (size!7982 a!3293)))))

(declare-fun res!171568 () Bool)

(assert (=> b!316636 (= res!171568 (= (select (arr!7630 a!3293) (index!13302 lt!154691)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!316636 (=> res!171568 e!196937)))

(declare-fun b!316637 () Bool)

(assert (=> b!316637 (and (bvsge (index!13302 lt!154691) #b00000000000000000000000000000000) (bvslt (index!13302 lt!154691) (size!7982 a!3293)))))

(declare-fun res!171569 () Bool)

(assert (=> b!316637 (= res!171569 (= (select (arr!7630 a!3293) (index!13302 lt!154691)) k!2441))))

(assert (=> b!316637 (=> res!171569 e!196937)))

(assert (=> b!316637 (= e!196935 e!196937)))

(declare-fun b!316638 () Bool)

(assert (=> b!316638 (= e!196936 (bvsge (x!31519 lt!154691) #b01111111111111111111111111111110))))

(declare-fun b!316634 () Bool)

(assert (=> b!316634 (= e!196938 (Intermediate!2781 false index!1781 x!1427))))

(declare-fun d!68977 () Bool)

(assert (=> d!68977 e!196936))

(declare-fun c!50153 () Bool)

(assert (=> d!68977 (= c!50153 (and (is-Intermediate!2781 lt!154691) (undefined!3593 lt!154691)))))

(assert (=> d!68977 (= lt!154691 e!196939)))

(declare-fun c!50152 () Bool)

(assert (=> d!68977 (= c!50152 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!68977 (= lt!154690 (select (arr!7630 a!3293) index!1781))))

(assert (=> d!68977 (validMask!0 mask!3709)))

(assert (=> d!68977 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!154691)))

(assert (= (and d!68977 c!50152) b!316632))

(assert (= (and d!68977 (not c!50152)) b!316633))

(assert (= (and b!316633 c!50151) b!316634))

(assert (= (and b!316633 (not c!50151)) b!316635))

(assert (= (and d!68977 c!50153) b!316638))

(assert (= (and d!68977 (not c!50153)) b!316630))

(assert (= (and b!316630 res!171570) b!316637))

(assert (= (and b!316637 (not res!171569)) b!316636))

(assert (= (and b!316636 (not res!171568)) b!316631))

(declare-fun m!325443 () Bool)

(assert (=> b!316636 m!325443))

(assert (=> d!68977 m!325231))

(assert (=> d!68977 m!325247))

(assert (=> b!316635 m!325251))

(assert (=> b!316635 m!325251))

(declare-fun m!325445 () Bool)

(assert (=> b!316635 m!325445))

(assert (=> b!316631 m!325443))

(assert (=> b!316637 m!325443))

(assert (=> b!316338 d!68977))

(push 1)

