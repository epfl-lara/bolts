; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117864 () Bool)

(assert start!117864)

(declare-fun b!1381202 () Bool)

(declare-fun res!922941 () Bool)

(declare-fun e!782954 () Bool)

(assert (=> b!1381202 (=> (not res!922941) (not e!782954))))

(declare-datatypes ((array!94219 0))(
  ( (array!94220 (arr!45491 (Array (_ BitVec 32) (_ BitVec 64))) (size!46042 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94219)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381202 (= res!922941 (validKeyInArray!0 (select (arr!45491 a!2971) i!1094)))))

(declare-fun res!922940 () Bool)

(assert (=> start!117864 (=> (not res!922940) (not e!782954))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117864 (= res!922940 (validMask!0 mask!3034))))

(assert (=> start!117864 e!782954))

(assert (=> start!117864 true))

(declare-fun array_inv!34436 (array!94219) Bool)

(assert (=> start!117864 (array_inv!34436 a!2971)))

(declare-fun b!1381204 () Bool)

(declare-datatypes ((List!32205 0))(
  ( (Nil!32202) (Cons!32201 (h!33410 (_ BitVec 64)) (t!46906 List!32205)) )
))
(declare-fun noDuplicate!2622 (List!32205) Bool)

(assert (=> b!1381204 (= e!782954 (not (noDuplicate!2622 Nil!32202)))))

(declare-fun b!1381201 () Bool)

(declare-fun res!922938 () Bool)

(assert (=> b!1381201 (=> (not res!922938) (not e!782954))))

(assert (=> b!1381201 (= res!922938 (and (= (size!46042 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46042 a!2971))))))

(declare-fun b!1381203 () Bool)

(declare-fun res!922939 () Bool)

(assert (=> b!1381203 (=> (not res!922939) (not e!782954))))

(assert (=> b!1381203 (= res!922939 (and (bvsle #b00000000000000000000000000000000 (size!46042 a!2971)) (bvslt (size!46042 a!2971) #b01111111111111111111111111111111)))))

(assert (= (and start!117864 res!922940) b!1381201))

(assert (= (and b!1381201 res!922938) b!1381202))

(assert (= (and b!1381202 res!922941) b!1381203))

(assert (= (and b!1381203 res!922939) b!1381204))

(declare-fun m!1266463 () Bool)

(assert (=> b!1381202 m!1266463))

(assert (=> b!1381202 m!1266463))

(declare-fun m!1266465 () Bool)

(assert (=> b!1381202 m!1266465))

(declare-fun m!1266467 () Bool)

(assert (=> start!117864 m!1266467))

(declare-fun m!1266469 () Bool)

(assert (=> start!117864 m!1266469))

(declare-fun m!1266471 () Bool)

(assert (=> b!1381204 m!1266471))

(check-sat (not start!117864) (not b!1381204) (not b!1381202))
(check-sat)
(get-model)

(declare-fun d!148977 () Bool)

(assert (=> d!148977 (= (validMask!0 mask!3034) (and (or (= mask!3034 #b00000000000000000000000000000111) (= mask!3034 #b00000000000000000000000000001111) (= mask!3034 #b00000000000000000000000000011111) (= mask!3034 #b00000000000000000000000000111111) (= mask!3034 #b00000000000000000000000001111111) (= mask!3034 #b00000000000000000000000011111111) (= mask!3034 #b00000000000000000000000111111111) (= mask!3034 #b00000000000000000000001111111111) (= mask!3034 #b00000000000000000000011111111111) (= mask!3034 #b00000000000000000000111111111111) (= mask!3034 #b00000000000000000001111111111111) (= mask!3034 #b00000000000000000011111111111111) (= mask!3034 #b00000000000000000111111111111111) (= mask!3034 #b00000000000000001111111111111111) (= mask!3034 #b00000000000000011111111111111111) (= mask!3034 #b00000000000000111111111111111111) (= mask!3034 #b00000000000001111111111111111111) (= mask!3034 #b00000000000011111111111111111111) (= mask!3034 #b00000000000111111111111111111111) (= mask!3034 #b00000000001111111111111111111111) (= mask!3034 #b00000000011111111111111111111111) (= mask!3034 #b00000000111111111111111111111111) (= mask!3034 #b00000001111111111111111111111111) (= mask!3034 #b00000011111111111111111111111111) (= mask!3034 #b00000111111111111111111111111111) (= mask!3034 #b00001111111111111111111111111111) (= mask!3034 #b00011111111111111111111111111111) (= mask!3034 #b00111111111111111111111111111111)) (bvsle mask!3034 #b00111111111111111111111111111111)))))

(assert (=> start!117864 d!148977))

(declare-fun d!148985 () Bool)

(assert (=> d!148985 (= (array_inv!34436 a!2971) (bvsge (size!46042 a!2971) #b00000000000000000000000000000000))))

(assert (=> start!117864 d!148985))

(declare-fun d!148987 () Bool)

(declare-fun res!922958 () Bool)

(declare-fun e!782965 () Bool)

(assert (=> d!148987 (=> res!922958 e!782965)))

(get-info :version)

(assert (=> d!148987 (= res!922958 ((_ is Nil!32202) Nil!32202))))

(assert (=> d!148987 (= (noDuplicate!2622 Nil!32202) e!782965)))

(declare-fun b!1381221 () Bool)

(declare-fun e!782966 () Bool)

(assert (=> b!1381221 (= e!782965 e!782966)))

(declare-fun res!922959 () Bool)

(assert (=> b!1381221 (=> (not res!922959) (not e!782966))))

(declare-fun contains!9742 (List!32205 (_ BitVec 64)) Bool)

(assert (=> b!1381221 (= res!922959 (not (contains!9742 (t!46906 Nil!32202) (h!33410 Nil!32202))))))

(declare-fun b!1381222 () Bool)

(assert (=> b!1381222 (= e!782966 (noDuplicate!2622 (t!46906 Nil!32202)))))

(assert (= (and d!148987 (not res!922958)) b!1381221))

(assert (= (and b!1381221 res!922959) b!1381222))

(declare-fun m!1266483 () Bool)

(assert (=> b!1381221 m!1266483))

(declare-fun m!1266485 () Bool)

(assert (=> b!1381222 m!1266485))

(assert (=> b!1381204 d!148987))

(declare-fun d!148989 () Bool)

(assert (=> d!148989 (= (validKeyInArray!0 (select (arr!45491 a!2971) i!1094)) (and (not (= (select (arr!45491 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45491 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1381202 d!148989))

(check-sat (not b!1381222) (not b!1381221))
(check-sat)
