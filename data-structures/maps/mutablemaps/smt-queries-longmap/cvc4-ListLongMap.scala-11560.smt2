; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134674 () Bool)

(assert start!134674)

(declare-fun b!1571219 () Bool)

(declare-fun res!1073596 () Bool)

(declare-fun e!876098 () Bool)

(assert (=> b!1571219 (=> (not res!1073596) (not e!876098))))

(declare-datatypes ((array!104819 0))(
  ( (array!104820 (arr!50583 (Array (_ BitVec 32) (_ BitVec 64))) (size!51134 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104819)

(declare-fun mask!4043 () (_ BitVec 32))

(assert (=> b!1571219 (= res!1073596 (= (size!51134 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571221 () Bool)

(declare-fun res!1073595 () Bool)

(assert (=> b!1571221 (=> (not res!1073595) (not e!876098))))

(declare-fun k!2731 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571221 (= res!1073595 (validKeyInArray!0 k!2731))))

(declare-fun b!1571220 () Bool)

(declare-fun res!1073597 () Bool)

(assert (=> b!1571220 (=> (not res!1073597) (not e!876098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104819 (_ BitVec 32)) Bool)

(assert (=> b!1571220 (= res!1073597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(declare-fun res!1073594 () Bool)

(assert (=> start!134674 (=> (not res!1073594) (not e!876098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134674 (= res!1073594 (validMask!0 mask!4043))))

(assert (=> start!134674 e!876098))

(assert (=> start!134674 true))

(declare-fun array_inv!39228 (array!104819) Bool)

(assert (=> start!134674 (array_inv!39228 a!3462)))

(declare-fun b!1571222 () Bool)

(assert (=> b!1571222 (= e!876098 false)))

(declare-datatypes ((SeekEntryResult!13536 0))(
  ( (MissingZero!13536 (index!56541 (_ BitVec 32))) (Found!13536 (index!56542 (_ BitVec 32))) (Intermediate!13536 (undefined!14348 Bool) (index!56543 (_ BitVec 32)) (x!141243 (_ BitVec 32))) (Undefined!13536) (MissingVacant!13536 (index!56544 (_ BitVec 32))) )
))
(declare-fun lt!673474 () SeekEntryResult!13536)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104819 (_ BitVec 32)) SeekEntryResult!13536)

(assert (=> b!1571222 (= lt!673474 (seekEntryOrOpen!0 k!2731 a!3462 mask!4043))))

(assert (= (and start!134674 res!1073594) b!1571219))

(assert (= (and b!1571219 res!1073596) b!1571220))

(assert (= (and b!1571220 res!1073597) b!1571221))

(assert (= (and b!1571221 res!1073595) b!1571222))

(declare-fun m!1445241 () Bool)

(assert (=> b!1571221 m!1445241))

(declare-fun m!1445243 () Bool)

(assert (=> b!1571220 m!1445243))

(declare-fun m!1445245 () Bool)

(assert (=> start!134674 m!1445245))

(declare-fun m!1445247 () Bool)

(assert (=> start!134674 m!1445247))

(declare-fun m!1445249 () Bool)

(assert (=> b!1571222 m!1445249))

(push 1)

(assert (not b!1571220))

(assert (not b!1571222))

(assert (not b!1571221))

(assert (not start!134674))

(check-sat)

