; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697982 () Bool)

(assert start!697982)

(declare-fun res!2918803 () Bool)

(declare-fun e!4300542 () Bool)

(assert (=> start!697982 (=> (not res!2918803) (not e!4300542))))

(declare-datatypes ((C!36890 0))(
  ( (C!36891 (val!28393 Int)) )
))
(declare-datatypes ((Regex!18308 0))(
  ( (ElementMatch!18308 (c!1334008 C!36890)) (Concat!27153 (regOne!37128 Regex!18308) (regTwo!37128 Regex!18308)) (EmptyExpr!18308) (Star!18308 (reg!18637 Regex!18308)) (EmptyLang!18308) (Union!18308 (regOne!37129 Regex!18308) (regTwo!37129 Regex!18308)) )
))
(declare-datatypes ((List!69664 0))(
  ( (Nil!69540) (Cons!69540 (h!75988 Regex!18308) (t!383681 List!69664)) )
))
(declare-datatypes ((Context!14520 0))(
  ( (Context!14521 (exprs!7760 List!69664)) )
))
(declare-fun z!3530 () (Set Context!14520))

(declare-datatypes ((List!69665 0))(
  ( (Nil!69541) (Cons!69541 (h!75989 Context!14520) (t!383682 List!69665)) )
))
(declare-fun unfocusZipper!2568 (List!69665) Regex!18308)

(declare-fun toList!11251 ((Set Context!14520)) List!69665)

(assert (=> start!697982 (= res!2918803 (= (unfocusZipper!2568 (toList!11251 z!3530)) EmptyExpr!18308))))

(assert (=> start!697982 e!4300542))

(declare-fun condSetEmpty!52806 () Bool)

(assert (=> start!697982 (= condSetEmpty!52806 (= z!3530 (as set.empty (Set Context!14520))))))

(declare-fun setRes!52806 () Bool)

(assert (=> start!697982 setRes!52806))

(declare-fun e!4300545 () Bool)

(assert (=> start!697982 e!4300545))

(declare-fun b!7158504 () Bool)

(declare-fun res!2918802 () Bool)

(assert (=> b!7158504 (=> (not res!2918802) (not e!4300542))))

(declare-fun focus!383 (Regex!18308) (Set Context!14520))

(assert (=> b!7158504 (= res!2918802 (not (= z!3530 (focus!383 EmptyExpr!18308))))))

(declare-fun b!7158505 () Bool)

(declare-fun tp_is_empty!46189 () Bool)

(declare-fun tp!1979658 () Bool)

(assert (=> b!7158505 (= e!4300545 (and tp_is_empty!46189 tp!1979658))))

(declare-fun setIsEmpty!52806 () Bool)

(assert (=> setIsEmpty!52806 setRes!52806))

(declare-fun setNonEmpty!52806 () Bool)

(declare-fun tp!1979656 () Bool)

(declare-fun e!4300544 () Bool)

(declare-fun setElem!52806 () Context!14520)

(declare-fun inv!88793 (Context!14520) Bool)

(assert (=> setNonEmpty!52806 (= setRes!52806 (and tp!1979656 (inv!88793 setElem!52806) e!4300544))))

(declare-fun setRest!52806 () (Set Context!14520))

(assert (=> setNonEmpty!52806 (= z!3530 (set.union (set.insert setElem!52806 (as set.empty (Set Context!14520))) setRest!52806))))

(declare-fun b!7158506 () Bool)

(declare-fun e!4300541 () Bool)

(assert (=> b!7158506 (= e!4300542 e!4300541)))

(declare-fun res!2918804 () Bool)

(assert (=> b!7158506 (=> (not res!2918804) (not e!4300541))))

(declare-fun lt!2569717 () Context!14520)

(assert (=> b!7158506 (= res!2918804 (= z!3530 (set.insert lt!2569717 (as set.empty (Set Context!14520)))))))

(assert (=> b!7158506 (= lt!2569717 (Context!14521 Nil!69540))))

(declare-fun b!7158507 () Bool)

(declare-fun tp!1979657 () Bool)

(assert (=> b!7158507 (= e!4300544 tp!1979657)))

(declare-fun b!7158508 () Bool)

(declare-fun res!2918805 () Bool)

(assert (=> b!7158508 (=> (not res!2918805) (not e!4300541))))

(declare-datatypes ((List!69666 0))(
  ( (Nil!69542) (Cons!69542 (h!75990 C!36890) (t!383683 List!69666)) )
))
(declare-fun s!7967 () List!69666)

(declare-fun isEmpty!40160 (List!69666) Bool)

(assert (=> b!7158508 (= res!2918805 (not (isEmpty!40160 s!7967)))))

(declare-fun b!7158509 () Bool)

(declare-fun e!4300543 () Bool)

(declare-fun lt!2569715 () (Set Context!14520))

(assert (=> b!7158509 (= e!4300543 (= (toList!11251 lt!2569715) Nil!69541))))

(declare-fun b!7158510 () Bool)

(assert (=> b!7158510 (= e!4300541 e!4300543)))

(declare-fun res!2918806 () Bool)

(assert (=> b!7158510 (=> (not res!2918806) (not e!4300543))))

(declare-fun lt!2569716 () C!36890)

(declare-fun derivationStepZipperUp!2296 (Context!14520 C!36890) (Set Context!14520))

(assert (=> b!7158510 (= res!2918806 (= (derivationStepZipperUp!2296 lt!2569717 lt!2569716) (as set.empty (Set Context!14520))))))

(declare-fun derivationStepZipper!3191 ((Set Context!14520) C!36890) (Set Context!14520))

(assert (=> b!7158510 (= lt!2569715 (derivationStepZipper!3191 z!3530 lt!2569716))))

(declare-fun head!14592 (List!69666) C!36890)

(assert (=> b!7158510 (= lt!2569716 (head!14592 s!7967))))

(declare-fun b!7158511 () Bool)

(declare-fun res!2918807 () Bool)

(assert (=> b!7158511 (=> (not res!2918807) (not e!4300543))))

(assert (=> b!7158511 (= res!2918807 (not (= lt!2569715 (as set.empty (Set Context!14520)))))))

(assert (= (and start!697982 res!2918803) b!7158504))

(assert (= (and b!7158504 res!2918802) b!7158506))

(assert (= (and b!7158506 res!2918804) b!7158508))

(assert (= (and b!7158508 res!2918805) b!7158510))

(assert (= (and b!7158510 res!2918806) b!7158511))

(assert (= (and b!7158511 res!2918807) b!7158509))

(assert (= (and start!697982 condSetEmpty!52806) setIsEmpty!52806))

(assert (= (and start!697982 (not condSetEmpty!52806)) setNonEmpty!52806))

(assert (= setNonEmpty!52806 b!7158507))

(assert (= (and start!697982 (is-Cons!69542 s!7967)) b!7158505))

(declare-fun m!7864784 () Bool)

(assert (=> b!7158509 m!7864784))

(declare-fun m!7864786 () Bool)

(assert (=> start!697982 m!7864786))

(assert (=> start!697982 m!7864786))

(declare-fun m!7864788 () Bool)

(assert (=> start!697982 m!7864788))

(declare-fun m!7864790 () Bool)

(assert (=> setNonEmpty!52806 m!7864790))

(declare-fun m!7864792 () Bool)

(assert (=> b!7158508 m!7864792))

(declare-fun m!7864794 () Bool)

(assert (=> b!7158510 m!7864794))

(declare-fun m!7864796 () Bool)

(assert (=> b!7158510 m!7864796))

(declare-fun m!7864798 () Bool)

(assert (=> b!7158510 m!7864798))

(declare-fun m!7864800 () Bool)

(assert (=> b!7158506 m!7864800))

(declare-fun m!7864802 () Bool)

(assert (=> b!7158504 m!7864802))

(push 1)

(assert (not b!7158510))

(assert (not b!7158508))

(assert (not b!7158504))

(assert tp_is_empty!46189)

(assert (not start!697982))

(assert (not b!7158509))

(assert (not b!7158505))

(assert (not setNonEmpty!52806))

(assert (not b!7158507))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2230225 () Bool)

(declare-fun e!4300563 () Bool)

