; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48596 () Bool)

(assert start!48596)

(declare-fun b!533211 () Bool)

(declare-fun res!328569 () Bool)

(declare-fun e!310293 () Bool)

(assert (=> b!533211 (=> (not res!328569) (not e!310293))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-datatypes ((array!33764 0))(
  ( (array!33765 (arr!16217 (Array (_ BitVec 32) (_ BitVec 64))) (size!16581 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33764)

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!533211 (= res!328569 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16581 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16581 a!3154)) (= (select (arr!16217 a!3154) resIndex!32) (select (arr!16217 a!3154) j!147))))))

(declare-fun b!533213 () Bool)

(declare-fun res!328574 () Bool)

(assert (=> b!533213 (=> (not res!328574) (not e!310293))))

(declare-datatypes ((List!10389 0))(
  ( (Nil!10386) (Cons!10385 (h!11328 (_ BitVec 64)) (t!16625 List!10389)) )
))
(declare-fun arrayNoDuplicates!0 (array!33764 (_ BitVec 32) List!10389) Bool)

(assert (=> b!533213 (= res!328574 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10386))))

(declare-fun b!533214 () Bool)

(declare-fun e!310294 () Bool)

(assert (=> b!533214 (= e!310294 e!310293)))

(declare-fun res!328566 () Bool)

(assert (=> b!533214 (=> (not res!328566) (not e!310293))))

(declare-datatypes ((SeekEntryResult!4682 0))(
  ( (MissingZero!4682 (index!20952 (_ BitVec 32))) (Found!4682 (index!20953 (_ BitVec 32))) (Intermediate!4682 (undefined!5494 Bool) (index!20954 (_ BitVec 32)) (x!49948 (_ BitVec 32))) (Undefined!4682) (MissingVacant!4682 (index!20955 (_ BitVec 32))) )
))
(declare-fun lt!245404 () SeekEntryResult!4682)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533214 (= res!328566 (or (= lt!245404 (MissingZero!4682 i!1153)) (= lt!245404 (MissingVacant!4682 i!1153))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33764 (_ BitVec 32)) SeekEntryResult!4682)

(assert (=> b!533214 (= lt!245404 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533215 () Bool)

(declare-fun res!328568 () Bool)

(assert (=> b!533215 (=> (not res!328568) (not e!310294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533215 (= res!328568 (validKeyInArray!0 (select (arr!16217 a!3154) j!147)))))

(declare-fun b!533216 () Bool)

(declare-fun res!328573 () Bool)

(assert (=> b!533216 (=> (not res!328573) (not e!310294))))

(declare-fun arrayContainsKey!0 (array!33764 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533216 (= res!328573 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533217 () Bool)

(declare-fun res!328572 () Bool)

(assert (=> b!533217 (=> (not res!328572) (not e!310294))))

(assert (=> b!533217 (= res!328572 (validKeyInArray!0 k!1998))))

(declare-fun res!328571 () Bool)

(assert (=> start!48596 (=> (not res!328571) (not e!310294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48596 (= res!328571 (validMask!0 mask!3216))))

(assert (=> start!48596 e!310294))

(assert (=> start!48596 true))

(declare-fun array_inv!11991 (array!33764) Bool)

(assert (=> start!48596 (array_inv!11991 a!3154)))

(declare-fun b!533212 () Bool)

(declare-fun res!328570 () Bool)

(assert (=> b!533212 (=> (not res!328570) (not e!310294))))

(assert (=> b!533212 (= res!328570 (and (= (size!16581 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16581 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16581 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533218 () Bool)

(declare-fun res!328567 () Bool)

(assert (=> b!533218 (=> (not res!328567) (not e!310293))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33764 (_ BitVec 32)) Bool)

(assert (=> b!533218 (= res!328567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533219 () Bool)

(assert (=> b!533219 (= e!310293 false)))

(declare-fun lt!245405 () SeekEntryResult!4682)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33764 (_ BitVec 32)) SeekEntryResult!4682)

(assert (=> b!533219 (= lt!245405 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16217 a!3154) j!147) a!3154 mask!3216))))

(assert (= (and start!48596 res!328571) b!533212))

(assert (= (and b!533212 res!328570) b!533215))

(assert (= (and b!533215 res!328568) b!533217))

(assert (= (and b!533217 res!328572) b!533216))

(assert (= (and b!533216 res!328573) b!533214))

(assert (= (and b!533214 res!328566) b!533218))

(assert (= (and b!533218 res!328567) b!533213))

(assert (= (and b!533213 res!328574) b!533211))

(assert (= (and b!533211 res!328569) b!533219))

(declare-fun m!513135 () Bool)

(assert (=> b!533211 m!513135))

(declare-fun m!513137 () Bool)

(assert (=> b!533211 m!513137))

(declare-fun m!513139 () Bool)

(assert (=> b!533218 m!513139))

(declare-fun m!513141 () Bool)

(assert (=> b!533217 m!513141))

(assert (=> b!533219 m!513137))

(assert (=> b!533219 m!513137))

(declare-fun m!513143 () Bool)

(assert (=> b!533219 m!513143))

(declare-fun m!513145 () Bool)

(assert (=> b!533213 m!513145))

(declare-fun m!513147 () Bool)

(assert (=> b!533216 m!513147))

(declare-fun m!513149 () Bool)

(assert (=> start!48596 m!513149))

(declare-fun m!513151 () Bool)

(assert (=> start!48596 m!513151))

(assert (=> b!533215 m!513137))

(assert (=> b!533215 m!513137))

(declare-fun m!513153 () Bool)

(assert (=> b!533215 m!513153))

(declare-fun m!513155 () Bool)

(assert (=> b!533214 m!513155))

(push 1)

(assert (not b!533216))

(assert (not start!48596))

(assert (not b!533218))

(assert (not b!533215))

(assert (not b!533217))

(assert (not b!533214))

(assert (not b!533213))

(assert (not b!533219))

(check-sat)

