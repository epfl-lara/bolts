; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!701072 () Bool)

(assert start!701072)

(declare-fun b_free!133869 () Bool)

(declare-fun b_next!134659 () Bool)

(assert (=> start!701072 (= b_free!133869 (not b_next!134659))))

(declare-fun tp!2033092 () Bool)

(declare-fun b_and!351101 () Bool)

(assert (=> start!701072 (= tp!2033092 b_and!351101)))

(declare-fun b!7228997 () Bool)

(assert (=> b!7228997 true))

(assert (=> b!7228997 true))

(declare-fun lambda!438858 () Int)

(declare-fun order!28785 () Int)

(declare-fun order!28783 () Int)

(declare-fun f!1145 () Int)

(declare-fun dynLambda!28470 (Int Int) Int)

(declare-fun dynLambda!28471 (Int Int) Int)

(assert (=> b!7228997 (< (dynLambda!28470 order!28783 f!1145) (dynLambda!28471 order!28785 lambda!438858))))

(declare-fun bs!1902230 () Bool)

(declare-fun b!7228999 () Bool)

(assert (= bs!1902230 (and b!7228999 b!7228997)))

(declare-fun b!25555 () Int)

(declare-fun a!1075 () Int)

(declare-fun lambda!438859 () Int)

(assert (=> bs!1902230 (= (= a!1075 b!25555) (= lambda!438859 lambda!438858))))

(assert (=> b!7228999 true))

(assert (=> b!7228999 true))

(assert (=> b!7228999 (< (dynLambda!28470 order!28783 f!1145) (dynLambda!28471 order!28785 lambda!438859))))

(declare-fun res!2932957 () Bool)

(declare-fun e!4333429 () Bool)

(assert (=> start!701072 (=> (not res!2932957) (not e!4333429))))

(assert (=> start!701072 (= res!2932957 (>= a!1075 b!25555))))

(assert (=> start!701072 e!4333429))

(assert (=> start!701072 true))

(declare-fun e!4333430 () Bool)

(assert (=> start!701072 e!4333430))

(assert (=> start!701072 tp!2033092))

(declare-fun tp!2033091 () Bool)

(declare-datatypes ((C!37188 0))(
  ( (C!37189 (val!28542 Int)) )
))
(declare-datatypes ((Regex!18457 0))(
  ( (ElementMatch!18457 (c!1341188 C!37188)) (Concat!27302 (regOne!37426 Regex!18457) (regTwo!37426 Regex!18457)) (EmptyExpr!18457) (Star!18457 (reg!18786 Regex!18457)) (EmptyLang!18457) (Union!18457 (regOne!37427 Regex!18457) (regTwo!37427 Regex!18457)) )
))
(declare-datatypes ((List!70002 0))(
  ( (Nil!69878) (Cons!69878 (h!76326 Regex!18457) (t!384043 List!70002)) )
))
(declare-datatypes ((Context!14794 0))(
  ( (Context!14795 (exprs!7897 List!70002)) )
))
(declare-datatypes ((List!70003 0))(
  ( (Nil!69879) (Cons!69879 (h!76327 Context!14794) (t!384044 List!70003)) )
))
(declare-fun l!7021 () List!70003)

(declare-fun b!7228995 () Bool)

(declare-fun e!4333431 () Bool)

(declare-fun inv!89152 (Context!14794) Bool)

(assert (=> b!7228995 (= e!4333430 (and (inv!89152 (h!76327 l!7021)) e!4333431 tp!2033091))))

(declare-fun b!7228996 () Bool)

(declare-fun tp!2033090 () Bool)

(assert (=> b!7228996 (= e!4333431 tp!2033090)))

(declare-fun res!2932956 () Bool)

(assert (=> b!7228997 (=> (not res!2932956) (not e!4333429))))

(declare-fun forall!17281 (List!70003 Int) Bool)

(assert (=> b!7228997 (= res!2932956 (forall!17281 l!7021 lambda!438858))))

(declare-fun b!7228998 () Bool)

(declare-fun res!2932958 () Bool)

(assert (=> b!7228998 (=> (not res!2932958) (not e!4333429))))

(get-info :version)

(assert (=> b!7228998 (= res!2932958 ((_ is Nil!69879) l!7021))))