(assert (=> d!2230225 e!4300563))

(declare-fun res!2918828 () Bool)

(assert (=> d!2230225 (=> (not res!2918828) (not e!4300563))))

(declare-fun lt!2569729 () List!69665)

(declare-fun noDuplicate!2856 (List!69665) Bool)

(assert (=> d!2230225 (= res!2918828 (noDuplicate!2856 lt!2569729))))

(declare-fun choose!55323 ((Set Context!14520)) List!69665)

(assert (=> d!2230225 (= lt!2569729 (choose!55323 lt!2569715))))

(assert (=> d!2230225 (= (toList!11251 lt!2569715) lt!2569729)))

(declare-fun b!7158538 () Bool)

(declare-fun content!14285 (List!69665) (Set Context!14520))

(assert (=> b!7158538 (= e!4300563 (= (content!14285 lt!2569729) lt!2569715))))

(assert (= (and d!2230225 res!2918828) b!7158538))

(declare-fun m!7864824 () Bool)

(assert (=> d!2230225 m!7864824))

(declare-fun m!7864826 () Bool)

(assert (=> d!2230225 m!7864826))

(declare-fun m!7864828 () Bool)

(assert (=> b!7158538 m!7864828))

(assert (=> b!7158509 d!2230225))

(declare-fun d!2230229 () Bool)

(assert (=> d!2230229 (= (isEmpty!40160 s!7967) (is-Nil!69542 s!7967))))

(assert (=> b!7158508 d!2230229))

(declare-fun d!2230231 () Bool)

(declare-fun e!4300566 () Bool)

(assert (=> d!2230231 e!4300566))

(declare-fun res!2918832 () Bool)

(assert (=> d!2230231 (=> (not res!2918832) (not e!4300566))))

(declare-fun validRegex!9437 (Regex!18308) Bool)

(assert (=> d!2230231 (= res!2918832 (validRegex!9437 EmptyExpr!18308))))

(assert (=> d!2230231 (= (focus!383 EmptyExpr!18308) (set.insert (Context!14521 (Cons!69540 EmptyExpr!18308 Nil!69540)) (as set.empty (Set Context!14520))))))

(declare-fun b!7158541 () Bool)

(assert (=> b!7158541 (= e!4300566 (= (unfocusZipper!2568 (toList!11251 (set.insert (Context!14521 (Cons!69540 EmptyExpr!18308 Nil!69540)) (as set.empty (Set Context!14520))))) EmptyExpr!18308))))

(assert (= (and d!2230231 res!2918832) b!7158541))

(declare-fun m!7864830 () Bool)

(assert (=> d!2230231 m!7864830))

(declare-fun m!7864832 () Bool)

(assert (=> d!2230231 m!7864832))

(assert (=> b!7158541 m!7864832))

(assert (=> b!7158541 m!7864832))

(declare-fun m!7864834 () Bool)

(assert (=> b!7158541 m!7864834))

(assert (=> b!7158541 m!7864834))

(declare-fun m!7864836 () Bool)

(assert (=> b!7158541 m!7864836))

(assert (=> b!7158504 d!2230231))

(declare-fun d!2230233 () Bool)

(declare-fun lt!2569732 () Regex!18308)

(assert (=> d!2230233 (validRegex!9437 lt!2569732)))

(declare-fun generalisedUnion!2740 (List!69664) Regex!18308)

(declare-fun unfocusZipperList!2296 (List!69665) List!69664)

(assert (=> d!2230233 (= lt!2569732 (generalisedUnion!2740 (unfocusZipperList!2296 (toList!11251 z!3530))))))

(assert (=> d!2230233 (= (unfocusZipper!2568 (toList!11251 z!3530)) lt!2569732)))

(declare-fun bs!1890202 () Bool)

(assert (= bs!1890202 d!2230233))

(declare-fun m!7864838 () Bool)

(assert (=> bs!1890202 m!7864838))

(assert (=> bs!1890202 m!7864786))

(declare-fun m!7864840 () Bool)

(assert (=> bs!1890202 m!7864840))

(assert (=> bs!1890202 m!7864840))

(declare-fun m!7864842 () Bool)

(assert (=> bs!1890202 m!7864842))

(assert (=> start!697982 d!2230233))

(declare-fun d!2230235 () Bool)

(declare-fun e!4300567 () Bool)

(assert (=> d!2230235 e!4300567))

(declare-fun res!2918833 () Bool)

(assert (=> d!2230235 (=> (not res!2918833) (not e!4300567))))

(declare-fun lt!2569733 () List!69665)

(assert (=> d!2230235 (= res!2918833 (noDuplicate!2856 lt!2569733))))

(assert (=> d!2230235 (= lt!2569733 (choose!55323 z!3530))))

(assert (=> d!2230235 (= (toList!11251 z!3530) lt!2569733)))

(declare-fun b!7158542 () Bool)

(assert (=> b!7158542 (= e!4300567 (= (content!14285 lt!2569733) z!3530))))

(assert (= (and d!2230235 res!2918833) b!7158542))

(declare-fun m!7864844 () Bool)

(assert (=> d!2230235 m!7864844))

(declare-fun m!7864846 () Bool)

(assert (=> d!2230235 m!7864846))

(declare-fun m!7864848 () Bool)

(assert (=> b!7158542 m!7864848))

(assert (=> start!697982 d!2230235))

(declare-fun d!2230237 () Bool)

(declare-fun lambda!436710 () Int)

(declare-fun forall!17140 (List!69664 Int) Bool)

(assert (=> d!2230237 (= (inv!88793 setElem!52806) (forall!17140 (exprs!7760 setElem!52806) lambda!436710))))

(declare-fun bs!1890203 () Bool)

(assert (= bs!1890203 d!2230237))

(declare-fun m!7864850 () Bool)

(assert (=> bs!1890203 m!7864850))

(assert (=> setNonEmpty!52806 d!2230237))

(declare-fun b!7158553 () Bool)

(declare-fun e!4300574 () (Set Context!14520))

(declare-fun e!4300575 () (Set Context!14520))

(assert (=> b!7158553 (= e!4300574 e!4300575)))

(declare-fun c!1334014 () Bool)

(assert (=> b!7158553 (= c!1334014 (is-Cons!69540 (exprs!7760 lt!2569717)))))

(declare-fun b!7158554 () Bool)

(declare-fun e!4300576 () Bool)

(declare-fun nullable!7748 (Regex!18308) Bool)

(assert (=> b!7158554 (= e!4300576 (nullable!7748 (h!75988 (exprs!7760 lt!2569717))))))

(declare-fun b!7158555 () Bool)

(declare-fun call!651809 () (Set Context!14520))

(assert (=> b!7158555 (= e!4300575 call!651809)))

(declare-fun b!7158556 () Bool)

(assert (=> b!7158556 (= e!4300574 (set.union call!651809 (derivationStepZipperUp!2296 (Context!14521 (t!383681 (exprs!7760 lt!2569717))) lt!2569716)))))

(declare-fun d!2230239 () Bool)

(declare-fun c!1334015 () Bool)

(assert (=> d!2230239 (= c!1334015 e!4300576)))

(declare-fun res!2918836 () Bool)

(assert (=> d!2230239 (=> (not res!2918836) (not e!4300576))))

(assert (=> d!2230239 (= res!2918836 (is-Cons!69540 (exprs!7760 lt!2569717)))))

(assert (=> d!2230239 (= (derivationStepZipperUp!2296 lt!2569717 lt!2569716) e!4300574)))

(declare-fun bm!651804 () Bool)

(declare-fun derivationStepZipperDown!2490 (Regex!18308 Context!14520 C!36890) (Set Context!14520))

(assert (=> bm!651804 (= call!651809 (derivationStepZipperDown!2490 (h!75988 (exprs!7760 lt!2569717)) (Context!14521 (t!383681 (exprs!7760 lt!2569717))) lt!2569716))))

(declare-fun b!7158557 () Bool)

(assert (=> b!7158557 (= e!4300575 (as set.empty (Set Context!14520)))))

(assert (= (and d!2230239 res!2918836) b!7158554))

(assert (= (and d!2230239 c!1334015) b!7158556))

(assert (= (and d!2230239 (not c!1334015)) b!7158553))

