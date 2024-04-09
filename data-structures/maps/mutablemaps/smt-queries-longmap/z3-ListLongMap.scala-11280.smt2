; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131556 () Bool)

(assert start!131556)

(declare-fun res!1057800 () Bool)

(declare-fun e!857144 () Bool)

(assert (=> start!131556 (=> (not res!1057800) (not e!857144))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131556 (= res!1057800 (validMask!0 mask!4052))))

(assert (=> start!131556 e!857144))

(assert (=> start!131556 true))

(declare-datatypes ((array!102386 0))(
  ( (array!102387 (arr!49397 (Array (_ BitVec 32) (_ BitVec 64))) (size!49948 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102386)

(declare-fun array_inv!38342 (array!102386) Bool)

(assert (=> start!131556 (array_inv!38342 a!3920)))

(declare-fun b!1541115 () Bool)

(declare-fun res!1057799 () Bool)

(assert (=> b!1541115 (=> (not res!1057799) (not e!857144))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541115 (= res!1057799 (and (= (size!49948 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49948 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49948 a!3920))))))

(declare-fun b!1541116 () Bool)

(assert (=> b!1541116 (= e!857144 false)))

(declare-fun lt!665551 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102386 (_ BitVec 32)) Bool)

(assert (=> b!1541116 (= lt!665551 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131556 res!1057800) b!1541115))

(assert (= (and b!1541115 res!1057799) b!1541116))

(declare-fun m!1423173 () Bool)

(assert (=> start!131556 m!1423173))

(declare-fun m!1423175 () Bool)

(assert (=> start!131556 m!1423175))

(declare-fun m!1423177 () Bool)

(assert (=> b!1541116 m!1423177))

(check-sat (not start!131556) (not b!1541116))
