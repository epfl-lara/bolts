; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32422 () Bool)

(assert start!32422)

(declare-fun b!323337 () Bool)

(declare-datatypes ((Unit!10011 0))(
  ( (Unit!10012) )
))
(declare-fun e!199861 () Unit!10011)

(declare-fun Unit!10013 () Unit!10011)

(assert (=> b!323337 (= e!199861 Unit!10013)))

(declare-fun b!323338 () Bool)

(declare-fun e!199862 () Unit!10011)

(declare-fun e!199864 () Unit!10011)

(assert (=> b!323338 (= e!199862 e!199864)))

(declare-fun c!50799 () Bool)

(declare-datatypes ((array!16557 0))(
  ( (array!16558 (arr!7833 (Array (_ BitVec 32) (_ BitVec 64))) (size!8185 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16557)

(declare-fun index!1840 () (_ BitVec 32))

(assert (=> b!323338 (= c!50799 (or (= (select (arr!7833 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7833 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!323339 () Bool)

(assert (=> b!323339 false))

(declare-fun Unit!10014 () Unit!10011)

(assert (=> b!323339 (= e!199864 Unit!10014)))

(declare-fun b!323340 () Bool)

(declare-fun res!176997 () Bool)

(declare-fun e!199863 () Bool)

(assert (=> b!323340 (=> (not res!176997) (not e!199863))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323340 (= res!176997 (validKeyInArray!0 k!2497))))

(declare-fun b!323341 () Bool)

(declare-fun res!177000 () Bool)

(declare-fun e!199860 () Bool)

(assert (=> b!323341 (=> (not res!177000) (not e!199860))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!323341 (= res!177000 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7833 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!323342 () Bool)

(assert (=> b!323342 (= e!199860 (not true))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!323342 (= index!1840 resIndex!58)))

(declare-fun lt!156617 () Unit!10011)

(assert (=> b!323342 (= lt!156617 e!199862)))

(declare-fun c!50800 () Bool)

(assert (=> b!323342 (= c!50800 (not (= resIndex!58 index!1840)))))

(declare-fun b!323343 () Bool)

(declare-fun res!176999 () Bool)

(assert (=> b!323343 (=> (not res!176999) (not e!199863))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2975 0))(
  ( (MissingZero!2975 (index!14076 (_ BitVec 32))) (Found!2975 (index!14077 (_ BitVec 32))) (Intermediate!2975 (undefined!3787 Bool) (index!14078 (_ BitVec 32)) (x!32294 (_ BitVec 32))) (Undefined!2975) (MissingVacant!2975 (index!14079 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16557 (_ BitVec 32)) SeekEntryResult!2975)

(assert (=> b!323343 (= res!176999 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2975 i!1250)))))

(declare-fun b!323344 () Bool)

(declare-fun res!176996 () Bool)

(assert (=> b!323344 (=> (not res!176996) (not e!199863))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16557 (_ BitVec 32)) Bool)

(assert (=> b!323344 (= res!176996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323345 () Bool)

(declare-fun res!177001 () Bool)

(assert (=> b!323345 (=> (not res!177001) (not e!199860))))

(assert (=> b!323345 (= res!177001 (and (= (select (arr!7833 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8185 a!3305))))))

(declare-fun b!323346 () Bool)

(declare-fun res!176995 () Bool)

(assert (=> b!323346 (=> (not res!176995) (not e!199860))))

(declare-fun lt!156616 () SeekEntryResult!2975)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16557 (_ BitVec 32)) SeekEntryResult!2975)

(assert (=> b!323346 (= res!176995 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156616))))

(declare-fun b!323347 () Bool)

(declare-fun Unit!10015 () Unit!10011)

(assert (=> b!323347 (= e!199861 Unit!10015)))

(assert (=> b!323347 false))

(declare-fun res!176994 () Bool)

(assert (=> start!32422 (=> (not res!176994) (not e!199863))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32422 (= res!176994 (validMask!0 mask!3777))))

(assert (=> start!32422 e!199863))

(declare-fun array_inv!5787 (array!16557) Bool)

(assert (=> start!32422 (array_inv!5787 a!3305)))

(assert (=> start!32422 true))

(declare-fun b!323348 () Bool)

(assert (=> b!323348 (= e!199863 e!199860)))

(declare-fun res!176998 () Bool)

(assert (=> b!323348 (=> (not res!176998) (not e!199860))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323348 (= res!176998 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156616))))

(assert (=> b!323348 (= lt!156616 (Intermediate!2975 false resIndex!58 resX!58))))

(declare-fun b!323349 () Bool)

(declare-fun res!177002 () Bool)

(assert (=> b!323349 (=> (not res!177002) (not e!199863))))

(declare-fun arrayContainsKey!0 (array!16557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323349 (= res!177002 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!323350 () Bool)

(assert (=> b!323350 false))

(declare-fun lt!156615 () Unit!10011)

(assert (=> b!323350 (= lt!156615 e!199861)))

(declare-fun c!50801 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323350 (= c!50801 (is-Intermediate!2975 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!10016 () Unit!10011)

(assert (=> b!323350 (= e!199864 Unit!10016)))

(declare-fun b!323351 () Bool)

(declare-fun Unit!10017 () Unit!10011)

(assert (=> b!323351 (= e!199862 Unit!10017)))

(declare-fun b!323352 () Bool)

(declare-fun res!177003 () Bool)

(assert (=> b!323352 (=> (not res!177003) (not e!199863))))

(assert (=> b!323352 (= res!177003 (and (= (size!8185 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8185 a!3305))))))

(assert (= (and start!32422 res!176994) b!323352))

(assert (= (and b!323352 res!177003) b!323340))

(assert (= (and b!323340 res!176997) b!323349))

(assert (= (and b!323349 res!177002) b!323343))

(assert (= (and b!323343 res!176999) b!323344))

(assert (= (and b!323344 res!176996) b!323348))

(assert (= (and b!323348 res!176998) b!323345))

(assert (= (and b!323345 res!177001) b!323346))

(assert (= (and b!323346 res!176995) b!323341))

(assert (= (and b!323341 res!177000) b!323342))

(assert (= (and b!323342 c!50800) b!323338))

(assert (= (and b!323342 (not c!50800)) b!323351))

(assert (= (and b!323338 c!50799) b!323339))

(assert (= (and b!323338 (not c!50799)) b!323350))

(assert (= (and b!323350 c!50801) b!323337))

(assert (= (and b!323350 (not c!50801)) b!323347))

(declare-fun m!330713 () Bool)

(assert (=> b!323344 m!330713))

(declare-fun m!330715 () Bool)

(assert (=> b!323346 m!330715))

(declare-fun m!330717 () Bool)

(assert (=> b!323345 m!330717))

(declare-fun m!330719 () Bool)

(assert (=> b!323348 m!330719))

(assert (=> b!323348 m!330719))

(declare-fun m!330721 () Bool)

(assert (=> b!323348 m!330721))

(declare-fun m!330723 () Bool)

(assert (=> b!323341 m!330723))

(declare-fun m!330725 () Bool)

(assert (=> b!323349 m!330725))

(declare-fun m!330727 () Bool)

(assert (=> b!323350 m!330727))

(assert (=> b!323350 m!330727))

(declare-fun m!330729 () Bool)

(assert (=> b!323350 m!330729))

(declare-fun m!330731 () Bool)

(assert (=> start!32422 m!330731))

(declare-fun m!330733 () Bool)

(assert (=> start!32422 m!330733))

(declare-fun m!330735 () Bool)

(assert (=> b!323340 m!330735))

(assert (=> b!323338 m!330723))

(declare-fun m!330737 () Bool)

(assert (=> b!323343 m!330737))

(push 1)

