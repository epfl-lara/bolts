; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32430 () Bool)

(assert start!32430)

(declare-fun b!323529 () Bool)

(declare-fun res!177116 () Bool)

(declare-fun e!199936 () Bool)

(assert (=> b!323529 (=> (not res!177116) (not e!199936))))

(declare-datatypes ((array!16565 0))(
  ( (array!16566 (arr!7837 (Array (_ BitVec 32) (_ BitVec 64))) (size!8189 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16565)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!323529 (= res!177116 (and (= (size!8189 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8189 a!3305))))))

(declare-fun b!323530 () Bool)

(assert (=> b!323530 false))

(declare-datatypes ((Unit!10039 0))(
  ( (Unit!10040) )
))
(declare-fun e!199934 () Unit!10039)

(declare-fun Unit!10041 () Unit!10039)

(assert (=> b!323530 (= e!199934 Unit!10041)))

(declare-fun b!323531 () Bool)

(declare-fun res!177123 () Bool)

(assert (=> b!323531 (=> (not res!177123) (not e!199936))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16565 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!323531 (= res!177123 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun res!177117 () Bool)

(assert (=> start!32430 (=> (not res!177117) (not e!199936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32430 (= res!177117 (validMask!0 mask!3777))))

(assert (=> start!32430 e!199936))

(declare-fun array_inv!5791 (array!16565) Bool)

(assert (=> start!32430 (array_inv!5791 a!3305)))

(assert (=> start!32430 true))

(declare-fun b!323532 () Bool)

(declare-fun res!177118 () Bool)

(declare-fun e!199931 () Bool)

(assert (=> b!323532 (=> (not res!177118) (not e!199931))))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun index!1840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2979 0))(
  ( (MissingZero!2979 (index!14092 (_ BitVec 32))) (Found!2979 (index!14093 (_ BitVec 32))) (Intermediate!2979 (undefined!3791 Bool) (index!14094 (_ BitVec 32)) (x!32314 (_ BitVec 32))) (Undefined!2979) (MissingVacant!2979 (index!14095 (_ BitVec 32))) )
))
(declare-fun lt!156653 () SeekEntryResult!2979)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16565 (_ BitVec 32)) SeekEntryResult!2979)

(assert (=> b!323532 (= res!177118 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156653))))

(declare-fun b!323533 () Bool)

(declare-fun e!199932 () Unit!10039)

(assert (=> b!323533 (= e!199932 e!199934)))

(declare-fun c!50835 () Bool)

