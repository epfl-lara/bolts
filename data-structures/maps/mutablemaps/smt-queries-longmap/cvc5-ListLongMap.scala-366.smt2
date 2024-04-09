; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7036 () Bool)

(assert start!7036)

(declare-fun res!26590 () Bool)

(declare-fun e!28846 () Bool)

(assert (=> start!7036 (=> (not res!26590) (not e!28846))))

(declare-datatypes ((array!3016 0))(
  ( (array!3017 (arr!1450 (Array (_ BitVec 32) (_ BitVec 64))) (size!1672 (_ BitVec 32))) )
))
(declare-fun a!4412 () array!3016)

(declare-fun i!1489 () (_ BitVec 32))

(declare-fun size!30 () (_ BitVec 32))

(assert (=> start!7036 (= res!26590 (and (bvslt (size!1672 a!4412) #b01111111111111111111111111111111) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle i!1489 (size!1672 a!4412)) (= (size!1672 a!4412) size!30) (= a!4412 (array!3017 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) size!30)) (= i!1489 size!30)))))

(assert (=> start!7036 e!28846))

(declare-fun array_inv!814 (array!3016) Bool)

(assert (=> start!7036 (array_inv!814 a!4412)))

(assert (=> start!7036 true))

(declare-fun b!45391 () Bool)

(declare-fun arrayCountValidKeys!0 (array!3016 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!45391 (= e!28846 (not (= (arrayCountValidKeys!0 a!4412 i!1489 size!30) #b00000000000000000000000000000000)))))

(assert (= (and start!7036 res!26590) b!45391))

(declare-fun m!39935 () Bool)

(assert (=> start!7036 m!39935))

(declare-fun m!39937 () Bool)

(assert (=> b!45391 m!39937))

(push 1)

(assert (not b!45391))

(assert (not start!7036))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!45406 () Bool)

(declare-fun e!28865 () (_ BitVec 32))

(declare-fun call!3705 () (_ BitVec 32))

(assert (=> b!45406 (= e!28865 call!3705)))

(declare-fun b!45407 () Bool)

(declare-fun e!28864 () (_ BitVec 32))

(assert (=> b!45407 (= e!28864 e!28865)))

(declare-fun c!6125 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!45407 (= c!6125 (validKeyInArray!0 (select (arr!1450 a!4412) i!1489)))))

(declare-fun d!8867 () Bool)

(declare-fun lt!20132 () (_ BitVec 32))

(assert (=> d!8867 (and (bvsge lt!20132 #b00000000000000000000000000000000) (bvsle lt!20132 (bvsub (size!1672 a!4412) i!1489)))))

(assert (=> d!8867 (= lt!20132 e!28864)))

(declare-fun c!6126 () Bool)

(assert (=> d!8867 (= c!6126 (bvsge i!1489 size!30))))

(assert (=> d!8867 (and (bvsle i!1489 size!30) (bvsge i!1489 #b00000000000000000000000000000000) (bvsle size!30 (size!1672 a!4412)))))

(assert (=> d!8867 (= (arrayCountValidKeys!0 a!4412 i!1489 size!30) lt!20132)))

(declare-fun b!45408 () Bool)

(assert (=> b!45408 (= e!28864 #b00000000000000000000000000000000)))

(declare-fun b!45409 () Bool)

(assert (=> b!45409 (= e!28865 (bvadd #b00000000000000000000000000000001 call!3705))))

(declare-fun bm!3702 () Bool)

(assert (=> bm!3702 (= call!3705 (arrayCountValidKeys!0 a!4412 (bvadd i!1489 #b00000000000000000000000000000001) size!30))))

(assert (= (and d!8867 c!6126) b!45408))

(assert (= (and d!8867 (not c!6126)) b!45407))

(assert (= (and b!45407 c!6125) b!45409))

(assert (= (and b!45407 (not c!6125)) b!45406))

(assert (= (or b!45409 b!45406) bm!3702))

(declare-fun m!39947 () Bool)

(assert (=> b!45407 m!39947))

(assert (=> b!45407 m!39947))

(declare-fun m!39949 () Bool)

(assert (=> b!45407 m!39949))

(declare-fun m!39951 () Bool)

(assert (=> bm!3702 m!39951))

(assert (=> b!45391 d!8867))

(declare-fun d!8877 () Bool)

(assert (=> d!8877 (= (array_inv!814 a!4412) (bvsge (size!1672 a!4412) #b00000000000000000000000000000000))))

(assert (=> start!7036 d!8877))

(push 1)

(assert (not bm!3702))

(assert (not b!45407))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

