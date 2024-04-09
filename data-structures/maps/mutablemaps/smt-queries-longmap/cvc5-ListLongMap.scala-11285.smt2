; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131602 () Bool)

(assert start!131602)

(declare-fun b!1541280 () Bool)

(declare-fun e!857264 () Bool)

(declare-fun newFrom!293 () (_ BitVec 32))

(declare-fun from!3298 () (_ BitVec 32))

(assert (=> b!1541280 (= e!857264 (bvsge (bvsub newFrom!293 (bvadd #b00000000000000000000000000000001 from!3298)) (bvsub newFrom!293 from!3298)))))

(declare-fun b!1541281 () Bool)

(declare-fun res!1057944 () Bool)

(assert (=> b!1541281 (=> (not res!1057944) (not e!857264))))

(declare-datatypes ((array!102417 0))(
  ( (array!102418 (arr!49411 (Array (_ BitVec 32) (_ BitVec 64))) (size!49962 (_ BitVec 32))) )
))
(declare-fun a!3920 () array!102417)

(declare-fun mask!4052 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102417 (_ BitVec 32)) Bool)

(assert (=> b!1541281 (= res!1057944 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 from!3298) a!3920 mask!4052))))

(declare-fun b!1541282 () Bool)

(declare-fun res!1057943 () Bool)

(assert (=> b!1541282 (=> (not res!1057943) (not e!857264))))

(assert (=> b!1541282 (= res!1057943 (and (bvslt from!3298 newFrom!293) (bvsge (bvadd #b00000000000000000000000000000001 from!3298) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!3298) (size!49962 a!3920))))))

(declare-fun b!1541283 () Bool)

(declare-fun res!1057941 () Bool)

(assert (=> b!1541283 (=> (not res!1057941) (not e!857264))))

(assert (=> b!1541283 (= res!1057941 (arrayForallSeekEntryOrOpenFound!0 from!3298 a!3920 mask!4052))))

(declare-fun res!1057942 () Bool)

(assert (=> start!131602 (=> (not res!1057942) (not e!857264))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131602 (= res!1057942 (validMask!0 mask!4052))))

(assert (=> start!131602 e!857264))

(assert (=> start!131602 true))

(declare-fun array_inv!38356 (array!102417) Bool)

(assert (=> start!131602 (array_inv!38356 a!3920)))

(declare-fun b!1541284 () Bool)

(declare-fun res!1057940 () Bool)

(assert (=> b!1541284 (=> (not res!1057940) (not e!857264))))

(assert (=> b!1541284 (= res!1057940 (and (= (size!49962 a!3920) (bvadd #b00000000000000000000000000000001 mask!4052)) (bvsge from!3298 #b00000000000000000000000000000000) (bvsle from!3298 (size!49962 a!3920)) (bvsge newFrom!293 from!3298) (bvsle newFrom!293 (size!49962 a!3920))))))

(assert (= (and start!131602 res!1057942) b!1541284))

(assert (= (and b!1541284 res!1057940) b!1541283))

(assert (= (and b!1541283 res!1057941) b!1541282))

(assert (= (and b!1541282 res!1057943) b!1541281))

(assert (= (and b!1541281 res!1057944) b!1541280))

(declare-fun m!1423335 () Bool)

(assert (=> b!1541281 m!1423335))

(declare-fun m!1423337 () Bool)

(assert (=> b!1541283 m!1423337))

(declare-fun m!1423339 () Bool)

(assert (=> start!131602 m!1423339))

(declare-fun m!1423341 () Bool)

(assert (=> start!131602 m!1423341))

(push 1)

(assert (not b!1541281))

(assert (not start!131602))

(assert (not b!1541283))

(check-sat)

(pop 1)

(push 1)

(check-sat)

