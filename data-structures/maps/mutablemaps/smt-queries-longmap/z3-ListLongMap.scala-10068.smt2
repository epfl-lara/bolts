; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118584 () Bool)

(assert start!118584)

(declare-fun b!1385794 () Bool)

(declare-fun res!927156 () Bool)

(declare-fun e!785179 () Bool)

(assert (=> b!1385794 (=> (not res!927156) (not e!785179))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94778 0))(
  ( (array!94779 (arr!45761 (Array (_ BitVec 32) (_ BitVec 64))) (size!46312 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94778)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1385794 (= res!927156 (and (= (size!46312 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46312 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46312 a!2938))))))

(declare-fun res!927153 () Bool)

(assert (=> start!118584 (=> (not res!927153) (not e!785179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118584 (= res!927153 (validMask!0 mask!2987))))

(assert (=> start!118584 e!785179))

(assert (=> start!118584 true))

(declare-fun array_inv!34706 (array!94778) Bool)

(assert (=> start!118584 (array_inv!34706 a!2938)))

(declare-fun b!1385795 () Bool)

(declare-fun res!927155 () Bool)

(assert (=> b!1385795 (=> (not res!927155) (not e!785179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385795 (= res!927155 (validKeyInArray!0 (select (arr!45761 a!2938) i!1065)))))

(declare-fun b!1385797 () Bool)

(assert (=> b!1385797 (= e!785179 false)))

(declare-fun lt!609277 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94778 (_ BitVec 32)) Bool)

(assert (=> b!1385797 (= lt!609277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385796 () Bool)

(declare-fun res!927154 () Bool)

(assert (=> b!1385796 (=> (not res!927154) (not e!785179))))

(declare-datatypes ((List!32469 0))(
  ( (Nil!32466) (Cons!32465 (h!33674 (_ BitVec 64)) (t!47170 List!32469)) )
))
(declare-fun arrayNoDuplicates!0 (array!94778 (_ BitVec 32) List!32469) Bool)

(assert (=> b!1385796 (= res!927154 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32466))))

(assert (= (and start!118584 res!927153) b!1385794))

(assert (= (and b!1385794 res!927156) b!1385795))

(assert (= (and b!1385795 res!927155) b!1385796))

(assert (= (and b!1385796 res!927154) b!1385797))

(declare-fun m!1271129 () Bool)

(assert (=> start!118584 m!1271129))

(declare-fun m!1271131 () Bool)

(assert (=> start!118584 m!1271131))

(declare-fun m!1271133 () Bool)

(assert (=> b!1385795 m!1271133))

(assert (=> b!1385795 m!1271133))

(declare-fun m!1271135 () Bool)

(assert (=> b!1385795 m!1271135))

(declare-fun m!1271137 () Bool)

(assert (=> b!1385797 m!1271137))

(declare-fun m!1271139 () Bool)

(assert (=> b!1385796 m!1271139))

(check-sat (not b!1385797) (not start!118584) (not b!1385796) (not b!1385795))
