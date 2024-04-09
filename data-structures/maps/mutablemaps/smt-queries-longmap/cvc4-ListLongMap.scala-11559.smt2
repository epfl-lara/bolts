; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134668 () Bool)

(assert start!134668)

(declare-fun b!1571183 () Bool)

(declare-fun res!1073561 () Bool)

(declare-fun e!876081 () Bool)

(assert (=> b!1571183 (=> (not res!1073561) (not e!876081))))

(declare-datatypes ((array!104813 0))(
  ( (array!104814 (arr!50580 (Array (_ BitVec 32) (_ BitVec 64))) (size!51131 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104813)

(declare-fun mask!4043 () (_ BitVec 32))

(assert (=> b!1571183 (= res!1073561 (= (size!51131 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571184 () Bool)

(declare-fun res!1073558 () Bool)

(assert (=> b!1571184 (=> (not res!1073558) (not e!876081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104813 (_ BitVec 32)) Bool)

(assert (=> b!1571184 (= res!1073558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(declare-fun res!1073559 () Bool)

(assert (=> start!134668 (=> (not res!1073559) (not e!876081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134668 (= res!1073559 (validMask!0 mask!4043))))

(assert (=> start!134668 e!876081))

(assert (=> start!134668 true))

(declare-fun array_inv!39225 (array!104813) Bool)

(assert (=> start!134668 (array_inv!39225 a!3462)))

(declare-fun b!1571185 () Bool)

(declare-fun res!1073560 () Bool)

(assert (=> b!1571185 (=> (not res!1073560) (not e!876081))))

(declare-fun k!2731 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571185 (= res!1073560 (validKeyInArray!0 k!2731))))

(declare-fun b!1571186 () Bool)

(assert (=> b!1571186 (= e!876081 false)))

(declare-datatypes ((SeekEntryResult!13533 0))(
  ( (MissingZero!13533 (index!56529 (_ BitVec 32))) (Found!13533 (index!56530 (_ BitVec 32))) (Intermediate!13533 (undefined!14345 Bool) (index!56531 (_ BitVec 32)) (x!141232 (_ BitVec 32))) (Undefined!13533) (MissingVacant!13533 (index!56532 (_ BitVec 32))) )
))
(declare-fun lt!673465 () SeekEntryResult!13533)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104813 (_ BitVec 32)) SeekEntryResult!13533)

(assert (=> b!1571186 (= lt!673465 (seekEntryOrOpen!0 k!2731 a!3462 mask!4043))))

(assert (= (and start!134668 res!1073559) b!1571183))

(assert (= (and b!1571183 res!1073561) b!1571184))

(assert (= (and b!1571184 res!1073558) b!1571185))

(assert (= (and b!1571185 res!1073560) b!1571186))

(declare-fun m!1445211 () Bool)

(assert (=> b!1571184 m!1445211))

(declare-fun m!1445213 () Bool)

(assert (=> start!134668 m!1445213))

(declare-fun m!1445215 () Bool)

(assert (=> start!134668 m!1445215))

(declare-fun m!1445217 () Bool)

(assert (=> b!1571185 m!1445217))

(declare-fun m!1445219 () Bool)

(assert (=> b!1571186 m!1445219))

(push 1)

(assert (not b!1571184))

(assert (not b!1571186))

(assert (not b!1571185))

(assert (not start!134668))

(check-sat)

(pop 1)

