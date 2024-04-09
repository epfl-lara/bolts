; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48608 () Bool)

(assert start!48608)

(declare-fun b!533390 () Bool)

(declare-fun res!328750 () Bool)

(declare-fun e!310348 () Bool)

(assert (=> b!533390 (=> (not res!328750) (not e!310348))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533390 (= res!328750 (validKeyInArray!0 k!1998))))

(declare-fun b!533391 () Bool)

(declare-fun res!328747 () Bool)

(declare-fun e!310347 () Bool)

(assert (=> b!533391 (=> (not res!328747) (not e!310347))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!33776 0))(
  ( (array!33777 (arr!16223 (Array (_ BitVec 32) (_ BitVec 64))) (size!16587 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33776)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!533391 (= res!328747 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16587 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16587 a!3154)) (= (select (arr!16223 a!3154) resIndex!32) (select (arr!16223 a!3154) j!147))))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun b!533392 () Bool)

(assert (=> b!533392 (= e!310347 (and (bvsge mask!3216 #b00000000000000000000000000000000) (bvslt index!1177 (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsgt x!1030 #b01111111111111111111111111111110)))))

(declare-fun b!533393 () Bool)

(declare-fun res!328745 () Bool)

(assert (=> b!533393 (=> (not res!328745) (not e!310348))))

(declare-fun arrayContainsKey!0 (array!33776 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533393 (= res!328745 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533394 () Bool)

(assert (=> b!533394 (= e!310348 e!310347)))

(declare-fun res!328753 () Bool)

(assert (=> b!533394 (=> (not res!328753) (not e!310347))))

(declare-datatypes ((SeekEntryResult!4688 0))(
  ( (MissingZero!4688 (index!20976 (_ BitVec 32))) (Found!4688 (index!20977 (_ BitVec 32))) (Intermediate!4688 (undefined!5500 Bool) (index!20978 (_ BitVec 32)) (x!49970 (_ BitVec 32))) (Undefined!4688) (MissingVacant!4688 (index!20979 (_ BitVec 32))) )
))
(declare-fun lt!245423 () SeekEntryResult!4688)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533394 (= res!328753 (or (= lt!245423 (MissingZero!4688 i!1153)) (= lt!245423 (MissingVacant!4688 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33776 (_ BitVec 32)) SeekEntryResult!4688)

(assert (=> b!533394 (= lt!245423 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533395 () Bool)

(declare-fun res!328749 () Bool)

(assert (=> b!533395 (=> (not res!328749) (not e!310347))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33776 (_ BitVec 32)) SeekEntryResult!4688)

(assert (=> b!533395 (= res!328749 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16223 a!3154) j!147) a!3154 mask!3216) (Intermediate!4688 false resIndex!32 resX!32)))))

(declare-fun res!328748 () Bool)

(assert (=> start!48608 (=> (not res!328748) (not e!310348))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48608 (= res!328748 (validMask!0 mask!3216))))

(assert (=> start!48608 e!310348))

(assert (=> start!48608 true))

(declare-fun array_inv!11997 (array!33776) Bool)

(assert (=> start!48608 (array_inv!11997 a!3154)))

(declare-fun b!533396 () Bool)

(declare-fun res!328754 () Bool)

(assert (=> b!533396 (=> (not res!328754) (not e!310347))))

(declare-datatypes ((List!10395 0))(
  ( (Nil!10392) (Cons!10391 (h!11334 (_ BitVec 64)) (t!16631 List!10395)) )
))
(declare-fun arrayNoDuplicates!0 (array!33776 (_ BitVec 32) List!10395) Bool)

(assert (=> b!533396 (= res!328754 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10392))))

(declare-fun b!533397 () Bool)

(declare-fun res!328752 () Bool)

(assert (=> b!533397 (=> (not res!328752) (not e!310348))))

(assert (=> b!533397 (= res!328752 (and (= (size!16587 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16587 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16587 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533398 () Bool)

(declare-fun res!328751 () Bool)

(assert (=> b!533398 (=> (not res!328751) (not e!310347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33776 (_ BitVec 32)) Bool)

(assert (=> b!533398 (= res!328751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533399 () Bool)

(declare-fun res!328746 () Bool)

(assert (=> b!533399 (=> (not res!328746) (not e!310348))))

(assert (=> b!533399 (= res!328746 (validKeyInArray!0 (select (arr!16223 a!3154) j!147)))))

(assert (= (and start!48608 res!328748) b!533397))

(assert (= (and b!533397 res!328752) b!533399))

(assert (= (and b!533399 res!328746) b!533390))

(assert (= (and b!533390 res!328750) b!533393))

(assert (= (and b!533393 res!328745) b!533394))

(assert (= (and b!533394 res!328753) b!533398))

(assert (= (and b!533398 res!328751) b!533396))

(assert (= (and b!533396 res!328754) b!533391))

(assert (= (and b!533391 res!328747) b!533395))

(assert (= (and b!533395 res!328749) b!533392))

(declare-fun m!513267 () Bool)

(assert (=> b!533399 m!513267))

(assert (=> b!533399 m!513267))

(declare-fun m!513269 () Bool)

(assert (=> b!533399 m!513269))

(declare-fun m!513271 () Bool)

(assert (=> b!533398 m!513271))

(declare-fun m!513273 () Bool)

(assert (=> start!48608 m!513273))

(declare-fun m!513275 () Bool)

(assert (=> start!48608 m!513275))

(assert (=> b!533395 m!513267))

(assert (=> b!533395 m!513267))

(declare-fun m!513277 () Bool)

(assert (=> b!533395 m!513277))

(declare-fun m!513279 () Bool)

(assert (=> b!533393 m!513279))

(declare-fun m!513281 () Bool)

(assert (=> b!533396 m!513281))

(declare-fun m!513283 () Bool)

(assert (=> b!533391 m!513283))

(assert (=> b!533391 m!513267))

(declare-fun m!513285 () Bool)

(assert (=> b!533394 m!513285))

(declare-fun m!513287 () Bool)

(assert (=> b!533390 m!513287))

(push 1)

(assert (not b!533398))

(assert (not b!533395))

(assert (not b!533390))

(assert (not start!48608))

(assert (not b!533393))

(assert (not b!533394))

(assert (not b!533396))

