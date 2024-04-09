; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92174 () Bool)

(assert start!92174)

(declare-fun res!697236 () Bool)

(declare-fun e!594325 () Bool)

(assert (=> start!92174 (=> (not res!697236) (not e!594325))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!65974 0))(
  ( (array!65975 (arr!31727 (Array (_ BitVec 32) (_ BitVec 64))) (size!32264 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!65974)

(assert (=> start!92174 (= res!697236 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32264 a!3488)) (bvslt (size!32264 a!3488) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!32264 a!3488))))))

(assert (=> start!92174 e!594325))

(assert (=> start!92174 true))

(declare-fun array_inv!24349 (array!65974) Bool)

(assert (=> start!92174 (array_inv!24349 a!3488)))

(declare-fun b!1047965 () Bool)

(declare-datatypes ((List!22170 0))(
  ( (Nil!22167) (Cons!22166 (h!23375 (_ BitVec 64)) (t!31484 List!22170)) )
))
(declare-fun noDuplicate!1504 (List!22170) Bool)

(assert (=> b!1047965 (= e!594325 (not (noDuplicate!1504 Nil!22167)))))

(assert (= (and start!92174 res!697236) b!1047965))

(declare-fun m!969145 () Bool)

(assert (=> start!92174 m!969145))

(declare-fun m!969147 () Bool)

(assert (=> b!1047965 m!969147))

(check-sat (not start!92174) (not b!1047965))
(check-sat)
(get-model)

(declare-fun d!127557 () Bool)

(assert (=> d!127557 (= (array_inv!24349 a!3488) (bvsge (size!32264 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92174 d!127557))

(declare-fun d!127559 () Bool)

(declare-fun res!697250 () Bool)

(declare-fun e!594343 () Bool)

(assert (=> d!127559 (=> res!697250 e!594343)))

(get-info :version)

(assert (=> d!127559 (= res!697250 ((_ is Nil!22167) Nil!22167))))

(assert (=> d!127559 (= (noDuplicate!1504 Nil!22167) e!594343)))

(declare-fun b!1047979 () Bool)

(declare-fun e!594344 () Bool)

(assert (=> b!1047979 (= e!594343 e!594344)))

(declare-fun res!697251 () Bool)

(assert (=> b!1047979 (=> (not res!697251) (not e!594344))))

(declare-fun contains!6116 (List!22170 (_ BitVec 64)) Bool)

(assert (=> b!1047979 (= res!697251 (not (contains!6116 (t!31484 Nil!22167) (h!23375 Nil!22167))))))

(declare-fun b!1047980 () Bool)

(assert (=> b!1047980 (= e!594344 (noDuplicate!1504 (t!31484 Nil!22167)))))

(assert (= (and d!127559 (not res!697250)) b!1047979))

(assert (= (and b!1047979 res!697251) b!1047980))

(declare-fun m!969153 () Bool)

(assert (=> b!1047979 m!969153))

(declare-fun m!969157 () Bool)

(assert (=> b!1047980 m!969157))

(assert (=> b!1047965 d!127559))

(check-sat (not b!1047979) (not b!1047980))
(check-sat)
