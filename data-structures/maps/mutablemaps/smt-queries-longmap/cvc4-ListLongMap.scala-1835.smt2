; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33232 () Bool)

(assert start!33232)

(declare-fun b!330303 () Bool)

(declare-fun res!182102 () Bool)

(declare-fun e!202748 () Bool)

(assert (=> b!330303 (=> (not res!182102) (not e!202748))))

(declare-datatypes ((array!16887 0))(
  ( (array!16888 (arr!7983 (Array (_ BitVec 32) (_ BitVec 64))) (size!8335 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16887)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3125 0))(
  ( (MissingZero!3125 (index!14676 (_ BitVec 32))) (Found!3125 (index!14677 (_ BitVec 32))) (Intermediate!3125 (undefined!3937 Bool) (index!14678 (_ BitVec 32)) (x!32919 (_ BitVec 32))) (Undefined!3125) (MissingVacant!3125 (index!14679 (_ BitVec 32))) )
))
(declare-fun lt!158486 () SeekEntryResult!3125)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16887 (_ BitVec 32)) SeekEntryResult!3125)

(assert (=> b!330303 (= res!182102 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158486))))

(declare-fun b!330304 () Bool)

(declare-datatypes ((Unit!10294 0))(
  ( (Unit!10295) )
))
(declare-fun e!202750 () Unit!10294)

(declare-fun Unit!10296 () Unit!10294)

(assert (=> b!330304 (= e!202750 Unit!10296)))

(assert (=> b!330304 false))

(declare-fun b!330305 () Bool)

(declare-fun e!202746 () Unit!10294)

(declare-fun Unit!10297 () Unit!10294)

(assert (=> b!330305 (= e!202746 Unit!10297)))

(declare-fun b!330306 () Bool)

(assert (=> b!330306 false))

(declare-fun lt!158484 () Unit!10294)

(assert (=> b!330306 (= lt!158484 e!202750)))

