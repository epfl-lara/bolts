; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25738 () Bool)

(assert start!25738)

(declare-fun res!131052 () Bool)

(declare-fun e!172528 () Bool)

(assert (=> start!25738 (=> (not res!131052) (not e!172528))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25738 (= res!131052 (validMask!0 mask!4002))))

(assert (=> start!25738 e!172528))

(assert (=> start!25738 true))

(declare-datatypes ((array!12904 0))(
  ( (array!12905 (arr!6106 (Array (_ BitVec 32) (_ BitVec 64))) (size!6458 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12904)

(declare-fun array_inv!4060 (array!12904) Bool)

(assert (=> start!25738 (array_inv!4060 a!3436)))

(declare-fun b!266716 () Bool)

(declare-fun res!131050 () Bool)

(assert (=> b!266716 (=> (not res!131050) (not e!172528))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12904 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!266716 (= res!131050 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!266717 () Bool)

(declare-fun e!172526 () Bool)

(assert (=> b!266717 (= e!172526 false)))

(declare-fun lt!134545 () Bool)

(declare-datatypes ((List!3941 0))(
  ( (Nil!3938) (Cons!3937 (h!4604 (_ BitVec 64)) (t!9031 List!3941)) )
))
(declare-fun arrayNoDuplicates!0 (array!12904 (_ BitVec 32) List!3941) Bool)

(assert (=> b!266717 (= lt!134545 (arrayNoDuplicates!0 a!3436 #b00000000000000000000000000000000 Nil!3938))))

(declare-fun b!266718 () Bool)

(declare-fun res!131053 () Bool)

(assert (=> b!266718 (=> (not res!131053) (not e!172526))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12904 (_ BitVec 32)) Bool)

(assert (=> b!266718 (= res!131053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!266719 () Bool)

(declare-fun res!131051 () Bool)

(assert (=> b!266719 (=> (not res!131051) (not e!172528))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!266719 (= res!131051 (validKeyInArray!0 k!2698))))

(declare-fun b!266720 () Bool)

(declare-fun res!131054 () Bool)

(assert (=> b!266720 (=> (not res!131054) (not e!172528))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!266720 (= res!131054 (and (= (size!6458 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6458 a!3436))))))

(declare-fun b!266721 () Bool)

(assert (=> b!266721 (= e!172528 e!172526)))

(declare-fun res!131055 () Bool)

(assert (=> b!266721 (=> (not res!131055) (not e!172526))))

(declare-datatypes ((SeekEntryResult!1308 0))(
  ( (MissingZero!1308 (index!7402 (_ BitVec 32))) (Found!1308 (index!7403 (_ BitVec 32))) (Intermediate!1308 (undefined!2120 Bool) (index!7404 (_ BitVec 32)) (x!25673 (_ BitVec 32))) (Undefined!1308) (MissingVacant!1308 (index!7405 (_ BitVec 32))) )
))
(declare-fun lt!134546 () SeekEntryResult!1308)

(assert (=> b!266721 (= res!131055 (or (= lt!134546 (MissingZero!1308 i!1355)) (= lt!134546 (MissingVacant!1308 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12904 (_ BitVec 32)) SeekEntryResult!1308)

(assert (=> b!266721 (= lt!134546 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(assert (= (and start!25738 res!131052) b!266720))

(assert (= (and b!266720 res!131054) b!266719))

(assert (= (and b!266719 res!131051) b!266716))

(assert (= (and b!266716 res!131050) b!266721))

(assert (= (and b!266721 res!131055) b!266718))

(assert (= (and b!266718 res!131053) b!266717))

(declare-fun m!283289 () Bool)

(assert (=> b!266718 m!283289))

(declare-fun m!283291 () Bool)

(assert (=> b!266719 m!283291))

(declare-fun m!283293 () Bool)

(assert (=> b!266716 m!283293))

(declare-fun m!283295 () Bool)

(assert (=> b!266721 m!283295))

(declare-fun m!283297 () Bool)

(assert (=> start!25738 m!283297))

(declare-fun m!283299 () Bool)

(assert (=> start!25738 m!283299))

(declare-fun m!283301 () Bool)

(assert (=> b!266717 m!283301))

(push 1)