(assert (= (and b!7158553 c!1334014) b!7158555))

(assert (= (and b!7158553 (not c!1334014)) b!7158557))

(assert (= (or b!7158556 b!7158555) bm!651804))

(declare-fun m!7864852 () Bool)

(assert (=> b!7158554 m!7864852))

(declare-fun m!7864854 () Bool)

(assert (=> b!7158556 m!7864854))

(declare-fun m!7864856 () Bool)

(assert (=> bm!651804 m!7864856))

(assert (=> b!7158510 d!2230239))

(declare-fun d!2230241 () Bool)

(assert (=> d!2230241 true))

(declare-fun lambda!436713 () Int)

(declare-fun flatMap!2645 ((Set Context!14520) Int) (Set Context!14520))

(assert (=> d!2230241 (= (derivationStepZipper!3191 z!3530 lt!2569716) (flatMap!2645 z!3530 lambda!436713))))

(declare-fun bs!1890204 () Bool)

(assert (= bs!1890204 d!2230241))

(declare-fun m!7864858 () Bool)

(assert (=> bs!1890204 m!7864858))

(assert (=> b!7158510 d!2230241))

(declare-fun d!2230243 () Bool)

(assert (=> d!2230243 (= (head!14592 s!7967) (h!75990 s!7967))))

(assert (=> b!7158510 d!2230243))

(declare-fun b!7158564 () Bool)

(declare-fun e!4300579 () Bool)

(declare-fun tp!1979670 () Bool)

(assert (=> b!7158564 (= e!4300579 (and tp_is_empty!46189 tp!1979670))))

(assert (=> b!7158505 (= tp!1979658 e!4300579)))

(assert (= (and b!7158505 (is-Cons!69542 (t!383683 s!7967))) b!7158564))

(declare-fun b!7158569 () Bool)

(declare-fun e!4300582 () Bool)

(declare-fun tp!1979675 () Bool)

(declare-fun tp!1979676 () Bool)

(assert (=> b!7158569 (= e!4300582 (and tp!1979675 tp!1979676))))

(assert (=> b!7158507 (= tp!1979657 e!4300582)))

(assert (= (and b!7158507 (is-Cons!69540 (exprs!7760 setElem!52806))) b!7158569))

(declare-fun condSetEmpty!52812 () Bool)

(assert (=> setNonEmpty!52806 (= condSetEmpty!52812 (= setRest!52806 (as set.empty (Set Context!14520))))))

(declare-fun setRes!52812 () Bool)

(assert (=> setNonEmpty!52806 (= tp!1979656 setRes!52812)))

(declare-fun setIsEmpty!52812 () Bool)

(assert (=> setIsEmpty!52812 setRes!52812))

(declare-fun tp!1979682 () Bool)

(declare-fun setElem!52812 () Context!14520)

(declare-fun e!4300585 () Bool)

(declare-fun setNonEmpty!52812 () Bool)

(assert (=> setNonEmpty!52812 (= setRes!52812 (and tp!1979682 (inv!88793 setElem!52812) e!4300585))))

(declare-fun setRest!52812 () (Set Context!14520))

(assert (=> setNonEmpty!52812 (= setRest!52806 (set.union (set.insert setElem!52812 (as set.empty (Set Context!14520))) setRest!52812))))

(declare-fun b!7158574 () Bool)

(declare-fun tp!1979681 () Bool)

(assert (=> b!7158574 (= e!4300585 tp!1979681)))

(assert (= (and setNonEmpty!52806 condSetEmpty!52812) setIsEmpty!52812))

(assert (= (and setNonEmpty!52806 (not condSetEmpty!52812)) setNonEmpty!52812))

(assert (= setNonEmpty!52812 b!7158574))

(declare-fun m!7864860 () Bool)

(assert (=> setNonEmpty!52812 m!7864860))

(push 1)

(assert (not b!7158554))

(assert (not b!7158538))

(assert (not b!7158556))

(assert (not d!2230225))

(assert (not d!2230233))

(assert (not bm!651804))

(assert (not setNonEmpty!52812))

(assert tp_is_empty!46189)

(assert (not d!2230241))

(assert (not d!2230235))

(assert (not d!2230231))

(assert (not b!7158564))

(assert (not b!7158574))

(assert (not b!7158541))

(assert (not b!7158542))

(assert (not b!7158569))

(assert (not d!2230237))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2230261 () Bool)

(declare-fun res!2918852 () Bool)

(declare-fun e!4300615 () Bool)

(assert (=> d!2230261 (=> res!2918852 e!4300615)))

(assert (=> d!2230261 (= res!2918852 (is-Nil!69541 lt!2569733))))

(assert (=> d!2230261 (= (noDuplicate!2856 lt!2569733) e!4300615)))

(declare-fun b!7158618 () Bool)

(declare-fun e!4300616 () Bool)

(assert (=> b!7158618 (= e!4300615 e!4300616)))

(declare-fun res!2918853 () Bool)

(assert (=> b!7158618 (=> (not res!2918853) (not e!4300616))))

(declare-fun contains!20700 (List!69665 Context!14520) Bool)

(assert (=> b!7158618 (= res!2918853 (not (contains!20700 (t!383682 lt!2569733) (h!75989 lt!2569733))))))

(declare-fun b!7158619 () Bool)

(assert (=> b!7158619 (= e!4300616 (noDuplicate!2856 (t!383682 lt!2569733)))))

(assert (= (and d!2230261 (not res!2918852)) b!7158618))

(assert (= (and b!7158618 res!2918853) b!7158619))

(declare-fun m!7864900 () Bool)

(assert (=> b!7158618 m!7864900))

(declare-fun m!7864902 () Bool)

(assert (=> b!7158619 m!7864902))

(assert (=> d!2230235 d!2230261))

(declare-fun d!2230263 () Bool)

(declare-fun e!4300624 () Bool)

(assert (=> d!2230263 e!4300624))

(declare-fun res!2918859 () Bool)

(assert (=> d!2230263 (=> (not res!2918859) (not e!4300624))))

(declare-fun res!2918858 () List!69665)

(assert (=> d!2230263 (= res!2918859 (noDuplicate!2856 res!2918858))))

(declare-fun e!4300623 () Bool)

(assert (=> d!2230263 e!4300623))

(assert (=> d!2230263 (= (choose!55323 z!3530) res!2918858)))

(declare-fun b!7158627 () Bool)

(declare-fun e!4300625 () Bool)

(declare-fun tp!1979703 () Bool)

(assert (=> b!7158627 (= e!4300625 tp!1979703)))

(declare-fun b!7158626 () Bool)

(declare-fun tp!1979702 () Bool)

(assert (=> b!7158626 (= e!4300623 (and (inv!88793 (h!75989 res!2918858)) e!4300625 tp!1979702))))

(declare-fun b!7158628 () Bool)

(assert (=> b!7158628 (= e!4300624 (= (content!14285 res!2918858) z!3530))))

(assert (= b!7158626 b!7158627))

(assert (= (and d!2230263 (is-Cons!69541 res!2918858)) b!7158626))

(assert (= (and d!2230263 res!2918859) b!7158628))

(declare-fun m!7864904 () Bool)

(assert (=> d!2230263 m!7864904))

(declare-fun m!7864906 () Bool)

(assert (=> b!7158626 m!7864906))

(declare-fun m!7864908 () Bool)

(assert (=> b!7158628 m!7864908))

(assert (=> d!2230235 d!2230263))

(declare-fun bs!1890208 () Bool)

(declare-fun d!2230265 () Bool)

(assert (= bs!1890208 (and d!2230265 d!2230237)))

(declare-fun lambda!436720 () Int)

(assert (=> bs!1890208 (= lambda!436720 lambda!436710)))

(assert (=> d!2230265 (= (inv!88793 setElem!52812) (forall!17140 (exprs!7760 setElem!52812) lambda!436720))))

(declare-fun bs!1890209 () Bool)

(assert (= bs!1890209 d!2230265))

(declare-fun m!7864910 () Bool)

(assert (=> bs!1890209 m!7864910))

(assert (=> setNonEmpty!52812 d!2230265))

(declare-fun d!2230267 () Bool)

