; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134680 () Bool)

(assert start!134680)

(declare-fun b!1571258 () Bool)

(declare-fun e!876117 () Bool)

(assert (=> b!1571258 (= e!876117 false)))

(declare-fun k!2731 () (_ BitVec 64))

(declare-fun mask!4043 () (_ BitVec 32))

(declare-datatypes ((array!104825 0))(
  ( (array!104826 (arr!50586 (Array (_ BitVec 32) (_ BitVec 64))) (size!51137 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104825)

(declare-datatypes ((SeekEntryResult!13539 0))(
  ( (MissingZero!13539 (index!56553 (_ BitVec 32))) (Found!13539 (index!56554 (_ BitVec 32))) (Intermediate!13539 (undefined!14351 Bool) (index!56555 (_ BitVec 32)) (x!141254 (_ BitVec 32))) (Undefined!13539) (MissingVacant!13539 (index!56556 (_ BitVec 32))) )
))
(declare-fun lt!673483 () SeekEntryResult!13539)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104825 (_ BitVec 32)) SeekEntryResult!13539)

(assert (=> b!1571258 (= lt!673483 (seekEntryOrOpen!0 k!2731 a!3462 mask!4043))))

(declare-fun b!1571256 () Bool)

(declare-fun res!1073633 () Bool)

(assert (=> b!1571256 (=> (not res!1073633) (not e!876117))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104825 (_ BitVec 32)) Bool)

(assert (=> b!1571256 (= res!1073633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(declare-fun res!1073630 () Bool)

(assert (=> start!134680 (=> (not res!1073630) (not e!876117))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134680 (= res!1073630 (validMask!0 mask!4043))))

(assert (=> start!134680 e!876117))

(assert (=> start!134680 true))

(declare-fun array_inv!39231 (array!104825) Bool)

(assert (=> start!134680 (array_inv!39231 a!3462)))

(declare-fun b!1571255 () Bool)

(declare-fun res!1073631 () Bool)

(assert (=> b!1571255 (=> (not res!1073631) (not e!876117))))

(assert (=> b!1571255 (= res!1073631 (= (size!51137 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571257 () Bool)

(declare-fun res!1073632 () Bool)

(assert (=> b!1571257 (=> (not res!1073632) (not e!876117))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571257 (= res!1073632 (validKeyInArray!0 k!2731))))

(assert (= (and start!134680 res!1073630) b!1571255))

(assert (= (and b!1571255 res!1073631) b!1571256))

(assert (= (and b!1571256 res!1073633) b!1571257))

(assert (= (and b!1571257 res!1073632) b!1571258))

(declare-fun m!1445271 () Bool)

(assert (=> b!1571258 m!1445271))

(declare-fun m!1445273 () Bool)

(assert (=> b!1571256 m!1445273))

(declare-fun m!1445275 () Bool)

(assert (=> start!134680 m!1445275))

(declare-fun m!1445277 () Bool)

(assert (=> start!134680 m!1445277))

(declare-fun m!1445279 () Bool)

(assert (=> b!1571257 m!1445279))

(push 1)

(assert (not b!1571256))

(assert (not b!1571257))

(assert (not start!134680))

(assert (not b!1571258))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

