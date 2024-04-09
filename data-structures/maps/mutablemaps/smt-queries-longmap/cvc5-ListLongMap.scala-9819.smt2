; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116600 () Bool)

(assert start!116600)

(declare-fun res!917853 () Bool)

(declare-fun e!778725 () Bool)

(assert (=> start!116600 (=> (not res!917853) (not e!778725))))

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93223 0))(
  ( (array!93224 (arr!45013 (Array (_ BitVec 32) (_ BitVec 64))) (size!45564 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93223)

(assert (=> start!116600 (= res!917853 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45564 a!4142))))))

(assert (=> start!116600 e!778725))

(assert (=> start!116600 true))

(declare-fun array_inv!33958 (array!93223) Bool)

(assert (=> start!116600 (array_inv!33958 a!4142)))

(declare-fun b!1374548 () Bool)

(declare-fun k!2959 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93223 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374548 (= e!778725 (not (= (arrayCountValidKeys!0 (array!93224 (store (arr!45013 a!4142) i!1457 k!2959) (size!45564 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))))

(declare-fun b!1374547 () Bool)

(declare-fun res!917851 () Bool)

(assert (=> b!1374547 (=> (not res!917851) (not e!778725))))

(assert (=> b!1374547 (= res!917851 (and (bvslt (size!45564 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45564 a!4142))))))

(declare-fun b!1374545 () Bool)

(declare-fun res!917850 () Bool)

(assert (=> b!1374545 (=> (not res!917850) (not e!778725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374545 (= res!917850 (validKeyInArray!0 (select (arr!45013 a!4142) i!1457)))))

(declare-fun b!1374546 () Bool)

(declare-fun res!917852 () Bool)

(assert (=> b!1374546 (=> (not res!917852) (not e!778725))))

(assert (=> b!1374546 (= res!917852 (not (validKeyInArray!0 k!2959)))))

(assert (= (and start!116600 res!917853) b!1374545))

(assert (= (and b!1374545 res!917850) b!1374546))

(assert (= (and b!1374546 res!917852) b!1374547))

(assert (= (and b!1374547 res!917851) b!1374548))

(declare-fun m!1258141 () Bool)

(assert (=> start!116600 m!1258141))

(declare-fun m!1258143 () Bool)

(assert (=> b!1374548 m!1258143))

(declare-fun m!1258145 () Bool)

(assert (=> b!1374548 m!1258145))

(declare-fun m!1258147 () Bool)

(assert (=> b!1374548 m!1258147))

(declare-fun m!1258149 () Bool)

(assert (=> b!1374545 m!1258149))

(assert (=> b!1374545 m!1258149))

(declare-fun m!1258151 () Bool)

(assert (=> b!1374545 m!1258151))

(declare-fun m!1258153 () Bool)

(assert (=> b!1374546 m!1258153))

(push 1)

(assert (not start!116600))

(assert (not b!1374548))

(assert (not b!1374546))

(assert (not b!1374545))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148065 () Bool)

(assert (=> d!148065 (= (array_inv!33958 a!4142) (bvsge (size!45564 a!4142) #b00000000000000000000000000000000))))

(assert (=> start!116600 d!148065))

(declare-fun b!1374605 () Bool)

(declare-fun e!778756 () (_ BitVec 32))

(declare-fun e!778755 () (_ BitVec 32))

(assert (=> b!1374605 (= e!778756 e!778755)))

(declare-fun c!127807 () Bool)

(assert (=> b!1374605 (= c!127807 (validKeyInArray!0 (select (arr!45013 (array!93224 (store (arr!45013 a!4142) i!1457 k!2959) (size!45564 a!4142))) i!1457)))))

(declare-fun b!1374606 () Bool)

(declare-fun call!65647 () (_ BitVec 32))

(assert (=> b!1374606 (= e!778755 call!65647)))

(declare-fun b!1374607 () Bool)

(assert (=> b!1374607 (= e!778755 (bvadd #b00000000000000000000000000000001 call!65647))))

(declare-fun b!1374608 () Bool)

(assert (=> b!1374608 (= e!778756 #b00000000000000000000000000000000)))

(declare-fun bm!65644 () Bool)

(assert (=> bm!65644 (= call!65647 (arrayCountValidKeys!0 (array!93224 (store (arr!45013 a!4142) i!1457 k!2959) (size!45564 a!4142)) (bvadd i!1457 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun lt!603803 () (_ BitVec 32))

(declare-fun d!148067 () Bool)

(assert (=> d!148067 (and (bvsge lt!603803 #b00000000000000000000000000000000) (bvsle lt!603803 (bvsub (size!45564 (array!93224 (store (arr!45013 a!4142) i!1457 k!2959) (size!45564 a!4142))) i!1457)))))

(assert (=> d!148067 (= lt!603803 e!778756)))

(declare-fun c!127806 () Bool)

(assert (=> d!148067 (= c!127806 (bvsge i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148067 (and (bvsle i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge i!1457 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45564 (array!93224 (store (arr!45013 a!4142) i!1457 k!2959) (size!45564 a!4142)))))))

(assert (=> d!148067 (= (arrayCountValidKeys!0 (array!93224 (store (arr!45013 a!4142) i!1457 k!2959) (size!45564 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) lt!603803)))

(assert (= (and d!148067 c!127806) b!1374608))

(assert (= (and d!148067 (not c!127806)) b!1374605))

(assert (= (and b!1374605 c!127807) b!1374607))

(assert (= (and b!1374605 (not c!127807)) b!1374606))

(assert (= (or b!1374607 b!1374606) bm!65644))

(declare-fun m!1258191 () Bool)

(assert (=> b!1374605 m!1258191))

(assert (=> b!1374605 m!1258191))

(declare-fun m!1258193 () Bool)

(assert (=> b!1374605 m!1258193))

(declare-fun m!1258195 () Bool)

(assert (=> bm!65644 m!1258195))

(assert (=> b!1374548 d!148067))

(declare-fun b!1374609 () Bool)

(declare-fun e!778758 () (_ BitVec 32))

(declare-fun e!778757 () (_ BitVec 32))

(assert (=> b!1374609 (= e!778758 e!778757)))

(declare-fun c!127809 () Bool)

(assert (=> b!1374609 (= c!127809 (validKeyInArray!0 (select (arr!45013 a!4142) i!1457)))))

(declare-fun b!1374610 () Bool)

(declare-fun call!65648 () (_ BitVec 32))

(assert (=> b!1374610 (= e!778757 call!65648)))

(declare-fun b!1374611 () Bool)

(assert (=> b!1374611 (= e!778757 (bvadd #b00000000000000000000000000000001 call!65648))))

(declare-fun b!1374612 () Bool)

(assert (=> b!1374612 (= e!778758 #b00000000000000000000000000000000)))

(declare-fun bm!65645 () Bool)

(assert (=> bm!65645 (= call!65648 (arrayCountValidKeys!0 a!4142 (bvadd i!1457 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(declare-fun d!148073 () Bool)

(declare-fun lt!603804 () (_ BitVec 32))

(assert (=> d!148073 (and (bvsge lt!603804 #b00000000000000000000000000000000) (bvsle lt!603804 (bvsub (size!45564 a!4142) i!1457)))))

(assert (=> d!148073 (= lt!603804 e!778758)))

(declare-fun c!127808 () Bool)

(assert (=> d!148073 (= c!127808 (bvsge i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148073 (and (bvsle i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge i!1457 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45564 a!4142)))))

(assert (=> d!148073 (= (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) lt!603804)))

(assert (= (and d!148073 c!127808) b!1374612))

(assert (= (and d!148073 (not c!127808)) b!1374609))

(assert (= (and b!1374609 c!127809) b!1374611))

(assert (= (and b!1374609 (not c!127809)) b!1374610))

(assert (= (or b!1374611 b!1374610) bm!65645))

(assert (=> b!1374609 m!1258149))

(assert (=> b!1374609 m!1258149))

(assert (=> b!1374609 m!1258151))

(declare-fun m!1258197 () Bool)

(assert (=> bm!65645 m!1258197))

(assert (=> b!1374548 d!148073))

(declare-fun d!148075 () Bool)

(assert (=> d!148075 (= (validKeyInArray!0 k!2959) (and (not (= k!2959 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2959 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1374546 d!148075))

(declare-fun d!148077 () Bool)

(assert (=> d!148077 (= (validKeyInArray!0 (select (arr!45013 a!4142) i!1457)) (and (not (= (select (arr!45013 a!4142) i!1457) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45013 a!4142) i!1457) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1374545 d!148077))

(push 1)

(assert (not b!1374609))

(assert (not bm!65644))

(assert (not b!1374605))

(assert (not bm!65645))

(check-sat)

(pop 1)

(push 1)

(check-sat)

