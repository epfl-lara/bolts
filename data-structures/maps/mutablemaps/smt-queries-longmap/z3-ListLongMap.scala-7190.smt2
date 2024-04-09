; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92192 () Bool)

(assert start!92192)

(declare-fun res!697273 () Bool)

(declare-fun e!594367 () Bool)

(assert (=> start!92192 (=> (not res!697273) (not e!594367))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!65983 0))(
  ( (array!65984 (arr!31730 (Array (_ BitVec 32) (_ BitVec 64))) (size!32267 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!65983)

(assert (=> start!92192 (= res!697273 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32267 a!3488)) (bvslt (size!32267 a!3488) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!32267 a!3488))))))

(assert (=> start!92192 e!594367))

(assert (=> start!92192 true))

(declare-fun array_inv!24352 (array!65983) Bool)

(assert (=> start!92192 (array_inv!24352 a!3488)))

(declare-fun b!1048002 () Bool)

(declare-fun res!697274 () Bool)

(assert (=> b!1048002 (=> (not res!697274) (not e!594367))))

(declare-datatypes ((List!22173 0))(
  ( (Nil!22170) (Cons!22169 (h!23378 (_ BitVec 64)) (t!31487 List!22173)) )
))
(declare-fun noDuplicate!1507 (List!22173) Bool)

(assert (=> b!1048002 (= res!697274 (noDuplicate!1507 Nil!22170))))

(declare-fun b!1048003 () Bool)

(declare-fun e!594366 () Bool)

(assert (=> b!1048003 (= e!594367 e!594366)))

(declare-fun res!697275 () Bool)

(assert (=> b!1048003 (=> res!697275 e!594366)))

(declare-fun contains!6119 (List!22173 (_ BitVec 64)) Bool)

(assert (=> b!1048003 (= res!697275 (contains!6119 Nil!22170 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1048004 () Bool)

(assert (=> b!1048004 (= e!594366 (contains!6119 Nil!22170 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!92192 res!697273) b!1048002))

(assert (= (and b!1048002 res!697274) b!1048003))

(assert (= (and b!1048003 (not res!697275)) b!1048004))

(declare-fun m!969173 () Bool)

(assert (=> start!92192 m!969173))

(declare-fun m!969175 () Bool)

(assert (=> b!1048002 m!969175))

(declare-fun m!969177 () Bool)

(assert (=> b!1048003 m!969177))

(declare-fun m!969179 () Bool)

(assert (=> b!1048004 m!969179))

(check-sat (not b!1048003) (not b!1048002) (not b!1048004) (not start!92192))
(check-sat)
(get-model)

(declare-fun d!127571 () Bool)

(declare-fun lt!463078 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!530 (List!22173) (InoxSet (_ BitVec 64)))

(assert (=> d!127571 (= lt!463078 (select (content!530 Nil!22170) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!594382 () Bool)

(assert (=> d!127571 (= lt!463078 e!594382)))

(declare-fun res!697289 () Bool)

(assert (=> d!127571 (=> (not res!697289) (not e!594382))))

(get-info :version)

(assert (=> d!127571 (= res!697289 ((_ is Cons!22169) Nil!22170))))

(assert (=> d!127571 (= (contains!6119 Nil!22170 #b0000000000000000000000000000000000000000000000000000000000000000) lt!463078)))

(declare-fun b!1048018 () Bool)

(declare-fun e!594383 () Bool)

(assert (=> b!1048018 (= e!594382 e!594383)))

(declare-fun res!697290 () Bool)

(assert (=> b!1048018 (=> res!697290 e!594383)))

(assert (=> b!1048018 (= res!697290 (= (h!23378 Nil!22170) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1048019 () Bool)

(assert (=> b!1048019 (= e!594383 (contains!6119 (t!31487 Nil!22170) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!127571 res!697289) b!1048018))

(assert (= (and b!1048018 (not res!697290)) b!1048019))

(declare-fun m!969189 () Bool)

(assert (=> d!127571 m!969189))

(declare-fun m!969191 () Bool)

(assert (=> d!127571 m!969191))

(declare-fun m!969193 () Bool)

(assert (=> b!1048019 m!969193))

(assert (=> b!1048003 d!127571))

(declare-fun d!127575 () Bool)

(declare-fun res!697303 () Bool)

(declare-fun e!594396 () Bool)

(assert (=> d!127575 (=> res!697303 e!594396)))

(assert (=> d!127575 (= res!697303 ((_ is Nil!22170) Nil!22170))))

(assert (=> d!127575 (= (noDuplicate!1507 Nil!22170) e!594396)))

(declare-fun b!1048032 () Bool)

(declare-fun e!594397 () Bool)

(assert (=> b!1048032 (= e!594396 e!594397)))

(declare-fun res!697304 () Bool)

(assert (=> b!1048032 (=> (not res!697304) (not e!594397))))

(assert (=> b!1048032 (= res!697304 (not (contains!6119 (t!31487 Nil!22170) (h!23378 Nil!22170))))))

(declare-fun b!1048033 () Bool)

(assert (=> b!1048033 (= e!594397 (noDuplicate!1507 (t!31487 Nil!22170)))))

(assert (= (and d!127575 (not res!697303)) b!1048032))

(assert (= (and b!1048032 res!697304) b!1048033))

(declare-fun m!969195 () Bool)

(assert (=> b!1048032 m!969195))

(declare-fun m!969197 () Bool)

(assert (=> b!1048033 m!969197))

(assert (=> b!1048002 d!127575))

(declare-fun d!127579 () Bool)

(declare-fun lt!463081 () Bool)

(assert (=> d!127579 (= lt!463081 (select (content!530 Nil!22170) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!594400 () Bool)

(assert (=> d!127579 (= lt!463081 e!594400)))

(declare-fun res!697307 () Bool)

(assert (=> d!127579 (=> (not res!697307) (not e!594400))))

(assert (=> d!127579 (= res!697307 ((_ is Cons!22169) Nil!22170))))

(assert (=> d!127579 (= (contains!6119 Nil!22170 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463081)))

(declare-fun b!1048036 () Bool)

(declare-fun e!594401 () Bool)

(assert (=> b!1048036 (= e!594400 e!594401)))

(declare-fun res!697308 () Bool)

(assert (=> b!1048036 (=> res!697308 e!594401)))

(assert (=> b!1048036 (= res!697308 (= (h!23378 Nil!22170) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1048037 () Bool)

(assert (=> b!1048037 (= e!594401 (contains!6119 (t!31487 Nil!22170) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!127579 res!697307) b!1048036))

(assert (= (and b!1048036 (not res!697308)) b!1048037))

(assert (=> d!127579 m!969189))

(declare-fun m!969203 () Bool)

(assert (=> d!127579 m!969203))

(declare-fun m!969205 () Bool)

(assert (=> b!1048037 m!969205))

(assert (=> b!1048004 d!127579))

(declare-fun d!127583 () Bool)

(assert (=> d!127583 (= (array_inv!24352 a!3488) (bvsge (size!32267 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92192 d!127583))

(check-sat (not d!127571) (not b!1048037) (not b!1048033) (not b!1048019) (not d!127579) (not b!1048032))
(check-sat)
