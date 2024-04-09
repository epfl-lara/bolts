; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48944 () Bool)

(assert start!48944)

(declare-fun b!539133 () Bool)

(declare-fun e!312524 () Bool)

(assert (=> b!539133 (= e!312524 false)))

(declare-fun index!1177 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4856 0))(
  ( (MissingZero!4856 (index!21648 (_ BitVec 32))) (Found!4856 (index!21649 (_ BitVec 32))) (Intermediate!4856 (undefined!5668 Bool) (index!21650 (_ BitVec 32)) (x!50586 (_ BitVec 32))) (Undefined!4856) (MissingVacant!4856 (index!21651 (_ BitVec 32))) )
))
(declare-fun lt!247078 () SeekEntryResult!4856)

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34112 0))(
  ( (array!34113 (arr!16391 (Array (_ BitVec 32) (_ BitVec 64))) (size!16755 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34112)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34112 (_ BitVec 32)) SeekEntryResult!4856)

(assert (=> b!539133 (= lt!247078 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16391 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539134 () Bool)

(declare-fun res!334495 () Bool)

(declare-fun e!312525 () Bool)

(assert (=> b!539134 (=> (not res!334495) (not e!312525))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539134 (= res!334495 (validKeyInArray!0 (select (arr!16391 a!3154) j!147)))))

(declare-fun b!539135 () Bool)

(declare-fun res!334490 () Bool)

(assert (=> b!539135 (=> (not res!334490) (not e!312525))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34112 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539135 (= res!334490 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539136 () Bool)

(declare-fun res!334494 () Bool)

(assert (=> b!539136 (=> (not res!334494) (not e!312524))))

(declare-datatypes ((List!10563 0))(
  ( (Nil!10560) (Cons!10559 (h!11502 (_ BitVec 64)) (t!16799 List!10563)) )
))
(declare-fun arrayNoDuplicates!0 (array!34112 (_ BitVec 32) List!10563) Bool)

(assert (=> b!539136 (= res!334494 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10560))))

(declare-fun b!539137 () Bool)

(declare-fun res!334493 () Bool)

(assert (=> b!539137 (=> (not res!334493) (not e!312525))))

(assert (=> b!539137 (= res!334493 (validKeyInArray!0 k!1998))))

(declare-fun b!539138 () Bool)

(declare-fun res!334488 () Bool)

(assert (=> b!539138 (=> (not res!334488) (not e!312525))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539138 (= res!334488 (and (= (size!16755 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16755 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16755 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!539139 () Bool)

(declare-fun res!334496 () Bool)

(assert (=> b!539139 (=> (not res!334496) (not e!312524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34112 (_ BitVec 32)) Bool)

(assert (=> b!539139 (= res!334496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539140 () Bool)

(assert (=> b!539140 (= e!312525 e!312524)))

(declare-fun res!334492 () Bool)

(assert (=> b!539140 (=> (not res!334492) (not e!312524))))

(declare-fun lt!247079 () SeekEntryResult!4856)

(assert (=> b!539140 (= res!334492 (or (= lt!247079 (MissingZero!4856 i!1153)) (= lt!247079 (MissingVacant!4856 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34112 (_ BitVec 32)) SeekEntryResult!4856)

(assert (=> b!539140 (= lt!247079 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!539141 () Bool)

(declare-fun res!334489 () Bool)

(assert (=> b!539141 (=> (not res!334489) (not e!312524))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!539141 (= res!334489 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16755 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16755 a!3154)) (= (select (arr!16391 a!3154) resIndex!32) (select (arr!16391 a!3154) j!147))))))

(declare-fun res!334491 () Bool)

(assert (=> start!48944 (=> (not res!334491) (not e!312525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48944 (= res!334491 (validMask!0 mask!3216))))

(assert (=> start!48944 e!312525))

(assert (=> start!48944 true))

(declare-fun array_inv!12165 (array!34112) Bool)

(assert (=> start!48944 (array_inv!12165 a!3154)))

(assert (= (and start!48944 res!334491) b!539138))

(assert (= (and b!539138 res!334488) b!539134))

(assert (= (and b!539134 res!334495) b!539137))

(assert (= (and b!539137 res!334493) b!539135))

(assert (= (and b!539135 res!334490) b!539140))

(assert (= (and b!539140 res!334492) b!539139))

(assert (= (and b!539139 res!334496) b!539136))

(assert (= (and b!539136 res!334494) b!539141))

(assert (= (and b!539141 res!334489) b!539133))

(declare-fun m!518217 () Bool)

(assert (=> b!539135 m!518217))

(declare-fun m!518219 () Bool)

(assert (=> b!539133 m!518219))

(assert (=> b!539133 m!518219))

(declare-fun m!518221 () Bool)

(assert (=> b!539133 m!518221))

(declare-fun m!518223 () Bool)

(assert (=> b!539140 m!518223))

(declare-fun m!518225 () Bool)

(assert (=> b!539136 m!518225))

(declare-fun m!518227 () Bool)

(assert (=> start!48944 m!518227))

(declare-fun m!518229 () Bool)

(assert (=> start!48944 m!518229))

(declare-fun m!518231 () Bool)

(assert (=> b!539139 m!518231))

(declare-fun m!518233 () Bool)

(assert (=> b!539137 m!518233))

(assert (=> b!539134 m!518219))

(assert (=> b!539134 m!518219))

(declare-fun m!518235 () Bool)

(assert (=> b!539134 m!518235))

(declare-fun m!518237 () Bool)

(assert (=> b!539141 m!518237))

(assert (=> b!539141 m!518219))

(push 1)

(assert (not b!539137))

(assert (not b!539136))

(assert (not b!539134))

(assert (not b!539133))

(assert (not b!539135))

(assert (not start!48944))

(assert (not b!539139))

(assert (not b!539140))

(check-sat)

(pop 1)

