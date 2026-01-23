; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!236616 () Bool)

(assert start!236616)

(declare-fun b!2415046 () Bool)

(declare-fun res!1025643 () Bool)

(declare-fun e!1537018 () Bool)

(assert (=> b!2415046 (=> res!1025643 e!1537018)))

(declare-datatypes ((C!14348 0))(
  ( (C!14349 (val!8416 Int)) )
))
(declare-datatypes ((Regex!7095 0))(
  ( (ElementMatch!7095 (c!384817 C!14348)) (Concat!11731 (regOne!14702 Regex!7095) (regTwo!14702 Regex!7095)) (EmptyExpr!7095) (Star!7095 (reg!7424 Regex!7095)) (EmptyLang!7095) (Union!7095 (regOne!14703 Regex!7095) (regTwo!14703 Regex!7095)) )
))
(declare-datatypes ((List!28428 0))(
  ( (Nil!28330) (Cons!28330 (h!33731 Regex!7095) (t!208405 List!28428)) )
))
(declare-fun l!9164 () List!28428)

(declare-fun isEmpty!16338 (List!28428) Bool)

(assert (=> b!2415046 (= res!1025643 (isEmpty!16338 l!9164))))

(declare-fun b!2415047 () Bool)

(declare-fun e!1537022 () Bool)

(declare-fun tp!768072 () Bool)

(declare-fun tp!768075 () Bool)

(assert (=> b!2415047 (= e!1537022 (and tp!768072 tp!768075))))

(declare-fun b!2415048 () Bool)

(declare-fun e!1537023 () Bool)

(declare-fun e!1537021 () Bool)

(assert (=> b!2415048 (= e!1537023 e!1537021)))

(declare-fun res!1025642 () Bool)

(assert (=> b!2415048 (=> res!1025642 e!1537021)))

(declare-fun lt!874072 () Regex!7095)

(declare-datatypes ((List!28429 0))(
  ( (Nil!28331) (Cons!28331 (h!33732 C!14348) (t!208406 List!28429)) )
))
(declare-fun s!9460 () List!28429)

(declare-fun matchR!3212 (Regex!7095 List!28429) Bool)

(assert (=> b!2415048 (= res!1025642 (matchR!3212 lt!874072 s!9460))))

(declare-fun head!5405 (List!28428) Regex!7095)

(assert (=> b!2415048 (= lt!874072 (head!5405 l!9164))))

(declare-fun b!2415049 () Bool)

(declare-fun e!1537020 () Bool)

(declare-fun tp!768078 () Bool)

(declare-fun tp!768079 () Bool)

(assert (=> b!2415049 (= e!1537020 (and tp!768078 tp!768079))))

(declare-fun b!2415050 () Bool)

(declare-fun res!1025644 () Bool)

(assert (=> b!2415050 (=> res!1025644 e!1537023)))

(declare-fun lt!874071 () List!28428)

(declare-fun generalisedConcat!196 (List!28428) Regex!7095)

(assert (=> b!2415050 (= res!1025644 (not (= (generalisedConcat!196 lt!874071) EmptyExpr!7095)))))

(declare-fun b!2415051 () Bool)

(assert (=> b!2415051 (= e!1537018 e!1537023)))

(declare-fun res!1025648 () Bool)

(assert (=> b!2415051 (=> res!1025648 e!1537023)))

(assert (=> b!2415051 (= res!1025648 (not (isEmpty!16338 lt!874071)))))

(declare-fun tail!3677 (List!28428) List!28428)

(assert (=> b!2415051 (= lt!874071 (tail!3677 l!9164))))

(declare-fun b!2415052 () Bool)

(declare-fun e!1537024 () Bool)

(declare-fun tp_is_empty!11603 () Bool)

(declare-fun tp!768076 () Bool)

(assert (=> b!2415052 (= e!1537024 (and tp_is_empty!11603 tp!768076))))

(declare-fun b!2415053 () Bool)

(assert (=> b!2415053 (= e!1537022 tp_is_empty!11603)))

(declare-fun b!2415054 () Bool)

(declare-fun tp!768073 () Bool)

(assert (=> b!2415054 (= e!1537022 tp!768073)))

(declare-fun b!2415055 () Bool)

(declare-fun res!1025647 () Bool)

(declare-fun e!1537019 () Bool)

(assert (=> b!2415055 (=> (not res!1025647) (not e!1537019))))

(declare-fun r!13927 () Regex!7095)

(assert (=> b!2415055 (= res!1025647 (= r!13927 (generalisedConcat!196 l!9164)))))

(declare-fun res!1025645 () Bool)

(assert (=> start!236616 (=> (not res!1025645) (not e!1537019))))

(declare-fun lambda!90941 () Int)

(declare-fun forall!5729 (List!28428 Int) Bool)

