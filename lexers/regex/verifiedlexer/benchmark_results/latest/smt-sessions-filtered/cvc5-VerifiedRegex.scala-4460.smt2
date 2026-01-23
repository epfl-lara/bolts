; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!237046 () Bool)

(assert start!237046)

(declare-fun b!2419763 () Bool)

(declare-fun e!1539590 () Bool)

(declare-fun tp_is_empty!11637 () Bool)

(assert (=> b!2419763 (= e!1539590 tp_is_empty!11637)))

(declare-datatypes ((C!14382 0))(
  ( (C!14383 (val!8433 Int)) )
))
(declare-datatypes ((List!28462 0))(
  ( (Nil!28364) (Cons!28364 (h!33765 C!14382) (t!208439 List!28462)) )
))
(declare-fun call!147801 () List!28462)

(declare-fun s!9460 () List!28462)

(declare-datatypes ((Regex!7112 0))(
  ( (ElementMatch!7112 (c!385700 C!14382)) (Concat!11748 (regOne!14736 Regex!7112) (regTwo!14736 Regex!7112)) (EmptyExpr!7112) (Star!7112 (reg!7441 Regex!7112)) (EmptyLang!7112) (Union!7112 (regOne!14737 Regex!7112) (regTwo!14737 Regex!7112)) )
))
(declare-fun lt!874976 () Regex!7112)

(declare-fun bm!147792 () Bool)

(declare-fun c!385699 () Bool)

(declare-fun lt!874975 () Regex!7112)

(declare-fun call!147798 () Bool)

(declare-fun matchR!3229 (Regex!7112 List!28462) Bool)

(assert (=> bm!147792 (= call!147798 (matchR!3229 (ite c!385699 lt!874975 (Concat!11748 lt!874976 EmptyExpr!7112)) (ite c!385699 s!9460 call!147801)))))

(declare-fun bm!147793 () Bool)

(declare-fun call!147802 () Bool)

(declare-datatypes ((tuple2!28004 0))(
  ( (tuple2!28005 (_1!16543 List!28462) (_2!16543 List!28462)) )
))
(declare-datatypes ((Option!5613 0))(
  ( (None!5612) (Some!5612 (v!31020 tuple2!28004)) )
))
(declare-fun call!147799 () Option!5613)

(declare-fun isDefined!4439 (Option!5613) Bool)

(assert (=> bm!147793 (= call!147802 (isDefined!4439 call!147799))))

(declare-fun bm!147794 () Bool)

(declare-fun call!147800 () Option!5613)

(declare-fun findConcatSeparation!721 (Regex!7112 Regex!7112 List!28462 List!28462 List!28462) Option!5613)

(assert (=> bm!147794 (= call!147800 (findConcatSeparation!721 lt!874976 EmptyExpr!7112 Nil!28364 s!9460 s!9460))))

(declare-fun b!2419764 () Bool)

(declare-fun e!1539587 () Bool)

(assert (=> b!2419764 (= e!1539587 call!147802)))

(declare-fun b!2419765 () Bool)

(declare-fun e!1539589 () Bool)

(declare-fun tp!769166 () Bool)

(assert (=> b!2419765 (= e!1539589 (and tp_is_empty!11637 tp!769166))))

(declare-fun bm!147795 () Bool)

(declare-fun call!147797 () Bool)

(declare-fun lt!874979 () Option!5613)

(assert (=> bm!147795 (= call!147797 (isDefined!4439 (ite c!385699 call!147800 lt!874979)))))

(declare-fun b!2419766 () Bool)

(declare-fun e!1539592 () Bool)

(declare-datatypes ((List!28463 0))(
  ( (Nil!28365) (Cons!28365 (h!33766 Regex!7112) (t!208440 List!28463)) )
))
(declare-fun l!9164 () List!28463)

(declare-fun validRegex!2832 (Regex!7112) Bool)

(assert (=> b!2419766 (= e!1539592 (validRegex!2832 (h!33766 l!9164)))))

(declare-fun lt!874978 () Regex!7112)

(declare-fun generalisedConcat!213 (List!28463) Regex!7112)

(assert (=> b!2419766 (= lt!874978 (generalisedConcat!213 (t!208440 l!9164)))))

(declare-fun b!2419767 () Bool)

(declare-fun res!1027654 () Bool)

(declare-fun e!1539594 () Bool)

(assert (=> b!2419767 (=> (not res!1027654) (not e!1539594))))

(declare-fun r!13927 () Regex!7112)

(assert (=> b!2419767 (= res!1027654 (= r!13927 (generalisedConcat!213 l!9164)))))

(declare-fun b!2419768 () Bool)

(declare-datatypes ((Unit!41531 0))(
  ( (Unit!41532) )
))
(declare-fun e!1539598 () Unit!41531)

(declare-fun Unit!41533 () Unit!41531)

(assert (=> b!2419768 (= e!1539598 Unit!41533)))

(declare-fun lt!874967 () Unit!41531)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!87 (Regex!7112 Regex!7112 List!28462 List!28462) Unit!41531)

(assert (=> b!2419768 (= lt!874967 (lemmaTwoRegexMatchThenConcatMatchesConcatString!87 lt!874976 EmptyExpr!7112 s!9460 Nil!28364))))

(assert (=> b!2419768 (= lt!874975 (Concat!11748 lt!874976 EmptyExpr!7112))))

(declare-fun res!1027660 () Bool)

(assert (=> b!2419768 (= res!1027660 (matchR!3229 lt!874975 call!147801))))

(declare-fun e!1539600 () Bool)

(assert (=> b!2419768 (=> (not res!1027660) (not e!1539600))))

(assert (=> b!2419768 e!1539600))

(declare-fun lt!874971 () Unit!41531)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!61 (Regex!7112 Regex!7112 List!28462) Unit!41531)

(assert (=> b!2419768 (= lt!874971 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!61 lt!874976 EmptyExpr!7112 s!9460))))

(declare-fun res!1027662 () Bool)

(assert (=> b!2419768 (= res!1027662 call!147797)))

(assert (=> b!2419768 (=> (not res!1027662) (not e!1539587))))

(assert (=> b!2419768 e!1539587))

(declare-fun b!2419769 () Bool)

(declare-fun e!1539597 () Bool)

(assert (=> b!2419769 e!1539597))

(declare-fun res!1027653 () Bool)

(assert (=> b!2419769 (=> (not res!1027653) (not e!1539597))))

(assert (=> b!2419769 (= res!1027653 call!147798)))

(declare-fun lt!874969 () Unit!41531)

(declare-fun lt!874970 () tuple2!28004)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!61 (Regex!7112 Regex!7112 List!28462 List!28462 List!28462) Unit!41531)

(assert (=> b!2419769 (= lt!874969 (lemmaFindSeparationIsDefinedThenConcatMatches!61 lt!874976 EmptyExpr!7112 (_1!16543 lt!874970) (_2!16543 lt!874970) s!9460))))

(declare-fun get!8721 (Option!5613) tuple2!28004)

(assert (=> b!2419769 (= lt!874970 (get!8721 lt!874979))))

(declare-fun e!1539596 () Unit!41531)

(declare-fun Unit!41534 () Unit!41531)

(assert (=> b!2419769 (= e!1539596 Unit!41534)))

(declare-fun b!2419770 () Bool)

(declare-fun tp!769169 () Bool)

(declare-fun tp!769167 () Bool)

(assert (=> b!2419770 (= e!1539590 (and tp!769169 tp!769167))))

(declare-fun b!2419771 () Bool)

(declare-fun Unit!41535 () Unit!41531)

(assert (=> b!2419771 (= e!1539596 Unit!41535)))

(declare-fun b!2419772 () Bool)

(declare-fun e!1539595 () Bool)

(declare-fun tp!769173 () Bool)

(declare-fun tp!769168 () Bool)

(assert (=> b!2419772 (= e!1539595 (and tp!769173 tp!769168))))

(declare-fun lt!874980 () Regex!7112)

(declare-fun bm!147796 () Bool)

(assert (=> bm!147796 (= call!147799 (findConcatSeparation!721 lt!874976 lt!874980 Nil!28364 s!9460 s!9460))))

(declare-fun b!2419773 () Bool)

(declare-fun e!1539593 () Bool)

(declare-fun e!1539599 () Bool)

(assert (=> b!2419773 (= e!1539593 e!1539599)))

(declare-fun res!1027658 () Bool)

(assert (=> b!2419773 (=> res!1027658 e!1539599)))

(assert (=> b!2419773 (= res!1027658 (not (= lt!874980 EmptyExpr!7112)))))

(declare-fun lt!874968 () List!28463)

(assert (=> b!2419773 (= lt!874980 (generalisedConcat!213 lt!874968))))

(declare-fun b!2419774 () Bool)

(declare-fun e!1539591 () Bool)

(assert (=> b!2419774 (= e!1539591 e!1539593)))

(declare-fun res!1027657 () Bool)

(assert (=> b!2419774 (=> res!1027657 e!1539593)))

(declare-fun isEmpty!16382 (List!28463) Bool)

(assert (=> b!2419774 (= res!1027657 (not (isEmpty!16382 lt!874968)))))

(declare-fun tail!3708 (List!28463) List!28463)

(assert (=> b!2419774 (= lt!874968 (tail!3708 l!9164))))

(declare-fun b!2419775 () Bool)

(declare-fun Unit!41536 () Unit!41531)

(assert (=> b!2419775 (= e!1539598 Unit!41536)))

(assert (=> b!2419775 (= lt!874979 call!147800)))

(declare-fun lt!874972 () Bool)

(assert (=> b!2419775 (= lt!874972 call!147797)))

(declare-fun c!385698 () Bool)

(assert (=> b!2419775 (= c!385698 lt!874972)))

(declare-fun lt!874974 () Unit!41531)

(assert (=> b!2419775 (= lt!874974 e!1539596)))

(declare-fun res!1027661 () Bool)

(assert (=> b!2419775 (= res!1027661 (not lt!874972))))

(declare-fun e!1539588 () Bool)

(assert (=> b!2419775 (=> (not res!1027661) (not e!1539588))))

(assert (=> b!2419775 e!1539588))

(declare-fun res!1027663 () Bool)

(assert (=> start!237046 (=> (not res!1027663) (not e!1539594))))

(declare-fun lambda!91140 () Int)

(declare-fun forall!5746 (List!28463 Int) Bool)

(assert (=> start!237046 (= res!1027663 (forall!5746 l!9164 lambda!91140))))

(assert (=> start!237046 e!1539594))

(assert (=> start!237046 e!1539595))

(assert (=> start!237046 e!1539590))

(assert (=> start!237046 e!1539589))

(declare-fun b!2419776 () Bool)

(declare-fun res!1027655 () Bool)

(assert (=> b!2419776 (=> res!1027655 e!1539591)))

(assert (=> b!2419776 (= res!1027655 (isEmpty!16382 l!9164))))

(declare-fun b!2419777 () Bool)

(assert (=> b!2419777 (= e!1539588 (not call!147802))))

(declare-fun b!2419778 () Bool)

(declare-fun tp!769172 () Bool)

(assert (=> b!2419778 (= e!1539590 tp!769172)))

(declare-fun b!2419779 () Bool)

(declare-fun tp!769170 () Bool)

(declare-fun tp!769171 () Bool)

(assert (=> b!2419779 (= e!1539590 (and tp!769170 tp!769171))))

(declare-fun b!2419780 () Bool)

(assert (=> b!2419780 (= e!1539599 e!1539592)))

(declare-fun res!1027659 () Bool)

(assert (=> b!2419780 (=> res!1027659 e!1539592)))

(assert (=> b!2419780 (= res!1027659 (not (is-Cons!28365 l!9164)))))

(declare-fun lt!874977 () Unit!41531)

(assert (=> b!2419780 (= lt!874977 e!1539598)))

(assert (=> b!2419780 (= c!385699 (matchR!3229 lt!874976 s!9460))))

(declare-fun head!5436 (List!28463) Regex!7112)

(assert (=> b!2419780 (= lt!874976 (head!5436 l!9164))))

(declare-fun b!2419781 () Bool)

(assert (=> b!2419781 (= e!1539600 call!147798)))

(declare-fun b!2419782 () Bool)

(assert (=> b!2419782 (= e!1539597 false)))

(declare-fun bm!147797 () Bool)

(declare-fun ++!7033 (List!28462 List!28462) List!28462)

(assert (=> bm!147797 (= call!147801 (++!7033 (ite c!385699 s!9460 (_1!16543 lt!874970)) (ite c!385699 Nil!28364 (_2!16543 lt!874970))))))

(declare-fun b!2419783 () Bool)

(assert (=> b!2419783 (= e!1539594 (not e!1539591))))

(declare-fun res!1027656 () Bool)

(assert (=> b!2419783 (=> res!1027656 e!1539591)))

(assert (=> b!2419783 (= res!1027656 (or (is-Concat!11748 r!13927) (is-EmptyExpr!7112 r!13927)))))

(declare-fun matchRSpec!961 (Regex!7112 List!28462) Bool)

(assert (=> b!2419783 (= (matchR!3229 r!13927 s!9460) (matchRSpec!961 r!13927 s!9460))))

(declare-fun lt!874973 () Unit!41531)

(declare-fun mainMatchTheorem!961 (Regex!7112 List!28462) Unit!41531)

(assert (=> b!2419783 (= lt!874973 (mainMatchTheorem!961 r!13927 s!9460))))

