; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131562 () Bool)

(assert start!131562)

(declare-fun res!1057817 () Bool)

(declare-fun e!857162 () Bool)

(assert (=> start!131562 (=> (not res!1057817) (not e!857162))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131562 (= res!1057817 (validMask!0 mask!4052))))

(assert (=> start!131562 e!857162))

(assert (=> start!131562 true))

(declare-datatypes ((array!102392 0))(
  ( (array!102393 (arr!49400 (Array (_ BitVec 32) (_ BitVec 64))) (size!49951 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102392)

(declare-fun array_inv!38345 (array!102392) Bool)

(assert (=> start!131562 (array_inv!38345 a!3920)))

(declare-fun b!1541133 () Bool)

(declare-fun res!1057818 () Bool)

(assert (=> b!1541133 (=> (not res!1057818) (not e!857162))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541133 (= res!1057818 (and (= (size!49951 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49951 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49951 a!3920))))))

(declare-fun b!1541134 () Bool)

(assert (=> b!1541134 (= e!857162 false)))

(declare-fun lt!665560 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102392 (_ BitVec 32)) Bool)

(assert (=> b!1541134 (= lt!665560 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131562 res!1057817) b!1541133))

(assert (= (and b!1541133 res!1057818) b!1541134))

(declare-fun m!1423191 () Bool)

(assert (=> start!131562 m!1423191))

(declare-fun m!1423193 () Bool)

(assert (=> start!131562 m!1423193))

(declare-fun m!1423195 () Bool)

(assert (=> b!1541134 m!1423195))

(check-sat (not start!131562) (not b!1541134))
