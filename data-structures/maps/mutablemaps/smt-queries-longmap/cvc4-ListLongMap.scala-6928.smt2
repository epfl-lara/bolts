; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87164 () Bool)

(assert start!87164)

(declare-fun b!1010295 () Bool)

(declare-fun res!678790 () Bool)

(declare-fun e!568410 () Bool)

(assert (=> b!1010295 (=> (not res!678790) (not e!568410))))

(declare-datatypes ((array!63626 0))(
  ( (array!63627 (arr!30627 (Array (_ BitVec 32) (_ BitVec 64))) (size!31130 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63626)

(declare-datatypes ((List!21429 0))(
  ( (Nil!21426) (Cons!21425 (h!22617 (_ BitVec 64)) (t!30438 List!21429)) )
))
(declare-fun arrayNoDuplicates!0 (array!63626 (_ BitVec 32) List!21429) Bool)

(assert (=> b!1010295 (= res!678790 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21426))))

(declare-fun b!1010296 () Bool)

(declare-fun res!678800 () Bool)

(assert (=> b!1010296 (=> (not res!678800) (not e!568410))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63626 (_ BitVec 32)) Bool)

(assert (=> b!1010296 (= res!678800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1010297 () Bool)

(declare-fun res!678791 () Bool)

(declare-fun e!568407 () Bool)

(assert (=> b!1010297 (=> (not res!678791) (not e!568407))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1010297 (= res!678791 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1010298 () Bool)

(declare-fun res!678793 () Bool)

(assert (=> b!1010298 (=> (not res!678793) (not e!568407))))

(declare-fun lt!446532 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9559 0))(
  ( (MissingZero!9559 (index!40606 (_ BitVec 32))) (Found!9559 (index!40607 (_ BitVec 32))) (Intermediate!9559 (undefined!10371 Bool) (index!40608 (_ BitVec 32)) (x!88038 (_ BitVec 32))) (Undefined!9559) (MissingVacant!9559 (index!40609 (_ BitVec 32))) )
))
(declare-fun lt!446538 () SeekEntryResult!9559)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!446535 () array!63626)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63626 (_ BitVec 32)) SeekEntryResult!9559)

(assert (=> b!1010298 (= res!678793 (not (= lt!446538 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446532 lt!446535 mask!3464))))))

(declare-fun b!1010299 () Bool)

(declare-fun res!678799 () Bool)

(declare-fun e!568411 () Bool)

(assert (=> b!1010299 (=> (not res!678799) (not e!568411))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1010299 (= res!678799 (validKeyInArray!0 (select (arr!30627 a!3219) j!170)))))

(declare-fun b!1010300 () Bool)

(declare-fun res!678794 () Bool)

(assert (=> b!1010300 (=> (not res!678794) (not e!568410))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1010300 (= res!678794 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31130 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31130 a!3219))))))

(declare-fun b!1010301 () Bool)

(declare-fun res!678795 () Bool)

(assert (=> b!1010301 (=> (not res!678795) (not e!568411))))

