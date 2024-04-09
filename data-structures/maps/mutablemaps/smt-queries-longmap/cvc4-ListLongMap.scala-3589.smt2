; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49340 () Bool)

(assert start!49340)

(declare-fun b!543135 () Bool)

(declare-fun res!337845 () Bool)

(declare-fun e!314155 () Bool)

(assert (=> b!543135 (=> (not res!337845) (not e!314155))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!543135 (= res!337845 (validKeyInArray!0 k!1998))))

(declare-fun b!543136 () Bool)

(declare-fun res!337847 () Bool)

(declare-fun e!314156 () Bool)

(assert (=> b!543136 (=> (not res!337847) (not e!314156))))

(declare-datatypes ((array!34304 0))(
  ( (array!34305 (arr!16481 (Array (_ BitVec 32) (_ BitVec 64))) (size!16845 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34304)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34304 (_ BitVec 32)) Bool)

(assert (=> b!543136 (= res!337847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!543137 () Bool)

(declare-fun e!314157 () Bool)

(assert (=> b!543137 (= e!314157 false)))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun lt!248106 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543137 (= lt!248106 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun b!543138 () Bool)

(assert (=> b!543138 (= e!314155 e!314156)))

(declare-fun res!337838 () Bool)

(assert (=> b!543138 (=> (not res!337838) (not e!314156))))

(declare-datatypes ((SeekEntryResult!4946 0))(
  ( (MissingZero!4946 (index!22008 (_ BitVec 32))) (Found!4946 (index!22009 (_ BitVec 32))) (Intermediate!4946 (undefined!5758 Bool) (index!22010 (_ BitVec 32)) (x!50940 (_ BitVec 32))) (Undefined!4946) (MissingVacant!4946 (index!22011 (_ BitVec 32))) )
))
(declare-fun lt!248107 () SeekEntryResult!4946)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!543138 (= res!337838 (or (= lt!248107 (MissingZero!4946 i!1153)) (= lt!248107 (MissingVacant!4946 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34304 (_ BitVec 32)) SeekEntryResult!4946)

(assert (=> b!543138 (= lt!248107 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!543140 () Bool)

(declare-fun res!337841 () Bool)

(assert (=> b!543140 (=> (not res!337841) (not e!314157))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun lt!248108 () SeekEntryResult!4946)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34304 (_ BitVec 32)) SeekEntryResult!4946)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!543140 (= res!337841 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16481 a!3154) j!147) mask!3216) (select (arr!16481 a!3154) j!147) a!3154 mask!3216) lt!248108))))

(declare-fun b!543141 () Bool)

(assert (=> b!543141 (= e!314156 e!314157)))

(declare-fun res!337839 () Bool)

(assert (=> b!543141 (=> (not res!337839) (not e!314157))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!543141 (= res!337839 (= lt!248108 (Intermediate!4946 false resIndex!32 resX!32)))))

