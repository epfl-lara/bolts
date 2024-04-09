; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116604 () Bool)

(assert start!116604)

(declare-fun res!917875 () Bool)

(declare-fun e!778738 () Bool)

(assert (=> start!116604 (=> (not res!917875) (not e!778738))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93227 0))(
  ( (array!93228 (arr!45015 (Array (_ BitVec 32) (_ BitVec 64))) (size!45566 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93227)

(assert (=> start!116604 (= res!917875 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45566 a!4142))))))

(assert (=> start!116604 e!778738))

(assert (=> start!116604 true))

(declare-fun array_inv!33960 (array!93227) Bool)

(assert (=> start!116604 (array_inv!33960 a!4142)))

(declare-fun b!1374571 () Bool)

(declare-fun res!917877 () Bool)

(assert (=> b!1374571 (=> (not res!917877) (not e!778738))))

(assert (=> b!1374571 (= res!917877 (and (bvslt (size!45566 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45566 a!4142))))))

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun b!1374572 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93227 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374572 (= e!778738 (not (= (arrayCountValidKeys!0 (array!93228 (store (arr!45015 a!4142) i!1457 k!2959) (size!45566 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))))

(declare-fun b!1374569 () Bool)

(declare-fun res!917874 () Bool)

(assert (=> b!1374569 (=> (not res!917874) (not e!778738))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374569 (= res!917874 (validKeyInArray!0 (select (arr!45015 a!4142) i!1457)))))

(declare-fun b!1374570 () Bool)

(declare-fun res!917876 () Bool)

(assert (=> b!1374570 (=> (not res!917876) (not e!778738))))

(assert (=> b!1374570 (= res!917876 (not (validKeyInArray!0 k!2959)))))

(assert (= (and start!116604 res!917875) b!1374569))

(assert (= (and b!1374569 res!917874) b!1374570))

(assert (= (and b!1374570 res!917876) b!1374571))

(assert (= (and b!1374571 res!917877) b!1374572))

(declare-fun m!1258169 () Bool)

(assert (=> start!116604 m!1258169))

(declare-fun m!1258171 () Bool)

(assert (=> b!1374572 m!1258171))

(declare-fun m!1258173 () Bool)

(assert (=> b!1374572 m!1258173))

(declare-fun m!1258175 () Bool)

(assert (=> b!1374572 m!1258175))

(declare-fun m!1258177 () Bool)

(assert (=> b!1374569 m!1258177))

(assert (=> b!1374569 m!1258177))

(declare-fun m!1258179 () Bool)

(assert (=> b!1374569 m!1258179))

(declare-fun m!1258181 () Bool)

(assert (=> b!1374570 m!1258181))

(push 1)

(assert (not b!1374572))

(assert (not b!1374570))

(assert (not start!116604))

(assert (not b!1374569))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!603805 () (_ BitVec 32))

(declare-fun d!148071 () Bool)

(assert (=> d!148071 (and (bvsge lt!603805 #b00000000000000000000000000000000) (bvsle lt!603805 (bvsub (size!45566 (array!93228 (store (arr!45015 a!4142) i!1457 k!2959) (size!45566 a!4142))) i!1457)))))

(declare-fun e!778760 () (_ BitVec 32))

(assert (=> d!148071 (= lt!603805 e!778760)))

(declare-fun c!127810 () Bool)

(assert (=> d!148071 (= c!127810 (bvsge i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148071 (and (bvsle i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge i!1457 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45566 (array!93228 (store (arr!45015 a!4142) i!1457 k!2959) (size!45566 a!4142)))))))

(assert (=> d!148071 (= (arrayCountValidKeys!0 (array!93228 (store (arr!45015 a!4142) i!1457 k!2959) (size!45566 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) lt!603805)))

(declare-fun b!1374613 () Bool)

(declare-fun e!778759 () (_ BitVec 32))

(declare-fun call!65649 () (_ BitVec 32))

(assert (=> b!1374613 (= e!778759 call!65649)))

(declare-fun bm!65646 () Bool)

(assert (=> bm!65646 (= call!65649 (arrayCountValidKeys!0 (array!93228 (store (arr!45015 a!4142) i!1457 k!2959) (size!45566 a!4142)) (bvadd i!1457 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374614 () Bool)

(assert (=> b!1374614 (= e!778760 #b00000000000000000000000000000000)))

(declare-fun b!1374615 () Bool)

(assert (=> b!1374615 (= e!778760 e!778759)))

(declare-fun c!127811 () Bool)

(assert (=> b!1374615 (= c!127811 (validKeyInArray!0 (select (arr!45015 (array!93228 (store (arr!45015 a!4142) i!1457 k!2959) (size!45566 a!4142))) i!1457)))))

(declare-fun b!1374616 () Bool)

(assert (=> b!1374616 (= e!778759 (bvadd #b00000000000000000000000000000001 call!65649))))

(assert (= (and d!148071 c!127810) b!1374614))

(assert (= (and d!148071 (not c!127810)) b!1374615))

(assert (= (and b!1374615 c!127811) b!1374616))

(assert (= (and b!1374615 (not c!127811)) b!1374613))

(assert (= (or b!1374616 b!1374613) bm!65646))

(declare-fun m!1258199 () Bool)

(assert (=> bm!65646 m!1258199))

(declare-fun m!1258201 () Bool)

(assert (=> b!1374615 m!1258201))

(assert (=> b!1374615 m!1258201))

(declare-fun m!1258203 () Bool)

(assert (=> b!1374615 m!1258203))

(assert (=> b!1374572 d!148071))

(declare-fun d!148079 () Bool)

(declare-fun lt!603806 () (_ BitVec 32))

(assert (=> d!148079 (and (bvsge lt!603806 #b00000000000000000000000000000000) (bvsle lt!603806 (bvsub (size!45566 a!4142) i!1457)))))

(declare-fun e!778762 () (_ BitVec 32))

(assert (=> d!148079 (= lt!603806 e!778762)))

(declare-fun c!127812 () Bool)

(assert (=> d!148079 (= c!127812 (bvsge i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148079 (and (bvsle i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge i!1457 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45566 a!4142)))))

(assert (=> d!148079 (= (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) lt!603806)))

(declare-fun b!1374617 () Bool)

(declare-fun e!778761 () (_ BitVec 32))

(declare-fun call!65650 () (_ BitVec 32))

(assert (=> b!1374617 (= e!778761 call!65650)))

(declare-fun bm!65647 () Bool)

(assert (=> bm!65647 (= call!65650 (arrayCountValidKeys!0 a!4142 (bvadd i!1457 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun b!1374618 () Bool)

(assert (=> b!1374618 (= e!778762 #b00000000000000000000000000000000)))

(declare-fun b!1374619 () Bool)

(assert (=> b!1374619 (= e!778762 e!778761)))

(declare-fun c!127813 () Bool)

(assert (=> b!1374619 (= c!127813 (validKeyInArray!0 (select (arr!45015 a!4142) i!1457)))))

(declare-fun b!1374620 () Bool)

(assert (=> b!1374620 (= e!778761 (bvadd #b00000000000000000000000000000001 call!65650))))

(assert (= (and d!148079 c!127812) b!1374618))

(assert (= (and d!148079 (not c!127812)) b!1374619))

(assert (= (and b!1374619 c!127813) b!1374620))

(assert (= (and b!1374619 (not c!127813)) b!1374617))

(assert (= (or b!1374620 b!1374617) bm!65647))

(declare-fun m!1258205 () Bool)

(assert (=> bm!65647 m!1258205))

(assert (=> b!1374619 m!1258177))

(assert (=> b!1374619 m!1258177))

(assert (=> b!1374619 m!1258179))

(assert (=> b!1374572 d!148079))

(declare-fun d!148081 () Bool)

(assert (=> d!148081 (= (validKeyInArray!0 k!2959) (and (not (= k!2959 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2959 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1374570 d!148081))

(declare-fun d!148083 () Bool)

(assert (=> d!148083 (= (array_inv!33960 a!4142) (bvsge (size!45566 a!4142) #b00000000000000000000000000000000))))

(assert (=> start!116604 d!148083))

(declare-fun d!148085 () Bool)

(assert (=> d!148085 (= (validKeyInArray!0 (select (arr!45015 a!4142) i!1457)) (and (not (= (select (arr!45015 a!4142) i!1457) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45015 a!4142) i!1457) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1374569 d!148085))

(push 1)

(assert (not b!1374615))

(assert (not b!1374619))

(assert (not bm!65646))

(assert (not bm!65647))

(check-sat)

(pop 1)

