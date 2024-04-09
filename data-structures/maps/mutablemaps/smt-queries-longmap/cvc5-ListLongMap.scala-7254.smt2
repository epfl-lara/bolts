; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92622 () Bool)

(assert start!92622)

(declare-fun b!1052917 () Bool)

(declare-fun e!597928 () Bool)

(declare-fun e!597927 () Bool)

(assert (=> b!1052917 (= e!597928 e!597927)))

(declare-fun res!702156 () Bool)

(assert (=> b!1052917 (=> (not res!702156) (not e!597927))))

(declare-datatypes ((array!66371 0))(
  ( (array!66372 (arr!31921 (Array (_ BitVec 32) (_ BitVec 64))) (size!32458 (_ BitVec 32))) )
))
(declare-fun lt!464998 () array!66371)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66371 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052917 (= res!702156 (arrayContainsKey!0 lt!464998 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66371)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052917 (= lt!464998 (array!66372 (store (arr!31921 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32458 a!3488)))))

(declare-fun b!1052919 () Bool)

(declare-fun res!702155 () Bool)

(assert (=> b!1052919 (=> (not res!702155) (not e!597928))))

(assert (=> b!1052919 (= res!702155 (= (select (arr!31921 a!3488) i!1381) k!2747))))

(declare-fun b!1052920 () Bool)

(declare-fun res!702153 () Bool)

(assert (=> b!1052920 (=> (not res!702153) (not e!597928))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052920 (= res!702153 (validKeyInArray!0 k!2747))))

(declare-fun b!1052921 () Bool)

(declare-fun res!702152 () Bool)

(assert (=> b!1052921 (=> (not res!702152) (not e!597928))))

(declare-datatypes ((List!22364 0))(
  ( (Nil!22361) (Cons!22360 (h!23569 (_ BitVec 64)) (t!31678 List!22364)) )
))
(declare-fun arrayNoDuplicates!0 (array!66371 (_ BitVec 32) List!22364) Bool)

(assert (=> b!1052921 (= res!702152 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22361))))

(declare-fun res!702154 () Bool)

(assert (=> start!92622 (=> (not res!702154) (not e!597928))))

(assert (=> start!92622 (= res!702154 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32458 a!3488)) (bvslt (size!32458 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92622 e!597928))

(assert (=> start!92622 true))

(declare-fun array_inv!24543 (array!66371) Bool)

(assert (=> start!92622 (array_inv!24543 a!3488)))

(declare-fun b!1052918 () Bool)

(declare-fun arrayScanForKey!0 (array!66371 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052918 (= e!597927 (= (arrayScanForKey!0 lt!464998 k!2747 #b00000000000000000000000000000000) i!1381))))

(assert (= (and start!92622 res!702154) b!1052921))

(assert (= (and b!1052921 res!702152) b!1052920))

(assert (= (and b!1052920 res!702153) b!1052919))

(assert (= (and b!1052919 res!702155) b!1052917))

(assert (= (and b!1052917 res!702156) b!1052918))

(declare-fun m!973449 () Bool)

(assert (=> b!1052921 m!973449))

(declare-fun m!973451 () Bool)

(assert (=> b!1052918 m!973451))

(declare-fun m!973453 () Bool)

(assert (=> b!1052920 m!973453))

(declare-fun m!973455 () Bool)

(assert (=> start!92622 m!973455))

(declare-fun m!973457 () Bool)

(assert (=> b!1052917 m!973457))

(declare-fun m!973459 () Bool)

(assert (=> b!1052917 m!973459))

(declare-fun m!973461 () Bool)

(assert (=> b!1052919 m!973461))

(push 1)

(assert (not b!1052920))

(assert (not start!92622))

(assert (not b!1052917))

(assert (not b!1052918))

(assert (not b!1052921))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1052981 () Bool)

(declare-fun e!597974 () Bool)

(declare-fun call!44729 () Bool)

(assert (=> b!1052981 (= e!597974 call!44729)))

(declare-fun b!1052982 () Bool)

(declare-fun e!597975 () Bool)

(assert (=> b!1052982 (= e!597975 e!597974)))

(declare-fun c!106850 () Bool)

(assert (=> b!1052982 (= c!106850 (validKeyInArray!0 (select (arr!31921 a!3488) #b00000000000000000000000000000000)))))

(declare-fun d!127755 () Bool)

(declare-fun res!702207 () Bool)

(declare-fun e!597972 () Bool)

(assert (=> d!127755 (=> res!702207 e!597972)))

(assert (=> d!127755 (= res!702207 (bvsge #b00000000000000000000000000000000 (size!32458 a!3488)))))

(assert (=> d!127755 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22361) e!597972)))

(declare-fun b!1052983 () Bool)

(assert (=> b!1052983 (= e!597972 e!597975)))

(declare-fun res!702206 () Bool)

(assert (=> b!1052983 (=> (not res!702206) (not e!597975))))

(declare-fun e!597973 () Bool)

(assert (=> b!1052983 (= res!702206 (not e!597973))))

(declare-fun res!702208 () Bool)

(assert (=> b!1052983 (=> (not res!702208) (not e!597973))))

(assert (=> b!1052983 (= res!702208 (validKeyInArray!0 (select (arr!31921 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1052984 () Bool)

(assert (=> b!1052984 (= e!597974 call!44729)))

(declare-fun bm!44726 () Bool)

(assert (=> bm!44726 (= call!44729 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106850 (Cons!22360 (select (arr!31921 a!3488) #b00000000000000000000000000000000) Nil!22361) Nil!22361)))))

(declare-fun b!1052985 () Bool)

(declare-fun contains!6179 (List!22364 (_ BitVec 64)) Bool)

(assert (=> b!1052985 (= e!597973 (contains!6179 Nil!22361 (select (arr!31921 a!3488) #b00000000000000000000000000000000)))))

(assert (= (and d!127755 (not res!702207)) b!1052983))

(assert (= (and b!1052983 res!702208) b!1052985))