(assert (=> b!543141 (= lt!248108 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16481 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!543142 () Bool)

(declare-fun res!337840 () Bool)

(assert (=> b!543142 (=> (not res!337840) (not e!314155))))

(assert (=> b!543142 (= res!337840 (and (= (size!16845 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16845 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16845 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!543143 () Bool)

(declare-fun res!337836 () Bool)

(assert (=> b!543143 (=> (not res!337836) (not e!314156))))

(assert (=> b!543143 (= res!337836 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16845 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16845 a!3154)) (= (select (arr!16481 a!3154) resIndex!32) (select (arr!16481 a!3154) j!147))))))

(declare-fun b!543144 () Bool)

(declare-fun res!337842 () Bool)

(assert (=> b!543144 (=> (not res!337842) (not e!314155))))

(assert (=> b!543144 (= res!337842 (validKeyInArray!0 (select (arr!16481 a!3154) j!147)))))

(declare-fun b!543145 () Bool)

(declare-fun res!337837 () Bool)

(assert (=> b!543145 (=> (not res!337837) (not e!314155))))

(declare-fun arrayContainsKey!0 (array!34304 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!543145 (= res!337837 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!543146 () Bool)

(declare-fun res!337843 () Bool)

(assert (=> b!543146 (=> (not res!337843) (not e!314156))))

(declare-datatypes ((List!10653 0))(
  ( (Nil!10650) (Cons!10649 (h!11604 (_ BitVec 64)) (t!16889 List!10653)) )
))
(declare-fun arrayNoDuplicates!0 (array!34304 (_ BitVec 32) List!10653) Bool)

(assert (=> b!543146 (= res!337843 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10650))))

(declare-fun b!543139 () Bool)

(declare-fun res!337846 () Bool)

(assert (=> b!543139 (=> (not res!337846) (not e!314157))))

(assert (=> b!543139 (= res!337846 (and (not (= (select (arr!16481 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16481 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16481 a!3154) index!1177) (select (arr!16481 a!3154) j!147)))))))

(declare-fun res!337844 () Bool)

(assert (=> start!49340 (=> (not res!337844) (not e!314155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49340 (= res!337844 (validMask!0 mask!3216))))

(assert (=> start!49340 e!314155))

(assert (=> start!49340 true))

(declare-fun array_inv!12255 (array!34304) Bool)

(assert (=> start!49340 (array_inv!12255 a!3154)))

(assert (= (and start!49340 res!337844) b!543142))

(assert (= (and b!543142 res!337840) b!543144))

(assert (= (and b!543144 res!337842) b!543135))

(assert (= (and b!543135 res!337845) b!543145))

(assert (= (and b!543145 res!337837) b!543138))

(assert (= (and b!543138 res!337838) b!543136))

(assert (= (and b!543136 res!337847) b!543146))

(assert (= (and b!543146 res!337843) b!543143))

(assert (= (and b!543143 res!337836) b!543141))

(assert (= (and b!543141 res!337839) b!543140))

(assert (= (and b!543140 res!337841) b!543139))

(assert (= (and b!543139 res!337846) b!543137))

(declare-fun m!521281 () Bool)

(assert (=> b!543138 m!521281))

(declare-fun m!521283 () Bool)

(assert (=> b!543146 m!521283))

(declare-fun m!521285 () Bool)

(assert (=> start!49340 m!521285))

(declare-fun m!521287 () Bool)

(assert (=> start!49340 m!521287))

(declare-fun m!521289 () Bool)

(assert (=> b!543135 m!521289))

(declare-fun m!521291 () Bool)

(assert (=> b!543141 m!521291))

(assert (=> b!543141 m!521291))

(declare-fun m!521293 () Bool)

(assert (=> b!543141 m!521293))

(declare-fun m!521295 () Bool)

(assert (=> b!543139 m!521295))

(assert (=> b!543139 m!521291))

(declare-fun m!521297 () Bool)

(assert (=> b!543136 m!521297))

(declare-fun m!521299 () Bool)

(assert (=> b!543145 m!521299))

(assert (=> b!543140 m!521291))

(assert (=> b!543140 m!521291))

(declare-fun m!521301 () Bool)

(assert (=> b!543140 m!521301))

(assert (=> b!543140 m!521301))

(assert (=> b!543140 m!521291))

(declare-fun m!521303 () Bool)

(assert (=> b!543140 m!521303))

(declare-fun m!521305 () Bool)

(assert (=> b!543137 m!521305))

(assert (=> b!543144 m!521291))

(assert (=> b!543144 m!521291))

(declare-fun m!521307 () Bool)

(assert (=> b!543144 m!521307))

(declare-fun m!521309 () Bool)

(assert (=> b!543143 m!521309))

(assert (=> b!543143 m!521291))

(push 1)

(assert (not b!543145))

(assert (not start!49340))

(assert (not b!543140))

(assert (not b!543138))