(declare-fun c!51746 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330306 (= c!51746 (is-Intermediate!3125 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun e!202747 () Unit!10294)

(declare-fun Unit!10298 () Unit!10294)

(assert (=> b!330306 (= e!202747 Unit!10298)))

(declare-fun b!330307 () Bool)

(declare-fun res!182109 () Bool)

(declare-fun e!202745 () Bool)

(assert (=> b!330307 (=> (not res!182109) (not e!202745))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16887 (_ BitVec 32)) Bool)

(assert (=> b!330307 (= res!182109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!330308 () Bool)

(declare-fun res!182104 () Bool)

(assert (=> b!330308 (=> (not res!182104) (not e!202748))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!330308 (= res!182104 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7983 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun res!182107 () Bool)

(assert (=> start!33232 (=> (not res!182107) (not e!202745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33232 (= res!182107 (validMask!0 mask!3777))))

(assert (=> start!33232 e!202745))

(declare-fun array_inv!5937 (array!16887) Bool)

(assert (=> start!33232 (array_inv!5937 a!3305)))

(assert (=> start!33232 true))

(declare-fun b!330309 () Bool)

(declare-fun res!182108 () Bool)

(assert (=> b!330309 (=> (not res!182108) (not e!202745))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!330309 (= res!182108 (and (= (size!8335 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8335 a!3305))))))

(declare-fun b!330310 () Bool)

(declare-fun res!182103 () Bool)

(assert (=> b!330310 (=> (not res!182103) (not e!202745))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!330310 (= res!182103 (validKeyInArray!0 k!2497))))

(declare-fun b!330311 () Bool)

(declare-fun res!182101 () Bool)

(assert (=> b!330311 (=> (not res!182101) (not e!202745))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16887 (_ BitVec 32)) SeekEntryResult!3125)

(assert (=> b!330311 (= res!182101 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3125 i!1250)))))

(declare-fun b!330312 () Bool)

(declare-fun res!182106 () Bool)

(assert (=> b!330312 (=> (not res!182106) (not e!202745))))

(declare-fun arrayContainsKey!0 (array!16887 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!330312 (= res!182106 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!330313 () Bool)

(declare-fun res!182105 () Bool)

(assert (=> b!330313 (=> (not res!182105) (not e!202748))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!330313 (= res!182105 (and (= (select (arr!7983 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8335 a!3305))))))

(declare-fun b!330314 () Bool)

(declare-fun Unit!10299 () Unit!10294)

(assert (=> b!330314 (= e!202750 Unit!10299)))

(declare-fun b!330315 () Bool)

(assert (=> b!330315 (= e!202745 e!202748)))

(declare-fun res!182100 () Bool)

(assert (=> b!330315 (=> (not res!182100) (not e!202748))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!330315 (= res!182100 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158486))))

(assert (=> b!330315 (= lt!158486 (Intermediate!3125 false resIndex!58 resX!58))))

(declare-fun b!330316 () Bool)

(assert (=> b!330316 (= e!202746 e!202747)))

(declare-fun c!51744 () Bool)

(assert (=> b!330316 (= c!51744 (or (= (select (arr!7983 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7983 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!330317 () Bool)

(assert (=> b!330317 (= e!202748 (not true))))

(assert (=> b!330317 (= index!1840 resIndex!58)))

(declare-fun lt!158485 () Unit!10294)

(assert (=> b!330317 (= lt!158485 e!202746)))

(declare-fun c!51745 () Bool)

(assert (=> b!330317 (= c!51745 (not (= resIndex!58 index!1840)))))

(declare-fun b!330318 () Bool)

(assert (=> b!330318 false))

(declare-fun Unit!10300 () Unit!10294)

(assert (=> b!330318 (= e!202747 Unit!10300)))

(assert (= (and start!33232 res!182107) b!330309))

(assert (= (and b!330309 res!182108) b!330310))

(assert (= (and b!330310 res!182103) b!330312))

(assert (= (and b!330312 res!182106) b!330311))

(assert (= (and b!330311 res!182101) b!330307))

(assert (= (and b!330307 res!182109) b!330315))

(assert (= (and b!330315 res!182100) b!330313))

(assert (= (and b!330313 res!182105) b!330303))

(assert (= (and b!330303 res!182102) b!330308))

(assert (= (and b!330308 res!182104) b!330317))

(assert (= (and b!330317 c!51745) b!330316))

(assert (= (and b!330317 (not c!51745)) b!330305))

(assert (= (and b!330316 c!51744) b!330318))

(assert (= (and b!330316 (not c!51744)) b!330306))

(assert (= (and b!330306 c!51746) b!330314))

(assert (= (and b!330306 (not c!51746)) b!330304))

(declare-fun m!335549 () Bool)

(assert (=> b!330313 m!335549))

(declare-fun m!335551 () Bool)

(assert (=> b!330307 m!335551))

(declare-fun m!335553 () Bool)

(assert (=> start!33232 m!335553))

(declare-fun m!335555 () Bool)

(assert (=> start!33232 m!335555))

(declare-fun m!335557 () Bool)

(assert (=> b!330311 m!335557))

(declare-fun m!335559 () Bool)

(assert (=> b!330308 m!335559))

(declare-fun m!335561 () Bool)

(assert (=> b!330303 m!335561))

(declare-fun m!335563 () Bool)

(assert (=> b!330306 m!335563))

(assert (=> b!330306 m!335563))

(declare-fun m!335565 () Bool)

(assert (=> b!330306 m!335565))

(declare-fun m!335567 () Bool)

(assert (=> b!330315 m!335567))

(assert (=> b!330315 m!335567))

(declare-fun m!335569 () Bool)

(assert (=> b!330315 m!335569))

(declare-fun m!335571 () Bool)

(assert (=> b!330312 m!335571))

(declare-fun m!335573 () Bool)

(assert (=> b!330310 m!335573))

(assert (=> b!330316 m!335559))

(push 1)

(assert (not b!330311))

