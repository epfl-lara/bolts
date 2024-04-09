; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86504 () Bool)

(assert start!86504)

(declare-fun b!1001158 () Bool)

(declare-fun e!564199 () Bool)

(declare-fun e!564195 () Bool)

(assert (=> b!1001158 (= e!564199 e!564195)))

(declare-fun res!670798 () Bool)

(assert (=> b!1001158 (=> (not res!670798) (not e!564195))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!9382 0))(
  ( (MissingZero!9382 (index!39898 (_ BitVec 32))) (Found!9382 (index!39899 (_ BitVec 32))) (Intermediate!9382 (undefined!10194 Bool) (index!39900 (_ BitVec 32)) (x!87347 (_ BitVec 32))) (Undefined!9382) (MissingVacant!9382 (index!39901 (_ BitVec 32))) )
))
(declare-fun lt!442548 () SeekEntryResult!9382)

(declare-fun lt!442549 () (_ BitVec 64))

(declare-datatypes ((array!63257 0))(
  ( (array!63258 (arr!30450 (Array (_ BitVec 32) (_ BitVec 64))) (size!30953 (_ BitVec 32))) )
))
(declare-fun lt!442547 () array!63257)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63257 (_ BitVec 32)) SeekEntryResult!9382)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001158 (= res!670798 (not (= lt!442548 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442549 mask!3464) lt!442549 lt!442547 mask!3464))))))

