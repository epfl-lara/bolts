; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87534 () Bool)

(assert start!87534)

(declare-fun res!680391 () Bool)

(declare-fun e!569995 () Bool)

(assert (=> start!87534 (=> (not res!680391) (not e!569995))))

(declare-datatypes ((B!1396 0))(
  ( (B!1397 (val!11782 Int)) )
))
(declare-datatypes ((tuple2!15200 0))(
  ( (tuple2!15201 (_1!7610 (_ BitVec 64)) (_2!7610 B!1396)) )
))
(declare-datatypes ((List!21515 0))(
  ( (Nil!21512) (Cons!21511 (h!22709 tuple2!15200) (t!30524 List!21515)) )
))
(declare-fun l!412 () List!21515)

(declare-fun isStrictlySorted!552 (List!21515) Bool)

(assert (=> start!87534 (= res!680391 (isStrictlySorted!552 l!412))))

(assert (=> start!87534 e!569995))

(declare-fun e!569996 () Bool)

(assert (=> start!87534 e!569996))

(declare-fun tp_is_empty!23463 () Bool)

(assert (=> start!87534 tp_is_empty!23463))

(declare-fun b!1013180 () Bool)

(declare-fun res!680392 () Bool)

(assert (=> b!1013180 (=> (not res!680392) (not e!569995))))

(declare-fun value!115 () B!1396)

(get-info :version)

(assert (=> b!1013180 (= res!680392 (and ((_ is Cons!21511) l!412) (= (_2!7610 (h!22709 l!412)) value!115)))))

(declare-fun b!1013181 () Bool)

(declare-fun ListPrimitiveSize!101 (List!21515) Int)

(assert (=> b!1013181 (= e!569995 (>= (ListPrimitiveSize!101 (t!30524 l!412)) (ListPrimitiveSize!101 l!412)))))

(declare-fun b!1013182 () Bool)

(declare-fun tp!70413 () Bool)

(assert (=> b!1013182 (= e!569996 (and tp_is_empty!23463 tp!70413))))

(assert (= (and start!87534 res!680391) b!1013180))

(assert (= (and b!1013180 res!680392) b!1013181))

(assert (= (and start!87534 ((_ is Cons!21511) l!412)) b!1013182))

(declare-fun m!936447 () Bool)

(assert (=> start!87534 m!936447))

(declare-fun m!936449 () Bool)

(assert (=> b!1013181 m!936449))

(declare-fun m!936451 () Bool)

(assert (=> b!1013181 m!936451))

(check-sat (not b!1013181) (not start!87534) (not b!1013182) tp_is_empty!23463)
(check-sat)
(get-model)

(declare-fun d!120385 () Bool)

(declare-fun lt!447872 () Int)

(assert (=> d!120385 (>= lt!447872 0)))

(declare-fun e!570010 () Int)

(assert (=> d!120385 (= lt!447872 e!570010)))

(declare-fun c!102371 () Bool)

(assert (=> d!120385 (= c!102371 ((_ is Nil!21512) (t!30524 l!412)))))

(assert (=> d!120385 (= (ListPrimitiveSize!101 (t!30524 l!412)) lt!447872)))

(declare-fun b!1013206 () Bool)

(assert (=> b!1013206 (= e!570010 0)))

(declare-fun b!1013207 () Bool)

(assert (=> b!1013207 (= e!570010 (+ 1 (ListPrimitiveSize!101 (t!30524 (t!30524 l!412)))))))

(assert (= (and d!120385 c!102371) b!1013206))

(assert (= (and d!120385 (not c!102371)) b!1013207))

(declare-fun m!936461 () Bool)

(assert (=> b!1013207 m!936461))

(assert (=> b!1013181 d!120385))

(declare-fun d!120391 () Bool)

(declare-fun lt!447874 () Int)

(assert (=> d!120391 (>= lt!447874 0)))

(declare-fun e!570012 () Int)

(assert (=> d!120391 (= lt!447874 e!570012)))

(declare-fun c!102373 () Bool)

(assert (=> d!120391 (= c!102373 ((_ is Nil!21512) l!412))))

(assert (=> d!120391 (= (ListPrimitiveSize!101 l!412) lt!447874)))

(declare-fun b!1013210 () Bool)

(assert (=> b!1013210 (= e!570012 0)))

(declare-fun b!1013211 () Bool)

(assert (=> b!1013211 (= e!570012 (+ 1 (ListPrimitiveSize!101 (t!30524 l!412))))))

(assert (= (and d!120391 c!102373) b!1013210))

(assert (= (and d!120391 (not c!102373)) b!1013211))

(assert (=> b!1013211 m!936449))

(assert (=> b!1013181 d!120391))

(declare-fun d!120395 () Bool)

(declare-fun res!680413 () Bool)

(declare-fun e!570029 () Bool)

(assert (=> d!120395 (=> res!680413 e!570029)))

(assert (=> d!120395 (= res!680413 (or ((_ is Nil!21512) l!412) ((_ is Nil!21512) (t!30524 l!412))))))

(assert (=> d!120395 (= (isStrictlySorted!552 l!412) e!570029)))

(declare-fun b!1013230 () Bool)

(declare-fun e!570030 () Bool)

(assert (=> b!1013230 (= e!570029 e!570030)))

(declare-fun res!680414 () Bool)

(assert (=> b!1013230 (=> (not res!680414) (not e!570030))))

(assert (=> b!1013230 (= res!680414 (bvslt (_1!7610 (h!22709 l!412)) (_1!7610 (h!22709 (t!30524 l!412)))))))

(declare-fun b!1013231 () Bool)

(assert (=> b!1013231 (= e!570030 (isStrictlySorted!552 (t!30524 l!412)))))

(assert (= (and d!120395 (not res!680413)) b!1013230))

(assert (= (and b!1013230 res!680414) b!1013231))

(declare-fun m!936467 () Bool)

(assert (=> b!1013231 m!936467))

(assert (=> start!87534 d!120395))

(declare-fun b!1013245 () Bool)

(declare-fun e!570038 () Bool)

(declare-fun tp!70422 () Bool)

(assert (=> b!1013245 (= e!570038 (and tp_is_empty!23463 tp!70422))))

(assert (=> b!1013182 (= tp!70413 e!570038)))

(assert (= (and b!1013182 ((_ is Cons!21511) (t!30524 l!412))) b!1013245))

(check-sat tp_is_empty!23463 (not b!1013211) (not b!1013231) (not b!1013245) (not b!1013207))
(check-sat)
