; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!233132 () Bool)

(assert start!233132)

(declare-fun b!2375784 () Bool)

(assert (=> b!2375784 true))

(assert (=> b!2375784 true))

(declare-fun lambda!88219 () Int)

(declare-fun lambda!88218 () Int)

(assert (=> b!2375784 (not (= lambda!88219 lambda!88218))))

(assert (=> b!2375784 true))

(assert (=> b!2375784 true))

(declare-fun b!2375771 () Bool)

(declare-fun e!1515845 () Bool)

(declare-fun tp!758931 () Bool)

(assert (=> b!2375771 (= e!1515845 tp!758931)))

(declare-fun b!2375772 () Bool)

(declare-fun res!1008716 () Bool)

(declare-fun e!1515841 () Bool)

(assert (=> b!2375772 (=> res!1008716 e!1515841)))

(assert (=> b!2375772 (= res!1008716 false)))

(declare-fun b!2375773 () Bool)

(declare-fun tp!758930 () Bool)

(declare-fun tp!758928 () Bool)

(assert (=> b!2375773 (= e!1515845 (and tp!758930 tp!758928))))

(declare-fun b!2375774 () Bool)

(declare-fun res!1008711 () Bool)

(declare-fun e!1515839 () Bool)

(assert (=> b!2375774 (=> res!1008711 e!1515839)))

(declare-datatypes ((C!14084 0))(
  ( (C!14085 (val!8284 Int)) )
))
(declare-datatypes ((Regex!6963 0))(
  ( (ElementMatch!6963 (c!377637 C!14084)) (Concat!11599 (regOne!14438 Regex!6963) (regTwo!14438 Regex!6963)) (EmptyExpr!6963) (Star!6963 (reg!7292 Regex!6963)) (EmptyLang!6963) (Union!6963 (regOne!14439 Regex!6963) (regTwo!14439 Regex!6963)) )
))
(declare-datatypes ((List!28164 0))(
  ( (Nil!28066) (Cons!28066 (h!33467 Regex!6963) (t!208141 List!28164)) )
))
(declare-fun l!9164 () List!28164)

(declare-fun isEmpty!16005 (List!28164) Bool)

(assert (=> b!2375774 (= res!1008711 (isEmpty!16005 l!9164))))

(declare-fun b!2375775 () Bool)

(declare-fun e!1515846 () Bool)

(declare-fun e!1515840 () Bool)

(assert (=> b!2375775 (= e!1515846 (not e!1515840))))

(declare-fun res!1008712 () Bool)

(assert (=> b!2375775 (=> res!1008712 e!1515840)))

(declare-fun r!13927 () Regex!6963)

(get-info :version)

(assert (=> b!2375775 (= res!1008712 (not ((_ is Concat!11599) r!13927)))))

(declare-fun lt!867047 () Bool)

(declare-fun lt!867050 () Bool)

(assert (=> b!2375775 (= lt!867047 lt!867050)))

(declare-datatypes ((List!28165 0))(
  ( (Nil!28067) (Cons!28067 (h!33468 C!14084) (t!208142 List!28165)) )
))
(declare-fun s!9460 () List!28165)

(declare-fun matchRSpec!812 (Regex!6963 List!28165) Bool)

(assert (=> b!2375775 (= lt!867050 (matchRSpec!812 r!13927 s!9460))))

(declare-fun matchR!3080 (Regex!6963 List!28165) Bool)

(assert (=> b!2375775 (= lt!867047 (matchR!3080 r!13927 s!9460))))

(declare-datatypes ((Unit!40961 0))(
  ( (Unit!40962) )
))
(declare-fun lt!867054 () Unit!40961)

(declare-fun mainMatchTheorem!812 (Regex!6963 List!28165) Unit!40961)

(assert (=> b!2375775 (= lt!867054 (mainMatchTheorem!812 r!13927 s!9460))))

(declare-fun b!2375776 () Bool)

(declare-fun e!1515842 () Bool)

(declare-fun tp_is_empty!11339 () Bool)

(declare-fun tp!758926 () Bool)

(assert (=> b!2375776 (= e!1515842 (and tp_is_empty!11339 tp!758926))))

(declare-fun b!2375777 () Bool)

(declare-fun e!1515843 () Bool)

(assert (=> b!2375777 (= e!1515843 e!1515841)))

(declare-fun res!1008708 () Bool)

(assert (=> b!2375777 (=> res!1008708 e!1515841)))

(declare-fun lt!867053 () Regex!6963)

(assert (=> b!2375777 (= res!1008708 (matchR!3080 lt!867053 s!9460))))

(declare-fun head!5162 (List!28164) Regex!6963)

(assert (=> b!2375777 (= lt!867053 (head!5162 l!9164))))

(declare-fun b!2375778 () Bool)

(declare-fun res!1008714 () Bool)

(assert (=> b!2375778 (=> res!1008714 e!1515841)))

(declare-fun validRegex!2690 (Regex!6963) Bool)

(assert (=> b!2375778 (= res!1008714 (not (validRegex!2690 lt!867053)))))

(declare-fun res!1008707 () Bool)

(assert (=> start!233132 (=> (not res!1008707) (not e!1515846))))

(declare-fun lambda!88217 () Int)

(declare-fun forall!5597 (List!28164 Int) Bool)

(assert (=> start!233132 (= res!1008707 (forall!5597 l!9164 lambda!88217))))

(assert (=> start!233132 e!1515846))

(declare-fun e!1515844 () Bool)

(assert (=> start!233132 e!1515844))

(assert (=> start!233132 e!1515845))

(assert (=> start!233132 e!1515842))

(declare-fun b!2375779 () Bool)

(assert (=> b!2375779 (= e!1515845 tp_is_empty!11339)))

(declare-fun b!2375780 () Bool)

(declare-fun res!1008713 () Bool)

(assert (=> b!2375780 (=> res!1008713 e!1515843)))

(declare-fun lt!867051 () List!28164)

(declare-fun generalisedConcat!64 (List!28164) Regex!6963)

(assert (=> b!2375780 (= res!1008713 (not (= (generalisedConcat!64 lt!867051) EmptyExpr!6963)))))

(declare-fun b!2375781 () Bool)

(declare-fun res!1008715 () Bool)

(assert (=> b!2375781 (=> (not res!1008715) (not e!1515846))))

(assert (=> b!2375781 (= res!1008715 (= r!13927 (generalisedConcat!64 l!9164)))))

(declare-fun b!2375782 () Bool)

(assert (=> b!2375782 (= e!1515839 e!1515843)))

(declare-fun res!1008709 () Bool)

(assert (=> b!2375782 (=> res!1008709 e!1515843)))

(assert (=> b!2375782 (= res!1008709 (not (isEmpty!16005 lt!867051)))))

(declare-fun tail!3432 (List!28164) List!28164)

(assert (=> b!2375782 (= lt!867051 (tail!3432 l!9164))))

(declare-fun b!2375783 () Bool)

(declare-fun ++!6920 (List!28165 List!28165) List!28165)

(assert (=> b!2375783 (= e!1515841 (= (++!6920 Nil!28067 s!9460) s!9460))))

(assert (=> b!2375784 (= e!1515840 e!1515839)))

(declare-fun res!1008710 () Bool)

(assert (=> b!2375784 (=> res!1008710 e!1515839)))

(declare-fun lt!867048 () Bool)

(assert (=> b!2375784 (= res!1008710 (not (= lt!867050 lt!867048)))))

(declare-fun Exists!1025 (Int) Bool)

(assert (=> b!2375784 (= (Exists!1025 lambda!88218) (Exists!1025 lambda!88219))))

(declare-fun lt!867052 () Unit!40961)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!364 (Regex!6963 Regex!6963 List!28165) Unit!40961)

(assert (=> b!2375784 (= lt!867052 (lemmaExistCutMatchRandMatchRSpecEquivalent!364 (regOne!14438 r!13927) (regTwo!14438 r!13927) s!9460))))

(assert (=> b!2375784 (= lt!867048 (Exists!1025 lambda!88218))))

(declare-datatypes ((tuple2!27790 0))(
  ( (tuple2!27791 (_1!16436 List!28165) (_2!16436 List!28165)) )
))
(declare-datatypes ((Option!5506 0))(
  ( (None!5505) (Some!5505 (v!30913 tuple2!27790)) )
))
(declare-fun isDefined!4334 (Option!5506) Bool)

(declare-fun findConcatSeparation!614 (Regex!6963 Regex!6963 List!28165 List!28165 List!28165) Option!5506)

(assert (=> b!2375784 (= lt!867048 (isDefined!4334 (findConcatSeparation!614 (regOne!14438 r!13927) (regTwo!14438 r!13927) Nil!28067 s!9460 s!9460)))))

(declare-fun lt!867049 () Unit!40961)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!614 (Regex!6963 Regex!6963 List!28165) Unit!40961)

(assert (=> b!2375784 (= lt!867049 (lemmaFindConcatSeparationEquivalentToExists!614 (regOne!14438 r!13927) (regTwo!14438 r!13927) s!9460))))

(declare-fun b!2375785 () Bool)

(declare-fun tp!758927 () Bool)

(declare-fun tp!758932 () Bool)

(assert (=> b!2375785 (= e!1515844 (and tp!758927 tp!758932))))

(declare-fun b!2375786 () Bool)

(declare-fun tp!758929 () Bool)

(declare-fun tp!758933 () Bool)

(assert (=> b!2375786 (= e!1515845 (and tp!758929 tp!758933))))

(assert (= (and start!233132 res!1008707) b!2375781))

