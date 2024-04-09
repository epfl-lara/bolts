; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48506 () Bool)

(assert start!48506)

(declare-fun b!532454 () Bool)

(declare-fun res!327953 () Bool)

(declare-fun e!309977 () Bool)

(assert (=> b!532454 (=> (not res!327953) (not e!309977))))

(declare-datatypes ((array!33725 0))(
  ( (array!33726 (arr!16199 (Array (_ BitVec 32) (_ BitVec 64))) (size!16563 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33725)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!532454 (= res!327953 (validKeyInArray!0 (select (arr!16199 a!3154) j!147)))))

(declare-fun b!532455 () Bool)

(declare-fun res!327950 () Bool)

(declare-fun e!309979 () Bool)

(assert (=> b!532455 (=> (not res!327950) (not e!309979))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun index!1177 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4664 0))(
  ( (MissingZero!4664 (index!20880 (_ BitVec 32))) (Found!4664 (index!20881 (_ BitVec 32))) (Intermediate!4664 (undefined!5476 Bool) (index!20882 (_ BitVec 32)) (x!49876 (_ BitVec 32))) (Undefined!4664) (MissingVacant!4664 (index!20883 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33725 (_ BitVec 32)) SeekEntryResult!4664)

(assert (=> b!532455 (= res!327950 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16199 a!3154) j!147) a!3154 mask!3216) (Intermediate!4664 false resIndex!32 resX!32)))))

(declare-fun b!532456 () Bool)

(declare-fun res!327959 () Bool)

(assert (=> b!532456 (=> (not res!327959) (not e!309977))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!532456 (= res!327959 (validKeyInArray!0 k!1998))))

(declare-fun b!532457 () Bool)

(assert (=> b!532457 (= e!309977 e!309979)))

(declare-fun res!327956 () Bool)

(assert (=> b!532457 (=> (not res!327956) (not e!309979))))

(declare-fun lt!245216 () SeekEntryResult!4664)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!532457 (= res!327956 (or (= lt!245216 (MissingZero!4664 i!1153)) (= lt!245216 (MissingVacant!4664 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33725 (_ BitVec 32)) SeekEntryResult!4664)

(assert (=> b!532457 (= lt!245216 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!532458 () Bool)

(declare-fun res!327954 () Bool)

(assert (=> b!532458 (=> (not res!327954) (not e!309979))))

(declare-datatypes ((List!10371 0))(
  ( (Nil!10368) (Cons!10367 (h!11307 (_ BitVec 64)) (t!16607 List!10371)) )
))
(declare-fun arrayNoDuplicates!0 (array!33725 (_ BitVec 32) List!10371) Bool)

(assert (=> b!532458 (= res!327954 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10368))))

(declare-fun res!327958 () Bool)

(assert (=> start!48506 (=> (not res!327958) (not e!309977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48506 (= res!327958 (validMask!0 mask!3216))))

(assert (=> start!48506 e!309977))

(assert (=> start!48506 true))

(declare-fun array_inv!11973 (array!33725) Bool)

(assert (=> start!48506 (array_inv!11973 a!3154)))

(declare-fun b!532459 () Bool)

(declare-fun res!327957 () Bool)

(assert (=> b!532459 (=> (not res!327957) (not e!309979))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33725 (_ BitVec 32)) Bool)

(assert (=> b!532459 (= res!327957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!532460 () Bool)

(declare-fun res!327952 () Bool)

(assert (=> b!532460 (=> (not res!327952) (not e!309979))))

(assert (=> b!532460 (= res!327952 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16563 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16563 a!3154)) (= (select (arr!16199 a!3154) resIndex!32) (select (arr!16199 a!3154) j!147))))))

(declare-fun b!532461 () Bool)

(assert (=> b!532461 (= e!309979 false)))

(declare-fun lt!245215 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!532461 (= lt!245215 (toIndex!0 (select (arr!16199 a!3154) j!147) mask!3216))))

(declare-fun b!532462 () Bool)

(declare-fun res!327951 () Bool)

(assert (=> b!532462 (=> (not res!327951) (not e!309977))))

(declare-fun arrayContainsKey!0 (array!33725 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!532462 (= res!327951 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!532463 () Bool)

(declare-fun res!327955 () Bool)

(assert (=> b!532463 (=> (not res!327955) (not e!309977))))

(assert (=> b!532463 (= res!327955 (and (= (size!16563 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16563 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16563 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48506 res!327958) b!532463))

(assert (= (and b!532463 res!327955) b!532454))

(assert (= (and b!532454 res!327953) b!532456))

(assert (= (and b!532456 res!327959) b!532462))

(assert (= (and b!532462 res!327951) b!532457))

(assert (= (and b!532457 res!327956) b!532459))

(assert (= (and b!532459 res!327957) b!532458))

(assert (= (and b!532458 res!327954) b!532460))

(assert (= (and b!532460 res!327952) b!532455))

(assert (= (and b!532455 res!327950) b!532461))

(declare-fun m!512599 () Bool)

(assert (=> b!532460 m!512599))

(declare-fun m!512601 () Bool)

(assert (=> b!532460 m!512601))

(declare-fun m!512603 () Bool)

(assert (=> start!48506 m!512603))

(declare-fun m!512605 () Bool)

(assert (=> start!48506 m!512605))

(declare-fun m!512607 () Bool)

(assert (=> b!532462 m!512607))

(declare-fun m!512609 () Bool)

(assert (=> b!532457 m!512609))

(declare-fun m!512611 () Bool)

(assert (=> b!532458 m!512611))

(declare-fun m!512613 () Bool)

(assert (=> b!532456 m!512613))

(assert (=> b!532454 m!512601))

(assert (=> b!532454 m!512601))

(declare-fun m!512615 () Bool)

(assert (=> b!532454 m!512615))

(assert (=> b!532461 m!512601))

(assert (=> b!532461 m!512601))

(declare-fun m!512617 () Bool)

(assert (=> b!532461 m!512617))

(declare-fun m!512619 () Bool)

(assert (=> b!532459 m!512619))

(assert (=> b!532455 m!512601))

(assert (=> b!532455 m!512601))

(declare-fun m!512621 () Bool)

(assert (=> b!532455 m!512621))

(push 1)

(assert (not b!532455))

(assert (not b!532457))

(assert (not b!532454))

(assert (not b!532458))

(assert (not b!532456))

