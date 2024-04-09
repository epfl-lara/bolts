; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42748 () Bool)

(assert start!42748)

(declare-fun b_free!12087 () Bool)

(declare-fun b_next!12087 () Bool)

(assert (=> start!42748 (= b_free!12087 (not b_next!12087))))

(declare-fun tp!42315 () Bool)

(declare-fun b_and!20649 () Bool)

(assert (=> start!42748 (= tp!42315 b_and!20649)))

(declare-fun res!284421 () Bool)

(declare-fun e!279796 () Bool)

(assert (=> start!42748 (=> (not res!284421) (not e!279796))))

(declare-datatypes ((B!1036 0))(
  ( (B!1037 (val!6802 Int)) )
))
(declare-datatypes ((tuple2!8974 0))(
  ( (tuple2!8975 (_1!4497 (_ BitVec 64)) (_2!4497 B!1036)) )
))
(declare-datatypes ((List!9076 0))(
  ( (Nil!9073) (Cons!9072 (h!9928 tuple2!8974) (t!15078 List!9076)) )
))
(declare-datatypes ((ListLongMap!7901 0))(
  ( (ListLongMap!7902 (toList!3966 List!9076)) )
))
(declare-fun lm!215 () ListLongMap!7901)

(declare-fun p!166 () Int)

(declare-fun forall!189 (List!9076 Int) Bool)

(assert (=> start!42748 (= res!284421 (forall!189 (toList!3966 lm!215) p!166))))

(assert (=> start!42748 e!279796))

(declare-fun e!279797 () Bool)

(declare-fun inv!15472 (ListLongMap!7901) Bool)

(assert (=> start!42748 (and (inv!15472 lm!215) e!279797)))

(assert (=> start!42748 tp!42315))

(assert (=> start!42748 true))

(declare-fun tp_is_empty!13509 () Bool)

(assert (=> start!42748 tp_is_empty!13509))

(declare-fun b!476350 () Bool)

(declare-fun res!284422 () Bool)

(assert (=> b!476350 (=> (not res!284422) (not e!279796))))

(declare-fun b!85 () B!1036)

(declare-fun a!501 () (_ BitVec 64))

(declare-fun dynLambda!935 (Int tuple2!8974) Bool)

(assert (=> b!476350 (= res!284422 (dynLambda!935 p!166 (tuple2!8975 a!501 b!85)))))

(declare-fun b!476351 () Bool)

(declare-fun size!15121 (List!9076) Int)

(assert (=> b!476351 (= e!279796 (< (size!15121 (toList!3966 lm!215)) 0))))

(declare-fun b!476352 () Bool)

(declare-fun tp!42316 () Bool)

(assert (=> b!476352 (= e!279797 tp!42316)))

(assert (= (and start!42748 res!284421) b!476350))

(assert (= (and b!476350 res!284422) b!476351))

(assert (= start!42748 b!476352))

(declare-fun b_lambda!10403 () Bool)

(assert (=> (not b_lambda!10403) (not b!476350)))

(declare-fun t!15077 () Bool)

(declare-fun tb!3959 () Bool)

(assert (=> (and start!42748 (= p!166 p!166) t!15077) tb!3959))

(declare-fun result!7503 () Bool)

(assert (=> tb!3959 (= result!7503 true)))

(assert (=> b!476350 t!15077))

(declare-fun b_and!20651 () Bool)

(assert (= b_and!20649 (and (=> t!15077 result!7503) b_and!20651)))

(declare-fun m!458687 () Bool)

(assert (=> start!42748 m!458687))

(declare-fun m!458689 () Bool)

(assert (=> start!42748 m!458689))

(declare-fun m!458691 () Bool)

(assert (=> b!476350 m!458691))

(declare-fun m!458693 () Bool)

(assert (=> b!476351 m!458693))

(check-sat (not b!476352) (not b_next!12087) b_and!20651 (not start!42748) (not b!476351) tp_is_empty!13509 (not b_lambda!10403))
(check-sat b_and!20651 (not b_next!12087))
(get-model)

(declare-fun b_lambda!10411 () Bool)

(assert (= b_lambda!10403 (or (and start!42748 b_free!12087) b_lambda!10411)))

(check-sat (not b!476352) (not b_next!12087) b_and!20651 (not start!42748) (not b_lambda!10411) (not b!476351) tp_is_empty!13509)
(check-sat b_and!20651 (not b_next!12087))
(get-model)

