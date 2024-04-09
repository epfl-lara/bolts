; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114222 () Bool)

(assert start!114222)

(declare-fun b!1356457 () Bool)

(declare-fun res!901339 () Bool)

(declare-fun e!770074 () Bool)

(assert (=> b!1356457 (=> (not res!901339) (not e!770074))))

(declare-datatypes ((List!31828 0))(
  ( (Nil!31825) (Cons!31824 (h!33033 (_ BitVec 64)) (t!46493 List!31828)) )
))
(declare-fun acc!759 () List!31828)

(declare-fun noDuplicate!2272 (List!31828) Bool)

(assert (=> b!1356457 (= res!901339 (noDuplicate!2272 acc!759))))

(declare-fun res!901334 () Bool)

(assert (=> start!114222 (=> (not res!901334) (not e!770074))))

(declare-datatypes ((array!92327 0))(
  ( (array!92328 (arr!44607 (Array (_ BitVec 32) (_ BitVec 64))) (size!45158 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92327)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114222 (= res!901334 (and (bvslt (size!45158 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45158 a!3742))))))

(assert (=> start!114222 e!770074))

(assert (=> start!114222 true))

(declare-fun array_inv!33552 (array!92327) Bool)

(assert (=> start!114222 (array_inv!33552 a!3742)))

(declare-fun b!1356458 () Bool)

(assert (=> b!1356458 (= e!770074 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3120) (size!45158 a!3742)) (bvsgt from!3120 (size!45158 a!3742))))))

(declare-fun b!1356459 () Bool)

(declare-fun res!901340 () Bool)

(assert (=> b!1356459 (=> (not res!901340) (not e!770074))))

(declare-fun arrayNoDuplicates!0 (array!92327 (_ BitVec 32) List!31828) Bool)

(assert (=> b!1356459 (= res!901340 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31825))))

(declare-fun b!1356460 () Bool)

(declare-fun res!901336 () Bool)

(assert (=> b!1356460 (=> (not res!901336) (not e!770074))))

(assert (=> b!1356460 (= res!901336 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1356461 () Bool)

(declare-fun res!901337 () Bool)

(assert (=> b!1356461 (=> (not res!901337) (not e!770074))))

(declare-fun contains!9393 (List!31828 (_ BitVec 64)) Bool)

(assert (=> b!1356461 (= res!901337 (not (contains!9393 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1356462 () Bool)

(declare-fun res!901341 () Bool)

(assert (=> b!1356462 (=> (not res!901341) (not e!770074))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1356462 (= res!901341 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1356463 () Bool)

(declare-fun res!901335 () Bool)

(assert (=> b!1356463 (=> (not res!901335) (not e!770074))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1356463 (= res!901335 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45158 a!3742))))))

(declare-fun b!1356464 () Bool)

(declare-fun res!901338 () Bool)

(assert (=> b!1356464 (=> (not res!901338) (not e!770074))))

(assert (=> b!1356464 (= res!901338 (not (contains!9393 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114222 res!901334) b!1356457))

(assert (= (and b!1356457 res!901339) b!1356461))

(assert (= (and b!1356461 res!901337) b!1356464))

(assert (= (and b!1356464 res!901338) b!1356459))

(assert (= (and b!1356459 res!901340) b!1356460))

(assert (= (and b!1356460 res!901336) b!1356463))

(assert (= (and b!1356463 res!901335) b!1356462))

(assert (= (and b!1356462 res!901341) b!1356458))

(declare-fun m!1242473 () Bool)

(assert (=> start!114222 m!1242473))

(declare-fun m!1242475 () Bool)

(assert (=> b!1356462 m!1242475))

(declare-fun m!1242477 () Bool)

(assert (=> b!1356457 m!1242477))

(declare-fun m!1242479 () Bool)

(assert (=> b!1356464 m!1242479))

(declare-fun m!1242481 () Bool)

(assert (=> b!1356459 m!1242481))

(declare-fun m!1242483 () Bool)

(assert (=> b!1356460 m!1242483))

(declare-fun m!1242485 () Bool)

(assert (=> b!1356461 m!1242485))

(push 1)

(assert (not b!1356461))

(assert (not start!114222))

(assert (not b!1356459))

(assert (not b!1356462))

(assert (not b!1356464))

(assert (not b!1356460))

(assert (not b!1356457))

(check-sat)

(pop 1)

(push 1)

(check-sat)