(declare-fun c!1334028 () Bool)

(assert (=> d!2230267 (= c!1334028 (is-Nil!69541 lt!2569729))))

(declare-fun e!4300628 () (Set Context!14520))

(assert (=> d!2230267 (= (content!14285 lt!2569729) e!4300628)))

(declare-fun b!7158633 () Bool)

(assert (=> b!7158633 (= e!4300628 (as set.empty (Set Context!14520)))))

(declare-fun b!7158634 () Bool)

(assert (=> b!7158634 (= e!4300628 (set.union (set.insert (h!75989 lt!2569729) (as set.empty (Set Context!14520))) (content!14285 (t!383682 lt!2569729))))))

(assert (= (and d!2230267 c!1334028) b!7158633))

(assert (= (and d!2230267 (not c!1334028)) b!7158634))

(declare-fun m!7864912 () Bool)

(assert (=> b!7158634 m!7864912))

(declare-fun m!7864914 () Bool)

(assert (=> b!7158634 m!7864914))

(assert (=> b!7158538 d!2230267))

(declare-fun d!2230269 () Bool)

(declare-fun lt!2569741 () Regex!18308)

(assert (=> d!2230269 (validRegex!9437 lt!2569741)))

(assert (=> d!2230269 (= lt!2569741 (generalisedUnion!2740 (unfocusZipperList!2296 (toList!11251 (set.insert (Context!14521 (Cons!69540 EmptyExpr!18308 Nil!69540)) (as set.empty (Set Context!14520)))))))))

(assert (=> d!2230269 (= (unfocusZipper!2568 (toList!11251 (set.insert (Context!14521 (Cons!69540 EmptyExpr!18308 Nil!69540)) (as set.empty (Set Context!14520))))) lt!2569741)))

(declare-fun bs!1890210 () Bool)

(assert (= bs!1890210 d!2230269))

(declare-fun m!7864916 () Bool)

(assert (=> bs!1890210 m!7864916))

(assert (=> bs!1890210 m!7864834))

(declare-fun m!7864918 () Bool)

(assert (=> bs!1890210 m!7864918))

(assert (=> bs!1890210 m!7864918))

(declare-fun m!7864920 () Bool)

(assert (=> bs!1890210 m!7864920))

(assert (=> b!7158541 d!2230269))

(declare-fun d!2230271 () Bool)

(declare-fun e!4300629 () Bool)

(assert (=> d!2230271 e!4300629))

(declare-fun res!2918860 () Bool)

(assert (=> d!2230271 (=> (not res!2918860) (not e!4300629))))

(declare-fun lt!2569742 () List!69665)

(assert (=> d!2230271 (= res!2918860 (noDuplicate!2856 lt!2569742))))

(assert (=> d!2230271 (= lt!2569742 (choose!55323 (set.insert (Context!14521 (Cons!69540 EmptyExpr!18308 Nil!69540)) (as set.empty (Set Context!14520)))))))

(assert (=> d!2230271 (= (toList!11251 (set.insert (Context!14521 (Cons!69540 EmptyExpr!18308 Nil!69540)) (as set.empty (Set Context!14520)))) lt!2569742)))

(declare-fun b!7158635 () Bool)

(assert (=> b!7158635 (= e!4300629 (= (content!14285 lt!2569742) (set.insert (Context!14521 (Cons!69540 EmptyExpr!18308 Nil!69540)) (as set.empty (Set Context!14520)))))))

(assert (= (and d!2230271 res!2918860) b!7158635))

(declare-fun m!7864922 () Bool)

(assert (=> d!2230271 m!7864922))

(assert (=> d!2230271 m!7864832))

(declare-fun m!7864924 () Bool)

(assert (=> d!2230271 m!7864924))

(declare-fun m!7864926 () Bool)

(assert (=> b!7158635 m!7864926))

(assert (=> b!7158541 d!2230271))

(declare-fun b!7158658 () Bool)

(declare-fun e!4300644 () (Set Context!14520))

(declare-fun call!651825 () (Set Context!14520))

(declare-fun call!651828 () (Set Context!14520))

(assert (=> b!7158658 (= e!4300644 (set.union call!651825 call!651828))))

(declare-fun bm!651820 () Bool)

(declare-fun call!651826 () List!69664)

(declare-fun call!651830 () List!69664)

(assert (=> bm!651820 (= call!651826 call!651830)))

(declare-fun b!7158659 () Bool)

(declare-fun e!4300643 () (Set Context!14520))

(declare-fun e!4300646 () (Set Context!14520))

(assert (=> b!7158659 (= e!4300643 e!4300646)))

(declare-fun c!1334041 () Bool)

(assert (=> b!7158659 (= c!1334041 (is-Concat!27153 (h!75988 (exprs!7760 lt!2569717))))))

(declare-fun b!7158660 () Bool)

(declare-fun call!651827 () (Set Context!14520))

(assert (=> b!7158660 (= e!4300643 (set.union call!651828 call!651827))))

(declare-fun b!7158661 () Bool)

(declare-fun e!4300642 () (Set Context!14520))

(declare-fun call!651829 () (Set Context!14520))

(assert (=> b!7158661 (= e!4300642 call!651829)))

(declare-fun bm!651821 () Bool)

(assert (=> bm!651821 (= call!651829 call!651827)))

(declare-fun b!7158662 () Bool)

(declare-fun e!4300645 () (Set Context!14520))

(assert (=> b!7158662 (= e!4300645 (set.insert (Context!14521 (t!383681 (exprs!7760 lt!2569717))) (as set.empty (Set Context!14520))))))

(declare-fun c!1334039 () Bool)

(declare-fun bm!651822 () Bool)

(declare-fun c!1334040 () Bool)

(assert (=> bm!651822 (= call!651825 (derivationStepZipperDown!2490 (ite c!1334040 (regOne!37129 (h!75988 (exprs!7760 lt!2569717))) (ite c!1334039 (regTwo!37128 (h!75988 (exprs!7760 lt!2569717))) (ite c!1334041 (regOne!37128 (h!75988 (exprs!7760 lt!2569717))) (reg!18637 (h!75988 (exprs!7760 lt!2569717)))))) (ite (or c!1334040 c!1334039) (Context!14521 (t!383681 (exprs!7760 lt!2569717))) (Context!14521 call!651826)) lt!2569716))))

(declare-fun d!2230273 () Bool)

(declare-fun c!1334043 () Bool)

(assert (=> d!2230273 (= c!1334043 (and (is-ElementMatch!18308 (h!75988 (exprs!7760 lt!2569717))) (= (c!1334008 (h!75988 (exprs!7760 lt!2569717))) lt!2569716)))))

(assert (=> d!2230273 (= (derivationStepZipperDown!2490 (h!75988 (exprs!7760 lt!2569717)) (Context!14521 (t!383681 (exprs!7760 lt!2569717))) lt!2569716) e!4300645)))

(declare-fun b!7158663 () Bool)

(declare-fun c!1334042 () Bool)

(assert (=> b!7158663 (= c!1334042 (is-Star!18308 (h!75988 (exprs!7760 lt!2569717))))))

(assert (=> b!7158663 (= e!4300646 e!4300642)))

(declare-fun b!7158664 () Bool)

(declare-fun e!4300647 () Bool)

(assert (=> b!7158664 (= e!4300647 (nullable!7748 (regOne!37128 (h!75988 (exprs!7760 lt!2569717)))))))

(declare-fun b!7158665 () Bool)

(assert (=> b!7158665 (= e!4300645 e!4300644)))

(assert (=> b!7158665 (= c!1334040 (is-Union!18308 (h!75988 (exprs!7760 lt!2569717))))))

(declare-fun bm!651823 () Bool)

(declare-fun $colon$colon!2832 (List!69664 Regex!18308) List!69664)

(assert (=> bm!651823 (= call!651830 ($colon$colon!2832 (exprs!7760 (Context!14521 (t!383681 (exprs!7760 lt!2569717)))) (ite (or c!1334039 c!1334041) (regTwo!37128 (h!75988 (exprs!7760 lt!2569717))) (h!75988 (exprs!7760 lt!2569717)))))))

(declare-fun b!7158666 () Bool)

