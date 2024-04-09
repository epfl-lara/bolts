; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36544 () Bool)

(assert start!36544)

(declare-fun b!364851 () Bool)

(declare-fun res!204065 () Bool)

(declare-fun e!223342 () Bool)

(assert (=> b!364851 (=> (not res!204065) (not e!223342))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20765 0))(
  ( (array!20766 (arr!9857 (Array (_ BitVec 32) (_ BitVec 64))) (size!10209 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20765)

(assert (=> b!364851 (= res!204065 (and (bvslt (size!10209 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10209 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364852 () Bool)

(assert (=> b!364852 (= e!223342 false)))

(declare-fun lt!169094 () (_ BitVec 32))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20765 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364852 (= lt!169094 (arrayCountValidKeys!0 (array!20766 (store (arr!9857 a!4289) i!1472 k0!2974) (size!10209 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!169093 () (_ BitVec 32))

(assert (=> b!364852 (= lt!169093 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun res!204064 () Bool)

(assert (=> start!36544 (=> (not res!204064) (not e!223342))))

(assert (=> start!36544 (= res!204064 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10209 a!4289))))))

(assert (=> start!36544 e!223342))

(assert (=> start!36544 true))

(declare-fun array_inv!7295 (array!20765) Bool)

(assert (=> start!36544 (array_inv!7295 a!4289)))

(declare-fun b!364849 () Bool)

(declare-fun res!204066 () Bool)

(assert (=> b!364849 (=> (not res!204066) (not e!223342))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364849 (= res!204066 (not (validKeyInArray!0 (select (arr!9857 a!4289) i!1472))))))

(declare-fun b!364850 () Bool)

(declare-fun res!204067 () Bool)

(assert (=> b!364850 (=> (not res!204067) (not e!223342))))

(assert (=> b!364850 (= res!204067 (validKeyInArray!0 k0!2974))))

(assert (= (and start!36544 res!204064) b!364849))

(assert (= (and b!364849 res!204066) b!364850))

(assert (= (and b!364850 res!204067) b!364851))

(assert (= (and b!364851 res!204065) b!364852))

(declare-fun m!362727 () Bool)

(assert (=> b!364852 m!362727))

(declare-fun m!362729 () Bool)

(assert (=> b!364852 m!362729))

(declare-fun m!362731 () Bool)

(assert (=> b!364852 m!362731))

(declare-fun m!362733 () Bool)

(assert (=> start!36544 m!362733))

(declare-fun m!362735 () Bool)

(assert (=> b!364849 m!362735))

(assert (=> b!364849 m!362735))

(declare-fun m!362737 () Bool)

(assert (=> b!364849 m!362737))

(declare-fun m!362739 () Bool)

(assert (=> b!364850 m!362739))

(check-sat (not b!364852) (not start!36544) (not b!364849) (not b!364850))