(assert (=> b!7228999 (= e!4333429 (not (forall!17281 l!7021 lambda!438859)))))

(assert (= (and start!701072 res!2932957) b!7228997))

(assert (= (and b!7228997 res!2932956) b!7228998))

(assert (= (and b!7228998 res!2932958) b!7228999))

(assert (= b!7228995 b!7228996))

(assert (= (and start!701072 ((_ is Cons!69879) l!7021)) b!7228995))

(declare-fun m!7897166 () Bool)

(assert (=> b!7228995 m!7897166))

(declare-fun m!7897168 () Bool)

(assert (=> b!7228997 m!7897168))

(declare-fun m!7897170 () Bool)

(assert (=> b!7228999 m!7897170))

(check-sat (not b!7228996) (not b!7228999) (not b!7228995) b_and!351101 (not b_next!134659) (not b!7228997))
(check-sat b_and!351101 (not b_next!134659))
(get-model)

(declare-fun d!2245021 () Bool)

(declare-fun res!2932967 () Bool)

(declare-fun e!4333440 () Bool)

(assert (=> d!2245021 (=> res!2932967 e!4333440)))

(assert (=> d!2245021 (= res!2932967 ((_ is Nil!69879) l!7021))))

(assert (=> d!2245021 (= (forall!17281 l!7021 lambda!438859) e!4333440)))

(declare-fun b!7229012 () Bool)

(declare-fun e!4333441 () Bool)

(assert (=> b!7229012 (= e!4333440 e!4333441)))

(declare-fun res!2932968 () Bool)

(assert (=> b!7229012 (=> (not res!2932968) (not e!4333441))))

(declare-fun dynLambda!28472 (Int Context!14794) Bool)

(assert (=> b!7229012 (= res!2932968 (dynLambda!28472 lambda!438859 (h!76327 l!7021)))))

(declare-fun b!7229013 () Bool)

(assert (=> b!7229013 (= e!4333441 (forall!17281 (t!384044 l!7021) lambda!438859))))

(assert (= (and d!2245021 (not res!2932967)) b!7229012))

(assert (= (and b!7229012 res!2932968) b!7229013))

(declare-fun b_lambda!276877 () Bool)

(assert (=> (not b_lambda!276877) (not b!7229012)))

(declare-fun m!7897172 () Bool)

(assert (=> b!7229012 m!7897172))

(declare-fun m!7897174 () Bool)

(assert (=> b!7229013 m!7897174))

(assert (=> b!7228999 d!2245021))

(declare-fun d!2245023 () Bool)

(declare-fun res!2932971 () Bool)

(declare-fun e!4333444 () Bool)

(assert (=> d!2245023 (=> res!2932971 e!4333444)))

(assert (=> d!2245023 (= res!2932971 ((_ is Nil!69879) l!7021))))

(assert (=> d!2245023 (= (forall!17281 l!7021 lambda!438858) e!4333444)))

(declare-fun b!7229016 () Bool)

(declare-fun e!4333445 () Bool)

(assert (=> b!7229016 (= e!4333444 e!4333445)))

(declare-fun res!2932972 () Bool)

(assert (=> b!7229016 (=> (not res!2932972) (not e!4333445))))

(assert (=> b!7229016 (= res!2932972 (dynLambda!28472 lambda!438858 (h!76327 l!7021)))))

(declare-fun b!7229017 () Bool)

(assert (=> b!7229017 (= e!4333445 (forall!17281 (t!384044 l!7021) lambda!438858))))

(assert (= (and d!2245023 (not res!2932971)) b!7229016))

(assert (= (and b!7229016 res!2932972) b!7229017))

(declare-fun b_lambda!276879 () Bool)

(assert (=> (not b_lambda!276879) (not b!7229016)))

(declare-fun m!7897176 () Bool)

(assert (=> b!7229016 m!7897176))

(declare-fun m!7897178 () Bool)

(assert (=> b!7229017 m!7897178))

(assert (=> b!7228997 d!2245023))

(declare-fun d!2245025 () Bool)

(declare-fun lambda!438862 () Int)

(declare-fun forall!17282 (List!70002 Int) Bool)

