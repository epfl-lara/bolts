; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131490 () Bool)

(assert start!131490)

(declare-fun b!1540776 () Bool)

(declare-fun res!1057460 () Bool)

(declare-fun e!856946 () Bool)

(assert (=> b!1540776 (=> (not res!1057460) (not e!856946))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-datatypes ((array!102320 0))(
  ( (array!102321 (arr!49364 (Array (_ BitVec 32) (_ BitVec 64))) (size!49915 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102320)

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1540776 (= res!1057460 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49915 a!3920))))))

(declare-fun b!1540775 () Bool)

(declare-fun res!1057458 () Bool)

(assert (=> b!1540775 (=> (not res!1057458) (not e!856946))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102320 (_ BitVec 32)) Bool)

(assert (=> b!1540775 (= res!1057458 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun res!1057459 () Bool)

(assert (=> start!131490 (=> (not res!1057459) (not e!856946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131490 (= res!1057459 (validMask!0 mask!4052))))

(assert (=> start!131490 e!856946))

(assert (=> start!131490 true))

(declare-fun array_inv!38309 (array!102320) Bool)

(assert (=> start!131490 (array_inv!38309 a!3920)))

(declare-fun b!1540774 () Bool)

(declare-fun res!1057461 () Bool)

(assert (=> b!1540774 (=> (not res!1057461) (not e!856946))))

(assert (=> b!1540774 (= res!1057461 (and (= (size!49915 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49915 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49915 a!3920))))))

(declare-fun b!1540777 () Bool)

(assert (=> b!1540777 (= e!856946 false)))

(declare-fun lt!665461 () Bool)

(assert (=> b!1540777 (= lt!665461 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(assert (= (and start!131490 res!1057459) b!1540774))

(assert (= (and b!1540774 res!1057461) b!1540775))

(assert (= (and b!1540775 res!1057458) b!1540776))

(assert (= (and b!1540776 res!1057460) b!1540777))

(declare-fun m!1422893 () Bool)

(assert (=> b!1540775 m!1422893))

(declare-fun m!1422895 () Bool)

(assert (=> start!131490 m!1422895))

(declare-fun m!1422897 () Bool)

(assert (=> start!131490 m!1422897))

(declare-fun m!1422899 () Bool)

(assert (=> b!1540777 m!1422899))

(check-sat (not b!1540775) (not start!131490) (not b!1540777))
