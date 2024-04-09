; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86446 () Bool)

(assert start!86446)

(declare-fun b!1000095 () Bool)

(declare-fun res!669735 () Bool)

(declare-fun e!563786 () Bool)

(assert (=> b!1000095 (=> (not res!669735) (not e!563786))))

(declare-datatypes ((array!63199 0))(
  ( (array!63200 (arr!30421 (Array (_ BitVec 32) (_ BitVec 64))) (size!30924 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63199)

(declare-datatypes ((List!21223 0))(
  ( (Nil!21220) (Cons!21219 (h!22396 (_ BitVec 64)) (t!30232 List!21223)) )
))
(declare-fun arrayNoDuplicates!0 (array!63199 (_ BitVec 32) List!21223) Bool)

(assert (=> b!1000095 (= res!669735 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21220))))

(declare-fun b!1000096 () Bool)

(declare-fun res!669734 () Bool)

(assert (=> b!1000096 (=> (not res!669734) (not e!563786))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63199 (_ BitVec 32)) Bool)

(assert (=> b!1000096 (= res!669734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1000097 () Bool)

(declare-fun e!563789 () Bool)

(assert (=> b!1000097 (= e!563789 e!563786)))

(declare-fun res!669736 () Bool)

(assert (=> b!1000097 (=> (not res!669736) (not e!563786))))

(declare-datatypes ((SeekEntryResult!9353 0))(
  ( (MissingZero!9353 (index!39782 (_ BitVec 32))) (Found!9353 (index!39783 (_ BitVec 32))) (Intermediate!9353 (undefined!10165 Bool) (index!39784 (_ BitVec 32)) (x!87246 (_ BitVec 32))) (Undefined!9353) (MissingVacant!9353 (index!39785 (_ BitVec 32))) )
))
(declare-fun lt!442180 () SeekEntryResult!9353)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1000097 (= res!669736 (or (= lt!442180 (MissingVacant!9353 i!1194)) (= lt!442180 (MissingZero!9353 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63199 (_ BitVec 32)) SeekEntryResult!9353)

(assert (=> b!1000097 (= lt!442180 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun res!669733 () Bool)

(assert (=> start!86446 (=> (not res!669733) (not e!563789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86446 (= res!669733 (validMask!0 mask!3464))))

(assert (=> start!86446 e!563789))

(declare-fun array_inv!23411 (array!63199) Bool)

(assert (=> start!86446 (array_inv!23411 a!3219)))

(assert (=> start!86446 true))

(declare-fun b!1000098 () Bool)

(declare-fun res!669738 () Bool)

(declare-fun e!563787 () Bool)

(assert (=> b!1000098 (=> (not res!669738) (not e!563787))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!442181 () SeekEntryResult!9353)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63199 (_ BitVec 32)) SeekEntryResult!9353)

(assert (=> b!1000098 (= res!669738 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30421 a!3219) j!170) a!3219 mask!3464) lt!442181))))

(declare-fun b!1000099 () Bool)

(assert (=> b!1000099 (= e!563787 false)))

(declare-fun lt!442182 () SeekEntryResult!9353)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1000099 (= lt!442182 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!30421 a!3219) i!1194 k!2224) j!170) mask!3464) (select (store (arr!30421 a!3219) i!1194 k!2224) j!170) (array!63200 (store (arr!30421 a!3219) i!1194 k!2224) (size!30924 a!3219)) mask!3464))))

(declare-fun b!1000100 () Bool)

(declare-fun res!669730 () Bool)

(assert (=> b!1000100 (=> (not res!669730) (not e!563786))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1000100 (= res!669730 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30924 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30924 a!3219))))))

(declare-fun b!1000101 () Bool)

(declare-fun res!669732 () Bool)

(assert (=> b!1000101 (=> (not res!669732) (not e!563789))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1000101 (= res!669732 (validKeyInArray!0 (select (arr!30421 a!3219) j!170)))))