(assert (= (and b!2375781 res!1008715) b!2375775))

(assert (= (and b!2375775 (not res!1008712)) b!2375784))

(assert (= (and b!2375784 (not res!1008710)) b!2375774))

(assert (= (and b!2375774 (not res!1008711)) b!2375782))

(assert (= (and b!2375782 (not res!1008709)) b!2375780))

(assert (= (and b!2375780 (not res!1008713)) b!2375777))

(assert (= (and b!2375777 (not res!1008708)) b!2375778))

(assert (= (and b!2375778 (not res!1008714)) b!2375772))

(assert (= (and b!2375772 (not res!1008716)) b!2375783))

(assert (= (and start!233132 ((_ is Cons!28066) l!9164)) b!2375785))

(assert (= (and start!233132 ((_ is ElementMatch!6963) r!13927)) b!2375779))

(assert (= (and start!233132 ((_ is Concat!11599) r!13927)) b!2375786))

(assert (= (and start!233132 ((_ is Star!6963) r!13927)) b!2375771))

(assert (= (and start!233132 ((_ is Union!6963) r!13927)) b!2375773))

(assert (= (and start!233132 ((_ is Cons!28067) s!9460)) b!2375776))

(declare-fun m!2781589 () Bool)

(assert (=> b!2375778 m!2781589))

(declare-fun m!2781591 () Bool)

(assert (=> b!2375781 m!2781591))

(declare-fun m!2781593 () Bool)

(assert (=> b!2375777 m!2781593))

(declare-fun m!2781595 () Bool)

(assert (=> b!2375777 m!2781595))

(declare-fun m!2781597 () Bool)

(assert (=> b!2375782 m!2781597))

(declare-fun m!2781599 () Bool)

(assert (=> b!2375782 m!2781599))

(declare-fun m!2781601 () Bool)

(assert (=> start!233132 m!2781601))

(declare-fun m!2781603 () Bool)

(assert (=> b!2375780 m!2781603))

(declare-fun m!2781605 () Bool)

(assert (=> b!2375774 m!2781605))

(declare-fun m!2781607 () Bool)

(assert (=> b!2375784 m!2781607))

(declare-fun m!2781609 () Bool)

(assert (=> b!2375784 m!2781609))

(declare-fun m!2781611 () Bool)

(assert (=> b!2375784 m!2781611))

(assert (=> b!2375784 m!2781607))

(declare-fun m!2781613 () Bool)

(assert (=> b!2375784 m!2781613))

(declare-fun m!2781615 () Bool)

(assert (=> b!2375784 m!2781615))

(declare-fun m!2781617 () Bool)

(assert (=> b!2375784 m!2781617))

(assert (=> b!2375784 m!2781617))

(declare-fun m!2781619 () Bool)

(assert (=> b!2375775 m!2781619))

(declare-fun m!2781621 () Bool)

(assert (=> b!2375775 m!2781621))

(declare-fun m!2781623 () Bool)

(assert (=> b!2375775 m!2781623))

(declare-fun m!2781625 () Bool)

(assert (=> b!2375783 m!2781625))

(check-sat tp_is_empty!11339 (not b!2375778) (not b!2375786) (not b!2375784) (not b!2375775) (not b!2375785) (not b!2375771) (not b!2375773) (not b!2375782) (not b!2375776) (not start!233132) (not b!2375780) (not b!2375783) (not b!2375777) (not b!2375781) (not b!2375774))
(check-sat)
(get-model)

(declare-fun bs!461544 () Bool)

(declare-fun d!695992 () Bool)

(assert (= bs!461544 (and d!695992 start!233132)))

(declare-fun lambda!88228 () Int)

(assert (=> bs!461544 (= lambda!88228 lambda!88217)))

(declare-fun b!2375854 () Bool)

(declare-fun e!1515884 () Bool)

(declare-fun lt!867057 () Regex!6963)

(assert (=> b!2375854 (= e!1515884 (= lt!867057 (head!5162 l!9164)))))

(declare-fun b!2375855 () Bool)

(declare-fun e!1515887 () Regex!6963)

(assert (=> b!2375855 (= e!1515887 (h!33467 l!9164))))

(declare-fun b!2375856 () Bool)

(declare-fun e!1515886 () Bool)

(assert (=> b!2375856 (= e!1515886 e!1515884)))

(declare-fun c!377659 () Bool)

(assert (=> b!2375856 (= c!377659 (isEmpty!16005 (tail!3432 l!9164)))))

(declare-fun b!2375857 () Bool)

(declare-fun e!1515889 () Bool)

(assert (=> b!2375857 (= e!1515889 e!1515886)))

(declare-fun c!377658 () Bool)

(assert (=> b!2375857 (= c!377658 (isEmpty!16005 l!9164))))

(declare-fun b!2375858 () Bool)

(declare-fun e!1515885 () Regex!6963)

(assert (=> b!2375858 (= e!1515887 e!1515885)))

(declare-fun c!377661 () Bool)

(assert (=> b!2375858 (= c!377661 ((_ is Cons!28066) l!9164))))

(declare-fun b!2375859 () Bool)

(declare-fun isEmptyExpr!36 (Regex!6963) Bool)

(assert (=> b!2375859 (= e!1515886 (isEmptyExpr!36 lt!867057))))

(declare-fun b!2375860 () Bool)

(assert (=> b!2375860 (= e!1515885 EmptyExpr!6963)))

(declare-fun b!2375861 () Bool)

(declare-fun isConcat!36 (Regex!6963) Bool)

(assert (=> b!2375861 (= e!1515884 (isConcat!36 lt!867057))))

(assert (=> d!695992 e!1515889))

(declare-fun res!1008741 () Bool)

(assert (=> d!695992 (=> (not res!1008741) (not e!1515889))))

(assert (=> d!695992 (= res!1008741 (validRegex!2690 lt!867057))))

(assert (=> d!695992 (= lt!867057 e!1515887)))

(declare-fun c!377660 () Bool)

(declare-fun e!1515888 () Bool)

(assert (=> d!695992 (= c!377660 e!1515888)))

(declare-fun res!1008740 () Bool)

(assert (=> d!695992 (=> (not res!1008740) (not e!1515888))))

(assert (=> d!695992 (= res!1008740 ((_ is Cons!28066) l!9164))))

(assert (=> d!695992 (forall!5597 l!9164 lambda!88228)))

(assert (=> d!695992 (= (generalisedConcat!64 l!9164) lt!867057)))

(declare-fun b!2375862 () Bool)

(assert (=> b!2375862 (= e!1515885 (Concat!11599 (h!33467 l!9164) (generalisedConcat!64 (t!208141 l!9164))))))

(declare-fun b!2375863 () Bool)

(assert (=> b!2375863 (= e!1515888 (isEmpty!16005 (t!208141 l!9164)))))

(assert (= (and d!695992 res!1008740) b!2375863))

(assert (= (and d!695992 c!377660) b!2375855))

(assert (= (and d!695992 (not c!377660)) b!2375858))

(assert (= (and b!2375858 c!377661) b!2375862))

(assert (= (and b!2375858 (not c!377661)) b!2375860))

(assert (= (and d!695992 res!1008741) b!2375857))

(assert (= (and b!2375857 c!377658) b!2375859))

(assert (= (and b!2375857 (not c!377658)) b!2375856))

(assert (= (and b!2375856 c!377659) b!2375854))

(assert (= (and b!2375856 (not c!377659)) b!2375861))

(declare-fun m!2781635 () Bool)

(assert (=> b!2375861 m!2781635))

(assert (=> b!2375857 m!2781605))

(declare-fun m!2781637 () Bool)

(assert (=> d!695992 m!2781637))

(declare-fun m!2781639 () Bool)

(assert (=> d!695992 m!2781639))

(declare-fun m!2781641 () Bool)

(assert (=> b!2375862 m!2781641))

(assert (=> b!2375856 m!2781599))

(assert (=> b!2375856 m!2781599))

(declare-fun m!2781643 () Bool)

(assert (=> b!2375856 m!2781643))

(declare-fun m!2781645 () Bool)

(assert (=> b!2375863 m!2781645))

(declare-fun m!2781647 () Bool)

(assert (=> b!2375859 m!2781647))

(assert (=> b!2375854 m!2781595))

(assert (=> b!2375781 d!695992))

(declare-fun bs!461545 () Bool)

(declare-fun d!695996 () Bool)

(assert (= bs!461545 (and d!695996 start!233132)))

(declare-fun lambda!88229 () Int)

(assert (=> bs!461545 (= lambda!88229 lambda!88217)))

(declare-fun bs!461546 () Bool)

(assert (= bs!461546 (and d!695996 d!695992)))

(assert (=> bs!461546 (= lambda!88229 lambda!88228)))

(declare-fun b!2375864 () Bool)

(declare-fun e!1515890 () Bool)

(declare-fun lt!867058 () Regex!6963)

(assert (=> b!2375864 (= e!1515890 (= lt!867058 (head!5162 lt!867051)))))

(declare-fun b!2375865 () Bool)

(declare-fun e!1515893 () Regex!6963)

(assert (=> b!2375865 (= e!1515893 (h!33467 lt!867051))))

(declare-fun b!2375866 () Bool)

(declare-fun e!1515892 () Bool)

(assert (=> b!2375866 (= e!1515892 e!1515890)))

(declare-fun c!377663 () Bool)

(assert (=> b!2375866 (= c!377663 (isEmpty!16005 (tail!3432 lt!867051)))))

(declare-fun b!2375867 () Bool)