(assert (= (and start!237046 res!1027663) b!2419767))

(assert (= (and b!2419767 res!1027654) b!2419783))

(assert (= (and b!2419783 (not res!1027656)) b!2419776))

(assert (= (and b!2419776 (not res!1027655)) b!2419774))

(assert (= (and b!2419774 (not res!1027657)) b!2419773))

(assert (= (and b!2419773 (not res!1027658)) b!2419780))

(assert (= (and b!2419780 c!385699) b!2419768))

(assert (= (and b!2419780 (not c!385699)) b!2419775))

(assert (= (and b!2419768 res!1027660) b!2419781))

(assert (= (and b!2419768 res!1027662) b!2419764))

(assert (= (and b!2419775 c!385698) b!2419769))

(assert (= (and b!2419775 (not c!385698)) b!2419771))

(assert (= (and b!2419769 res!1027653) b!2419782))

(assert (= (and b!2419775 res!1027661) b!2419777))

(assert (= (or b!2419768 b!2419775) bm!147794))

(assert (= (or b!2419764 b!2419777) bm!147796))

(assert (= (or b!2419768 b!2419769) bm!147797))

(assert (= (or b!2419768 b!2419775) bm!147795))

(assert (= (or b!2419781 b!2419769) bm!147792))

(assert (= (or b!2419764 b!2419777) bm!147793))

(assert (= (and b!2419780 (not res!1027659)) b!2419766))

(assert (= (and start!237046 (is-Cons!28365 l!9164)) b!2419772))

(assert (= (and start!237046 (is-ElementMatch!7112 r!13927)) b!2419763))

(assert (= (and start!237046 (is-Concat!11748 r!13927)) b!2419770))

(assert (= (and start!237046 (is-Star!7112 r!13927)) b!2419778))

(assert (= (and start!237046 (is-Union!7112 r!13927)) b!2419779))

(assert (= (and start!237046 (is-Cons!28364 s!9460)) b!2419765))

(declare-fun m!2806929 () Bool)

(assert (=> start!237046 m!2806929))

(declare-fun m!2806931 () Bool)

(assert (=> bm!147795 m!2806931))

(declare-fun m!2806933 () Bool)

(assert (=> b!2419783 m!2806933))

(declare-fun m!2806935 () Bool)

(assert (=> b!2419783 m!2806935))

(declare-fun m!2806937 () Bool)

(assert (=> b!2419783 m!2806937))

(declare-fun m!2806939 () Bool)

(assert (=> b!2419766 m!2806939))

(declare-fun m!2806941 () Bool)

(assert (=> b!2419766 m!2806941))

(declare-fun m!2806943 () Bool)

(assert (=> bm!147792 m!2806943))

(declare-fun m!2806945 () Bool)

(assert (=> b!2419767 m!2806945))

(declare-fun m!2806947 () Bool)

(assert (=> bm!147796 m!2806947))

(declare-fun m!2806949 () Bool)

(assert (=> b!2419769 m!2806949))

(declare-fun m!2806951 () Bool)

(assert (=> b!2419769 m!2806951))

(declare-fun m!2806953 () Bool)

(assert (=> bm!147797 m!2806953))

(declare-fun m!2806955 () Bool)

(assert (=> b!2419768 m!2806955))

(declare-fun m!2806957 () Bool)

(assert (=> b!2419768 m!2806957))

(declare-fun m!2806959 () Bool)

(assert (=> b!2419768 m!2806959))

(declare-fun m!2806961 () Bool)

(assert (=> b!2419774 m!2806961))

(declare-fun m!2806963 () Bool)

(assert (=> b!2419774 m!2806963))

(declare-fun m!2806965 () Bool)

(assert (=> bm!147794 m!2806965))

(declare-fun m!2806967 () Bool)

(assert (=> bm!147793 m!2806967))

(declare-fun m!2806969 () Bool)

(assert (=> b!2419776 m!2806969))

(declare-fun m!2806971 () Bool)

(assert (=> b!2419780 m!2806971))

(declare-fun m!2806973 () Bool)

(assert (=> b!2419780 m!2806973))

(declare-fun m!2806975 () Bool)

(assert (=> b!2419773 m!2806975))

(push 1)

(assert (not start!237046))

(assert (not b!2419769))

(assert (not b!2419776))

(assert (not b!2419783))

(assert (not bm!147794))

(assert (not b!2419765))

(assert (not b!2419770))

(assert tp_is_empty!11637)

(assert (not bm!147793))

(assert (not b!2419767))

(assert (not b!2419779))

(assert (not bm!147792))

(assert (not b!2419774))

(assert (not b!2419768))

(assert (not bm!147797))

(assert (not b!2419772))

(assert (not bm!147796))

(assert (not b!2419766))

(assert (not bm!147795))

(assert (not b!2419780))

(assert (not b!2419778))

(assert (not b!2419773))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!463685 () Bool)

(declare-fun d!701681 () Bool)

(assert (= bs!463685 (and d!701681 start!237046)))

(declare-fun lambda!91146 () Int)

(assert (=> bs!463685 (= lambda!91146 lambda!91140)))

(declare-fun b!2419867 () Bool)

(declare-fun e!1539655 () Bool)

(declare-fun e!1539659 () Bool)

(assert (=> b!2419867 (= e!1539655 e!1539659)))

(declare-fun c!385718 () Bool)

(assert (=> b!2419867 (= c!385718 (isEmpty!16382 (tail!3708 l!9164)))))

(declare-fun b!2419868 () Bool)

(declare-fun e!1539656 () Bool)

(assert (=> b!2419868 (= e!1539656 e!1539655)))

(declare-fun c!385719 () Bool)

(assert (=> b!2419868 (= c!385719 (isEmpty!16382 l!9164))))

(declare-fun b!2419869 () Bool)

(declare-fun e!1539657 () Bool)

(assert (=> b!2419869 (= e!1539657 (isEmpty!16382 (t!208440 l!9164)))))

(declare-fun b!2419870 () Bool)

(declare-fun e!1539660 () Regex!7112)

(assert (=> b!2419870 (= e!1539660 (h!33766 l!9164))))

(declare-fun b!2419871 () Bool)

(declare-fun lt!875025 () Regex!7112)

(declare-fun isEmptyExpr!167 (Regex!7112) Bool)

(assert (=> b!2419871 (= e!1539655 (isEmptyExpr!167 lt!875025))))

(assert (=> d!701681 e!1539656))

(declare-fun res!1027702 () Bool)

(assert (=> d!701681 (=> (not res!1027702) (not e!1539656))))

(assert (=> d!701681 (= res!1027702 (validRegex!2832 lt!875025))))

(assert (=> d!701681 (= lt!875025 e!1539660)))

(declare-fun c!385717 () Bool)

(assert (=> d!701681 (= c!385717 e!1539657)))

(declare-fun res!1027701 () Bool)

(assert (=> d!701681 (=> (not res!1027701) (not e!1539657))))

(assert (=> d!701681 (= res!1027701 (is-Cons!28365 l!9164))))

(assert (=> d!701681 (forall!5746 l!9164 lambda!91146)))

(assert (=> d!701681 (= (generalisedConcat!213 l!9164) lt!875025)))

(declare-fun b!2419872 () Bool)

(declare-fun e!1539658 () Regex!7112)

(assert (=> b!2419872 (= e!1539658 (Concat!11748 (h!33766 l!9164) (generalisedConcat!213 (t!208440 l!9164))))))

(declare-fun b!2419873 () Bool)

(assert (=> b!2419873 (= e!1539658 EmptyExpr!7112)))

(declare-fun b!2419874 () Bool)

(assert (=> b!2419874 (= e!1539660 e!1539658)))

(declare-fun c!385716 () Bool)

(assert (=> b!2419874 (= c!385716 (is-Cons!28365 l!9164))))

(declare-fun b!2419875 () Bool)

(declare-fun isConcat!167 (Regex!7112) Bool)

(assert (=> b!2419875 (= e!1539659 (isConcat!167 lt!875025))))

(declare-fun b!2419876 () Bool)

(assert (=> b!2419876 (= e!1539659 (= lt!875025 (head!5436 l!9164)))))

(assert (= (and d!701681 res!1027701) b!2419869))

(assert (= (and d!701681 c!385717) b!2419870))

(assert (= (and d!701681 (not c!385717)) b!2419874))

(assert (= (and b!2419874 c!385716) b!2419872))

(assert (= (and b!2419874 (not c!385716)) b!2419873))

(assert (= (and d!701681 res!1027702) b!2419868))

(assert (= (and b!2419868 c!385719) b!2419871))

(assert (= (and b!2419868 (not c!385719)) b!2419867))

(assert (= (and b!2419867 c!385718) b!2419876))

(assert (= (and b!2419867 (not c!385718)) b!2419875))

(assert (=> b!2419872 m!2806941))

(declare-fun m!2807025 () Bool)

(assert (=> b!2419871 m!2807025))

(declare-fun m!2807027 () Bool)

(assert (=> b!2419875 m!2807027))

(declare-fun m!2807029 () Bool)

(assert (=> d!701681 m!2807029))

(declare-fun m!2807031 () Bool)

(assert (=> d!701681 m!2807031))

(declare-fun m!2807033 () Bool)

(assert (=> b!2419869 m!2807033))

(assert (=> b!2419876 m!2806973))

(assert (=> b!2419868 m!2806969))

(assert (=> b!2419867 m!2806963))

(assert (=> b!2419867 m!2806963))

(declare-fun m!2807035 () Bool)

(assert (=> b!2419867 m!2807035))

(assert (=> b!2419767 d!701681))

(declare-fun d!701683 () Bool)

(assert (=> d!701683 (matchR!3229 (Concat!11748 lt!874976 EmptyExpr!7112) (++!7033 s!9460 Nil!28364))))

(declare-fun lt!875028 () Unit!41531)

(declare-fun choose!14314 (Regex!7112 Regex!7112 List!28462 List!28462) Unit!41531)

(assert (=> d!701683 (= lt!875028 (choose!14314 lt!874976 EmptyExpr!7112 s!9460 Nil!28364))))

(declare-fun e!1539663 () Bool)

(assert (=> d!701683 e!1539663))

(declare-fun res!1027705 () Bool)

(assert (=> d!701683 (=> (not res!1027705) (not e!1539663))))

(assert (=> d!701683 (= res!1027705 (validRegex!2832 lt!874976))))

(assert (=> d!701683 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!87 lt!874976 EmptyExpr!7112 s!9460 Nil!28364) lt!875028)))

(declare-fun b!2419879 () Bool)

(assert (=> b!2419879 (= e!1539663 (validRegex!2832 EmptyExpr!7112))))

(assert (= (and d!701683 res!1027705) b!2419879))

(declare-fun m!2807037 () Bool)

(assert (=> d!701683 m!2807037))

(assert (=> d!701683 m!2807037))

(declare-fun m!2807039 () Bool)

(assert (=> d!701683 m!2807039))

(declare-fun m!2807041 () Bool)

(assert (=> d!701683 m!2807041))

(declare-fun m!2807043 () Bool)

(assert (=> d!701683 m!2807043))

(declare-fun m!2807045 () Bool)

(assert (=> b!2419879 m!2807045))

(assert (=> b!2419768 d!701683))

(declare-fun b!2419920 () Bool)

(declare-fun res!1027733 () Bool)

(declare-fun e!1539685 () Bool)

(assert (=> b!2419920 (=> res!1027733 e!1539685)))

(declare-fun isEmpty!16384 (List!28462) Bool)

(declare-fun tail!3710 (List!28462) List!28462)

(assert (=> b!2419920 (= res!1027733 (not (isEmpty!16384 (tail!3710 call!147801))))))

(declare-fun bm!147818 () Bool)

(declare-fun call!147823 () Bool)

(assert (=> bm!147818 (= call!147823 (isEmpty!16384 call!147801))))

(declare-fun b!2419921 () Bool)

(declare-fun e!1539688 () Bool)

(declare-fun e!1539689 () Bool)

(assert (=> b!2419921 (= e!1539688 e!1539689)))

(declare-fun c!385731 () Bool)

(assert (=> b!2419921 (= c!385731 (is-EmptyLang!7112 lt!874975))))

(declare-fun b!2419922 () Bool)

(declare-fun e!1539690 () Bool)

(declare-fun e!1539684 () Bool)

(assert (=> b!2419922 (= e!1539690 e!1539684)))

(declare-fun res!1027731 () Bool)

(assert (=> b!2419922 (=> (not res!1027731) (not e!1539684))))

(declare-fun lt!875034 () Bool)

(assert (=> b!2419922 (= res!1027731 (not lt!875034))))

(declare-fun b!2419923 () Bool)

(assert (=> b!2419923 (= e!1539684 e!1539685)))

(declare-fun res!1027728 () Bool)

(assert (=> b!2419923 (=> res!1027728 e!1539685)))

(assert (=> b!2419923 (= res!1027728 call!147823)))

(declare-fun b!2419924 () Bool)

(declare-fun res!1027735 () Bool)

(assert (=> b!2419924 (=> res!1027735 e!1539690)))

(assert (=> b!2419924 (= res!1027735 (not (is-ElementMatch!7112 lt!874975)))))

(assert (=> b!2419924 (= e!1539689 e!1539690)))

(declare-fun b!2419925 () Bool)

(declare-fun res!1027730 () Bool)

