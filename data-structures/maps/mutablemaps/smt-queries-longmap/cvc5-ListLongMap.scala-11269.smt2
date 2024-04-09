; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131488 () Bool)

(assert start!131488)

(declare-fun b!1540764 () Bool)

(declare-fun res!1057447 () Bool)

(declare-fun e!856940 () Bool)

(assert (=> b!1540764 (=> (not res!1057447) (not e!856940))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-datatypes ((array!102318 0))(
  ( (array!102319 (arr!49363 (Array (_ BitVec 32) (_ BitVec 64))) (size!49914 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102318)

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1540764 (= res!1057447 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49914 a!3920))))))

(declare-fun b!1540763 () Bool)

(declare-fun res!1057449 () Bool)

(assert (=> b!1540763 (=> (not res!1057449) (not e!856940))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102318 (_ BitVec 32)) Bool)

(assert (=> b!1540763 (= res!1057449 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1540762 () Bool)

(declare-fun res!1057446 () Bool)

(assert (=> b!1540762 (=> (not res!1057446) (not e!856940))))

(assert (=> b!1540762 (= res!1057446 (and (= (size!49914 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49914 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49914 a!3920))))))

(declare-fun res!1057448 () Bool)

(assert (=> start!131488 (=> (not res!1057448) (not e!856940))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131488 (= res!1057448 (validMask!0 mask!4052))))

(assert (=> start!131488 e!856940))

(assert (=> start!131488 true))

(declare-fun array_inv!38308 (array!102318) Bool)

(assert (=> start!131488 (array_inv!38308 a!3920)))

(declare-fun b!1540765 () Bool)

(assert (=> b!1540765 (= e!856940 false)))

(declare-fun lt!665458 () Bool)

(assert (=> b!1540765 (= lt!665458 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(assert (= (and start!131488 res!1057448) b!1540762))

(assert (= (and b!1540762 res!1057446) b!1540763))

(assert (= (and b!1540763 res!1057449) b!1540764))

(assert (= (and b!1540764 res!1057447) b!1540765))

(declare-fun m!1422885 () Bool)

(assert (=> b!1540763 m!1422885))

(declare-fun m!1422887 () Bool)

(assert (=> start!131488 m!1422887))

(declare-fun m!1422889 () Bool)

(assert (=> start!131488 m!1422889))

(declare-fun m!1422891 () Bool)

(assert (=> b!1540765 m!1422891))

(push 1)

(assert (not b!1540763))

(assert (not start!131488))

(assert (not b!1540765))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

