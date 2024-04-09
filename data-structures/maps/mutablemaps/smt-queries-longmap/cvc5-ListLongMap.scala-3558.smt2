; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48934 () Bool)

(assert start!48934)

(declare-fun b!538991 () Bool)

(declare-fun res!334348 () Bool)

(declare-fun e!312481 () Bool)

(assert (=> b!538991 (=> (not res!334348) (not e!312481))))

(declare-datatypes ((array!34102 0))(
  ( (array!34103 (arr!16386 (Array (_ BitVec 32) (_ BitVec 64))) (size!16750 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34102)

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34102 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538991 (= res!334348 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!538992 () Bool)

(declare-fun res!334352 () Bool)

(assert (=> b!538992 (=> (not res!334352) (not e!312481))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538992 (= res!334352 (validKeyInArray!0 (select (arr!16386 a!3154) j!147)))))

(declare-fun b!538993 () Bool)

(declare-fun res!334347 () Bool)

(assert (=> b!538993 (=> (not res!334347) (not e!312481))))

(assert (=> b!538993 (= res!334347 (validKeyInArray!0 k!1998))))

(declare-fun b!538994 () Bool)

(declare-fun e!312479 () Bool)

(assert (=> b!538994 (= e!312479 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun lt!247048 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!538994 (= lt!247048 (toIndex!0 (select (arr!16386 a!3154) j!147) mask!3216))))

(declare-fun b!538995 () Bool)

(declare-fun res!334351 () Bool)

(assert (=> b!538995 (=> (not res!334351) (not e!312479))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!538995 (= res!334351 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16750 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16750 a!3154)) (= (select (arr!16386 a!3154) resIndex!32) (select (arr!16386 a!3154) j!147))))))

(declare-fun b!538996 () Bool)

(declare-fun res!334353 () Bool)

(assert (=> b!538996 (=> (not res!334353) (not e!312479))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34102 (_ BitVec 32)) Bool)

(assert (=> b!538996 (= res!334353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538997 () Bool)

(declare-fun res!334349 () Bool)

(assert (=> b!538997 (=> (not res!334349) (not e!312481))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538997 (= res!334349 (and (= (size!16750 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16750 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16750 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538998 () Bool)

(assert (=> b!538998 (= e!312481 e!312479)))

(declare-fun res!334354 () Bool)

(assert (=> b!538998 (=> (not res!334354) (not e!312479))))

(declare-datatypes ((SeekEntryResult!4851 0))(
  ( (MissingZero!4851 (index!21628 (_ BitVec 32))) (Found!4851 (index!21629 (_ BitVec 32))) (Intermediate!4851 (undefined!5663 Bool) (index!21630 (_ BitVec 32)) (x!50573 (_ BitVec 32))) (Undefined!4851) (MissingVacant!4851 (index!21631 (_ BitVec 32))) )
))
(declare-fun lt!247049 () SeekEntryResult!4851)

(assert (=> b!538998 (= res!334354 (or (= lt!247049 (MissingZero!4851 i!1153)) (= lt!247049 (MissingVacant!4851 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34102 (_ BitVec 32)) SeekEntryResult!4851)

(assert (=> b!538998 (= lt!247049 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!334350 () Bool)

(assert (=> start!48934 (=> (not res!334350) (not e!312481))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48934 (= res!334350 (validMask!0 mask!3216))))

(assert (=> start!48934 e!312481))

(assert (=> start!48934 true))

(declare-fun array_inv!12160 (array!34102) Bool)

(assert (=> start!48934 (array_inv!12160 a!3154)))

(declare-fun b!538999 () Bool)

(declare-fun res!334355 () Bool)

(assert (=> b!538999 (=> (not res!334355) (not e!312479))))

(declare-datatypes ((List!10558 0))(
  ( (Nil!10555) (Cons!10554 (h!11497 (_ BitVec 64)) (t!16794 List!10558)) )
))
(declare-fun arrayNoDuplicates!0 (array!34102 (_ BitVec 32) List!10558) Bool)

(assert (=> b!538999 (= res!334355 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10555))))

(declare-fun b!539000 () Bool)

(declare-fun res!334346 () Bool)

(assert (=> b!539000 (=> (not res!334346) (not e!312479))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34102 (_ BitVec 32)) SeekEntryResult!4851)

(assert (=> b!539000 (= res!334346 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16386 a!3154) j!147) a!3154 mask!3216) (Intermediate!4851 false resIndex!32 resX!32)))))

(assert (= (and start!48934 res!334350) b!538997))

(assert (= (and b!538997 res!334349) b!538992))

(assert (= (and b!538992 res!334352) b!538993))

(assert (= (and b!538993 res!334347) b!538991))

(assert (= (and b!538991 res!334348) b!538998))

(assert (= (and b!538998 res!334354) b!538996))

(assert (= (and b!538996 res!334353) b!538999))

(assert (= (and b!538999 res!334355) b!538995))

(assert (= (and b!538995 res!334351) b!539000))

(assert (= (and b!539000 res!334346) b!538994))

(declare-fun m!518101 () Bool)

(assert (=> b!538992 m!518101))

(assert (=> b!538992 m!518101))

(declare-fun m!518103 () Bool)

(assert (=> b!538992 m!518103))

(assert (=> b!538994 m!518101))

(assert (=> b!538994 m!518101))

(declare-fun m!518105 () Bool)

(assert (=> b!538994 m!518105))

(declare-fun m!518107 () Bool)

(assert (=> b!538993 m!518107))

(assert (=> b!539000 m!518101))

(assert (=> b!539000 m!518101))

(declare-fun m!518109 () Bool)

(assert (=> b!539000 m!518109))

(declare-fun m!518111 () Bool)

(assert (=> b!538998 m!518111))

(declare-fun m!518113 () Bool)

(assert (=> b!538999 m!518113))

(declare-fun m!518115 () Bool)

(assert (=> b!538991 m!518115))

(declare-fun m!518117 () Bool)

(assert (=> b!538996 m!518117))

(declare-fun m!518119 () Bool)

(assert (=> start!48934 m!518119))

(declare-fun m!518121 () Bool)

(assert (=> start!48934 m!518121))

(declare-fun m!518123 () Bool)

(assert (=> b!538995 m!518123))

(assert (=> b!538995 m!518101))

(push 1)

