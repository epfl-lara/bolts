; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93108 () Bool)

(assert start!93108)

(declare-fun b!1055915 () Bool)

(declare-fun e!600247 () Bool)

(declare-fun e!600249 () Bool)

(assert (=> b!1055915 (= e!600247 e!600249)))

(declare-fun res!704838 () Bool)

(assert (=> b!1055915 (=> (not res!704838) (not e!600249))))

(declare-datatypes ((array!66581 0))(
  ( (array!66582 (arr!32014 (Array (_ BitVec 32) (_ BitVec 64))) (size!32551 (_ BitVec 32))) )
))
(declare-fun lt!465984 () array!66581)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055915 (= res!704838 (arrayContainsKey!0 lt!465984 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66581)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1055915 (= lt!465984 (array!66582 (store (arr!32014 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32551 a!3488)))))

(declare-fun b!1055916 () Bool)

(declare-fun res!704841 () Bool)

(assert (=> b!1055916 (=> (not res!704841) (not e!600247))))

(declare-datatypes ((List!22457 0))(
  ( (Nil!22454) (Cons!22453 (h!23662 (_ BitVec 64)) (t!31771 List!22457)) )
))
(declare-fun arrayNoDuplicates!0 (array!66581 (_ BitVec 32) List!22457) Bool)

(assert (=> b!1055916 (= res!704841 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22454))))

(declare-fun b!1055917 () Bool)

(declare-fun res!704839 () Bool)

(assert (=> b!1055917 (=> (not res!704839) (not e!600247))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055917 (= res!704839 (validKeyInArray!0 k!2747))))

(declare-fun e!600251 () Bool)

(declare-fun b!1055918 () Bool)

