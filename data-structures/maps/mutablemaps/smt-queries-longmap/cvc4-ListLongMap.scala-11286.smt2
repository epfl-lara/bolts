; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131612 () Bool)

(assert start!131612)

(declare-fun b!1541355 () Bool)

(declare-fun res!1058019 () Bool)

(declare-fun e!857293 () Bool)

(assert (=> b!1541355 (=> (not res!1058019) (not e!857293))))

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-datatypes ((array!102427 0))(
  ( (array!102428 (arr!49416 (Array (_ BitVec 32) (_ BitVec 64))) (size!49967 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102427)

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541355 (= res!1058019 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49967 a!3920))))))

(declare-fun b!1541356 () Bool)

(declare-fun res!1058018 () Bool)

(assert (=> b!1541356 (=> (not res!1058018) (not e!857293))))

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102427 (_ BitVec 32)) Bool)

(assert (=> b!1541356 (= res!1058018 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun res!1058016 () Bool)

(assert (=> start!131612 (=> (not res!1058016) (not e!857293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131612 (= res!1058016 (validMask!0 mask!4052))))

(assert (=> start!131612 e!857293))

(assert (=> start!131612 true))

(declare-fun array_inv!38361 (array!102427) Bool)

(assert (=> start!131612 (array_inv!38361 a!3920)))

(declare-fun b!1541357 () Bool)

(assert (=> b!1541357 (= e!857293 (not true))))

(assert (=> b!1541357 (arrayForallSeekEntryOrOpenFound!0 newFrom!293 a!3920 mask!4052)))

(declare-datatypes ((Unit!51432 0))(
  ( (Unit!51433) )
))
(declare-fun lt!665617 () Unit!51432)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!102427 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51432)

(assert (=> b!1541357 (= lt!665617 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3920 mask!4052 (bvadd #b00000000000000000000000000000001 from!3298) newFrom!293))))

(declare-fun b!1541358 () Bool)

(declare-fun res!1058017 () Bool)

(assert (=> b!1541358 (=> (not res!1058017) (not e!857293))))

(assert (=> b!1541358 (= res!1058017 (and (= (size!49967 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49967 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49967 a!3920))))))

(declare-fun b!1541359 () Bool)

(declare-fun res!1058015 () Bool)

(assert (=> b!1541359 (=> (not res!1058015) (not e!857293))))

(assert (=> b!1541359 (= res!1058015 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(assert (= (and start!131612 res!1058016) b!1541358))

(assert (= (and b!1541358 res!1058017) b!1541356))

(assert (= (and b!1541356 res!1058018) b!1541355))

(assert (= (and b!1541355 res!1058019) b!1541359))

(assert (= (and b!1541359 res!1058015) b!1541357))

(declare-fun m!1423383 () Bool)

(assert (=> b!1541356 m!1423383))

(declare-fun m!1423385 () Bool)

(assert (=> start!131612 m!1423385))

(declare-fun m!1423387 () Bool)

(assert (=> start!131612 m!1423387))

(declare-fun m!1423389 () Bool)

(assert (=> b!1541357 m!1423389))

(declare-fun m!1423391 () Bool)

(assert (=> b!1541357 m!1423391))

(declare-fun m!1423393 () Bool)

(assert (=> b!1541359 m!1423393))

(push 1)

(assert (not b!1541357))

(assert (not start!131612))

(assert (not b!1541356))

(assert (not b!1541359))

(check-sat)

(pop 1)

(push 1)

(check-sat)

