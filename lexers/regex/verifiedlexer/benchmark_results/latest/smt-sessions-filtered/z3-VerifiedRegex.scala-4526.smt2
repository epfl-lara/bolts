; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239870 () Bool)

(assert start!239870)

(declare-fun b_free!70575 () Bool)

(declare-fun b_next!71279 () Bool)

(assert (=> start!239870 (= b_free!70575 (not b_next!71279))))

(declare-fun tp!783416 () Bool)

(declare-fun b_and!185571 () Bool)

(assert (=> start!239870 (= tp!783416 b_and!185571)))

(declare-fun b!2460613 () Bool)

(declare-fun e!1560594 () Bool)

(declare-datatypes ((B!1873 0))(
  ( (B!1874 (val!8566 Int)) )
))
(declare-datatypes ((List!28723 0))(
  ( (Nil!28623) (Cons!28623 (h!34024 B!1873) (t!208702 List!28723)) )
))
(declare-fun l!3055 () List!28723)

(declare-fun p!1945 () Int)

(declare-fun size!22282 (List!28723) Int)

(declare-fun filter!488 (List!28723 Int) List!28723)

(assert (=> b!2460613 (= e!1560594 (>= (size!22282 (filter!488 l!3055 p!1945)) (size!22282 l!3055)))))

(declare-fun b!2460614 () Bool)

(declare-fun e!1560593 () Bool)

(declare-fun tp_is_empty!11903 () Bool)

(declare-fun tp!783417 () Bool)

(assert (=> b!2460614 (= e!1560593 (and tp_is_empty!11903 tp!783417))))

(declare-fun b!2460612 () Bool)

(declare-fun res!1042722 () Bool)

(assert (=> b!2460612 (=> (not res!1042722) (not e!1560594))))

(declare-fun isEmpty!16641 (List!28723) Bool)

(assert (=> b!2460612 (= res!1042722 (not (isEmpty!16641 l!3055)))))

(declare-fun b!2460611 () Bool)

(declare-fun res!1042724 () Bool)

(assert (=> b!2460611 (=> (not res!1042724) (not e!1560594))))

(get-info :version)

(assert (=> b!2460611 (= res!1042724 ((_ is Nil!28623) l!3055))))

(declare-fun res!1042723 () Bool)

(assert (=> start!239870 (=> (not res!1042723) (not e!1560594))))

(declare-fun forall!5875 (List!28723 Int) Bool)

(assert (=> start!239870 (= res!1042723 (not (forall!5875 l!3055 p!1945)))))

(assert (=> start!239870 e!1560594))

(assert (=> start!239870 e!1560593))

(assert (=> start!239870 tp!783416))

(assert (= (and start!239870 res!1042723) b!2460611))

(assert (= (and b!2460611 res!1042724) b!2460612))

(assert (= (and b!2460612 res!1042722) b!2460613))

(assert (= (and start!239870 ((_ is Cons!28623) l!3055)) b!2460614))

(declare-fun m!2829957 () Bool)

(assert (=> b!2460613 m!2829957))

(assert (=> b!2460613 m!2829957))

(declare-fun m!2829959 () Bool)

(assert (=> b!2460613 m!2829959))

(declare-fun m!2829961 () Bool)

(assert (=> b!2460613 m!2829961))

(declare-fun m!2829963 () Bool)

(assert (=> b!2460612 m!2829963))

(declare-fun m!2829965 () Bool)

(assert (=> start!239870 m!2829965))

(check-sat b_and!185571 (not b!2460612) (not b_next!71279) (not b!2460614) (not start!239870) tp_is_empty!11903 (not b!2460613))
(check-sat b_and!185571 (not b_next!71279))
(get-model)

(declare-fun d!708315 () Bool)

(declare-fun res!1042735 () Bool)

(declare-fun e!1560605 () Bool)

(assert (=> d!708315 (=> res!1042735 e!1560605)))

(assert (=> d!708315 (= res!1042735 ((_ is Nil!28623) l!3055))))

(assert (=> d!708315 (= (forall!5875 l!3055 p!1945) e!1560605)))

(declare-fun b!2460625 () Bool)

(declare-fun e!1560606 () Bool)

(assert (=> b!2460625 (= e!1560605 e!1560606)))

