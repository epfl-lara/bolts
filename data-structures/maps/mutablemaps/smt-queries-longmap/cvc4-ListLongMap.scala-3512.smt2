; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48662 () Bool)

(assert start!48662)

(declare-fun b!534191 () Bool)

(declare-fun e!310589 () Bool)

(assert (=> b!534191 (= e!310589 false)))

(declare-datatypes ((SeekEntryResult!4715 0))(
  ( (MissingZero!4715 (index!21084 (_ BitVec 32))) (Found!4715 (index!21085 (_ BitVec 32))) (Intermediate!4715 (undefined!5527 Bool) (index!21086 (_ BitVec 32)) (x!50069 (_ BitVec 32))) (Undefined!4715) (MissingVacant!4715 (index!21087 (_ BitVec 32))) )
))
(declare-fun lt!245584 () SeekEntryResult!4715)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33830 0))(
  ( (array!33831 (arr!16250 (Array (_ BitVec 32) (_ BitVec 64))) (size!16614 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33830)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33830 (_ BitVec 32)) SeekEntryResult!4715)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534191 (= lt!245584 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16250 a!3154) j!147) mask!3216) (select (arr!16250 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534192 () Bool)

(declare-fun res!329547 () Bool)

(assert (=> b!534192 (=> (not res!329547) (not e!310589))))

(declare-datatypes ((List!10422 0))(
  ( (Nil!10419) (Cons!10418 (h!11361 (_ BitVec 64)) (t!16658 List!10422)) )
))
(declare-fun arrayNoDuplicates!0 (array!33830 (_ BitVec 32) List!10422) Bool)

(assert (=> b!534192 (= res!329547 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10419))))

(declare-fun b!534193 () Bool)

(declare-fun res!329554 () Bool)

(declare-fun e!310590 () Bool)

(assert (=> b!534193 (=> (not res!329554) (not e!310590))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534193 (= res!329554 (validKeyInArray!0 (select (arr!16250 a!3154) j!147)))))

(declare-fun b!534194 () Bool)

(declare-fun res!329551 () Bool)

(assert (=> b!534194 (=> (not res!329551) (not e!310590))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534194 (= res!329551 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534196 () Bool)

(declare-fun res!329553 () Bool)

(assert (=> b!534196 (=> (not res!329553) (not e!310589))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!534196 (= res!329553 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16614 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16614 a!3154)) (= (select (arr!16250 a!3154) resIndex!32) (select (arr!16250 a!3154) j!147))))))

(declare-fun b!534197 () Bool)

(declare-fun res!329546 () Bool)

(assert (=> b!534197 (=> (not res!329546) (not e!310590))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534197 (= res!329546 (and (= (size!16614 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16614 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16614 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534198 () Bool)

(declare-fun res!329549 () Bool)

(assert (=> b!534198 (=> (not res!329549) (not e!310590))))

(assert (=> b!534198 (= res!329549 (validKeyInArray!0 k!1998))))

(declare-fun res!329550 () Bool)

(assert (=> start!48662 (=> (not res!329550) (not e!310590))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48662 (= res!329550 (validMask!0 mask!3216))))

(assert (=> start!48662 e!310590))

(assert (=> start!48662 true))

(declare-fun array_inv!12024 (array!33830) Bool)

(assert (=> start!48662 (array_inv!12024 a!3154)))

(declare-fun b!534195 () Bool)

(declare-fun res!329548 () Bool)

(assert (=> b!534195 (=> (not res!329548) (not e!310589))))

(assert (=> b!534195 (= res!329548 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16250 a!3154) j!147) a!3154 mask!3216) (Intermediate!4715 false resIndex!32 resX!32)))))

(declare-fun b!534199 () Bool)

(assert (=> b!534199 (= e!310590 e!310589)))

(declare-fun res!329552 () Bool)

(assert (=> b!534199 (=> (not res!329552) (not e!310589))))

(declare-fun lt!245585 () SeekEntryResult!4715)

(assert (=> b!534199 (= res!329552 (or (= lt!245585 (MissingZero!4715 i!1153)) (= lt!245585 (MissingVacant!4715 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33830 (_ BitVec 32)) SeekEntryResult!4715)

(assert (=> b!534199 (= lt!245585 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!534200 () Bool)

(declare-fun res!329555 () Bool)

(assert (=> b!534200 (=> (not res!329555) (not e!310589))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33830 (_ BitVec 32)) Bool)

(assert (=> b!534200 (= res!329555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!48662 res!329550) b!534197))

(assert (= (and b!534197 res!329546) b!534193))

(assert (= (and b!534193 res!329554) b!534198))

(assert (= (and b!534198 res!329549) b!534194))

(assert (= (and b!534194 res!329551) b!534199))

(assert (= (and b!534199 res!329552) b!534200))

(assert (= (and b!534200 res!329555) b!534192))

(assert (= (and b!534192 res!329547) b!534196))

(assert (= (and b!534196 res!329553) b!534195))

(assert (= (and b!534195 res!329548) b!534191))

(declare-fun m!513953 () Bool)

(assert (=> b!534192 m!513953))

(declare-fun m!513955 () Bool)

(assert (=> b!534199 m!513955))

(declare-fun m!513957 () Bool)

(assert (=> b!534198 m!513957))

(declare-fun m!513959 () Bool)

(assert (=> start!48662 m!513959))

(declare-fun m!513961 () Bool)

(assert (=> start!48662 m!513961))

(declare-fun m!513963 () Bool)

(assert (=> b!534194 m!513963))

(declare-fun m!513965 () Bool)

(assert (=> b!534195 m!513965))

(assert (=> b!534195 m!513965))

(declare-fun m!513967 () Bool)

(assert (=> b!534195 m!513967))

(declare-fun m!513969 () Bool)

(assert (=> b!534200 m!513969))

(declare-fun m!513971 () Bool)

(assert (=> b!534196 m!513971))

(assert (=> b!534196 m!513965))

(assert (=> b!534193 m!513965))

(assert (=> b!534193 m!513965))

(declare-fun m!513973 () Bool)

(assert (=> b!534193 m!513973))

(assert (=> b!534191 m!513965))

(assert (=> b!534191 m!513965))

(declare-fun m!513975 () Bool)

(assert (=> b!534191 m!513975))

(assert (=> b!534191 m!513975))

(assert (=> b!534191 m!513965))

(declare-fun m!513977 () Bool)

(assert (=> b!534191 m!513977))

(push 1)

(assert (not b!534193))

(assert (not b!534199))

(assert (not b!534198))

(assert (not b!534194))

(assert (not start!48662))

(assert (not b!534200))

(assert (not b!534195))

(assert (not b!534191))

(assert (not b!534192))

(check-sat)

(pop 1)