(assert (=> b!323533 (= c!50835 (or (= (select (arr!7837 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7837 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!323534 () Bool)

(declare-fun res!177119 () Bool)

(assert (=> b!323534 (=> (not res!177119) (not e!199936))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!323534 (= res!177119 (validKeyInArray!0 k!2497))))

(declare-fun b!323535 () Bool)

(assert (=> b!323535 false))

(declare-fun lt!156652 () Unit!10039)

(declare-fun e!199933 () Unit!10039)

(assert (=> b!323535 (= lt!156652 e!199933)))

(declare-fun c!50837 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323535 (= c!50837 (is-Intermediate!2979 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun Unit!10042 () Unit!10039)

(assert (=> b!323535 (= e!199934 Unit!10042)))

(declare-fun b!323536 () Bool)

(assert (=> b!323536 (= e!199936 e!199931)))

(declare-fun res!177114 () Bool)

(assert (=> b!323536 (=> (not res!177114) (not e!199931))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!323536 (= res!177114 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156653))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!323536 (= lt!156653 (Intermediate!2979 false resIndex!58 resX!58))))

(declare-fun b!323537 () Bool)

(declare-fun Unit!10043 () Unit!10039)

(assert (=> b!323537 (= e!199933 Unit!10043)))

(declare-fun b!323538 () Bool)

(declare-fun res!177121 () Bool)

(assert (=> b!323538 (=> (not res!177121) (not e!199931))))

(assert (=> b!323538 (= res!177121 (and (= (select (arr!7837 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8189 a!3305))))))

(declare-fun b!323539 () Bool)

(assert (=> b!323539 (= e!199931 (not (or (not (= (select (arr!7837 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3777 #b00000000000000000000000000000000) (bvsge index!1840 (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsle x!1490 #b01111111111111111111111111111110))))))

(assert (=> b!323539 (= index!1840 resIndex!58)))

(declare-fun lt!156651 () Unit!10039)

(assert (=> b!323539 (= lt!156651 e!199932)))

(declare-fun c!50836 () Bool)

(assert (=> b!323539 (= c!50836 (not (= resIndex!58 index!1840)))))

(declare-fun b!323540 () Bool)

(declare-fun res!177122 () Bool)

(assert (=> b!323540 (=> (not res!177122) (not e!199936))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16565 (_ BitVec 32)) SeekEntryResult!2979)

(assert (=> b!323540 (= res!177122 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!2979 i!1250)))))

(declare-fun b!323541 () Bool)

(declare-fun Unit!10044 () Unit!10039)

(assert (=> b!323541 (= e!199933 Unit!10044)))

(assert (=> b!323541 false))

(declare-fun b!323542 () Bool)

(declare-fun res!177120 () Bool)

(assert (=> b!323542 (=> (not res!177120) (not e!199931))))

(assert (=> b!323542 (= res!177120 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7837 a!3305) index!1840) k!2497)) (= x!1490 resX!58)))))

(declare-fun b!323543 () Bool)

(declare-fun res!177115 () Bool)

(assert (=> b!323543 (=> (not res!177115) (not e!199936))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16565 (_ BitVec 32)) Bool)

(assert (=> b!323543 (= res!177115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!323544 () Bool)

(declare-fun Unit!10045 () Unit!10039)

(assert (=> b!323544 (= e!199932 Unit!10045)))

(assert (= (and start!32430 res!177117) b!323529))

(assert (= (and b!323529 res!177116) b!323534))

(assert (= (and b!323534 res!177119) b!323531))

(assert (= (and b!323531 res!177123) b!323540))

(assert (= (and b!323540 res!177122) b!323543))

(assert (= (and b!323543 res!177115) b!323536))

(assert (= (and b!323536 res!177114) b!323538))

(assert (= (and b!323538 res!177121) b!323532))

(assert (= (and b!323532 res!177118) b!323542))

(assert (= (and b!323542 res!177120) b!323539))

(assert (= (and b!323539 c!50836) b!323533))

(assert (= (and b!323539 (not c!50836)) b!323544))

(assert (= (and b!323533 c!50835) b!323530))

(assert (= (and b!323533 (not c!50835)) b!323535))

(assert (= (and b!323535 c!50837) b!323537))

(assert (= (and b!323535 (not c!50837)) b!323541))

(declare-fun m!330817 () Bool)

(assert (=> b!323532 m!330817))

(declare-fun m!330819 () Bool)

(assert (=> b!323535 m!330819))

(assert (=> b!323535 m!330819))

(declare-fun m!330821 () Bool)

(assert (=> b!323535 m!330821))

(declare-fun m!330823 () Bool)

(assert (=> b!323543 m!330823))

(declare-fun m!330825 () Bool)

(assert (=> b!323534 m!330825))

(declare-fun m!330827 () Bool)

(assert (=> b!323542 m!330827))

(declare-fun m!330829 () Bool)

(assert (=> b!323540 m!330829))

(declare-fun m!330831 () Bool)

(assert (=> b!323536 m!330831))

(assert (=> b!323536 m!330831))

(declare-fun m!330833 () Bool)

(assert (=> b!323536 m!330833))

(declare-fun m!330835 () Bool)

(assert (=> b!323531 m!330835))

(declare-fun m!330837 () Bool)

(assert (=> start!32430 m!330837))

(declare-fun m!330839 () Bool)

(assert (=> start!32430 m!330839))

(declare-fun m!330841 () Bool)

(assert (=> b!323538 m!330841))

(assert (=> b!323533 m!330827))

(assert (=> b!323539 m!330827))

(push 1)

