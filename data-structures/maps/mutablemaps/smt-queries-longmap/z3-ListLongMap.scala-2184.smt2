; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36448 () Bool)

(assert start!36448)

(declare-fun res!203496 () Bool)

(declare-fun e!222961 () Bool)

(assert (=> start!36448 (=> (not res!203496) (not e!222961))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20690 0))(
  ( (array!20691 (arr!9821 (Array (_ BitVec 32) (_ BitVec 64))) (size!10173 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20690)

(assert (=> start!36448 (= res!203496 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10173 a!4289))))))

(assert (=> start!36448 e!222961))

(assert (=> start!36448 true))

(declare-fun array_inv!7259 (array!20690) Bool)

(assert (=> start!36448 (array_inv!7259 a!4289)))

(declare-fun b!364182 () Bool)

(declare-fun res!203497 () Bool)

(assert (=> b!364182 (=> (not res!203497) (not e!222961))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20690 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364182 (= res!203497 (= (arrayCountValidKeys!0 (array!20691 (store (arr!9821 a!4289) i!1472 k0!2974) (size!10173 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(declare-fun b!364183 () Bool)

(declare-fun res!203495 () Bool)

(assert (=> b!364183 (=> (not res!203495) (not e!222961))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364183 (= res!203495 (validKeyInArray!0 k0!2974))))

(declare-fun b!364184 () Bool)

(declare-fun res!203493 () Bool)

(assert (=> b!364184 (=> (not res!203493) (not e!222961))))

(assert (=> b!364184 (= res!203493 (not (validKeyInArray!0 (select (arr!9821 a!4289) i!1472))))))

(declare-fun b!364185 () Bool)

(assert (=> b!364185 (= e!222961 (and (bvsgt from!3650 #b00000000000000000000000000000000) (or (bvslt (bvadd #b00000000000000000000000000000001 i!1472) (bvsub from!3650 #b00000000000000000000000000000001)) (bvslt from!3650 (bvsub from!3650 #b00000000000000000000000000000001)) (bvsgt from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(declare-fun b!364186 () Bool)

(declare-fun res!203494 () Bool)

(assert (=> b!364186 (=> (not res!203494) (not e!222961))))

(assert (=> b!364186 (= res!203494 (and (bvslt (size!10173 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10173 a!4289)) (bvsge i!1472 from!3650)))))

(assert (= (and start!36448 res!203496) b!364184))

(assert (= (and b!364184 res!203493) b!364183))

(assert (= (and b!364183 res!203495) b!364186))

(assert (= (and b!364186 res!203494) b!364182))

(assert (= (and b!364182 res!203497) b!364185))

(declare-fun m!361731 () Bool)

(assert (=> start!36448 m!361731))

(declare-fun m!361733 () Bool)

(assert (=> b!364182 m!361733))

(declare-fun m!361735 () Bool)

(assert (=> b!364182 m!361735))

(declare-fun m!361737 () Bool)

(assert (=> b!364182 m!361737))

(declare-fun m!361739 () Bool)

(assert (=> b!364183 m!361739))

(declare-fun m!361741 () Bool)

(assert (=> b!364184 m!361741))

(assert (=> b!364184 m!361741))

(declare-fun m!361743 () Bool)

(assert (=> b!364184 m!361743))

(check-sat (not start!36448) (not b!364182) (not b!364184) (not b!364183))
(check-sat)
