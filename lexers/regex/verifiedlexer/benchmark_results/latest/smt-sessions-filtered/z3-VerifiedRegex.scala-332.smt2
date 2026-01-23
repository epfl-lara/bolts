; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10926 () Bool)

(assert start!10926)

(declare-fun b_free!3249 () Bool)

(declare-fun b_next!3249 () Bool)

(assert (=> start!10926 (= b_free!3249 (not b_next!3249))))

(declare-fun tp!59146 () Bool)

(declare-fun b_and!4915 () Bool)

(assert (=> start!10926 (= tp!59146 b_and!4915)))

(declare-fun b_free!3251 () Bool)

(declare-fun b_next!3251 () Bool)

(assert (=> start!10926 (= b_free!3251 (not b_next!3251))))

(declare-fun tp!59148 () Bool)

(declare-fun b_and!4917 () Bool)

(assert (=> start!10926 (= tp!59148 b_and!4917)))

(assert (=> start!10926 true))

(declare-fun order!913 () Int)

(declare-fun lambda!2344 () Int)

(declare-fun order!915 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!589 (Int Int) Int)

(declare-fun dynLambda!590 (Int Int) Int)

(assert (=> start!10926 (< (dynLambda!589 order!913 f!927) (dynLambda!590 order!915 lambda!2344))))

(assert (=> start!10926 true))

(declare-fun g!9 () Int)

(assert (=> start!10926 (< (dynLambda!589 order!913 g!9) (dynLambda!590 order!915 lambda!2344))))

(declare-fun b!109027 () Bool)

(declare-fun res!52260 () Bool)

(declare-fun e!60611 () Bool)

(assert (=> b!109027 (=> res!52260 e!60611)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!227 0))(
  ( (A!228 (val!532 Int)) )
))
(declare-fun lt!30866 () (InoxSet A!227))

(declare-fun forall!249 ((InoxSet A!227) Int) Bool)

(assert (=> b!109027 (= res!52260 (not (forall!249 lt!30866 lambda!2344)))))

(declare-fun b!109028 () Bool)

(declare-fun e!60610 () Bool)

(declare-fun e!60609 () Bool)

(assert (=> b!109028 (= e!60610 e!60609)))

(declare-fun res!52258 () Bool)

(assert (=> b!109028 (=> res!52258 e!60609)))

(declare-fun lt!30876 () Int)

(declare-fun lt!30864 () Int)

(declare-fun lt!30863 () Int)

(assert (=> b!109028 (= res!52258 (or (not (= lt!30863 lt!30876)) (>= lt!30876 lt!30864)))))

(assert (=> b!109028 (= lt!30876 lt!30863)))

(declare-datatypes ((List!1737 0))(
  ( (Nil!1731) (Cons!1731 (h!7128 A!227) (t!21700 List!1737)) )
))
(declare-fun size!1529 (List!1737) Int)

(declare-fun toList!216 ((InoxSet A!227)) List!1737)

(assert (=> b!109028 (= lt!30876 (size!1529 (toList!216 lt!30866)))))

(declare-datatypes ((Unit!1176 0))(
  ( (Unit!1177) )
))
(declare-fun lt!30865 () Unit!1176)

(declare-fun lt!30870 () List!1737)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!2 (List!1737) Unit!1176)

(assert (=> b!109028 (= lt!30865 (lemmaNoDuplicateThenContentToListSameSize!2 (t!21700 lt!30870)))))

(declare-fun b!109029 () Bool)

(declare-fun res!52265 () Bool)

(assert (=> b!109029 (=> res!52265 e!60609)))

(assert (=> b!109029 (= res!52265 (not (forall!249 lt!30866 lambda!2344)))))

(declare-fun b!109030 () Bool)

(declare-fun e!60615 () Bool)

(assert (=> b!109030 (= e!60615 e!60611)))

(declare-fun res!52266 () Bool)

(assert (=> b!109030 (=> res!52266 e!60611)))

