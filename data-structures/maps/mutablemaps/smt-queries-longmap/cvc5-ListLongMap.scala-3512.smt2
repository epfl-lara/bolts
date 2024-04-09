; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48658 () Bool)

(assert start!48658)

(declare-fun b!534131 () Bool)

(declare-fun res!329493 () Bool)

(declare-fun e!310573 () Bool)

(assert (=> b!534131 (=> (not res!329493) (not e!310573))))

(declare-datatypes ((array!33826 0))(
  ( (array!33827 (arr!16248 (Array (_ BitVec 32) (_ BitVec 64))) (size!16612 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33826)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534131 (= res!329493 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534132 () Bool)

(declare-fun e!310571 () Bool)

(assert (=> b!534132 (= e!310571 false)))

(declare-datatypes ((SeekEntryResult!4713 0))(
  ( (MissingZero!4713 (index!21076 (_ BitVec 32))) (Found!4713 (index!21077 (_ BitVec 32))) (Intermediate!4713 (undefined!5525 Bool) (index!21078 (_ BitVec 32)) (x!50067 (_ BitVec 32))) (Undefined!4713) (MissingVacant!4713 (index!21079 (_ BitVec 32))) )
))
(declare-fun lt!245573 () SeekEntryResult!4713)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33826 (_ BitVec 32)) SeekEntryResult!4713)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534132 (= lt!245573 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16248 a!3154) j!147) mask!3216) (select (arr!16248 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534133 () Bool)

(declare-fun res!329488 () Bool)

(assert (=> b!534133 (=> (not res!329488) (not e!310573))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534133 (= res!329488 (validKeyInArray!0 (select (arr!16248 a!3154) j!147)))))

(declare-fun b!534134 () Bool)

(declare-fun res!329495 () Bool)

(assert (=> b!534134 (=> (not res!329495) (not e!310571))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33826 (_ BitVec 32)) Bool)

(assert (=> b!534134 (= res!329495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534135 () Bool)

(declare-fun res!329489 () Bool)

(assert (=> b!534135 (=> (not res!329489) (not e!310573))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534135 (= res!329489 (and (= (size!16612 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16612 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16612 a!3154)) (not (= i!1153 j!147))))))

(declare-fun res!329490 () Bool)

(assert (=> start!48658 (=> (not res!329490) (not e!310573))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48658 (= res!329490 (validMask!0 mask!3216))))

(assert (=> start!48658 e!310573))

(assert (=> start!48658 true))

(declare-fun array_inv!12022 (array!33826) Bool)

(assert (=> start!48658 (array_inv!12022 a!3154)))

(declare-fun b!534136 () Bool)

(declare-fun res!329494 () Bool)

(assert (=> b!534136 (=> (not res!329494) (not e!310571))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534136 (= res!329494 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16248 a!3154) j!147) a!3154 mask!3216) (Intermediate!4713 false resIndex!32 resX!32)))))

(declare-fun b!534137 () Bool)

(assert (=> b!534137 (= e!310573 e!310571)))

(declare-fun res!329486 () Bool)

(assert (=> b!534137 (=> (not res!329486) (not e!310571))))

(declare-fun lt!245572 () SeekEntryResult!4713)

(assert (=> b!534137 (= res!329486 (or (= lt!245572 (MissingZero!4713 i!1153)) (= lt!245572 (MissingVacant!4713 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33826 (_ BitVec 32)) SeekEntryResult!4713)

(assert (=> b!534137 (= lt!245572 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534138 () Bool)

(declare-fun res!329487 () Bool)

(assert (=> b!534138 (=> (not res!329487) (not e!310571))))

(assert (=> b!534138 (= res!329487 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16612 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16612 a!3154)) (= (select (arr!16248 a!3154) resIndex!32) (select (arr!16248 a!3154) j!147))))))

(declare-fun b!534139 () Bool)

(declare-fun res!329491 () Bool)

(assert (=> b!534139 (=> (not res!329491) (not e!310573))))

(assert (=> b!534139 (= res!329491 (validKeyInArray!0 k!1998))))

(declare-fun b!534140 () Bool)

(declare-fun res!329492 () Bool)

(assert (=> b!534140 (=> (not res!329492) (not e!310571))))

(declare-datatypes ((List!10420 0))(
  ( (Nil!10417) (Cons!10416 (h!11359 (_ BitVec 64)) (t!16656 List!10420)) )
))
(declare-fun arrayNoDuplicates!0 (array!33826 (_ BitVec 32) List!10420) Bool)

(assert (=> b!534140 (= res!329492 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10417))))

(assert (= (and start!48658 res!329490) b!534135))

(assert (= (and b!534135 res!329489) b!534133))

(assert (= (and b!534133 res!329488) b!534139))

(assert (= (and b!534139 res!329491) b!534131))

(assert (= (and b!534131 res!329493) b!534137))

(assert (= (and b!534137 res!329486) b!534134))

(assert (= (and b!534134 res!329495) b!534140))

(assert (= (and b!534140 res!329492) b!534138))

(assert (= (and b!534138 res!329487) b!534136))

(assert (= (and b!534136 res!329494) b!534132))

(declare-fun m!513901 () Bool)

(assert (=> b!534131 m!513901))

(declare-fun m!513903 () Bool)

(assert (=> b!534138 m!513903))

(declare-fun m!513905 () Bool)

(assert (=> b!534138 m!513905))

(assert (=> b!534133 m!513905))

(assert (=> b!534133 m!513905))

(declare-fun m!513907 () Bool)

(assert (=> b!534133 m!513907))

(assert (=> b!534132 m!513905))

(assert (=> b!534132 m!513905))

(declare-fun m!513909 () Bool)

(assert (=> b!534132 m!513909))

(assert (=> b!534132 m!513909))

(assert (=> b!534132 m!513905))

(declare-fun m!513911 () Bool)

(assert (=> b!534132 m!513911))

(assert (=> b!534136 m!513905))

(assert (=> b!534136 m!513905))

(declare-fun m!513913 () Bool)

(assert (=> b!534136 m!513913))

(declare-fun m!513915 () Bool)

(assert (=> b!534139 m!513915))

(declare-fun m!513917 () Bool)

(assert (=> b!534137 m!513917))

(declare-fun m!513919 () Bool)

(assert (=> b!534134 m!513919))

(declare-fun m!513921 () Bool)

(assert (=> start!48658 m!513921))

(declare-fun m!513923 () Bool)

(assert (=> start!48658 m!513923))

(declare-fun m!513925 () Bool)

(assert (=> b!534140 m!513925))

(push 1)