(assert (=> b!1055918 (= e!600251 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1055919 () Bool)

(declare-fun e!600248 () Bool)

(assert (=> b!1055919 (= e!600248 (not e!600251))))

(declare-fun res!704842 () Bool)

(assert (=> b!1055919 (=> res!704842 e!600251)))

(declare-fun lt!465985 () (_ BitVec 32))

(assert (=> b!1055919 (= res!704842 (or (bvsgt lt!465985 i!1381) (bvsle i!1381 lt!465985)))))

(assert (=> b!1055919 (= (select (store (arr!32014 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465985) k!2747)))

(declare-fun b!1055920 () Bool)

(assert (=> b!1055920 (= e!600249 e!600248)))

(declare-fun res!704840 () Bool)

(assert (=> b!1055920 (=> (not res!704840) (not e!600248))))

(assert (=> b!1055920 (= res!704840 (not (= lt!465985 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66581 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055920 (= lt!465985 (arrayScanForKey!0 lt!465984 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055921 () Bool)

(declare-fun res!704843 () Bool)

(assert (=> b!1055921 (=> (not res!704843) (not e!600247))))

(assert (=> b!1055921 (= res!704843 (= (select (arr!32014 a!3488) i!1381) k!2747))))

(declare-fun res!704844 () Bool)

(assert (=> start!93108 (=> (not res!704844) (not e!600247))))

(assert (=> start!93108 (= res!704844 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32551 a!3488)) (bvslt (size!32551 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93108 e!600247))

(assert (=> start!93108 true))

(declare-fun array_inv!24636 (array!66581) Bool)

(assert (=> start!93108 (array_inv!24636 a!3488)))

(assert (= (and start!93108 res!704844) b!1055916))

(assert (= (and b!1055916 res!704841) b!1055917))

(assert (= (and b!1055917 res!704839) b!1055921))

(assert (= (and b!1055921 res!704843) b!1055915))

(assert (= (and b!1055915 res!704838) b!1055920))

(assert (= (and b!1055920 res!704840) b!1055919))

(assert (= (and b!1055919 (not res!704842)) b!1055918))

(declare-fun m!976041 () Bool)

(assert (=> b!1055917 m!976041))

(declare-fun m!976043 () Bool)

(assert (=> start!93108 m!976043))

(declare-fun m!976045 () Bool)

(assert (=> b!1055918 m!976045))

(declare-fun m!976047 () Bool)

(assert (=> b!1055915 m!976047))

(declare-fun m!976049 () Bool)

(assert (=> b!1055915 m!976049))

(declare-fun m!976051 () Bool)

(assert (=> b!1055916 m!976051))

(assert (=> b!1055919 m!976049))

(declare-fun m!976053 () Bool)

(assert (=> b!1055919 m!976053))

(declare-fun m!976055 () Bool)

(assert (=> b!1055921 m!976055))

(declare-fun m!976057 () Bool)

(assert (=> b!1055920 m!976057))

(push 1)

(assert (not start!93108))

(assert (not b!1055920))

(assert (not b!1055917))

(assert (not b!1055915))

(assert (not b!1055916))

(assert (not b!1055918))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128203 () Bool)

(assert (=> d!128203 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1055917 d!128203))

(declare-fun d!128205 () Bool)

(declare-fun res!704908 () Bool)

(declare-fun e!600306 () Bool)

(assert (=> d!128205 (=> res!704908 e!600306)))

(assert (=> d!128205 (= res!704908 (= (select (arr!32014 a!3488) i!1381) k!2747))))

(assert (=> d!128205 (= (arrayContainsKey!0 a!3488 k!2747 i!1381) e!600306)))

(declare-fun b!1055991 () Bool)

(declare-fun e!600307 () Bool)

(assert (=> b!1055991 (= e!600306 e!600307)))

(declare-fun res!704909 () Bool)

(assert (=> b!1055991 (=> (not res!704909) (not e!600307))))

(assert (=> b!1055991 (= res!704909 (bvslt (bvadd i!1381 #b00000000000000000000000000000001) (size!32551 a!3488)))))

(declare-fun b!1055992 () Bool)

(assert (=> b!1055992 (= e!600307 (arrayContainsKey!0 a!3488 k!2747 (bvadd i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128205 (not res!704908)) b!1055991))

(assert (= (and b!1055991 res!704909) b!1055992))

(assert (=> d!128205 m!976055))

(declare-fun m!976101 () Bool)

(assert (=> b!1055992 m!976101))

(assert (=> b!1055918 d!128205))

(declare-fun bm!44810 () Bool)

(declare-fun call!44813 () Bool)

(declare-fun c!107008 () Bool)

(assert (=> bm!44810 (= call!44813 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107008 (Cons!22453 (select (arr!32014 a!3488) #b00000000000000000000000000000000) Nil!22454) Nil!22454)))))

(declare-fun b!1056011 () Bool)

(declare-fun e!600322 () Bool)

(assert (=> b!1056011 (= e!600322 call!44813)))

(declare-fun b!1056012 () Bool)

(declare-fun e!600325 () Bool)

(declare-fun contains!6207 (List!22457 (_ BitVec 64)) Bool)

(assert (=> b!1056012 (= e!600325 (contains!6207 Nil!22454 (select (arr!32014 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1056013 () Bool)

(declare-fun e!600324 () Bool)

(assert (=> b!1056013 (= e!600324 e!600322)))

(assert (=> b!1056013 (= c!107008 (validKeyInArray!0 (select (arr!32014 a!3488) #b00000000000000000000000000000000)))))

(declare-fun d!128207 () Bool)

(declare-fun res!704921 () Bool)

(declare-fun e!600323 () Bool)

(assert (=> d!128207 (=> res!704921 e!600323)))

(assert (=> d!128207 (= res!704921 (bvsge #b00000000000000000000000000000000 (size!32551 a!3488)))))

(assert (=> d!128207 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22454) e!600323)))

(declare-fun b!1056014 () Bool)

(assert (=> b!1056014 (= e!600323 e!600324)))

(declare-fun res!704920 () Bool)

(assert (=> b!1056014 (=> (not res!704920) (not e!600324))))

(assert (=> b!1056014 (= res!704920 (not e!600325))))

(declare-fun res!704922 () Bool)

(assert (=> b!1056014 (=> (not res!704922) (not e!600325))))

(assert (=> b!1056014 (= res!704922 (validKeyInArray!0 (select (arr!32014 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1056015 () Bool)

(assert (=> b!1056015 (= e!600322 call!44813)))

(assert (= (and d!128207 (not res!704921)) b!1056014))

(assert (= (and b!1056014 res!704922) b!1056012))

(assert (= (and b!1056014 res!704920) b!1056013))

(assert (= (and b!1056013 c!107008) b!1056015))

(assert (= (and b!1056013 (not c!107008)) b!1056011))

(assert (= (or b!1056015 b!1056011) bm!44810))

(declare-fun m!976111 () Bool)

(assert (=> bm!44810 m!976111))

(declare-fun m!976113 () Bool)

(assert (=> bm!44810 m!976113))

(assert (=> b!1056012 m!976111))

(assert (=> b!1056012 m!976111))

(declare-fun m!976115 () Bool)

(assert (=> b!1056012 m!976115))

(assert (=> b!1056013 m!976111))

(assert (=> b!1056013 m!976111))

(declare-fun m!976117 () Bool)

(assert (=> b!1056013 m!976117))

(assert (=> b!1056014 m!976111))

(assert (=> b!1056014 m!976111))

(assert (=> b!1056014 m!976117))

(assert (=> b!1055916 d!128207))

(declare-fun d!128213 () Bool)

(assert (=> d!128213 (= (array_inv!24636 a!3488) (bvsge (size!32551 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93108 d!128213))

(declare-fun d!128217 () Bool)

(declare-fun lt!466005 () (_ BitVec 32))

(assert (=> d!128217 (and (or (bvslt lt!466005 #b00000000000000000000000000000000) (bvsge lt!466005 (size!32551 lt!465984)) (and (bvsge lt!466005 #b00000000000000000000000000000000) (bvslt lt!466005 (size!32551 lt!465984)))) (bvsge lt!466005 #b00000000000000000000000000000000) (bvslt lt!466005 (size!32551 lt!465984)) (= (select (arr!32014 lt!465984) lt!466005) k!2747))))

(declare-fun e!600333 () (_ BitVec 32))

(assert (=> d!128217 (= lt!466005 e!600333)))

(declare-fun c!107014 () Bool)

(assert (=> d!128217 (= c!107014 (= (select (arr!32014 lt!465984) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128217 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32551 lt!465984)) (bvslt (size!32551 lt!465984) #b01111111111111111111111111111111))))

