; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48590 () Bool)

(assert start!48590)

(declare-fun b!533129 () Bool)

(declare-fun e!310266 () Bool)

(declare-fun mask!3216 () (_ BitVec 32))

(assert (=> b!533129 (= e!310266 (bvslt mask!3216 #b00000000000000000000000000000000))))

(declare-fun b!533130 () Bool)

(declare-fun e!310265 () Bool)

(assert (=> b!533130 (= e!310265 e!310266)))

(declare-fun res!328492 () Bool)

(assert (=> b!533130 (=> (not res!328492) (not e!310266))))

(declare-datatypes ((SeekEntryResult!4679 0))(
  ( (MissingZero!4679 (index!20940 (_ BitVec 32))) (Found!4679 (index!20941 (_ BitVec 32))) (Intermediate!4679 (undefined!5491 Bool) (index!20942 (_ BitVec 32)) (x!49937 (_ BitVec 32))) (Undefined!4679) (MissingVacant!4679 (index!20943 (_ BitVec 32))) )
))
(declare-fun lt!245387 () SeekEntryResult!4679)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!533130 (= res!328492 (or (= lt!245387 (MissingZero!4679 i!1153)) (= lt!245387 (MissingVacant!4679 i!1153))))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-datatypes ((array!33758 0))(
  ( (array!33759 (arr!16214 (Array (_ BitVec 32) (_ BitVec 64))) (size!16578 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33758)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33758 (_ BitVec 32)) SeekEntryResult!4679)

(assert (=> b!533130 (= lt!245387 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!533131 () Bool)

(declare-fun res!328491 () Bool)

(assert (=> b!533131 (=> (not res!328491) (not e!310266))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33758 (_ BitVec 32)) SeekEntryResult!4679)

(assert (=> b!533131 (= res!328491 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16214 a!3154) j!147) a!3154 mask!3216) (Intermediate!4679 false resIndex!32 resX!32)))))

(declare-fun res!328489 () Bool)

(assert (=> start!48590 (=> (not res!328489) (not e!310265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48590 (= res!328489 (validMask!0 mask!3216))))

(assert (=> start!48590 e!310265))

(assert (=> start!48590 true))

(declare-fun array_inv!11988 (array!33758) Bool)

(assert (=> start!48590 (array_inv!11988 a!3154)))

(declare-fun b!533132 () Bool)

(declare-fun res!328486 () Bool)

(assert (=> b!533132 (=> (not res!328486) (not e!310266))))

(declare-datatypes ((List!10386 0))(
  ( (Nil!10383) (Cons!10382 (h!11325 (_ BitVec 64)) (t!16622 List!10386)) )
))
(declare-fun arrayNoDuplicates!0 (array!33758 (_ BitVec 32) List!10386) Bool)

(assert (=> b!533132 (= res!328486 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10383))))

(declare-fun b!533133 () Bool)

(declare-fun res!328484 () Bool)

(assert (=> b!533133 (=> (not res!328484) (not e!310266))))

(assert (=> b!533133 (= res!328484 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16578 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16578 a!3154)) (= (select (arr!16214 a!3154) resIndex!32) (select (arr!16214 a!3154) j!147))))))

(declare-fun b!533134 () Bool)

(declare-fun res!328493 () Bool)

(assert (=> b!533134 (=> (not res!328493) (not e!310266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33758 (_ BitVec 32)) Bool)

(assert (=> b!533134 (= res!328493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!533135 () Bool)

(declare-fun res!328490 () Bool)

(assert (=> b!533135 (=> (not res!328490) (not e!310265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!533135 (= res!328490 (validKeyInArray!0 (select (arr!16214 a!3154) j!147)))))

(declare-fun b!533136 () Bool)

(declare-fun res!328488 () Bool)

(assert (=> b!533136 (=> (not res!328488) (not e!310265))))

(declare-fun arrayContainsKey!0 (array!33758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!533136 (= res!328488 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!533137 () Bool)

(declare-fun res!328485 () Bool)

(assert (=> b!533137 (=> (not res!328485) (not e!310265))))

(assert (=> b!533137 (= res!328485 (and (= (size!16578 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16578 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16578 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!533138 () Bool)

(declare-fun res!328487 () Bool)

(assert (=> b!533138 (=> (not res!328487) (not e!310265))))

(assert (=> b!533138 (= res!328487 (validKeyInArray!0 k!1998))))

(assert (= (and start!48590 res!328489) b!533137))

(assert (= (and b!533137 res!328485) b!533135))

(assert (= (and b!533135 res!328490) b!533138))

(assert (= (and b!533138 res!328487) b!533136))

(assert (= (and b!533136 res!328488) b!533130))

(assert (= (and b!533130 res!328492) b!533134))

(assert (= (and b!533134 res!328493) b!533132))

(assert (= (and b!533132 res!328486) b!533133))

(assert (= (and b!533133 res!328484) b!533131))

(assert (= (and b!533131 res!328491) b!533129))

(declare-fun m!513069 () Bool)

(assert (=> b!533130 m!513069))

(declare-fun m!513071 () Bool)

(assert (=> b!533138 m!513071))

(declare-fun m!513073 () Bool)

(assert (=> b!533134 m!513073))

(declare-fun m!513075 () Bool)

(assert (=> b!533133 m!513075))

(declare-fun m!513077 () Bool)

(assert (=> b!533133 m!513077))

(declare-fun m!513079 () Bool)

(assert (=> start!48590 m!513079))

(declare-fun m!513081 () Bool)

(assert (=> start!48590 m!513081))

(declare-fun m!513083 () Bool)

(assert (=> b!533132 m!513083))

(declare-fun m!513085 () Bool)

(assert (=> b!533136 m!513085))

(assert (=> b!533131 m!513077))

(assert (=> b!533131 m!513077))

(declare-fun m!513087 () Bool)

(assert (=> b!533131 m!513087))

(assert (=> b!533135 m!513077))

(assert (=> b!533135 m!513077))

(declare-fun m!513089 () Bool)

(assert (=> b!533135 m!513089))

(push 1)

(assert (not b!533132))

(assert (not b!533136))

(assert (not b!533138))

(assert (not b!533131))

(assert (not b!533135))

(assert (not b!533130))

(assert (not start!48590))

(assert (not b!533134))

(check-sat)

(pop 1)