(declare-fun res!1042736 () Bool)

(assert (=> b!2460625 (=> (not res!1042736) (not e!1560606))))

(declare-fun dynLambda!12280 (Int B!1873) Bool)

(assert (=> b!2460625 (= res!1042736 (dynLambda!12280 p!1945 (h!34024 l!3055)))))

(declare-fun b!2460626 () Bool)

(assert (=> b!2460626 (= e!1560606 (forall!5875 (t!208702 l!3055) p!1945))))

(assert (= (and d!708315 (not res!1042735)) b!2460625))

(assert (= (and b!2460625 res!1042736) b!2460626))

(declare-fun b_lambda!75241 () Bool)

(assert (=> (not b_lambda!75241) (not b!2460625)))

(declare-fun t!208706 () Bool)

(declare-fun tb!138843 () Bool)

(assert (=> (and start!239870 (= p!1945 p!1945) t!208706) tb!138843))

(declare-fun result!171382 () Bool)

(assert (=> tb!138843 (= result!171382 true)))

(assert (=> b!2460625 t!208706))

(declare-fun b_and!185575 () Bool)

(assert (= b_and!185571 (and (=> t!208706 result!171382) b_and!185575)))

(declare-fun m!2829971 () Bool)

(assert (=> b!2460625 m!2829971))

(declare-fun m!2829973 () Bool)

(assert (=> b!2460626 m!2829973))

(assert (=> start!239870 d!708315))

(declare-fun d!708321 () Bool)

(declare-fun lt!880996 () Int)

(assert (=> d!708321 (>= lt!880996 0)))

(declare-fun e!1560612 () Int)

(assert (=> d!708321 (= lt!880996 e!1560612)))

(declare-fun c!392733 () Bool)

(assert (=> d!708321 (= c!392733 ((_ is Nil!28623) (filter!488 l!3055 p!1945)))))

(assert (=> d!708321 (= (size!22282 (filter!488 l!3055 p!1945)) lt!880996)))

(declare-fun b!2460637 () Bool)

(assert (=> b!2460637 (= e!1560612 0)))

(declare-fun b!2460638 () Bool)

(assert (=> b!2460638 (= e!1560612 (+ 1 (size!22282 (t!208702 (filter!488 l!3055 p!1945)))))))

(assert (= (and d!708321 c!392733) b!2460637))

(assert (= (and d!708321 (not c!392733)) b!2460638))

(declare-fun m!2829977 () Bool)

(assert (=> b!2460638 m!2829977))

(assert (=> b!2460613 d!708321))

(declare-fun bm!151393 () Bool)

(declare-fun call!151398 () List!28723)

(assert (=> bm!151393 (= call!151398 (filter!488 (t!208702 l!3055) p!1945))))

(declare-fun b!2460669 () Bool)

(declare-fun e!1560630 () Bool)

(declare-fun lt!881002 () List!28723)

(assert (=> b!2460669 (= e!1560630 (forall!5875 lt!881002 p!1945))))

(declare-fun d!708325 () Bool)

(assert (=> d!708325 e!1560630))

(declare-fun res!1042748 () Bool)

(assert (=> d!708325 (=> (not res!1042748) (not e!1560630))))

(assert (=> d!708325 (= res!1042748 (<= (size!22282 lt!881002) (size!22282 l!3055)))))

(declare-fun e!1560629 () List!28723)

(assert (=> d!708325 (= lt!881002 e!1560629)))

(declare-fun c!392745 () Bool)

(assert (=> d!708325 (= c!392745 ((_ is Nil!28623) l!3055))))

(assert (=> d!708325 (= (filter!488 l!3055 p!1945) lt!881002)))

(declare-fun b!2460670 () Bool)

(declare-fun e!1560628 () List!28723)

(assert (=> b!2460670 (= e!1560628 (Cons!28623 (h!34024 l!3055) call!151398))))

(declare-fun b!2460671 () Bool)

(declare-fun res!1042747 () Bool)

