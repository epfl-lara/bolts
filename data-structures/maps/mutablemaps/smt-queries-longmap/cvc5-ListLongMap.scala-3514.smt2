; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48670 () Bool)

(assert start!48670)

(declare-fun b!534311 () Bool)

(declare-fun res!329667 () Bool)

(declare-fun e!310625 () Bool)

(assert (=> b!534311 (=> (not res!329667) (not e!310625))))

(declare-datatypes ((array!33838 0))(
  ( (array!33839 (arr!16254 (Array (_ BitVec 32) (_ BitVec 64))) (size!16618 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33838)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33838 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534311 (= res!329667 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534312 () Bool)

(declare-fun res!329675 () Bool)

(assert (=> b!534312 (=> (not res!329675) (not e!310625))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534312 (= res!329675 (and (= (size!16618 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16618 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16618 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534313 () Bool)

(declare-fun res!329666 () Bool)

(assert (=> b!534313 (=> (not res!329666) (not e!310625))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534313 (= res!329666 (validKeyInArray!0 k!1998))))

(declare-fun b!534314 () Bool)

(declare-fun res!329671 () Bool)

(declare-fun e!310626 () Bool)

(assert (=> b!534314 (=> (not res!329671) (not e!310626))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534314 (= res!329671 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16618 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16618 a!3154)) (= (select (arr!16254 a!3154) resIndex!32) (select (arr!16254 a!3154) j!147))))))

(declare-fun b!534315 () Bool)

(declare-fun res!329672 () Bool)

(assert (=> b!534315 (=> (not res!329672) (not e!310626))))

(declare-datatypes ((List!10426 0))(
  ( (Nil!10423) (Cons!10422 (h!11365 (_ BitVec 64)) (t!16662 List!10426)) )
))
(declare-fun arrayNoDuplicates!0 (array!33838 (_ BitVec 32) List!10426) Bool)

(assert (=> b!534315 (= res!329672 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10423))))

(declare-fun b!534316 () Bool)

(declare-fun res!329668 () Bool)

(assert (=> b!534316 (=> (not res!329668) (not e!310626))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33838 (_ BitVec 32)) Bool)

(assert (=> b!534316 (= res!329668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534318 () Bool)

(assert (=> b!534318 (= e!310626 false)))

(declare-datatypes ((SeekEntryResult!4719 0))(
  ( (MissingZero!4719 (index!21100 (_ BitVec 32))) (Found!4719 (index!21101 (_ BitVec 32))) (Intermediate!4719 (undefined!5531 Bool) (index!21102 (_ BitVec 32)) (x!50089 (_ BitVec 32))) (Undefined!4719) (MissingVacant!4719 (index!21103 (_ BitVec 32))) )
))
(declare-fun lt!245608 () SeekEntryResult!4719)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33838 (_ BitVec 32)) SeekEntryResult!4719)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534318 (= lt!245608 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16254 a!3154) j!147) mask!3216) (select (arr!16254 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534319 () Bool)

(declare-fun res!329669 () Bool)

(assert (=> b!534319 (=> (not res!329669) (not e!310625))))

(assert (=> b!534319 (= res!329669 (validKeyInArray!0 (select (arr!16254 a!3154) j!147)))))

(declare-fun b!534320 () Bool)

(assert (=> b!534320 (= e!310625 e!310626)))

(declare-fun res!329673 () Bool)

(assert (=> b!534320 (=> (not res!329673) (not e!310626))))

(declare-fun lt!245609 () SeekEntryResult!4719)

(assert (=> b!534320 (= res!329673 (or (= lt!245609 (MissingZero!4719 i!1153)) (= lt!245609 (MissingVacant!4719 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33838 (_ BitVec 32)) SeekEntryResult!4719)

(assert (=> b!534320 (= lt!245609 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534317 () Bool)

(declare-fun res!329670 () Bool)

(assert (=> b!534317 (=> (not res!329670) (not e!310626))))

(assert (=> b!534317 (= res!329670 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16254 a!3154) j!147) a!3154 mask!3216) (Intermediate!4719 false resIndex!32 resX!32)))))

(declare-fun res!329674 () Bool)

(assert (=> start!48670 (=> (not res!329674) (not e!310625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48670 (= res!329674 (validMask!0 mask!3216))))

(assert (=> start!48670 e!310625))

(assert (=> start!48670 true))

(declare-fun array_inv!12028 (array!33838) Bool)

(assert (=> start!48670 (array_inv!12028 a!3154)))

(assert (= (and start!48670 res!329674) b!534312))

(assert (= (and b!534312 res!329675) b!534319))

(assert (= (and b!534319 res!329669) b!534313))

(assert (= (and b!534313 res!329666) b!534311))

(assert (= (and b!534311 res!329667) b!534320))

(assert (= (and b!534320 res!329673) b!534316))

(assert (= (and b!534316 res!329668) b!534315))

(assert (= (and b!534315 res!329672) b!534314))

(assert (= (and b!534314 res!329671) b!534317))

(assert (= (and b!534317 res!329670) b!534318))

(declare-fun m!514057 () Bool)

(assert (=> b!534314 m!514057))

(declare-fun m!514059 () Bool)

(assert (=> b!534314 m!514059))

(assert (=> b!534317 m!514059))

(assert (=> b!534317 m!514059))

(declare-fun m!514061 () Bool)

(assert (=> b!534317 m!514061))

(declare-fun m!514063 () Bool)

(assert (=> b!534320 m!514063))

(assert (=> b!534319 m!514059))

(assert (=> b!534319 m!514059))

(declare-fun m!514065 () Bool)

(assert (=> b!534319 m!514065))

(declare-fun m!514067 () Bool)

(assert (=> b!534311 m!514067))

(declare-fun m!514069 () Bool)

(assert (=> b!534313 m!514069))

(declare-fun m!514071 () Bool)

(assert (=> b!534316 m!514071))

(assert (=> b!534318 m!514059))

(assert (=> b!534318 m!514059))

(declare-fun m!514073 () Bool)

(assert (=> b!534318 m!514073))

(assert (=> b!534318 m!514073))

(assert (=> b!534318 m!514059))

(declare-fun m!514075 () Bool)

(assert (=> b!534318 m!514075))

(declare-fun m!514077 () Bool)

(assert (=> start!48670 m!514077))

(declare-fun m!514079 () Bool)

(assert (=> start!48670 m!514079))

(declare-fun m!514081 () Bool)

(assert (=> b!534315 m!514081))

(push 1)

