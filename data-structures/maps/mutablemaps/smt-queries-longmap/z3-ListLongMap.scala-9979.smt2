; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117894 () Bool)

(assert start!117894)

(declare-fun b!1381265 () Bool)

(declare-fun res!923005 () Bool)

(declare-fun e!782995 () Bool)

(assert (=> b!1381265 (=> (not res!923005) (not e!782995))))

(declare-datatypes ((List!32208 0))(
  ( (Nil!32205) (Cons!32204 (h!33413 (_ BitVec 64)) (t!46909 List!32208)) )
))
(declare-fun noDuplicate!2625 (List!32208) Bool)

(assert (=> b!1381265 (= res!923005 (noDuplicate!2625 Nil!32205))))

(declare-fun b!1381266 () Bool)

(declare-fun e!782996 () Bool)

(declare-fun contains!9745 (List!32208 (_ BitVec 64)) Bool)

(assert (=> b!1381266 (= e!782996 (contains!9745 Nil!32205 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1381267 () Bool)

(declare-fun res!923006 () Bool)

(assert (=> b!1381267 (=> (not res!923006) (not e!782995))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-datatypes ((array!94228 0))(
  ( (array!94229 (arr!45494 (Array (_ BitVec 32) (_ BitVec 64))) (size!46045 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94228)

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1381267 (= res!923006 (and (= (size!46045 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46045 a!2971))))))

(declare-fun res!923002 () Bool)

(assert (=> start!117894 (=> (not res!923002) (not e!782995))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117894 (= res!923002 (validMask!0 mask!3034))))

(assert (=> start!117894 e!782995))

(assert (=> start!117894 true))

(declare-fun array_inv!34439 (array!94228) Bool)

(assert (=> start!117894 (array_inv!34439 a!2971)))

(declare-fun b!1381268 () Bool)

(assert (=> b!1381268 (= e!782995 e!782996)))

(declare-fun res!923004 () Bool)

(assert (=> b!1381268 (=> res!923004 e!782996)))

(assert (=> b!1381268 (= res!923004 (contains!9745 Nil!32205 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1381269 () Bool)

(declare-fun res!923003 () Bool)

(assert (=> b!1381269 (=> (not res!923003) (not e!782995))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381269 (= res!923003 (validKeyInArray!0 (select (arr!45494 a!2971) i!1094)))))

(declare-fun b!1381270 () Bool)

(declare-fun res!923007 () Bool)

(assert (=> b!1381270 (=> (not res!923007) (not e!782995))))

(assert (=> b!1381270 (= res!923007 (and (bvsle #b00000000000000000000000000000000 (size!46045 a!2971)) (bvslt (size!46045 a!2971) #b01111111111111111111111111111111)))))

(assert (= (and start!117894 res!923002) b!1381267))

(assert (= (and b!1381267 res!923006) b!1381269))

(assert (= (and b!1381269 res!923003) b!1381270))

(assert (= (and b!1381270 res!923007) b!1381265))

(assert (= (and b!1381265 res!923005) b!1381268))

(assert (= (and b!1381268 (not res!923004)) b!1381266))

(declare-fun m!1266509 () Bool)

(assert (=> b!1381269 m!1266509))

(assert (=> b!1381269 m!1266509))

(declare-fun m!1266511 () Bool)

(assert (=> b!1381269 m!1266511))

(declare-fun m!1266513 () Bool)

(assert (=> b!1381268 m!1266513))

(declare-fun m!1266515 () Bool)

(assert (=> b!1381265 m!1266515))

(declare-fun m!1266517 () Bool)

(assert (=> b!1381266 m!1266517))

(declare-fun m!1266519 () Bool)

(assert (=> start!117894 m!1266519))

(declare-fun m!1266521 () Bool)

(assert (=> start!117894 m!1266521))

(check-sat (not b!1381265) (not b!1381268) (not b!1381266) (not start!117894) (not b!1381269))
(check-sat)
(get-model)

(declare-fun d!149003 () Bool)

(declare-fun lt!608125 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!762 (List!32208) (InoxSet (_ BitVec 64)))

(assert (=> d!149003 (= lt!608125 (select (content!762 Nil!32205) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!783011 () Bool)

(assert (=> d!149003 (= lt!608125 e!783011)))

(declare-fun res!923030 () Bool)

(assert (=> d!149003 (=> (not res!923030) (not e!783011))))

(get-info :version)

(assert (=> d!149003 (= res!923030 ((_ is Cons!32204) Nil!32205))))

(assert (=> d!149003 (= (contains!9745 Nil!32205 #b1000000000000000000000000000000000000000000000000000000000000000) lt!608125)))

(declare-fun b!1381293 () Bool)

(declare-fun e!783010 () Bool)

(assert (=> b!1381293 (= e!783011 e!783010)))

(declare-fun res!923031 () Bool)

(assert (=> b!1381293 (=> res!923031 e!783010)))

(assert (=> b!1381293 (= res!923031 (= (h!33413 Nil!32205) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1381294 () Bool)

(assert (=> b!1381294 (= e!783010 (contains!9745 (t!46909 Nil!32205) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!149003 res!923030) b!1381293))

(assert (= (and b!1381293 (not res!923031)) b!1381294))

(declare-fun m!1266537 () Bool)

(assert (=> d!149003 m!1266537))

(declare-fun m!1266539 () Bool)

(assert (=> d!149003 m!1266539))

(declare-fun m!1266541 () Bool)

(assert (=> b!1381294 m!1266541))

(assert (=> b!1381266 d!149003))

(declare-fun d!149005 () Bool)

(declare-fun res!923036 () Bool)

(declare-fun e!783016 () Bool)

(assert (=> d!149005 (=> res!923036 e!783016)))

(assert (=> d!149005 (= res!923036 ((_ is Nil!32205) Nil!32205))))

(assert (=> d!149005 (= (noDuplicate!2625 Nil!32205) e!783016)))

(declare-fun b!1381299 () Bool)

(declare-fun e!783017 () Bool)

(assert (=> b!1381299 (= e!783016 e!783017)))

(declare-fun res!923037 () Bool)

(assert (=> b!1381299 (=> (not res!923037) (not e!783017))))

(assert (=> b!1381299 (= res!923037 (not (contains!9745 (t!46909 Nil!32205) (h!33413 Nil!32205))))))

(declare-fun b!1381300 () Bool)

(assert (=> b!1381300 (= e!783017 (noDuplicate!2625 (t!46909 Nil!32205)))))

(assert (= (and d!149005 (not res!923036)) b!1381299))

(assert (= (and b!1381299 res!923037) b!1381300))

(declare-fun m!1266543 () Bool)

(assert (=> b!1381299 m!1266543))

(declare-fun m!1266545 () Bool)

(assert (=> b!1381300 m!1266545))

(assert (=> b!1381265 d!149005))

(declare-fun d!149009 () Bool)

(assert (=> d!149009 (= (validKeyInArray!0 (select (arr!45494 a!2971) i!1094)) (and (not (= (select (arr!45494 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45494 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1381269 d!149009))

(declare-fun d!149011 () Bool)

(declare-fun lt!608126 () Bool)

(assert (=> d!149011 (= lt!608126 (select (content!762 Nil!32205) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!783019 () Bool)

(assert (=> d!149011 (= lt!608126 e!783019)))

(declare-fun res!923038 () Bool)

(assert (=> d!149011 (=> (not res!923038) (not e!783019))))

(assert (=> d!149011 (= res!923038 ((_ is Cons!32204) Nil!32205))))

(assert (=> d!149011 (= (contains!9745 Nil!32205 #b0000000000000000000000000000000000000000000000000000000000000000) lt!608126)))

(declare-fun b!1381301 () Bool)

(declare-fun e!783018 () Bool)

(assert (=> b!1381301 (= e!783019 e!783018)))

(declare-fun res!923039 () Bool)

(assert (=> b!1381301 (=> res!923039 e!783018)))

(assert (=> b!1381301 (= res!923039 (= (h!33413 Nil!32205) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1381302 () Bool)

(assert (=> b!1381302 (= e!783018 (contains!9745 (t!46909 Nil!32205) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!149011 res!923038) b!1381301))

(assert (= (and b!1381301 (not res!923039)) b!1381302))

(assert (=> d!149011 m!1266537))

(declare-fun m!1266547 () Bool)

(assert (=> d!149011 m!1266547))

(declare-fun m!1266549 () Bool)

(assert (=> b!1381302 m!1266549))

(assert (=> b!1381268 d!149011))

(declare-fun d!149013 () Bool)

(assert (=> d!149013 (= (validMask!0 mask!3034) (and (or (= mask!3034 #b00000000000000000000000000000111) (= mask!3034 #b00000000000000000000000000001111) (= mask!3034 #b00000000000000000000000000011111) (= mask!3034 #b00000000000000000000000000111111) (= mask!3034 #b00000000000000000000000001111111) (= mask!3034 #b00000000000000000000000011111111) (= mask!3034 #b00000000000000000000000111111111) (= mask!3034 #b00000000000000000000001111111111) (= mask!3034 #b00000000000000000000011111111111) (= mask!3034 #b00000000000000000000111111111111) (= mask!3034 #b00000000000000000001111111111111) (= mask!3034 #b00000000000000000011111111111111) (= mask!3034 #b00000000000000000111111111111111) (= mask!3034 #b00000000000000001111111111111111) (= mask!3034 #b00000000000000011111111111111111) (= mask!3034 #b00000000000000111111111111111111) (= mask!3034 #b00000000000001111111111111111111) (= mask!3034 #b00000000000011111111111111111111) (= mask!3034 #b00000000000111111111111111111111) (= mask!3034 #b00000000001111111111111111111111) (= mask!3034 #b00000000011111111111111111111111) (= mask!3034 #b00000000111111111111111111111111) (= mask!3034 #b00000001111111111111111111111111) (= mask!3034 #b00000011111111111111111111111111) (= mask!3034 #b00000111111111111111111111111111) (= mask!3034 #b00001111111111111111111111111111) (= mask!3034 #b00011111111111111111111111111111) (= mask!3034 #b00111111111111111111111111111111)) (bvsle mask!3034 #b00111111111111111111111111111111)))))

(assert (=> start!117894 d!149013))

(declare-fun d!149019 () Bool)

(assert (=> d!149019 (= (array_inv!34439 a!2971) (bvsge (size!46045 a!2971) #b00000000000000000000000000000000))))

(assert (=> start!117894 d!149019))

(check-sat (not d!149003) (not b!1381302) (not b!1381294) (not b!1381299) (not d!149011) (not b!1381300))
(check-sat)
