; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48692 () Bool)

(assert start!48692)

(declare-fun b!534641 () Bool)

(declare-fun res!329999 () Bool)

(declare-fun e!310726 () Bool)

(assert (=> b!534641 (=> (not res!329999) (not e!310726))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33860 0))(
  ( (array!33861 (arr!16265 (Array (_ BitVec 32) (_ BitVec 64))) (size!16629 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33860)

(declare-fun resX!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4730 0))(
  ( (MissingZero!4730 (index!21144 (_ BitVec 32))) (Found!4730 (index!21145 (_ BitVec 32))) (Intermediate!4730 (undefined!5542 Bool) (index!21146 (_ BitVec 32)) (x!50124 (_ BitVec 32))) (Undefined!4730) (MissingVacant!4730 (index!21147 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33860 (_ BitVec 32)) SeekEntryResult!4730)

(assert (=> b!534641 (= res!329999 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16265 a!3154) j!147) a!3154 mask!3216) (Intermediate!4730 false resIndex!32 resX!32)))))

(declare-fun b!534642 () Bool)

(declare-fun res!330002 () Bool)

(declare-fun e!310724 () Bool)

(assert (=> b!534642 (=> (not res!330002) (not e!310724))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534642 (= res!330002 (validKeyInArray!0 (select (arr!16265 a!3154) j!147)))))

(declare-fun b!534643 () Bool)

(declare-fun res!330004 () Bool)

(assert (=> b!534643 (=> (not res!330004) (not e!310726))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33860 (_ BitVec 32)) Bool)

(assert (=> b!534643 (= res!330004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534644 () Bool)

(assert (=> b!534644 (= e!310724 e!310726)))

(declare-fun res!329998 () Bool)

(assert (=> b!534644 (=> (not res!329998) (not e!310726))))

(declare-fun lt!245674 () SeekEntryResult!4730)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534644 (= res!329998 (or (= lt!245674 (MissingZero!4730 i!1153)) (= lt!245674 (MissingVacant!4730 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33860 (_ BitVec 32)) SeekEntryResult!4730)

(assert (=> b!534644 (= lt!245674 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534645 () Bool)

(declare-fun res!329996 () Bool)

(assert (=> b!534645 (=> (not res!329996) (not e!310724))))

(assert (=> b!534645 (= res!329996 (validKeyInArray!0 k!1998))))

(declare-fun b!534646 () Bool)

(declare-fun res!330005 () Bool)

(assert (=> b!534646 (=> (not res!330005) (not e!310724))))

(assert (=> b!534646 (= res!330005 (and (= (size!16629 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16629 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16629 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534647 () Bool)

(assert (=> b!534647 (= e!310726 false)))

(declare-fun lt!245675 () SeekEntryResult!4730)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534647 (= lt!245675 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16265 a!3154) j!147) mask!3216) (select (arr!16265 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534648 () Bool)

(declare-fun res!329997 () Bool)

(assert (=> b!534648 (=> (not res!329997) (not e!310724))))

(declare-fun arrayContainsKey!0 (array!33860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534648 (= res!329997 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534650 () Bool)

(declare-fun res!330000 () Bool)

(assert (=> b!534650 (=> (not res!330000) (not e!310726))))

(declare-datatypes ((List!10437 0))(
  ( (Nil!10434) (Cons!10433 (h!11376 (_ BitVec 64)) (t!16673 List!10437)) )
))
(declare-fun arrayNoDuplicates!0 (array!33860 (_ BitVec 32) List!10437) Bool)

(assert (=> b!534650 (= res!330000 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10434))))

(declare-fun b!534649 () Bool)

(declare-fun res!330003 () Bool)

(assert (=> b!534649 (=> (not res!330003) (not e!310726))))

(assert (=> b!534649 (= res!330003 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16629 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16629 a!3154)) (= (select (arr!16265 a!3154) resIndex!32) (select (arr!16265 a!3154) j!147))))))

(declare-fun res!330001 () Bool)

(assert (=> start!48692 (=> (not res!330001) (not e!310724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48692 (= res!330001 (validMask!0 mask!3216))))

(assert (=> start!48692 e!310724))

(assert (=> start!48692 true))

(declare-fun array_inv!12039 (array!33860) Bool)

(assert (=> start!48692 (array_inv!12039 a!3154)))

(assert (= (and start!48692 res!330001) b!534646))

(assert (= (and b!534646 res!330005) b!534642))

(assert (= (and b!534642 res!330002) b!534645))

(assert (= (and b!534645 res!329996) b!534648))

(assert (= (and b!534648 res!329997) b!534644))

(assert (= (and b!534644 res!329998) b!534643))

(assert (= (and b!534643 res!330004) b!534650))

(assert (= (and b!534650 res!330000) b!534649))

(assert (= (and b!534649 res!330003) b!534641))

(assert (= (and b!534641 res!329999) b!534647))

(declare-fun m!514343 () Bool)

(assert (=> b!534649 m!514343))

(declare-fun m!514345 () Bool)

(assert (=> b!534649 m!514345))

(declare-fun m!514347 () Bool)

(assert (=> b!534643 m!514347))

(assert (=> b!534647 m!514345))

(assert (=> b!534647 m!514345))

(declare-fun m!514349 () Bool)

(assert (=> b!534647 m!514349))

(assert (=> b!534647 m!514349))

(assert (=> b!534647 m!514345))

(declare-fun m!514351 () Bool)

(assert (=> b!534647 m!514351))

(declare-fun m!514353 () Bool)

(assert (=> start!48692 m!514353))

(declare-fun m!514355 () Bool)

(assert (=> start!48692 m!514355))

(assert (=> b!534641 m!514345))

(assert (=> b!534641 m!514345))

(declare-fun m!514357 () Bool)

(assert (=> b!534641 m!514357))

(declare-fun m!514359 () Bool)

(assert (=> b!534645 m!514359))

(declare-fun m!514361 () Bool)

(assert (=> b!534644 m!514361))

(declare-fun m!514363 () Bool)

(assert (=> b!534648 m!514363))

(declare-fun m!514365 () Bool)

(assert (=> b!534650 m!514365))

(assert (=> b!534642 m!514345))

(assert (=> b!534642 m!514345))

(declare-fun m!514367 () Bool)

(assert (=> b!534642 m!514367))

(push 1)

(assert (not b!534644))

(assert (not b!534647))

(assert (not b!534648))

(assert (not b!534641))

(assert (not b!534643))

(assert (not b!534642))

(assert (not b!534645))

(assert (not b!534650))

(assert (not start!48692))