(declare-fun a!3219 () array!63257)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1001158 (= lt!442549 (select (store (arr!30450 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1001158 (= lt!442547 (array!63258 (store (arr!30450 a!3219) i!1194 k!2224) (size!30953 a!3219)))))

(declare-fun b!1001159 () Bool)

(declare-fun e!564198 () Bool)

(declare-fun e!564196 () Bool)

(assert (=> b!1001159 (= e!564198 e!564196)))

(declare-fun res!670804 () Bool)

(assert (=> b!1001159 (=> (not res!670804) (not e!564196))))

(declare-fun lt!442550 () SeekEntryResult!9382)

(assert (=> b!1001159 (= res!670804 (or (= lt!442550 (MissingVacant!9382 i!1194)) (= lt!442550 (MissingZero!9382 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63257 (_ BitVec 32)) SeekEntryResult!9382)

(assert (=> b!1001159 (= lt!442550 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1001160 () Bool)

(declare-fun res!670795 () Bool)

(assert (=> b!1001160 (=> (not res!670795) (not e!564195))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!442551 () SeekEntryResult!9382)

(assert (=> b!1001160 (= res!670795 (not (= lt!442551 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442549 lt!442547 mask!3464))))))

(declare-fun res!670793 () Bool)

(assert (=> start!86504 (=> (not res!670793) (not e!564198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86504 (= res!670793 (validMask!0 mask!3464))))

(assert (=> start!86504 e!564198))

(declare-fun array_inv!23440 (array!63257) Bool)

(assert (=> start!86504 (array_inv!23440 a!3219)))

(assert (=> start!86504 true))

(declare-fun b!1001161 () Bool)

(declare-fun res!670797 () Bool)

(assert (=> b!1001161 (=> (not res!670797) (not e!564196))))

(declare-datatypes ((List!21252 0))(
  ( (Nil!21249) (Cons!21248 (h!22425 (_ BitVec 64)) (t!30261 List!21252)) )
))
(declare-fun arrayNoDuplicates!0 (array!63257 (_ BitVec 32) List!21252) Bool)

(assert (=> b!1001161 (= res!670797 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21249))))

(declare-fun b!1001162 () Bool)

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1001162 (= e!564195 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194)) (bvsge mask!3464 #b00000000000000000000000000000000) (bvslt index!1507 (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsgt x!1245 #b01111111111111111111111111111110)))))

(declare-fun b!1001163 () Bool)

(declare-fun res!670794 () Bool)

(assert (=> b!1001163 (=> (not res!670794) (not e!564196))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63257 (_ BitVec 32)) Bool)

(assert (=> b!1001163 (= res!670794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001164 () Bool)

(declare-fun res!670803 () Bool)

(assert (=> b!1001164 (=> (not res!670803) (not e!564198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001164 (= res!670803 (validKeyInArray!0 (select (arr!30450 a!3219) j!170)))))

(declare-fun b!1001165 () Bool)

(declare-fun e!564197 () Bool)

(assert (=> b!1001165 (= e!564196 e!564197)))

(declare-fun res!670792 () Bool)

(assert (=> b!1001165 (=> (not res!670792) (not e!564197))))

(declare-fun lt!442546 () SeekEntryResult!9382)

(assert (=> b!1001165 (= res!670792 (= lt!442548 lt!442546))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001165 (= lt!442546 (Intermediate!9382 false resIndex!38 resX!38))))

(assert (=> b!1001165 (= lt!442548 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30450 a!3219) j!170) mask!3464) (select (arr!30450 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001166 () Bool)

(assert (=> b!1001166 (= e!564197 e!564199)))

(declare-fun res!670800 () Bool)

(assert (=> b!1001166 (=> (not res!670800) (not e!564199))))

(assert (=> b!1001166 (= res!670800 (= lt!442551 lt!442546))))

(assert (=> b!1001166 (= lt!442551 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30450 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001167 () Bool)

(declare-fun res!670796 () Bool)

(assert (=> b!1001167 (=> (not res!670796) (not e!564198))))

(assert (=> b!1001167 (= res!670796 (and (= (size!30953 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30953 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30953 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001168 () Bool)

(declare-fun res!670801 () Bool)

(assert (=> b!1001168 (=> (not res!670801) (not e!564196))))

(assert (=> b!1001168 (= res!670801 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30953 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30953 a!3219))))))

(declare-fun b!1001169 () Bool)

(declare-fun res!670802 () Bool)

(assert (=> b!1001169 (=> (not res!670802) (not e!564198))))

(assert (=> b!1001169 (= res!670802 (validKeyInArray!0 k!2224))))

(declare-fun b!1001170 () Bool)

(declare-fun res!670799 () Bool)

(assert (=> b!1001170 (=> (not res!670799) (not e!564198))))

(declare-fun arrayContainsKey!0 (array!63257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001170 (= res!670799 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86504 res!670793) b!1001167))

(assert (= (and b!1001167 res!670796) b!1001164))

(assert (= (and b!1001164 res!670803) b!1001169))

(assert (= (and b!1001169 res!670802) b!1001170))

(assert (= (and b!1001170 res!670799) b!1001159))

(assert (= (and b!1001159 res!670804) b!1001163))

(assert (= (and b!1001163 res!670794) b!1001161))

(assert (= (and b!1001161 res!670797) b!1001168))

(assert (= (and b!1001168 res!670801) b!1001165))

(assert (= (and b!1001165 res!670792) b!1001166))

(assert (= (and b!1001166 res!670800) b!1001158))

(assert (= (and b!1001158 res!670798) b!1001160))

(assert (= (and b!1001160 res!670795) b!1001162))

(declare-fun m!927347 () Bool)

(assert (=> b!1001164 m!927347))

(assert (=> b!1001164 m!927347))

(declare-fun m!927349 () Bool)

(assert (=> b!1001164 m!927349))

(assert (=> b!1001166 m!927347))

(assert (=> b!1001166 m!927347))

(declare-fun m!927351 () Bool)

(assert (=> b!1001166 m!927351))

(declare-fun m!927353 () Bool)

(assert (=> b!1001161 m!927353))

(declare-fun m!927355 () Bool)

(assert (=> b!1001159 m!927355))

(declare-fun m!927357 () Bool)

(assert (=> start!86504 m!927357))

(declare-fun m!927359 () Bool)

(assert (=> start!86504 m!927359))

(declare-fun m!927361 () Bool)

(assert (=> b!1001163 m!927361))

(declare-fun m!927363 () Bool)

(assert (=> b!1001160 m!927363))

(declare-fun m!927365 () Bool)

(assert (=> b!1001169 m!927365))

(declare-fun m!927367 () Bool)

(assert (=> b!1001170 m!927367))

(assert (=> b!1001165 m!927347))

(assert (=> b!1001165 m!927347))

(declare-fun m!927369 () Bool)

(assert (=> b!1001165 m!927369))

(assert (=> b!1001165 m!927369))

(assert (=> b!1001165 m!927347))

(declare-fun m!927371 () Bool)

(assert (=> b!1001165 m!927371))

(declare-fun m!927373 () Bool)

(assert (=> b!1001158 m!927373))

(assert (=> b!1001158 m!927373))

(declare-fun m!927375 () Bool)

(assert (=> b!1001158 m!927375))

(declare-fun m!927377 () Bool)

(assert (=> b!1001158 m!927377))

(declare-fun m!927379 () Bool)

(assert (=> b!1001158 m!927379))

(push 1)

(assert (not b!1001159))

(assert (not b!1001169))

