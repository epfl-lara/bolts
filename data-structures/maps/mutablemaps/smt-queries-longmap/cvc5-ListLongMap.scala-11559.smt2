; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134664 () Bool)

(assert start!134664)

(declare-fun b!1571161 () Bool)

(declare-fun res!1073536 () Bool)

(declare-fun e!876068 () Bool)

(assert (=> b!1571161 (=> (not res!1073536) (not e!876068))))

(declare-fun k!2731 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571161 (= res!1073536 (validKeyInArray!0 k!2731))))

(declare-fun b!1571160 () Bool)

(declare-fun res!1073535 () Bool)

(assert (=> b!1571160 (=> (not res!1073535) (not e!876068))))

(declare-datatypes ((array!104809 0))(
  ( (array!104810 (arr!50578 (Array (_ BitVec 32) (_ BitVec 64))) (size!51129 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104809)

(declare-fun mask!4043 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104809 (_ BitVec 32)) Bool)

(assert (=> b!1571160 (= res!1073535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(declare-fun b!1571159 () Bool)

(declare-fun res!1073534 () Bool)

(assert (=> b!1571159 (=> (not res!1073534) (not e!876068))))

(assert (=> b!1571159 (= res!1073534 (= (size!51129 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun b!1571162 () Bool)

(assert (=> b!1571162 (= e!876068 false)))

(declare-datatypes ((SeekEntryResult!13531 0))(
  ( (MissingZero!13531 (index!56521 (_ BitVec 32))) (Found!13531 (index!56522 (_ BitVec 32))) (Intermediate!13531 (undefined!14343 Bool) (index!56523 (_ BitVec 32)) (x!141230 (_ BitVec 32))) (Undefined!13531) (MissingVacant!13531 (index!56524 (_ BitVec 32))) )
))
(declare-fun lt!673459 () SeekEntryResult!13531)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104809 (_ BitVec 32)) SeekEntryResult!13531)

(assert (=> b!1571162 (= lt!673459 (seekEntryOrOpen!0 k!2731 a!3462 mask!4043))))

(declare-fun res!1073537 () Bool)

(assert (=> start!134664 (=> (not res!1073537) (not e!876068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134664 (= res!1073537 (validMask!0 mask!4043))))

(assert (=> start!134664 e!876068))

(assert (=> start!134664 true))

(declare-fun array_inv!39223 (array!104809) Bool)

(assert (=> start!134664 (array_inv!39223 a!3462)))

(assert (= (and start!134664 res!1073537) b!1571159))

(assert (= (and b!1571159 res!1073534) b!1571160))

(assert (= (and b!1571160 res!1073535) b!1571161))

(assert (= (and b!1571161 res!1073536) b!1571162))

(declare-fun m!1445191 () Bool)

(assert (=> b!1571161 m!1445191))

(declare-fun m!1445193 () Bool)

(assert (=> b!1571160 m!1445193))

(declare-fun m!1445195 () Bool)

(assert (=> b!1571162 m!1445195))

(declare-fun m!1445197 () Bool)

(assert (=> start!134664 m!1445197))

(declare-fun m!1445199 () Bool)

(assert (=> start!134664 m!1445199))

(push 1)

(assert (not start!134664))

(assert (not b!1571161))

(assert (not b!1571160))

(assert (not b!1571162))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