(assert (=> b!7158666 (= c!1334039 e!4300647)))

(declare-fun res!2918863 () Bool)

(assert (=> b!7158666 (=> (not res!2918863) (not e!4300647))))

(assert (=> b!7158666 (= res!2918863 (is-Concat!27153 (h!75988 (exprs!7760 lt!2569717))))))

(assert (=> b!7158666 (= e!4300644 e!4300643)))

(declare-fun bm!651824 () Bool)

(assert (=> bm!651824 (= call!651827 call!651825)))

(declare-fun b!7158667 () Bool)

(assert (=> b!7158667 (= e!4300646 call!651829)))

(declare-fun bm!651825 () Bool)

(assert (=> bm!651825 (= call!651828 (derivationStepZipperDown!2490 (ite c!1334040 (regTwo!37129 (h!75988 (exprs!7760 lt!2569717))) (regOne!37128 (h!75988 (exprs!7760 lt!2569717)))) (ite c!1334040 (Context!14521 (t!383681 (exprs!7760 lt!2569717))) (Context!14521 call!651830)) lt!2569716))))

(declare-fun b!7158668 () Bool)

(assert (=> b!7158668 (= e!4300642 (as set.empty (Set Context!14520)))))

(assert (= (and d!2230273 c!1334043) b!7158662))

(assert (= (and d!2230273 (not c!1334043)) b!7158665))

(assert (= (and b!7158665 c!1334040) b!7158658))

(assert (= (and b!7158665 (not c!1334040)) b!7158666))

(assert (= (and b!7158666 res!2918863) b!7158664))

(assert (= (and b!7158666 c!1334039) b!7158660))

(assert (= (and b!7158666 (not c!1334039)) b!7158659))

(assert (= (and b!7158659 c!1334041) b!7158667))

(assert (= (and b!7158659 (not c!1334041)) b!7158663))

(assert (= (and b!7158663 c!1334042) b!7158661))

(assert (= (and b!7158663 (not c!1334042)) b!7158668))

(assert (= (or b!7158667 b!7158661) bm!651820))

(assert (= (or b!7158667 b!7158661) bm!651821))

(assert (= (or b!7158660 bm!651821) bm!651824))

(assert (= (or b!7158660 bm!651820) bm!651823))

(assert (= (or b!7158658 b!7158660) bm!651825))

(assert (= (or b!7158658 bm!651824) bm!651822))

(declare-fun m!7864928 () Bool)

(assert (=> bm!651822 m!7864928))

(declare-fun m!7864930 () Bool)

(assert (=> b!7158662 m!7864930))

(declare-fun m!7864932 () Bool)

(assert (=> b!7158664 m!7864932))

(declare-fun m!7864934 () Bool)

(assert (=> bm!651823 m!7864934))

(declare-fun m!7864936 () Bool)

(assert (=> bm!651825 m!7864936))

(assert (=> bm!651804 d!2230273))

(declare-fun b!7158687 () Bool)

(declare-fun e!4300663 () Bool)

(declare-fun e!4300664 () Bool)

(assert (=> b!7158687 (= e!4300663 e!4300664)))

(declare-fun c!1334049 () Bool)

(assert (=> b!7158687 (= c!1334049 (is-Star!18308 lt!2569732))))

(declare-fun b!7158688 () Bool)

(declare-fun e!4300662 () Bool)

(assert (=> b!7158688 (= e!4300664 e!4300662)))

(declare-fun c!1334048 () Bool)

(assert (=> b!7158688 (= c!1334048 (is-Union!18308 lt!2569732))))

(declare-fun b!7158689 () Bool)

(declare-fun e!4300665 () Bool)

(declare-fun call!651837 () Bool)

(assert (=> b!7158689 (= e!4300665 call!651837)))

(declare-fun b!7158690 () Bool)

(declare-fun e!4300666 () Bool)

(declare-fun call!651838 () Bool)

(assert (=> b!7158690 (= e!4300666 call!651838)))

(declare-fun bm!651833 () Bool)

(assert (=> bm!651833 (= call!651838 (validRegex!9437 (ite c!1334049 (reg!18637 lt!2569732) (ite c!1334048 (regTwo!37129 lt!2569732) (regTwo!37128 lt!2569732)))))))

(declare-fun b!7158691 () Bool)

(declare-fun res!2918878 () Bool)

(assert (=> b!7158691 (=> (not res!2918878) (not e!4300665))))

(declare-fun call!651839 () Bool)

(assert (=> b!7158691 (= res!2918878 call!651839)))

(assert (=> b!7158691 (= e!4300662 e!4300665)))

(declare-fun b!7158692 () Bool)

(declare-fun e!4300667 () Bool)

(assert (=> b!7158692 (= e!4300667 call!651837)))

(declare-fun b!7158693 () Bool)

(declare-fun res!2918876 () Bool)

(declare-fun e!4300668 () Bool)

(assert (=> b!7158693 (=> res!2918876 e!4300668)))

(assert (=> b!7158693 (= res!2918876 (not (is-Concat!27153 lt!2569732)))))

(assert (=> b!7158693 (= e!4300662 e!4300668)))

(declare-fun bm!651834 () Bool)

(assert (=> bm!651834 (= call!651837 call!651838)))

(declare-fun b!7158694 () Bool)

(assert (=> b!7158694 (= e!4300664 e!4300666)))

(declare-fun res!2918874 () Bool)

(assert (=> b!7158694 (= res!2918874 (not (nullable!7748 (reg!18637 lt!2569732))))))

(assert (=> b!7158694 (=> (not res!2918874) (not e!4300666))))

(declare-fun b!7158695 () Bool)

(assert (=> b!7158695 (= e!4300668 e!4300667)))

(declare-fun res!2918877 () Bool)

(assert (=> b!7158695 (=> (not res!2918877) (not e!4300667))))

(assert (=> b!7158695 (= res!2918877 call!651839)))

(declare-fun d!2230275 () Bool)

(declare-fun res!2918875 () Bool)

(assert (=> d!2230275 (=> res!2918875 e!4300663)))

(assert (=> d!2230275 (= res!2918875 (is-ElementMatch!18308 lt!2569732))))

(assert (=> d!2230275 (= (validRegex!9437 lt!2569732) e!4300663)))

(declare-fun bm!651832 () Bool)

(assert (=> bm!651832 (= call!651839 (validRegex!9437 (ite c!1334048 (regOne!37129 lt!2569732) (regOne!37128 lt!2569732))))))

(assert (= (and d!2230275 (not res!2918875)) b!7158687))

(assert (= (and b!7158687 c!1334049) b!7158694))

(assert (= (and b!7158687 (not c!1334049)) b!7158688))

(assert (= (and b!7158694 res!2918874) b!7158690))

(assert (= (and b!7158688 c!1334048) b!7158691))

(assert (= (and b!7158688 (not c!1334048)) b!7158693))

(assert (= (and b!7158691 res!2918878) b!7158689))

(assert (= (and b!7158693 (not res!2918876)) b!7158695))

(assert (= (and b!7158695 res!2918877) b!7158692))

(assert (= (or b!7158691 b!7158695) bm!651832))

(assert (= (or b!7158689 b!7158692) bm!651834))

(assert (= (or b!7158690 bm!651834) bm!651833))

(declare-fun m!7864938 () Bool)

(assert (=> bm!651833 m!7864938))

(declare-fun m!7864940 () Bool)

(assert (=> b!7158694 m!7864940))

(declare-fun m!7864942 () Bool)

(assert (=> bm!651832 m!7864942))

(assert (=> d!2230233 d!2230275))

(declare-fun bs!1890211 () Bool)

(declare-fun d!2230277 () Bool)

(assert (= bs!1890211 (and d!2230277 d!2230237)))

(declare-fun lambda!436723 () Int)

(assert (=> bs!1890211 (= lambda!436723 lambda!436710)))

(declare-fun bs!1890212 () Bool)

(assert (= bs!1890212 (and d!2230277 d!2230265)))

(assert (=> bs!1890212 (= lambda!436723 lambda!436720)))

(declare-fun b!7158716 () Bool)

(declare-fun e!4300683 () Bool)

(declare-fun lt!2569745 () Regex!18308)

