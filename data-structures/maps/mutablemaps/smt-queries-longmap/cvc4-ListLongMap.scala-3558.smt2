; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48938 () Bool)

(assert start!48938)

(declare-fun res!334412 () Bool)

(declare-fun e!312497 () Bool)

(assert (=> start!48938 (=> (not res!334412) (not e!312497))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48938 (= res!334412 (validMask!0 mask!3216))))

(assert (=> start!48938 e!312497))

(assert (=> start!48938 true))

(declare-datatypes ((array!34106 0))(
  ( (array!34107 (arr!16388 (Array (_ BitVec 32) (_ BitVec 64))) (size!16752 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34106)

(declare-fun array_inv!12162 (array!34106) Bool)

(assert (=> start!48938 (array_inv!12162 a!3154)))

(declare-fun b!539051 () Bool)

(declare-fun e!312498 () Bool)

(assert (=> b!539051 (= e!312498 false)))

(declare-fun lt!247061 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539051 (= lt!247061 (toIndex!0 (select (arr!16388 a!3154) j!147) mask!3216))))

(declare-fun b!539052 () Bool)

(declare-fun res!334411 () Bool)

(assert (=> b!539052 (=> (not res!334411) (not e!312498))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!539052 (= res!334411 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16752 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16752 a!3154)) (= (select (arr!16388 a!3154) resIndex!32) (select (arr!16388 a!3154) j!147))))))

(declare-fun b!539053 () Bool)

(declare-fun res!334414 () Bool)

(assert (=> b!539053 (=> (not res!334414) (not e!312497))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539053 (= res!334414 (validKeyInArray!0 (select (arr!16388 a!3154) j!147)))))

(declare-fun b!539054 () Bool)

(declare-fun res!334410 () Bool)

(assert (=> b!539054 (=> (not res!334410) (not e!312498))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34106 (_ BitVec 32)) Bool)

(assert (=> b!539054 (= res!334410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539055 () Bool)

(declare-fun res!334408 () Bool)

(assert (=> b!539055 (=> (not res!334408) (not e!312497))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539055 (= res!334408 (and (= (size!16752 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16752 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16752 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539056 () Bool)

(declare-fun res!334406 () Bool)

(assert (=> b!539056 (=> (not res!334406) (not e!312497))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!539056 (= res!334406 (validKeyInArray!0 k!1998))))

(declare-fun b!539057 () Bool)

(declare-fun res!334415 () Bool)

(assert (=> b!539057 (=> (not res!334415) (not e!312498))))

(declare-datatypes ((List!10560 0))(
  ( (Nil!10557) (Cons!10556 (h!11499 (_ BitVec 64)) (t!16796 List!10560)) )
))
(declare-fun arrayNoDuplicates!0 (array!34106 (_ BitVec 32) List!10560) Bool)

(assert (=> b!539057 (= res!334415 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10557))))

(declare-fun b!539058 () Bool)

(assert (=> b!539058 (= e!312497 e!312498)))

(declare-fun res!334407 () Bool)

(assert (=> b!539058 (=> (not res!334407) (not e!312498))))

(declare-datatypes ((SeekEntryResult!4853 0))(
  ( (MissingZero!4853 (index!21636 (_ BitVec 32))) (Found!4853 (index!21637 (_ BitVec 32))) (Intermediate!4853 (undefined!5665 Bool) (index!21638 (_ BitVec 32)) (x!50575 (_ BitVec 32))) (Undefined!4853) (MissingVacant!4853 (index!21639 (_ BitVec 32))) )
))
(declare-fun lt!247060 () SeekEntryResult!4853)

(assert (=> b!539058 (= res!334407 (or (= lt!247060 (MissingZero!4853 i!1153)) (= lt!247060 (MissingVacant!4853 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34106 (_ BitVec 32)) SeekEntryResult!4853)

(assert (=> b!539058 (= lt!247060 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!539059 () Bool)

(declare-fun res!334413 () Bool)

(assert (=> b!539059 (=> (not res!334413) (not e!312498))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34106 (_ BitVec 32)) SeekEntryResult!4853)

(assert (=> b!539059 (= res!334413 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16388 a!3154) j!147) a!3154 mask!3216) (Intermediate!4853 false resIndex!32 resX!32)))))

(declare-fun b!539060 () Bool)

(declare-fun res!334409 () Bool)

(assert (=> b!539060 (=> (not res!334409) (not e!312497))))

(declare-fun arrayContainsKey!0 (array!34106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539060 (= res!334409 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48938 res!334412) b!539055))

(assert (= (and b!539055 res!334408) b!539053))

(assert (= (and b!539053 res!334414) b!539056))

(assert (= (and b!539056 res!334406) b!539060))

(assert (= (and b!539060 res!334409) b!539058))

(assert (= (and b!539058 res!334407) b!539054))

(assert (= (and b!539054 res!334410) b!539057))

(assert (= (and b!539057 res!334415) b!539052))

(assert (= (and b!539052 res!334411) b!539059))

(assert (= (and b!539059 res!334413) b!539051))

(declare-fun m!518149 () Bool)

(assert (=> b!539053 m!518149))

(assert (=> b!539053 m!518149))

(declare-fun m!518151 () Bool)

(assert (=> b!539053 m!518151))

(declare-fun m!518153 () Bool)

(assert (=> b!539057 m!518153))

(declare-fun m!518155 () Bool)

(assert (=> start!48938 m!518155))

(declare-fun m!518157 () Bool)

(assert (=> start!48938 m!518157))

(declare-fun m!518159 () Bool)

(assert (=> b!539054 m!518159))

(declare-fun m!518161 () Bool)

(assert (=> b!539058 m!518161))

(declare-fun m!518163 () Bool)

(assert (=> b!539060 m!518163))

(assert (=> b!539051 m!518149))

(assert (=> b!539051 m!518149))

(declare-fun m!518165 () Bool)

(assert (=> b!539051 m!518165))

(declare-fun m!518167 () Bool)

(assert (=> b!539052 m!518167))

(assert (=> b!539052 m!518149))

(assert (=> b!539059 m!518149))

(assert (=> b!539059 m!518149))

(declare-fun m!518169 () Bool)

(assert (=> b!539059 m!518169))

(declare-fun m!518171 () Bool)

(assert (=> b!539056 m!518171))

(push 1)

(assert (not b!539060))

(assert (not b!539057))

(assert (not b!539058))

(assert (not b!539054))

(assert (not start!48938))

(assert (not b!539059))

(assert (not b!539051))

(assert (not b!539056))

(assert (not b!539053))

(check-sat)

