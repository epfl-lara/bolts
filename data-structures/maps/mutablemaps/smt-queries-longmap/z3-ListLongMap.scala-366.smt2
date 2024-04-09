; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7038 () Bool)

(assert start!7038)

(declare-fun res!26593 () Bool)

(declare-fun e!28852 () Bool)

(assert (=> start!7038 (=> (not res!26593) (not e!28852))))

(declare-datatypes ((array!3018 0))(
  ( (array!3019 (arr!1451 (Array (_ BitVec 32) (_ BitVec 64))) (size!1673 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!3018)

(declare-fun size!30 () (_ BitVec 32))

(declare-fun i!1489 () (_ BitVec 32))

(assert (=> start!7038 (= res!26593 (and (bvslt (size!1673 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1673 a!4412)) (= (size!1673 a!4412) size!30) (= a!4412 (array!3019 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (= i!1489 size!30)))))

(assert (=> start!7038 e!28852))

(declare-fun array_inv!815 (array!3018) Bool)

(assert (=> start!7038 (array_inv!815 a!4412)))

(assert (=> start!7038 true))

(declare-fun b!45394 () Bool)

(declare-fun arrayCountValidKeys!0 (array!3018 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!45394 (= e!28852 (not (= (arrayCountValidKeys!0 a!4412 i!1489 size!30) #b00000000000000000000000000000000)))))

(assert (= (and start!7038 res!26593) b!45394))

(declare-fun m!39939 () Bool)

(assert (=> start!7038 m!39939))

(declare-fun m!39941 () Bool)

(assert (=> b!45394 m!39941))

(check-sat (not start!7038) (not b!45394))
(check-sat)
(get-model)

(declare-fun d!8869 () Bool)

(assert (=> d!8869 (= (array_inv!815 a!4412) (bvsge (size!1673 a!4412) #b00000000000000000000000000000000))))

(assert (=> start!7038 d!8869))

(declare-fun b!45430 () Bool)

(declare-fun e!28877 () (_ BitVec 32))

(assert (=> b!45430 (= e!28877 #b00000000000000000000000000000000)))

(declare-fun b!45431 () Bool)

(declare-fun e!28876 () (_ BitVec 32))

(declare-fun call!3711 () (_ BitVec 32))

(assert (=> b!45431 (= e!28876 (bvadd #b00000000000000000000000000000001 call!3711))))

(declare-fun bm!3708 () Bool)

(assert (=> bm!3708 (= call!3711 (arrayCountValidKeys!0 a!4412 (bvadd i!1489 #b00000000000000000000000000000001) size!30))))

(declare-fun b!45433 () Bool)

(assert (=> b!45433 (= e!28876 call!3711)))

(declare-fun d!8873 () Bool)

(declare-fun lt!20138 () (_ BitVec 32))

(assert (=> d!8873 (and (bvsge lt!20138 #b00000000000000000000000000000000) (bvsle lt!20138 (bvsub (size!1673 a!4412) i!1489)))))

(assert (=> d!8873 (= lt!20138 e!28877)))

(declare-fun c!6138 () Bool)

(assert (=> d!8873 (= c!6138 (bvsge i!1489 size!30))))

(assert (=> d!8873 (and (bvsle i!1489 size!30) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle size!30 (size!1673 a!4412)))))

(assert (=> d!8873 (= (arrayCountValidKeys!0 a!4412 i!1489 size!30) lt!20138)))

(declare-fun b!45432 () Bool)

(assert (=> b!45432 (= e!28877 e!28876)))

(declare-fun c!6137 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!45432 (= c!6137 (validKeyInArray!0 (select (arr!1451 a!4412) i!1489)))))

(assert (= (and d!8873 c!6138) b!45430))