(declare-datatypes ((B!523 0))(
  ( (B!524 (val!533 Int)) )
))
(declare-fun dynLambda!591 (Int A!227) (InoxSet B!523))

(assert (=> b!109030 (= res!52266 (not (= (dynLambda!591 f!927 (h!7128 lt!30870)) (dynLambda!591 g!9 (h!7128 lt!30870)))))))

(assert (=> b!109030 (forall!249 lt!30866 lambda!2344)))

(declare-fun lt!30867 () Unit!1176)

(declare-fun lemmaForallThenOnContent!10 (List!1737 Int) Unit!1176)

(assert (=> b!109030 (= lt!30867 (lemmaForallThenOnContent!10 (t!21700 lt!30870) lambda!2344))))

(declare-fun b!109031 () Bool)

(assert (=> b!109031 (= e!60609 (forall!249 lt!30866 lambda!2344))))

(declare-fun b!109032 () Bool)

(assert (=> b!109032 (= e!60611 e!60610)))

(declare-fun res!52264 () Bool)

(assert (=> b!109032 (=> res!52264 e!60610)))

(declare-fun lt!30872 () Int)

(assert (=> b!109032 (= res!52264 (not (= lt!30872 lt!30863)))))

(assert (=> b!109032 (= lt!30863 (size!1529 (t!21700 lt!30870)))))

(assert (=> b!109032 (> lt!30864 lt!30872)))

(declare-fun tail!182 (List!1737) List!1737)

(assert (=> b!109032 (= lt!30872 (size!1529 (tail!182 lt!30870)))))

(assert (=> b!109032 (= lt!30864 (size!1529 lt!30870))))

(declare-fun lt!30874 () Unit!1176)

(declare-fun s!1451 () (InoxSet A!227))

(declare-fun lemmaToListSizeBiggerThanTailContentSize!6 ((InoxSet A!227)) Unit!1176)

(assert (=> b!109032 (= lt!30874 (lemmaToListSizeBiggerThanTailContentSize!6 s!1451))))

(declare-fun lt!30871 () Unit!1176)

(declare-fun forallContained!10 (List!1737 Int A!227) Unit!1176)

(assert (=> b!109032 (= lt!30871 (forallContained!10 lt!30870 lambda!2344 (h!7128 lt!30870)))))

(declare-fun setNonEmpty!1375 () Bool)

(declare-fun setRes!1375 () Bool)

(declare-fun tp!59147 () Bool)

(declare-fun tp_is_empty!817 () Bool)

(assert (=> setNonEmpty!1375 (= setRes!1375 (and tp!59147 tp_is_empty!817))))

(declare-fun setElem!1375 () A!227)

(declare-fun setRest!1375 () (InoxSet A!227))

(assert (=> setNonEmpty!1375 (= s!1451 ((_ map or) (store ((as const (Array A!227 Bool)) false) setElem!1375 true) setRest!1375))))

(declare-fun b!109033 () Bool)

(declare-fun e!60612 () Bool)

(declare-fun e!60614 () Bool)

(assert (=> b!109033 (= e!60612 e!60614)))

(declare-fun res!52261 () Bool)

(assert (=> b!109033 (=> (not res!52261) (not e!60614))))

(get-info :version)

(assert (=> b!109033 (= res!52261 ((_ is Cons!1731) lt!30870))))

(assert (=> b!109033 (= lt!30870 (toList!216 s!1451))))

(declare-fun b!109034 () Bool)

(declare-fun e!60613 () Bool)

(assert (=> b!109034 (= e!60613 (not e!60615))))

(declare-fun res!52262 () Bool)

(assert (=> b!109034 (=> res!52262 e!60615)))

(declare-fun forall!250 (List!1737 Int) Bool)

(assert (=> b!109034 (= res!52262 (not (forall!250 (t!21700 lt!30870) lambda!2344)))))

(declare-fun lt!30875 () (InoxSet A!227))

(declare-fun lt!30868 () (InoxSet A!227))

(declare-fun flatMap!23 ((InoxSet A!227) Int) (InoxSet B!523))