(assert (=> b!1010301 (= res!678795 (and (= (size!31130 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31130 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31130 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1010302 () Bool)

(declare-fun e!568409 () Bool)

(declare-fun e!568412 () Bool)

(assert (=> b!1010302 (= e!568409 e!568412)))

(declare-fun res!678789 () Bool)

(assert (=> b!1010302 (=> (not res!678789) (not e!568412))))

(declare-fun lt!446537 () SeekEntryResult!9559)

(assert (=> b!1010302 (= res!678789 (= lt!446538 lt!446537))))

(assert (=> b!1010302 (= lt!446538 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30627 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010303 () Bool)

(declare-fun res!678801 () Bool)

(assert (=> b!1010303 (=> (not res!678801) (not e!568411))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63626 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1010303 (= res!678801 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!678798 () Bool)

(assert (=> start!87164 (=> (not res!678798) (not e!568411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87164 (= res!678798 (validMask!0 mask!3464))))

(assert (=> start!87164 e!568411))

(declare-fun array_inv!23617 (array!63626) Bool)

(assert (=> start!87164 (array_inv!23617 a!3219)))

(assert (=> start!87164 true))

(declare-fun b!1010304 () Bool)

(assert (=> b!1010304 (= e!568411 e!568410)))

(declare-fun res!678802 () Bool)

(assert (=> b!1010304 (=> (not res!678802) (not e!568410))))

(declare-fun lt!446534 () SeekEntryResult!9559)

(assert (=> b!1010304 (= res!678802 (or (= lt!446534 (MissingVacant!9559 i!1194)) (= lt!446534 (MissingZero!9559 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63626 (_ BitVec 32)) SeekEntryResult!9559)

(assert (=> b!1010304 (= lt!446534 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1010305 () Bool)

(assert (=> b!1010305 (= e!568407 false)))

(declare-fun lt!446536 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010305 (= lt!446536 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1010306 () Bool)

(assert (=> b!1010306 (= e!568410 e!568409)))

(declare-fun res!678792 () Bool)

(assert (=> b!1010306 (=> (not res!678792) (not e!568409))))

(declare-fun lt!446533 () SeekEntryResult!9559)

(assert (=> b!1010306 (= res!678792 (= lt!446533 lt!446537))))

(assert (=> b!1010306 (= lt!446537 (Intermediate!9559 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010306 (= lt!446533 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30627 a!3219) j!170) mask!3464) (select (arr!30627 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010307 () Bool)

(assert (=> b!1010307 (= e!568412 e!568407)))

(declare-fun res!678797 () Bool)

(assert (=> b!1010307 (=> (not res!678797) (not e!568407))))

(assert (=> b!1010307 (= res!678797 (not (= lt!446533 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446532 mask!3464) lt!446532 lt!446535 mask!3464))))))

(assert (=> b!1010307 (= lt!446532 (select (store (arr!30627 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1010307 (= lt!446535 (array!63627 (store (arr!30627 a!3219) i!1194 k!2224) (size!31130 a!3219)))))

(declare-fun b!1010308 () Bool)

(declare-fun res!678796 () Bool)

(assert (=> b!1010308 (=> (not res!678796) (not e!568411))))

(assert (=> b!1010308 (= res!678796 (validKeyInArray!0 k!2224))))

(assert (= (and start!87164 res!678798) b!1010301))

(assert (= (and b!1010301 res!678795) b!1010299))

(assert (= (and b!1010299 res!678799) b!1010308))

(assert (= (and b!1010308 res!678796) b!1010303))

(assert (= (and b!1010303 res!678801) b!1010304))

(assert (= (and b!1010304 res!678802) b!1010296))

(assert (= (and b!1010296 res!678800) b!1010295))

(assert (= (and b!1010295 res!678790) b!1010300))

(assert (= (and b!1010300 res!678794) b!1010306))

(assert (= (and b!1010306 res!678792) b!1010302))

(assert (= (and b!1010302 res!678789) b!1010307))

(assert (= (and b!1010307 res!678797) b!1010298))

(assert (= (and b!1010298 res!678793) b!1010297))

(assert (= (and b!1010297 res!678791) b!1010305))

(declare-fun m!934755 () Bool)

(assert (=> b!1010295 m!934755))

(declare-fun m!934757 () Bool)

(assert (=> b!1010298 m!934757))

(declare-fun m!934759 () Bool)

(assert (=> b!1010296 m!934759))

(declare-fun m!934761 () Bool)

(assert (=> b!1010304 m!934761))

(declare-fun m!934763 () Bool)

(assert (=> b!1010299 m!934763))

(assert (=> b!1010299 m!934763))

(declare-fun m!934765 () Bool)

(assert (=> b!1010299 m!934765))

(declare-fun m!934767 () Bool)

(assert (=> b!1010308 m!934767))

(declare-fun m!934769 () Bool)

(assert (=> b!1010305 m!934769))

(declare-fun m!934771 () Bool)

(assert (=> b!1010307 m!934771))

(assert (=> b!1010307 m!934771))

(declare-fun m!934773 () Bool)

(assert (=> b!1010307 m!934773))

(declare-fun m!934775 () Bool)

(assert (=> b!1010307 m!934775))

(declare-fun m!934777 () Bool)

(assert (=> b!1010307 m!934777))

(declare-fun m!934779 () Bool)

(assert (=> start!87164 m!934779))

(declare-fun m!934781 () Bool)

(assert (=> start!87164 m!934781))

(declare-fun m!934783 () Bool)

(assert (=> b!1010303 m!934783))

(assert (=> b!1010306 m!934763))

(assert (=> b!1010306 m!934763))

(declare-fun m!934785 () Bool)

(assert (=> b!1010306 m!934785))

(assert (=> b!1010306 m!934785))

(assert (=> b!1010306 m!934763))

(declare-fun m!934787 () Bool)

(assert (=> b!1010306 m!934787))

(assert (=> b!1010302 m!934763))

(assert (=> b!1010302 m!934763))

(declare-fun m!934789 () Bool)

(assert (=> b!1010302 m!934789))

(push 1)