(declare-fun head!14594 (List!69664) Regex!18308)

(assert (=> b!7158716 (= e!4300683 (= lt!2569745 (head!14594 (unfocusZipperList!2296 (toList!11251 z!3530)))))))

(declare-fun b!7158717 () Bool)

(declare-fun e!4300681 () Regex!18308)

(declare-fun e!4300682 () Regex!18308)

(assert (=> b!7158717 (= e!4300681 e!4300682)))

(declare-fun c!1334061 () Bool)

(assert (=> b!7158717 (= c!1334061 (is-Cons!69540 (unfocusZipperList!2296 (toList!11251 z!3530))))))

(declare-fun b!7158718 () Bool)

(assert (=> b!7158718 (= e!4300682 (Union!18308 (h!75988 (unfocusZipperList!2296 (toList!11251 z!3530))) (generalisedUnion!2740 (t!383681 (unfocusZipperList!2296 (toList!11251 z!3530))))))))

(declare-fun b!7158720 () Bool)

(declare-fun e!4300685 () Bool)

(declare-fun e!4300686 () Bool)

(assert (=> b!7158720 (= e!4300685 e!4300686)))

(declare-fun c!1334060 () Bool)

(declare-fun isEmpty!40162 (List!69664) Bool)

(assert (=> b!7158720 (= c!1334060 (isEmpty!40162 (unfocusZipperList!2296 (toList!11251 z!3530))))))

(declare-fun b!7158721 () Bool)

(assert (=> b!7158721 (= e!4300681 (h!75988 (unfocusZipperList!2296 (toList!11251 z!3530))))))

(declare-fun b!7158722 () Bool)

(declare-fun e!4300684 () Bool)

(assert (=> b!7158722 (= e!4300684 (isEmpty!40162 (t!383681 (unfocusZipperList!2296 (toList!11251 z!3530)))))))

(declare-fun b!7158723 () Bool)

(assert (=> b!7158723 (= e!4300686 e!4300683)))

(declare-fun c!1334058 () Bool)

(declare-fun tail!14048 (List!69664) List!69664)

(assert (=> b!7158723 (= c!1334058 (isEmpty!40162 (tail!14048 (unfocusZipperList!2296 (toList!11251 z!3530)))))))

(assert (=> d!2230277 e!4300685))

(declare-fun res!2918883 () Bool)

(assert (=> d!2230277 (=> (not res!2918883) (not e!4300685))))

(assert (=> d!2230277 (= res!2918883 (validRegex!9437 lt!2569745))))

(assert (=> d!2230277 (= lt!2569745 e!4300681)))

(declare-fun c!1334059 () Bool)

(assert (=> d!2230277 (= c!1334059 e!4300684)))

(declare-fun res!2918884 () Bool)

(assert (=> d!2230277 (=> (not res!2918884) (not e!4300684))))

(assert (=> d!2230277 (= res!2918884 (is-Cons!69540 (unfocusZipperList!2296 (toList!11251 z!3530))))))

(assert (=> d!2230277 (forall!17140 (unfocusZipperList!2296 (toList!11251 z!3530)) lambda!436723)))

(assert (=> d!2230277 (= (generalisedUnion!2740 (unfocusZipperList!2296 (toList!11251 z!3530))) lt!2569745)))

(declare-fun b!7158719 () Bool)

(declare-fun isEmptyLang!2132 (Regex!18308) Bool)

(assert (=> b!7158719 (= e!4300686 (isEmptyLang!2132 lt!2569745))))

(declare-fun b!7158724 () Bool)

(assert (=> b!7158724 (= e!4300682 EmptyLang!18308)))

(declare-fun b!7158725 () Bool)

(declare-fun isUnion!1560 (Regex!18308) Bool)

(assert (=> b!7158725 (= e!4300683 (isUnion!1560 lt!2569745))))

(assert (= (and d!2230277 res!2918884) b!7158722))

(assert (= (and d!2230277 c!1334059) b!7158721))

(assert (= (and d!2230277 (not c!1334059)) b!7158717))

(assert (= (and b!7158717 c!1334061) b!7158718))

(assert (= (and b!7158717 (not c!1334061)) b!7158724))

(assert (= (and d!2230277 res!2918883) b!7158720))

(assert (= (and b!7158720 c!1334060) b!7158719))

(assert (= (and b!7158720 (not c!1334060)) b!7158723))

(assert (= (and b!7158723 c!1334058) b!7158716))

(assert (= (and b!7158723 (not c!1334058)) b!7158725))

(assert (=> b!7158723 m!7864840))

(declare-fun m!7864944 () Bool)

(assert (=> b!7158723 m!7864944))

(assert (=> b!7158723 m!7864944))

(declare-fun m!7864946 () Bool)

(assert (=> b!7158723 m!7864946))

(declare-fun m!7864948 () Bool)

(assert (=> b!7158725 m!7864948))

(declare-fun m!7864950 () Bool)

(assert (=> d!2230277 m!7864950))

(assert (=> d!2230277 m!7864840))

(declare-fun m!7864952 () Bool)

(assert (=> d!2230277 m!7864952))

(assert (=> b!7158716 m!7864840))

(declare-fun m!7864954 () Bool)

(assert (=> b!7158716 m!7864954))

(declare-fun m!7864956 () Bool)

(assert (=> b!7158719 m!7864956))

(assert (=> b!7158720 m!7864840))

(declare-fun m!7864958 () Bool)

(assert (=> b!7158720 m!7864958))

(declare-fun m!7864960 () Bool)

(assert (=> b!7158722 m!7864960))

(declare-fun m!7864962 () Bool)

(assert (=> b!7158718 m!7864962))

(assert (=> d!2230233 d!2230277))

(declare-fun bs!1890213 () Bool)

(declare-fun d!2230281 () Bool)

(assert (= bs!1890213 (and d!2230281 d!2230237)))

(declare-fun lambda!436726 () Int)

(assert (=> bs!1890213 (= lambda!436726 lambda!436710)))

(declare-fun bs!1890214 () Bool)

(assert (= bs!1890214 (and d!2230281 d!2230265)))

(assert (=> bs!1890214 (= lambda!436726 lambda!436720)))

(declare-fun bs!1890215 () Bool)

(assert (= bs!1890215 (and d!2230281 d!2230277)))

(assert (=> bs!1890215 (= lambda!436726 lambda!436723)))

(declare-fun lt!2569748 () List!69664)

(assert (=> d!2230281 (forall!17140 lt!2569748 lambda!436726)))

(declare-fun e!4300695 () List!69664)

(assert (=> d!2230281 (= lt!2569748 e!4300695)))

(declare-fun c!1334064 () Bool)

(assert (=> d!2230281 (= c!1334064 (is-Cons!69541 (toList!11251 z!3530)))))

(assert (=> d!2230281 (= (unfocusZipperList!2296 (toList!11251 z!3530)) lt!2569748)))

(declare-fun b!7158736 () Bool)

(declare-fun generalisedConcat!2443 (List!69664) Regex!18308)

(assert (=> b!7158736 (= e!4300695 (Cons!69540 (generalisedConcat!2443 (exprs!7760 (h!75989 (toList!11251 z!3530)))) (unfocusZipperList!2296 (t!383682 (toList!11251 z!3530)))))))

(declare-fun b!7158737 () Bool)

(assert (=> b!7158737 (= e!4300695 Nil!69540)))

(assert (= (and d!2230281 c!1334064) b!7158736))

(assert (= (and d!2230281 (not c!1334064)) b!7158737))

(declare-fun m!7864968 () Bool)

(assert (=> d!2230281 m!7864968))

(declare-fun m!7864970 () Bool)

(assert (=> b!7158736 m!7864970))

(declare-fun m!7864972 () Bool)

(assert (=> b!7158736 m!7864972))

(assert (=> d!2230233 d!2230281))

(declare-fun b!7158738 () Bool)

(declare-fun e!4300696 () (Set Context!14520))

(declare-fun e!4300697 () (Set Context!14520))

(assert (=> b!7158738 (= e!4300696 e!4300697)))

(declare-fun c!1334065 () Bool)

(assert (=> b!7158738 (= c!1334065 (is-Cons!69540 (exprs!7760 (Context!14521 (t!383681 (exprs!7760 lt!2569717))))))))