(declare-fun e!1539687 () Bool)

(assert (=> b!2419925 (=> (not res!1027730) (not e!1539687))))

(assert (=> b!2419925 (= res!1027730 (not call!147823))))

(declare-fun b!2419926 () Bool)

(assert (=> b!2419926 (= e!1539689 (not lt!875034))))

(declare-fun b!2419927 () Bool)

(declare-fun res!1027729 () Bool)

(assert (=> b!2419927 (=> (not res!1027729) (not e!1539687))))

(assert (=> b!2419927 (= res!1027729 (isEmpty!16384 (tail!3710 call!147801)))))

(declare-fun d!701687 () Bool)

(assert (=> d!701687 e!1539688))

(declare-fun c!385729 () Bool)

(assert (=> d!701687 (= c!385729 (is-EmptyExpr!7112 lt!874975))))

(declare-fun e!1539686 () Bool)

(assert (=> d!701687 (= lt!875034 e!1539686)))

(declare-fun c!385730 () Bool)

(assert (=> d!701687 (= c!385730 (isEmpty!16384 call!147801))))

(assert (=> d!701687 (validRegex!2832 lt!874975)))

(assert (=> d!701687 (= (matchR!3229 lt!874975 call!147801) lt!875034)))

(declare-fun b!2419928 () Bool)

(declare-fun derivativeStep!1804 (Regex!7112 C!14382) Regex!7112)

(declare-fun head!5438 (List!28462) C!14382)

(assert (=> b!2419928 (= e!1539686 (matchR!3229 (derivativeStep!1804 lt!874975 (head!5438 call!147801)) (tail!3710 call!147801)))))

(declare-fun b!2419929 () Bool)

(declare-fun res!1027732 () Bool)

(assert (=> b!2419929 (=> res!1027732 e!1539690)))

(assert (=> b!2419929 (= res!1027732 e!1539687)))

(declare-fun res!1027734 () Bool)

(assert (=> b!2419929 (=> (not res!1027734) (not e!1539687))))

(assert (=> b!2419929 (= res!1027734 lt!875034)))

(declare-fun b!2419930 () Bool)

(assert (=> b!2419930 (= e!1539685 (not (= (head!5438 call!147801) (c!385700 lt!874975))))))

(declare-fun b!2419931 () Bool)

(declare-fun nullable!2147 (Regex!7112) Bool)

(assert (=> b!2419931 (= e!1539686 (nullable!2147 lt!874975))))

(declare-fun b!2419932 () Bool)

(assert (=> b!2419932 (= e!1539688 (= lt!875034 call!147823))))

(declare-fun b!2419933 () Bool)

(assert (=> b!2419933 (= e!1539687 (= (head!5438 call!147801) (c!385700 lt!874975)))))

(assert (= (and d!701687 c!385730) b!2419931))

(assert (= (and d!701687 (not c!385730)) b!2419928))

(assert (= (and d!701687 c!385729) b!2419932))

(assert (= (and d!701687 (not c!385729)) b!2419921))

(assert (= (and b!2419921 c!385731) b!2419926))

(assert (= (and b!2419921 (not c!385731)) b!2419924))

(assert (= (and b!2419924 (not res!1027735)) b!2419929))

(assert (= (and b!2419929 res!1027734) b!2419925))

(assert (= (and b!2419925 res!1027730) b!2419927))

(assert (= (and b!2419927 res!1027729) b!2419933))

(assert (= (and b!2419929 (not res!1027732)) b!2419922))

(assert (= (and b!2419922 res!1027731) b!2419923))

(assert (= (and b!2419923 (not res!1027728)) b!2419920))

(assert (= (and b!2419920 (not res!1027733)) b!2419930))

(assert (= (or b!2419932 b!2419923 b!2419925) bm!147818))

(declare-fun m!2807061 () Bool)

(assert (=> b!2419927 m!2807061))

(assert (=> b!2419927 m!2807061))

(declare-fun m!2807063 () Bool)

(assert (=> b!2419927 m!2807063))

(declare-fun m!2807065 () Bool)

(assert (=> b!2419930 m!2807065))

(declare-fun m!2807067 () Bool)

(assert (=> b!2419931 m!2807067))

(assert (=> b!2419920 m!2807061))

(assert (=> b!2419920 m!2807061))

(assert (=> b!2419920 m!2807063))

(assert (=> b!2419928 m!2807065))

(assert (=> b!2419928 m!2807065))

(declare-fun m!2807069 () Bool)

(assert (=> b!2419928 m!2807069))

(assert (=> b!2419928 m!2807061))

(assert (=> b!2419928 m!2807069))

(assert (=> b!2419928 m!2807061))

(declare-fun m!2807071 () Bool)

(assert (=> b!2419928 m!2807071))

(declare-fun m!2807073 () Bool)

(assert (=> d!701687 m!2807073))

(declare-fun m!2807075 () Bool)

(assert (=> d!701687 m!2807075))

(assert (=> bm!147818 m!2807073))

(assert (=> b!2419933 m!2807065))

(assert (=> b!2419768 d!701687))

(declare-fun d!701693 () Bool)

(assert (=> d!701693 (isDefined!4439 (findConcatSeparation!721 lt!874976 EmptyExpr!7112 Nil!28364 s!9460 s!9460))))

(declare-fun lt!875037 () Unit!41531)

(declare-fun choose!14315 (Regex!7112 Regex!7112 List!28462) Unit!41531)

(assert (=> d!701693 (= lt!875037 (choose!14315 lt!874976 EmptyExpr!7112 s!9460))))

(assert (=> d!701693 (validRegex!2832 lt!874976)))

(assert (=> d!701693 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!61 lt!874976 EmptyExpr!7112 s!9460) lt!875037)))

(declare-fun bs!463686 () Bool)

(assert (= bs!463686 d!701693))

(assert (=> bs!463686 m!2806965))

(assert (=> bs!463686 m!2806965))

(declare-fun m!2807081 () Bool)

(assert (=> bs!463686 m!2807081))

(declare-fun m!2807083 () Bool)

(assert (=> bs!463686 m!2807083))

(assert (=> bs!463686 m!2807043))

(assert (=> b!2419768 d!701693))

(declare-fun d!701697 () Bool)

(assert (=> d!701697 (matchR!3229 (Concat!11748 lt!874976 EmptyExpr!7112) (++!7033 (_1!16543 lt!874970) (_2!16543 lt!874970)))))

(declare-fun lt!875040 () Unit!41531)

(declare-fun choose!14316 (Regex!7112 Regex!7112 List!28462 List!28462 List!28462) Unit!41531)

(assert (=> d!701697 (= lt!875040 (choose!14316 lt!874976 EmptyExpr!7112 (_1!16543 lt!874970) (_2!16543 lt!874970) s!9460))))

(assert (=> d!701697 (validRegex!2832 lt!874976)))

(assert (=> d!701697 (= (lemmaFindSeparationIsDefinedThenConcatMatches!61 lt!874976 EmptyExpr!7112 (_1!16543 lt!874970) (_2!16543 lt!874970) s!9460) lt!875040)))

(declare-fun bs!463688 () Bool)

(assert (= bs!463688 d!701697))

(declare-fun m!2807087 () Bool)

(assert (=> bs!463688 m!2807087))

(assert (=> bs!463688 m!2807087))

(declare-fun m!2807089 () Bool)

(assert (=> bs!463688 m!2807089))

(declare-fun m!2807091 () Bool)

(assert (=> bs!463688 m!2807091))

(assert (=> bs!463688 m!2807043))

(assert (=> b!2419769 d!701697))

(declare-fun d!701701 () Bool)

(assert (=> d!701701 (= (get!8721 lt!874979) (v!31020 lt!874979))))

(assert (=> b!2419769 d!701701))

(declare-fun d!701703 () Bool)

(assert (=> d!701703 (= (isEmpty!16382 lt!874968) (is-Nil!28365 lt!874968))))

(assert (=> b!2419774 d!701703))

(declare-fun d!701705 () Bool)

(assert (=> d!701705 (= (tail!3708 l!9164) (t!208440 l!9164))))

(assert (=> b!2419774 d!701705))

(declare-fun d!701707 () Bool)

(declare-fun isEmpty!16385 (Option!5613) Bool)

(assert (=> d!701707 (= (isDefined!4439 (ite c!385699 call!147800 lt!874979)) (not (isEmpty!16385 (ite c!385699 call!147800 lt!874979))))))

(declare-fun bs!463689 () Bool)

(assert (= bs!463689 d!701707))

(declare-fun m!2807093 () Bool)

(assert (=> bs!463689 m!2807093))

(assert (=> bm!147795 d!701707))

(declare-fun d!701709 () Bool)

(assert (=> d!701709 (= (isEmpty!16382 l!9164) (is-Nil!28365 l!9164))))

(assert (=> b!2419776 d!701709))

(declare-fun b!2419958 () Bool)

(declare-fun e!1539711 () Bool)

(declare-fun e!1539714 () Bool)

(assert (=> b!2419958 (= e!1539711 e!1539714)))

(declare-fun res!1027755 () Bool)

(assert (=> b!2419958 (= res!1027755 (not (nullable!2147 (reg!7441 (h!33766 l!9164)))))))

(assert (=> b!2419958 (=> (not res!1027755) (not e!1539714))))

(declare-fun b!2419959 () Bool)

(declare-fun res!1027756 () Bool)

(declare-fun e!1539715 () Bool)

(assert (=> b!2419959 (=> res!1027756 e!1539715)))

(assert (=> b!2419959 (= res!1027756 (not (is-Concat!11748 (h!33766 l!9164))))))

(declare-fun e!1539712 () Bool)

(assert (=> b!2419959 (= e!1539712 e!1539715)))

(declare-fun bm!147825 () Bool)

(declare-fun call!147832 () Bool)

(declare-fun call!147830 () Bool)

(assert (=> bm!147825 (= call!147832 call!147830)))

(declare-fun b!2419960 () Bool)

(assert (=> b!2419960 (= e!1539711 e!1539712)))

(declare-fun c!385737 () Bool)

(assert (=> b!2419960 (= c!385737 (is-Union!7112 (h!33766 l!9164)))))

(declare-fun b!2419962 () Bool)

(declare-fun e!1539716 () Bool)

(assert (=> b!2419962 (= e!1539715 e!1539716)))

(declare-fun res!1027752 () Bool)

(assert (=> b!2419962 (=> (not res!1027752) (not e!1539716))))

(declare-fun call!147831 () Bool)

(assert (=> b!2419962 (= res!1027752 call!147831)))

(declare-fun bm!147826 () Bool)

(declare-fun c!385736 () Bool)

(assert (=> bm!147826 (= call!147830 (validRegex!2832 (ite c!385736 (reg!7441 (h!33766 l!9164)) (ite c!385737 (regOne!14737 (h!33766 l!9164)) (regTwo!14736 (h!33766 l!9164))))))))

(declare-fun b!2419963 () Bool)

(declare-fun e!1539717 () Bool)

(assert (=> b!2419963 (= e!1539717 call!147831)))

(declare-fun b!2419964 () Bool)

(assert (=> b!2419964 (= e!1539716 call!147832)))

(declare-fun b!2419961 () Bool)

(declare-fun e!1539713 () Bool)

(assert (=> b!2419961 (= e!1539713 e!1539711)))

(assert (=> b!2419961 (= c!385736 (is-Star!7112 (h!33766 l!9164)))))

(declare-fun d!701711 () Bool)

(declare-fun res!1027753 () Bool)

(assert (=> d!701711 (=> res!1027753 e!1539713)))

(assert (=> d!701711 (= res!1027753 (is-ElementMatch!7112 (h!33766 l!9164)))))

(assert (=> d!701711 (= (validRegex!2832 (h!33766 l!9164)) e!1539713)))

(declare-fun b!2419965 () Bool)

(assert (=> b!2419965 (= e!1539714 call!147830)))

(declare-fun bm!147827 () Bool)

(assert (=> bm!147827 (= call!147831 (validRegex!2832 (ite c!385737 (regTwo!14737 (h!33766 l!9164)) (regOne!14736 (h!33766 l!9164)))))))

(declare-fun b!2419966 () Bool)

(declare-fun res!1027754 () Bool)

(assert (=> b!2419966 (=> (not res!1027754) (not e!1539717))))

(assert (=> b!2419966 (= res!1027754 call!147832)))

(assert (=> b!2419966 (= e!1539712 e!1539717)))

(assert (= (and d!701711 (not res!1027753)) b!2419961))

(assert (= (and b!2419961 c!385736) b!2419958))

(assert (= (and b!2419961 (not c!385736)) b!2419960))

(assert (= (and b!2419958 res!1027755) b!2419965))

(assert (= (and b!2419960 c!385737) b!2419966))

(assert (= (and b!2419960 (not c!385737)) b!2419959))

(assert (= (and b!2419966 res!1027754) b!2419963))

(assert (= (and b!2419959 (not res!1027756)) b!2419962))

(assert (= (and b!2419962 res!1027752) b!2419964))

(assert (= (or b!2419966 b!2419964) bm!147825))

(assert (= (or b!2419963 b!2419962) bm!147827))

(assert (= (or b!2419965 bm!147825) bm!147826))

(declare-fun m!2807095 () Bool)

(assert (=> b!2419958 m!2807095))

(declare-fun m!2807097 () Bool)

(assert (=> bm!147826 m!2807097))

