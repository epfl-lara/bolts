; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131568 () Bool)

(assert start!131568)

(declare-fun res!1057840 () Bool)

(declare-fun e!857179 () Bool)

(assert (=> start!131568 (=> (not res!1057840) (not e!857179))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131568 (= res!1057840 (validMask!0 mask!4052))))

(assert (=> start!131568 e!857179))

(assert (=> start!131568 true))

(declare-datatypes ((array!102398 0))(
  ( (array!102399 (arr!49403 (Array (_ BitVec 32) (_ BitVec 64))) (size!49954 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102398)

(declare-fun array_inv!38348 (array!102398) Bool)

(assert (=> start!131568 (array_inv!38348 a!3920)))

(declare-fun b!1541156 () Bool)

(declare-fun res!1057842 () Bool)

(assert (=> b!1541156 (=> (not res!1057842) (not e!857179))))

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1541156 (= res!1057842 (and (= (size!49954 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49954 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49954 a!3920))))))

(declare-fun b!1541157 () Bool)

(declare-fun res!1057841 () Bool)

(assert (=> b!1541157 (=> (not res!1057841) (not e!857179))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102398 (_ BitVec 32)) Bool)

(assert (=> b!1541157 (= res!1057841 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1541158 () Bool)

(assert (=> b!1541158 (= e!857179 (and (bvslt from!3298 newFrom!293) (or (bvslt (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!3298) (size!49954 a!3920)))))))

(assert (= (and start!131568 res!1057840) b!1541156))

(assert (= (and b!1541156 res!1057842) b!1541157))

(assert (= (and b!1541157 res!1057841) b!1541158))

(declare-fun m!1423209 () Bool)

(assert (=> start!131568 m!1423209))

(declare-fun m!1423211 () Bool)

(assert (=> start!131568 m!1423211))

(declare-fun m!1423213 () Bool)

(assert (=> b!1541157 m!1423213))

(check-sat (not b!1541157) (not start!131568))
(check-sat)
