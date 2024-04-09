; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36550 () Bool)

(assert start!36550)

(declare-fun res!204110 () Bool)

(declare-fun e!223367 () Bool)

(assert (=> start!36550 (=> (not res!204110) (not e!223367))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20771 0))(
  ( (array!20772 (arr!9860 (Array (_ BitVec 32) (_ BitVec 64))) (size!10212 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20771)

(assert (=> start!36550 (= res!204110 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10212 a!4289))))))

(assert (=> start!36550 e!223367))

(assert (=> start!36550 true))

(declare-fun array_inv!7298 (array!20771) Bool)

(assert (=> start!36550 (array_inv!7298 a!4289)))

(declare-fun b!364895 () Bool)

(declare-fun lt!169106 () array!20771)

(declare-fun e!223365 () Bool)

(declare-fun arrayCountValidKeys!0 (array!20771 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364895 (= e!223365 (not (= (arrayCountValidKeys!0 lt!169106 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))))

(declare-fun b!364896 () Bool)

(declare-fun res!204111 () Bool)

(assert (=> b!364896 (=> (not res!204111) (not e!223367))))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364896 (= res!204111 (validKeyInArray!0 k0!2974))))

(declare-fun b!364897 () Bool)

(assert (=> b!364897 (= e!223367 e!223365)))

(declare-fun res!204113 () Bool)

(assert (=> b!364897 (=> (not res!204113) (not e!223365))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364897 (= res!204113 (= (arrayCountValidKeys!0 lt!169106 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(assert (=> b!364897 (= lt!169106 (array!20772 (store (arr!9860 a!4289) i!1472 k0!2974) (size!10212 a!4289)))))

(declare-fun b!364898 () Bool)

(declare-fun res!204114 () Bool)

(assert (=> b!364898 (=> (not res!204114) (not e!223367))))

(assert (=> b!364898 (= res!204114 (and (bvslt (size!10212 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10212 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364899 () Bool)

(declare-fun res!204115 () Bool)

(assert (=> b!364899 (=> (not res!204115) (not e!223367))))

(assert (=> b!364899 (= res!204115 (not (validKeyInArray!0 (select (arr!9860 a!4289) i!1472))))))

(declare-fun b!364900 () Bool)

(declare-fun res!204112 () Bool)

(assert (=> b!364900 (=> (not res!204112) (not e!223365))))

(assert (=> b!364900 (= res!204112 (bvsle from!3650 #b00000000000000000000000000000000))))

(assert (= (and start!36550 res!204110) b!364899))

(assert (= (and b!364899 res!204115) b!364896))

(assert (= (and b!364896 res!204111) b!364898))

(assert (= (and b!364898 res!204114) b!364897))

(assert (= (and b!364897 res!204113) b!364900))

(assert (= (and b!364900 res!204112) b!364895))

(declare-fun m!362773 () Bool)

(assert (=> start!36550 m!362773))

(declare-fun m!362775 () Bool)

(assert (=> b!364899 m!362775))

(assert (=> b!364899 m!362775))

(declare-fun m!362777 () Bool)

(assert (=> b!364899 m!362777))

(declare-fun m!362779 () Bool)

(assert (=> b!364897 m!362779))

(declare-fun m!362781 () Bool)

(assert (=> b!364897 m!362781))

(declare-fun m!362783 () Bool)

(assert (=> b!364897 m!362783))

(declare-fun m!362785 () Bool)

(assert (=> b!364896 m!362785))

(declare-fun m!362787 () Bool)

(assert (=> b!364895 m!362787))

(declare-fun m!362789 () Bool)

(assert (=> b!364895 m!362789))

(check-sat (not start!36550) (not b!364895) (not b!364899) (not b!364897) (not b!364896))
(check-sat)
