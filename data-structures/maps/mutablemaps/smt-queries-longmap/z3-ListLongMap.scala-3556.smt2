; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48924 () Bool)

(assert start!48924)

(declare-fun b!538862 () Bool)

(declare-fun e!312434 () Bool)

(assert (=> b!538862 (= e!312434 false)))

(declare-fun lt!247019 () Bool)

(declare-datatypes ((array!34092 0))(
  ( (array!34093 (arr!16381 (Array (_ BitVec 32) (_ BitVec 64))) (size!16745 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34092)

(declare-datatypes ((List!10553 0))(
  ( (Nil!10550) (Cons!10549 (h!11492 (_ BitVec 64)) (t!16789 List!10553)) )
))
(declare-fun arrayNoDuplicates!0 (array!34092 (_ BitVec 32) List!10553) Bool)

(assert (=> b!538862 (= lt!247019 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10550))))

(declare-fun b!538863 () Bool)

(declare-fun res!334221 () Bool)

(assert (=> b!538863 (=> (not res!334221) (not e!312434))))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34092 (_ BitVec 32)) Bool)

(assert (=> b!538863 (= res!334221 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!538864 () Bool)

(declare-fun e!312435 () Bool)

(assert (=> b!538864 (= e!312435 e!312434)))

(declare-fun res!334218 () Bool)

(assert (=> b!538864 (=> (not res!334218) (not e!312434))))

(declare-datatypes ((SeekEntryResult!4846 0))(
  ( (MissingZero!4846 (index!21608 (_ BitVec 32))) (Found!4846 (index!21609 (_ BitVec 32))) (Intermediate!4846 (undefined!5658 Bool) (index!21610 (_ BitVec 32)) (x!50552 (_ BitVec 32))) (Undefined!4846) (MissingVacant!4846 (index!21611 (_ BitVec 32))) )
))
(declare-fun lt!247018 () SeekEntryResult!4846)

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!538864 (= res!334218 (or (= lt!247018 (MissingZero!4846 i!1153)) (= lt!247018 (MissingVacant!4846 i!1153))))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34092 (_ BitVec 32)) SeekEntryResult!4846)

(assert (=> b!538864 (= lt!247018 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!538866 () Bool)

(declare-fun res!334219 () Bool)

(assert (=> b!538866 (=> (not res!334219) (not e!312435))))

(declare-fun j!147 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!538866 (= res!334219 (validKeyInArray!0 (select (arr!16381 a!3154) j!147)))))

(declare-fun b!538865 () Bool)

(declare-fun res!334223 () Bool)

(assert (=> b!538865 (=> (not res!334223) (not e!312435))))

(assert (=> b!538865 (= res!334223 (validKeyInArray!0 k0!1998))))

(declare-fun res!334217 () Bool)

(assert (=> start!48924 (=> (not res!334217) (not e!312435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48924 (= res!334217 (validMask!0 mask!3216))))

(assert (=> start!48924 e!312435))

(assert (=> start!48924 true))

(declare-fun array_inv!12155 (array!34092) Bool)

(assert (=> start!48924 (array_inv!12155 a!3154)))

(declare-fun b!538867 () Bool)

(declare-fun res!334222 () Bool)

(assert (=> b!538867 (=> (not res!334222) (not e!312435))))

(assert (=> b!538867 (= res!334222 (and (= (size!16745 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16745 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16745 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!538868 () Bool)

(declare-fun res!334220 () Bool)

(assert (=> b!538868 (=> (not res!334220) (not e!312435))))

(declare-fun arrayContainsKey!0 (array!34092 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!538868 (= res!334220 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(assert (= (and start!48924 res!334217) b!538867))

(assert (= (and b!538867 res!334222) b!538866))

(assert (= (and b!538866 res!334219) b!538865))

(assert (= (and b!538865 res!334223) b!538868))

(assert (= (and b!538868 res!334220) b!538864))

(assert (= (and b!538864 res!334218) b!538863))

(assert (= (and b!538863 res!334221) b!538862))

(declare-fun m!517999 () Bool)

(assert (=> b!538864 m!517999))

(declare-fun m!518001 () Bool)

(assert (=> b!538863 m!518001))

(declare-fun m!518003 () Bool)

(assert (=> start!48924 m!518003))

(declare-fun m!518005 () Bool)

(assert (=> start!48924 m!518005))

(declare-fun m!518007 () Bool)

(assert (=> b!538868 m!518007))

(declare-fun m!518009 () Bool)

(assert (=> b!538866 m!518009))

(assert (=> b!538866 m!518009))

(declare-fun m!518011 () Bool)

(assert (=> b!538866 m!518011))

(declare-fun m!518013 () Bool)

(assert (=> b!538862 m!518013))

(declare-fun m!518015 () Bool)

(assert (=> b!538865 m!518015))

(check-sat (not b!538865) (not b!538866) (not b!538862) (not b!538864) (not start!48924) (not b!538868) (not b!538863))
(check-sat)
