; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49346 () Bool)

(assert start!49346)

(declare-fun b!543243 () Bool)

(declare-fun e!314193 () Bool)

(assert (=> b!543243 (= e!314193 false)))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun lt!248134 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543243 (= lt!248134 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543244 () Bool)

(declare-fun res!337952 () Bool)

(declare-fun e!314194 () Bool)

(assert (=> b!543244 (=> (not res!337952) (not e!314194))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34310 0))(
  ( (array!34311 (arr!16484 (Array (_ BitVec 32) (_ BitVec 64))) (size!16848 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34310)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543244 (= res!337952 (and (= (size!16848 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16848 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16848 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!543245 () Bool)

(declare-fun res!337955 () Bool)

(declare-fun e!314191 () Bool)

(assert (=> b!543245 (=> (not res!337955) (not e!314191))))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(assert (=> b!543245 (= res!337955 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16848 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16848 a!3154)) (= (select (arr!16484 a!3154) resIndex!32) (select (arr!16484 a!3154) j!147))))))

(declare-fun b!543246 () Bool)

(declare-fun res!337945 () Bool)

(assert (=> b!543246 (=> (not res!337945) (not e!314191))))

(declare-datatypes ((List!10656 0))(
  ( (Nil!10653) (Cons!10652 (h!11607 (_ BitVec 64)) (t!16892 List!10656)) )
))
(declare-fun arrayNoDuplicates!0 (array!34310 (_ BitVec 32) List!10656) Bool)

(assert (=> b!543246 (= res!337945 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10653))))

(declare-fun b!543247 () Bool)

(declare-fun res!337947 () Bool)

(assert (=> b!543247 (=> (not res!337947) (not e!314194))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543247 (= res!337947 (validKeyInArray!0 (select (arr!16484 a!3154) j!147)))))

(declare-fun b!543249 () Bool)

(declare-fun res!337953 () Bool)

(assert (=> b!543249 (=> (not res!337953) (not e!314193))))

(assert (=> b!543249 (= res!337953 (and (not (= (select (arr!16484 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16484 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16484 a!3154) index!1177) (select (arr!16484 a!3154) j!147)))))))

(declare-fun b!543250 () Bool)

(declare-fun res!337954 () Bool)

(assert (=> b!543250 (=> (not res!337954) (not e!314194))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!543250 (= res!337954 (validKeyInArray!0 k!1998))))

(declare-fun b!543251 () Bool)

(declare-fun res!337950 () Bool)

(assert (=> b!543251 (=> (not res!337950) (not e!314193))))

(declare-datatypes ((SeekEntryResult!4949 0))(
  ( (MissingZero!4949 (index!22020 (_ BitVec 32))) (Found!4949 (index!22021 (_ BitVec 32))) (Intermediate!4949 (undefined!5761 Bool) (index!22022 (_ BitVec 32)) (x!50951 (_ BitVec 32))) (Undefined!4949) (MissingVacant!4949 (index!22023 (_ BitVec 32))) )
))
(declare-fun lt!248135 () SeekEntryResult!4949)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34310 (_ BitVec 32)) SeekEntryResult!4949)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543251 (= res!337950 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16484 a!3154) j!147) mask!3216) (select (arr!16484 a!3154) j!147) a!3154 mask!3216) lt!248135))))

(declare-fun b!543252 () Bool)

(assert (=> b!543252 (= e!314191 e!314193)))

(declare-fun res!337951 () Bool)

(assert (=> b!543252 (=> (not res!337951) (not e!314193))))

(assert (=> b!543252 (= res!337951 (= lt!248135 (Intermediate!4949 false resIndex!32 resX!32)))))

(assert (=> b!543252 (= lt!248135 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16484 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543248 () Bool)

(declare-fun res!337948 () Bool)

(assert (=> b!543248 (=> (not res!337948) (not e!314191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34310 (_ BitVec 32)) Bool)

(assert (=> b!543248 (= res!337948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun res!337944 () Bool)

(assert (=> start!49346 (=> (not res!337944) (not e!314194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49346 (= res!337944 (validMask!0 mask!3216))))

(assert (=> start!49346 e!314194))

(assert (=> start!49346 true))

(declare-fun array_inv!12258 (array!34310) Bool)

(assert (=> start!49346 (array_inv!12258 a!3154)))

(declare-fun b!543253 () Bool)

(assert (=> b!543253 (= e!314194 e!314191)))

(declare-fun res!337946 () Bool)

(assert (=> b!543253 (=> (not res!337946) (not e!314191))))

(declare-fun lt!248133 () SeekEntryResult!4949)

(assert (=> b!543253 (= res!337946 (or (= lt!248133 (MissingZero!4949 i!1153)) (= lt!248133 (MissingVacant!4949 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34310 (_ BitVec 32)) SeekEntryResult!4949)

(assert (=> b!543253 (= lt!248133 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!543254 () Bool)

(declare-fun res!337949 () Bool)

(assert (=> b!543254 (=> (not res!337949) (not e!314194))))

(declare-fun arrayContainsKey!0 (array!34310 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543254 (= res!337949 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!49346 res!337944) b!543244))

(assert (= (and b!543244 res!337952) b!543247))

(assert (= (and b!543247 res!337947) b!543250))

(assert (= (and b!543250 res!337954) b!543254))

(assert (= (and b!543254 res!337949) b!543253))

(assert (= (and b!543253 res!337946) b!543248))

(assert (= (and b!543248 res!337948) b!543246))

(assert (= (and b!543246 res!337945) b!543245))

(assert (= (and b!543245 res!337955) b!543252))

(assert (= (and b!543252 res!337951) b!543251))

(assert (= (and b!543251 res!337950) b!543249))

(assert (= (and b!543249 res!337953) b!543243))

(declare-fun m!521371 () Bool)

(assert (=> b!543254 m!521371))

(declare-fun m!521373 () Bool)

(assert (=> b!543245 m!521373))

(declare-fun m!521375 () Bool)

(assert (=> b!543245 m!521375))

(declare-fun m!521377 () Bool)

(assert (=> b!543250 m!521377))

(assert (=> b!543252 m!521375))

(assert (=> b!543252 m!521375))

(declare-fun m!521379 () Bool)

(assert (=> b!543252 m!521379))

(declare-fun m!521381 () Bool)

(assert (=> b!543243 m!521381))

(declare-fun m!521383 () Bool)

(assert (=> b!543253 m!521383))

(declare-fun m!521385 () Bool)

(assert (=> b!543246 m!521385))

(declare-fun m!521387 () Bool)

(assert (=> start!49346 m!521387))

(declare-fun m!521389 () Bool)

(assert (=> start!49346 m!521389))

(assert (=> b!543247 m!521375))

(assert (=> b!543247 m!521375))

(declare-fun m!521391 () Bool)

(assert (=> b!543247 m!521391))

(assert (=> b!543251 m!521375))

(assert (=> b!543251 m!521375))

(declare-fun m!521393 () Bool)

(assert (=> b!543251 m!521393))

(assert (=> b!543251 m!521393))

(assert (=> b!543251 m!521375))

(declare-fun m!521395 () Bool)

(assert (=> b!543251 m!521395))

(declare-fun m!521397 () Bool)

(assert (=> b!543249 m!521397))

(assert (=> b!543249 m!521375))

(declare-fun m!521399 () Bool)

(assert (=> b!543248 m!521399))

(push 1)

(assert (not b!543247))

(assert (not b!543252))