(assert (=> start!236616 (= res!1025645 (forall!5729 l!9164 lambda!90941))))

(assert (=> start!236616 e!1537019))

(assert (=> start!236616 e!1537020))

(assert (=> start!236616 e!1537022))

(assert (=> start!236616 e!1537024))

(declare-fun b!2415056 () Bool)

(assert (=> b!2415056 (= e!1537019 (not e!1537018))))

(declare-fun res!1025646 () Bool)

(assert (=> b!2415056 (=> res!1025646 e!1537018)))

(get-info :version)

(assert (=> b!2415056 (= res!1025646 (or ((_ is Concat!11731) r!13927) ((_ is EmptyExpr!7095) r!13927)))))

(declare-fun matchRSpec!944 (Regex!7095 List!28429) Bool)

(assert (=> b!2415056 (= (matchR!3212 r!13927 s!9460) (matchRSpec!944 r!13927 s!9460))))

(declare-datatypes ((Unit!41461 0))(
  ( (Unit!41462) )
))
(declare-fun lt!874073 () Unit!41461)

(declare-fun mainMatchTheorem!944 (Regex!7095 List!28429) Unit!41461)

(assert (=> b!2415056 (= lt!874073 (mainMatchTheorem!944 r!13927 s!9460))))

(declare-fun b!2415057 () Bool)

(assert (=> b!2415057 (= e!1537021 true)))

(declare-datatypes ((tuple2!27970 0))(
  ( (tuple2!27971 (_1!16526 List!28429) (_2!16526 List!28429)) )
))
(declare-datatypes ((Option!5596 0))(
  ( (None!5595) (Some!5595 (v!31003 tuple2!27970)) )
))
(declare-fun lt!874074 () Option!5596)

(declare-fun findConcatSeparation!704 (Regex!7095 Regex!7095 List!28429 List!28429 List!28429) Option!5596)

(assert (=> b!2415057 (= lt!874074 (findConcatSeparation!704 lt!874072 EmptyExpr!7095 Nil!28331 s!9460 s!9460))))

(declare-fun b!2415058 () Bool)

(declare-fun tp!768074 () Bool)

(declare-fun tp!768077 () Bool)

(assert (=> b!2415058 (= e!1537022 (and tp!768074 tp!768077))))

(assert (= (and start!236616 res!1025645) b!2415055))

(assert (= (and b!2415055 res!1025647) b!2415056))

(assert (= (and b!2415056 (not res!1025646)) b!2415046))

(assert (= (and b!2415046 (not res!1025643)) b!2415051))

(assert (= (and b!2415051 (not res!1025648)) b!2415050))

(assert (= (and b!2415050 (not res!1025644)) b!2415048))

(assert (= (and b!2415048 (not res!1025642)) b!2415057))

(assert (= (and start!236616 ((_ is Cons!28330) l!9164)) b!2415049))

(assert (= (and start!236616 ((_ is ElementMatch!7095) r!13927)) b!2415053))

(assert (= (and start!236616 ((_ is Concat!11731) r!13927)) b!2415058))

(assert (= (and start!236616 ((_ is Star!7095) r!13927)) b!2415054))

(assert (= (and start!236616 ((_ is Union!7095) r!13927)) b!2415047))

(assert (= (and start!236616 ((_ is Cons!28331) s!9460)) b!2415052))

(declare-fun m!2804227 () Bool)

(assert (=> b!2415050 m!2804227))

(declare-fun m!2804229 () Bool)

(assert (=> start!236616 m!2804229))

(declare-fun m!2804231 () Bool)

(assert (=> b!2415046 m!2804231))

(declare-fun m!2804233 () Bool)

(assert (=> b!2415057 m!2804233))

(declare-fun m!2804235 () Bool)

(assert (=> b!2415056 m!2804235))

(declare-fun m!2804237 () Bool)

(assert (=> b!2415056 m!2804237))

(declare-fun m!2804239 () Bool)

(assert (=> b!2415056 m!2804239))

(declare-fun m!2804241 () Bool)

(assert (=> b!2415051 m!2804241))

(declare-fun m!2804243 () Bool)

(assert (=> b!2415051 m!2804243))

(declare-fun m!2804245 () Bool)

(assert (=> b!2415048 m!2804245))

(declare-fun m!2804247 () Bool)

(assert (=> b!2415048 m!2804247))

(declare-fun m!2804249 () Bool)

(assert (=> b!2415055 m!2804249))

(check-sat (not b!2415051) (not b!2415054) (not b!2415048) (not b!2415050) (not b!2415058) (not b!2415047) (not b!2415057) tp_is_empty!11603 (not b!2415056) (not b!2415055) (not b!2415046) (not b!2415052) (not start!236616) (not b!2415049))
(check-sat)