(declare-fun e!1515895 () Bool)

(assert (=> b!2375867 (= e!1515895 e!1515892)))

(declare-fun c!377662 () Bool)

(assert (=> b!2375867 (= c!377662 (isEmpty!16005 lt!867051))))

(declare-fun b!2375868 () Bool)

(declare-fun e!1515891 () Regex!6963)

(assert (=> b!2375868 (= e!1515893 e!1515891)))

(declare-fun c!377665 () Bool)

(assert (=> b!2375868 (= c!377665 ((_ is Cons!28066) lt!867051))))

(declare-fun b!2375869 () Bool)

(assert (=> b!2375869 (= e!1515892 (isEmptyExpr!36 lt!867058))))

(declare-fun b!2375870 () Bool)

(assert (=> b!2375870 (= e!1515891 EmptyExpr!6963)))

(declare-fun b!2375871 () Bool)

(assert (=> b!2375871 (= e!1515890 (isConcat!36 lt!867058))))

(assert (=> d!695996 e!1515895))

(declare-fun res!1008743 () Bool)

(assert (=> d!695996 (=> (not res!1008743) (not e!1515895))))

(assert (=> d!695996 (= res!1008743 (validRegex!2690 lt!867058))))

(assert (=> d!695996 (= lt!867058 e!1515893)))

(declare-fun c!377664 () Bool)

(declare-fun e!1515894 () Bool)

(assert (=> d!695996 (= c!377664 e!1515894)))

(declare-fun res!1008742 () Bool)

(assert (=> d!695996 (=> (not res!1008742) (not e!1515894))))

(assert (=> d!695996 (= res!1008742 ((_ is Cons!28066) lt!867051))))

(assert (=> d!695996 (forall!5597 lt!867051 lambda!88229)))

(assert (=> d!695996 (= (generalisedConcat!64 lt!867051) lt!867058)))

(declare-fun b!2375872 () Bool)

(assert (=> b!2375872 (= e!1515891 (Concat!11599 (h!33467 lt!867051) (generalisedConcat!64 (t!208141 lt!867051))))))

(declare-fun b!2375873 () Bool)

(assert (=> b!2375873 (= e!1515894 (isEmpty!16005 (t!208141 lt!867051)))))

(assert (= (and d!695996 res!1008742) b!2375873))

(assert (= (and d!695996 c!377664) b!2375865))

(assert (= (and d!695996 (not c!377664)) b!2375868))

(assert (= (and b!2375868 c!377665) b!2375872))

(assert (= (and b!2375868 (not c!377665)) b!2375870))

(assert (= (and d!695996 res!1008743) b!2375867))

(assert (= (and b!2375867 c!377662) b!2375869))

(assert (= (and b!2375867 (not c!377662)) b!2375866))

(assert (= (and b!2375866 c!377663) b!2375864))

(assert (= (and b!2375866 (not c!377663)) b!2375871))

(declare-fun m!2781649 () Bool)

(assert (=> b!2375871 m!2781649))

(assert (=> b!2375867 m!2781597))

(declare-fun m!2781651 () Bool)

(assert (=> d!695996 m!2781651))

(declare-fun m!2781653 () Bool)

(assert (=> d!695996 m!2781653))

(declare-fun m!2781655 () Bool)

(assert (=> b!2375872 m!2781655))

(declare-fun m!2781657 () Bool)

(assert (=> b!2375866 m!2781657))

(assert (=> b!2375866 m!2781657))

(declare-fun m!2781659 () Bool)

(assert (=> b!2375866 m!2781659))

(declare-fun m!2781661 () Bool)

(assert (=> b!2375873 m!2781661))

(declare-fun m!2781663 () Bool)

(assert (=> b!2375869 m!2781663))

(declare-fun m!2781665 () Bool)

(assert (=> b!2375864 m!2781665))

(assert (=> b!2375780 d!695996))

(declare-fun bs!461548 () Bool)

(declare-fun b!2375950 () Bool)

(assert (= bs!461548 (and b!2375950 b!2375784)))

(declare-fun lambda!88234 () Int)

(assert (=> bs!461548 (not (= lambda!88234 lambda!88218))))

(assert (=> bs!461548 (not (= lambda!88234 lambda!88219))))

(assert (=> b!2375950 true))

(assert (=> b!2375950 true))

(declare-fun bs!461549 () Bool)

(declare-fun b!2375949 () Bool)

(assert (= bs!461549 (and b!2375949 b!2375784)))

(declare-fun lambda!88235 () Int)

(assert (=> bs!461549 (not (= lambda!88235 lambda!88218))))

(assert (=> bs!461549 (= lambda!88235 lambda!88219)))

(declare-fun bs!461550 () Bool)

(assert (= bs!461550 (and b!2375949 b!2375950)))

(assert (=> bs!461550 (not (= lambda!88235 lambda!88234))))

(assert (=> b!2375949 true))

(assert (=> b!2375949 true))

(declare-fun b!2375948 () Bool)

(declare-fun e!1515938 () Bool)

(declare-fun e!1515939 () Bool)

(assert (=> b!2375948 (= e!1515938 e!1515939)))

(declare-fun res!1008785 () Bool)

(assert (=> b!2375948 (= res!1008785 (matchRSpec!812 (regOne!14439 r!13927) s!9460))))

(assert (=> b!2375948 (=> res!1008785 e!1515939)))

(declare-fun e!1515941 () Bool)

(declare-fun call!144394 () Bool)

(assert (=> b!2375949 (= e!1515941 call!144394)))

(declare-fun e!1515937 () Bool)

(assert (=> b!2375950 (= e!1515937 call!144394)))

(declare-fun b!2375951 () Bool)

(declare-fun c!377683 () Bool)

(assert (=> b!2375951 (= c!377683 ((_ is Union!6963) r!13927))))

(declare-fun e!1515940 () Bool)

(assert (=> b!2375951 (= e!1515940 e!1515938)))

(declare-fun b!2375952 () Bool)

(assert (=> b!2375952 (= e!1515939 (matchRSpec!812 (regTwo!14439 r!13927) s!9460))))

(declare-fun b!2375953 () Bool)

(declare-fun c!377684 () Bool)

(assert (=> b!2375953 (= c!377684 ((_ is ElementMatch!6963) r!13927))))

(declare-fun e!1515935 () Bool)

(assert (=> b!2375953 (= e!1515935 e!1515940)))

(declare-fun b!2375954 () Bool)

(declare-fun res!1008786 () Bool)

(assert (=> b!2375954 (=> res!1008786 e!1515937)))

(declare-fun call!144395 () Bool)

(assert (=> b!2375954 (= res!1008786 call!144395)))

(assert (=> b!2375954 (= e!1515941 e!1515937)))

(declare-fun b!2375955 () Bool)

(assert (=> b!2375955 (= e!1515940 (= s!9460 (Cons!28067 (c!377637 r!13927) Nil!28067)))))

(declare-fun b!2375956 () Bool)

(declare-fun e!1515936 () Bool)

(assert (=> b!2375956 (= e!1515936 e!1515935)))

(declare-fun res!1008784 () Bool)

(assert (=> b!2375956 (= res!1008784 (not ((_ is EmptyLang!6963) r!13927)))))

(assert (=> b!2375956 (=> (not res!1008784) (not e!1515935))))

(declare-fun bm!144389 () Bool)

(declare-fun c!377685 () Bool)

(assert (=> bm!144389 (= call!144394 (Exists!1025 (ite c!377685 lambda!88234 lambda!88235)))))

(declare-fun b!2375957 () Bool)

(assert (=> b!2375957 (= e!1515936 call!144395)))

(declare-fun d!695998 () Bool)

(declare-fun c!377686 () Bool)

(assert (=> d!695998 (= c!377686 ((_ is EmptyExpr!6963) r!13927))))

(assert (=> d!695998 (= (matchRSpec!812 r!13927 s!9460) e!1515936)))

(declare-fun bm!144390 () Bool)

(declare-fun isEmpty!16007 (List!28165) Bool)

(assert (=> bm!144390 (= call!144395 (isEmpty!16007 s!9460))))

(declare-fun b!2375958 () Bool)

(assert (=> b!2375958 (= e!1515938 e!1515941)))

(assert (=> b!2375958 (= c!377685 ((_ is Star!6963) r!13927))))

(assert (= (and d!695998 c!377686) b!2375957))

(assert (= (and d!695998 (not c!377686)) b!2375956))

(assert (= (and b!2375956 res!1008784) b!2375953))

(assert (= (and b!2375953 c!377684) b!2375955))

(assert (= (and b!2375953 (not c!377684)) b!2375951))

(assert (= (and b!2375951 c!377683) b!2375948))

(assert (= (and b!2375951 (not c!377683)) b!2375958))

(assert (= (and b!2375948 (not res!1008785)) b!2375952))

(assert (= (and b!2375958 c!377685) b!2375954))

(assert (= (and b!2375958 (not c!377685)) b!2375949))

(assert (= (and b!2375954 (not res!1008786)) b!2375950))

(assert (= (or b!2375950 b!2375949) bm!144389))

(assert (= (or b!2375957 b!2375954) bm!144390))

(declare-fun m!2781683 () Bool)

(assert (=> b!2375948 m!2781683))

(declare-fun m!2781685 () Bool)

(assert (=> b!2375952 m!2781685))

(declare-fun m!2781687 () Bool)

(assert (=> bm!144389 m!2781687))

(declare-fun m!2781689 () Bool)

(assert (=> bm!144390 m!2781689))

(assert (=> b!2375775 d!695998))

