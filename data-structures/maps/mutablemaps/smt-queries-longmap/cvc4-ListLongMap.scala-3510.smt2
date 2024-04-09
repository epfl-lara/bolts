; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48650 () Bool)

(assert start!48650)

(declare-fun res!329370 () Bool)

(declare-fun e!310536 () Bool)

(assert (=> start!48650 (=> (not res!329370) (not e!310536))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48650 (= res!329370 (validMask!0 mask!3216))))

(assert (=> start!48650 e!310536))

(assert (=> start!48650 true))

(declare-datatypes ((array!33818 0))(
  ( (array!33819 (arr!16244 (Array (_ BitVec 32) (_ BitVec 64))) (size!16608 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33818)

(declare-fun array_inv!12018 (array!33818) Bool)

(assert (=> start!48650 (array_inv!12018 a!3154)))

(declare-fun b!534011 () Bool)

(declare-fun res!329369 () Bool)

(declare-fun e!310537 () Bool)

(assert (=> b!534011 (=> (not res!329369) (not e!310537))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534011 (= res!329369 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16608 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16608 a!3154)) (= (select (arr!16244 a!3154) resIndex!32) (select (arr!16244 a!3154) j!147))))))

(declare-fun b!534012 () Bool)

(declare-fun res!329373 () Bool)

(assert (=> b!534012 (=> (not res!329373) (not e!310537))))

(declare-datatypes ((SeekEntryResult!4709 0))(
  ( (MissingZero!4709 (index!21060 (_ BitVec 32))) (Found!4709 (index!21061 (_ BitVec 32))) (Intermediate!4709 (undefined!5521 Bool) (index!21062 (_ BitVec 32)) (x!50047 (_ BitVec 32))) (Undefined!4709) (MissingVacant!4709 (index!21063 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33818 (_ BitVec 32)) SeekEntryResult!4709)

(assert (=> b!534012 (= res!329373 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16244 a!3154) j!147) a!3154 mask!3216) (Intermediate!4709 false resIndex!32 resX!32)))))

(declare-fun b!534013 () Bool)

(assert (=> b!534013 (= e!310536 e!310537)))

(declare-fun res!329367 () Bool)

(assert (=> b!534013 (=> (not res!329367) (not e!310537))))

(declare-fun lt!245549 () SeekEntryResult!4709)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534013 (= res!329367 (or (= lt!245549 (MissingZero!4709 i!1153)) (= lt!245549 (MissingVacant!4709 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33818 (_ BitVec 32)) SeekEntryResult!4709)

(assert (=> b!534013 (= lt!245549 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534014 () Bool)

(assert (=> b!534014 (= e!310537 false)))

(declare-fun lt!245548 () SeekEntryResult!4709)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534014 (= lt!245548 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16244 a!3154) j!147) mask!3216) (select (arr!16244 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534015 () Bool)

(declare-fun res!329372 () Bool)

(assert (=> b!534015 (=> (not res!329372) (not e!310537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33818 (_ BitVec 32)) Bool)

(assert (=> b!534015 (= res!329372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534016 () Bool)

(declare-fun res!329374 () Bool)

(assert (=> b!534016 (=> (not res!329374) (not e!310537))))

(declare-datatypes ((List!10416 0))(
  ( (Nil!10413) (Cons!10412 (h!11355 (_ BitVec 64)) (t!16652 List!10416)) )
))
(declare-fun arrayNoDuplicates!0 (array!33818 (_ BitVec 32) List!10416) Bool)

(assert (=> b!534016 (= res!329374 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10413))))

(declare-fun b!534017 () Bool)

(declare-fun res!329375 () Bool)

(assert (=> b!534017 (=> (not res!329375) (not e!310536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534017 (= res!329375 (validKeyInArray!0 (select (arr!16244 a!3154) j!147)))))

(declare-fun b!534018 () Bool)

(declare-fun res!329371 () Bool)

(assert (=> b!534018 (=> (not res!329371) (not e!310536))))

(assert (=> b!534018 (= res!329371 (and (= (size!16608 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16608 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16608 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534019 () Bool)

(declare-fun res!329366 () Bool)

(assert (=> b!534019 (=> (not res!329366) (not e!310536))))

(assert (=> b!534019 (= res!329366 (validKeyInArray!0 k!1998))))

(declare-fun b!534020 () Bool)

(declare-fun res!329368 () Bool)

(assert (=> b!534020 (=> (not res!329368) (not e!310536))))

(declare-fun arrayContainsKey!0 (array!33818 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534020 (= res!329368 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48650 res!329370) b!534018))

(assert (= (and b!534018 res!329371) b!534017))

(assert (= (and b!534017 res!329375) b!534019))

(assert (= (and b!534019 res!329366) b!534020))

(assert (= (and b!534020 res!329368) b!534013))

(assert (= (and b!534013 res!329367) b!534015))

(assert (= (and b!534015 res!329372) b!534016))

(assert (= (and b!534016 res!329374) b!534011))

(assert (= (and b!534011 res!329369) b!534012))

(assert (= (and b!534012 res!329373) b!534014))

(declare-fun m!513797 () Bool)

(assert (=> b!534020 m!513797))

(declare-fun m!513799 () Bool)

(assert (=> b!534017 m!513799))

(assert (=> b!534017 m!513799))

(declare-fun m!513801 () Bool)

(assert (=> b!534017 m!513801))

(declare-fun m!513803 () Bool)

(assert (=> b!534011 m!513803))

(assert (=> b!534011 m!513799))

(assert (=> b!534014 m!513799))

(assert (=> b!534014 m!513799))

(declare-fun m!513805 () Bool)

(assert (=> b!534014 m!513805))

(assert (=> b!534014 m!513805))

(assert (=> b!534014 m!513799))

(declare-fun m!513807 () Bool)

(assert (=> b!534014 m!513807))

(declare-fun m!513809 () Bool)

(assert (=> b!534019 m!513809))

(declare-fun m!513811 () Bool)

(assert (=> b!534015 m!513811))

(declare-fun m!513813 () Bool)

(assert (=> start!48650 m!513813))

(declare-fun m!513815 () Bool)

(assert (=> start!48650 m!513815))

(declare-fun m!513817 () Bool)

(assert (=> b!534016 m!513817))

(declare-fun m!513819 () Bool)

(assert (=> b!534013 m!513819))

(assert (=> b!534012 m!513799))

(assert (=> b!534012 m!513799))

(declare-fun m!513821 () Bool)

(assert (=> b!534012 m!513821))

(push 1)

