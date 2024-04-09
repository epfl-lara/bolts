; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131510 () Bool)

(assert start!131510)

(declare-fun b!1540911 () Bool)

(declare-fun res!1057595 () Bool)

(declare-fun e!857006 () Bool)

(assert (=> b!1540911 (=> (not res!1057595) (not e!857006))))

(declare-datatypes ((array!102340 0))(
  ( (array!102341 (arr!49374 (Array (_ BitVec 32) (_ BitVec 64))) (size!49925 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102340)

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1540911 (= res!1057595 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49925 a!3920))))))

(declare-fun b!1540912 () Bool)

(declare-fun res!1057596 () Bool)

(assert (=> b!1540912 (=> (not res!1057596) (not e!857006))))

(declare-fun mask!4052 () (_ BitVec 32))

(assert (=> b!1540912 (= res!1057596 (and (= (size!49925 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49925 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49925 a!3920))))))

(declare-fun b!1540913 () Bool)

(declare-fun res!1057599 () Bool)

(assert (=> b!1540913 (=> (not res!1057599) (not e!857006))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102340 (_ BitVec 32)) Bool)

(assert (=> b!1540913 (= res!1057599 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540914 () Bool)

(declare-fun res!1057598 () Bool)

(assert (=> b!1540914 (=> (not res!1057598) (not e!857006))))

(assert (=> b!1540914 (= res!1057598 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1540915 () Bool)

(assert (=> b!1540915 (= e!857006 (not true))))

(assert (=> b!1540915 (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))

(declare-datatypes ((Unit!51408 0))(
  ( (Unit!51409) )
))
(declare-fun lt!665491 () Unit!51408)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!102340 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51408)

(assert (=> b!1540915 (= lt!665491 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3920 mask!4052 (bvadd #b00000000000000000000000000000001 from!3298) newFrom!293))))

(declare-fun res!1057597 () Bool)

(assert (=> start!131510 (=> (not res!1057597) (not e!857006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131510 (= res!1057597 (validMask!0 mask!4052))))

(assert (=> start!131510 e!857006))

(assert (=> start!131510 true))

(declare-fun array_inv!38319 (array!102340) Bool)

(assert (=> start!131510 (array_inv!38319 a!3920)))

(assert (= (and start!131510 res!1057597) b!1540912))

(assert (= (and b!1540912 res!1057596) b!1540914))

(assert (= (and b!1540914 res!1057598) b!1540911))

(assert (= (and b!1540911 res!1057595) b!1540913))

(assert (= (and b!1540913 res!1057599) b!1540915))

(declare-fun m!1422993 () Bool)

(assert (=> b!1540913 m!1422993))

(declare-fun m!1422995 () Bool)

(assert (=> b!1540914 m!1422995))

(declare-fun m!1422997 () Bool)

(assert (=> b!1540915 m!1422997))

(declare-fun m!1422999 () Bool)

(assert (=> b!1540915 m!1422999))

(declare-fun m!1423001 () Bool)

(assert (=> start!131510 m!1423001))

(declare-fun m!1423003 () Bool)

(assert (=> start!131510 m!1423003))

(push 1)

(assert (not start!131510))

(assert (not b!1540914))

(assert (not b!1540915))

(assert (not b!1540913))

(check-sat)