(declare-fun b!7158739 () Bool)

(declare-fun e!4300698 () Bool)

(assert (=> b!7158739 (= e!4300698 (nullable!7748 (h!75988 (exprs!7760 (Context!14521 (t!383681 (exprs!7760 lt!2569717)))))))))

(declare-fun b!7158740 () Bool)

(declare-fun call!651840 () (Set Context!14520))

(assert (=> b!7158740 (= e!4300697 call!651840)))

(declare-fun b!7158741 () Bool)

(assert (=> b!7158741 (= e!4300696 (set.union call!651840 (derivationStepZipperUp!2296 (Context!14521 (t!383681 (exprs!7760 (Context!14521 (t!383681 (exprs!7760 lt!2569717)))))) lt!2569716)))))

(declare-fun d!2230285 () Bool)

(declare-fun c!1334066 () Bool)

(assert (=> d!2230285 (= c!1334066 e!4300698)))

(declare-fun res!2918893 () Bool)

(assert (=> d!2230285 (=> (not res!2918893) (not e!4300698))))

(assert (=> d!2230285 (= res!2918893 (is-Cons!69540 (exprs!7760 (Context!14521 (t!383681 (exprs!7760 lt!2569717))))))))

(assert (=> d!2230285 (= (derivationStepZipperUp!2296 (Context!14521 (t!383681 (exprs!7760 lt!2569717))) lt!2569716) e!4300696)))

(declare-fun bm!651835 () Bool)

(assert (=> bm!651835 (= call!651840 (derivationStepZipperDown!2490 (h!75988 (exprs!7760 (Context!14521 (t!383681 (exprs!7760 lt!2569717))))) (Context!14521 (t!383681 (exprs!7760 (Context!14521 (t!383681 (exprs!7760 lt!2569717)))))) lt!2569716))))

(declare-fun b!7158742 () Bool)

(assert (=> b!7158742 (= e!4300697 (as set.empty (Set Context!14520)))))

(assert (= (and d!2230285 res!2918893) b!7158739))

(assert (= (and d!2230285 c!1334066) b!7158741))

(assert (= (and d!2230285 (not c!1334066)) b!7158738))

(assert (= (and b!7158738 c!1334065) b!7158740))

(assert (= (and b!7158738 (not c!1334065)) b!7158742))

(assert (= (or b!7158741 b!7158740) bm!651835))

(declare-fun m!7864974 () Bool)

(assert (=> b!7158739 m!7864974))

(declare-fun m!7864976 () Bool)

(assert (=> b!7158741 m!7864976))

(declare-fun m!7864978 () Bool)

(assert (=> bm!651835 m!7864978))

(assert (=> b!7158556 d!2230285))

(declare-fun d!2230287 () Bool)

(declare-fun choose!55325 ((Set Context!14520) Int) (Set Context!14520))

(assert (=> d!2230287 (= (flatMap!2645 z!3530 lambda!436713) (choose!55325 z!3530 lambda!436713))))

(declare-fun bs!1890216 () Bool)

(assert (= bs!1890216 d!2230287))

(declare-fun m!7864980 () Bool)

(assert (=> bs!1890216 m!7864980))

(assert (=> d!2230241 d!2230287))

(declare-fun d!2230289 () Bool)

(assert (=> d!2230289 (= (validRegex!9437 EmptyExpr!18308) true)))

(assert (=> d!2230231 d!2230289))

(declare-fun d!2230291 () Bool)

(declare-fun c!1334067 () Bool)

(assert (=> d!2230291 (= c!1334067 (is-Nil!69541 lt!2569733))))

(declare-fun e!4300705 () (Set Context!14520))

(assert (=> d!2230291 (= (content!14285 lt!2569733) e!4300705)))

(declare-fun b!7158749 () Bool)

(assert (=> b!7158749 (= e!4300705 (as set.empty (Set Context!14520)))))

(declare-fun b!7158750 () Bool)

(assert (=> b!7158750 (= e!4300705 (set.union (set.insert (h!75989 lt!2569733) (as set.empty (Set Context!14520))) (content!14285 (t!383682 lt!2569733))))))

(assert (= (and d!2230291 c!1334067) b!7158749))

(assert (= (and d!2230291 (not c!1334067)) b!7158750))

(declare-fun m!7864982 () Bool)

(assert (=> b!7158750 m!7864982))

(declare-fun m!7864984 () Bool)

(assert (=> b!7158750 m!7864984))

(assert (=> b!7158542 d!2230291))

(declare-fun d!2230293 () Bool)

(declare-fun nullableFct!3023 (Regex!18308) Bool)

(assert (=> d!2230293 (= (nullable!7748 (h!75988 (exprs!7760 lt!2569717))) (nullableFct!3023 (h!75988 (exprs!7760 lt!2569717))))))

(declare-fun bs!1890217 () Bool)

(assert (= bs!1890217 d!2230293))

(declare-fun m!7864986 () Bool)

(assert (=> bs!1890217 m!7864986))

(assert (=> b!7158554 d!2230293))

(declare-fun d!2230295 () Bool)

(declare-fun res!2918898 () Bool)

(declare-fun e!4300709 () Bool)

(assert (=> d!2230295 (=> res!2918898 e!4300709)))

(assert (=> d!2230295 (= res!2918898 (is-Nil!69541 lt!2569729))))

(assert (=> d!2230295 (= (noDuplicate!2856 lt!2569729) e!4300709)))

(declare-fun b!7158754 () Bool)

(declare-fun e!4300710 () Bool)

(assert (=> b!7158754 (= e!4300709 e!4300710)))

(declare-fun res!2918899 () Bool)

(assert (=> b!7158754 (=> (not res!2918899) (not e!4300710))))

(assert (=> b!7158754 (= res!2918899 (not (contains!20700 (t!383682 lt!2569729) (h!75989 lt!2569729))))))

(declare-fun b!7158755 () Bool)

(assert (=> b!7158755 (= e!4300710 (noDuplicate!2856 (t!383682 lt!2569729)))))

(assert (= (and d!2230295 (not res!2918898)) b!7158754))

(assert (= (and b!7158754 res!2918899) b!7158755))

(declare-fun m!7864992 () Bool)

(assert (=> b!7158754 m!7864992))

(declare-fun m!7864996 () Bool)

(assert (=> b!7158755 m!7864996))

(assert (=> d!2230225 d!2230295))

(declare-fun d!2230297 () Bool)

(declare-fun e!4300712 () Bool)

(assert (=> d!2230297 e!4300712))

(declare-fun res!2918901 () Bool)

(assert (=> d!2230297 (=> (not res!2918901) (not e!4300712))))

(declare-fun res!2918900 () List!69665)

(assert (=> d!2230297 (= res!2918901 (noDuplicate!2856 res!2918900))))

(declare-fun e!4300711 () Bool)

(assert (=> d!2230297 e!4300711))

(assert (=> d!2230297 (= (choose!55323 lt!2569715) res!2918900)))

(declare-fun b!7158757 () Bool)

(declare-fun e!4300713 () Bool)

(declare-fun tp!1979711 () Bool)

(assert (=> b!7158757 (= e!4300713 tp!1979711)))

(declare-fun b!7158756 () Bool)

(declare-fun tp!1979710 () Bool)

(assert (=> b!7158756 (= e!4300711 (and (inv!88793 (h!75989 res!2918900)) e!4300713 tp!1979710))))

(declare-fun b!7158758 () Bool)

(assert (=> b!7158758 (= e!4300712 (= (content!14285 res!2918900) lt!2569715))))

(assert (= b!7158756 b!7158757))

(assert (= (and d!2230297 (is-Cons!69541 res!2918900)) b!7158756))

(assert (= (and d!2230297 res!2918901) b!7158758))

(declare-fun m!7864998 () Bool)

(assert (=> d!2230297 m!7864998))

(declare-fun m!7865000 () Bool)

(assert (=> b!7158756 m!7865000))

(declare-fun m!7865002 () Bool)

(assert (=> b!7158758 m!7865002))

(assert (=> d!2230225 d!2230297))

(declare-fun d!2230301 () Bool)