(declare-fun b!2376029 () Bool)

(declare-fun res!1008822 () Bool)

(declare-fun e!1515986 () Bool)

(assert (=> b!2376029 (=> res!1008822 e!1515986)))

(declare-fun tail!3434 (List!28165) List!28165)

(assert (=> b!2376029 (= res!1008822 (not (isEmpty!16007 (tail!3434 s!9460))))))

(declare-fun b!2376030 () Bool)

(declare-fun res!1008816 () Bool)

(declare-fun e!1515981 () Bool)

(assert (=> b!2376030 (=> (not res!1008816) (not e!1515981))))

(declare-fun call!144398 () Bool)

(assert (=> b!2376030 (= res!1008816 (not call!144398))))

(declare-fun bm!144393 () Bool)

(assert (=> bm!144393 (= call!144398 (isEmpty!16007 s!9460))))

(declare-fun b!2376031 () Bool)

(declare-fun head!5164 (List!28165) C!14084)

(assert (=> b!2376031 (= e!1515981 (= (head!5164 s!9460) (c!377637 r!13927)))))

(declare-fun b!2376032 () Bool)

(declare-fun e!1515980 () Bool)

(declare-fun lt!867073 () Bool)

(assert (=> b!2376032 (= e!1515980 (= lt!867073 call!144398))))

(declare-fun b!2376033 () Bool)

(declare-fun e!1515983 () Bool)

(declare-fun derivativeStep!1675 (Regex!6963 C!14084) Regex!6963)

(assert (=> b!2376033 (= e!1515983 (matchR!3080 (derivativeStep!1675 r!13927 (head!5164 s!9460)) (tail!3434 s!9460)))))

(declare-fun b!2376034 () Bool)

(assert (=> b!2376034 (= e!1515986 (not (= (head!5164 s!9460) (c!377637 r!13927))))))

(declare-fun d!696004 () Bool)

(assert (=> d!696004 e!1515980))

(declare-fun c!377708 () Bool)

(assert (=> d!696004 (= c!377708 ((_ is EmptyExpr!6963) r!13927))))

(assert (=> d!696004 (= lt!867073 e!1515983)))

(declare-fun c!377710 () Bool)

(assert (=> d!696004 (= c!377710 (isEmpty!16007 s!9460))))

(assert (=> d!696004 (validRegex!2690 r!13927)))

(assert (=> d!696004 (= (matchR!3080 r!13927 s!9460) lt!867073)))

(declare-fun b!2376035 () Bool)

(declare-fun res!1008820 () Bool)

(declare-fun e!1515984 () Bool)

(assert (=> b!2376035 (=> res!1008820 e!1515984)))

(assert (=> b!2376035 (= res!1008820 e!1515981)))

(declare-fun res!1008817 () Bool)

(assert (=> b!2376035 (=> (not res!1008817) (not e!1515981))))

(assert (=> b!2376035 (= res!1008817 lt!867073)))

(declare-fun b!2376036 () Bool)

(declare-fun e!1515985 () Bool)

(assert (=> b!2376036 (= e!1515985 (not lt!867073))))

(declare-fun b!2376037 () Bool)

(assert (=> b!2376037 (= e!1515980 e!1515985)))

(declare-fun c!377709 () Bool)

(assert (=> b!2376037 (= c!377709 ((_ is EmptyLang!6963) r!13927))))

(declare-fun b!2376038 () Bool)

(declare-fun e!1515982 () Bool)

(assert (=> b!2376038 (= e!1515984 e!1515982)))

(declare-fun res!1008815 () Bool)

(assert (=> b!2376038 (=> (not res!1008815) (not e!1515982))))

(assert (=> b!2376038 (= res!1008815 (not lt!867073))))

(declare-fun b!2376039 () Bool)

(assert (=> b!2376039 (= e!1515982 e!1515986)))

(declare-fun res!1008821 () Bool)

(assert (=> b!2376039 (=> res!1008821 e!1515986)))

(assert (=> b!2376039 (= res!1008821 call!144398)))

(declare-fun b!2376040 () Bool)

(declare-fun res!1008818 () Bool)

(assert (=> b!2376040 (=> res!1008818 e!1515984)))

(assert (=> b!2376040 (= res!1008818 (not ((_ is ElementMatch!6963) r!13927)))))

(assert (=> b!2376040 (= e!1515985 e!1515984)))

(declare-fun b!2376041 () Bool)

(declare-fun nullable!2017 (Regex!6963) Bool)

(assert (=> b!2376041 (= e!1515983 (nullable!2017 r!13927))))

(declare-fun b!2376042 () Bool)

(declare-fun res!1008819 () Bool)

(assert (=> b!2376042 (=> (not res!1008819) (not e!1515981))))

(assert (=> b!2376042 (= res!1008819 (isEmpty!16007 (tail!3434 s!9460)))))

(assert (= (and d!696004 c!377710) b!2376041))

(assert (= (and d!696004 (not c!377710)) b!2376033))

(assert (= (and d!696004 c!377708) b!2376032))

(assert (= (and d!696004 (not c!377708)) b!2376037))

(assert (= (and b!2376037 c!377709) b!2376036))

(assert (= (and b!2376037 (not c!377709)) b!2376040))

(assert (= (and b!2376040 (not res!1008818)) b!2376035))

(assert (= (and b!2376035 res!1008817) b!2376030))

(assert (= (and b!2376030 res!1008816) b!2376042))

(assert (= (and b!2376042 res!1008819) b!2376031))

(assert (= (and b!2376035 (not res!1008820)) b!2376038))

(assert (= (and b!2376038 res!1008815) b!2376039))

(assert (= (and b!2376039 (not res!1008821)) b!2376029))

(assert (= (and b!2376029 (not res!1008822)) b!2376034))

(assert (= (or b!2376032 b!2376030 b!2376039) bm!144393))

(declare-fun m!2781723 () Bool)

(assert (=> b!2376033 m!2781723))

(assert (=> b!2376033 m!2781723))

(declare-fun m!2781725 () Bool)

(assert (=> b!2376033 m!2781725))

(declare-fun m!2781727 () Bool)

(assert (=> b!2376033 m!2781727))

(assert (=> b!2376033 m!2781725))

(assert (=> b!2376033 m!2781727))

(declare-fun m!2781729 () Bool)

(assert (=> b!2376033 m!2781729))

(assert (=> b!2376029 m!2781727))

(assert (=> b!2376029 m!2781727))

(declare-fun m!2781731 () Bool)

(assert (=> b!2376029 m!2781731))

(assert (=> d!696004 m!2781689))

(declare-fun m!2781733 () Bool)

(assert (=> d!696004 m!2781733))

(assert (=> bm!144393 m!2781689))

(assert (=> b!2376042 m!2781727))

(assert (=> b!2376042 m!2781727))

(assert (=> b!2376042 m!2781731))

(assert (=> b!2376034 m!2781723))

(declare-fun m!2781735 () Bool)

(assert (=> b!2376041 m!2781735))

(assert (=> b!2376031 m!2781723))

(assert (=> b!2375775 d!696004))

(declare-fun d!696014 () Bool)

(assert (=> d!696014 (= (matchR!3080 r!13927 s!9460) (matchRSpec!812 r!13927 s!9460))))

(declare-fun lt!867078 () Unit!40961)

(declare-fun choose!13856 (Regex!6963 List!28165) Unit!40961)

(assert (=> d!696014 (= lt!867078 (choose!13856 r!13927 s!9460))))

(assert (=> d!696014 (validRegex!2690 r!13927)))

(assert (=> d!696014 (= (mainMatchTheorem!812 r!13927 s!9460) lt!867078)))

(declare-fun bs!461554 () Bool)

(assert (= bs!461554 d!696014))

(assert (=> bs!461554 m!2781621))

(assert (=> bs!461554 m!2781619))

(declare-fun m!2781757 () Bool)

(assert (=> bs!461554 m!2781757))

(assert (=> bs!461554 m!2781733))

(assert (=> b!2375775 d!696014))

(declare-fun d!696022 () Bool)

(assert (=> d!696022 (= (isEmpty!16005 lt!867051) ((_ is Nil!28066) lt!867051))))

(assert (=> b!2375782 d!696022))

(declare-fun d!696024 () Bool)

(assert (=> d!696024 (= (tail!3432 l!9164) (t!208141 l!9164))))

(assert (=> b!2375782 d!696024))

(declare-fun b!2376071 () Bool)

(declare-fun res!1008844 () Bool)

(declare-fun e!1516010 () Bool)

(assert (=> b!2376071 (=> res!1008844 e!1516010)))

(assert (=> b!2376071 (= res!1008844 (not (isEmpty!16007 (tail!3434 s!9460))))))

(declare-fun b!2376072 () Bool)

(declare-fun res!1008838 () Bool)

(declare-fun e!1516005 () Bool)

(assert (=> b!2376072 (=> (not res!1008838) (not e!1516005))))

(declare-fun call!144400 () Bool)

(assert (=> b!2376072 (= res!1008838 (not call!144400))))

(declare-fun bm!144395 () Bool)

(assert (=> bm!144395 (= call!144400 (isEmpty!16007 s!9460))))

(declare-fun b!2376073 () Bool)

(assert (=> b!2376073 (= e!1516005 (= (head!5164 s!9460) (c!377637 lt!867053)))))

(declare-fun b!2376074 () Bool)

(declare-fun e!1516004 () Bool)

(declare-fun lt!867079 () Bool)

(assert (=> b!2376074 (= e!1516004 (= lt!867079 call!144400))))

