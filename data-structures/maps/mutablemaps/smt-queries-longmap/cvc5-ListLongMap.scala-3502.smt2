; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48598 () Bool)

(assert start!48598)

(declare-fun b!533240 () Bool)

(declare-fun res!328601 () Bool)

(declare-fun e!310301 () Bool)

(assert (=> b!533240 (=> (not res!328601) (not e!310301))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33766 0))(
  ( (array!33767 (arr!16218 (Array (_ BitVec 32) (_ BitVec 64))) (size!16582 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33766)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533240 (= res!328601 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16582 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16582 a!3154)) (= (select (arr!16218 a!3154) resIndex!32) (select (arr!16218 a!3154) j!147))))))

(declare-fun b!533241 () Bool)

(declare-fun res!328599 () Bool)

(declare-fun e!310303 () Bool)

(assert (=> b!533241 (=> (not res!328599) (not e!310303))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33766 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533241 (= res!328599 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533243 () Bool)

(declare-fun res!328602 () Bool)

(assert (=> b!533243 (=> (not res!328602) (not e!310301))))

(declare-datatypes ((List!10390 0))(
  ( (Nil!10387) (Cons!10386 (h!11329 (_ BitVec 64)) (t!16626 List!10390)) )
))
(declare-fun arrayNoDuplicates!0 (array!33766 (_ BitVec 32) List!10390) Bool)

(assert (=> b!533243 (= res!328602 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10387))))

(declare-fun b!533244 () Bool)

(declare-fun res!328597 () Bool)

(assert (=> b!533244 (=> (not res!328597) (not e!310301))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4683 0))(
  ( (MissingZero!4683 (index!20956 (_ BitVec 32))) (Found!4683 (index!20957 (_ BitVec 32))) (Intermediate!4683 (undefined!5495 Bool) (index!20958 (_ BitVec 32)) (x!49957 (_ BitVec 32))) (Undefined!4683) (MissingVacant!4683 (index!20959 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33766 (_ BitVec 32)) SeekEntryResult!4683)

(assert (=> b!533244 (= res!328597 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16218 a!3154) j!147) a!3154 mask!3216) (Intermediate!4683 false resIndex!32 resX!32)))))

(declare-fun b!533245 () Bool)

(assert (=> b!533245 (= e!310303 e!310301)))

(declare-fun res!328598 () Bool)

(assert (=> b!533245 (=> (not res!328598) (not e!310301))))

(declare-fun lt!245408 () SeekEntryResult!4683)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533245 (= res!328598 (or (= lt!245408 (MissingZero!4683 i!1153)) (= lt!245408 (MissingVacant!4683 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33766 (_ BitVec 32)) SeekEntryResult!4683)

(assert (=> b!533245 (= lt!245408 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533246 () Bool)

(declare-fun res!328600 () Bool)

(assert (=> b!533246 (=> (not res!328600) (not e!310301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33766 (_ BitVec 32)) Bool)

(assert (=> b!533246 (= res!328600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533247 () Bool)

(declare-fun res!328603 () Bool)

(assert (=> b!533247 (=> (not res!328603) (not e!310303))))

(assert (=> b!533247 (= res!328603 (and (= (size!16582 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16582 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16582 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533248 () Bool)

(declare-fun res!328604 () Bool)

(assert (=> b!533248 (=> (not res!328604) (not e!310303))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533248 (= res!328604 (validKeyInArray!0 k!1998))))

(declare-fun b!533249 () Bool)

(assert (=> b!533249 (= e!310301 (and (bvsge mask!3216 #b00000000000000000000000000000000) (bvsge index!1177 (bvadd #b00000000000000000000000000000001 mask!3216))))))

(declare-fun res!328595 () Bool)

(assert (=> start!48598 (=> (not res!328595) (not e!310303))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48598 (= res!328595 (validMask!0 mask!3216))))

(assert (=> start!48598 e!310303))

(assert (=> start!48598 true))

(declare-fun array_inv!11992 (array!33766) Bool)

(assert (=> start!48598 (array_inv!11992 a!3154)))

(declare-fun b!533242 () Bool)

(declare-fun res!328596 () Bool)

(assert (=> b!533242 (=> (not res!328596) (not e!310303))))

(assert (=> b!533242 (= res!328596 (validKeyInArray!0 (select (arr!16218 a!3154) j!147)))))

(assert (= (and start!48598 res!328595) b!533247))

(assert (= (and b!533247 res!328603) b!533242))

(assert (= (and b!533242 res!328596) b!533248))

(assert (= (and b!533248 res!328604) b!533241))

(assert (= (and b!533241 res!328599) b!533245))

(assert (= (and b!533245 res!328598) b!533246))

(assert (= (and b!533246 res!328600) b!533243))

(assert (= (and b!533243 res!328602) b!533240))

(assert (= (and b!533240 res!328601) b!533244))

(assert (= (and b!533244 res!328597) b!533249))

(declare-fun m!513157 () Bool)

(assert (=> b!533240 m!513157))

(declare-fun m!513159 () Bool)

(assert (=> b!533240 m!513159))

(declare-fun m!513161 () Bool)

(assert (=> b!533248 m!513161))

(declare-fun m!513163 () Bool)

(assert (=> b!533241 m!513163))

(assert (=> b!533244 m!513159))

(assert (=> b!533244 m!513159))

(declare-fun m!513165 () Bool)

(assert (=> b!533244 m!513165))

(declare-fun m!513167 () Bool)

(assert (=> b!533246 m!513167))

(declare-fun m!513169 () Bool)

(assert (=> start!48598 m!513169))

(declare-fun m!513171 () Bool)

(assert (=> start!48598 m!513171))

(declare-fun m!513173 () Bool)

(assert (=> b!533243 m!513173))

(declare-fun m!513175 () Bool)

(assert (=> b!533245 m!513175))

(assert (=> b!533242 m!513159))

(assert (=> b!533242 m!513159))

(declare-fun m!513177 () Bool)

(assert (=> b!533242 m!513177))

(push 1)

(assert (not b!533245))

(assert (not b!533248))

(assert (not b!533242))

(assert (not b!533244))

(assert (not b!533241))

(assert (not b!533246))

(assert (not b!533243))

(assert (not start!48598))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

