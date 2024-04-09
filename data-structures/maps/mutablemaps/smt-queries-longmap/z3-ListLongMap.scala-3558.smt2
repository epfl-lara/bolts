; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48936 () Bool)

(assert start!48936)

(declare-fun b!539021 () Bool)

(declare-fun res!334376 () Bool)

(declare-fun e!312489 () Bool)

(assert (=> b!539021 (=> (not res!334376) (not e!312489))))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34104 0))(
  ( (array!34105 (arr!16387 (Array (_ BitVec 32) (_ BitVec 64))) (size!16751 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34104)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539021 (= res!334376 (and (= (size!16751 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16751 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16751 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539022 () Bool)

(declare-fun res!334380 () Bool)

(declare-fun e!312490 () Bool)

(assert (=> b!539022 (=> (not res!334380) (not e!312490))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!539022 (= res!334380 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16751 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16751 a!3154)) (= (select (arr!16387 a!3154) resIndex!32) (select (arr!16387 a!3154) j!147))))))

(declare-fun res!334378 () Bool)

(assert (=> start!48936 (=> (not res!334378) (not e!312489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48936 (= res!334378 (validMask!0 mask!3216))))

(assert (=> start!48936 e!312489))

(assert (=> start!48936 true))

(declare-fun array_inv!12161 (array!34104) Bool)

(assert (=> start!48936 (array_inv!12161 a!3154)))

(declare-fun b!539023 () Bool)

(declare-fun res!334384 () Bool)

(assert (=> b!539023 (=> (not res!334384) (not e!312490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34104 (_ BitVec 32)) Bool)

(assert (=> b!539023 (= res!334384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539024 () Bool)

(assert (=> b!539024 (= e!312489 e!312490)))

(declare-fun res!334383 () Bool)

(assert (=> b!539024 (=> (not res!334383) (not e!312490))))

(declare-datatypes ((SeekEntryResult!4852 0))(
  ( (MissingZero!4852 (index!21632 (_ BitVec 32))) (Found!4852 (index!21633 (_ BitVec 32))) (Intermediate!4852 (undefined!5664 Bool) (index!21634 (_ BitVec 32)) (x!50574 (_ BitVec 32))) (Undefined!4852) (MissingVacant!4852 (index!21635 (_ BitVec 32))) )
))
(declare-fun lt!247054 () SeekEntryResult!4852)

(assert (=> b!539024 (= res!334383 (or (= lt!247054 (MissingZero!4852 i!1153)) (= lt!247054 (MissingVacant!4852 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34104 (_ BitVec 32)) SeekEntryResult!4852)

(assert (=> b!539024 (= lt!247054 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!539025 () Bool)

(declare-fun res!334377 () Bool)

(assert (=> b!539025 (=> (not res!334377) (not e!312489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539025 (= res!334377 (validKeyInArray!0 (select (arr!16387 a!3154) j!147)))))

(declare-fun b!539026 () Bool)

(declare-fun res!334379 () Bool)

(assert (=> b!539026 (=> (not res!334379) (not e!312490))))

(declare-datatypes ((List!10559 0))(
  ( (Nil!10556) (Cons!10555 (h!11498 (_ BitVec 64)) (t!16795 List!10559)) )
))
(declare-fun arrayNoDuplicates!0 (array!34104 (_ BitVec 32) List!10559) Bool)

(assert (=> b!539026 (= res!334379 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10556))))

(declare-fun b!539027 () Bool)

(declare-fun res!334385 () Bool)

(assert (=> b!539027 (=> (not res!334385) (not e!312489))))

(assert (=> b!539027 (= res!334385 (validKeyInArray!0 k0!1998))))

(declare-fun b!539028 () Bool)

(declare-fun res!334382 () Bool)

(assert (=> b!539028 (=> (not res!334382) (not e!312489))))

(declare-fun arrayContainsKey!0 (array!34104 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539028 (= res!334382 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539029 () Bool)

(assert (=> b!539029 (= e!312490 false)))

(declare-fun lt!247055 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539029 (= lt!247055 (toIndex!0 (select (arr!16387 a!3154) j!147) mask!3216))))

(declare-fun b!539030 () Bool)

(declare-fun res!334381 () Bool)

(assert (=> b!539030 (=> (not res!334381) (not e!312490))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34104 (_ BitVec 32)) SeekEntryResult!4852)

(assert (=> b!539030 (= res!334381 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16387 a!3154) j!147) a!3154 mask!3216) (Intermediate!4852 false resIndex!32 resX!32)))))

(assert (= (and start!48936 res!334378) b!539021))

(assert (= (and b!539021 res!334376) b!539025))

(assert (= (and b!539025 res!334377) b!539027))

(assert (= (and b!539027 res!334385) b!539028))

(assert (= (and b!539028 res!334382) b!539024))

(assert (= (and b!539024 res!334383) b!539023))

(assert (= (and b!539023 res!334384) b!539026))

(assert (= (and b!539026 res!334379) b!539022))

(assert (= (and b!539022 res!334380) b!539030))

(assert (= (and b!539030 res!334381) b!539029))

(declare-fun m!518125 () Bool)

(assert (=> b!539027 m!518125))

(declare-fun m!518127 () Bool)

(assert (=> b!539022 m!518127))

(declare-fun m!518129 () Bool)

(assert (=> b!539022 m!518129))

(declare-fun m!518131 () Bool)

(assert (=> b!539023 m!518131))

(declare-fun m!518133 () Bool)

(assert (=> b!539026 m!518133))

(declare-fun m!518135 () Bool)

(assert (=> start!48936 m!518135))

(declare-fun m!518137 () Bool)

(assert (=> start!48936 m!518137))

(assert (=> b!539030 m!518129))

(assert (=> b!539030 m!518129))

(declare-fun m!518139 () Bool)

(assert (=> b!539030 m!518139))

(assert (=> b!539025 m!518129))

(assert (=> b!539025 m!518129))

(declare-fun m!518141 () Bool)

(assert (=> b!539025 m!518141))

(declare-fun m!518143 () Bool)

(assert (=> b!539024 m!518143))

(assert (=> b!539029 m!518129))

(assert (=> b!539029 m!518129))

(declare-fun m!518145 () Bool)

(assert (=> b!539029 m!518145))

(declare-fun m!518147 () Bool)

(assert (=> b!539028 m!518147))

(check-sat (not b!539029) (not b!539023) (not b!539027) (not b!539026) (not b!539025) (not b!539028) (not start!48936) (not b!539024) (not b!539030))
(check-sat)
