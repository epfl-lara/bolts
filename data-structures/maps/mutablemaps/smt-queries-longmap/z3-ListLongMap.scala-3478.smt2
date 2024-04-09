; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48228 () Bool)

(assert start!48228)

(declare-fun res!326449 () Bool)

(declare-fun e!309093 () Bool)

(assert (=> start!48228 (=> (not res!326449) (not e!309093))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48228 (= res!326449 (validMask!0 mask!3216))))

(assert (=> start!48228 e!309093))

(assert (=> start!48228 true))

(declare-datatypes ((array!33609 0))(
  ( (array!33610 (arr!16147 (Array (_ BitVec 32) (_ BitVec 64))) (size!16511 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33609)

(declare-fun array_inv!11921 (array!33609) Bool)

(assert (=> start!48228 (array_inv!11921 a!3154)))

(declare-fun b!530593 () Bool)

(declare-fun res!326451 () Bool)

(assert (=> b!530593 (=> (not res!326451) (not e!309093))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33609 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530593 (= res!326451 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun b!530594 () Bool)

(declare-fun res!326452 () Bool)

(assert (=> b!530594 (=> (not res!326452) (not e!309093))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530594 (= res!326452 (validKeyInArray!0 k0!1998))))

(declare-fun b!530595 () Bool)

(declare-fun res!326450 () Bool)

(assert (=> b!530595 (=> (not res!326450) (not e!309093))))

(declare-fun i!1153 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!530595 (= res!326450 (and (= (size!16511 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16511 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16511 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530596 () Bool)

(assert (=> b!530596 (= e!309093 false)))

(declare-datatypes ((SeekEntryResult!4612 0))(
  ( (MissingZero!4612 (index!20672 (_ BitVec 32))) (Found!4612 (index!20673 (_ BitVec 32))) (Intermediate!4612 (undefined!5424 Bool) (index!20674 (_ BitVec 32)) (x!49685 (_ BitVec 32))) (Undefined!4612) (MissingVacant!4612 (index!20675 (_ BitVec 32))) )
))
(declare-fun lt!244760 () SeekEntryResult!4612)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33609 (_ BitVec 32)) SeekEntryResult!4612)

(assert (=> b!530596 (= lt!244760 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!530597 () Bool)

(declare-fun res!326453 () Bool)

(assert (=> b!530597 (=> (not res!326453) (not e!309093))))

(assert (=> b!530597 (= res!326453 (validKeyInArray!0 (select (arr!16147 a!3154) j!147)))))

(assert (= (and start!48228 res!326449) b!530595))

(assert (= (and b!530595 res!326450) b!530597))

(assert (= (and b!530597 res!326453) b!530594))

(assert (= (and b!530594 res!326452) b!530593))

(assert (= (and b!530593 res!326451) b!530596))

(declare-fun m!511179 () Bool)

(assert (=> b!530593 m!511179))

(declare-fun m!511181 () Bool)

(assert (=> b!530594 m!511181))

(declare-fun m!511183 () Bool)

(assert (=> start!48228 m!511183))

(declare-fun m!511185 () Bool)

(assert (=> start!48228 m!511185))

(declare-fun m!511187 () Bool)

(assert (=> b!530596 m!511187))

(declare-fun m!511189 () Bool)

(assert (=> b!530597 m!511189))

(assert (=> b!530597 m!511189))

(declare-fun m!511191 () Bool)

(assert (=> b!530597 m!511191))

(check-sat (not start!48228) (not b!530596) (not b!530594) (not b!530597) (not b!530593))