(assert (=> b!109034 (= ((_ map or) (flatMap!23 lt!30868 g!9) (flatMap!23 lt!30866 g!9)) (flatMap!23 lt!30875 g!9))))

(declare-fun lt!30873 () Unit!1176)

(declare-fun lemmaFlatMapAssociative!12 ((InoxSet A!227) (InoxSet A!227) Int) Unit!1176)

(assert (=> b!109034 (= lt!30873 (lemmaFlatMapAssociative!12 lt!30868 lt!30866 g!9))))

(assert (=> b!109034 (= ((_ map or) (flatMap!23 lt!30868 f!927) (flatMap!23 lt!30866 f!927)) (flatMap!23 lt!30875 f!927))))

(declare-fun lt!30869 () Unit!1176)

(assert (=> b!109034 (= lt!30869 (lemmaFlatMapAssociative!12 lt!30868 lt!30866 f!927))))

(declare-fun res!52263 () Bool)

(assert (=> start!10926 (=> (not res!52263) (not e!60612))))

(assert (=> start!10926 (= res!52263 (forall!249 s!1451 lambda!2344))))

(assert (=> start!10926 e!60612))

(declare-fun condSetEmpty!1375 () Bool)

(assert (=> start!10926 (= condSetEmpty!1375 (= s!1451 ((as const (Array A!227 Bool)) false)))))

(assert (=> start!10926 setRes!1375))

(assert (=> start!10926 tp!59146))

(assert (=> start!10926 tp!59148))

(declare-fun setIsEmpty!1375 () Bool)

(assert (=> setIsEmpty!1375 setRes!1375))

(declare-fun b!109035 () Bool)

(assert (=> b!109035 (= e!60614 e!60613)))

(declare-fun res!52259 () Bool)

(assert (=> b!109035 (=> (not res!52259) (not e!60613))))

(assert (=> b!109035 (= res!52259 (= s!1451 lt!30875))))

(assert (=> b!109035 (= lt!30875 ((_ map or) lt!30868 lt!30866))))

(declare-fun content!163 (List!1737) (InoxSet A!227))

(assert (=> b!109035 (= lt!30866 (content!163 (t!21700 lt!30870)))))

(assert (=> b!109035 (= lt!30868 (store ((as const (Array A!227 Bool)) false) (h!7128 lt!30870) true))))

(assert (= (and start!10926 res!52263) b!109033))

(assert (= (and b!109033 res!52261) b!109035))

(assert (= (and b!109035 res!52259) b!109034))

(assert (= (and b!109034 (not res!52262)) b!109030))

(assert (= (and b!109030 (not res!52266)) b!109027))

(assert (= (and b!109027 (not res!52260)) b!109032))

(assert (= (and b!109032 (not res!52264)) b!109028))

(assert (= (and b!109028 (not res!52258)) b!109029))

(assert (= (and b!109029 (not res!52265)) b!109031))

(assert (= (and start!10926 condSetEmpty!1375) setIsEmpty!1375))

(assert (= (and start!10926 (not condSetEmpty!1375)) setNonEmpty!1375))

(declare-fun b_lambda!1265 () Bool)

(assert (=> (not b_lambda!1265) (not b!109030)))

(declare-fun t!21693 () Bool)

(declare-fun tb!3223 () Bool)

(assert (=> (and start!10926 (= f!927 f!927) t!21693) tb!3223))

(assert (=> b!109030 t!21693))

(declare-fun result!4740 () Bool)

(declare-fun b_and!4919 () Bool)

(assert (= b_and!4915 (and (=> t!21693 result!4740) b_and!4919)))

(declare-fun tb!3225 () Bool)

(declare-fun t!21695 () Bool)

(assert (=> (and start!10926 (= g!9 f!927) t!21695) tb!3225))

(assert (=> b!109030 t!21695))

(declare-fun result!4742 () Bool)

(declare-fun b_and!4921 () Bool)

