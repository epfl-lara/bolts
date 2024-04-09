; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48614 () Bool)

(assert start!48614)

(declare-fun b!533472 () Bool)

(declare-fun e!310374 () Bool)

(declare-fun e!310373 () Bool)

(assert (=> b!533472 (= e!310374 e!310373)))

(declare-fun res!328828 () Bool)

(assert (=> b!533472 (=> (not res!328828) (not e!310373))))

(declare-datatypes ((SeekEntryResult!4691 0))(
  ( (MissingZero!4691 (index!20988 (_ BitVec 32))) (Found!4691 (index!20989 (_ BitVec 32))) (Intermediate!4691 (undefined!5503 Bool) (index!20990 (_ BitVec 32)) (x!49981 (_ BitVec 32))) (Undefined!4691) (MissingVacant!4691 (index!20991 (_ BitVec 32))) )
))
(declare-fun lt!245440 () SeekEntryResult!4691)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533472 (= res!328828 (or (= lt!245440 (MissingZero!4691 i!1153)) (= lt!245440 (MissingVacant!4691 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!33782 0))(
  ( (array!33783 (arr!16226 (Array (_ BitVec 32) (_ BitVec 64))) (size!16590 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33782)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33782 (_ BitVec 32)) SeekEntryResult!4691)

(assert (=> b!533472 (= lt!245440 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533473 () Bool)

(declare-fun res!328832 () Bool)

(assert (=> b!533473 (=> (not res!328832) (not e!310374))))

(declare-fun arrayContainsKey!0 (array!33782 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533473 (= res!328832 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533474 () Bool)

(declare-fun res!328831 () Bool)

(assert (=> b!533474 (=> (not res!328831) (not e!310374))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533474 (= res!328831 (validKeyInArray!0 k!1998))))

(declare-fun b!533475 () Bool)

(declare-fun res!328833 () Bool)

(assert (=> b!533475 (=> (not res!328833) (not e!310373))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!533475 (= res!328833 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16590 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16590 a!3154)) (= (select (arr!16226 a!3154) resIndex!32) (select (arr!16226 a!3154) j!147))))))

(declare-fun res!328830 () Bool)

(assert (=> start!48614 (=> (not res!328830) (not e!310374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48614 (= res!328830 (validMask!0 mask!3216))))

(assert (=> start!48614 e!310374))

(assert (=> start!48614 true))

(declare-fun array_inv!12000 (array!33782) Bool)

(assert (=> start!48614 (array_inv!12000 a!3154)))

(declare-fun b!533476 () Bool)

(declare-fun res!328829 () Bool)

(assert (=> b!533476 (=> (not res!328829) (not e!310374))))

(assert (=> b!533476 (= res!328829 (validKeyInArray!0 (select (arr!16226 a!3154) j!147)))))

(declare-fun b!533477 () Bool)

(declare-fun res!328827 () Bool)

(assert (=> b!533477 (=> (not res!328827) (not e!310373))))

(declare-datatypes ((List!10398 0))(
  ( (Nil!10395) (Cons!10394 (h!11337 (_ BitVec 64)) (t!16634 List!10398)) )
))
(declare-fun arrayNoDuplicates!0 (array!33782 (_ BitVec 32) List!10398) Bool)

(assert (=> b!533477 (= res!328827 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10395))))

(declare-fun b!533478 () Bool)

(declare-fun res!328834 () Bool)

(assert (=> b!533478 (=> (not res!328834) (not e!310374))))

(assert (=> b!533478 (= res!328834 (and (= (size!16590 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16590 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16590 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533479 () Bool)

(assert (=> b!533479 (= e!310373 false)))

(declare-fun lt!245441 () SeekEntryResult!4691)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33782 (_ BitVec 32)) SeekEntryResult!4691)

(assert (=> b!533479 (= lt!245441 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16226 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!533480 () Bool)

(declare-fun res!328835 () Bool)

(assert (=> b!533480 (=> (not res!328835) (not e!310373))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33782 (_ BitVec 32)) Bool)

(assert (=> b!533480 (= res!328835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48614 res!328830) b!533478))

(assert (= (and b!533478 res!328834) b!533476))

(assert (= (and b!533476 res!328829) b!533474))

(assert (= (and b!533474 res!328831) b!533473))

(assert (= (and b!533473 res!328832) b!533472))

(assert (= (and b!533472 res!328828) b!533480))

(assert (= (and b!533480 res!328835) b!533477))

(assert (= (and b!533477 res!328827) b!533475))

(assert (= (and b!533475 res!328833) b!533479))

(declare-fun m!513333 () Bool)

(assert (=> b!533475 m!513333))

(declare-fun m!513335 () Bool)

(assert (=> b!533475 m!513335))

(declare-fun m!513337 () Bool)

(assert (=> start!48614 m!513337))

(declare-fun m!513339 () Bool)

(assert (=> start!48614 m!513339))

(assert (=> b!533479 m!513335))

(assert (=> b!533479 m!513335))

(declare-fun m!513341 () Bool)

(assert (=> b!533479 m!513341))

(declare-fun m!513343 () Bool)

(assert (=> b!533477 m!513343))

(declare-fun m!513345 () Bool)

(assert (=> b!533474 m!513345))

(declare-fun m!513347 () Bool)

(assert (=> b!533472 m!513347))

(declare-fun m!513349 () Bool)

(assert (=> b!533480 m!513349))

(declare-fun m!513351 () Bool)

(assert (=> b!533473 m!513351))

(assert (=> b!533476 m!513335))

(assert (=> b!533476 m!513335))

(declare-fun m!513353 () Bool)

(assert (=> b!533476 m!513353))

(push 1)

