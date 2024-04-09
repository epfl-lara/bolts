; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7040 () Bool)

(assert start!7040)

(declare-fun res!26596 () Bool)

(declare-fun e!28858 () Bool)

(assert (=> start!7040 (=> (not res!26596) (not e!28858))))

(declare-datatypes ((array!3020 0))(
  ( (array!3021 (arr!1452 (Array (_ BitVec 32) (_ BitVec 64))) (size!1674 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!3020)

(declare-fun size!30 () (_ BitVec 32))

(declare-fun i!1489 () (_ BitVec 32))

(assert (=> start!7040 (= res!26596 (and (bvslt (size!1674 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1674 a!4412)) (= (size!1674 a!4412) size!30) (= a!4412 (array!3021 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (= i!1489 size!30)))))

(assert (=> start!7040 e!28858))

(declare-fun array_inv!816 (array!3020) Bool)

(assert (=> start!7040 (array_inv!816 a!4412)))

(assert (=> start!7040 true))

(declare-fun b!45397 () Bool)

(declare-fun arrayCountValidKeys!0 (array!3020 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!45397 (= e!28858 (not (= (arrayCountValidKeys!0 a!4412 i!1489 size!30) #b00000000000000000000000000000000)))))

(assert (= (and start!7040 res!26596) b!45397))

(declare-fun m!39943 () Bool)

(assert (=> start!7040 m!39943))

(declare-fun m!39945 () Bool)

(assert (=> b!45397 m!39945))

(push 1)

(assert (not start!7040))

(assert (not b!45397))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!8871 () Bool)

(assert (=> d!8871 (= (array_inv!816 a!4412) (bvsge (size!1674 a!4412) #b00000000000000000000000000000000))))

(assert (=> start!7040 d!8871))

(declare-fun bm!3707 () Bool)

(declare-fun call!3710 () (_ BitVec 32))

(assert (=> bm!3707 (= call!3710 (arrayCountValidKeys!0 a!4412 (bvadd i!1489 #b00000000000000000000000000000001) size!30))))

(declare-fun b!45426 () Bool)

(declare-fun e!28875 () (_ BitVec 32))

(assert (=> b!45426 (= e!28875 (bvadd #b00000000000000000000000000000001 call!3710))))

(declare-fun d!8875 () Bool)

(declare-fun lt!20137 () (_ BitVec 32))

(assert (=> d!8875 (and (bvsge lt!20137 #b00000000000000000000000000000000) (bvsle lt!20137 (bvsub (size!1674 a!4412) i!1489)))))

(declare-fun e!28874 () (_ BitVec 32))

(assert (=> d!8875 (= lt!20137 e!28874)))

(declare-fun c!6136 () Bool)

(assert (=> d!8875 (= c!6136 (bvsge i!1489 size!30))))

(assert (=> d!8875 (and (bvsle i!1489 size!30) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle size!30 (size!1674 a!4412)))))

(assert (=> d!8875 (= (arrayCountValidKeys!0 a!4412 i!1489 size!30) lt!20137)))

(declare-fun b!45427 () Bool)

(assert (=> b!45427 (= e!28874 #b00000000000000000000000000000000)))

