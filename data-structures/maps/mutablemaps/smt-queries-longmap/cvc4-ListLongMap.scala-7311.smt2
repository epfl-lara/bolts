; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93508 () Bool)

(assert start!93508)

(declare-fun res!707329 () Bool)

(declare-fun e!602357 () Bool)

(assert (=> start!93508 (=> (not res!707329) (not e!602357))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66759 0))(
  ( (array!66760 (arr!32094 (Array (_ BitVec 32) (_ BitVec 64))) (size!32631 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66759)

(assert (=> start!93508 (= res!707329 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32631 a!3488)) (bvslt (size!32631 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93508 e!602357))

(assert (=> start!93508 true))

(declare-fun array_inv!24716 (array!66759) Bool)

(assert (=> start!93508 (array_inv!24716 a!3488)))

(declare-fun b!1058646 () Bool)

(assert (=> b!1058646 (= e!602357 false)))

(declare-fun lt!467008 () Bool)

(declare-datatypes ((List!22537 0))(
  ( (Nil!22534) (Cons!22533 (h!23742 (_ BitVec 64)) (t!31851 List!22537)) )
))
(declare-fun arrayNoDuplicates!0 (array!66759 (_ BitVec 32) List!22537) Bool)

(assert (=> b!1058646 (= lt!467008 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22534))))

(assert (= (and start!93508 res!707329) b!1058646))

(declare-fun m!978443 () Bool)

(assert (=> start!93508 m!978443))

(declare-fun m!978445 () Bool)

(assert (=> b!1058646 m!978445))

(push 1)

(assert (not b!1058646))

(assert (not start!93508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

