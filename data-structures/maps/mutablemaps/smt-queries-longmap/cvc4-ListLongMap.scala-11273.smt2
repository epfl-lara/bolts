; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131516 () Bool)

(assert start!131516)

(declare-fun b!1540956 () Bool)

(declare-fun res!1057641 () Bool)

(declare-fun e!857023 () Bool)

(assert (=> b!1540956 (=> (not res!1057641) (not e!857023))))

(declare-datatypes ((array!102346 0))(
  ( (array!102347 (arr!49377 (Array (_ BitVec 32) (_ BitVec 64))) (size!49928 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102346)

(declare-fun from!3298 () (_ BitVec 32))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102346 (_ BitVec 32)) Bool)

(assert (=> b!1540956 (= res!1057641 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun b!1540958 () Bool)

(declare-fun res!1057640 () Bool)

(assert (=> b!1540958 (=> (not res!1057640) (not e!857023))))

(declare-fun newFrom!293 () (_ BitVec 32))

(assert (=> b!1540958 (= res!1057640 (and (= (size!49928 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49928 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49928 a!3920))))))

(declare-fun b!1540959 () Bool)

(assert (=> b!1540959 (= e!857023 (not (bvsge newFrom!293 #b00000000000000000000000000000000)))))

(assert (=> b!1540959 (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))

(declare-datatypes ((Unit!51414 0))(
  ( (Unit!51415) )
))
(declare-fun lt!665500 () Unit!51414)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!102346 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51414)

(assert (=> b!1540959 (= lt!665500 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3920 mask!4052 (bvadd #b00000000000000000000000000000001 from!3298) newFrom!293))))

(declare-fun b!1540960 () Bool)

(declare-fun res!1057644 () Bool)

(assert (=> b!1540960 (=> (not res!1057644) (not e!857023))))

(assert (=> b!1540960 (= res!1057644 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49928 a!3920))))))

(declare-fun res!1057642 () Bool)

(assert (=> start!131516 (=> (not res!1057642) (not e!857023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131516 (= res!1057642 (validMask!0 mask!4052))))

(assert (=> start!131516 e!857023))

(assert (=> start!131516 true))

(declare-fun array_inv!38322 (array!102346) Bool)

(assert (=> start!131516 (array_inv!38322 a!3920)))

(declare-fun b!1540957 () Bool)

(declare-fun res!1057643 () Bool)

(assert (=> b!1540957 (=> (not res!1057643) (not e!857023))))

(assert (=> b!1540957 (= res!1057643 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(assert (= (and start!131516 res!1057642) b!1540958))

(assert (= (and b!1540958 res!1057640) b!1540956))

(assert (= (and b!1540956 res!1057641) b!1540960))

(assert (= (and b!1540960 res!1057644) b!1540957))

(assert (= (and b!1540957 res!1057643) b!1540959))

(declare-fun m!1423029 () Bool)

(assert (=> b!1540956 m!1423029))

(declare-fun m!1423031 () Bool)

(assert (=> b!1540959 m!1423031))

(declare-fun m!1423033 () Bool)

(assert (=> b!1540959 m!1423033))

(declare-fun m!1423035 () Bool)

(assert (=> start!131516 m!1423035))

(declare-fun m!1423037 () Bool)

(assert (=> start!131516 m!1423037))

(declare-fun m!1423039 () Bool)

(assert (=> b!1540957 m!1423039))

(push 1)

(assert (not b!1540959))

(assert (not start!131516))

(assert (not b!1540957))

(assert (not b!1540956))

(check-sat)

(pop 1)

(push 1)

(check-sat)

