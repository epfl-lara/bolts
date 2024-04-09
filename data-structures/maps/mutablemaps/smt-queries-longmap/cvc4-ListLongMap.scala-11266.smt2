; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131474 () Bool)

(assert start!131474)

(declare-fun res!1057363 () Bool)

(declare-fun e!856898 () Bool)

(assert (=> start!131474 (=> (not res!1057363) (not e!856898))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131474 (= res!1057363 (validMask!0 mask!4052))))

(assert (=> start!131474 e!856898))

(assert (=> start!131474 true))

(declare-datatypes ((array!102304 0))(
  ( (array!102305 (arr!49356 (Array (_ BitVec 32) (_ BitVec 64))) (size!49907 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102304)

(declare-fun array_inv!38301 (array!102304) Bool)

(assert (=> start!131474 (array_inv!38301 a!3920)))

(declare-fun b!1540679 () Bool)

(declare-fun res!1057364 () Bool)

(assert (=> b!1540679 (=> (not res!1057364) (not e!856898))))

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102304 (_ BitVec 32)) Bool)

(assert (=> b!1540679 (= res!1057364 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1540681 () Bool)

(assert (=> b!1540681 (= e!856898 false)))

(declare-fun lt!665437 () Bool)

(assert (=> b!1540681 (= lt!665437 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1540680 () Bool)

(declare-fun res!1057365 () Bool)

(assert (=> b!1540680 (=> (not res!1057365) (not e!856898))))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1540680 (= res!1057365 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49907 a!3920))))))

(declare-fun b!1540678 () Bool)

(declare-fun res!1057362 () Bool)

(assert (=> b!1540678 (=> (not res!1057362) (not e!856898))))

(assert (=> b!1540678 (= res!1057362 (and (= (size!49907 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49907 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49907 a!3920))))))

(assert (= (and start!131474 res!1057363) b!1540678))

(assert (= (and b!1540678 res!1057362) b!1540679))

(assert (= (and b!1540679 res!1057364) b!1540680))

(assert (= (and b!1540680 res!1057365) b!1540681))

(declare-fun m!1422829 () Bool)

(assert (=> start!131474 m!1422829))

(declare-fun m!1422831 () Bool)

(assert (=> start!131474 m!1422831))

(declare-fun m!1422833 () Bool)

(assert (=> b!1540679 m!1422833))

(declare-fun m!1422835 () Bool)

(assert (=> b!1540681 m!1422835))

(push 1)

(assert (not b!1540679))

(assert (not start!131474))

(assert (not b!1540681))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

