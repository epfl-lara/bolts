; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48950 () Bool)

(assert start!48950)

(declare-fun b!539230 () Bool)

(declare-fun res!334591 () Bool)

(declare-fun e!312561 () Bool)

(assert (=> b!539230 (=> (not res!334591) (not e!312561))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!539230 (= res!334591 (validKeyInArray!0 k!1998))))

(declare-fun b!539231 () Bool)

(declare-fun res!334589 () Bool)

(declare-fun e!312560 () Bool)

(assert (=> b!539231 (=> (not res!334589) (not e!312560))))

(declare-datatypes ((SeekEntryResult!4859 0))(
  ( (MissingZero!4859 (index!21660 (_ BitVec 32))) (Found!4859 (index!21661 (_ BitVec 32))) (Intermediate!4859 (undefined!5671 Bool) (index!21662 (_ BitVec 32)) (x!50597 (_ BitVec 32))) (Undefined!4859) (MissingVacant!4859 (index!21663 (_ BitVec 32))) )
))
(declare-fun lt!247097 () SeekEntryResult!4859)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34118 0))(
  ( (array!34119 (arr!16394 (Array (_ BitVec 32) (_ BitVec 64))) (size!16758 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34118)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34118 (_ BitVec 32)) SeekEntryResult!4859)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!539231 (= res!334589 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16394 a!3154) j!147) mask!3216) (select (arr!16394 a!3154) j!147) a!3154 mask!3216) lt!247097))))

(declare-fun res!334588 () Bool)

(assert (=> start!48950 (=> (not res!334588) (not e!312561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48950 (= res!334588 (validMask!0 mask!3216))))

(assert (=> start!48950 e!312561))

(assert (=> start!48950 true))

(declare-fun array_inv!12168 (array!34118) Bool)

(assert (=> start!48950 (array_inv!12168 a!3154)))

(declare-fun b!539232 () Bool)

(declare-fun e!312559 () Bool)

(assert (=> b!539232 (= e!312561 e!312559)))

(declare-fun res!334592 () Bool)

(assert (=> b!539232 (=> (not res!334592) (not e!312559))))

(declare-fun lt!247096 () SeekEntryResult!4859)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!539232 (= res!334592 (or (= lt!247096 (MissingZero!4859 i!1153)) (= lt!247096 (MissingVacant!4859 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34118 (_ BitVec 32)) SeekEntryResult!4859)

(assert (=> b!539232 (= lt!247096 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!539233 () Bool)

(declare-fun res!334587 () Bool)

(assert (=> b!539233 (=> (not res!334587) (not e!312561))))

(assert (=> b!539233 (= res!334587 (validKeyInArray!0 (select (arr!16394 a!3154) j!147)))))

(declare-fun b!539234 () Bool)

(declare-fun res!334593 () Bool)

(assert (=> b!539234 (=> (not res!334593) (not e!312561))))

(declare-fun arrayContainsKey!0 (array!34118 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!539234 (= res!334593 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!539235 () Bool)

(declare-fun res!334585 () Bool)

(assert (=> b!539235 (=> (not res!334585) (not e!312559))))

(declare-datatypes ((List!10566 0))(
  ( (Nil!10563) (Cons!10562 (h!11505 (_ BitVec 64)) (t!16802 List!10566)) )
))
(declare-fun arrayNoDuplicates!0 (array!34118 (_ BitVec 32) List!10566) Bool)

(assert (=> b!539235 (= res!334585 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10563))))

(declare-fun b!539236 () Bool)

(declare-fun res!334594 () Bool)

(assert (=> b!539236 (=> (not res!334594) (not e!312559))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!539236 (= res!334594 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16758 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16758 a!3154)) (= (select (arr!16394 a!3154) resIndex!32) (select (arr!16394 a!3154) j!147))))))

(declare-fun b!539237 () Bool)

(declare-fun res!334590 () Bool)

(assert (=> b!539237 (=> (not res!334590) (not e!312559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34118 (_ BitVec 32)) Bool)

(assert (=> b!539237 (= res!334590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!539238 () Bool)

(assert (=> b!539238 (= e!312559 e!312560)))

(declare-fun res!334595 () Bool)

(assert (=> b!539238 (=> (not res!334595) (not e!312560))))

(assert (=> b!539238 (= res!334595 (= lt!247097 (Intermediate!4859 false resIndex!32 resX!32)))))

(assert (=> b!539238 (= lt!247097 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16394 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!539239 () Bool)

(assert (=> b!539239 (= e!312560 (bvslt (bvsub #b01111111111111111111111111111110 x!1030) #b00000000000000000000000000000000))))

(declare-fun b!539240 () Bool)

(declare-fun res!334586 () Bool)

(assert (=> b!539240 (=> (not res!334586) (not e!312561))))

(assert (=> b!539240 (= res!334586 (and (= (size!16758 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16758 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16758 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48950 res!334588) b!539240))

(assert (= (and b!539240 res!334586) b!539233))

(assert (= (and b!539233 res!334587) b!539230))

(assert (= (and b!539230 res!334591) b!539234))

(assert (= (and b!539234 res!334593) b!539232))

(assert (= (and b!539232 res!334592) b!539237))

(assert (= (and b!539237 res!334590) b!539235))

(assert (= (and b!539235 res!334585) b!539236))

(assert (= (and b!539236 res!334594) b!539238))

(assert (= (and b!539238 res!334595) b!539231))

(assert (= (and b!539231 res!334589) b!539239))

(declare-fun m!518291 () Bool)

(assert (=> b!539237 m!518291))

(declare-fun m!518293 () Bool)

(assert (=> b!539236 m!518293))

(declare-fun m!518295 () Bool)

(assert (=> b!539236 m!518295))

(assert (=> b!539238 m!518295))

(assert (=> b!539238 m!518295))

(declare-fun m!518297 () Bool)

(assert (=> b!539238 m!518297))

(declare-fun m!518299 () Bool)

(assert (=> b!539234 m!518299))

(declare-fun m!518301 () Bool)

(assert (=> b!539232 m!518301))

(assert (=> b!539233 m!518295))

(assert (=> b!539233 m!518295))

(declare-fun m!518303 () Bool)

(assert (=> b!539233 m!518303))

(declare-fun m!518305 () Bool)

(assert (=> b!539230 m!518305))

(declare-fun m!518307 () Bool)

(assert (=> b!539235 m!518307))

(assert (=> b!539231 m!518295))

(assert (=> b!539231 m!518295))

(declare-fun m!518309 () Bool)

(assert (=> b!539231 m!518309))

(assert (=> b!539231 m!518309))

(assert (=> b!539231 m!518295))

(declare-fun m!518311 () Bool)

(assert (=> b!539231 m!518311))

(declare-fun m!518313 () Bool)

(assert (=> start!48950 m!518313))

(declare-fun m!518315 () Bool)

(assert (=> start!48950 m!518315))

(push 1)

(assert (not b!539230))

(assert (not start!48950))

(assert (not b!539234))

(assert (not b!539232))

(assert (not b!539238))

(assert (not b!539231))

(assert (not b!539233))

(assert (not b!539237))

(assert (not b!539235))

(check-sat)

(pop 1)

(push 1)

(check-sat)