(declare-fun res!2918906 () Bool)

(declare-fun e!4300720 () Bool)

(assert (=> d!2230301 (=> res!2918906 e!4300720)))

(assert (=> d!2230301 (= res!2918906 (is-Nil!69540 (exprs!7760 setElem!52806)))))

(assert (=> d!2230301 (= (forall!17140 (exprs!7760 setElem!52806) lambda!436710) e!4300720)))

(declare-fun b!7158767 () Bool)

(declare-fun e!4300721 () Bool)

(assert (=> b!7158767 (= e!4300720 e!4300721)))

(declare-fun res!2918907 () Bool)

(assert (=> b!7158767 (=> (not res!2918907) (not e!4300721))))

(declare-fun dynLambda!28319 (Int Regex!18308) Bool)

(assert (=> b!7158767 (= res!2918907 (dynLambda!28319 lambda!436710 (h!75988 (exprs!7760 setElem!52806))))))

(declare-fun b!7158768 () Bool)

(assert (=> b!7158768 (= e!4300721 (forall!17140 (t!383681 (exprs!7760 setElem!52806)) lambda!436710))))

(assert (= (and d!2230301 (not res!2918906)) b!7158767))

(assert (= (and b!7158767 res!2918907) b!7158768))

(declare-fun b_lambda!273387 () Bool)

(assert (=> (not b_lambda!273387) (not b!7158767)))

(declare-fun m!7865004 () Bool)

(assert (=> b!7158767 m!7865004))

(declare-fun m!7865006 () Bool)

(assert (=> b!7158768 m!7865006))

(assert (=> d!2230237 d!2230301))

(declare-fun b!7158769 () Bool)

(declare-fun e!4300722 () Bool)

(declare-fun tp!1979712 () Bool)

(declare-fun tp!1979713 () Bool)

(assert (=> b!7158769 (= e!4300722 (and tp!1979712 tp!1979713))))

(assert (=> b!7158574 (= tp!1979681 e!4300722)))

(assert (= (and b!7158574 (is-Cons!69540 (exprs!7760 setElem!52812))) b!7158769))

(declare-fun b!7158772 () Bool)

(declare-fun e!4300724 () Bool)

(declare-fun tp!1979714 () Bool)

(assert (=> b!7158772 (= e!4300724 (and tp_is_empty!46189 tp!1979714))))

(assert (=> b!7158564 (= tp!1979670 e!4300724)))

(assert (= (and b!7158564 (is-Cons!69542 (t!383683 (t!383683 s!7967)))) b!7158772))

(declare-fun condSetEmpty!52816 () Bool)

(assert (=> setNonEmpty!52812 (= condSetEmpty!52816 (= setRest!52812 (as set.empty (Set Context!14520))))))

(declare-fun setRes!52816 () Bool)

(assert (=> setNonEmpty!52812 (= tp!1979682 setRes!52816)))

(declare-fun setIsEmpty!52816 () Bool)

(assert (=> setIsEmpty!52816 setRes!52816))

(declare-fun setElem!52816 () Context!14520)

(declare-fun tp!1979716 () Bool)

(declare-fun setNonEmpty!52816 () Bool)

(declare-fun e!4300725 () Bool)

(assert (=> setNonEmpty!52816 (= setRes!52816 (and tp!1979716 (inv!88793 setElem!52816) e!4300725))))

(declare-fun setRest!52816 () (Set Context!14520))

(assert (=> setNonEmpty!52816 (= setRest!52812 (set.union (set.insert setElem!52816 (as set.empty (Set Context!14520))) setRest!52816))))

(declare-fun b!7158773 () Bool)

(declare-fun tp!1979715 () Bool)

(assert (=> b!7158773 (= e!4300725 tp!1979715)))

(assert (= (and setNonEmpty!52812 condSetEmpty!52816) setIsEmpty!52816))

(assert (= (and setNonEmpty!52812 (not condSetEmpty!52816)) setNonEmpty!52816))

(assert (= setNonEmpty!52816 b!7158773))

(declare-fun m!7865012 () Bool)

(assert (=> setNonEmpty!52816 m!7865012))

(declare-fun b!7158784 () Bool)

(declare-fun e!4300728 () Bool)

(assert (=> b!7158784 (= e!4300728 tp_is_empty!46189)))

(declare-fun b!7158785 () Bool)

(declare-fun tp!1979728 () Bool)

(declare-fun tp!1979729 () Bool)

(assert (=> b!7158785 (= e!4300728 (and tp!1979728 tp!1979729))))

(declare-fun b!7158787 () Bool)

(declare-fun tp!1979727 () Bool)

(declare-fun tp!1979730 () Bool)

(assert (=> b!7158787 (= e!4300728 (and tp!1979727 tp!1979730))))

(assert (=> b!7158569 (= tp!1979675 e!4300728)))

(declare-fun b!7158786 () Bool)

(declare-fun tp!1979731 () Bool)

(assert (=> b!7158786 (= e!4300728 tp!1979731)))

(assert (= (and b!7158569 (is-ElementMatch!18308 (h!75988 (exprs!7760 setElem!52806)))) b!7158784))

(assert (= (and b!7158569 (is-Concat!27153 (h!75988 (exprs!7760 setElem!52806)))) b!7158785))

(assert (= (and b!7158569 (is-Star!18308 (h!75988 (exprs!7760 setElem!52806)))) b!7158786))

(assert (= (and b!7158569 (is-Union!18308 (h!75988 (exprs!7760 setElem!52806)))) b!7158787))

(declare-fun b!7158788 () Bool)

(declare-fun e!4300729 () Bool)

(declare-fun tp!1979732 () Bool)

(declare-fun tp!1979733 () Bool)

(assert (=> b!7158788 (= e!4300729 (and tp!1979732 tp!1979733))))

(assert (=> b!7158569 (= tp!1979676 e!4300729)))

(assert (= (and b!7158569 (is-Cons!69540 (t!383681 (exprs!7760 setElem!52806)))) b!7158788))

(declare-fun b_lambda!273389 () Bool)

(assert (= b_lambda!273387 (or d!2230237 b_lambda!273389)))

(declare-fun bs!1890218 () Bool)

(declare-fun d!2230305 () Bool)

(assert (= bs!1890218 (and d!2230305 d!2230237)))

(assert (=> bs!1890218 (= (dynLambda!28319 lambda!436710 (h!75988 (exprs!7760 setElem!52806))) (validRegex!9437 (h!75988 (exprs!7760 setElem!52806))))))

(declare-fun m!7865014 () Bool)

(assert (=> bs!1890218 m!7865014))

(assert (=> b!7158767 d!2230305))

(push 1)

(assert (not b!7158716))

(assert (not d!2230293))

(assert (not d!2230263))

(assert (not b!7158787))

(assert (not b!7158725))

(assert (not b!7158619))

(assert (not d!2230287))

(assert (not b!7158719))

(assert (not b!7158722))

(assert (not b!7158757))

(assert (not b_lambda!273389))

(assert (not b!7158694))

(assert (not bm!651822))

(assert (not d!2230277))

(assert (not b!7158664))

(assert (not b!7158769))

(assert (not b!7158736))

(assert (not b!7158741))

(assert (not b!7158718))

(assert (not d!2230269))

(assert (not b!7158739))

(assert (not d!2230297))

(assert (not bm!651835))

(assert (not b!7158785))

(assert (not b!7158786))

(assert (not b!7158756))

(assert (not b!7158788))

(assert (not b!7158627))

(assert (not bm!651833))

(assert tp_is_empty!46189)

(assert (not d!2230281))

(assert (not b!7158773))

(assert (not bm!651823))

(assert (not d!2230265))

(assert (not bm!651832))

(assert (not b!7158628))

(assert (not d!2230271))

(assert (not setNonEmpty!52816))

(assert (not b!7158772))

(assert (not b!7158635))

(assert (not bm!651825))

(assert (not b!7158634))

(assert (not b!7158755))

(assert (not b!7158723))

(assert (not b!7158750))

(assert (not b!7158768))

(assert (not b!7158626))

(assert (not b!7158754))

(assert (not b!7158720))

(assert (not b!7158618))

(assert (not bs!1890218))

(assert (not b!7158758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