(declare-fun b!2376075 () Bool)

(declare-fun e!1516007 () Bool)

(assert (=> b!2376075 (= e!1516007 (matchR!3080 (derivativeStep!1675 lt!867053 (head!5164 s!9460)) (tail!3434 s!9460)))))

(declare-fun b!2376076 () Bool)

(assert (=> b!2376076 (= e!1516010 (not (= (head!5164 s!9460) (c!377637 lt!867053))))))

(declare-fun d!696026 () Bool)

(assert (=> d!696026 e!1516004))

(declare-fun c!377718 () Bool)

(assert (=> d!696026 (= c!377718 ((_ is EmptyExpr!6963) lt!867053))))

(assert (=> d!696026 (= lt!867079 e!1516007)))

(declare-fun c!377720 () Bool)

(assert (=> d!696026 (= c!377720 (isEmpty!16007 s!9460))))

(assert (=> d!696026 (validRegex!2690 lt!867053)))

(assert (=> d!696026 (= (matchR!3080 lt!867053 s!9460) lt!867079)))

(declare-fun b!2376077 () Bool)

(declare-fun res!1008842 () Bool)

(declare-fun e!1516008 () Bool)

(assert (=> b!2376077 (=> res!1008842 e!1516008)))

(assert (=> b!2376077 (= res!1008842 e!1516005)))

(declare-fun res!1008839 () Bool)

(assert (=> b!2376077 (=> (not res!1008839) (not e!1516005))))

(assert (=> b!2376077 (= res!1008839 lt!867079)))

(declare-fun b!2376078 () Bool)

(declare-fun e!1516009 () Bool)

(assert (=> b!2376078 (= e!1516009 (not lt!867079))))

(declare-fun b!2376079 () Bool)

(assert (=> b!2376079 (= e!1516004 e!1516009)))

(declare-fun c!377719 () Bool)

(assert (=> b!2376079 (= c!377719 ((_ is EmptyLang!6963) lt!867053))))

(declare-fun b!2376080 () Bool)

(declare-fun e!1516006 () Bool)

(assert (=> b!2376080 (= e!1516008 e!1516006)))

(declare-fun res!1008837 () Bool)

(assert (=> b!2376080 (=> (not res!1008837) (not e!1516006))))

(assert (=> b!2376080 (= res!1008837 (not lt!867079))))

(declare-fun b!2376081 () Bool)

(assert (=> b!2376081 (= e!1516006 e!1516010)))

(declare-fun res!1008843 () Bool)

(assert (=> b!2376081 (=> res!1008843 e!1516010)))

(assert (=> b!2376081 (= res!1008843 call!144400)))

(declare-fun b!2376082 () Bool)

(declare-fun res!1008840 () Bool)

(assert (=> b!2376082 (=> res!1008840 e!1516008)))

(assert (=> b!2376082 (= res!1008840 (not ((_ is ElementMatch!6963) lt!867053)))))

(assert (=> b!2376082 (= e!1516009 e!1516008)))

(declare-fun b!2376083 () Bool)

(assert (=> b!2376083 (= e!1516007 (nullable!2017 lt!867053))))

(declare-fun b!2376084 () Bool)

(declare-fun res!1008841 () Bool)

(assert (=> b!2376084 (=> (not res!1008841) (not e!1516005))))

(assert (=> b!2376084 (= res!1008841 (isEmpty!16007 (tail!3434 s!9460)))))

(assert (= (and d!696026 c!377720) b!2376083))

(assert (= (and d!696026 (not c!377720)) b!2376075))

(assert (= (and d!696026 c!377718) b!2376074))

(assert (= (and d!696026 (not c!377718)) b!2376079))

(assert (= (and b!2376079 c!377719) b!2376078))

(assert (= (and b!2376079 (not c!377719)) b!2376082))

(assert (= (and b!2376082 (not res!1008840)) b!2376077))

(assert (= (and b!2376077 res!1008839) b!2376072))

(assert (= (and b!2376072 res!1008838) b!2376084))

(assert (= (and b!2376084 res!1008841) b!2376073))

(assert (= (and b!2376077 (not res!1008842)) b!2376080))

(assert (= (and b!2376080 res!1008837) b!2376081))

(assert (= (and b!2376081 (not res!1008843)) b!2376071))

(assert (= (and b!2376071 (not res!1008844)) b!2376076))

(assert (= (or b!2376074 b!2376072 b!2376081) bm!144395))

(assert (=> b!2376075 m!2781723))

(assert (=> b!2376075 m!2781723))

(declare-fun m!2781763 () Bool)

(assert (=> b!2376075 m!2781763))

(assert (=> b!2376075 m!2781727))

(assert (=> b!2376075 m!2781763))

(assert (=> b!2376075 m!2781727))

(declare-fun m!2781765 () Bool)

(assert (=> b!2376075 m!2781765))

(assert (=> b!2376071 m!2781727))

(assert (=> b!2376071 m!2781727))

(assert (=> b!2376071 m!2781731))

(assert (=> d!696026 m!2781689))

(assert (=> d!696026 m!2781589))

(assert (=> bm!144395 m!2781689))

(assert (=> b!2376084 m!2781727))

(assert (=> b!2376084 m!2781727))

(assert (=> b!2376084 m!2781731))

(assert (=> b!2376076 m!2781723))

(declare-fun m!2781767 () Bool)

(assert (=> b!2376083 m!2781767))

(assert (=> b!2376073 m!2781723))

(assert (=> b!2375777 d!696026))

(declare-fun d!696032 () Bool)

(assert (=> d!696032 (= (head!5162 l!9164) (h!33467 l!9164))))

(assert (=> b!2375777 d!696032))

(declare-fun b!2376105 () Bool)

(declare-fun e!1516033 () Bool)

(declare-fun e!1516028 () Bool)

(assert (=> b!2376105 (= e!1516033 e!1516028)))

(declare-fun res!1008861 () Bool)

(assert (=> b!2376105 (=> (not res!1008861) (not e!1516028))))

(declare-fun call!144407 () Bool)

(assert (=> b!2376105 (= res!1008861 call!144407)))

(declare-fun b!2376106 () Bool)

(declare-fun res!1008858 () Bool)

(declare-fun e!1516029 () Bool)

(assert (=> b!2376106 (=> (not res!1008858) (not e!1516029))))

(declare-fun call!144408 () Bool)

(assert (=> b!2376106 (= res!1008858 call!144408)))

(declare-fun e!1516031 () Bool)

(assert (=> b!2376106 (= e!1516031 e!1516029)))

(declare-fun b!2376107 () Bool)

(declare-fun res!1008859 () Bool)

(assert (=> b!2376107 (=> res!1008859 e!1516033)))

(assert (=> b!2376107 (= res!1008859 (not ((_ is Concat!11599) lt!867053)))))

(assert (=> b!2376107 (= e!1516031 e!1516033)))

(declare-fun b!2376108 () Bool)

(declare-fun e!1516027 () Bool)

(assert (=> b!2376108 (= e!1516027 e!1516031)))

(declare-fun c!377726 () Bool)

(assert (=> b!2376108 (= c!377726 ((_ is Union!6963) lt!867053))))

(declare-fun b!2376109 () Bool)

(assert (=> b!2376109 (= e!1516029 call!144407)))

(declare-fun b!2376110 () Bool)

(assert (=> b!2376110 (= e!1516028 call!144408)))

(declare-fun d!696036 () Bool)

(declare-fun res!1008857 () Bool)

(declare-fun e!1516032 () Bool)

(assert (=> d!696036 (=> res!1008857 e!1516032)))

(assert (=> d!696036 (= res!1008857 ((_ is ElementMatch!6963) lt!867053))))

(assert (=> d!696036 (= (validRegex!2690 lt!867053) e!1516032)))

(declare-fun b!2376111 () Bool)

(declare-fun e!1516030 () Bool)

(declare-fun call!144409 () Bool)

(assert (=> b!2376111 (= e!1516030 call!144409)))

(declare-fun bm!144402 () Bool)

(declare-fun c!377725 () Bool)

(assert (=> bm!144402 (= call!144409 (validRegex!2690 (ite c!377725 (reg!7292 lt!867053) (ite c!377726 (regTwo!14439 lt!867053) (regOne!14438 lt!867053)))))))

(declare-fun bm!144403 () Bool)

(assert (=> bm!144403 (= call!144407 call!144409)))

(declare-fun bm!144404 () Bool)

(assert (=> bm!144404 (= call!144408 (validRegex!2690 (ite c!377726 (regOne!14439 lt!867053) (regTwo!14438 lt!867053))))))

(declare-fun b!2376112 () Bool)

(assert (=> b!2376112 (= e!1516027 e!1516030)))

(declare-fun res!1008860 () Bool)

(assert (=> b!2376112 (= res!1008860 (not (nullable!2017 (reg!7292 lt!867053))))))

(assert (=> b!2376112 (=> (not res!1008860) (not e!1516030))))

(declare-fun b!2376113 () Bool)

(assert (=> b!2376113 (= e!1516032 e!1516027)))

(assert (=> b!2376113 (= c!377725 ((_ is Star!6963) lt!867053))))

(assert (= (and d!696036 (not res!1008857)) b!2376113))

(assert (= (and b!2376113 c!377725) b!2376112))

(assert (= (and b!2376113 (not c!377725)) b!2376108))

(assert (= (and b!2376112 res!1008860) b!2376111))

(assert (= (and b!2376108 c!377726) b!2376106))

(assert (= (and b!2376108 (not c!377726)) b!2376107))

