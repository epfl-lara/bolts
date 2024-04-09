; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131526 () Bool)

(assert start!131526)

(declare-fun res!1057700 () Bool)

(declare-fun e!857053 () Bool)

(assert (=> start!131526 (=> (not res!1057700) (not e!857053))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131526 (= res!1057700 (validMask!0 mask!4052))))

(assert (=> start!131526 e!857053))

(assert (=> start!131526 true))

(declare-datatypes ((array!102356 0))(
  ( (array!102357 (arr!49382 (Array (_ BitVec 32) (_ BitVec 64))) (size!49933 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102356)

(declare-fun array_inv!38327 (array!102356) Bool)

(assert (=> start!131526 (array_inv!38327 a!3920)))

(declare-fun b!1541016 () Bool)

(declare-fun res!1057701 () Bool)

(assert (=> b!1541016 (=> (not res!1057701) (not e!857053))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541016 (= res!1057701 (and (= (size!49933 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49933 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49933 a!3920))))))

(declare-fun b!1541017 () Bool)

(assert (=> b!1541017 (= e!857053 false)))

(declare-fun lt!665515 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102356 (_ BitVec 32)) Bool)

(assert (=> b!1541017 (= lt!665515 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131526 res!1057700) b!1541016))

(assert (= (and b!1541016 res!1057701) b!1541017))

(declare-fun m!1423083 () Bool)

(assert (=> start!131526 m!1423083))

(declare-fun m!1423085 () Bool)

(assert (=> start!131526 m!1423085))

(declare-fun m!1423087 () Bool)

(assert (=> b!1541017 m!1423087))

(check-sat (not start!131526) (not b!1541017))