(declare-fun m!2807099 () Bool)

(assert (=> bm!147827 m!2807099))

(assert (=> b!2419766 d!701711))

(declare-fun bs!463690 () Bool)

(declare-fun d!701713 () Bool)

(assert (= bs!463690 (and d!701713 start!237046)))

(declare-fun lambda!91147 () Int)

(assert (=> bs!463690 (= lambda!91147 lambda!91140)))

(declare-fun bs!463691 () Bool)

(assert (= bs!463691 (and d!701713 d!701681)))

(assert (=> bs!463691 (= lambda!91147 lambda!91146)))

(declare-fun b!2419967 () Bool)

(declare-fun e!1539718 () Bool)

(declare-fun e!1539722 () Bool)

(assert (=> b!2419967 (= e!1539718 e!1539722)))

(declare-fun c!385740 () Bool)

(assert (=> b!2419967 (= c!385740 (isEmpty!16382 (tail!3708 (t!208440 l!9164))))))

(declare-fun b!2419968 () Bool)

(declare-fun e!1539719 () Bool)

(assert (=> b!2419968 (= e!1539719 e!1539718)))

(declare-fun c!385741 () Bool)

(assert (=> b!2419968 (= c!385741 (isEmpty!16382 (t!208440 l!9164)))))

(declare-fun b!2419969 () Bool)

(declare-fun e!1539720 () Bool)

(assert (=> b!2419969 (= e!1539720 (isEmpty!16382 (t!208440 (t!208440 l!9164))))))

(declare-fun b!2419970 () Bool)

(declare-fun e!1539723 () Regex!7112)

(assert (=> b!2419970 (= e!1539723 (h!33766 (t!208440 l!9164)))))

(declare-fun b!2419971 () Bool)

(declare-fun lt!875041 () Regex!7112)

(assert (=> b!2419971 (= e!1539718 (isEmptyExpr!167 lt!875041))))

(assert (=> d!701713 e!1539719))

(declare-fun res!1027758 () Bool)

(assert (=> d!701713 (=> (not res!1027758) (not e!1539719))))

(assert (=> d!701713 (= res!1027758 (validRegex!2832 lt!875041))))

(assert (=> d!701713 (= lt!875041 e!1539723)))

(declare-fun c!385739 () Bool)

(assert (=> d!701713 (= c!385739 e!1539720)))

(declare-fun res!1027757 () Bool)

(assert (=> d!701713 (=> (not res!1027757) (not e!1539720))))

(assert (=> d!701713 (= res!1027757 (is-Cons!28365 (t!208440 l!9164)))))

(assert (=> d!701713 (forall!5746 (t!208440 l!9164) lambda!91147)))

(assert (=> d!701713 (= (generalisedConcat!213 (t!208440 l!9164)) lt!875041)))

(declare-fun b!2419972 () Bool)

(declare-fun e!1539721 () Regex!7112)

(assert (=> b!2419972 (= e!1539721 (Concat!11748 (h!33766 (t!208440 l!9164)) (generalisedConcat!213 (t!208440 (t!208440 l!9164)))))))

(declare-fun b!2419973 () Bool)

(assert (=> b!2419973 (= e!1539721 EmptyExpr!7112)))

(declare-fun b!2419974 () Bool)

(assert (=> b!2419974 (= e!1539723 e!1539721)))

(declare-fun c!385738 () Bool)

(assert (=> b!2419974 (= c!385738 (is-Cons!28365 (t!208440 l!9164)))))

(declare-fun b!2419975 () Bool)

(assert (=> b!2419975 (= e!1539722 (isConcat!167 lt!875041))))

(declare-fun b!2419976 () Bool)

(assert (=> b!2419976 (= e!1539722 (= lt!875041 (head!5436 (t!208440 l!9164))))))

(assert (= (and d!701713 res!1027757) b!2419969))

(assert (= (and d!701713 c!385739) b!2419970))

(assert (= (and d!701713 (not c!385739)) b!2419974))

(assert (= (and b!2419974 c!385738) b!2419972))

(assert (= (and b!2419974 (not c!385738)) b!2419973))

(assert (= (and d!701713 res!1027758) b!2419968))

(assert (= (and b!2419968 c!385741) b!2419971))

(assert (= (and b!2419968 (not c!385741)) b!2419967))

(assert (= (and b!2419967 c!385740) b!2419976))

(assert (= (and b!2419967 (not c!385740)) b!2419975))

(declare-fun m!2807101 () Bool)

(assert (=> b!2419972 m!2807101))

(declare-fun m!2807103 () Bool)

(assert (=> b!2419971 m!2807103))

(declare-fun m!2807105 () Bool)

(assert (=> b!2419975 m!2807105))

(declare-fun m!2807107 () Bool)

(assert (=> d!701713 m!2807107))

(declare-fun m!2807109 () Bool)

(assert (=> d!701713 m!2807109))

(declare-fun m!2807111 () Bool)

(assert (=> b!2419969 m!2807111))

(declare-fun m!2807113 () Bool)

(assert (=> b!2419976 m!2807113))

(assert (=> b!2419968 m!2807033))

(declare-fun m!2807115 () Bool)

(assert (=> b!2419967 m!2807115))

(assert (=> b!2419967 m!2807115))

(declare-fun m!2807117 () Bool)

(assert (=> b!2419967 m!2807117))

(assert (=> b!2419766 d!701713))

(declare-fun b!2420023 () Bool)

(declare-fun e!1539751 () Bool)

(assert (=> b!2420023 (= e!1539751 (matchR!3229 lt!874980 s!9460))))

(declare-fun b!2420024 () Bool)

(declare-fun e!1539749 () Bool)

(declare-fun lt!875052 () Option!5613)

(assert (=> b!2420024 (= e!1539749 (not (isDefined!4439 lt!875052)))))

(declare-fun b!2420025 () Bool)

(declare-fun res!1027786 () Bool)

(declare-fun e!1539748 () Bool)

(assert (=> b!2420025 (=> (not res!1027786) (not e!1539748))))

(assert (=> b!2420025 (= res!1027786 (matchR!3229 lt!874980 (_2!16543 (get!8721 lt!875052))))))

(declare-fun d!701715 () Bool)

(assert (=> d!701715 e!1539749))

(declare-fun res!1027790 () Bool)

(assert (=> d!701715 (=> res!1027790 e!1539749)))

(assert (=> d!701715 (= res!1027790 e!1539748)))

(declare-fun res!1027787 () Bool)

(assert (=> d!701715 (=> (not res!1027787) (not e!1539748))))

(assert (=> d!701715 (= res!1027787 (isDefined!4439 lt!875052))))

(declare-fun e!1539753 () Option!5613)

(assert (=> d!701715 (= lt!875052 e!1539753)))

(declare-fun c!385752 () Bool)

(assert (=> d!701715 (= c!385752 e!1539751)))

(declare-fun res!1027785 () Bool)

(assert (=> d!701715 (=> (not res!1027785) (not e!1539751))))

(assert (=> d!701715 (= res!1027785 (matchR!3229 lt!874976 Nil!28364))))

(assert (=> d!701715 (validRegex!2832 lt!874976)))

(assert (=> d!701715 (= (findConcatSeparation!721 lt!874976 lt!874980 Nil!28364 s!9460 s!9460) lt!875052)))

(declare-fun b!2420026 () Bool)

(assert (=> b!2420026 (= e!1539748 (= (++!7033 (_1!16543 (get!8721 lt!875052)) (_2!16543 (get!8721 lt!875052))) s!9460))))

(declare-fun b!2420027 () Bool)

(declare-fun e!1539750 () Option!5613)

(assert (=> b!2420027 (= e!1539750 None!5612)))

(declare-fun b!2420028 () Bool)

(declare-fun lt!875050 () Unit!41531)

(declare-fun lt!875051 () Unit!41531)

(assert (=> b!2420028 (= lt!875050 lt!875051)))

