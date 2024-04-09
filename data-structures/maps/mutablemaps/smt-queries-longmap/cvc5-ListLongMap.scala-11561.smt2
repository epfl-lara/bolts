; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134676 () Bool)

(assert start!134676)

(declare-fun b!1571231 () Bool)

(declare-fun res!1073609 () Bool)

(declare-fun e!876105 () Bool)

(assert (=> b!1571231 (=> (not res!1073609) (not e!876105))))

(declare-datatypes ((array!104821 0))(
  ( (array!104822 (arr!50584 (Array (_ BitVec 32) (_ BitVec 64))) (size!51135 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104821)

(declare-fun mask!4043 () (_ BitVec 32))

(assert (=> b!1571231 (= res!1073609 (= (size!51135 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun res!1073608 () Bool)

(assert (=> start!134676 (=> (not res!1073608) (not e!876105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134676 (= res!1073608 (validMask!0 mask!4043))))

(assert (=> start!134676 e!876105))

(assert (=> start!134676 true))

(declare-fun array_inv!39229 (array!104821) Bool)

(assert (=> start!134676 (array_inv!39229 a!3462)))

(declare-fun b!1571233 () Bool)

(declare-fun res!1073607 () Bool)

(assert (=> b!1571233 (=> (not res!1073607) (not e!876105))))

(declare-fun k!2731 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571233 (= res!1073607 (validKeyInArray!0 k!2731))))

(declare-fun b!1571232 () Bool)

(declare-fun res!1073606 () Bool)

(assert (=> b!1571232 (=> (not res!1073606) (not e!876105))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104821 (_ BitVec 32)) Bool)

(assert (=> b!1571232 (= res!1073606 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(declare-fun b!1571234 () Bool)

(assert (=> b!1571234 (= e!876105 false)))

(declare-datatypes ((SeekEntryResult!13537 0))(
  ( (MissingZero!13537 (index!56545 (_ BitVec 32))) (Found!13537 (index!56546 (_ BitVec 32))) (Intermediate!13537 (undefined!14349 Bool) (index!56547 (_ BitVec 32)) (x!141252 (_ BitVec 32))) (Undefined!13537) (MissingVacant!13537 (index!56548 (_ BitVec 32))) )
))
(declare-fun lt!673477 () SeekEntryResult!13537)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104821 (_ BitVec 32)) SeekEntryResult!13537)

(assert (=> b!1571234 (= lt!673477 (seekEntryOrOpen!0 k!2731 a!3462 mask!4043))))

(assert (= (and start!134676 res!1073608) b!1571231))

(assert (= (and b!1571231 res!1073609) b!1571232))

(assert (= (and b!1571232 res!1073606) b!1571233))

(assert (= (and b!1571233 res!1073607) b!1571234))

(declare-fun m!1445251 () Bool)

(assert (=> start!134676 m!1445251))

(declare-fun m!1445253 () Bool)

(assert (=> start!134676 m!1445253))

(declare-fun m!1445255 () Bool)

(assert (=> b!1571233 m!1445255))

(declare-fun m!1445257 () Bool)

(assert (=> b!1571232 m!1445257))

(declare-fun m!1445259 () Bool)

(assert (=> b!1571234 m!1445259))

(push 1)

(assert (not b!1571233))

(assert (not start!134676))

(assert (not b!1571234))

(assert (not b!1571232))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

