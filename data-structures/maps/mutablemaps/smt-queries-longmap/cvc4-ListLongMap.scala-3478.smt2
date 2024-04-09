; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48230 () Bool)

(assert start!48230)

(declare-fun res!326465 () Bool)

(declare-fun e!309100 () Bool)

(assert (=> start!48230 (=> (not res!326465) (not e!309100))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48230 (= res!326465 (validMask!0 mask!3216))))

(assert (=> start!48230 e!309100))

(assert (=> start!48230 true))

(declare-datatypes ((array!33611 0))(
  ( (array!33612 (arr!16148 (Array (_ BitVec 32) (_ BitVec 64))) (size!16512 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33611)

(declare-fun array_inv!11922 (array!33611) Bool)

(assert (=> start!48230 (array_inv!11922 a!3154)))

(declare-fun b!530608 () Bool)

(declare-fun res!326464 () Bool)

(assert (=> b!530608 (=> (not res!326464) (not e!309100))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530608 (= res!326464 (and (= (size!16512 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16512 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16512 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530609 () Bool)

(declare-fun res!326467 () Bool)

(assert (=> b!530609 (=> (not res!326467) (not e!309100))))

(declare-fun k!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33611 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530609 (= res!326467 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530610 () Bool)

(declare-fun res!326468 () Bool)

(assert (=> b!530610 (=> (not res!326468) (not e!309100))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530610 (= res!326468 (validKeyInArray!0 k!1998))))

(declare-fun b!530611 () Bool)

(declare-fun res!326466 () Bool)

(assert (=> b!530611 (=> (not res!326466) (not e!309100))))

(assert (=> b!530611 (= res!326466 (validKeyInArray!0 (select (arr!16148 a!3154) j!147)))))

(declare-fun b!530612 () Bool)

(assert (=> b!530612 (= e!309100 false)))

(declare-datatypes ((SeekEntryResult!4613 0))(
  ( (MissingZero!4613 (index!20676 (_ BitVec 32))) (Found!4613 (index!20677 (_ BitVec 32))) (Intermediate!4613 (undefined!5425 Bool) (index!20678 (_ BitVec 32)) (x!49686 (_ BitVec 32))) (Undefined!4613) (MissingVacant!4613 (index!20679 (_ BitVec 32))) )
))
(declare-fun lt!244763 () SeekEntryResult!4613)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33611 (_ BitVec 32)) SeekEntryResult!4613)

(assert (=> b!530612 (= lt!244763 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(assert (= (and start!48230 res!326465) b!530608))

(assert (= (and b!530608 res!326464) b!530611))

(assert (= (and b!530611 res!326466) b!530610))

(assert (= (and b!530610 res!326468) b!530609))

(assert (= (and b!530609 res!326467) b!530612))

(declare-fun m!511193 () Bool)

(assert (=> start!48230 m!511193))

(declare-fun m!511195 () Bool)

(assert (=> start!48230 m!511195))

(declare-fun m!511197 () Bool)

(assert (=> b!530612 m!511197))

(declare-fun m!511199 () Bool)

(assert (=> b!530611 m!511199))

(assert (=> b!530611 m!511199))

(declare-fun m!511201 () Bool)

(assert (=> b!530611 m!511201))

(declare-fun m!511203 () Bool)

(assert (=> b!530609 m!511203))

(declare-fun m!511205 () Bool)

(assert (=> b!530610 m!511205))

(push 1)

(assert (not b!530611))

(assert (not b!530612))

(assert (not b!530609))

(assert (not b!530610))

(assert (not start!48230))

(check-sat)

