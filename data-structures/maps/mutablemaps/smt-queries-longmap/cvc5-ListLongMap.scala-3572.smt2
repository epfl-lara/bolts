; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49126 () Bool)

(assert start!49126)

(declare-fun b!540791 () Bool)

(declare-fun e!313221 () Bool)

(assert (=> b!540791 (= e!313221 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4893 0))(
  ( (MissingZero!4893 (index!21796 (_ BitVec 32))) (Found!4893 (index!21797 (_ BitVec 32))) (Intermediate!4893 (undefined!5705 Bool) (index!21798 (_ BitVec 32)) (x!50739 (_ BitVec 32))) (Undefined!4893) (MissingVacant!4893 (index!21799 (_ BitVec 32))) )
))
(declare-fun lt!247493 () SeekEntryResult!4893)

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34192 0))(
  ( (array!34193 (arr!16428 (Array (_ BitVec 32) (_ BitVec 64))) (size!16792 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34192)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34192 (_ BitVec 32)) SeekEntryResult!4893)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540791 (= lt!247493 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16428 a!3154) j!147) mask!3216) (select (arr!16428 a!3154) j!147) a!3154 mask!3216))))

(declare-fun res!335836 () Bool)

(declare-fun e!313222 () Bool)

(assert (=> start!49126 (=> (not res!335836) (not e!313222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49126 (= res!335836 (validMask!0 mask!3216))))

(assert (=> start!49126 e!313222))

(assert (=> start!49126 true))

(declare-fun array_inv!12202 (array!34192) Bool)

(assert (=> start!49126 (array_inv!12202 a!3154)))

(declare-fun b!540792 () Bool)

(assert (=> b!540792 (= e!313222 e!313221)))

(declare-fun res!335833 () Bool)

(assert (=> b!540792 (=> (not res!335833) (not e!313221))))

(declare-fun lt!247492 () SeekEntryResult!4893)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540792 (= res!335833 (or (= lt!247492 (MissingZero!4893 i!1153)) (= lt!247492 (MissingVacant!4893 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34192 (_ BitVec 32)) SeekEntryResult!4893)

(assert (=> b!540792 (= lt!247492 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!540793 () Bool)

(declare-fun res!335830 () Bool)

(assert (=> b!540793 (=> (not res!335830) (not e!313222))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540793 (= res!335830 (validKeyInArray!0 k!1998))))

(declare-fun b!540794 () Bool)

(declare-fun res!335834 () Bool)

(assert (=> b!540794 (=> (not res!335834) (not e!313222))))

(assert (=> b!540794 (= res!335834 (validKeyInArray!0 (select (arr!16428 a!3154) j!147)))))

(declare-fun b!540795 () Bool)

(declare-fun res!335837 () Bool)

(assert (=> b!540795 (=> (not res!335837) (not e!313221))))

(declare-datatypes ((List!10600 0))(
  ( (Nil!10597) (Cons!10596 (h!11545 (_ BitVec 64)) (t!16836 List!10600)) )
))
(declare-fun arrayNoDuplicates!0 (array!34192 (_ BitVec 32) List!10600) Bool)

(assert (=> b!540795 (= res!335837 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10597))))

(declare-fun b!540796 () Bool)

(declare-fun res!335829 () Bool)

(assert (=> b!540796 (=> (not res!335829) (not e!313222))))

(declare-fun arrayContainsKey!0 (array!34192 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540796 (= res!335829 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540797 () Bool)

(declare-fun res!335835 () Bool)

(assert (=> b!540797 (=> (not res!335835) (not e!313221))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34192 (_ BitVec 32)) Bool)

(assert (=> b!540797 (= res!335835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540798 () Bool)

(declare-fun res!335832 () Bool)

(assert (=> b!540798 (=> (not res!335832) (not e!313222))))

(assert (=> b!540798 (= res!335832 (and (= (size!16792 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16792 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16792 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540799 () Bool)

(declare-fun res!335831 () Bool)

(assert (=> b!540799 (=> (not res!335831) (not e!313221))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!540799 (= res!335831 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16428 a!3154) j!147) a!3154 mask!3216) (Intermediate!4893 false resIndex!32 resX!32)))))

(declare-fun b!540800 () Bool)

(declare-fun res!335828 () Bool)

(assert (=> b!540800 (=> (not res!335828) (not e!313221))))

(assert (=> b!540800 (= res!335828 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16792 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16792 a!3154)) (= (select (arr!16428 a!3154) resIndex!32) (select (arr!16428 a!3154) j!147))))))

(assert (= (and start!49126 res!335836) b!540798))

(assert (= (and b!540798 res!335832) b!540794))

(assert (= (and b!540794 res!335834) b!540793))

(assert (= (and b!540793 res!335830) b!540796))

(assert (= (and b!540796 res!335829) b!540792))

(assert (= (and b!540792 res!335833) b!540797))

(assert (= (and b!540797 res!335835) b!540795))

(assert (= (and b!540795 res!335837) b!540800))

(assert (= (and b!540800 res!335828) b!540799))

(assert (= (and b!540799 res!335831) b!540791))

(declare-fun m!519463 () Bool)

(assert (=> b!540792 m!519463))

(declare-fun m!519465 () Bool)

(assert (=> b!540799 m!519465))

(assert (=> b!540799 m!519465))

(declare-fun m!519467 () Bool)

(assert (=> b!540799 m!519467))

(declare-fun m!519469 () Bool)

(assert (=> b!540796 m!519469))

(declare-fun m!519471 () Bool)

(assert (=> b!540793 m!519471))

(assert (=> b!540794 m!519465))

(assert (=> b!540794 m!519465))

(declare-fun m!519473 () Bool)

(assert (=> b!540794 m!519473))

(declare-fun m!519475 () Bool)

(assert (=> b!540800 m!519475))

(assert (=> b!540800 m!519465))

(declare-fun m!519477 () Bool)

(assert (=> b!540795 m!519477))

(declare-fun m!519479 () Bool)

(assert (=> start!49126 m!519479))

(declare-fun m!519481 () Bool)

(assert (=> start!49126 m!519481))

(declare-fun m!519483 () Bool)

(assert (=> b!540797 m!519483))

(assert (=> b!540791 m!519465))

(assert (=> b!540791 m!519465))

(declare-fun m!519485 () Bool)

(assert (=> b!540791 m!519485))

(assert (=> b!540791 m!519485))

(assert (=> b!540791 m!519465))

(declare-fun m!519487 () Bool)

(assert (=> b!540791 m!519487))

(push 1)

