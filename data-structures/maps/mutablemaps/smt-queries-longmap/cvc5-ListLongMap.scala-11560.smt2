; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134670 () Bool)

(assert start!134670)

(declare-fun b!1571196 () Bool)

(declare-fun res!1073572 () Bool)

(declare-fun e!876086 () Bool)

(assert (=> b!1571196 (=> (not res!1073572) (not e!876086))))

(declare-datatypes ((array!104815 0))(
  ( (array!104816 (arr!50581 (Array (_ BitVec 32) (_ BitVec 64))) (size!51132 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104815)

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104815 (_ BitVec 32)) Bool)

(assert (=> b!1571196 (= res!1073572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(declare-fun b!1571195 () Bool)

(declare-fun res!1073570 () Bool)

(assert (=> b!1571195 (=> (not res!1073570) (not e!876086))))

(assert (=> b!1571195 (= res!1073570 (= (size!51132 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571198 () Bool)

(assert (=> b!1571198 (= e!876086 false)))

(declare-fun k!2731 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!13534 0))(
  ( (MissingZero!13534 (index!56533 (_ BitVec 32))) (Found!13534 (index!56534 (_ BitVec 32))) (Intermediate!13534 (undefined!14346 Bool) (index!56535 (_ BitVec 32)) (x!141241 (_ BitVec 32))) (Undefined!13534) (MissingVacant!13534 (index!56536 (_ BitVec 32))) )
))
(declare-fun lt!673468 () SeekEntryResult!13534)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104815 (_ BitVec 32)) SeekEntryResult!13534)

(assert (=> b!1571198 (= lt!673468 (seekEntryOrOpen!0 k!2731 a!3462 mask!4043))))

(declare-fun b!1571197 () Bool)

(declare-fun res!1073571 () Bool)

(assert (=> b!1571197 (=> (not res!1073571) (not e!876086))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571197 (= res!1073571 (validKeyInArray!0 k!2731))))

(declare-fun res!1073573 () Bool)

(assert (=> start!134670 (=> (not res!1073573) (not e!876086))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134670 (= res!1073573 (validMask!0 mask!4043))))

(assert (=> start!134670 e!876086))

(assert (=> start!134670 true))

(declare-fun array_inv!39226 (array!104815) Bool)

(assert (=> start!134670 (array_inv!39226 a!3462)))

(assert (= (and start!134670 res!1073573) b!1571195))

(assert (= (and b!1571195 res!1073570) b!1571196))

(assert (= (and b!1571196 res!1073572) b!1571197))

(assert (= (and b!1571197 res!1073571) b!1571198))

(declare-fun m!1445221 () Bool)

(assert (=> b!1571196 m!1445221))

(declare-fun m!1445223 () Bool)

(assert (=> b!1571198 m!1445223))

(declare-fun m!1445225 () Bool)

(assert (=> b!1571197 m!1445225))

(declare-fun m!1445227 () Bool)

(assert (=> start!134670 m!1445227))

(declare-fun m!1445229 () Bool)

(assert (=> start!134670 m!1445229))

(push 1)

(assert (not b!1571197))

(assert (not start!134670))

(assert (not b!1571196))

(assert (not b!1571198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

