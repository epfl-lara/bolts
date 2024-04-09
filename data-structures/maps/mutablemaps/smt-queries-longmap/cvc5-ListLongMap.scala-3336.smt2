; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46018 () Bool)

(assert start!46018)

(declare-fun b!509211 () Bool)

(declare-fun res!310211 () Bool)

(declare-fun e!297801 () Bool)

(assert (=> b!509211 (=> (not res!310211) (not e!297801))))

(declare-datatypes ((array!32689 0))(
  ( (array!32690 (arr!15720 (Array (_ BitVec 32) (_ BitVec 64))) (size!16084 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32689)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32689 (_ BitVec 32)) Bool)

(assert (=> b!509211 (= res!310211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!509212 () Bool)

(declare-fun res!310206 () Bool)

(declare-fun e!297802 () Bool)

(assert (=> b!509212 (=> (not res!310206) (not e!297802))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!509212 (= res!310206 (and (= (size!16084 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16084 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16084 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!509213 () Bool)

(declare-fun res!310207 () Bool)

(assert (=> b!509213 (=> (not res!310207) (not e!297802))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!509213 (= res!310207 (validKeyInArray!0 (select (arr!15720 a!3235) j!176)))))

(declare-fun b!509214 () Bool)

(assert (=> b!509214 (= e!297801 (not true))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun lt!232659 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4194 0))(
  ( (MissingZero!4194 (index!18964 (_ BitVec 32))) (Found!4194 (index!18965 (_ BitVec 32))) (Intermediate!4194 (undefined!5006 Bool) (index!18966 (_ BitVec 32)) (x!47966 (_ BitVec 32))) (Undefined!4194) (MissingVacant!4194 (index!18967 (_ BitVec 32))) )
))
(declare-fun lt!232657 () SeekEntryResult!4194)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32689 (_ BitVec 32)) SeekEntryResult!4194)

(assert (=> b!509214 (= lt!232657 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232659 (select (store (arr!15720 a!3235) i!1204 k!2280) j!176) (array!32690 (store (arr!15720 a!3235) i!1204 k!2280) (size!16084 a!3235)) mask!3524))))

(declare-fun lt!232660 () SeekEntryResult!4194)

(declare-fun lt!232661 () (_ BitVec 32))

(assert (=> b!509214 (= lt!232660 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232661 (select (arr!15720 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!509214 (= lt!232659 (toIndex!0 (select (store (arr!15720 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!509214 (= lt!232661 (toIndex!0 (select (arr!15720 a!3235) j!176) mask!3524))))

(declare-fun e!297799 () Bool)

(assert (=> b!509214 e!297799))

(declare-fun res!310213 () Bool)

(assert (=> b!509214 (=> (not res!310213) (not e!297799))))

(assert (=> b!509214 (= res!310213 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15638 0))(
  ( (Unit!15639) )
))
(declare-fun lt!232658 () Unit!15638)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32689 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15638)

(assert (=> b!509214 (= lt!232658 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!509215 () Bool)

(declare-fun res!310208 () Bool)

(assert (=> b!509215 (=> (not res!310208) (not e!297802))))

(declare-fun arrayContainsKey!0 (array!32689 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!509215 (= res!310208 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun res!310212 () Bool)

(assert (=> start!46018 (=> (not res!310212) (not e!297802))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46018 (= res!310212 (validMask!0 mask!3524))))

(assert (=> start!46018 e!297802))

(assert (=> start!46018 true))

(declare-fun array_inv!11494 (array!32689) Bool)

(assert (=> start!46018 (array_inv!11494 a!3235)))

(declare-fun b!509216 () Bool)

(declare-fun res!310214 () Bool)

(assert (=> b!509216 (=> (not res!310214) (not e!297802))))

(assert (=> b!509216 (= res!310214 (validKeyInArray!0 k!2280))))

(declare-fun b!509217 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32689 (_ BitVec 32)) SeekEntryResult!4194)

(assert (=> b!509217 (= e!297799 (= (seekEntryOrOpen!0 (select (arr!15720 a!3235) j!176) a!3235 mask!3524) (Found!4194 j!176)))))

(declare-fun b!509218 () Bool)

(assert (=> b!509218 (= e!297802 e!297801)))

(declare-fun res!310210 () Bool)

(assert (=> b!509218 (=> (not res!310210) (not e!297801))))

(declare-fun lt!232656 () SeekEntryResult!4194)

(assert (=> b!509218 (= res!310210 (or (= lt!232656 (MissingZero!4194 i!1204)) (= lt!232656 (MissingVacant!4194 i!1204))))))

(assert (=> b!509218 (= lt!232656 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!509219 () Bool)

(declare-fun res!310209 () Bool)

(assert (=> b!509219 (=> (not res!310209) (not e!297801))))

(declare-datatypes ((List!9931 0))(
  ( (Nil!9928) (Cons!9927 (h!10804 (_ BitVec 64)) (t!16167 List!9931)) )
))
(declare-fun arrayNoDuplicates!0 (array!32689 (_ BitVec 32) List!9931) Bool)

(assert (=> b!509219 (= res!310209 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9928))))

(assert (= (and start!46018 res!310212) b!509212))

(assert (= (and b!509212 res!310206) b!509213))

(assert (= (and b!509213 res!310207) b!509216))

(assert (= (and b!509216 res!310214) b!509215))

(assert (= (and b!509215 res!310208) b!509218))

(assert (= (and b!509218 res!310210) b!509211))

(assert (= (and b!509211 res!310211) b!509219))

(assert (= (and b!509219 res!310209) b!509214))

(assert (= (and b!509214 res!310213) b!509217))

(declare-fun m!490123 () Bool)

(assert (=> b!509214 m!490123))

(declare-fun m!490125 () Bool)

(assert (=> b!509214 m!490125))

(declare-fun m!490127 () Bool)

(assert (=> b!509214 m!490127))

(assert (=> b!509214 m!490127))

(declare-fun m!490129 () Bool)

(assert (=> b!509214 m!490129))

(declare-fun m!490131 () Bool)

(assert (=> b!509214 m!490131))

(declare-fun m!490133 () Bool)

(assert (=> b!509214 m!490133))

(assert (=> b!509214 m!490131))

(declare-fun m!490135 () Bool)

(assert (=> b!509214 m!490135))

(assert (=> b!509214 m!490127))

(declare-fun m!490137 () Bool)

(assert (=> b!509214 m!490137))

(assert (=> b!509214 m!490131))

(declare-fun m!490139 () Bool)

(assert (=> b!509214 m!490139))

(declare-fun m!490141 () Bool)

(assert (=> b!509215 m!490141))

(assert (=> b!509217 m!490131))

(assert (=> b!509217 m!490131))

(declare-fun m!490143 () Bool)

(assert (=> b!509217 m!490143))

(declare-fun m!490145 () Bool)

(assert (=> b!509211 m!490145))

(declare-fun m!490147 () Bool)

(assert (=> b!509218 m!490147))

(assert (=> b!509213 m!490131))

(assert (=> b!509213 m!490131))

(declare-fun m!490149 () Bool)

(assert (=> b!509213 m!490149))

(declare-fun m!490151 () Bool)

(assert (=> b!509219 m!490151))

(declare-fun m!490153 () Bool)

(assert (=> start!46018 m!490153))

(declare-fun m!490155 () Bool)

(assert (=> start!46018 m!490155))

(declare-fun m!490157 () Bool)

(assert (=> b!509216 m!490157))

(push 1)