(assert (=> d!2245025 (= (inv!89152 (h!76327 l!7021)) (forall!17282 (exprs!7897 (h!76327 l!7021)) lambda!438862))))

(declare-fun bs!1902231 () Bool)

(assert (= bs!1902231 d!2245025))

(declare-fun m!7897184 () Bool)

(assert (=> bs!1902231 m!7897184))

(assert (=> b!7228995 d!2245025))

(declare-fun b!7229025 () Bool)

(declare-fun e!4333451 () Bool)

(declare-fun tp!2033097 () Bool)

(assert (=> b!7229025 (= e!4333451 tp!2033097)))

(declare-fun b!7229024 () Bool)

(declare-fun e!4333450 () Bool)

(declare-fun tp!2033098 () Bool)

(assert (=> b!7229024 (= e!4333450 (and (inv!89152 (h!76327 (t!384044 l!7021))) e!4333451 tp!2033098))))

(assert (=> b!7228995 (= tp!2033091 e!4333450)))

(assert (= b!7229024 b!7229025))

(assert (= (and b!7228995 ((_ is Cons!69879) (t!384044 l!7021))) b!7229024))

(declare-fun m!7897186 () Bool)

(assert (=> b!7229024 m!7897186))

(declare-fun b!7229030 () Bool)

(declare-fun e!4333454 () Bool)

(declare-fun tp!2033103 () Bool)

(declare-fun tp!2033104 () Bool)

(assert (=> b!7229030 (= e!4333454 (and tp!2033103 tp!2033104))))

(assert (=> b!7228996 (= tp!2033090 e!4333454)))

(assert (= (and b!7228996 ((_ is Cons!69878) (exprs!7897 (h!76327 l!7021)))) b!7229030))

(declare-fun b_lambda!276883 () Bool)

(assert (= b_lambda!276877 (or b!7228999 b_lambda!276883)))

(declare-fun bs!1902232 () Bool)

(declare-fun d!2245029 () Bool)

(assert (= bs!1902232 (and d!2245029 b!7228999)))

(declare-fun dynLambda!28473 (Int Context!14794) Int)

(assert (=> bs!1902232 (= (dynLambda!28472 lambda!438859 (h!76327 l!7021)) (>= a!1075 (dynLambda!28473 f!1145 (h!76327 l!7021))))))

(declare-fun b_lambda!276887 () Bool)

(assert (=> (not b_lambda!276887) (not bs!1902232)))

(declare-fun t!384046 () Bool)

(declare-fun tb!262109 () Bool)

(assert (=> (and start!701072 (= f!1145 f!1145) t!384046) tb!262109))

(declare-fun result!351110 () Bool)

(assert (=> tb!262109 (= result!351110 true)))

(assert (=> bs!1902232 t!384046))

(declare-fun b_and!351103 () Bool)

(assert (= b_and!351101 (and (=> t!384046 result!351110) b_and!351103)))

(declare-fun m!7897188 () Bool)

(assert (=> bs!1902232 m!7897188))

(assert (=> b!7229012 d!2245029))

(declare-fun b_lambda!276885 () Bool)

(assert (= b_lambda!276879 (or b!7228997 b_lambda!276885)))

(declare-fun bs!1902233 () Bool)

(declare-fun d!2245031 () Bool)

(assert (= bs!1902233 (and d!2245031 b!7228997)))

(assert (=> bs!1902233 (= (dynLambda!28472 lambda!438858 (h!76327 l!7021)) (>= b!25555 (dynLambda!28473 f!1145 (h!76327 l!7021))))))

(declare-fun b_lambda!276889 () Bool)

(assert (=> (not b_lambda!276889) (not bs!1902233)))

(assert (=> bs!1902233 t!384046))

(declare-fun b_and!351105 () Bool)

(assert (= b_and!351103 (and (=> t!384046 result!351110) b_and!351105)))

(assert (=> bs!1902233 m!7897188))

(assert (=> b!7229016 d!2245031))

(check-sat (not d!2245025) b_and!351105 (not b!7229013) (not b!7229024) (not b_lambda!276887) (not b_lambda!276885) (not b!7229030) (not b_next!134659) (not b_lambda!276889) (not b!7229025) (not b_lambda!276883) (not b!7229017))
(check-sat b_and!351105 (not b_next!134659))
