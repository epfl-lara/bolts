; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131498 () Bool)

(assert start!131498)

(declare-fun b!1540824 () Bool)

(declare-fun res!1057508 () Bool)

(declare-fun e!856969 () Bool)

(assert (=> b!1540824 (=> (not res!1057508) (not e!856969))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-datatypes ((array!102328 0))(
  ( (array!102329 (arr!49368 (Array (_ BitVec 32) (_ BitVec 64))) (size!49919 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102328)

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1540824 (= res!1057508 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49919 a!3920))))))

(declare-fun res!1057509 () Bool)

(assert (=> start!131498 (=> (not res!1057509) (not e!856969))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131498 (= res!1057509 (validMask!0 mask!4052))))

(assert (=> start!131498 e!856969))

(assert (=> start!131498 true))

(declare-fun array_inv!38313 (array!102328) Bool)

(assert (=> start!131498 (array_inv!38313 a!3920)))

(declare-fun b!1540822 () Bool)

(declare-fun res!1057506 () Bool)

(assert (=> b!1540822 (=> (not res!1057506) (not e!856969))))

(assert (=> b!1540822 (= res!1057506 (and (= (size!49919 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49919 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49919 a!3920))))))

(declare-fun b!1540825 () Bool)

(assert (=> b!1540825 (= e!856969 false)))

(declare-fun lt!665473 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102328 (_ BitVec 32)) Bool)

(assert (=> b!1540825 (= lt!665473 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540823 () Bool)

(declare-fun res!1057507 () Bool)

(assert (=> b!1540823 (=> (not res!1057507) (not e!856969))))

(assert (=> b!1540823 (= res!1057507 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(assert (= (and start!131498 res!1057509) b!1540822))

(assert (= (and b!1540822 res!1057506) b!1540823))

(assert (= (and b!1540823 res!1057507) b!1540824))

(assert (= (and b!1540824 res!1057508) b!1540825))

(declare-fun m!1422925 () Bool)

(assert (=> start!131498 m!1422925))

(declare-fun m!1422927 () Bool)

(assert (=> start!131498 m!1422927))

(declare-fun m!1422929 () Bool)

(assert (=> b!1540825 m!1422929))

(declare-fun m!1422931 () Bool)

(assert (=> b!1540823 m!1422931))

(push 1)

(assert (not b!1540823))

(assert (not start!131498))

(assert (not b!1540825))

(check-sat)

(pop 1)

(push 1)

(check-sat)

