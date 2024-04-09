; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81716 () Bool)

(assert start!81716)

(declare-fun b!953275 () Bool)

(declare-fun res!638605 () Bool)

(declare-fun e!536988 () Bool)

(assert (=> b!953275 (=> (not res!638605) (not e!536988))))

(declare-datatypes ((array!57750 0))(
  ( (array!57751 (arr!27757 (Array (_ BitVec 32) (_ BitVec 64))) (size!28237 (_ BitVec 32))) )
))
(declare-fun a!3460 () array!57750)

(declare-fun mask!4034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57750 (_ BitVec 32)) Bool)

(assert (=> b!953275 (= res!638605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3460 mask!4034))))

(declare-fun b!953274 () Bool)

(declare-fun res!638603 () Bool)

(assert (=> b!953274 (=> (not res!638603) (not e!536988))))

(assert (=> b!953274 (= res!638603 (= (size!28237 a!3460) (bvadd #b00000000000000000000000000000001 mask!4034)))))

(declare-fun b!953277 () Bool)

(assert (=> b!953277 (= e!536988 false)))

(declare-datatypes ((SeekEntryResult!9165 0))(
  ( (MissingZero!9165 (index!39030 (_ BitVec 32))) (Found!9165 (index!39031 (_ BitVec 32))) (Intermediate!9165 (undefined!9977 Bool) (index!39032 (_ BitVec 32)) (x!82046 (_ BitVec 32))) (Undefined!9165) (MissingVacant!9165 (index!39033 (_ BitVec 32))) )
))
(declare-fun lt!429657 () SeekEntryResult!9165)

(declare-fun k!2725 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57750 (_ BitVec 32)) SeekEntryResult!9165)

(assert (=> b!953277 (= lt!429657 (seekEntryOrOpen!0 k!2725 a!3460 mask!4034))))

(declare-fun res!638604 () Bool)

(assert (=> start!81716 (=> (not res!638604) (not e!536988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81716 (= res!638604 (validMask!0 mask!4034))))

(assert (=> start!81716 e!536988))

(assert (=> start!81716 true))

(declare-fun array_inv!21490 (array!57750) Bool)

(assert (=> start!81716 (array_inv!21490 a!3460)))

(declare-fun b!953276 () Bool)

(declare-fun res!638606 () Bool)

(assert (=> b!953276 (=> (not res!638606) (not e!536988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!953276 (= res!638606 (validKeyInArray!0 k!2725))))

(assert (= (and start!81716 res!638604) b!953274))

(assert (= (and b!953274 res!638603) b!953275))

(assert (= (and b!953275 res!638605) b!953276))

(assert (= (and b!953276 res!638606) b!953277))

(declare-fun m!885439 () Bool)

(assert (=> b!953275 m!885439))

(declare-fun m!885441 () Bool)

(assert (=> b!953277 m!885441))

(declare-fun m!885443 () Bool)

(assert (=> start!81716 m!885443))

(declare-fun m!885445 () Bool)

(assert (=> start!81716 m!885445))

(declare-fun m!885447 () Bool)

(assert (=> b!953276 m!885447))

(push 1)

(assert (not b!953277))

(assert (not b!953276))

(assert (not start!81716))

(assert (not b!953275))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