(assert (= (and b!2376106 res!1008858) b!2376109))

(assert (= (and b!2376107 (not res!1008859)) b!2376105))

(assert (= (and b!2376105 res!1008861) b!2376110))

(assert (= (or b!2376106 b!2376110) bm!144404))

(assert (= (or b!2376109 b!2376105) bm!144403))

(assert (= (or b!2376111 bm!144403) bm!144402))

(declare-fun m!2781775 () Bool)

(assert (=> bm!144402 m!2781775))

(declare-fun m!2781777 () Bool)

(assert (=> bm!144404 m!2781777))

(declare-fun m!2781779 () Bool)

(assert (=> b!2376112 m!2781779))

(assert (=> b!2375778 d!696036))

(declare-fun b!2376129 () Bool)

(declare-fun e!1516040 () Bool)

(declare-fun lt!867085 () List!28165)

(assert (=> b!2376129 (= e!1516040 (or (not (= s!9460 Nil!28067)) (= lt!867085 Nil!28067)))))

(declare-fun b!2376128 () Bool)

(declare-fun res!1008871 () Bool)

(assert (=> b!2376128 (=> (not res!1008871) (not e!1516040))))

(declare-fun size!22157 (List!28165) Int)

(assert (=> b!2376128 (= res!1008871 (= (size!22157 lt!867085) (+ (size!22157 Nil!28067) (size!22157 s!9460))))))

(declare-fun b!2376126 () Bool)

(declare-fun e!1516041 () List!28165)

(assert (=> b!2376126 (= e!1516041 s!9460)))

(declare-fun b!2376127 () Bool)

(assert (=> b!2376127 (= e!1516041 (Cons!28067 (h!33468 Nil!28067) (++!6920 (t!208142 Nil!28067) s!9460)))))

(declare-fun d!696042 () Bool)

(assert (=> d!696042 e!1516040))

(declare-fun res!1008870 () Bool)

