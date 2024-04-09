; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117892 () Bool)

(assert start!117892)

(declare-fun b!1381247 () Bool)

(declare-fun e!782985 () Bool)

(declare-datatypes ((List!32207 0))(
  ( (Nil!32204) (Cons!32203 (h!33412 (_ BitVec 64)) (t!46908 List!32207)) )
))
(declare-fun contains!9744 (List!32207 (_ BitVec 64)) Bool)

(assert (=> b!1381247 (= e!782985 (contains!9744 Nil!32204 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1381248 () Bool)

(declare-fun res!922984 () Bool)

(declare-fun e!782987 () Bool)

(assert (=> b!1381248 (=> (not res!922984) (not e!782987))))

(declare-datatypes ((array!94226 0))(
  ( (array!94227 (arr!45493 (Array (_ BitVec 32) (_ BitVec 64))) (size!46044 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94226)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381248 (= res!922984 (validKeyInArray!0 (select (arr!45493 a!2971) i!1094)))))

(declare-fun res!922985 () Bool)

(assert (=> start!117892 (=> (not res!922985) (not e!782987))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117892 (= res!922985 (validMask!0 mask!3034))))

(assert (=> start!117892 e!782987))

(assert (=> start!117892 true))

(declare-fun array_inv!34438 (array!94226) Bool)

(assert (=> start!117892 (array_inv!34438 a!2971)))

(declare-fun b!1381249 () Bool)

(declare-fun res!922987 () Bool)

(assert (=> b!1381249 (=> (not res!922987) (not e!782987))))

(assert (=> b!1381249 (= res!922987 (and (= (size!46044 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46044 a!2971))))))

(declare-fun b!1381250 () Bool)

(assert (=> b!1381250 (= e!782987 e!782985)))

(declare-fun res!922988 () Bool)

(assert (=> b!1381250 (=> res!922988 e!782985)))

(assert (=> b!1381250 (= res!922988 (contains!9744 Nil!32204 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1381251 () Bool)

(declare-fun res!922989 () Bool)

(assert (=> b!1381251 (=> (not res!922989) (not e!782987))))

(assert (=> b!1381251 (= res!922989 (and (bvsle #b00000000000000000000000000000000 (size!46044 a!2971)) (bvslt (size!46044 a!2971) #b01111111111111111111111111111111)))))

(declare-fun b!1381252 () Bool)

(declare-fun res!922986 () Bool)

(assert (=> b!1381252 (=> (not res!922986) (not e!782987))))

(declare-fun noDuplicate!2624 (List!32207) Bool)

(assert (=> b!1381252 (= res!922986 (noDuplicate!2624 Nil!32204))))

(assert (= (and start!117892 res!922985) b!1381249))

(assert (= (and b!1381249 res!922987) b!1381248))

(assert (= (and b!1381248 res!922984) b!1381251))

(assert (= (and b!1381251 res!922989) b!1381252))

(assert (= (and b!1381252 res!922986) b!1381250))

(assert (= (and b!1381250 (not res!922988)) b!1381247))

(declare-fun m!1266495 () Bool)

(assert (=> b!1381252 m!1266495))

(declare-fun m!1266497 () Bool)

(assert (=> b!1381250 m!1266497))

(declare-fun m!1266499 () Bool)

(assert (=> b!1381248 m!1266499))

(assert (=> b!1381248 m!1266499))

(declare-fun m!1266501 () Bool)

(assert (=> b!1381248 m!1266501))

(declare-fun m!1266503 () Bool)

(assert (=> start!117892 m!1266503))

(declare-fun m!1266505 () Bool)

(assert (=> start!117892 m!1266505))

(declare-fun m!1266507 () Bool)

(assert (=> b!1381247 m!1266507))

(push 1)

(assert (not b!1381250))

(assert (not b!1381248))

(assert (not b!1381252))

(assert (not b!1381247))

(assert (not start!117892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!149007 () Bool)

(declare-fun res!923044 () Bool)

(declare-fun e!783024 () Bool)

(assert (=> d!149007 (=> res!923044 e!783024)))

(assert (=> d!149007 (= res!923044 (is-Nil!32204 Nil!32204))))

(assert (=> d!149007 (= (noDuplicate!2624 Nil!32204) e!783024)))

(declare-fun b!1381307 () Bool)

(declare-fun e!783025 () Bool)

(assert (=> b!1381307 (= e!783024 e!783025)))

(declare-fun res!923045 () Bool)

(assert (=> b!1381307 (=> (not res!923045) (not e!783025))))

(assert (=> b!1381307 (= res!923045 (not (contains!9744 (t!46908 Nil!32204) (h!33412 Nil!32204))))))

(declare-fun b!1381308 () Bool)

(assert (=> b!1381308 (= e!783025 (noDuplicate!2624 (t!46908 Nil!32204)))))

(assert (= (and d!149007 (not res!923044)) b!1381307))

(assert (= (and b!1381307 res!923045) b!1381308))

(declare-fun m!1266551 () Bool)

(assert (=> b!1381307 m!1266551))

(declare-fun m!1266553 () Bool)

(assert (=> b!1381308 m!1266553))

(assert (=> b!1381252 d!149007))

(declare-fun d!149017 () Bool)

(assert (=> d!149017 (= (validMask!0 mask!3034) (and (or (= mask!3034 #b00000000000000000000000000000111) (= mask!3034 #b00000000000000000000000000001111) (= mask!3034 #b00000000000000000000000000011111) (= mask!3034 #b00000000000000000000000000111111) (= mask!3034 #b00000000000000000000000001111111) (= mask!3034 #b00000000000000000000000011111111) (= mask!3034 #b00000000000000000000000111111111) (= mask!3034 #b00000000000000000000001111111111) (= mask!3034 #b00000000000000000000011111111111) (= mask!3034 #b00000000000000000000111111111111) (= mask!3034 #b00000000000000000001111111111111) (= mask!3034 #b00000000000000000011111111111111) (= mask!3034 #b00000000000000000111111111111111) (= mask!3034 #b00000000000000001111111111111111) (= mask!3034 #b00000000000000011111111111111111) (= mask!3034 #b00000000000000111111111111111111) (= mask!3034 #b00000000000001111111111111111111) (= mask!3034 #b00000000000011111111111111111111) (= mask!3034 #b00000000000111111111111111111111) (= mask!3034 #b00000000001111111111111111111111) (= mask!3034 #b00000000011111111111111111111111) (= mask!3034 #b00000000111111111111111111111111) (= mask!3034 #b00000001111111111111111111111111) (= mask!3034 #b00000011111111111111111111111111) (= mask!3034 #b00000111111111111111111111111111) (= mask!3034 #b00001111111111111111111111111111) (= mask!3034 #b00011111111111111111111111111111) (= mask!3034 #b00111111111111111111111111111111)) (bvsle mask!3034 #b00111111111111111111111111111111)))))

(assert (=> start!117892 d!149017))

(declare-fun d!149025 () Bool)

(assert (=> d!149025 (= (array_inv!34438 a!2971) (bvsge (size!46044 a!2971) #b00000000000000000000000000000000))))

(assert (=> start!117892 d!149025))

(declare-fun d!149027 () Bool)

(declare-fun lt!608129 () Bool)

(declare-fun content!763 (List!32207) (Set (_ BitVec 64)))

(assert (=> d!149027 (= lt!608129 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!763 Nil!32204)))))

(declare-fun e!783036 () Bool)

(assert (=> d!149027 (= lt!608129 e!783036)))

(declare-fun res!923057 () Bool)

(assert (=> d!149027 (=> (not res!923057) (not e!783036))))

(assert (=> d!149027 (= res!923057 (is-Cons!32203 Nil!32204))))

(assert (=> d!149027 (= (contains!9744 Nil!32204 #b0000000000000000000000000000000000000000000000000000000000000000) lt!608129)))

(declare-fun b!1381319 () Bool)

(declare-fun e!783037 () Bool)

(assert (=> b!1381319 (= e!783036 e!783037)))

(declare-fun res!923056 () Bool)

(assert (=> b!1381319 (=> res!923056 e!783037)))

(assert (=> b!1381319 (= res!923056 (= (h!33412 Nil!32204) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1381320 () Bool)

(assert (=> b!1381320 (= e!783037 (contains!9744 (t!46908 Nil!32204) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!149027 res!923057) b!1381319))

(assert (= (and b!1381319 (not res!923056)) b!1381320))

(declare-fun m!1266559 () Bool)

(assert (=> d!149027 m!1266559))

(declare-fun m!1266561 () Bool)

(assert (=> d!149027 m!1266561))

(declare-fun m!1266563 () Bool)

(assert (=> b!1381320 m!1266563))

(assert (=> b!1381250 d!149027))

(declare-fun d!149033 () Bool)

(assert (=> d!149033 (= (validKeyInArray!0 (select (arr!45493 a!2971) i!1094)) (and (not (= (select (arr!45493 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45493 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000))))))

