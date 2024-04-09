; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36418 () Bool)

(assert start!36418)

(declare-fun res!203295 () Bool)

(declare-fun e!222871 () Bool)

(assert (=> start!36418 (=> (not res!203295) (not e!222871))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20660 0))(
  ( (array!20661 (arr!9806 (Array (_ BitVec 32) (_ BitVec 64))) (size!10158 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20660)

(assert (=> start!36418 (= res!203295 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10158 a!4289))))))

(assert (=> start!36418 e!222871))

(assert (=> start!36418 true))

(declare-fun array_inv!7244 (array!20660) Bool)

(assert (=> start!36418 (array_inv!7244 a!4289)))

(declare-fun b!363984 () Bool)

(declare-fun res!203296 () Bool)

(assert (=> b!363984 (=> (not res!203296) (not e!222871))))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363984 (= res!203296 (validKeyInArray!0 k0!2974))))

(declare-fun b!363985 () Bool)

(declare-fun res!203297 () Bool)

(assert (=> b!363985 (=> (not res!203297) (not e!222871))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!363985 (= res!203297 (and (bvslt (size!10158 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10158 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363986 () Bool)

(assert (=> b!363986 (= e!222871 (and (bvsle from!3650 #b00000000000000000000000000000000) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-fun b!363987 () Bool)

(declare-fun res!203299 () Bool)

(assert (=> b!363987 (=> (not res!203299) (not e!222871))))

(declare-fun arrayCountValidKeys!0 (array!20660 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363987 (= res!203299 (= (arrayCountValidKeys!0 (array!20661 (store (arr!9806 a!4289) i!1472 k0!2974) (size!10158 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(declare-fun b!363988 () Bool)

(declare-fun res!203298 () Bool)

(assert (=> b!363988 (=> (not res!203298) (not e!222871))))

(assert (=> b!363988 (= res!203298 (not (validKeyInArray!0 (select (arr!9806 a!4289) i!1472))))))

(assert (= (and start!36418 res!203295) b!363988))

(assert (= (and b!363988 res!203298) b!363984))

(assert (= (and b!363984 res!203296) b!363985))

(assert (= (and b!363985 res!203297) b!363987))

(assert (= (and b!363987 res!203299) b!363986))

(declare-fun m!361521 () Bool)

(assert (=> start!36418 m!361521))

(declare-fun m!361523 () Bool)

(assert (=> b!363984 m!361523))

(declare-fun m!361525 () Bool)

(assert (=> b!363987 m!361525))

(declare-fun m!361527 () Bool)

(assert (=> b!363987 m!361527))

(declare-fun m!361529 () Bool)

(assert (=> b!363987 m!361529))

(declare-fun m!361531 () Bool)

(assert (=> b!363988 m!361531))

(assert (=> b!363988 m!361531))

(declare-fun m!361533 () Bool)

(assert (=> b!363988 m!361533))

(check-sat (not b!363984) (not start!36418) (not b!363987) (not b!363988))
(check-sat)
