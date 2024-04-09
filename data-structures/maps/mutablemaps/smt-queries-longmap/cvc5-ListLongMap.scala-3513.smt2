; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48664 () Bool)

(assert start!48664)

(declare-fun b!534221 () Bool)

(declare-fun res!329577 () Bool)

(declare-fun e!310599 () Bool)

(assert (=> b!534221 (=> (not res!329577) (not e!310599))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33832 0))(
  ( (array!33833 (arr!16251 (Array (_ BitVec 32) (_ BitVec 64))) (size!16615 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33832)

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(assert (=> b!534221 (= res!329577 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16615 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16615 a!3154)) (= (select (arr!16251 a!3154) resIndex!32) (select (arr!16251 a!3154) j!147))))))

(declare-fun b!534222 () Bool)

(declare-fun res!329579 () Bool)

(declare-fun e!310598 () Bool)

(assert (=> b!534222 (=> (not res!329579) (not e!310598))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!534222 (= res!329579 (validKeyInArray!0 k!1998))))

(declare-fun b!534223 () Bool)

(declare-fun res!329582 () Bool)

(assert (=> b!534223 (=> (not res!329582) (not e!310598))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!534223 (= res!329582 (and (= (size!16615 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16615 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16615 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!534224 () Bool)

(declare-fun res!329584 () Bool)

(assert (=> b!534224 (=> (not res!329584) (not e!310599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33832 (_ BitVec 32)) Bool)

(assert (=> b!534224 (= res!329584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!534225 () Bool)

(declare-fun res!329578 () Bool)

(assert (=> b!534225 (=> (not res!329578) (not e!310599))))

(declare-datatypes ((List!10423 0))(
  ( (Nil!10420) (Cons!10419 (h!11362 (_ BitVec 64)) (t!16659 List!10423)) )
))
(declare-fun arrayNoDuplicates!0 (array!33832 (_ BitVec 32) List!10423) Bool)

(assert (=> b!534225 (= res!329578 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10420))))

(declare-fun res!329576 () Bool)

(assert (=> start!48664 (=> (not res!329576) (not e!310598))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48664 (= res!329576 (validMask!0 mask!3216))))

(assert (=> start!48664 e!310598))

(assert (=> start!48664 true))

(declare-fun array_inv!12025 (array!33832) Bool)

(assert (=> start!48664 (array_inv!12025 a!3154)))

(declare-fun b!534226 () Bool)

(assert (=> b!534226 (= e!310599 false)))

(declare-datatypes ((SeekEntryResult!4716 0))(
  ( (MissingZero!4716 (index!21088 (_ BitVec 32))) (Found!4716 (index!21089 (_ BitVec 32))) (Intermediate!4716 (undefined!5528 Bool) (index!21090 (_ BitVec 32)) (x!50078 (_ BitVec 32))) (Undefined!4716) (MissingVacant!4716 (index!21091 (_ BitVec 32))) )
))
(declare-fun lt!245590 () SeekEntryResult!4716)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33832 (_ BitVec 32)) SeekEntryResult!4716)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!534226 (= lt!245590 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16251 a!3154) j!147) mask!3216) (select (arr!16251 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!534227 () Bool)

(declare-fun res!329580 () Bool)

(assert (=> b!534227 (=> (not res!329580) (not e!310599))))

(assert (=> b!534227 (= res!329580 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16251 a!3154) j!147) a!3154 mask!3216) (Intermediate!4716 false resIndex!32 resX!32)))))

(declare-fun b!534228 () Bool)

(declare-fun res!329583 () Bool)

(assert (=> b!534228 (=> (not res!329583) (not e!310598))))

(assert (=> b!534228 (= res!329583 (validKeyInArray!0 (select (arr!16251 a!3154) j!147)))))

(declare-fun b!534229 () Bool)

(declare-fun res!329585 () Bool)

(assert (=> b!534229 (=> (not res!329585) (not e!310598))))

(declare-fun arrayContainsKey!0 (array!33832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!534229 (= res!329585 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!534230 () Bool)

(assert (=> b!534230 (= e!310598 e!310599)))

(declare-fun res!329581 () Bool)

(assert (=> b!534230 (=> (not res!329581) (not e!310599))))

(declare-fun lt!245591 () SeekEntryResult!4716)

(assert (=> b!534230 (= res!329581 (or (= lt!245591 (MissingZero!4716 i!1153)) (= lt!245591 (MissingVacant!4716 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33832 (_ BitVec 32)) SeekEntryResult!4716)

(assert (=> b!534230 (= lt!245591 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!48664 res!329576) b!534223))

(assert (= (and b!534223 res!329582) b!534228))

(assert (= (and b!534228 res!329583) b!534222))

(assert (= (and b!534222 res!329579) b!534229))

(assert (= (and b!534229 res!329585) b!534230))

(assert (= (and b!534230 res!329581) b!534224))

(assert (= (and b!534224 res!329584) b!534225))

(assert (= (and b!534225 res!329578) b!534221))

(assert (= (and b!534221 res!329577) b!534227))

(assert (= (and b!534227 res!329580) b!534226))

(declare-fun m!513979 () Bool)

(assert (=> b!534230 m!513979))

(declare-fun m!513981 () Bool)

(assert (=> start!48664 m!513981))

(declare-fun m!513983 () Bool)

(assert (=> start!48664 m!513983))

(declare-fun m!513985 () Bool)

(assert (=> b!534228 m!513985))

(assert (=> b!534228 m!513985))

(declare-fun m!513987 () Bool)

(assert (=> b!534228 m!513987))

(declare-fun m!513989 () Bool)

(assert (=> b!534224 m!513989))

(declare-fun m!513991 () Bool)

(assert (=> b!534229 m!513991))

(declare-fun m!513993 () Bool)

(assert (=> b!534222 m!513993))

(declare-fun m!513995 () Bool)

(assert (=> b!534221 m!513995))

(assert (=> b!534221 m!513985))

(assert (=> b!534226 m!513985))

(assert (=> b!534226 m!513985))

(declare-fun m!513997 () Bool)

(assert (=> b!534226 m!513997))

(assert (=> b!534226 m!513997))

(assert (=> b!534226 m!513985))

(declare-fun m!513999 () Bool)

(assert (=> b!534226 m!513999))

(declare-fun m!514001 () Bool)

(assert (=> b!534225 m!514001))

(assert (=> b!534227 m!513985))

(assert (=> b!534227 m!513985))

(declare-fun m!514003 () Bool)

(assert (=> b!534227 m!514003))

(push 1)