(assert (=> b!2460671 (=> (not res!1042747) (not e!1560630))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3942 (List!28723) (InoxSet B!1873))

(assert (=> b!2460671 (= res!1042747 (= ((_ map implies) (content!3942 lt!881002) (content!3942 l!3055)) ((as const (InoxSet B!1873)) true)))))

(declare-fun b!2460672 () Bool)

(assert (=> b!2460672 (= e!1560628 call!151398)))

(declare-fun b!2460673 () Bool)

(assert (=> b!2460673 (= e!1560629 e!1560628)))

(declare-fun c!392744 () Bool)

(assert (=> b!2460673 (= c!392744 (dynLambda!12280 p!1945 (h!34024 l!3055)))))

(declare-fun b!2460674 () Bool)

(assert (=> b!2460674 (= e!1560629 Nil!28623)))

(assert (= (and d!708325 c!392745) b!2460674))

(assert (= (and d!708325 (not c!392745)) b!2460673))

(assert (= (and b!2460673 c!392744) b!2460670))

(assert (= (and b!2460673 (not c!392744)) b!2460672))

(assert (= (or b!2460670 b!2460672) bm!151393))

(assert (= (and d!708325 res!1042748) b!2460671))

(assert (= (and b!2460671 res!1042747) b!2460669))

(declare-fun b_lambda!75245 () Bool)

(assert (=> (not b_lambda!75245) (not b!2460673)))

(assert (=> b!2460673 t!208706))

(declare-fun b_and!185579 () Bool)

(assert (= b_and!185575 (and (=> t!208706 result!171382) b_and!185579)))

(declare-fun m!2829989 () Bool)

(assert (=> b!2460669 m!2829989))

(declare-fun m!2829993 () Bool)

(assert (=> b!2460671 m!2829993))

(declare-fun m!2829995 () Bool)

(assert (=> b!2460671 m!2829995))

(declare-fun m!2829997 () Bool)

(assert (=> bm!151393 m!2829997))

(assert (=> b!2460673 m!2829971))

(declare-fun m!2829999 () Bool)

(assert (=> d!708325 m!2829999))

(assert (=> d!708325 m!2829961))

(assert (=> b!2460613 d!708325))

(declare-fun d!708329 () Bool)

(declare-fun lt!881004 () Int)

(assert (=> d!708329 (>= lt!881004 0)))

(declare-fun e!1560634 () Int)

(assert (=> d!708329 (= lt!881004 e!1560634)))

(declare-fun c!392747 () Bool)

(assert (=> d!708329 (= c!392747 ((_ is Nil!28623) l!3055))))

(assert (=> d!708329 (= (size!22282 l!3055) lt!881004)))

(declare-fun b!2460681 () Bool)

(assert (=> b!2460681 (= e!1560634 0)))

(declare-fun b!2460682 () Bool)

(assert (=> b!2460682 (= e!1560634 (+ 1 (size!22282 (t!208702 l!3055))))))

(assert (= (and d!708329 c!392747) b!2460681))

(assert (= (and d!708329 (not c!392747)) b!2460682))

(declare-fun m!2830001 () Bool)

(assert (=> b!2460682 m!2830001))

(assert (=> b!2460613 d!708329))

(declare-fun d!708331 () Bool)

(assert (=> d!708331 (= (isEmpty!16641 l!3055) ((_ is Nil!28623) l!3055))))

(assert (=> b!2460612 d!708331))

(declare-fun b!2460688 () Bool)

(declare-fun e!1560638 () Bool)

(declare-fun tp!783423 () Bool)

(assert (=> b!2460688 (= e!1560638 (and tp_is_empty!11903 tp!783423))))

(assert (=> b!2460614 (= tp!783417 e!1560638)))

(assert (= (and b!2460614 ((_ is Cons!28623) (t!208702 l!3055))) b!2460688))

(declare-fun b_lambda!75251 () Bool)

(assert (= b_lambda!75245 (or (and start!239870 b_free!70575) b_lambda!75251)))

(declare-fun b_lambda!75253 () Bool)

(assert (= b_lambda!75241 (or (and start!239870 b_free!70575) b_lambda!75253)))

(check-sat b_and!185579 (not b!2460682) (not bm!151393) (not b_lambda!75253) (not b!2460671) (not b_next!71279) (not b!2460688) (not b_lambda!75251) (not b!2460638) (not d!708325) tp_is_empty!11903 (not b!2460669) (not b!2460626))
(check-sat b_and!185579 (not b_next!71279))
