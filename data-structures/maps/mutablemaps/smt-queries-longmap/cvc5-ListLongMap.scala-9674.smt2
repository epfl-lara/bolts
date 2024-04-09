; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114218 () Bool)

(assert start!114218)

(declare-fun b!1356409 () Bool)

(declare-fun res!901287 () Bool)

(declare-fun e!770062 () Bool)

(assert (=> b!1356409 (=> (not res!901287) (not e!770062))))

(declare-datatypes ((array!92323 0))(
  ( (array!92324 (arr!44605 (Array (_ BitVec 32) (_ BitVec 64))) (size!45156 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92323)

(declare-datatypes ((List!31826 0))(
  ( (Nil!31823) (Cons!31822 (h!33031 (_ BitVec 64)) (t!46491 List!31826)) )
))
(declare-fun arrayNoDuplicates!0 (array!92323 (_ BitVec 32) List!31826) Bool)

(assert (=> b!1356409 (= res!901287 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31823))))

(declare-fun b!1356410 () Bool)

(declare-fun res!901290 () Bool)

(assert (=> b!1356410 (=> (not res!901290) (not e!770062))))

(declare-fun acc!759 () List!31826)

(declare-fun contains!9391 (List!31826 (_ BitVec 64)) Bool)

(assert (=> b!1356410 (= res!901290 (not (contains!9391 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356411 () Bool)

(declare-fun res!901289 () Bool)

(assert (=> b!1356411 (=> (not res!901289) (not e!770062))))

(declare-fun noDuplicate!2270 (List!31826) Bool)

(assert (=> b!1356411 (= res!901289 (noDuplicate!2270 acc!759))))

(declare-fun b!1356412 () Bool)

(declare-fun res!901293 () Bool)

(assert (=> b!1356412 (=> (not res!901293) (not e!770062))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356412 (= res!901293 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356413 () Bool)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1356413 (= e!770062 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45156 a!3742)) (bvsgt from!3120 (size!45156 a!3742))))))

(declare-fun b!1356414 () Bool)

(declare-fun res!901292 () Bool)

(assert (=> b!1356414 (=> (not res!901292) (not e!770062))))

(assert (=> b!1356414 (= res!901292 (not (contains!9391 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356415 () Bool)

(declare-fun res!901288 () Bool)

(assert (=> b!1356415 (=> (not res!901288) (not e!770062))))

(assert (=> b!1356415 (= res!901288 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356416 () Bool)

(declare-fun res!901286 () Bool)

(assert (=> b!1356416 (=> (not res!901286) (not e!770062))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356416 (= res!901286 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45156 a!3742))))))

(declare-fun res!901291 () Bool)

(assert (=> start!114218 (=> (not res!901291) (not e!770062))))

(assert (=> start!114218 (= res!901291 (and (bvslt (size!45156 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45156 a!3742))))))

(assert (=> start!114218 e!770062))

(assert (=> start!114218 true))

(declare-fun array_inv!33550 (array!92323) Bool)

(assert (=> start!114218 (array_inv!33550 a!3742)))

(assert (= (and start!114218 res!901291) b!1356411))

(assert (= (and b!1356411 res!901289) b!1356410))

(assert (= (and b!1356410 res!901290) b!1356414))

(assert (= (and b!1356414 res!901292) b!1356409))

(assert (= (and b!1356409 res!901287) b!1356415))

(assert (= (and b!1356415 res!901288) b!1356416))

(assert (= (and b!1356416 res!901286) b!1356412))

(assert (= (and b!1356412 res!901293) b!1356413))

(declare-fun m!1242445 () Bool)

(assert (=> b!1356410 m!1242445))

(declare-fun m!1242447 () Bool)

(assert (=> b!1356411 m!1242447))

(declare-fun m!1242449 () Bool)

(assert (=> b!1356412 m!1242449))

(declare-fun m!1242451 () Bool)

(assert (=> b!1356414 m!1242451))

(declare-fun m!1242453 () Bool)

(assert (=> b!1356415 m!1242453))

(declare-fun m!1242455 () Bool)

(assert (=> b!1356409 m!1242455))

(declare-fun m!1242457 () Bool)

(assert (=> start!114218 m!1242457))

(push 1)

(assert (not b!1356414))

(assert (not b!1356409))

(assert (not start!114218))

(assert (not b!1356410))

(assert (not b!1356412))

(assert (not b!1356415))

(assert (not b!1356411))

(check-sat)

(pop 1)

(push 1)

(check-sat)