(assert (=> b!2420028 (= (++!7033 (++!7033 Nil!28364 (Cons!28364 (h!33765 s!9460) Nil!28364)) (t!208439 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!659 (List!28462 C!14382 List!28462 List!28462) Unit!41531)

(assert (=> b!2420028 (= lt!875051 (lemmaMoveElementToOtherListKeepsConcatEq!659 Nil!28364 (h!33765 s!9460) (t!208439 s!9460) s!9460))))

(assert (=> b!2420028 (= e!1539750 (findConcatSeparation!721 lt!874976 lt!874980 (++!7033 Nil!28364 (Cons!28364 (h!33765 s!9460) Nil!28364)) (t!208439 s!9460) s!9460))))

(declare-fun b!2420029 () Bool)

(assert (=> b!2420029 (= e!1539753 e!1539750)))

(declare-fun c!385753 () Bool)

(assert (=> b!2420029 (= c!385753 (is-Nil!28364 s!9460))))

(declare-fun b!2420030 () Bool)

(assert (=> b!2420030 (= e!1539753 (Some!5612 (tuple2!28005 Nil!28364 s!9460)))))

(declare-fun b!2420031 () Bool)

(declare-fun res!1027791 () Bool)

(assert (=> b!2420031 (=> (not res!1027791) (not e!1539748))))

(assert (=> b!2420031 (= res!1027791 (matchR!3229 lt!874976 (_1!16543 (get!8721 lt!875052))))))

(assert (= (and d!701715 res!1027785) b!2420023))

(assert (= (and d!701715 c!385752) b!2420030))

(assert (= (and d!701715 (not c!385752)) b!2420029))

(assert (= (and b!2420029 c!385753) b!2420027))

(assert (= (and b!2420029 (not c!385753)) b!2420028))

(assert (= (and d!701715 res!1027787) b!2420031))

(assert (= (and b!2420031 res!1027791) b!2420025))

(assert (= (and b!2420025 res!1027786) b!2420026))

(assert (= (and d!701715 (not res!1027790)) b!2420024))

(declare-fun m!2807119 () Bool)

(assert (=> b!2420026 m!2807119))

(declare-fun m!2807121 () Bool)

(assert (=> b!2420026 m!2807121))

(declare-fun m!2807123 () Bool)

(assert (=> b!2420023 m!2807123))

(declare-fun m!2807125 () Bool)

(assert (=> b!2420024 m!2807125))

(assert (=> b!2420031 m!2807119))

(declare-fun m!2807127 () Bool)

(assert (=> b!2420031 m!2807127))

(assert (=> d!701715 m!2807125))

(declare-fun m!2807129 () Bool)

(assert (=> d!701715 m!2807129))

(assert (=> d!701715 m!2807043))

(declare-fun m!2807131 () Bool)

(assert (=> b!2420028 m!2807131))

(assert (=> b!2420028 m!2807131))

(declare-fun m!2807133 () Bool)

(assert (=> b!2420028 m!2807133))

(declare-fun m!2807135 () Bool)

(assert (=> b!2420028 m!2807135))

(assert (=> b!2420028 m!2807131))

(declare-fun m!2807137 () Bool)

(assert (=> b!2420028 m!2807137))

(assert (=> b!2420025 m!2807119))

(declare-fun m!2807139 () Bool)

(assert (=> b!2420025 m!2807139))

(assert (=> bm!147796 d!701715))

(declare-fun b!2420046 () Bool)

(declare-fun e!1539763 () Bool)

(assert (=> b!2420046 (= e!1539763 (matchR!3229 EmptyExpr!7112 s!9460))))

(declare-fun b!2420047 () Bool)

(declare-fun e!1539761 () Bool)

(declare-fun lt!875056 () Option!5613)

(assert (=> b!2420047 (= e!1539761 (not (isDefined!4439 lt!875056)))))

(declare-fun b!2420048 () Bool)

(declare-fun res!1027799 () Bool)

(declare-fun e!1539760 () Bool)

(assert (=> b!2420048 (=> (not res!1027799) (not e!1539760))))

(assert (=> b!2420048 (= res!1027799 (matchR!3229 EmptyExpr!7112 (_2!16543 (get!8721 lt!875056))))))

(declare-fun d!701717 () Bool)

(assert (=> d!701717 e!1539761))

(declare-fun res!1027801 () Bool)

(assert (=> d!701717 (=> res!1027801 e!1539761)))

(assert (=> d!701717 (= res!1027801 e!1539760)))

(declare-fun res!1027800 () Bool)

(assert (=> d!701717 (=> (not res!1027800) (not e!1539760))))

(assert (=> d!701717 (= res!1027800 (isDefined!4439 lt!875056))))

(declare-fun e!1539764 () Option!5613)

(assert (=> d!701717 (= lt!875056 e!1539764)))

(declare-fun c!385757 () Bool)

(assert (=> d!701717 (= c!385757 e!1539763)))

(declare-fun res!1027798 () Bool)

(assert (=> d!701717 (=> (not res!1027798) (not e!1539763))))

(assert (=> d!701717 (= res!1027798 (matchR!3229 lt!874976 Nil!28364))))

(assert (=> d!701717 (validRegex!2832 lt!874976)))

(assert (=> d!701717 (= (findConcatSeparation!721 lt!874976 EmptyExpr!7112 Nil!28364 s!9460 s!9460) lt!875056)))

(declare-fun b!2420049 () Bool)

(assert (=> b!2420049 (= e!1539760 (= (++!7033 (_1!16543 (get!8721 lt!875056)) (_2!16543 (get!8721 lt!875056))) s!9460))))

(declare-fun b!2420050 () Bool)

(declare-fun e!1539762 () Option!5613)

(assert (=> b!2420050 (= e!1539762 None!5612)))

(declare-fun b!2420051 () Bool)

(declare-fun lt!875054 () Unit!41531)

(declare-fun lt!875055 () Unit!41531)

(assert (=> b!2420051 (= lt!875054 lt!875055)))

(assert (=> b!2420051 (= (++!7033 (++!7033 Nil!28364 (Cons!28364 (h!33765 s!9460) Nil!28364)) (t!208439 s!9460)) s!9460)))

(assert (=> b!2420051 (= lt!875055 (lemmaMoveElementToOtherListKeepsConcatEq!659 Nil!28364 (h!33765 s!9460) (t!208439 s!9460) s!9460))))

(assert (=> b!2420051 (= e!1539762 (findConcatSeparation!721 lt!874976 EmptyExpr!7112 (++!7033 Nil!28364 (Cons!28364 (h!33765 s!9460) Nil!28364)) (t!208439 s!9460) s!9460))))

(declare-fun b!2420052 () Bool)

(assert (=> b!2420052 (= e!1539764 e!1539762)))

(declare-fun c!385758 () Bool)

(assert (=> b!2420052 (= c!385758 (is-Nil!28364 s!9460))))

(declare-fun b!2420053 () Bool)

(assert (=> b!2420053 (= e!1539764 (Some!5612 (tuple2!28005 Nil!28364 s!9460)))))

(declare-fun b!2420054 () Bool)

(declare-fun res!1027802 () Bool)

(assert (=> b!2420054 (=> (not res!1027802) (not e!1539760))))

(assert (=> b!2420054 (= res!1027802 (matchR!3229 lt!874976 (_1!16543 (get!8721 lt!875056))))))

(assert (= (and d!701717 res!1027798) b!2420046))

(assert (= (and d!701717 c!385757) b!2420053))

(assert (= (and d!701717 (not c!385757)) b!2420052))

(assert (= (and b!2420052 c!385758) b!2420050))

(assert (= (and b!2420052 (not c!385758)) b!2420051))

(assert (= (and d!701717 res!1027800) b!2420054))

(assert (= (and b!2420054 res!1027802) b!2420048))

(assert (= (and b!2420048 res!1027799) b!2420049))

(assert (= (and d!701717 (not res!1027801)) b!2420047))

(declare-fun m!2807155 () Bool)

(assert (=> b!2420049 m!2807155))

(declare-fun m!2807159 () Bool)

(assert (=> b!2420049 m!2807159))

(declare-fun m!2807161 () Bool)

(assert (=> b!2420046 m!2807161))

(declare-fun m!2807163 () Bool)

(assert (=> b!2420047 m!2807163))

(assert (=> b!2420054 m!2807155))

(declare-fun m!2807165 () Bool)

(assert (=> b!2420054 m!2807165))

(assert (=> d!701717 m!2807163))

(assert (=> d!701717 m!2807129))

(assert (=> d!701717 m!2807043))

(assert (=> b!2420051 m!2807131))

(assert (=> b!2420051 m!2807131))

(assert (=> b!2420051 m!2807133))

(assert (=> b!2420051 m!2807135))

(assert (=> b!2420051 m!2807131))

(declare-fun m!2807167 () Bool)

(assert (=> b!2420051 m!2807167))

(assert (=> b!2420048 m!2807155))

(declare-fun m!2807169 () Bool)

(assert (=> b!2420048 m!2807169))

(assert (=> bm!147794 d!701717))

(declare-fun d!701721 () Bool)

(declare-fun res!1027807 () Bool)

(declare-fun e!1539769 () Bool)

(assert (=> d!701721 (=> res!1027807 e!1539769)))

(assert (=> d!701721 (= res!1027807 (is-Nil!28365 l!9164))))

(assert (=> d!701721 (= (forall!5746 l!9164 lambda!91140) e!1539769)))

(declare-fun b!2420059 () Bool)

(declare-fun e!1539770 () Bool)

(assert (=> b!2420059 (= e!1539769 e!1539770)))

(declare-fun res!1027808 () Bool)

(assert (=> b!2420059 (=> (not res!1027808) (not e!1539770))))

(declare-fun dynLambda!12207 (Int Regex!7112) Bool)

(assert (=> b!2420059 (= res!1027808 (dynLambda!12207 lambda!91140 (h!33766 l!9164)))))

(declare-fun b!2420060 () Bool)

(assert (=> b!2420060 (= e!1539770 (forall!5746 (t!208440 l!9164) lambda!91140))))

(assert (= (and d!701721 (not res!1027807)) b!2420059))

(assert (= (and b!2420059 res!1027808) b!2420060))

(declare-fun b_lambda!74629 () Bool)

(assert (=> (not b_lambda!74629) (not b!2420059)))

(declare-fun m!2807171 () Bool)

(assert (=> b!2420059 m!2807171))

(declare-fun m!2807173 () Bool)

(assert (=> b!2420060 m!2807173))

(assert (=> start!237046 d!701721))

(declare-fun b!2420070 () Bool)

(declare-fun e!1539776 () List!28462)

(assert (=> b!2420070 (= e!1539776 (Cons!28364 (h!33765 (ite c!385699 s!9460 (_1!16543 lt!874970))) (++!7033 (t!208439 (ite c!385699 s!9460 (_1!16543 lt!874970))) (ite c!385699 Nil!28364 (_2!16543 lt!874970)))))))

(declare-fun b!2420071 () Bool)

(declare-fun res!1027813 () Bool)

(declare-fun e!1539775 () Bool)

(assert (=> b!2420071 (=> (not res!1027813) (not e!1539775))))

(declare-fun lt!875059 () List!28462)

(declare-fun size!22236 (List!28462) Int)

(assert (=> b!2420071 (= res!1027813 (= (size!22236 lt!875059) (+ (size!22236 (ite c!385699 s!9460 (_1!16543 lt!874970))) (size!22236 (ite c!385699 Nil!28364 (_2!16543 lt!874970))))))))

(declare-fun b!2420072 () Bool)

(assert (=> b!2420072 (= e!1539775 (or (not (= (ite c!385699 Nil!28364 (_2!16543 lt!874970)) Nil!28364)) (= lt!875059 (ite c!385699 s!9460 (_1!16543 lt!874970)))))))

(declare-fun b!2420069 () Bool)

(assert (=> b!2420069 (= e!1539776 (ite c!385699 Nil!28364 (_2!16543 lt!874970)))))

(declare-fun d!701723 () Bool)

(assert (=> d!701723 e!1539775))

(declare-fun res!1027814 () Bool)

(assert (=> d!701723 (=> (not res!1027814) (not e!1539775))))

(declare-fun content!3898 (List!28462) (Set C!14382))

(assert (=> d!701723 (= res!1027814 (= (content!3898 lt!875059) (set.union (content!3898 (ite c!385699 s!9460 (_1!16543 lt!874970))) (content!3898 (ite c!385699 Nil!28364 (_2!16543 lt!874970))))))))

(assert (=> d!701723 (= lt!875059 e!1539776)))

(declare-fun c!385761 () Bool)

(assert (=> d!701723 (= c!385761 (is-Nil!28364 (ite c!385699 s!9460 (_1!16543 lt!874970))))))

(assert (=> d!701723 (= (++!7033 (ite c!385699 s!9460 (_1!16543 lt!874970)) (ite c!385699 Nil!28364 (_2!16543 lt!874970))) lt!875059)))

(assert (= (and d!701723 c!385761) b!2420069))

(assert (= (and d!701723 (not c!385761)) b!2420070))

(assert (= (and d!701723 res!1027814) b!2420071))

(assert (= (and b!2420071 res!1027813) b!2420072))

(declare-fun m!2807175 () Bool)

(assert (=> b!2420070 m!2807175))

(declare-fun m!2807177 () Bool)

(assert (=> b!2420071 m!2807177))

(declare-fun m!2807179 () Bool)

(assert (=> b!2420071 m!2807179))

(declare-fun m!2807181 () Bool)

(assert (=> b!2420071 m!2807181))

(declare-fun m!2807183 () Bool)

(assert (=> d!701723 m!2807183))

(declare-fun m!2807185 () Bool)

(assert (=> d!701723 m!2807185))

(declare-fun m!2807187 () Bool)

(assert (=> d!701723 m!2807187))

(assert (=> bm!147797 d!701723))

(declare-fun b!2420073 () Bool)

(declare-fun res!1027820 () Bool)

(declare-fun e!1539778 () Bool)

(assert (=> b!2420073 (=> res!1027820 e!1539778)))

(assert (=> b!2420073 (= res!1027820 (not (isEmpty!16384 (tail!3710 s!9460))))))

(declare-fun bm!147831 () Bool)

(declare-fun call!147836 () Bool)

(assert (=> bm!147831 (= call!147836 (isEmpty!16384 s!9460))))

(declare-fun b!2420074 () Bool)

(declare-fun e!1539781 () Bool)

(declare-fun e!1539782 () Bool)

(assert (=> b!2420074 (= e!1539781 e!1539782)))

(declare-fun c!385764 () Bool)

(assert (=> b!2420074 (= c!385764 (is-EmptyLang!7112 r!13927))))

(declare-fun b!2420075 () Bool)

(declare-fun e!1539783 () Bool)

(declare-fun e!1539777 () Bool)

(assert (=> b!2420075 (= e!1539783 e!1539777)))

(declare-fun res!1027818 () Bool)

(assert (=> b!2420075 (=> (not res!1027818) (not e!1539777))))

(declare-fun lt!875060 () Bool)

(assert (=> b!2420075 (= res!1027818 (not lt!875060))))

(declare-fun b!2420076 () Bool)

(assert (=> b!2420076 (= e!1539777 e!1539778)))

(declare-fun res!1027815 () Bool)

(assert (=> b!2420076 (=> res!1027815 e!1539778)))

(assert (=> b!2420076 (= res!1027815 call!147836)))

(declare-fun b!2420077 () Bool)

(declare-fun res!1027822 () Bool)

(assert (=> b!2420077 (=> res!1027822 e!1539783)))

(assert (=> b!2420077 (= res!1027822 (not (is-ElementMatch!7112 r!13927)))))

(assert (=> b!2420077 (= e!1539782 e!1539783)))

(declare-fun b!2420078 () Bool)

(declare-fun res!1027817 () Bool)

(declare-fun e!1539780 () Bool)

(assert (=> b!2420078 (=> (not res!1027817) (not e!1539780))))

(assert (=> b!2420078 (= res!1027817 (not call!147836))))

(declare-fun b!2420079 () Bool)

(assert (=> b!2420079 (= e!1539782 (not lt!875060))))

(declare-fun b!2420080 () Bool)

(declare-fun res!1027816 () Bool)

(assert (=> b!2420080 (=> (not res!1027816) (not e!1539780))))

(assert (=> b!2420080 (= res!1027816 (isEmpty!16384 (tail!3710 s!9460)))))

(declare-fun d!701725 () Bool)

(assert (=> d!701725 e!1539781))

(declare-fun c!385762 () Bool)

(assert (=> d!701725 (= c!385762 (is-EmptyExpr!7112 r!13927))))

(declare-fun e!1539779 () Bool)

(assert (=> d!701725 (= lt!875060 e!1539779)))

(declare-fun c!385763 () Bool)

(assert (=> d!701725 (= c!385763 (isEmpty!16384 s!9460))))

(assert (=> d!701725 (validRegex!2832 r!13927)))

(assert (=> d!701725 (= (matchR!3229 r!13927 s!9460) lt!875060)))

(declare-fun b!2420081 () Bool)

(assert (=> b!2420081 (= e!1539779 (matchR!3229 (derivativeStep!1804 r!13927 (head!5438 s!9460)) (tail!3710 s!9460)))))

(declare-fun b!2420082 () Bool)

(declare-fun res!1027819 () Bool)

(assert (=> b!2420082 (=> res!1027819 e!1539783)))

(assert (=> b!2420082 (= res!1027819 e!1539780)))

(declare-fun res!1027821 () Bool)

(assert (=> b!2420082 (=> (not res!1027821) (not e!1539780))))

(assert (=> b!2420082 (= res!1027821 lt!875060)))

(declare-fun b!2420083 () Bool)

(assert (=> b!2420083 (= e!1539778 (not (= (head!5438 s!9460) (c!385700 r!13927))))))

(declare-fun b!2420084 () Bool)

(assert (=> b!2420084 (= e!1539779 (nullable!2147 r!13927))))

(declare-fun b!2420085 () Bool)

(assert (=> b!2420085 (= e!1539781 (= lt!875060 call!147836))))

(declare-fun b!2420086 () Bool)

(assert (=> b!2420086 (= e!1539780 (= (head!5438 s!9460) (c!385700 r!13927)))))

(assert (= (and d!701725 c!385763) b!2420084))

(assert (= (and d!701725 (not c!385763)) b!2420081))

(assert (= (and d!701725 c!385762) b!2420085))

(assert (= (and d!701725 (not c!385762)) b!2420074))

(assert (= (and b!2420074 c!385764) b!2420079))

(assert (= (and b!2420074 (not c!385764)) b!2420077))

(assert (= (and b!2420077 (not res!1027822)) b!2420082))

(assert (= (and b!2420082 res!1027821) b!2420078))

(assert (= (and b!2420078 res!1027817) b!2420080))

(assert (= (and b!2420080 res!1027816) b!2420086))

(assert (= (and b!2420082 (not res!1027819)) b!2420075))

(assert (= (and b!2420075 res!1027818) b!2420076))

(assert (= (and b!2420076 (not res!1027815)) b!2420073))

(assert (= (and b!2420073 (not res!1027820)) b!2420083))

(assert (= (or b!2420085 b!2420076 b!2420078) bm!147831))

(declare-fun m!2807189 () Bool)

(assert (=> b!2420080 m!2807189))

(assert (=> b!2420080 m!2807189))

(declare-fun m!2807191 () Bool)

(assert (=> b!2420080 m!2807191))

(declare-fun m!2807193 () Bool)

(assert (=> b!2420083 m!2807193))

(declare-fun m!2807195 () Bool)

(assert (=> b!2420084 m!2807195))

(assert (=> b!2420073 m!2807189))

(assert (=> b!2420073 m!2807189))

(assert (=> b!2420073 m!2807191))

(assert (=> b!2420081 m!2807193))

(assert (=> b!2420081 m!2807193))

(declare-fun m!2807197 () Bool)

(assert (=> b!2420081 m!2807197))

(assert (=> b!2420081 m!2807189))

(assert (=> b!2420081 m!2807197))

(assert (=> b!2420081 m!2807189))

(declare-fun m!2807199 () Bool)

(assert (=> b!2420081 m!2807199))

(declare-fun m!2807201 () Bool)

(assert (=> d!701725 m!2807201))

(declare-fun m!2807203 () Bool)

(assert (=> d!701725 m!2807203))

(assert (=> bm!147831 m!2807201))

(assert (=> b!2420086 m!2807193))

(assert (=> b!2419783 d!701725))

(declare-fun b!2420156 () Bool)

(assert (=> b!2420156 true))

(assert (=> b!2420156 true))

(declare-fun bs!463692 () Bool)

(declare-fun b!2420154 () Bool)

(assert (= bs!463692 (and b!2420154 b!2420156)))

(declare-fun lambda!91157 () Int)

(declare-fun lambda!91156 () Int)

(assert (=> bs!463692 (not (= lambda!91157 lambda!91156))))

(assert (=> b!2420154 true))

(assert (=> b!2420154 true))

(declare-fun b!2420151 () Bool)

(declare-fun e!1539820 () Bool)

(declare-fun e!1539824 () Bool)

(assert (=> b!2420151 (= e!1539820 e!1539824)))

(declare-fun c!385783 () Bool)

(assert (=> b!2420151 (= c!385783 (is-Star!7112 r!13927))))

(declare-fun b!2420152 () Bool)

(declare-fun e!1539826 () Bool)

(assert (=> b!2420152 (= e!1539826 (= s!9460 (Cons!28364 (c!385700 r!13927) Nil!28364)))))

(declare-fun b!2420153 () Bool)

(declare-fun c!385784 () Bool)

(assert (=> b!2420153 (= c!385784 (is-Union!7112 r!13927))))

(assert (=> b!2420153 (= e!1539826 e!1539820)))

(declare-fun call!147841 () Bool)

(assert (=> b!2420154 (= e!1539824 call!147841)))

(declare-fun d!701727 () Bool)

(declare-fun c!385782 () Bool)

(assert (=> d!701727 (= c!385782 (is-EmptyExpr!7112 r!13927))))

(declare-fun e!1539825 () Bool)

(assert (=> d!701727 (= (matchRSpec!961 r!13927 s!9460) e!1539825)))

(declare-fun b!2420155 () Bool)

(declare-fun c!385781 () Bool)

(assert (=> b!2420155 (= c!385781 (is-ElementMatch!7112 r!13927))))

(declare-fun e!1539821 () Bool)

(assert (=> b!2420155 (= e!1539821 e!1539826)))

(declare-fun e!1539823 () Bool)

(assert (=> b!2420156 (= e!1539823 call!147841)))

(declare-fun b!2420157 () Bool)

(declare-fun e!1539822 () Bool)

(assert (=> b!2420157 (= e!1539820 e!1539822)))

(declare-fun res!1027857 () Bool)

(assert (=> b!2420157 (= res!1027857 (matchRSpec!961 (regOne!14737 r!13927) s!9460))))

(assert (=> b!2420157 (=> res!1027857 e!1539822)))

(declare-fun b!2420158 () Bool)

(assert (=> b!2420158 (= e!1539825 e!1539821)))

(declare-fun res!1027855 () Bool)

(assert (=> b!2420158 (= res!1027855 (not (is-EmptyLang!7112 r!13927)))))

(assert (=> b!2420158 (=> (not res!1027855) (not e!1539821))))

(declare-fun b!2420159 () Bool)

(declare-fun call!147842 () Bool)

(assert (=> b!2420159 (= e!1539825 call!147842)))

(declare-fun b!2420160 () Bool)

(assert (=> b!2420160 (= e!1539822 (matchRSpec!961 (regTwo!14737 r!13927) s!9460))))

(declare-fun bm!147836 () Bool)

(declare-fun Exists!1152 (Int) Bool)

(assert (=> bm!147836 (= call!147841 (Exists!1152 (ite c!385783 lambda!91156 lambda!91157)))))

(declare-fun bm!147837 () Bool)

(assert (=> bm!147837 (= call!147842 (isEmpty!16384 s!9460))))

(declare-fun b!2420161 () Bool)

(declare-fun res!1027856 () Bool)

(assert (=> b!2420161 (=> res!1027856 e!1539823)))

(assert (=> b!2420161 (= res!1027856 call!147842)))

(assert (=> b!2420161 (= e!1539824 e!1539823)))

(assert (= (and d!701727 c!385782) b!2420159))

(assert (= (and d!701727 (not c!385782)) b!2420158))

(assert (= (and b!2420158 res!1027855) b!2420155))

(assert (= (and b!2420155 c!385781) b!2420152))

(assert (= (and b!2420155 (not c!385781)) b!2420153))

(assert (= (and b!2420153 c!385784) b!2420157))

(assert (= (and b!2420153 (not c!385784)) b!2420151))

(assert (= (and b!2420157 (not res!1027857)) b!2420160))

(assert (= (and b!2420151 c!385783) b!2420161))

(assert (= (and b!2420151 (not c!385783)) b!2420154))

(assert (= (and b!2420161 (not res!1027856)) b!2420156))

(assert (= (or b!2420156 b!2420154) bm!147836))

(assert (= (or b!2420159 b!2420161) bm!147837))

(declare-fun m!2807205 () Bool)

(assert (=> b!2420157 m!2807205))

(declare-fun m!2807207 () Bool)

(assert (=> b!2420160 m!2807207))

(declare-fun m!2807209 () Bool)

(assert (=> bm!147836 m!2807209))

(assert (=> bm!147837 m!2807201))

(assert (=> b!2419783 d!701727))

(declare-fun d!701729 () Bool)

(assert (=> d!701729 (= (matchR!3229 r!13927 s!9460) (matchRSpec!961 r!13927 s!9460))))

(declare-fun lt!875063 () Unit!41531)

(declare-fun choose!14317 (Regex!7112 List!28462) Unit!41531)

(assert (=> d!701729 (= lt!875063 (choose!14317 r!13927 s!9460))))

(assert (=> d!701729 (validRegex!2832 r!13927)))

(assert (=> d!701729 (= (mainMatchTheorem!961 r!13927 s!9460) lt!875063)))

(declare-fun bs!463693 () Bool)

(assert (= bs!463693 d!701729))

(assert (=> bs!463693 m!2806933))

(assert (=> bs!463693 m!2806935))

(declare-fun m!2807211 () Bool)

(assert (=> bs!463693 m!2807211))

(assert (=> bs!463693 m!2807203))

(assert (=> b!2419783 d!701729))

(declare-fun bs!463694 () Bool)

(declare-fun d!701731 () Bool)

(assert (= bs!463694 (and d!701731 start!237046)))

(declare-fun lambda!91158 () Int)

(assert (=> bs!463694 (= lambda!91158 lambda!91140)))

(declare-fun bs!463695 () Bool)

(assert (= bs!463695 (and d!701731 d!701681)))

(assert (=> bs!463695 (= lambda!91158 lambda!91146)))

(declare-fun bs!463696 () Bool)

(assert (= bs!463696 (and d!701731 d!701713)))

(assert (=> bs!463696 (= lambda!91158 lambda!91147)))

(declare-fun b!2420166 () Bool)

(declare-fun e!1539827 () Bool)

(declare-fun e!1539831 () Bool)

(assert (=> b!2420166 (= e!1539827 e!1539831)))

(declare-fun c!385787 () Bool)

(assert (=> b!2420166 (= c!385787 (isEmpty!16382 (tail!3708 lt!874968)))))

(declare-fun b!2420167 () Bool)

(declare-fun e!1539828 () Bool)

(assert (=> b!2420167 (= e!1539828 e!1539827)))

(declare-fun c!385788 () Bool)

(assert (=> b!2420167 (= c!385788 (isEmpty!16382 lt!874968))))

(declare-fun b!2420168 () Bool)

(declare-fun e!1539829 () Bool)

(assert (=> b!2420168 (= e!1539829 (isEmpty!16382 (t!208440 lt!874968)))))

(declare-fun b!2420169 () Bool)

(declare-fun e!1539832 () Regex!7112)

(assert (=> b!2420169 (= e!1539832 (h!33766 lt!874968))))

(declare-fun b!2420170 () Bool)

(declare-fun lt!875064 () Regex!7112)

(assert (=> b!2420170 (= e!1539827 (isEmptyExpr!167 lt!875064))))

(assert (=> d!701731 e!1539828))

(declare-fun res!1027859 () Bool)

(assert (=> d!701731 (=> (not res!1027859) (not e!1539828))))

(assert (=> d!701731 (= res!1027859 (validRegex!2832 lt!875064))))

(assert (=> d!701731 (= lt!875064 e!1539832)))

(declare-fun c!385786 () Bool)

(assert (=> d!701731 (= c!385786 e!1539829)))

(declare-fun res!1027858 () Bool)

(assert (=> d!701731 (=> (not res!1027858) (not e!1539829))))

(assert (=> d!701731 (= res!1027858 (is-Cons!28365 lt!874968))))

(assert (=> d!701731 (forall!5746 lt!874968 lambda!91158)))

(assert (=> d!701731 (= (generalisedConcat!213 lt!874968) lt!875064)))

(declare-fun b!2420171 () Bool)

(declare-fun e!1539830 () Regex!7112)

(assert (=> b!2420171 (= e!1539830 (Concat!11748 (h!33766 lt!874968) (generalisedConcat!213 (t!208440 lt!874968))))))

(declare-fun b!2420172 () Bool)

(assert (=> b!2420172 (= e!1539830 EmptyExpr!7112)))

(declare-fun b!2420173 () Bool)

(assert (=> b!2420173 (= e!1539832 e!1539830)))

(declare-fun c!385785 () Bool)

(assert (=> b!2420173 (= c!385785 (is-Cons!28365 lt!874968))))

(declare-fun b!2420174 () Bool)

(assert (=> b!2420174 (= e!1539831 (isConcat!167 lt!875064))))

(declare-fun b!2420175 () Bool)

(assert (=> b!2420175 (= e!1539831 (= lt!875064 (head!5436 lt!874968)))))

(assert (= (and d!701731 res!1027858) b!2420168))

(assert (= (and d!701731 c!385786) b!2420169))

(assert (= (and d!701731 (not c!385786)) b!2420173))

(assert (= (and b!2420173 c!385785) b!2420171))

(assert (= (and b!2420173 (not c!385785)) b!2420172))

(assert (= (and d!701731 res!1027859) b!2420167))

(assert (= (and b!2420167 c!385788) b!2420170))

(assert (= (and b!2420167 (not c!385788)) b!2420166))

(assert (= (and b!2420166 c!385787) b!2420175))

(assert (= (and b!2420166 (not c!385787)) b!2420174))

(declare-fun m!2807213 () Bool)

(assert (=> b!2420171 m!2807213))

(declare-fun m!2807215 () Bool)

(assert (=> b!2420170 m!2807215))

(declare-fun m!2807217 () Bool)

(assert (=> b!2420174 m!2807217))

(declare-fun m!2807219 () Bool)

(assert (=> d!701731 m!2807219))

(declare-fun m!2807221 () Bool)

(assert (=> d!701731 m!2807221))

(declare-fun m!2807223 () Bool)

(assert (=> b!2420168 m!2807223))

(declare-fun m!2807225 () Bool)

(assert (=> b!2420175 m!2807225))

(assert (=> b!2420167 m!2806961))

(declare-fun m!2807227 () Bool)

(assert (=> b!2420166 m!2807227))

(assert (=> b!2420166 m!2807227))

(declare-fun m!2807229 () Bool)

(assert (=> b!2420166 m!2807229))

(assert (=> b!2419773 d!701731))

(declare-fun b!2420176 () Bool)

(declare-fun res!1027865 () Bool)

(declare-fun e!1539834 () Bool)

(assert (=> b!2420176 (=> res!1027865 e!1539834)))

(assert (=> b!2420176 (= res!1027865 (not (isEmpty!16384 (tail!3710 s!9460))))))

(declare-fun bm!147840 () Bool)

(declare-fun call!147847 () Bool)

(assert (=> bm!147840 (= call!147847 (isEmpty!16384 s!9460))))

(declare-fun b!2420177 () Bool)

(declare-fun e!1539837 () Bool)

(declare-fun e!1539838 () Bool)

(assert (=> b!2420177 (= e!1539837 e!1539838)))

(declare-fun c!385791 () Bool)

(assert (=> b!2420177 (= c!385791 (is-EmptyLang!7112 lt!874976))))

(declare-fun b!2420178 () Bool)

(declare-fun e!1539839 () Bool)

(declare-fun e!1539833 () Bool)

(assert (=> b!2420178 (= e!1539839 e!1539833)))

(declare-fun res!1027863 () Bool)

(assert (=> b!2420178 (=> (not res!1027863) (not e!1539833))))

(declare-fun lt!875065 () Bool)

(assert (=> b!2420178 (= res!1027863 (not lt!875065))))

(declare-fun b!2420179 () Bool)

(assert (=> b!2420179 (= e!1539833 e!1539834)))

(declare-fun res!1027860 () Bool)

(assert (=> b!2420179 (=> res!1027860 e!1539834)))

(assert (=> b!2420179 (= res!1027860 call!147847)))

(declare-fun b!2420180 () Bool)

(declare-fun res!1027867 () Bool)

(assert (=> b!2420180 (=> res!1027867 e!1539839)))

(assert (=> b!2420180 (= res!1027867 (not (is-ElementMatch!7112 lt!874976)))))

(assert (=> b!2420180 (= e!1539838 e!1539839)))

(declare-fun b!2420181 () Bool)

(declare-fun res!1027862 () Bool)

(declare-fun e!1539836 () Bool)

(assert (=> b!2420181 (=> (not res!1027862) (not e!1539836))))

(assert (=> b!2420181 (= res!1027862 (not call!147847))))

(declare-fun b!2420182 () Bool)

(assert (=> b!2420182 (= e!1539838 (not lt!875065))))

(declare-fun b!2420183 () Bool)

(declare-fun res!1027861 () Bool)

(assert (=> b!2420183 (=> (not res!1027861) (not e!1539836))))

(assert (=> b!2420183 (= res!1027861 (isEmpty!16384 (tail!3710 s!9460)))))

(declare-fun d!701733 () Bool)

(assert (=> d!701733 e!1539837))

(declare-fun c!385789 () Bool)

(assert (=> d!701733 (= c!385789 (is-EmptyExpr!7112 lt!874976))))

(declare-fun e!1539835 () Bool)

(assert (=> d!701733 (= lt!875065 e!1539835)))

(declare-fun c!385790 () Bool)

(assert (=> d!701733 (= c!385790 (isEmpty!16384 s!9460))))

(assert (=> d!701733 (validRegex!2832 lt!874976)))

(assert (=> d!701733 (= (matchR!3229 lt!874976 s!9460) lt!875065)))

(declare-fun b!2420184 () Bool)

(assert (=> b!2420184 (= e!1539835 (matchR!3229 (derivativeStep!1804 lt!874976 (head!5438 s!9460)) (tail!3710 s!9460)))))

(declare-fun b!2420185 () Bool)

(declare-fun res!1027864 () Bool)

(assert (=> b!2420185 (=> res!1027864 e!1539839)))

(assert (=> b!2420185 (= res!1027864 e!1539836)))

(declare-fun res!1027866 () Bool)

(assert (=> b!2420185 (=> (not res!1027866) (not e!1539836))))

(assert (=> b!2420185 (= res!1027866 lt!875065)))

(declare-fun b!2420186 () Bool)

(assert (=> b!2420186 (= e!1539834 (not (= (head!5438 s!9460) (c!385700 lt!874976))))))

(declare-fun b!2420187 () Bool)

(assert (=> b!2420187 (= e!1539835 (nullable!2147 lt!874976))))

(declare-fun b!2420188 () Bool)

(assert (=> b!2420188 (= e!1539837 (= lt!875065 call!147847))))

(declare-fun b!2420189 () Bool)

(assert (=> b!2420189 (= e!1539836 (= (head!5438 s!9460) (c!385700 lt!874976)))))

(assert (= (and d!701733 c!385790) b!2420187))

(assert (= (and d!701733 (not c!385790)) b!2420184))

(assert (= (and d!701733 c!385789) b!2420188))

(assert (= (and d!701733 (not c!385789)) b!2420177))

(assert (= (and b!2420177 c!385791) b!2420182))

(assert (= (and b!2420177 (not c!385791)) b!2420180))

(assert (= (and b!2420180 (not res!1027867)) b!2420185))

(assert (= (and b!2420185 res!1027866) b!2420181))

(assert (= (and b!2420181 res!1027862) b!2420183))

(assert (= (and b!2420183 res!1027861) b!2420189))

(assert (= (and b!2420185 (not res!1027864)) b!2420178))

(assert (= (and b!2420178 res!1027863) b!2420179))

(assert (= (and b!2420179 (not res!1027860)) b!2420176))

(assert (= (and b!2420176 (not res!1027865)) b!2420186))

(assert (= (or b!2420188 b!2420179 b!2420181) bm!147840))

(assert (=> b!2420183 m!2807189))

(assert (=> b!2420183 m!2807189))

(assert (=> b!2420183 m!2807191))

(assert (=> b!2420186 m!2807193))

(declare-fun m!2807231 () Bool)

(assert (=> b!2420187 m!2807231))

(assert (=> b!2420176 m!2807189))

(assert (=> b!2420176 m!2807189))

(assert (=> b!2420176 m!2807191))

(assert (=> b!2420184 m!2807193))

(assert (=> b!2420184 m!2807193))

(declare-fun m!2807233 () Bool)

(assert (=> b!2420184 m!2807233))

(assert (=> b!2420184 m!2807189))

(assert (=> b!2420184 m!2807233))

(assert (=> b!2420184 m!2807189))

(declare-fun m!2807235 () Bool)

(assert (=> b!2420184 m!2807235))

(assert (=> d!701733 m!2807201))

(assert (=> d!701733 m!2807043))

(assert (=> bm!147840 m!2807201))

(assert (=> b!2420189 m!2807193))

(assert (=> b!2419780 d!701733))

(declare-fun d!701735 () Bool)

(assert (=> d!701735 (= (head!5436 l!9164) (h!33766 l!9164))))

(assert (=> b!2419780 d!701735))

(declare-fun b!2420190 () Bool)

(declare-fun res!1027873 () Bool)

(declare-fun e!1539841 () Bool)

(assert (=> b!2420190 (=> res!1027873 e!1539841)))

(assert (=> b!2420190 (= res!1027873 (not (isEmpty!16384 (tail!3710 (ite c!385699 s!9460 call!147801)))))))

(declare-fun bm!147843 () Bool)

(declare-fun call!147848 () Bool)

(assert (=> bm!147843 (= call!147848 (isEmpty!16384 (ite c!385699 s!9460 call!147801)))))

(declare-fun b!2420191 () Bool)

(declare-fun e!1539844 () Bool)

(declare-fun e!1539845 () Bool)

(assert (=> b!2420191 (= e!1539844 e!1539845)))

(declare-fun c!385794 () Bool)

(assert (=> b!2420191 (= c!385794 (is-EmptyLang!7112 (ite c!385699 lt!874975 (Concat!11748 lt!874976 EmptyExpr!7112))))))

(declare-fun b!2420192 () Bool)

(declare-fun e!1539846 () Bool)

(declare-fun e!1539840 () Bool)

(assert (=> b!2420192 (= e!1539846 e!1539840)))

(declare-fun res!1027871 () Bool)

(assert (=> b!2420192 (=> (not res!1027871) (not e!1539840))))

(declare-fun lt!875066 () Bool)

(assert (=> b!2420192 (= res!1027871 (not lt!875066))))

(declare-fun b!2420193 () Bool)

(assert (=> b!2420193 (= e!1539840 e!1539841)))

(declare-fun res!1027868 () Bool)

(assert (=> b!2420193 (=> res!1027868 e!1539841)))

(assert (=> b!2420193 (= res!1027868 call!147848)))

(declare-fun b!2420194 () Bool)

(declare-fun res!1027875 () Bool)

(assert (=> b!2420194 (=> res!1027875 e!1539846)))

(assert (=> b!2420194 (= res!1027875 (not (is-ElementMatch!7112 (ite c!385699 lt!874975 (Concat!11748 lt!874976 EmptyExpr!7112)))))))

(assert (=> b!2420194 (= e!1539845 e!1539846)))

(declare-fun b!2420195 () Bool)

(declare-fun res!1027870 () Bool)

(declare-fun e!1539843 () Bool)

(assert (=> b!2420195 (=> (not res!1027870) (not e!1539843))))

(assert (=> b!2420195 (= res!1027870 (not call!147848))))

(declare-fun b!2420196 () Bool)

(assert (=> b!2420196 (= e!1539845 (not lt!875066))))

(declare-fun b!2420197 () Bool)

(declare-fun res!1027869 () Bool)

(assert (=> b!2420197 (=> (not res!1027869) (not e!1539843))))

(assert (=> b!2420197 (= res!1027869 (isEmpty!16384 (tail!3710 (ite c!385699 s!9460 call!147801))))))

(declare-fun d!701737 () Bool)

(assert (=> d!701737 e!1539844))

(declare-fun c!385792 () Bool)

(assert (=> d!701737 (= c!385792 (is-EmptyExpr!7112 (ite c!385699 lt!874975 (Concat!11748 lt!874976 EmptyExpr!7112))))))

(declare-fun e!1539842 () Bool)

(assert (=> d!701737 (= lt!875066 e!1539842)))

(declare-fun c!385793 () Bool)

(assert (=> d!701737 (= c!385793 (isEmpty!16384 (ite c!385699 s!9460 call!147801)))))

(assert (=> d!701737 (validRegex!2832 (ite c!385699 lt!874975 (Concat!11748 lt!874976 EmptyExpr!7112)))))

(assert (=> d!701737 (= (matchR!3229 (ite c!385699 lt!874975 (Concat!11748 lt!874976 EmptyExpr!7112)) (ite c!385699 s!9460 call!147801)) lt!875066)))

(declare-fun b!2420198 () Bool)

(assert (=> b!2420198 (= e!1539842 (matchR!3229 (derivativeStep!1804 (ite c!385699 lt!874975 (Concat!11748 lt!874976 EmptyExpr!7112)) (head!5438 (ite c!385699 s!9460 call!147801))) (tail!3710 (ite c!385699 s!9460 call!147801))))))

(declare-fun b!2420199 () Bool)

(declare-fun res!1027872 () Bool)

(assert (=> b!2420199 (=> res!1027872 e!1539846)))

(assert (=> b!2420199 (= res!1027872 e!1539843)))

(declare-fun res!1027874 () Bool)

(assert (=> b!2420199 (=> (not res!1027874) (not e!1539843))))

(assert (=> b!2420199 (= res!1027874 lt!875066)))

(declare-fun b!2420200 () Bool)

(assert (=> b!2420200 (= e!1539841 (not (= (head!5438 (ite c!385699 s!9460 call!147801)) (c!385700 (ite c!385699 lt!874975 (Concat!11748 lt!874976 EmptyExpr!7112))))))))

(declare-fun b!2420201 () Bool)

(assert (=> b!2420201 (= e!1539842 (nullable!2147 (ite c!385699 lt!874975 (Concat!11748 lt!874976 EmptyExpr!7112))))))

(declare-fun b!2420202 () Bool)

(assert (=> b!2420202 (= e!1539844 (= lt!875066 call!147848))))

(declare-fun b!2420203 () Bool)

(assert (=> b!2420203 (= e!1539843 (= (head!5438 (ite c!385699 s!9460 call!147801)) (c!385700 (ite c!385699 lt!874975 (Concat!11748 lt!874976 EmptyExpr!7112)))))))

(assert (= (and d!701737 c!385793) b!2420201))

(assert (= (and d!701737 (not c!385793)) b!2420198))

(assert (= (and d!701737 c!385792) b!2420202))

(assert (= (and d!701737 (not c!385792)) b!2420191))

(assert (= (and b!2420191 c!385794) b!2420196))

(assert (= (and b!2420191 (not c!385794)) b!2420194))

(assert (= (and b!2420194 (not res!1027875)) b!2420199))

(assert (= (and b!2420199 res!1027874) b!2420195))

(assert (= (and b!2420195 res!1027870) b!2420197))

(assert (= (and b!2420197 res!1027869) b!2420203))

(assert (= (and b!2420199 (not res!1027872)) b!2420192))

(assert (= (and b!2420192 res!1027871) b!2420193))

(assert (= (and b!2420193 (not res!1027868)) b!2420190))

(assert (= (and b!2420190 (not res!1027873)) b!2420200))

(assert (= (or b!2420202 b!2420193 b!2420195) bm!147843))

(declare-fun m!2807237 () Bool)

(assert (=> b!2420197 m!2807237))

(assert (=> b!2420197 m!2807237))

(declare-fun m!2807239 () Bool)

(assert (=> b!2420197 m!2807239))

(declare-fun m!2807241 () Bool)

(assert (=> b!2420200 m!2807241))

(declare-fun m!2807243 () Bool)

(assert (=> b!2420201 m!2807243))

(assert (=> b!2420190 m!2807237))

(assert (=> b!2420190 m!2807237))

(assert (=> b!2420190 m!2807239))

(assert (=> b!2420198 m!2807241))

(assert (=> b!2420198 m!2807241))

(declare-fun m!2807245 () Bool)

(assert (=> b!2420198 m!2807245))

(assert (=> b!2420198 m!2807237))

(assert (=> b!2420198 m!2807245))

(assert (=> b!2420198 m!2807237))

(declare-fun m!2807247 () Bool)

(assert (=> b!2420198 m!2807247))

(declare-fun m!2807249 () Bool)

(assert (=> d!701737 m!2807249))

(declare-fun m!2807251 () Bool)

(assert (=> d!701737 m!2807251))

(assert (=> bm!147843 m!2807249))

(assert (=> b!2420203 m!2807241))

(assert (=> bm!147792 d!701737))

(declare-fun d!701739 () Bool)

(assert (=> d!701739 (= (isDefined!4439 call!147799) (not (isEmpty!16385 call!147799)))))

(declare-fun bs!463697 () Bool)

(assert (= bs!463697 d!701739))

(declare-fun m!2807253 () Bool)

(assert (=> bs!463697 m!2807253))

(assert (=> bm!147793 d!701739))

(declare-fun b!2420214 () Bool)

(declare-fun e!1539849 () Bool)

(assert (=> b!2420214 (= e!1539849 tp_is_empty!11637)))

(declare-fun b!2420215 () Bool)

(declare-fun tp!769208 () Bool)

(declare-fun tp!769212 () Bool)

(assert (=> b!2420215 (= e!1539849 (and tp!769208 tp!769212))))

(declare-fun b!2420217 () Bool)

(declare-fun tp!769209 () Bool)

(declare-fun tp!769210 () Bool)

(assert (=> b!2420217 (= e!1539849 (and tp!769209 tp!769210))))

(assert (=> b!2419772 (= tp!769173 e!1539849)))

(declare-fun b!2420216 () Bool)

(declare-fun tp!769211 () Bool)

(assert (=> b!2420216 (= e!1539849 tp!769211)))

(assert (= (and b!2419772 (is-ElementMatch!7112 (h!33766 l!9164))) b!2420214))

(assert (= (and b!2419772 (is-Concat!11748 (h!33766 l!9164))) b!2420215))

(assert (= (and b!2419772 (is-Star!7112 (h!33766 l!9164))) b!2420216))

(assert (= (and b!2419772 (is-Union!7112 (h!33766 l!9164))) b!2420217))

(declare-fun b!2420222 () Bool)

(declare-fun e!1539852 () Bool)

(declare-fun tp!769217 () Bool)

(declare-fun tp!769218 () Bool)

(assert (=> b!2420222 (= e!1539852 (and tp!769217 tp!769218))))

(assert (=> b!2419772 (= tp!769168 e!1539852)))

(assert (= (and b!2419772 (is-Cons!28365 (t!208440 l!9164))) b!2420222))

(declare-fun b!2420223 () Bool)

(declare-fun e!1539853 () Bool)

(assert (=> b!2420223 (= e!1539853 tp_is_empty!11637)))

(declare-fun b!2420224 () Bool)

(declare-fun tp!769219 () Bool)

(declare-fun tp!769223 () Bool)

(assert (=> b!2420224 (= e!1539853 (and tp!769219 tp!769223))))

(declare-fun b!2420226 () Bool)

(declare-fun tp!769220 () Bool)

(declare-fun tp!769221 () Bool)

(assert (=> b!2420226 (= e!1539853 (and tp!769220 tp!769221))))

(assert (=> b!2419778 (= tp!769172 e!1539853)))

(declare-fun b!2420225 () Bool)

(declare-fun tp!769222 () Bool)

(assert (=> b!2420225 (= e!1539853 tp!769222)))

(assert (= (and b!2419778 (is-ElementMatch!7112 (reg!7441 r!13927))) b!2420223))

(assert (= (and b!2419778 (is-Concat!11748 (reg!7441 r!13927))) b!2420224))

(assert (= (and b!2419778 (is-Star!7112 (reg!7441 r!13927))) b!2420225))

(assert (= (and b!2419778 (is-Union!7112 (reg!7441 r!13927))) b!2420226))

(declare-fun b!2420227 () Bool)

(declare-fun e!1539854 () Bool)

(assert (=> b!2420227 (= e!1539854 tp_is_empty!11637)))

(declare-fun b!2420228 () Bool)

(declare-fun tp!769224 () Bool)

(declare-fun tp!769228 () Bool)

(assert (=> b!2420228 (= e!1539854 (and tp!769224 tp!769228))))

(declare-fun b!2420230 () Bool)

(declare-fun tp!769225 () Bool)

(declare-fun tp!769226 () Bool)

(assert (=> b!2420230 (= e!1539854 (and tp!769225 tp!769226))))

(assert (=> b!2419779 (= tp!769170 e!1539854)))

(declare-fun b!2420229 () Bool)

(declare-fun tp!769227 () Bool)

(assert (=> b!2420229 (= e!1539854 tp!769227)))

(assert (= (and b!2419779 (is-ElementMatch!7112 (regOne!14737 r!13927))) b!2420227))

(assert (= (and b!2419779 (is-Concat!11748 (regOne!14737 r!13927))) b!2420228))

(assert (= (and b!2419779 (is-Star!7112 (regOne!14737 r!13927))) b!2420229))

(assert (= (and b!2419779 (is-Union!7112 (regOne!14737 r!13927))) b!2420230))

(declare-fun b!2420231 () Bool)

(declare-fun e!1539855 () Bool)

(assert (=> b!2420231 (= e!1539855 tp_is_empty!11637)))

(declare-fun b!2420232 () Bool)

(declare-fun tp!769229 () Bool)

(declare-fun tp!769233 () Bool)

(assert (=> b!2420232 (= e!1539855 (and tp!769229 tp!769233))))

(declare-fun b!2420234 () Bool)

(declare-fun tp!769230 () Bool)

(declare-fun tp!769231 () Bool)

(assert (=> b!2420234 (= e!1539855 (and tp!769230 tp!769231))))

(assert (=> b!2419779 (= tp!769171 e!1539855)))

(declare-fun b!2420233 () Bool)

(declare-fun tp!769232 () Bool)

(assert (=> b!2420233 (= e!1539855 tp!769232)))

(assert (= (and b!2419779 (is-ElementMatch!7112 (regTwo!14737 r!13927))) b!2420231))

(assert (= (and b!2419779 (is-Concat!11748 (regTwo!14737 r!13927))) b!2420232))

(assert (= (and b!2419779 (is-Star!7112 (regTwo!14737 r!13927))) b!2420233))

(assert (= (and b!2419779 (is-Union!7112 (regTwo!14737 r!13927))) b!2420234))

(declare-fun b!2420239 () Bool)

(declare-fun e!1539858 () Bool)

(declare-fun tp!769236 () Bool)

(assert (=> b!2420239 (= e!1539858 (and tp_is_empty!11637 tp!769236))))

(assert (=> b!2419765 (= tp!769166 e!1539858)))

(assert (= (and b!2419765 (is-Cons!28364 (t!208439 s!9460))) b!2420239))

(declare-fun b!2420240 () Bool)

(declare-fun e!1539859 () Bool)

(assert (=> b!2420240 (= e!1539859 tp_is_empty!11637)))

(declare-fun b!2420241 () Bool)

(declare-fun tp!769237 () Bool)

(declare-fun tp!769241 () Bool)

(assert (=> b!2420241 (= e!1539859 (and tp!769237 tp!769241))))

(declare-fun b!2420243 () Bool)

(declare-fun tp!769238 () Bool)

(declare-fun tp!769239 () Bool)

(assert (=> b!2420243 (= e!1539859 (and tp!769238 tp!769239))))

(assert (=> b!2419770 (= tp!769169 e!1539859)))

(declare-fun b!2420242 () Bool)

(declare-fun tp!769240 () Bool)

(assert (=> b!2420242 (= e!1539859 tp!769240)))

(assert (= (and b!2419770 (is-ElementMatch!7112 (regOne!14736 r!13927))) b!2420240))

(assert (= (and b!2419770 (is-Concat!11748 (regOne!14736 r!13927))) b!2420241))

(assert (= (and b!2419770 (is-Star!7112 (regOne!14736 r!13927))) b!2420242))

(assert (= (and b!2419770 (is-Union!7112 (regOne!14736 r!13927))) b!2420243))

(declare-fun b!2420244 () Bool)

(declare-fun e!1539860 () Bool)

(assert (=> b!2420244 (= e!1539860 tp_is_empty!11637)))

(declare-fun b!2420245 () Bool)

(declare-fun tp!769242 () Bool)

(declare-fun tp!769246 () Bool)

(assert (=> b!2420245 (= e!1539860 (and tp!769242 tp!769246))))

(declare-fun b!2420247 () Bool)

(declare-fun tp!769243 () Bool)

(declare-fun tp!769244 () Bool)

(assert (=> b!2420247 (= e!1539860 (and tp!769243 tp!769244))))

(assert (=> b!2419770 (= tp!769167 e!1539860)))

(declare-fun b!2420246 () Bool)

(declare-fun tp!769245 () Bool)

(assert (=> b!2420246 (= e!1539860 tp!769245)))

(assert (= (and b!2419770 (is-ElementMatch!7112 (regTwo!14736 r!13927))) b!2420244))

(assert (= (and b!2419770 (is-Concat!11748 (regTwo!14736 r!13927))) b!2420245))

(assert (= (and b!2419770 (is-Star!7112 (regTwo!14736 r!13927))) b!2420246))

(assert (= (and b!2419770 (is-Union!7112 (regTwo!14736 r!13927))) b!2420247))

(declare-fun b_lambda!74631 () Bool)

(assert (= b_lambda!74629 (or start!237046 b_lambda!74631)))

(declare-fun bs!463698 () Bool)

(declare-fun d!701741 () Bool)

(assert (= bs!463698 (and d!701741 start!237046)))

(assert (=> bs!463698 (= (dynLambda!12207 lambda!91140 (h!33766 l!9164)) (validRegex!2832 (h!33766 l!9164)))))

(assert (=> bs!463698 m!2806939))

(assert (=> b!2420059 d!701741))

(push 1)

(assert (not b!2420160))

(assert (not b!2420175))

(assert (not b!2419867))

(assert (not b!2420084))

(assert (not d!701687))

(assert (not d!701707))

(assert (not b!2420246))

(assert (not b!2420071))

(assert (not b!2420031))

(assert (not b!2420216))

(assert (not b!2420080))

(assert (not d!701725))

(assert (not b!2420224))

(assert (not b!2420167))

(assert (not b!2420217))

(assert (not b!2420242))

(assert (not b!2420157))

(assert (not b!2419920))

(assert (not b!2420201))

(assert (not d!701729))

(assert (not bm!147826))

(assert (not b!2420086))

(assert (not b!2420187))

(assert (not b!2419930))

(assert (not b!2420083))

(assert (not b!2420247))

(assert (not b!2420245))

(assert (not d!701715))

(assert (not b!2420222))

(assert (not b!2419879))

(assert (not b!2420060))

(assert (not b!2419875))

(assert (not b!2419928))

(assert (not b!2420241))

(assert (not bm!147837))

(assert (not b!2420174))

(assert (not b!2420024))

(assert (not b!2420168))

(assert (not b!2419971))

(assert (not d!701723))

(assert (not b!2420225))

(assert (not b_lambda!74631))

(assert (not b!2420025))

(assert (not d!701713))

(assert (not b!2420166))

(assert (not b!2420232))

(assert (not b!2419975))

(assert (not d!701717))

(assert (not b!2419976))

(assert (not b!2420215))

(assert (not b!2420184))

(assert (not b!2420073))

(assert (not bm!147843))

(assert (not b!2420189))

(assert (not b!2419972))

(assert (not b!2419869))

(assert (not b!2419967))

(assert (not b!2420234))

(assert (not b!2420049))

(assert (not d!701731))

(assert (not b!2420183))

(assert (not b!2419927))

(assert (not d!701693))

(assert (not b!2420170))

(assert (not b!2419933))

(assert (not b!2420186))

(assert (not b!2420176))

(assert (not b!2420226))

(assert (not bm!147818))

(assert (not b!2420171))

(assert (not b!2420203))

(assert (not b!2420198))

(assert (not d!701733))

(assert (not b!2420047))

(assert (not b!2419969))

(assert (not bs!463698))

(assert (not bm!147831))

(assert (not b!2420081))

(assert (not b!2419876))

(assert (not bm!147827))

(assert (not b!2419968))

(assert (not d!701697))

(assert (not bm!147836))

(assert (not b!2420023))

(assert (not b!2420190))

(assert (not b!2419958))

(assert (not b!2420028))

(assert (not d!701681))

(assert (not bm!147840))

(assert (not d!701683))

(assert (not b!2420046))

(assert (not b!2420239))

(assert (not b!2420054))

(assert (not b!2420230))

(assert (not b!2419872))

(assert (not b!2420229))

(assert (not b!2420197))

(assert (not b!2420200))

(assert (not b!2419871))

(assert (not b!2420051))

(assert (not d!701739))

(assert (not b!2419931))

(assert (not b!2420243))

(assert (not b!2419868))

(assert (not b!2420048))

(assert (not d!701737))

(assert tp_is_empty!11637)

(assert (not b!2420228))

(assert (not b!2420026))

(assert (not b!2420233))

(assert (not b!2420070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

