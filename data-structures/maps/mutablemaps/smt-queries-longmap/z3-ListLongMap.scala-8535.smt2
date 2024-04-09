; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104162 () Bool)

(assert start!104162)

(declare-fun res!830595 () Bool)

(declare-fun e!705820 () Bool)

(assert (=> start!104162 (=> (not res!830595) (not e!705820))))

(declare-datatypes ((array!80092 0))(
  ( (array!80093 (arr!38629 (Array (_ BitVec 32) (_ BitVec 64))) (size!39166 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80092)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104162 (= res!830595 (and (bvslt (size!39166 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39166 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39166 a!3892))))))

(assert (=> start!104162 e!705820))

(declare-fun array_inv!29405 (array!80092) Bool)

(assert (=> start!104162 (array_inv!29405 a!3892)))

(assert (=> start!104162 true))

(declare-fun b!1244951 () Bool)

(declare-fun res!830596 () Bool)

(assert (=> b!1244951 (=> (not res!830596) (not e!705820))))

(declare-datatypes ((List!27610 0))(
  ( (Nil!27607) (Cons!27606 (h!28815 (_ BitVec 64)) (t!41086 List!27610)) )
))
(declare-fun arrayNoDuplicates!0 (array!80092 (_ BitVec 32) List!27610) Bool)

(assert (=> b!1244951 (= res!830596 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27607))))

(declare-fun b!1244952 () Bool)

(assert (=> b!1244952 (= e!705820 (and (= from!3270 newFrom!287) (bvslt newFrom!287 #b00000000000000000000000000000000)))))

(assert (= (and start!104162 res!830595) b!1244951))

(assert (= (and b!1244951 res!830596) b!1244952))

(declare-fun m!1147141 () Bool)

(assert (=> start!104162 m!1147141))

(declare-fun m!1147143 () Bool)

(assert (=> b!1244951 m!1147143))

(check-sat (not start!104162) (not b!1244951))
