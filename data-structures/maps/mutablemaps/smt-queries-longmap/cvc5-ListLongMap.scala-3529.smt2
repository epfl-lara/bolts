; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48760 () Bool)

(assert start!48760)

(declare-fun b!535793 () Bool)

(declare-fun e!311136 () Bool)

(assert (=> b!535793 (= e!311136 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4764 0))(
  ( (MissingZero!4764 (index!21280 (_ BitVec 32))) (Found!4764 (index!21281 (_ BitVec 32))) (Intermediate!4764 (undefined!5576 Bool) (index!21282 (_ BitVec 32)) (x!50254 (_ BitVec 32))) (Undefined!4764) (MissingVacant!4764 (index!21283 (_ BitVec 32))) )
))
(declare-fun lt!245919 () SeekEntryResult!4764)

(declare-fun x!1030 () (_ BitVec 32))

(declare-datatypes ((array!33928 0))(
  ( (array!33929 (arr!16299 (Array (_ BitVec 32) (_ BitVec 64))) (size!16663 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33928)

(declare-fun lt!245918 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33928 (_ BitVec 32)) SeekEntryResult!4764)

(assert (=> b!535793 (= lt!245919 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1030) lt!245918 (select (arr!16299 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535794 () Bool)

(declare-fun res!331154 () Bool)

(declare-fun e!311134 () Bool)

(assert (=> b!535794 (=> (not res!331154) (not e!311134))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!535794 (= res!331154 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!535795 () Bool)

(declare-fun e!311135 () Bool)

(assert (=> b!535795 (= e!311134 e!311135)))

(declare-fun res!331158 () Bool)

(assert (=> b!535795 (=> (not res!331158) (not e!311135))))

(declare-fun lt!245921 () SeekEntryResult!4764)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!535795 (= res!331158 (or (= lt!245921 (MissingZero!4764 i!1153)) (= lt!245921 (MissingVacant!4764 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33928 (_ BitVec 32)) SeekEntryResult!4764)

(assert (=> b!535795 (= lt!245921 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!535796 () Bool)

(declare-fun res!331152 () Bool)

(assert (=> b!535796 (=> (not res!331152) (not e!311134))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!535796 (= res!331152 (validKeyInArray!0 k!1998))))

(declare-fun res!331155 () Bool)

(assert (=> start!48760 (=> (not res!331155) (not e!311134))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48760 (= res!331155 (validMask!0 mask!3216))))

(assert (=> start!48760 e!311134))

(assert (=> start!48760 true))

(declare-fun array_inv!12073 (array!33928) Bool)

(assert (=> start!48760 (array_inv!12073 a!3154)))

(declare-fun b!535797 () Bool)

(declare-fun res!331159 () Bool)

(assert (=> b!535797 (=> (not res!331159) (not e!311135))))

(declare-datatypes ((List!10471 0))(
  ( (Nil!10468) (Cons!10467 (h!11410 (_ BitVec 64)) (t!16707 List!10471)) )
))
(declare-fun arrayNoDuplicates!0 (array!33928 (_ BitVec 32) List!10471) Bool)

(assert (=> b!535797 (= res!331159 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10468))))

(declare-fun b!535798 () Bool)

(declare-fun res!331157 () Bool)

(assert (=> b!535798 (=> (not res!331157) (not e!311134))))

(assert (=> b!535798 (= res!331157 (and (= (size!16663 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16663 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16663 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!535799 () Bool)

(declare-fun res!331153 () Bool)

(assert (=> b!535799 (=> (not res!331153) (not e!311134))))

(assert (=> b!535799 (= res!331153 (validKeyInArray!0 (select (arr!16299 a!3154) j!147)))))

(declare-fun b!535800 () Bool)

(declare-fun res!331148 () Bool)

(declare-fun e!311137 () Bool)

(assert (=> b!535800 (=> (not res!331148) (not e!311137))))

(declare-fun lt!245920 () SeekEntryResult!4764)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535800 (= res!331148 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16299 a!3154) j!147) mask!3216) (select (arr!16299 a!3154) j!147) a!3154 mask!3216) lt!245920))))

(declare-fun b!535801 () Bool)

(assert (=> b!535801 (= e!311135 e!311137)))

(declare-fun res!331149 () Bool)

(assert (=> b!535801 (=> (not res!331149) (not e!311137))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!535801 (= res!331149 (= lt!245920 (Intermediate!4764 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(assert (=> b!535801 (= lt!245920 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16299 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!535802 () Bool)

(declare-fun res!331160 () Bool)

(assert (=> b!535802 (=> (not res!331160) (not e!311135))))

(assert (=> b!535802 (= res!331160 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16663 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16663 a!3154)) (= (select (arr!16299 a!3154) resIndex!32) (select (arr!16299 a!3154) j!147))))))

(declare-fun b!535803 () Bool)

(declare-fun res!331150 () Bool)

(assert (=> b!535803 (=> (not res!331150) (not e!311135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33928 (_ BitVec 32)) Bool)

(assert (=> b!535803 (= res!331150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!535804 () Bool)

(declare-fun res!331156 () Bool)

(assert (=> b!535804 (=> (not res!331156) (not e!311137))))

(assert (=> b!535804 (= res!331156 (and (not (= (select (arr!16299 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16299 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16299 a!3154) index!1177) (select (arr!16299 a!3154) j!147)))))))

(declare-fun b!535805 () Bool)

(assert (=> b!535805 (= e!311137 e!311136)))

(declare-fun res!331151 () Bool)

(assert (=> b!535805 (=> (not res!331151) (not e!311136))))

(assert (=> b!535805 (= res!331151 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1030) resX!32) (bvsge (bvadd #b00000000000000000000000000000001 x!1030) #b00000000000000000000000000000000) (bvsge lt!245918 #b00000000000000000000000000000000) (bvslt lt!245918 (size!16663 a!3154))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!535805 (= lt!245918 (nextIndex!0 index!1177 x!1030 mask!3216))))

(assert (= (and start!48760 res!331155) b!535798))

(assert (= (and b!535798 res!331157) b!535799))

(assert (= (and b!535799 res!331153) b!535796))

(assert (= (and b!535796 res!331152) b!535794))

(assert (= (and b!535794 res!331154) b!535795))

(assert (= (and b!535795 res!331158) b!535803))

(assert (= (and b!535803 res!331150) b!535797))

(assert (= (and b!535797 res!331159) b!535802))

(assert (= (and b!535802 res!331160) b!535801))

(assert (= (and b!535801 res!331149) b!535800))

(assert (= (and b!535800 res!331148) b!535804))

(assert (= (and b!535804 res!331156) b!535805))

(assert (= (and b!535805 res!331151) b!535793))

(declare-fun m!515323 () Bool)

(assert (=> b!535800 m!515323))

(assert (=> b!535800 m!515323))

(declare-fun m!515325 () Bool)

(assert (=> b!535800 m!515325))

(assert (=> b!535800 m!515325))

(assert (=> b!535800 m!515323))

(declare-fun m!515327 () Bool)

(assert (=> b!535800 m!515327))

(declare-fun m!515329 () Bool)

(assert (=> b!535803 m!515329))

(declare-fun m!515331 () Bool)

(assert (=> b!535802 m!515331))

(assert (=> b!535802 m!515323))

(assert (=> b!535801 m!515323))

(assert (=> b!535801 m!515323))

(declare-fun m!515333 () Bool)

(assert (=> b!535801 m!515333))

(declare-fun m!515335 () Bool)

(assert (=> b!535805 m!515335))

(assert (=> b!535793 m!515323))

(assert (=> b!535793 m!515323))

(declare-fun m!515337 () Bool)

(assert (=> b!535793 m!515337))

(declare-fun m!515339 () Bool)

(assert (=> start!48760 m!515339))

(declare-fun m!515341 () Bool)

(assert (=> start!48760 m!515341))

(assert (=> b!535799 m!515323))

(assert (=> b!535799 m!515323))

(declare-fun m!515343 () Bool)

(assert (=> b!535799 m!515343))

(declare-fun m!515345 () Bool)

(assert (=> b!535797 m!515345))

(declare-fun m!515347 () Bool)

(assert (=> b!535804 m!515347))

(assert (=> b!535804 m!515323))

(declare-fun m!515349 () Bool)

(assert (=> b!535794 m!515349))

(declare-fun m!515351 () Bool)

(assert (=> b!535796 m!515351))

(declare-fun m!515353 () Bool)

(assert (=> b!535795 m!515353))

(push 1)

