; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48226 () Bool)

(assert start!48226)

(declare-fun b!530578 () Bool)

(declare-fun res!326436 () Bool)

(declare-fun e!309088 () Bool)

(assert (=> b!530578 (=> (not res!326436) (not e!309088))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530578 (= res!326436 (validKeyInArray!0 k!1998))))

(declare-fun b!530579 () Bool)

(assert (=> b!530579 (= e!309088 false)))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((array!33607 0))(
  ( (array!33608 (arr!16146 (Array (_ BitVec 32) (_ BitVec 64))) (size!16510 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33607)

(declare-datatypes ((SeekEntryResult!4611 0))(
  ( (MissingZero!4611 (index!20668 (_ BitVec 32))) (Found!4611 (index!20669 (_ BitVec 32))) (Intermediate!4611 (undefined!5423 Bool) (index!20670 (_ BitVec 32)) (x!49684 (_ BitVec 32))) (Undefined!4611) (MissingVacant!4611 (index!20671 (_ BitVec 32))) )
))
(declare-fun lt!244757 () SeekEntryResult!4611)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33607 (_ BitVec 32)) SeekEntryResult!4611)

(assert (=> b!530579 (= lt!244757 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun b!530580 () Bool)

(declare-fun res!326437 () Bool)

(assert (=> b!530580 (=> (not res!326437) (not e!309088))))

(declare-fun arrayContainsKey!0 (array!33607 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530580 (= res!326437 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun res!326435 () Bool)

(assert (=> start!48226 (=> (not res!326435) (not e!309088))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48226 (= res!326435 (validMask!0 mask!3216))))

(assert (=> start!48226 e!309088))

(assert (=> start!48226 true))

(declare-fun array_inv!11920 (array!33607) Bool)

(assert (=> start!48226 (array_inv!11920 a!3154)))

(declare-fun b!530581 () Bool)

(declare-fun res!326434 () Bool)

(assert (=> b!530581 (=> (not res!326434) (not e!309088))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!530581 (= res!326434 (validKeyInArray!0 (select (arr!16146 a!3154) j!147)))))

(declare-fun b!530582 () Bool)

(declare-fun res!326438 () Bool)

(assert (=> b!530582 (=> (not res!326438) (not e!309088))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530582 (= res!326438 (and (= (size!16510 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16510 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16510 a!3154)) (not (= i!1153 j!147))))))

(assert (= (and start!48226 res!326435) b!530582))

(assert (= (and b!530582 res!326438) b!530581))

(assert (= (and b!530581 res!326434) b!530578))

(assert (= (and b!530578 res!326436) b!530580))

(assert (= (and b!530580 res!326437) b!530579))

(declare-fun m!511165 () Bool)

(assert (=> start!48226 m!511165))

(declare-fun m!511167 () Bool)

(assert (=> start!48226 m!511167))

(declare-fun m!511169 () Bool)

(assert (=> b!530578 m!511169))

(declare-fun m!511171 () Bool)

(assert (=> b!530579 m!511171))

(declare-fun m!511173 () Bool)

(assert (=> b!530581 m!511173))

(assert (=> b!530581 m!511173))

(declare-fun m!511175 () Bool)

(assert (=> b!530581 m!511175))

(declare-fun m!511177 () Bool)

(assert (=> b!530580 m!511177))

(push 1)

(assert (not b!530580))

(assert (not b!530579))

(assert (not b!530578))

(assert (not start!48226))

(assert (not b!530581))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