(assert (=> d!696042 (=> (not res!1008870) (not e!1516040))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3819 (List!28165) (InoxSet C!14084))

(assert (=> d!696042 (= res!1008870 (= (content!3819 lt!867085) ((_ map or) (content!3819 Nil!28067) (content!3819 s!9460))))))

(assert (=> d!696042 (= lt!867085 e!1516041)))

(declare-fun c!377729 () Bool)

(assert (=> d!696042 (= c!377729 ((_ is Nil!28067) Nil!28067))))

(assert (=> d!696042 (= (++!6920 Nil!28067 s!9460) lt!867085)))

(assert (= (and d!696042 c!377729) b!2376126))

(assert (= (and d!696042 (not c!377729)) b!2376127))

(assert (= (and d!696042 res!1008870) b!2376128))

(assert (= (and b!2376128 res!1008871) b!2376129))

(declare-fun m!2781787 () Bool)

(assert (=> b!2376128 m!2781787))

(declare-fun m!2781789 () Bool)

(assert (=> b!2376128 m!2781789))

(declare-fun m!2781791 () Bool)

(assert (=> b!2376128 m!2781791))

(declare-fun m!2781793 () Bool)

(assert (=> b!2376127 m!2781793))

(declare-fun m!2781795 () Bool)

(assert (=> d!696042 m!2781795))

(declare-fun m!2781797 () Bool)

(assert (=> d!696042 m!2781797))

(declare-fun m!2781799 () Bool)

(assert (=> d!696042 m!2781799))

(assert (=> b!2375783 d!696042))

(declare-fun d!696046 () Bool)

(assert (=> d!696046 (= (isEmpty!16005 l!9164) ((_ is Nil!28066) l!9164))))

(assert (=> b!2375774 d!696046))

(declare-fun d!696048 () Bool)

(declare-fun isEmpty!16009 (Option!5506) Bool)

(assert (=> d!696048 (= (isDefined!4334 (findConcatSeparation!614 (regOne!14438 r!13927) (regTwo!14438 r!13927) Nil!28067 s!9460 s!9460)) (not (isEmpty!16009 (findConcatSeparation!614 (regOne!14438 r!13927) (regTwo!14438 r!13927) Nil!28067 s!9460 s!9460))))))

(declare-fun bs!461562 () Bool)

(assert (= bs!461562 d!696048))

(assert (=> bs!461562 m!2781607))

(declare-fun m!2781801 () Bool)

(assert (=> bs!461562 m!2781801))

(assert (=> b!2375784 d!696048))

(declare-fun d!696050 () Bool)

(declare-fun choose!13860 (Int) Bool)

(assert (=> d!696050 (= (Exists!1025 lambda!88219) (choose!13860 lambda!88219))))

(declare-fun bs!461563 () Bool)

(assert (= bs!461563 d!696050))

(declare-fun m!2781803 () Bool)

(assert (=> bs!461563 m!2781803))

(assert (=> b!2375784 d!696050))

(declare-fun bs!461568 () Bool)

(declare-fun d!696052 () Bool)

(assert (= bs!461568 (and d!696052 b!2375784)))

(declare-fun lambda!88250 () Int)

(assert (=> bs!461568 (= lambda!88250 lambda!88218)))

(assert (=> bs!461568 (not (= lambda!88250 lambda!88219))))

(declare-fun bs!461570 () Bool)

(assert (= bs!461570 (and d!696052 b!2375950)))

(assert (=> bs!461570 (not (= lambda!88250 lambda!88234))))

(declare-fun bs!461571 () Bool)

(assert (= bs!461571 (and d!696052 b!2375949)))

(assert (=> bs!461571 (not (= lambda!88250 lambda!88235))))

(assert (=> d!696052 true))

(assert (=> d!696052 true))

(assert (=> d!696052 true))

(assert (=> d!696052 (= (isDefined!4334 (findConcatSeparation!614 (regOne!14438 r!13927) (regTwo!14438 r!13927) Nil!28067 s!9460 s!9460)) (Exists!1025 lambda!88250))))

(declare-fun lt!867091 () Unit!40961)

(declare-fun choose!13861 (Regex!6963 Regex!6963 List!28165) Unit!40961)

(assert (=> d!696052 (= lt!867091 (choose!13861 (regOne!14438 r!13927) (regTwo!14438 r!13927) s!9460))))

(assert (=> d!696052 (validRegex!2690 (regOne!14438 r!13927))))

(assert (=> d!696052 (= (lemmaFindConcatSeparationEquivalentToExists!614 (regOne!14438 r!13927) (regTwo!14438 r!13927) s!9460) lt!867091)))

(declare-fun bs!461572 () Bool)

(assert (= bs!461572 d!696052))

(declare-fun m!2781805 () Bool)

(assert (=> bs!461572 m!2781805))

(declare-fun m!2781807 () Bool)

(assert (=> bs!461572 m!2781807))

(assert (=> bs!461572 m!2781607))

(assert (=> bs!461572 m!2781607))

(assert (=> bs!461572 m!2781609))

(declare-fun m!2781809 () Bool)

(assert (=> bs!461572 m!2781809))

(assert (=> b!2375784 d!696052))

(declare-fun b!2376178 () Bool)

(declare-fun res!1008904 () Bool)

(declare-fun e!1516068 () Bool)

(assert (=> b!2376178 (=> (not res!1008904) (not e!1516068))))

(declare-fun lt!867106 () Option!5506)

(declare-fun get!8544 (Option!5506) tuple2!27790)

(assert (=> b!2376178 (= res!1008904 (matchR!3080 (regOne!14438 r!13927) (_1!16436 (get!8544 lt!867106))))))

(declare-fun b!2376180 () Bool)

(declare-fun e!1516076 () Bool)

(assert (=> b!2376180 (= e!1516076 (matchR!3080 (regTwo!14438 r!13927) s!9460))))

(declare-fun b!2376182 () Bool)

(declare-fun res!1008913 () Bool)

(assert (=> b!2376182 (=> (not res!1008913) (not e!1516068))))

(assert (=> b!2376182 (= res!1008913 (matchR!3080 (regTwo!14438 r!13927) (_2!16436 (get!8544 lt!867106))))))

(declare-fun b!2376183 () Bool)

(declare-fun e!1516074 () Option!5506)

(declare-fun e!1516075 () Option!5506)

(assert (=> b!2376183 (= e!1516074 e!1516075)))

(declare-fun c!377738 () Bool)

(assert (=> b!2376183 (= c!377738 ((_ is Nil!28067) s!9460))))

(declare-fun b!2376187 () Bool)

(assert (=> b!2376187 (= e!1516068 (= (++!6920 (_1!16436 (get!8544 lt!867106)) (_2!16436 (get!8544 lt!867106))) s!9460))))

(declare-fun b!2376189 () Bool)

(declare-fun lt!867104 () Unit!40961)

(declare-fun lt!867109 () Unit!40961)

(assert (=> b!2376189 (= lt!867104 lt!867109)))

(assert (=> b!2376189 (= (++!6920 (++!6920 Nil!28067 (Cons!28067 (h!33468 s!9460) Nil!28067)) (t!208142 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!564 (List!28165 C!14084 List!28165 List!28165) Unit!40961)

(assert (=> b!2376189 (= lt!867109 (lemmaMoveElementToOtherListKeepsConcatEq!564 Nil!28067 (h!33468 s!9460) (t!208142 s!9460) s!9460))))

(assert (=> b!2376189 (= e!1516075 (findConcatSeparation!614 (regOne!14438 r!13927) (regTwo!14438 r!13927) (++!6920 Nil!28067 (Cons!28067 (h!33468 s!9460) Nil!28067)) (t!208142 s!9460) s!9460))))

(declare-fun b!2376191 () Bool)

(assert (=> b!2376191 (= e!1516074 (Some!5505 (tuple2!27791 Nil!28067 s!9460)))))

(declare-fun b!2376193 () Bool)

(assert (=> b!2376193 (= e!1516075 None!5505)))

(declare-fun d!696054 () Bool)

(declare-fun e!1516069 () Bool)

(assert (=> d!696054 e!1516069))

(declare-fun res!1008909 () Bool)

(assert (=> d!696054 (=> res!1008909 e!1516069)))

(assert (=> d!696054 (= res!1008909 e!1516068)))

(declare-fun res!1008908 () Bool)

(assert (=> d!696054 (=> (not res!1008908) (not e!1516068))))

(assert (=> d!696054 (= res!1008908 (isDefined!4334 lt!867106))))

(assert (=> d!696054 (= lt!867106 e!1516074)))

(declare-fun c!377740 () Bool)

(assert (=> d!696054 (= c!377740 e!1516076)))

(declare-fun res!1008910 () Bool)

(assert (=> d!696054 (=> (not res!1008910) (not e!1516076))))

(assert (=> d!696054 (= res!1008910 (matchR!3080 (regOne!14438 r!13927) Nil!28067))))

(assert (=> d!696054 (validRegex!2690 (regOne!14438 r!13927))))

(assert (=> d!696054 (= (findConcatSeparation!614 (regOne!14438 r!13927) (regTwo!14438 r!13927) Nil!28067 s!9460 s!9460) lt!867106)))

(declare-fun b!2376185 () Bool)

(assert (=> b!2376185 (= e!1516069 (not (isDefined!4334 lt!867106)))))

(assert (= (and d!696054 res!1008910) b!2376180))

(assert (= (and d!696054 c!377740) b!2376191))

(assert (= (and d!696054 (not c!377740)) b!2376183))

(assert (= (and b!2376183 c!377738) b!2376193))

(assert (= (and b!2376183 (not c!377738)) b!2376189))

(assert (= (and d!696054 res!1008908) b!2376178))

(assert (= (and b!2376178 res!1008904) b!2376182))

(assert (= (and b!2376182 res!1008913) b!2376187))

(assert (= (and d!696054 (not res!1008909)) b!2376185))

(declare-fun m!2781817 () Bool)

(assert (=> d!696054 m!2781817))

(declare-fun m!2781821 () Bool)

(assert (=> d!696054 m!2781821))

(assert (=> d!696054 m!2781805))

(declare-fun m!2781827 () Bool)

(assert (=> b!2376189 m!2781827))

(assert (=> b!2376189 m!2781827))

(declare-fun m!2781831 () Bool)

(assert (=> b!2376189 m!2781831))

(declare-fun m!2781835 () Bool)

(assert (=> b!2376189 m!2781835))

(assert (=> b!2376189 m!2781827))

(declare-fun m!2781839 () Bool)

(assert (=> b!2376189 m!2781839))

(declare-fun m!2781843 () Bool)

(assert (=> b!2376178 m!2781843))

(declare-fun m!2781845 () Bool)

(assert (=> b!2376178 m!2781845))

(assert (=> b!2376187 m!2781843))

(declare-fun m!2781851 () Bool)

(assert (=> b!2376187 m!2781851))

(declare-fun m!2781853 () Bool)

(assert (=> b!2376180 m!2781853))

(assert (=> b!2376185 m!2781817))

(assert (=> b!2376182 m!2781843))

(declare-fun m!2781857 () Bool)

(assert (=> b!2376182 m!2781857))

(assert (=> b!2375784 d!696054))

(declare-fun bs!461574 () Bool)

(declare-fun d!696058 () Bool)

(assert (= bs!461574 (and d!696058 d!696052)))

(declare-fun lambda!88256 () Int)

(assert (=> bs!461574 (= lambda!88256 lambda!88250)))

(declare-fun bs!461575 () Bool)

(assert (= bs!461575 (and d!696058 b!2375784)))

(assert (=> bs!461575 (= lambda!88256 lambda!88218)))

(assert (=> bs!461575 (not (= lambda!88256 lambda!88219))))

(declare-fun bs!461576 () Bool)

(assert (= bs!461576 (and d!696058 b!2375949)))

(assert (=> bs!461576 (not (= lambda!88256 lambda!88235))))

(declare-fun bs!461577 () Bool)

(assert (= bs!461577 (and d!696058 b!2375950)))

(assert (=> bs!461577 (not (= lambda!88256 lambda!88234))))

(assert (=> d!696058 true))

(assert (=> d!696058 true))

(assert (=> d!696058 true))

(declare-fun lambda!88257 () Int)

(assert (=> bs!461574 (not (= lambda!88257 lambda!88250))))

(assert (=> bs!461575 (not (= lambda!88257 lambda!88218))))

(assert (=> bs!461575 (= lambda!88257 lambda!88219)))

(assert (=> bs!461576 (= lambda!88257 lambda!88235)))

(declare-fun bs!461578 () Bool)

(assert (= bs!461578 d!696058))

(assert (=> bs!461578 (not (= lambda!88257 lambda!88256))))

(assert (=> bs!461577 (not (= lambda!88257 lambda!88234))))

(assert (=> d!696058 true))

(assert (=> d!696058 true))

(assert (=> d!696058 true))

(assert (=> d!696058 (= (Exists!1025 lambda!88256) (Exists!1025 lambda!88257))))

(declare-fun lt!867112 () Unit!40961)

(declare-fun choose!13862 (Regex!6963 Regex!6963 List!28165) Unit!40961)

(assert (=> d!696058 (= lt!867112 (choose!13862 (regOne!14438 r!13927) (regTwo!14438 r!13927) s!9460))))

(assert (=> d!696058 (validRegex!2690 (regOne!14438 r!13927))))

(assert (=> d!696058 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!364 (regOne!14438 r!13927) (regTwo!14438 r!13927) s!9460) lt!867112)))

(declare-fun m!2781869 () Bool)

(assert (=> bs!461578 m!2781869))

(declare-fun m!2781871 () Bool)

(assert (=> bs!461578 m!2781871))

(declare-fun m!2781873 () Bool)

(assert (=> bs!461578 m!2781873))

(assert (=> bs!461578 m!2781805))

(assert (=> b!2375784 d!696058))

(declare-fun d!696064 () Bool)

(assert (=> d!696064 (= (Exists!1025 lambda!88218) (choose!13860 lambda!88218))))

(declare-fun bs!461579 () Bool)

(assert (= bs!461579 d!696064))

(declare-fun m!2781875 () Bool)

(assert (=> bs!461579 m!2781875))

(assert (=> b!2375784 d!696064))

(declare-fun d!696066 () Bool)

(declare-fun res!1008941 () Bool)

(declare-fun e!1516121 () Bool)

(assert (=> d!696066 (=> res!1008941 e!1516121)))

(assert (=> d!696066 (= res!1008941 ((_ is Nil!28066) l!9164))))

(assert (=> d!696066 (= (forall!5597 l!9164 lambda!88217) e!1516121)))

(declare-fun b!2376279 () Bool)

(declare-fun e!1516122 () Bool)

(assert (=> b!2376279 (= e!1516121 e!1516122)))

(declare-fun res!1008942 () Bool)

(assert (=> b!2376279 (=> (not res!1008942) (not e!1516122))))

(declare-fun dynLambda!12084 (Int Regex!6963) Bool)

(assert (=> b!2376279 (= res!1008942 (dynLambda!12084 lambda!88217 (h!33467 l!9164)))))

(declare-fun b!2376280 () Bool)

(assert (=> b!2376280 (= e!1516122 (forall!5597 (t!208141 l!9164) lambda!88217))))

(assert (= (and d!696066 (not res!1008941)) b!2376279))

(assert (= (and b!2376279 res!1008942) b!2376280))

(declare-fun b_lambda!73999 () Bool)

(assert (=> (not b_lambda!73999) (not b!2376279)))

(declare-fun m!2781877 () Bool)

(assert (=> b!2376279 m!2781877))

(declare-fun m!2781879 () Bool)

(assert (=> b!2376280 m!2781879))

(assert (=> start!233132 d!696066))

(declare-fun b!2376292 () Bool)

(declare-fun e!1516125 () Bool)

(declare-fun tp!758997 () Bool)

(declare-fun tp!758993 () Bool)

(assert (=> b!2376292 (= e!1516125 (and tp!758997 tp!758993))))

(assert (=> b!2375786 (= tp!758929 e!1516125)))

(declare-fun b!2376294 () Bool)

(declare-fun tp!758995 () Bool)

(declare-fun tp!758994 () Bool)

(assert (=> b!2376294 (= e!1516125 (and tp!758995 tp!758994))))

(declare-fun b!2376291 () Bool)

(assert (=> b!2376291 (= e!1516125 tp_is_empty!11339)))

(declare-fun b!2376293 () Bool)

(declare-fun tp!758996 () Bool)

(assert (=> b!2376293 (= e!1516125 tp!758996)))

(assert (= (and b!2375786 ((_ is ElementMatch!6963) (regOne!14438 r!13927))) b!2376291))

(assert (= (and b!2375786 ((_ is Concat!11599) (regOne!14438 r!13927))) b!2376292))

(assert (= (and b!2375786 ((_ is Star!6963) (regOne!14438 r!13927))) b!2376293))

(assert (= (and b!2375786 ((_ is Union!6963) (regOne!14438 r!13927))) b!2376294))

(declare-fun b!2376296 () Bool)

(declare-fun e!1516126 () Bool)

(declare-fun tp!759002 () Bool)

(declare-fun tp!758998 () Bool)

(assert (=> b!2376296 (= e!1516126 (and tp!759002 tp!758998))))

(assert (=> b!2375786 (= tp!758933 e!1516126)))

(declare-fun b!2376298 () Bool)

(declare-fun tp!759000 () Bool)

(declare-fun tp!758999 () Bool)

(assert (=> b!2376298 (= e!1516126 (and tp!759000 tp!758999))))

(declare-fun b!2376295 () Bool)

(assert (=> b!2376295 (= e!1516126 tp_is_empty!11339)))

(declare-fun b!2376297 () Bool)

(declare-fun tp!759001 () Bool)

(assert (=> b!2376297 (= e!1516126 tp!759001)))

(assert (= (and b!2375786 ((_ is ElementMatch!6963) (regTwo!14438 r!13927))) b!2376295))

(assert (= (and b!2375786 ((_ is Concat!11599) (regTwo!14438 r!13927))) b!2376296))

(assert (= (and b!2375786 ((_ is Star!6963) (regTwo!14438 r!13927))) b!2376297))

(assert (= (and b!2375786 ((_ is Union!6963) (regTwo!14438 r!13927))) b!2376298))

(declare-fun b!2376303 () Bool)

(declare-fun e!1516129 () Bool)

(declare-fun tp!759005 () Bool)

(assert (=> b!2376303 (= e!1516129 (and tp_is_empty!11339 tp!759005))))

(assert (=> b!2375776 (= tp!758926 e!1516129)))

(assert (= (and b!2375776 ((_ is Cons!28067) (t!208142 s!9460))) b!2376303))

(declare-fun b!2376305 () Bool)

(declare-fun e!1516130 () Bool)

(declare-fun tp!759010 () Bool)

(declare-fun tp!759006 () Bool)

(assert (=> b!2376305 (= e!1516130 (and tp!759010 tp!759006))))

(assert (=> b!2375771 (= tp!758931 e!1516130)))

(declare-fun b!2376307 () Bool)

(declare-fun tp!759008 () Bool)

(declare-fun tp!759007 () Bool)

(assert (=> b!2376307 (= e!1516130 (and tp!759008 tp!759007))))

(declare-fun b!2376304 () Bool)

(assert (=> b!2376304 (= e!1516130 tp_is_empty!11339)))

(declare-fun b!2376306 () Bool)

(declare-fun tp!759009 () Bool)

(assert (=> b!2376306 (= e!1516130 tp!759009)))

(assert (= (and b!2375771 ((_ is ElementMatch!6963) (reg!7292 r!13927))) b!2376304))

(assert (= (and b!2375771 ((_ is Concat!11599) (reg!7292 r!13927))) b!2376305))

(assert (= (and b!2375771 ((_ is Star!6963) (reg!7292 r!13927))) b!2376306))

(assert (= (and b!2375771 ((_ is Union!6963) (reg!7292 r!13927))) b!2376307))

(declare-fun b!2376309 () Bool)

(declare-fun e!1516131 () Bool)

(declare-fun tp!759015 () Bool)

(declare-fun tp!759011 () Bool)

(assert (=> b!2376309 (= e!1516131 (and tp!759015 tp!759011))))

(assert (=> b!2375773 (= tp!758930 e!1516131)))

(declare-fun b!2376311 () Bool)

(declare-fun tp!759013 () Bool)

(declare-fun tp!759012 () Bool)

(assert (=> b!2376311 (= e!1516131 (and tp!759013 tp!759012))))

(declare-fun b!2376308 () Bool)

(assert (=> b!2376308 (= e!1516131 tp_is_empty!11339)))

(declare-fun b!2376310 () Bool)

(declare-fun tp!759014 () Bool)

(assert (=> b!2376310 (= e!1516131 tp!759014)))

(assert (= (and b!2375773 ((_ is ElementMatch!6963) (regOne!14439 r!13927))) b!2376308))

(assert (= (and b!2375773 ((_ is Concat!11599) (regOne!14439 r!13927))) b!2376309))

(assert (= (and b!2375773 ((_ is Star!6963) (regOne!14439 r!13927))) b!2376310))

(assert (= (and b!2375773 ((_ is Union!6963) (regOne!14439 r!13927))) b!2376311))

(declare-fun b!2376313 () Bool)

(declare-fun e!1516132 () Bool)

(declare-fun tp!759020 () Bool)

(declare-fun tp!759016 () Bool)

(assert (=> b!2376313 (= e!1516132 (and tp!759020 tp!759016))))

(assert (=> b!2375773 (= tp!758928 e!1516132)))

(declare-fun b!2376315 () Bool)

(declare-fun tp!759018 () Bool)

(declare-fun tp!759017 () Bool)

(assert (=> b!2376315 (= e!1516132 (and tp!759018 tp!759017))))

(declare-fun b!2376312 () Bool)

(assert (=> b!2376312 (= e!1516132 tp_is_empty!11339)))

(declare-fun b!2376314 () Bool)

(declare-fun tp!759019 () Bool)

(assert (=> b!2376314 (= e!1516132 tp!759019)))

(assert (= (and b!2375773 ((_ is ElementMatch!6963) (regTwo!14439 r!13927))) b!2376312))

(assert (= (and b!2375773 ((_ is Concat!11599) (regTwo!14439 r!13927))) b!2376313))

(assert (= (and b!2375773 ((_ is Star!6963) (regTwo!14439 r!13927))) b!2376314))

(assert (= (and b!2375773 ((_ is Union!6963) (regTwo!14439 r!13927))) b!2376315))

(declare-fun b!2376317 () Bool)

(declare-fun e!1516133 () Bool)

(declare-fun tp!759025 () Bool)

(declare-fun tp!759021 () Bool)

(assert (=> b!2376317 (= e!1516133 (and tp!759025 tp!759021))))

(assert (=> b!2375785 (= tp!758927 e!1516133)))

(declare-fun b!2376319 () Bool)

(declare-fun tp!759023 () Bool)

(declare-fun tp!759022 () Bool)

(assert (=> b!2376319 (= e!1516133 (and tp!759023 tp!759022))))

(declare-fun b!2376316 () Bool)

(assert (=> b!2376316 (= e!1516133 tp_is_empty!11339)))

(declare-fun b!2376318 () Bool)

(declare-fun tp!759024 () Bool)

(assert (=> b!2376318 (= e!1516133 tp!759024)))

(assert (= (and b!2375785 ((_ is ElementMatch!6963) (h!33467 l!9164))) b!2376316))

(assert (= (and b!2375785 ((_ is Concat!11599) (h!33467 l!9164))) b!2376317))

(assert (= (and b!2375785 ((_ is Star!6963) (h!33467 l!9164))) b!2376318))

(assert (= (and b!2375785 ((_ is Union!6963) (h!33467 l!9164))) b!2376319))

(declare-fun b!2376324 () Bool)

(declare-fun e!1516136 () Bool)

(declare-fun tp!759030 () Bool)

(declare-fun tp!759031 () Bool)

(assert (=> b!2376324 (= e!1516136 (and tp!759030 tp!759031))))

(assert (=> b!2375785 (= tp!758932 e!1516136)))

(assert (= (and b!2375785 ((_ is Cons!28066) (t!208141 l!9164))) b!2376324))

(declare-fun b_lambda!74001 () Bool)

(assert (= b_lambda!73999 (or start!233132 b_lambda!74001)))

(declare-fun bs!461580 () Bool)

(declare-fun d!696068 () Bool)

(assert (= bs!461580 (and d!696068 start!233132)))

(assert (=> bs!461580 (= (dynLambda!12084 lambda!88217 (h!33467 l!9164)) (validRegex!2690 (h!33467 l!9164)))))

(declare-fun m!2781881 () Bool)

(assert (=> bs!461580 m!2781881))

(assert (=> b!2376279 d!696068))

(check-sat (not b!2375866) (not b!2375854) (not b!2376182) (not bm!144402) (not b!2375856) (not b!2376187) (not b!2375872) (not b!2376318) (not b!2376310) (not b!2375869) (not bm!144390) (not b!2376314) tp_is_empty!11339 (not bm!144393) (not b!2375948) (not bm!144404) (not b!2376309) (not d!696052) (not b!2376298) (not b!2375873) (not bm!144395) (not b!2376313) (not b!2376083) (not d!696014) (not bm!144389) (not b!2376029) (not d!696064) (not b!2376294) (not b!2376280) (not b!2376031) (not d!696050) (not b!2375861) (not d!696054) (not b!2376319) (not b!2376307) (not b!2376305) (not d!696026) (not b!2376127) (not b!2375867) (not b!2376075) (not b!2376311) (not b!2376042) (not b!2375857) (not d!695996) (not b!2376076) (not b!2375862) (not d!696058) (not b!2376185) (not b!2375952) (not b!2376293) (not b!2376073) (not b!2376189) (not bs!461580) (not b!2376292) (not b!2375863) (not b!2376297) (not b!2376033) (not b!2376041) (not b!2375859) (not b!2376317) (not b!2376315) (not b!2376084) (not d!695992) (not b!2376071) (not d!696004) (not b!2376303) (not b!2376128) (not b!2376324) (not d!696048) (not b_lambda!74001) (not d!696042) (not b!2376112) (not b!2376296) (not b!2376180) (not b!2376034) (not b!2376178) (not b!2376306) (not b!2375864) (not b!2375871))
(check-sat)
