; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104228 () Bool)

(assert start!104228)

(declare-fun res!830808 () Bool)

(declare-fun e!706033 () Bool)

(assert (=> start!104228 (=> (not res!830808) (not e!706033))))

(declare-datatypes ((array!80122 0))(
  ( (array!80123 (arr!38641 (Array (_ BitVec 32) (_ BitVec 64))) (size!39178 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80122)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104228 (= res!830808 (and (bvslt (size!39178 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39178 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39178 a!3892))))))

(assert (=> start!104228 e!706033))

(declare-fun array_inv!29417 (array!80122) Bool)

(assert (=> start!104228 (array_inv!29417 a!3892)))

(assert (=> start!104228 true))

(declare-fun b!1245200 () Bool)

(declare-fun res!830809 () Bool)

(assert (=> b!1245200 (=> (not res!830809) (not e!706033))))

(declare-datatypes ((List!27622 0))(
  ( (Nil!27619) (Cons!27618 (h!28827 (_ BitVec 64)) (t!41098 List!27622)) )
))
(declare-fun arrayNoDuplicates!0 (array!80122 (_ BitVec 32) List!27622) Bool)

(assert (=> b!1245200 (= res!830809 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27619))))

(declare-fun b!1245201 () Bool)

(assert (=> b!1245201 (= e!706033 (and (not (= from!3270 newFrom!287)) (bvsge from!3270 (size!39178 a!3892))))))

(assert (= (and start!104228 res!830808) b!1245200))

(assert (= (and b!1245200 res!830809) b!1245201))

(declare-fun m!1147315 () Bool)

(assert (=> start!104228 m!1147315))

(declare-fun m!1147317 () Bool)

(assert (=> b!1245200 m!1147317))

(check-sat (not start!104228) (not b!1245200))
(check-sat)