(declare-fun b!1000102 () Bool)

(declare-fun res!669731 () Bool)

(assert (=> b!1000102 (=> (not res!669731) (not e!563789))))

(assert (=> b!1000102 (= res!669731 (validKeyInArray!0 k!2224))))

(declare-fun b!1000103 () Bool)

(assert (=> b!1000103 (= e!563786 e!563787)))

(declare-fun res!669737 () Bool)

(assert (=> b!1000103 (=> (not res!669737) (not e!563787))))

(assert (=> b!1000103 (= res!669737 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30421 a!3219) j!170) mask!3464) (select (arr!30421 a!3219) j!170) a!3219 mask!3464) lt!442181))))

(assert (=> b!1000103 (= lt!442181 (Intermediate!9353 false resIndex!38 resX!38))))

(declare-fun b!1000104 () Bool)

(declare-fun res!669729 () Bool)

(assert (=> b!1000104 (=> (not res!669729) (not e!563789))))

(declare-fun arrayContainsKey!0 (array!63199 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1000104 (= res!669729 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1000105 () Bool)

(declare-fun res!669739 () Bool)

(assert (=> b!1000105 (=> (not res!669739) (not e!563789))))

(assert (=> b!1000105 (= res!669739 (and (= (size!30924 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30924 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30924 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!86446 res!669733) b!1000105))

(assert (= (and b!1000105 res!669739) b!1000101))

(assert (= (and b!1000101 res!669732) b!1000102))

(assert (= (and b!1000102 res!669731) b!1000104))

(assert (= (and b!1000104 res!669729) b!1000097))

(assert (= (and b!1000097 res!669736) b!1000096))

(assert (= (and b!1000096 res!669734) b!1000095))

(assert (= (and b!1000095 res!669735) b!1000100))

(assert (= (and b!1000100 res!669730) b!1000103))

(assert (= (and b!1000103 res!669737) b!1000098))

(assert (= (and b!1000098 res!669738) b!1000099))

(declare-fun m!926391 () Bool)

(assert (=> b!1000097 m!926391))

(declare-fun m!926393 () Bool)

(assert (=> b!1000103 m!926393))

(assert (=> b!1000103 m!926393))

(declare-fun m!926395 () Bool)

(assert (=> b!1000103 m!926395))

(assert (=> b!1000103 m!926395))

(assert (=> b!1000103 m!926393))

(declare-fun m!926397 () Bool)

(assert (=> b!1000103 m!926397))

(declare-fun m!926399 () Bool)

(assert (=> b!1000102 m!926399))

(assert (=> b!1000101 m!926393))

(assert (=> b!1000101 m!926393))

(declare-fun m!926401 () Bool)

(assert (=> b!1000101 m!926401))

(assert (=> b!1000098 m!926393))

(assert (=> b!1000098 m!926393))

(declare-fun m!926403 () Bool)

(assert (=> b!1000098 m!926403))

(declare-fun m!926405 () Bool)

(assert (=> start!86446 m!926405))

(declare-fun m!926407 () Bool)

(assert (=> start!86446 m!926407))

(declare-fun m!926409 () Bool)

(assert (=> b!1000095 m!926409))

(declare-fun m!926411 () Bool)

(assert (=> b!1000104 m!926411))

(declare-fun m!926413 () Bool)

(assert (=> b!1000096 m!926413))

(declare-fun m!926415 () Bool)

(assert (=> b!1000099 m!926415))

(declare-fun m!926417 () Bool)

(assert (=> b!1000099 m!926417))

(assert (=> b!1000099 m!926417))

(declare-fun m!926419 () Bool)

(assert (=> b!1000099 m!926419))

(assert (=> b!1000099 m!926419))

(assert (=> b!1000099 m!926417))

(declare-fun m!926421 () Bool)

(assert (=> b!1000099 m!926421))

(push 1)

