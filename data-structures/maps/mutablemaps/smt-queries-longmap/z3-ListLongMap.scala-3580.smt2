; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49284 () Bool)

(assert start!49284)

(declare-fun b!542127 () Bool)

(declare-fun res!336828 () Bool)

(declare-fun e!313821 () Bool)

(assert (=> b!542127 (=> (not res!336828) (not e!313821))))

(declare-datatypes ((array!34248 0))(
  ( (array!34249 (arr!16453 (Array (_ BitVec 32) (_ BitVec 64))) (size!16817 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34248)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!542127 (= res!336828 (validKeyInArray!0 (select (arr!16453 a!3154) j!147)))))

(declare-fun b!542128 () Bool)

(declare-fun res!336839 () Bool)

(assert (=> b!542128 (=> (not res!336839) (not e!313821))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!542128 (= res!336839 (and (= (size!16817 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16817 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16817 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!542129 () Bool)

(declare-fun res!336831 () Bool)

(assert (=> b!542129 (=> (not res!336831) (not e!313821))))

(declare-fun k0!1998 () (_ BitVec 64))

(assert (=> b!542129 (= res!336831 (validKeyInArray!0 k0!1998))))

(declare-fun b!542130 () Bool)

(declare-fun res!336836 () Bool)

(declare-fun e!313820 () Bool)

(assert (=> b!542130 (=> (not res!336836) (not e!313820))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34248 (_ BitVec 32)) Bool)

(assert (=> b!542130 (= res!336836 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!542131 () Bool)

(declare-fun e!313819 () Bool)

(assert (=> b!542131 (= e!313820 e!313819)))

(declare-fun res!336830 () Bool)

(assert (=> b!542131 (=> (not res!336830) (not e!313819))))

(declare-datatypes ((SeekEntryResult!4918 0))(
  ( (MissingZero!4918 (index!21896 (_ BitVec 32))) (Found!4918 (index!21897 (_ BitVec 32))) (Intermediate!4918 (undefined!5730 Bool) (index!21898 (_ BitVec 32)) (x!50840 (_ BitVec 32))) (Undefined!4918) (MissingVacant!4918 (index!21899 (_ BitVec 32))) )
))
(declare-fun lt!247854 () SeekEntryResult!4918)

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!542131 (= res!336830 (= lt!247854 (Intermediate!4918 false resIndex!32 resX!32)))))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34248 (_ BitVec 32)) SeekEntryResult!4918)

(assert (=> b!542131 (= lt!247854 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16453 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!542132 () Bool)

(declare-fun res!336834 () Bool)

(assert (=> b!542132 (=> (not res!336834) (not e!313819))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542132 (= res!336834 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16453 a!3154) j!147) mask!3216) (select (arr!16453 a!3154) j!147) a!3154 mask!3216) lt!247854))))

(declare-fun b!542133 () Bool)

(declare-fun res!336837 () Bool)

(assert (=> b!542133 (=> (not res!336837) (not e!313821))))

(declare-fun arrayContainsKey!0 (array!34248 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!542133 (= res!336837 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!542134 () Bool)

(declare-fun res!336832 () Bool)

(assert (=> b!542134 (=> (not res!336832) (not e!313820))))

(assert (=> b!542134 (= res!336832 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16817 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16817 a!3154)) (= (select (arr!16453 a!3154) resIndex!32) (select (arr!16453 a!3154) j!147))))))

(declare-fun b!542135 () Bool)

(declare-fun res!336838 () Bool)

(assert (=> b!542135 (=> (not res!336838) (not e!313820))))

(declare-datatypes ((List!10625 0))(
  ( (Nil!10622) (Cons!10621 (h!11576 (_ BitVec 64)) (t!16861 List!10625)) )
))
(declare-fun arrayNoDuplicates!0 (array!34248 (_ BitVec 32) List!10625) Bool)

(assert (=> b!542135 (= res!336838 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10622))))

(declare-fun b!542136 () Bool)

(assert (=> b!542136 (= e!313819 false)))