(declare-fun d!75617 () Bool)

(declare-fun res!284443 () Bool)

(declare-fun e!279821 () Bool)

(assert (=> d!75617 (=> res!284443 e!279821)))

(get-info :version)

(assert (=> d!75617 (= res!284443 ((_ is Nil!9073) (toList!3966 lm!215)))))

(assert (=> d!75617 (= (forall!189 (toList!3966 lm!215) p!166) e!279821)))

(declare-fun b!476382 () Bool)

(declare-fun e!279822 () Bool)

(assert (=> b!476382 (= e!279821 e!279822)))

(declare-fun res!284444 () Bool)

(assert (=> b!476382 (=> (not res!284444) (not e!279822))))

(assert (=> b!476382 (= res!284444 (dynLambda!935 p!166 (h!9928 (toList!3966 lm!215))))))

(declare-fun b!476383 () Bool)

(assert (=> b!476383 (= e!279822 (forall!189 (t!15078 (toList!3966 lm!215)) p!166))))

(assert (= (and d!75617 (not res!284443)) b!476382))

(assert (= (and b!476382 res!284444) b!476383))

(declare-fun b_lambda!10415 () Bool)

(assert (=> (not b_lambda!10415) (not b!476382)))

(declare-fun t!15085 () Bool)

(declare-fun tb!3965 () Bool)

(assert (=> (and start!42748 (= p!166 p!166) t!15085) tb!3965))

(declare-fun result!7509 () Bool)

(assert (=> tb!3965 (= result!7509 true)))

(assert (=> b!476382 t!15085))

(declare-fun b_and!20659 () Bool)

(assert (= b_and!20651 (and (=> t!15085 result!7509) b_and!20659)))

(declare-fun m!458709 () Bool)

(assert (=> b!476382 m!458709))

(declare-fun m!458711 () Bool)

(assert (=> b!476383 m!458711))

(assert (=> start!42748 d!75617))

(declare-fun d!75623 () Bool)

(declare-fun isStrictlySorted!375 (List!9076) Bool)

(assert (=> d!75623 (= (inv!15472 lm!215) (isStrictlySorted!375 (toList!3966 lm!215)))))

(declare-fun bs!15126 () Bool)

(assert (= bs!15126 d!75623))

(declare-fun m!458719 () Bool)

(assert (=> bs!15126 m!458719))

(assert (=> start!42748 d!75623))

(declare-fun d!75629 () Bool)

(declare-fun lt!217270 () Int)

(assert (=> d!75629 (>= lt!217270 0)))

(declare-fun e!279836 () Int)

(assert (=> d!75629 (= lt!217270 e!279836)))

(declare-fun c!57280 () Bool)

(assert (=> d!75629 (= c!57280 ((_ is Nil!9073) (toList!3966 lm!215)))))

(assert (=> d!75629 (= (size!15121 (toList!3966 lm!215)) lt!217270)))

(declare-fun b!476406 () Bool)

(assert (=> b!476406 (= e!279836 0)))

(declare-fun b!476407 () Bool)

(assert (=> b!476407 (= e!279836 (+ 1 (size!15121 (t!15078 (toList!3966 lm!215)))))))

(assert (= (and d!75629 c!57280) b!476406))

(assert (= (and d!75629 (not c!57280)) b!476407))

(declare-fun m!458725 () Bool)

(assert (=> b!476407 m!458725))

(assert (=> b!476351 d!75629))

(declare-fun b!476412 () Bool)

(declare-fun e!279839 () Bool)

(declare-fun tp!42331 () Bool)

(assert (=> b!476412 (= e!279839 (and tp_is_empty!13509 tp!42331))))

(assert (=> b!476352 (= tp!42316 e!279839)))

(assert (= (and b!476352 ((_ is Cons!9072) (toList!3966 lm!215))) b!476412))

(declare-fun b_lambda!10423 () Bool)

(assert (= b_lambda!10415 (or (and start!42748 b_free!12087) b_lambda!10423)))

(check-sat (not b!476407) (not b_next!12087) (not b!476383) (not b_lambda!10411) (not b!476412) (not b_lambda!10423) b_and!20659 tp_is_empty!13509 (not d!75623))
(check-sat b_and!20659 (not b_next!12087))