(assert (= b_and!4917 (and (=> t!21695 result!4742) b_and!4921)))

(declare-fun b_lambda!1267 () Bool)

(assert (=> (not b_lambda!1267) (not b!109030)))

(declare-fun t!21697 () Bool)

(declare-fun tb!3227 () Bool)

(assert (=> (and start!10926 (= f!927 g!9) t!21697) tb!3227))

(assert (=> b!109030 t!21697))

(declare-fun result!4744 () Bool)

(declare-fun b_and!4923 () Bool)

(assert (= b_and!4919 (and (=> t!21697 result!4744) b_and!4923)))

(declare-fun t!21699 () Bool)

(declare-fun tb!3229 () Bool)

(assert (=> (and start!10926 (= g!9 g!9) t!21699) tb!3229))

(assert (=> b!109030 t!21699))

(declare-fun result!4746 () Bool)

(declare-fun b_and!4925 () Bool)

(assert (= b_and!4921 (and (=> t!21699 result!4746) b_and!4925)))

(declare-fun m!98010 () Bool)

(assert (=> b!109029 m!98010))

(assert (=> b!109027 m!98010))

(declare-fun m!98012 () Bool)

(assert (=> start!10926 m!98012))

(declare-fun m!98014 () Bool)

(assert (=> b!109033 m!98014))

(assert (=> b!109031 m!98010))

(declare-fun m!98016 () Bool)

(assert (=> b!109028 m!98016))

(assert (=> b!109028 m!98016))

(declare-fun m!98018 () Bool)

(assert (=> b!109028 m!98018))

(declare-fun m!98020 () Bool)

(assert (=> b!109028 m!98020))

(declare-fun m!98022 () Bool)

(assert (=> b!109032 m!98022))

(declare-fun m!98024 () Bool)

(assert (=> b!109032 m!98024))

(declare-fun m!98026 () Bool)

(assert (=> b!109032 m!98026))

(declare-fun m!98028 () Bool)

(assert (=> b!109032 m!98028))

(declare-fun m!98030 () Bool)

(assert (=> b!109032 m!98030))

(assert (=> b!109032 m!98028))

(declare-fun m!98032 () Bool)

(assert (=> b!109032 m!98032))

(declare-fun m!98034 () Bool)

(assert (=> b!109035 m!98034))

(declare-fun m!98036 () Bool)

(assert (=> b!109035 m!98036))

(declare-fun m!98038 () Bool)

(assert (=> b!109030 m!98038))

(declare-fun m!98040 () Bool)

(assert (=> b!109030 m!98040))

(assert (=> b!109030 m!98010))

(declare-fun m!98042 () Bool)

(assert (=> b!109030 m!98042))

(declare-fun m!98044 () Bool)

(assert (=> b!109034 m!98044))

(declare-fun m!98046 () Bool)

(assert (=> b!109034 m!98046))

(declare-fun m!98048 () Bool)

(assert (=> b!109034 m!98048))

(declare-fun m!98050 () Bool)

(assert (=> b!109034 m!98050))

(declare-fun m!98052 () Bool)

(assert (=> b!109034 m!98052))

(declare-fun m!98054 () Bool)

(assert (=> b!109034 m!98054))

(declare-fun m!98056 () Bool)

(assert (=> b!109034 m!98056))

(declare-fun m!98058 () Bool)

(assert (=> b!109034 m!98058))

(declare-fun m!98060 () Bool)

(assert (=> b!109034 m!98060))

(check-sat (not b!109032) (not b!109028) (not tb!3227) (not tb!3229) (not b_lambda!1267) (not b!109031) (not tb!3223) (not b!109027) (not b!109029) b_and!4923 (not start!10926) (not b!109035) (not b!109034) (not b!109033) (not tb!3225) (not b_lambda!1265) b_and!4925 (not setNonEmpty!1375) (not b_next!3249) tp_is_empty!817 (not b_next!3251) (not b!109030))
(check-sat b_and!4923 b_and!4925 (not b_next!3251) (not b_next!3249))