(declare-fun lt!247856 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!542136 (= lt!247856 (nextIndex!0 index!1177 x!1030 mask!3216))))

(declare-fun res!336835 () Bool)

(assert (=> start!49284 (=> (not res!336835) (not e!313821))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49284 (= res!336835 (validMask!0 mask!3216))))

(assert (=> start!49284 e!313821))

(assert (=> start!49284 true))

(declare-fun array_inv!12227 (array!34248) Bool)

(assert (=> start!49284 (array_inv!12227 a!3154)))

(declare-fun b!542137 () Bool)

(declare-fun res!336829 () Bool)

(assert (=> b!542137 (=> (not res!336829) (not e!313819))))

(assert (=> b!542137 (= res!336829 (and (not (= (select (arr!16453 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16453 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16453 a!3154) index!1177) (select (arr!16453 a!3154) j!147)))))))

(declare-fun b!542138 () Bool)

(assert (=> b!542138 (= e!313821 e!313820)))

(declare-fun res!336833 () Bool)

(assert (=> b!542138 (=> (not res!336833) (not e!313820))))

(declare-fun lt!247855 () SeekEntryResult!4918)

(assert (=> b!542138 (= res!336833 (or (= lt!247855 (MissingZero!4918 i!1153)) (= lt!247855 (MissingVacant!4918 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34248 (_ BitVec 32)) SeekEntryResult!4918)

(assert (=> b!542138 (= lt!247855 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(assert (= (and start!49284 res!336835) b!542128))

(assert (= (and b!542128 res!336839) b!542127))

(assert (= (and b!542127 res!336828) b!542129))

(assert (= (and b!542129 res!336831) b!542133))

(assert (= (and b!542133 res!336837) b!542138))

(assert (= (and b!542138 res!336833) b!542130))

(assert (= (and b!542130 res!336836) b!542135))

(assert (= (and b!542135 res!336838) b!542134))

(assert (= (and b!542134 res!336832) b!542131))

(assert (= (and b!542131 res!336830) b!542132))

(assert (= (and b!542132 res!336834) b!542137))

(assert (= (and b!542137 res!336829) b!542136))

(declare-fun m!520441 () Bool)

(assert (=> start!49284 m!520441))

(declare-fun m!520443 () Bool)

(assert (=> start!49284 m!520443))

(declare-fun m!520445 () Bool)

(assert (=> b!542127 m!520445))

(assert (=> b!542127 m!520445))

(declare-fun m!520447 () Bool)

(assert (=> b!542127 m!520447))

(declare-fun m!520449 () Bool)

(assert (=> b!542138 m!520449))

(declare-fun m!520451 () Bool)

(assert (=> b!542137 m!520451))

(assert (=> b!542137 m!520445))

(assert (=> b!542131 m!520445))

(assert (=> b!542131 m!520445))

(declare-fun m!520453 () Bool)

(assert (=> b!542131 m!520453))

(declare-fun m!520455 () Bool)

(assert (=> b!542136 m!520455))

(declare-fun m!520457 () Bool)

(assert (=> b!542134 m!520457))

(assert (=> b!542134 m!520445))

(declare-fun m!520459 () Bool)

(assert (=> b!542135 m!520459))

(declare-fun m!520461 () Bool)

(assert (=> b!542129 m!520461))

(assert (=> b!542132 m!520445))

(assert (=> b!542132 m!520445))

(declare-fun m!520463 () Bool)

(assert (=> b!542132 m!520463))

(assert (=> b!542132 m!520463))

(assert (=> b!542132 m!520445))

(declare-fun m!520465 () Bool)

(assert (=> b!542132 m!520465))

(declare-fun m!520467 () Bool)

(assert (=> b!542133 m!520467))

(declare-fun m!520469 () Bool)

(assert (=> b!542130 m!520469))

(check-sat (not b!542138) (not start!49284) (not b!542129) (not b!542136) (not b!542135) (not b!542131) (not b!542130) (not b!542132) (not b!542127) (not b!542133))
(check-sat)
