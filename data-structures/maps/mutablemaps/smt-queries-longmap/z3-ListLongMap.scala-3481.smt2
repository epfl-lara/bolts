; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48246 () Bool)

(assert start!48246)

(declare-fun b!530738 () Bool)

(declare-fun e!309152 () Bool)

(declare-datatypes ((array!33627 0))(
  ( (array!33628 (arr!16156 (Array (_ BitVec 32) (_ BitVec 64))) (size!16520 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!33627)

(assert (=> b!530738 (= e!309152 (bvsgt #b00000000000000000000000000000000 (size!16520 a!3154)))))

(declare-fun b!530739 () Bool)

(declare-fun res!326595 () Bool)

(declare-fun e!309154 () Bool)

(assert (=> b!530739 (=> (not res!326595) (not e!309154))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!530739 (= res!326595 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun res!326599 () Bool)

(assert (=> start!48246 (=> (not res!326599) (not e!309154))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48246 (= res!326599 (validMask!0 mask!3216))))

(assert (=> start!48246 e!309154))

(assert (=> start!48246 true))

(declare-fun array_inv!11930 (array!33627) Bool)

(assert (=> start!48246 (array_inv!11930 a!3154)))

(declare-fun b!530740 () Bool)

(declare-fun res!326597 () Bool)

(assert (=> b!530740 (=> (not res!326597) (not e!309154))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!530740 (= res!326597 (validKeyInArray!0 k0!1998))))

(declare-fun b!530741 () Bool)

(assert (=> b!530741 (= e!309154 e!309152)))

(declare-fun res!326598 () Bool)

(assert (=> b!530741 (=> (not res!326598) (not e!309152))))

(declare-datatypes ((SeekEntryResult!4621 0))(
  ( (MissingZero!4621 (index!20708 (_ BitVec 32))) (Found!4621 (index!20709 (_ BitVec 32))) (Intermediate!4621 (undefined!5433 Bool) (index!20710 (_ BitVec 32)) (x!49718 (_ BitVec 32))) (Undefined!4621) (MissingVacant!4621 (index!20711 (_ BitVec 32))) )
))
(declare-fun lt!244787 () SeekEntryResult!4621)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!530741 (= res!326598 (or (= lt!244787 (MissingZero!4621 i!1153)) (= lt!244787 (MissingVacant!4621 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33627 (_ BitVec 32)) SeekEntryResult!4621)

(assert (=> b!530741 (= lt!244787 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!530742 () Bool)

(declare-fun res!326594 () Bool)

(assert (=> b!530742 (=> (not res!326594) (not e!309154))))

(declare-fun j!147 () (_ BitVec 32))

(assert (=> b!530742 (= res!326594 (and (= (size!16520 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16520 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16520 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!530743 () Bool)

(declare-fun res!326600 () Bool)

(assert (=> b!530743 (=> (not res!326600) (not e!309152))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33627 (_ BitVec 32)) Bool)

(assert (=> b!530743 (= res!326600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!530744 () Bool)

(declare-fun res!326596 () Bool)

(assert (=> b!530744 (=> (not res!326596) (not e!309154))))

(assert (=> b!530744 (= res!326596 (validKeyInArray!0 (select (arr!16156 a!3154) j!147)))))

(assert (= (and start!48246 res!326599) b!530742))

(assert (= (and b!530742 res!326594) b!530744))

(assert (= (and b!530744 res!326596) b!530740))

(assert (= (and b!530740 res!326597) b!530739))

(assert (= (and b!530739 res!326595) b!530741))

(assert (= (and b!530741 res!326598) b!530743))

(assert (= (and b!530743 res!326600) b!530738))

(declare-fun m!511307 () Bool)

(assert (=> b!530740 m!511307))

(declare-fun m!511309 () Bool)

(assert (=> start!48246 m!511309))

(declare-fun m!511311 () Bool)

(assert (=> start!48246 m!511311))

(declare-fun m!511313 () Bool)

(assert (=> b!530743 m!511313))

(declare-fun m!511315 () Bool)

(assert (=> b!530741 m!511315))

(declare-fun m!511317 () Bool)

(assert (=> b!530744 m!511317))

(assert (=> b!530744 m!511317))

(declare-fun m!511319 () Bool)

(assert (=> b!530744 m!511319))

(declare-fun m!511321 () Bool)

(assert (=> b!530739 m!511321))

(check-sat (not b!530743) (not b!530741) (not b!530744) (not start!48246) (not b!530739) (not b!530740))
(check-sat)
