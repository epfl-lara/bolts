; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!666232 () Bool)

(assert start!666232)

(declare-fun b!6933872 () Bool)

(assert (=> b!6933872 true))

(assert (=> b!6933872 true))

(assert (=> b!6933872 true))

(declare-fun lambda!394696 () Int)

(declare-fun lambda!394695 () Int)

(assert (=> b!6933872 (not (= lambda!394696 lambda!394695))))

(assert (=> b!6933872 true))

(assert (=> b!6933872 true))

(assert (=> b!6933872 true))

(declare-fun bs!1851376 () Bool)

(declare-fun b!6933879 () Bool)

(assert (= bs!1851376 (and b!6933879 b!6933872)))

(declare-fun lambda!394697 () Int)

(declare-datatypes ((C!34174 0))(
  ( (C!34175 (val!26789 Int)) )
))
(declare-datatypes ((Regex!16952 0))(
  ( (ElementMatch!16952 (c!1286780 C!34174)) (Concat!25797 (regOne!34416 Regex!16952) (regTwo!34416 Regex!16952)) (EmptyExpr!16952) (Star!16952 (reg!17281 Regex!16952)) (EmptyLang!16952) (Union!16952 (regOne!34417 Regex!16952) (regTwo!34417 Regex!16952)) )
))
(declare-fun r1!6342 () Regex!16952)

(declare-datatypes ((List!66705 0))(
  ( (Nil!66581) (Cons!66581 (h!73029 C!34174) (t!380448 List!66705)) )
))
(declare-datatypes ((tuple2!67618 0))(
  ( (tuple2!67619 (_1!37112 List!66705) (_2!37112 List!66705)) )
))
(declare-fun lt!2473836 () tuple2!67618)

(declare-fun r3!135 () Regex!16952)

(declare-fun s!14361 () List!66705)

(declare-fun r2!6280 () Regex!16952)

(declare-fun lt!2473823 () Regex!16952)

(assert (=> bs!1851376 (= (and (= (_2!37112 lt!2473836) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473823)) (= lambda!394697 lambda!394695))))

(assert (=> bs!1851376 (not (= lambda!394697 lambda!394696))))

(assert (=> b!6933879 true))

(assert (=> b!6933879 true))

(assert (=> b!6933879 true))

(declare-fun lambda!394698 () Int)

(assert (=> bs!1851376 (not (= lambda!394698 lambda!394695))))

(assert (=> bs!1851376 (= (and (= (_2!37112 lt!2473836) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473823)) (= lambda!394698 lambda!394696))))

(assert (=> b!6933879 (not (= lambda!394698 lambda!394697))))

(assert (=> b!6933879 true))

(assert (=> b!6933879 true))

(assert (=> b!6933879 true))

(declare-fun bs!1851377 () Bool)

(declare-fun b!6933865 () Bool)

(assert (= bs!1851377 (and b!6933865 b!6933872)))

(declare-fun lambda!394699 () Int)

(declare-fun lt!2473822 () List!66705)

(assert (=> bs!1851377 (= (and (= lt!2473822 s!14361) (= r2!6280 lt!2473823)) (= lambda!394699 lambda!394695))))

(assert (=> bs!1851377 (not (= lambda!394699 lambda!394696))))

(declare-fun bs!1851378 () Bool)

(assert (= bs!1851378 (and b!6933865 b!6933879)))

(assert (=> bs!1851378 (= (and (= lt!2473822 (_2!37112 lt!2473836)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394699 lambda!394697))))

(assert (=> bs!1851378 (not (= lambda!394699 lambda!394698))))

(assert (=> b!6933865 true))

(assert (=> b!6933865 true))

(assert (=> b!6933865 true))

(declare-fun lambda!394700 () Int)

(assert (=> bs!1851377 (not (= lambda!394700 lambda!394695))))

(assert (=> b!6933865 (not (= lambda!394700 lambda!394699))))

(assert (=> bs!1851378 (= (and (= lt!2473822 (_2!37112 lt!2473836)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394700 lambda!394698))))

(assert (=> bs!1851377 (= (and (= lt!2473822 s!14361) (= r2!6280 lt!2473823)) (= lambda!394700 lambda!394696))))

(assert (=> bs!1851378 (not (= lambda!394700 lambda!394697))))

(assert (=> b!6933865 true))

(assert (=> b!6933865 true))

(assert (=> b!6933865 true))

(declare-fun b!6933860 () Bool)

(declare-fun e!4171902 () Bool)

(declare-fun e!4171907 () Bool)

(assert (=> b!6933860 (= e!4171902 (not e!4171907))))

(declare-fun res!2827999 () Bool)

(assert (=> b!6933860 (=> res!2827999 e!4171907)))

(declare-fun lt!2473841 () Bool)

(assert (=> b!6933860 (= res!2827999 lt!2473841)))

(declare-fun lt!2473819 () Regex!16952)

(declare-fun matchR!9091 (Regex!16952 List!66705) Bool)

(declare-fun matchRSpec!4009 (Regex!16952 List!66705) Bool)

(assert (=> b!6933860 (= (matchR!9091 lt!2473819 s!14361) (matchRSpec!4009 lt!2473819 s!14361))))

(declare-datatypes ((Unit!160628 0))(
  ( (Unit!160629) )
))
(declare-fun lt!2473826 () Unit!160628)

(declare-fun mainMatchTheorem!4009 (Regex!16952 List!66705) Unit!160628)

(assert (=> b!6933860 (= lt!2473826 (mainMatchTheorem!4009 lt!2473819 s!14361))))

(declare-fun lt!2473839 () Regex!16952)

(assert (=> b!6933860 (= lt!2473841 (matchRSpec!4009 lt!2473839 s!14361))))

(assert (=> b!6933860 (= lt!2473841 (matchR!9091 lt!2473839 s!14361))))

(declare-fun lt!2473833 () Unit!160628)

(assert (=> b!6933860 (= lt!2473833 (mainMatchTheorem!4009 lt!2473839 s!14361))))

(assert (=> b!6933860 (= lt!2473819 (Concat!25797 r1!6342 lt!2473823))))

(assert (=> b!6933860 (= lt!2473823 (Concat!25797 r2!6280 r3!135))))

(declare-fun lt!2473820 () Regex!16952)

(assert (=> b!6933860 (= lt!2473839 (Concat!25797 lt!2473820 r3!135))))

(assert (=> b!6933860 (= lt!2473820 (Concat!25797 r1!6342 r2!6280))))

(declare-fun b!6933861 () Bool)

(declare-fun e!4171906 () Bool)

(declare-fun tp_is_empty!43129 () Bool)

(assert (=> b!6933861 (= e!4171906 tp_is_empty!43129)))

(declare-fun b!6933862 () Bool)

(declare-fun tp!1911507 () Bool)

(declare-fun tp!1911503 () Bool)

(assert (=> b!6933862 (= e!4171906 (and tp!1911507 tp!1911503))))

(declare-fun b!6933863 () Bool)

(declare-fun res!2828001 () Bool)

(declare-fun e!4171905 () Bool)

(assert (=> b!6933863 (=> res!2828001 e!4171905)))

(declare-fun lt!2473832 () tuple2!67618)

(assert (=> b!6933863 (= res!2828001 (not (matchR!9091 r3!135 (_2!37112 lt!2473832))))))

(declare-fun b!6933864 () Bool)

(declare-fun e!4171911 () Bool)

(declare-fun tp!1911499 () Bool)

(assert (=> b!6933864 (= e!4171911 tp!1911499)))

(declare-fun e!4171909 () Bool)

(declare-fun e!4171904 () Bool)

(assert (=> b!6933865 (= e!4171909 e!4171904)))

(declare-fun res!2827998 () Bool)

(assert (=> b!6933865 (=> res!2827998 e!4171904)))

(declare-fun isPrefix!5813 (List!66705 List!66705) Bool)

(assert (=> b!6933865 (= res!2827998 (not (isPrefix!5813 Nil!66581 (_1!37112 lt!2473836))))))

(declare-fun Exists!3952 (Int) Bool)

(assert (=> b!6933865 (= (Exists!3952 lambda!394699) (Exists!3952 lambda!394700))))

(declare-fun lt!2473818 () Unit!160628)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2413 (Regex!16952 Regex!16952 List!66705) Unit!160628)

(assert (=> b!6933865 (= lt!2473818 (lemmaExistCutMatchRandMatchRSpecEquivalent!2413 r1!6342 r2!6280 lt!2473822))))

(declare-datatypes ((Option!16721 0))(
  ( (None!16720) (Some!16720 (v!52992 tuple2!67618)) )
))
(declare-fun isDefined!13422 (Option!16721) Bool)

(declare-fun findConcatSeparation!3135 (Regex!16952 Regex!16952 List!66705 List!66705 List!66705) Option!16721)

(assert (=> b!6933865 (= (isDefined!13422 (findConcatSeparation!3135 r1!6342 r2!6280 Nil!66581 lt!2473822 lt!2473822)) (Exists!3952 lambda!394699))))

(declare-fun lt!2473830 () Unit!160628)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2893 (Regex!16952 Regex!16952 List!66705) Unit!160628)

(assert (=> b!6933865 (= lt!2473830 (lemmaFindConcatSeparationEquivalentToExists!2893 r1!6342 r2!6280 lt!2473822))))

(assert (=> b!6933865 (= (matchR!9091 lt!2473820 lt!2473822) (matchRSpec!4009 lt!2473820 lt!2473822))))

(declare-fun lt!2473829 () Unit!160628)

(assert (=> b!6933865 (= lt!2473829 (mainMatchTheorem!4009 lt!2473820 lt!2473822))))

(declare-fun lt!2473828 () List!66705)

(declare-fun ++!14991 (List!66705 List!66705) List!66705)

(assert (=> b!6933865 (= (++!14991 lt!2473822 (_2!37112 lt!2473832)) lt!2473828)))

(assert (=> b!6933865 (= lt!2473822 (++!14991 (_1!37112 lt!2473836) (_1!37112 lt!2473832)))))

(declare-fun lt!2473834 () Unit!160628)

(declare-fun lemmaConcatAssociativity!3033 (List!66705 List!66705 List!66705) Unit!160628)

(assert (=> b!6933865 (= lt!2473834 (lemmaConcatAssociativity!3033 (_1!37112 lt!2473836) (_1!37112 lt!2473832) (_2!37112 lt!2473832)))))

(declare-fun res!2828002 () Bool)

(assert (=> start!666232 (=> (not res!2828002) (not e!4171902))))

(declare-fun validRegex!8658 (Regex!16952) Bool)

(assert (=> start!666232 (= res!2828002 (validRegex!8658 r1!6342))))

(assert (=> start!666232 e!4171902))

(assert (=> start!666232 e!4171906))

(assert (=> start!666232 e!4171911))

(declare-fun e!4171901 () Bool)

(assert (=> start!666232 e!4171901))

(declare-fun e!4171910 () Bool)

(assert (=> start!666232 e!4171910))

(declare-fun b!6933866 () Bool)

(declare-fun tp!1911494 () Bool)

(assert (=> b!6933866 (= e!4171910 (and tp_is_empty!43129 tp!1911494))))

(declare-fun b!6933867 () Bool)

(declare-fun tp!1911496 () Bool)

(declare-fun tp!1911492 () Bool)

(assert (=> b!6933867 (= e!4171901 (and tp!1911496 tp!1911492))))

(declare-fun b!6933868 () Bool)

(declare-fun res!2828000 () Bool)

(declare-fun e!4171908 () Bool)

(assert (=> b!6933868 (=> res!2828000 e!4171908)))

(assert (=> b!6933868 (= res!2828000 (not (matchR!9091 lt!2473823 (_2!37112 lt!2473836))))))

(declare-fun b!6933869 () Bool)

(assert (=> b!6933869 (= e!4171905 e!4171909)))

(declare-fun res!2828007 () Bool)

(assert (=> b!6933869 (=> res!2828007 e!4171909)))

(assert (=> b!6933869 (= res!2828007 (not (= lt!2473828 s!14361)))))

(assert (=> b!6933869 (= lt!2473828 (++!14991 (_1!37112 lt!2473836) (++!14991 (_1!37112 lt!2473832) (_2!37112 lt!2473832))))))

(assert (=> b!6933869 (matchRSpec!4009 r3!135 (_2!37112 lt!2473832))))

(declare-fun lt!2473835 () Unit!160628)

(assert (=> b!6933869 (= lt!2473835 (mainMatchTheorem!4009 r3!135 (_2!37112 lt!2473832)))))

(assert (=> b!6933869 (matchRSpec!4009 r2!6280 (_1!37112 lt!2473832))))

(declare-fun lt!2473840 () Unit!160628)

(assert (=> b!6933869 (= lt!2473840 (mainMatchTheorem!4009 r2!6280 (_1!37112 lt!2473832)))))

(declare-fun b!6933870 () Bool)

(declare-fun e!4171903 () Bool)

(assert (=> b!6933870 (= e!4171907 e!4171903)))

(declare-fun res!2827997 () Bool)

(assert (=> b!6933870 (=> res!2827997 e!4171903)))

(declare-fun lt!2473843 () Option!16721)

(assert (=> b!6933870 (= res!2827997 (not (isDefined!13422 lt!2473843)))))

(assert (=> b!6933870 (= lt!2473843 (findConcatSeparation!3135 r1!6342 lt!2473823 Nil!66581 s!14361 s!14361))))

(declare-fun b!6933871 () Bool)

(declare-fun res!2828006 () Bool)

(assert (=> b!6933871 (=> (not res!2828006) (not e!4171902))))

(assert (=> b!6933871 (= res!2828006 (validRegex!8658 r2!6280))))

(assert (=> b!6933872 (= e!4171903 e!4171908)))

(declare-fun res!2828004 () Bool)

(assert (=> b!6933872 (=> res!2828004 e!4171908)))

(declare-fun lt!2473821 () Bool)

(assert (=> b!6933872 (= res!2828004 (not lt!2473821))))

(assert (=> b!6933872 (= lt!2473821 (matchRSpec!4009 r1!6342 (_1!37112 lt!2473836)))))

(assert (=> b!6933872 (= lt!2473821 (matchR!9091 r1!6342 (_1!37112 lt!2473836)))))

(declare-fun lt!2473831 () Unit!160628)

(assert (=> b!6933872 (= lt!2473831 (mainMatchTheorem!4009 r1!6342 (_1!37112 lt!2473836)))))

(declare-fun get!23365 (Option!16721) tuple2!67618)

(assert (=> b!6933872 (= lt!2473836 (get!23365 lt!2473843))))

(assert (=> b!6933872 (= (Exists!3952 lambda!394695) (Exists!3952 lambda!394696))))

(declare-fun lt!2473824 () Unit!160628)

(assert (=> b!6933872 (= lt!2473824 (lemmaExistCutMatchRandMatchRSpecEquivalent!2413 r1!6342 lt!2473823 s!14361))))

(assert (=> b!6933872 (Exists!3952 lambda!394695)))

(declare-fun lt!2473827 () Unit!160628)

(assert (=> b!6933872 (= lt!2473827 (lemmaFindConcatSeparationEquivalentToExists!2893 r1!6342 lt!2473823 s!14361))))

(declare-fun b!6933873 () Bool)

(declare-fun tp!1911493 () Bool)

(declare-fun tp!1911495 () Bool)

(assert (=> b!6933873 (= e!4171901 (and tp!1911493 tp!1911495))))

(declare-fun b!6933874 () Bool)

(assert (=> b!6933874 (= e!4171911 tp_is_empty!43129)))

(declare-fun b!6933875 () Bool)

(declare-fun tp!1911501 () Bool)

(assert (=> b!6933875 (= e!4171906 tp!1911501)))

(declare-fun b!6933876 () Bool)

(assert (=> b!6933876 (= e!4171901 tp_is_empty!43129)))

(declare-fun b!6933877 () Bool)

(declare-fun tp!1911506 () Bool)

(declare-fun tp!1911498 () Bool)

(assert (=> b!6933877 (= e!4171906 (and tp!1911506 tp!1911498))))

(declare-fun b!6933878 () Bool)

(declare-fun tp!1911500 () Bool)

(assert (=> b!6933878 (= e!4171901 tp!1911500)))

(assert (=> b!6933879 (= e!4171908 e!4171905)))

(declare-fun res!2828003 () Bool)

(assert (=> b!6933879 (=> res!2828003 e!4171905)))

(assert (=> b!6933879 (= res!2828003 (not (matchR!9091 r2!6280 (_1!37112 lt!2473832))))))

(declare-fun lt!2473842 () Option!16721)

(assert (=> b!6933879 (= lt!2473832 (get!23365 lt!2473842))))

(assert (=> b!6933879 (= (Exists!3952 lambda!394697) (Exists!3952 lambda!394698))))

(declare-fun lt!2473837 () Unit!160628)

(assert (=> b!6933879 (= lt!2473837 (lemmaExistCutMatchRandMatchRSpecEquivalent!2413 r2!6280 r3!135 (_2!37112 lt!2473836)))))

(assert (=> b!6933879 (= (isDefined!13422 lt!2473842) (Exists!3952 lambda!394697))))

(assert (=> b!6933879 (= lt!2473842 (findConcatSeparation!3135 r2!6280 r3!135 Nil!66581 (_2!37112 lt!2473836) (_2!37112 lt!2473836)))))

(declare-fun lt!2473825 () Unit!160628)

(assert (=> b!6933879 (= lt!2473825 (lemmaFindConcatSeparationEquivalentToExists!2893 r2!6280 r3!135 (_2!37112 lt!2473836)))))

(assert (=> b!6933879 (matchRSpec!4009 lt!2473823 (_2!37112 lt!2473836))))

(declare-fun lt!2473838 () Unit!160628)

(assert (=> b!6933879 (= lt!2473838 (mainMatchTheorem!4009 lt!2473823 (_2!37112 lt!2473836)))))

(declare-fun b!6933880 () Bool)

(declare-fun tp!1911497 () Bool)

(declare-fun tp!1911502 () Bool)

(assert (=> b!6933880 (= e!4171911 (and tp!1911497 tp!1911502))))

(declare-fun b!6933881 () Bool)

(declare-fun tp!1911505 () Bool)

(declare-fun tp!1911504 () Bool)

(assert (=> b!6933881 (= e!4171911 (and tp!1911505 tp!1911504))))

(declare-fun b!6933882 () Bool)

(assert (=> b!6933882 (= e!4171904 (= (++!14991 Nil!66581 lt!2473822) lt!2473822))))

(declare-fun b!6933883 () Bool)

(declare-fun res!2828005 () Bool)

(assert (=> b!6933883 (=> (not res!2828005) (not e!4171902))))

(assert (=> b!6933883 (= res!2828005 (validRegex!8658 r3!135))))

(assert (= (and start!666232 res!2828002) b!6933871))

(assert (= (and b!6933871 res!2828006) b!6933883))

(assert (= (and b!6933883 res!2828005) b!6933860))

(assert (= (and b!6933860 (not res!2827999)) b!6933870))

(assert (= (and b!6933870 (not res!2827997)) b!6933872))

(assert (= (and b!6933872 (not res!2828004)) b!6933868))

(assert (= (and b!6933868 (not res!2828000)) b!6933879))

(assert (= (and b!6933879 (not res!2828003)) b!6933863))

(assert (= (and b!6933863 (not res!2828001)) b!6933869))

(assert (= (and b!6933869 (not res!2828007)) b!6933865))

(assert (= (and b!6933865 (not res!2827998)) b!6933882))

(assert (= (and start!666232 (is-ElementMatch!16952 r1!6342)) b!6933861))

(assert (= (and start!666232 (is-Concat!25797 r1!6342)) b!6933877))

(assert (= (and start!666232 (is-Star!16952 r1!6342)) b!6933875))

(assert (= (and start!666232 (is-Union!16952 r1!6342)) b!6933862))

(assert (= (and start!666232 (is-ElementMatch!16952 r2!6280)) b!6933874))

(assert (= (and start!666232 (is-Concat!25797 r2!6280)) b!6933881))

(assert (= (and start!666232 (is-Star!16952 r2!6280)) b!6933864))

(assert (= (and start!666232 (is-Union!16952 r2!6280)) b!6933880))

(assert (= (and start!666232 (is-ElementMatch!16952 r3!135)) b!6933876))

(assert (= (and start!666232 (is-Concat!25797 r3!135)) b!6933873))

(assert (= (and start!666232 (is-Star!16952 r3!135)) b!6933878))

(assert (= (and start!666232 (is-Union!16952 r3!135)) b!6933867))

(assert (= (and start!666232 (is-Cons!66581 s!14361)) b!6933866))

(declare-fun m!7640172 () Bool)

(assert (=> b!6933869 m!7640172))

(declare-fun m!7640174 () Bool)

(assert (=> b!6933869 m!7640174))

(declare-fun m!7640176 () Bool)

(assert (=> b!6933869 m!7640176))

(declare-fun m!7640178 () Bool)

(assert (=> b!6933869 m!7640178))

(declare-fun m!7640180 () Bool)

(assert (=> b!6933869 m!7640180))

(declare-fun m!7640182 () Bool)

(assert (=> b!6933869 m!7640182))

(assert (=> b!6933869 m!7640178))

(declare-fun m!7640184 () Bool)

(assert (=> b!6933879 m!7640184))

(declare-fun m!7640186 () Bool)

(assert (=> b!6933879 m!7640186))

(declare-fun m!7640188 () Bool)

(assert (=> b!6933879 m!7640188))

(declare-fun m!7640190 () Bool)

(assert (=> b!6933879 m!7640190))

(declare-fun m!7640192 () Bool)

(assert (=> b!6933879 m!7640192))

(declare-fun m!7640194 () Bool)

(assert (=> b!6933879 m!7640194))

(declare-fun m!7640196 () Bool)

(assert (=> b!6933879 m!7640196))

(declare-fun m!7640198 () Bool)

(assert (=> b!6933879 m!7640198))

(declare-fun m!7640200 () Bool)

(assert (=> b!6933879 m!7640200))

(assert (=> b!6933879 m!7640190))

(declare-fun m!7640202 () Bool)

(assert (=> b!6933879 m!7640202))

(declare-fun m!7640204 () Bool)

(assert (=> b!6933863 m!7640204))

(declare-fun m!7640206 () Bool)

(assert (=> b!6933882 m!7640206))

(declare-fun m!7640208 () Bool)

(assert (=> b!6933860 m!7640208))

(declare-fun m!7640210 () Bool)

(assert (=> b!6933860 m!7640210))

(declare-fun m!7640212 () Bool)

(assert (=> b!6933860 m!7640212))

(declare-fun m!7640214 () Bool)

(assert (=> b!6933860 m!7640214))

(declare-fun m!7640216 () Bool)

(assert (=> b!6933860 m!7640216))

(declare-fun m!7640218 () Bool)

(assert (=> b!6933860 m!7640218))

(declare-fun m!7640220 () Bool)

(assert (=> b!6933883 m!7640220))

(declare-fun m!7640222 () Bool)

(assert (=> b!6933868 m!7640222))

(declare-fun m!7640224 () Bool)

(assert (=> start!666232 m!7640224))

(declare-fun m!7640226 () Bool)

(assert (=> b!6933865 m!7640226))

(declare-fun m!7640228 () Bool)

(assert (=> b!6933865 m!7640228))

(declare-fun m!7640230 () Bool)

(assert (=> b!6933865 m!7640230))

(assert (=> b!6933865 m!7640230))

(declare-fun m!7640232 () Bool)

(assert (=> b!6933865 m!7640232))

(declare-fun m!7640234 () Bool)

(assert (=> b!6933865 m!7640234))

(declare-fun m!7640236 () Bool)

(assert (=> b!6933865 m!7640236))

(assert (=> b!6933865 m!7640234))

(declare-fun m!7640238 () Bool)

(assert (=> b!6933865 m!7640238))

(declare-fun m!7640240 () Bool)

(assert (=> b!6933865 m!7640240))

(declare-fun m!7640242 () Bool)

(assert (=> b!6933865 m!7640242))

(declare-fun m!7640244 () Bool)

(assert (=> b!6933865 m!7640244))

(declare-fun m!7640246 () Bool)

(assert (=> b!6933865 m!7640246))

(declare-fun m!7640248 () Bool)

(assert (=> b!6933865 m!7640248))

(declare-fun m!7640250 () Bool)

(assert (=> b!6933865 m!7640250))

(declare-fun m!7640252 () Bool)

(assert (=> b!6933870 m!7640252))

(declare-fun m!7640254 () Bool)

(assert (=> b!6933870 m!7640254))

(declare-fun m!7640256 () Bool)

(assert (=> b!6933872 m!7640256))

(declare-fun m!7640258 () Bool)

(assert (=> b!6933872 m!7640258))

(declare-fun m!7640260 () Bool)

(assert (=> b!6933872 m!7640260))

(declare-fun m!7640262 () Bool)

(assert (=> b!6933872 m!7640262))

(assert (=> b!6933872 m!7640262))

(declare-fun m!7640264 () Bool)

(assert (=> b!6933872 m!7640264))

(declare-fun m!7640266 () Bool)

(assert (=> b!6933872 m!7640266))

(declare-fun m!7640268 () Bool)

(assert (=> b!6933872 m!7640268))

(declare-fun m!7640270 () Bool)

(assert (=> b!6933872 m!7640270))

(declare-fun m!7640272 () Bool)

(assert (=> b!6933871 m!7640272))

(push 1)

(assert (not b!6933882))

(assert (not b!6933865))

(assert (not b!6933869))

(assert (not b!6933864))

(assert (not b!6933860))

(assert (not b!6933871))

(assert (not start!666232))

(assert (not b!6933877))

(assert (not b!6933867))

(assert (not b!6933878))

(assert (not b!6933862))

(assert (not b!6933881))

(assert (not b!6933883))

(assert (not b!6933866))

(assert (not b!6933879))

(assert (not b!6933880))

(assert (not b!6933875))

(assert (not b!6933863))

(assert (not b!6933868))

(assert (not b!6933873))

(assert (not b!6933872))

(assert (not b!6933870))

(assert tp_is_empty!43129)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6934032 () Bool)

(declare-fun e!4171977 () Bool)

(declare-fun head!13899 (List!66705) C!34174)

(assert (=> b!6934032 (= e!4171977 (not (= (head!13899 (_2!37112 lt!2473832)) (c!1286780 r3!135))))))

(declare-fun b!6934033 () Bool)

(declare-fun res!2828095 () Bool)

(assert (=> b!6934033 (=> res!2828095 e!4171977)))

(declare-fun isEmpty!38844 (List!66705) Bool)

(declare-fun tail!12951 (List!66705) List!66705)

(assert (=> b!6934033 (= res!2828095 (not (isEmpty!38844 (tail!12951 (_2!37112 lt!2473832)))))))

(declare-fun b!6934034 () Bool)

(declare-fun res!2828096 () Bool)

(declare-fun e!4171980 () Bool)

(assert (=> b!6934034 (=> (not res!2828096) (not e!4171980))))

(assert (=> b!6934034 (= res!2828096 (isEmpty!38844 (tail!12951 (_2!37112 lt!2473832))))))

(declare-fun b!6934035 () Bool)

(declare-fun res!2828098 () Bool)

(declare-fun e!4171979 () Bool)

(assert (=> b!6934035 (=> res!2828098 e!4171979)))

(assert (=> b!6934035 (= res!2828098 e!4171980)))

(declare-fun res!2828097 () Bool)

(assert (=> b!6934035 (=> (not res!2828097) (not e!4171980))))

(declare-fun lt!2473924 () Bool)

(assert (=> b!6934035 (= res!2828097 lt!2473924)))

(declare-fun b!6934036 () Bool)

(declare-fun e!4171978 () Bool)

(assert (=> b!6934036 (= e!4171978 e!4171977)))

(declare-fun res!2828099 () Bool)

(assert (=> b!6934036 (=> res!2828099 e!4171977)))

(declare-fun call!630040 () Bool)

(assert (=> b!6934036 (= res!2828099 call!630040)))

(declare-fun b!6934037 () Bool)

(declare-fun e!4171981 () Bool)

(declare-fun derivativeStep!5446 (Regex!16952 C!34174) Regex!16952)

(assert (=> b!6934037 (= e!4171981 (matchR!9091 (derivativeStep!5446 r3!135 (head!13899 (_2!37112 lt!2473832))) (tail!12951 (_2!37112 lt!2473832))))))

(declare-fun b!6934038 () Bool)

(declare-fun e!4171983 () Bool)

(assert (=> b!6934038 (= e!4171983 (not lt!2473924))))

(declare-fun bm!630035 () Bool)

(assert (=> bm!630035 (= call!630040 (isEmpty!38844 (_2!37112 lt!2473832)))))

(declare-fun b!6934040 () Bool)

(declare-fun nullable!6771 (Regex!16952) Bool)

(assert (=> b!6934040 (= e!4171981 (nullable!6771 r3!135))))

(declare-fun b!6934041 () Bool)

(declare-fun res!2828100 () Bool)

(assert (=> b!6934041 (=> (not res!2828100) (not e!4171980))))

(assert (=> b!6934041 (= res!2828100 (not call!630040))))

(declare-fun b!6934042 () Bool)

(declare-fun e!4171982 () Bool)

(assert (=> b!6934042 (= e!4171982 (= lt!2473924 call!630040))))

(declare-fun b!6934039 () Bool)

(declare-fun res!2828094 () Bool)

(assert (=> b!6934039 (=> res!2828094 e!4171979)))

(assert (=> b!6934039 (= res!2828094 (not (is-ElementMatch!16952 r3!135)))))

(assert (=> b!6934039 (= e!4171983 e!4171979)))

(declare-fun d!2166460 () Bool)

(assert (=> d!2166460 e!4171982))

(declare-fun c!1286788 () Bool)

(assert (=> d!2166460 (= c!1286788 (is-EmptyExpr!16952 r3!135))))

(assert (=> d!2166460 (= lt!2473924 e!4171981)))

(declare-fun c!1286790 () Bool)

(assert (=> d!2166460 (= c!1286790 (isEmpty!38844 (_2!37112 lt!2473832)))))

(assert (=> d!2166460 (validRegex!8658 r3!135)))

(assert (=> d!2166460 (= (matchR!9091 r3!135 (_2!37112 lt!2473832)) lt!2473924)))

(declare-fun b!6934043 () Bool)

(assert (=> b!6934043 (= e!4171980 (= (head!13899 (_2!37112 lt!2473832)) (c!1286780 r3!135)))))

(declare-fun b!6934044 () Bool)

(assert (=> b!6934044 (= e!4171979 e!4171978)))

(declare-fun res!2828093 () Bool)

(assert (=> b!6934044 (=> (not res!2828093) (not e!4171978))))

(assert (=> b!6934044 (= res!2828093 (not lt!2473924))))

(declare-fun b!6934045 () Bool)

(assert (=> b!6934045 (= e!4171982 e!4171983)))

(declare-fun c!1286789 () Bool)

(assert (=> b!6934045 (= c!1286789 (is-EmptyLang!16952 r3!135))))

(assert (= (and d!2166460 c!1286790) b!6934040))

(assert (= (and d!2166460 (not c!1286790)) b!6934037))

(assert (= (and d!2166460 c!1286788) b!6934042))

(assert (= (and d!2166460 (not c!1286788)) b!6934045))

(assert (= (and b!6934045 c!1286789) b!6934038))

(assert (= (and b!6934045 (not c!1286789)) b!6934039))

(assert (= (and b!6934039 (not res!2828094)) b!6934035))

(assert (= (and b!6934035 res!2828097) b!6934041))

(assert (= (and b!6934041 res!2828100) b!6934034))

(assert (= (and b!6934034 res!2828096) b!6934043))

(assert (= (and b!6934035 (not res!2828098)) b!6934044))

(assert (= (and b!6934044 res!2828093) b!6934036))

(assert (= (and b!6934036 (not res!2828099)) b!6934033))

(assert (= (and b!6934033 (not res!2828095)) b!6934032))

(assert (= (or b!6934042 b!6934041 b!6934036) bm!630035))

(declare-fun m!7640376 () Bool)

(assert (=> b!6934032 m!7640376))

(declare-fun m!7640378 () Bool)

(assert (=> bm!630035 m!7640378))

(assert (=> d!2166460 m!7640378))

(assert (=> d!2166460 m!7640220))

(declare-fun m!7640380 () Bool)

(assert (=> b!6934040 m!7640380))

(assert (=> b!6934043 m!7640376))

(declare-fun m!7640382 () Bool)

(assert (=> b!6934033 m!7640382))

(assert (=> b!6934033 m!7640382))

(declare-fun m!7640384 () Bool)

(assert (=> b!6934033 m!7640384))

(assert (=> b!6934037 m!7640376))

(assert (=> b!6934037 m!7640376))

(declare-fun m!7640386 () Bool)

(assert (=> b!6934037 m!7640386))

(assert (=> b!6934037 m!7640382))

(assert (=> b!6934037 m!7640386))

(assert (=> b!6934037 m!7640382))

(declare-fun m!7640388 () Bool)

(assert (=> b!6934037 m!7640388))

(assert (=> b!6934034 m!7640382))

(assert (=> b!6934034 m!7640382))

(assert (=> b!6934034 m!7640384))

(assert (=> b!6933863 d!2166460))

(declare-fun b!6934055 () Bool)

(declare-fun e!4171988 () List!66705)

(assert (=> b!6934055 (= e!4171988 (Cons!66581 (h!73029 Nil!66581) (++!14991 (t!380448 Nil!66581) lt!2473822)))))

(declare-fun b!6934057 () Bool)

(declare-fun e!4171989 () Bool)

(declare-fun lt!2473927 () List!66705)

(assert (=> b!6934057 (= e!4171989 (or (not (= lt!2473822 Nil!66581)) (= lt!2473927 Nil!66581)))))

(declare-fun b!6934054 () Bool)

(assert (=> b!6934054 (= e!4171988 lt!2473822)))

(declare-fun d!2166462 () Bool)

(assert (=> d!2166462 e!4171989))

(declare-fun res!2828105 () Bool)

(assert (=> d!2166462 (=> (not res!2828105) (not e!4171989))))

(declare-fun content!13093 (List!66705) (Set C!34174))

(assert (=> d!2166462 (= res!2828105 (= (content!13093 lt!2473927) (set.union (content!13093 Nil!66581) (content!13093 lt!2473822))))))

(assert (=> d!2166462 (= lt!2473927 e!4171988)))

(declare-fun c!1286793 () Bool)

(assert (=> d!2166462 (= c!1286793 (is-Nil!66581 Nil!66581))))

(assert (=> d!2166462 (= (++!14991 Nil!66581 lt!2473822) lt!2473927)))

(declare-fun b!6934056 () Bool)

(declare-fun res!2828106 () Bool)

(assert (=> b!6934056 (=> (not res!2828106) (not e!4171989))))

(declare-fun size!40790 (List!66705) Int)

(assert (=> b!6934056 (= res!2828106 (= (size!40790 lt!2473927) (+ (size!40790 Nil!66581) (size!40790 lt!2473822))))))

(assert (= (and d!2166462 c!1286793) b!6934054))

(assert (= (and d!2166462 (not c!1286793)) b!6934055))

(assert (= (and d!2166462 res!2828105) b!6934056))

(assert (= (and b!6934056 res!2828106) b!6934057))

(declare-fun m!7640390 () Bool)

(assert (=> b!6934055 m!7640390))

(declare-fun m!7640392 () Bool)

(assert (=> d!2166462 m!7640392))

(declare-fun m!7640394 () Bool)

(assert (=> d!2166462 m!7640394))

(declare-fun m!7640396 () Bool)

(assert (=> d!2166462 m!7640396))

(declare-fun m!7640398 () Bool)

(assert (=> b!6934056 m!7640398))

(declare-fun m!7640400 () Bool)

(assert (=> b!6934056 m!7640400))

(declare-fun m!7640402 () Bool)

(assert (=> b!6934056 m!7640402))

(assert (=> b!6933882 d!2166462))

(declare-fun d!2166464 () Bool)

(assert (=> d!2166464 (= (get!23365 lt!2473843) (v!52992 lt!2473843))))

(assert (=> b!6933872 d!2166464))

(declare-fun d!2166466 () Bool)

(declare-fun choose!51642 (Int) Bool)

(assert (=> d!2166466 (= (Exists!3952 lambda!394695) (choose!51642 lambda!394695))))

(declare-fun bs!1851382 () Bool)

(assert (= bs!1851382 d!2166466))

(declare-fun m!7640404 () Bool)

(assert (=> bs!1851382 m!7640404))

(assert (=> b!6933872 d!2166466))

(declare-fun d!2166468 () Bool)

(assert (=> d!2166468 (= (Exists!3952 lambda!394696) (choose!51642 lambda!394696))))

(declare-fun bs!1851383 () Bool)

(assert (= bs!1851383 d!2166468))

(declare-fun m!7640406 () Bool)

(assert (=> bs!1851383 m!7640406))

(assert (=> b!6933872 d!2166468))

(declare-fun bs!1851384 () Bool)

(declare-fun d!2166470 () Bool)

(assert (= bs!1851384 (and d!2166470 b!6933865)))

(declare-fun lambda!394729 () Int)

(assert (=> bs!1851384 (not (= lambda!394729 lambda!394700))))

(declare-fun bs!1851385 () Bool)

(assert (= bs!1851385 (and d!2166470 b!6933872)))

(assert (=> bs!1851385 (= lambda!394729 lambda!394695)))

(assert (=> bs!1851384 (= (and (= s!14361 lt!2473822) (= lt!2473823 r2!6280)) (= lambda!394729 lambda!394699))))

(declare-fun bs!1851386 () Bool)

(assert (= bs!1851386 (and d!2166470 b!6933879)))

(assert (=> bs!1851386 (not (= lambda!394729 lambda!394698))))

(assert (=> bs!1851385 (not (= lambda!394729 lambda!394696))))

(assert (=> bs!1851386 (= (and (= s!14361 (_2!37112 lt!2473836)) (= r1!6342 r2!6280) (= lt!2473823 r3!135)) (= lambda!394729 lambda!394697))))

(assert (=> d!2166470 true))

(assert (=> d!2166470 true))

(assert (=> d!2166470 true))

(declare-fun bs!1851387 () Bool)

(assert (= bs!1851387 d!2166470))

(declare-fun lambda!394730 () Int)

(assert (=> bs!1851387 (not (= lambda!394730 lambda!394729))))

(assert (=> bs!1851384 (= (and (= s!14361 lt!2473822) (= lt!2473823 r2!6280)) (= lambda!394730 lambda!394700))))

(assert (=> bs!1851385 (not (= lambda!394730 lambda!394695))))

(assert (=> bs!1851384 (not (= lambda!394730 lambda!394699))))

(assert (=> bs!1851386 (= (and (= s!14361 (_2!37112 lt!2473836)) (= r1!6342 r2!6280) (= lt!2473823 r3!135)) (= lambda!394730 lambda!394698))))

(assert (=> bs!1851385 (= lambda!394730 lambda!394696)))

(assert (=> bs!1851386 (not (= lambda!394730 lambda!394697))))

(assert (=> d!2166470 true))

(assert (=> d!2166470 true))

(assert (=> d!2166470 true))

(assert (=> d!2166470 (= (Exists!3952 lambda!394729) (Exists!3952 lambda!394730))))

(declare-fun lt!2473930 () Unit!160628)

(declare-fun choose!51643 (Regex!16952 Regex!16952 List!66705) Unit!160628)

(assert (=> d!2166470 (= lt!2473930 (choose!51643 r1!6342 lt!2473823 s!14361))))

(assert (=> d!2166470 (validRegex!8658 r1!6342)))

(assert (=> d!2166470 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2413 r1!6342 lt!2473823 s!14361) lt!2473930)))

(declare-fun m!7640408 () Bool)

(assert (=> bs!1851387 m!7640408))

(declare-fun m!7640410 () Bool)

(assert (=> bs!1851387 m!7640410))

(declare-fun m!7640412 () Bool)

(assert (=> bs!1851387 m!7640412))

(assert (=> bs!1851387 m!7640224))

(assert (=> b!6933872 d!2166470))

(declare-fun bs!1851390 () Bool)

(declare-fun b!6934104 () Bool)

(assert (= bs!1851390 (and b!6934104 d!2166470)))

(declare-fun lambda!394735 () Int)

(assert (=> bs!1851390 (not (= lambda!394735 lambda!394729))))

(assert (=> bs!1851390 (not (= lambda!394735 lambda!394730))))

(declare-fun bs!1851391 () Bool)

(assert (= bs!1851391 (and b!6934104 b!6933865)))

(assert (=> bs!1851391 (not (= lambda!394735 lambda!394700))))

(declare-fun bs!1851392 () Bool)

(assert (= bs!1851392 (and b!6934104 b!6933872)))

(assert (=> bs!1851392 (not (= lambda!394735 lambda!394695))))

(assert (=> bs!1851391 (not (= lambda!394735 lambda!394699))))

(declare-fun bs!1851393 () Bool)

(assert (= bs!1851393 (and b!6934104 b!6933879)))

(assert (=> bs!1851393 (not (= lambda!394735 lambda!394698))))

(assert (=> bs!1851392 (not (= lambda!394735 lambda!394696))))

(assert (=> bs!1851393 (not (= lambda!394735 lambda!394697))))

(assert (=> b!6934104 true))

(assert (=> b!6934104 true))

(declare-fun bs!1851394 () Bool)

(declare-fun b!6934100 () Bool)

(assert (= bs!1851394 (and b!6934100 d!2166470)))

(declare-fun lambda!394736 () Int)

(assert (=> bs!1851394 (not (= lambda!394736 lambda!394729))))

(assert (=> bs!1851394 (= (and (= (_1!37112 lt!2473836) s!14361) (= (regOne!34416 r1!6342) r1!6342) (= (regTwo!34416 r1!6342) lt!2473823)) (= lambda!394736 lambda!394730))))

(declare-fun bs!1851395 () Bool)

(assert (= bs!1851395 (and b!6934100 b!6933865)))

(assert (=> bs!1851395 (= (and (= (_1!37112 lt!2473836) lt!2473822) (= (regOne!34416 r1!6342) r1!6342) (= (regTwo!34416 r1!6342) r2!6280)) (= lambda!394736 lambda!394700))))

(assert (=> bs!1851395 (not (= lambda!394736 lambda!394699))))

(declare-fun bs!1851396 () Bool)

(assert (= bs!1851396 (and b!6934100 b!6933879)))

(assert (=> bs!1851396 (= (and (= (_1!37112 lt!2473836) (_2!37112 lt!2473836)) (= (regOne!34416 r1!6342) r2!6280) (= (regTwo!34416 r1!6342) r3!135)) (= lambda!394736 lambda!394698))))

(declare-fun bs!1851397 () Bool)

(assert (= bs!1851397 (and b!6934100 b!6933872)))

(assert (=> bs!1851397 (= (and (= (_1!37112 lt!2473836) s!14361) (= (regOne!34416 r1!6342) r1!6342) (= (regTwo!34416 r1!6342) lt!2473823)) (= lambda!394736 lambda!394696))))

(assert (=> bs!1851396 (not (= lambda!394736 lambda!394697))))

(assert (=> bs!1851397 (not (= lambda!394736 lambda!394695))))

(declare-fun bs!1851398 () Bool)

(assert (= bs!1851398 (and b!6934100 b!6934104)))

(assert (=> bs!1851398 (not (= lambda!394736 lambda!394735))))

(assert (=> b!6934100 true))

(assert (=> b!6934100 true))

(declare-fun d!2166472 () Bool)

(declare-fun c!1286805 () Bool)

(assert (=> d!2166472 (= c!1286805 (is-EmptyExpr!16952 r1!6342))))

(declare-fun e!4172018 () Bool)

(assert (=> d!2166472 (= (matchRSpec!4009 r1!6342 (_1!37112 lt!2473836)) e!4172018)))

(declare-fun b!6934098 () Bool)

(declare-fun res!2828131 () Bool)

(declare-fun e!4172014 () Bool)

(assert (=> b!6934098 (=> res!2828131 e!4172014)))

(declare-fun call!630046 () Bool)

(assert (=> b!6934098 (= res!2828131 call!630046)))

(declare-fun e!4172017 () Bool)

(assert (=> b!6934098 (= e!4172017 e!4172014)))

(declare-fun b!6934099 () Bool)

(declare-fun e!4172013 () Bool)

(declare-fun e!4172015 () Bool)

(assert (=> b!6934099 (= e!4172013 e!4172015)))

(declare-fun res!2828132 () Bool)

(assert (=> b!6934099 (= res!2828132 (matchRSpec!4009 (regOne!34417 r1!6342) (_1!37112 lt!2473836)))))

(assert (=> b!6934099 (=> res!2828132 e!4172015)))

(declare-fun call!630045 () Bool)

(assert (=> b!6934100 (= e!4172017 call!630045)))

(declare-fun b!6934101 () Bool)

(declare-fun c!1286803 () Bool)

(assert (=> b!6934101 (= c!1286803 (is-ElementMatch!16952 r1!6342))))

(declare-fun e!4172012 () Bool)

(declare-fun e!4172016 () Bool)

(assert (=> b!6934101 (= e!4172012 e!4172016)))

(declare-fun b!6934102 () Bool)

(declare-fun c!1286804 () Bool)

(assert (=> b!6934102 (= c!1286804 (is-Union!16952 r1!6342))))

(assert (=> b!6934102 (= e!4172016 e!4172013)))

(declare-fun bm!630040 () Bool)

(assert (=> bm!630040 (= call!630046 (isEmpty!38844 (_1!37112 lt!2473836)))))

(declare-fun b!6934103 () Bool)

(assert (=> b!6934103 (= e!4172013 e!4172017)))

(declare-fun c!1286802 () Bool)

(assert (=> b!6934103 (= c!1286802 (is-Star!16952 r1!6342))))

(assert (=> b!6934104 (= e!4172014 call!630045)))

(declare-fun b!6934105 () Bool)

(assert (=> b!6934105 (= e!4172016 (= (_1!37112 lt!2473836) (Cons!66581 (c!1286780 r1!6342) Nil!66581)))))

(declare-fun b!6934106 () Bool)

(assert (=> b!6934106 (= e!4172018 e!4172012)))

(declare-fun res!2828133 () Bool)

(assert (=> b!6934106 (= res!2828133 (not (is-EmptyLang!16952 r1!6342)))))

(assert (=> b!6934106 (=> (not res!2828133) (not e!4172012))))

(declare-fun bm!630041 () Bool)

(assert (=> bm!630041 (= call!630045 (Exists!3952 (ite c!1286802 lambda!394735 lambda!394736)))))

(declare-fun b!6934107 () Bool)

(assert (=> b!6934107 (= e!4172015 (matchRSpec!4009 (regTwo!34417 r1!6342) (_1!37112 lt!2473836)))))

(declare-fun b!6934108 () Bool)

(assert (=> b!6934108 (= e!4172018 call!630046)))

(assert (= (and d!2166472 c!1286805) b!6934108))

(assert (= (and d!2166472 (not c!1286805)) b!6934106))

(assert (= (and b!6934106 res!2828133) b!6934101))

(assert (= (and b!6934101 c!1286803) b!6934105))

(assert (= (and b!6934101 (not c!1286803)) b!6934102))

(assert (= (and b!6934102 c!1286804) b!6934099))

(assert (= (and b!6934102 (not c!1286804)) b!6934103))

(assert (= (and b!6934099 (not res!2828132)) b!6934107))

(assert (= (and b!6934103 c!1286802) b!6934098))

(assert (= (and b!6934103 (not c!1286802)) b!6934100))

(assert (= (and b!6934098 (not res!2828131)) b!6934104))

(assert (= (or b!6934104 b!6934100) bm!630041))

(assert (= (or b!6934108 b!6934098) bm!630040))

(declare-fun m!7640420 () Bool)

(assert (=> b!6934099 m!7640420))

(declare-fun m!7640422 () Bool)

(assert (=> bm!630040 m!7640422))

(declare-fun m!7640424 () Bool)

(assert (=> bm!630041 m!7640424))

(declare-fun m!7640426 () Bool)

(assert (=> b!6934107 m!7640426))

(assert (=> b!6933872 d!2166472))

(declare-fun b!6934109 () Bool)

(declare-fun e!4172019 () Bool)

(assert (=> b!6934109 (= e!4172019 (not (= (head!13899 (_1!37112 lt!2473836)) (c!1286780 r1!6342))))))

(declare-fun b!6934110 () Bool)

(declare-fun res!2828136 () Bool)

(assert (=> b!6934110 (=> res!2828136 e!4172019)))

(assert (=> b!6934110 (= res!2828136 (not (isEmpty!38844 (tail!12951 (_1!37112 lt!2473836)))))))

(declare-fun b!6934111 () Bool)

(declare-fun res!2828137 () Bool)

(declare-fun e!4172022 () Bool)

(assert (=> b!6934111 (=> (not res!2828137) (not e!4172022))))

(assert (=> b!6934111 (= res!2828137 (isEmpty!38844 (tail!12951 (_1!37112 lt!2473836))))))

(declare-fun b!6934112 () Bool)

(declare-fun res!2828139 () Bool)

(declare-fun e!4172021 () Bool)

(assert (=> b!6934112 (=> res!2828139 e!4172021)))

(assert (=> b!6934112 (= res!2828139 e!4172022)))

(declare-fun res!2828138 () Bool)

(assert (=> b!6934112 (=> (not res!2828138) (not e!4172022))))

(declare-fun lt!2473934 () Bool)

(assert (=> b!6934112 (= res!2828138 lt!2473934)))

(declare-fun b!6934113 () Bool)

(declare-fun e!4172020 () Bool)

(assert (=> b!6934113 (= e!4172020 e!4172019)))

(declare-fun res!2828140 () Bool)

(assert (=> b!6934113 (=> res!2828140 e!4172019)))

(declare-fun call!630047 () Bool)

(assert (=> b!6934113 (= res!2828140 call!630047)))

(declare-fun b!6934114 () Bool)

(declare-fun e!4172023 () Bool)

(assert (=> b!6934114 (= e!4172023 (matchR!9091 (derivativeStep!5446 r1!6342 (head!13899 (_1!37112 lt!2473836))) (tail!12951 (_1!37112 lt!2473836))))))

(declare-fun b!6934115 () Bool)

(declare-fun e!4172025 () Bool)

(assert (=> b!6934115 (= e!4172025 (not lt!2473934))))

(declare-fun bm!630042 () Bool)

(assert (=> bm!630042 (= call!630047 (isEmpty!38844 (_1!37112 lt!2473836)))))

(declare-fun b!6934117 () Bool)

(assert (=> b!6934117 (= e!4172023 (nullable!6771 r1!6342))))

(declare-fun b!6934118 () Bool)

(declare-fun res!2828141 () Bool)

(assert (=> b!6934118 (=> (not res!2828141) (not e!4172022))))

(assert (=> b!6934118 (= res!2828141 (not call!630047))))

(declare-fun b!6934119 () Bool)

(declare-fun e!4172024 () Bool)

(assert (=> b!6934119 (= e!4172024 (= lt!2473934 call!630047))))

(declare-fun b!6934116 () Bool)

(declare-fun res!2828135 () Bool)

(assert (=> b!6934116 (=> res!2828135 e!4172021)))

(assert (=> b!6934116 (= res!2828135 (not (is-ElementMatch!16952 r1!6342)))))

(assert (=> b!6934116 (= e!4172025 e!4172021)))

(declare-fun d!2166480 () Bool)

(assert (=> d!2166480 e!4172024))

(declare-fun c!1286806 () Bool)

(assert (=> d!2166480 (= c!1286806 (is-EmptyExpr!16952 r1!6342))))

(assert (=> d!2166480 (= lt!2473934 e!4172023)))

(declare-fun c!1286808 () Bool)

(assert (=> d!2166480 (= c!1286808 (isEmpty!38844 (_1!37112 lt!2473836)))))

(assert (=> d!2166480 (validRegex!8658 r1!6342)))

(assert (=> d!2166480 (= (matchR!9091 r1!6342 (_1!37112 lt!2473836)) lt!2473934)))

(declare-fun b!6934120 () Bool)

(assert (=> b!6934120 (= e!4172022 (= (head!13899 (_1!37112 lt!2473836)) (c!1286780 r1!6342)))))

(declare-fun b!6934121 () Bool)

(assert (=> b!6934121 (= e!4172021 e!4172020)))

(declare-fun res!2828134 () Bool)

(assert (=> b!6934121 (=> (not res!2828134) (not e!4172020))))

(assert (=> b!6934121 (= res!2828134 (not lt!2473934))))

(declare-fun b!6934122 () Bool)

(assert (=> b!6934122 (= e!4172024 e!4172025)))

(declare-fun c!1286807 () Bool)

(assert (=> b!6934122 (= c!1286807 (is-EmptyLang!16952 r1!6342))))

(assert (= (and d!2166480 c!1286808) b!6934117))

(assert (= (and d!2166480 (not c!1286808)) b!6934114))

(assert (= (and d!2166480 c!1286806) b!6934119))

(assert (= (and d!2166480 (not c!1286806)) b!6934122))

(assert (= (and b!6934122 c!1286807) b!6934115))

(assert (= (and b!6934122 (not c!1286807)) b!6934116))

(assert (= (and b!6934116 (not res!2828135)) b!6934112))

(assert (= (and b!6934112 res!2828138) b!6934118))

(assert (= (and b!6934118 res!2828141) b!6934111))

(assert (= (and b!6934111 res!2828137) b!6934120))

(assert (= (and b!6934112 (not res!2828139)) b!6934121))

(assert (= (and b!6934121 res!2828134) b!6934113))

(assert (= (and b!6934113 (not res!2828140)) b!6934110))

(assert (= (and b!6934110 (not res!2828136)) b!6934109))

(assert (= (or b!6934119 b!6934118 b!6934113) bm!630042))

(declare-fun m!7640428 () Bool)

(assert (=> b!6934109 m!7640428))

(assert (=> bm!630042 m!7640422))

(assert (=> d!2166480 m!7640422))

(assert (=> d!2166480 m!7640224))

(declare-fun m!7640430 () Bool)

(assert (=> b!6934117 m!7640430))

(assert (=> b!6934120 m!7640428))

(declare-fun m!7640432 () Bool)

(assert (=> b!6934110 m!7640432))

(assert (=> b!6934110 m!7640432))

(declare-fun m!7640434 () Bool)

(assert (=> b!6934110 m!7640434))

(assert (=> b!6934114 m!7640428))

(assert (=> b!6934114 m!7640428))

(declare-fun m!7640436 () Bool)

(assert (=> b!6934114 m!7640436))

(assert (=> b!6934114 m!7640432))

(assert (=> b!6934114 m!7640436))

(assert (=> b!6934114 m!7640432))

(declare-fun m!7640438 () Bool)

(assert (=> b!6934114 m!7640438))

(assert (=> b!6934111 m!7640432))

(assert (=> b!6934111 m!7640432))

(assert (=> b!6934111 m!7640434))

(assert (=> b!6933872 d!2166480))

(declare-fun bs!1851399 () Bool)

(declare-fun d!2166482 () Bool)

(assert (= bs!1851399 (and d!2166482 d!2166470)))

(declare-fun lambda!394739 () Int)

(assert (=> bs!1851399 (= lambda!394739 lambda!394729)))

(assert (=> bs!1851399 (not (= lambda!394739 lambda!394730))))

(declare-fun bs!1851400 () Bool)

(assert (= bs!1851400 (and d!2166482 b!6933865)))

(assert (=> bs!1851400 (not (= lambda!394739 lambda!394700))))

(declare-fun bs!1851401 () Bool)

(assert (= bs!1851401 (and d!2166482 b!6934100)))

(assert (=> bs!1851401 (not (= lambda!394739 lambda!394736))))

(assert (=> bs!1851400 (= (and (= s!14361 lt!2473822) (= lt!2473823 r2!6280)) (= lambda!394739 lambda!394699))))

(declare-fun bs!1851402 () Bool)

(assert (= bs!1851402 (and d!2166482 b!6933879)))

(assert (=> bs!1851402 (not (= lambda!394739 lambda!394698))))

(declare-fun bs!1851403 () Bool)

(assert (= bs!1851403 (and d!2166482 b!6933872)))

(assert (=> bs!1851403 (not (= lambda!394739 lambda!394696))))

(assert (=> bs!1851402 (= (and (= s!14361 (_2!37112 lt!2473836)) (= r1!6342 r2!6280) (= lt!2473823 r3!135)) (= lambda!394739 lambda!394697))))

(assert (=> bs!1851403 (= lambda!394739 lambda!394695)))

(declare-fun bs!1851404 () Bool)

(assert (= bs!1851404 (and d!2166482 b!6934104)))

(assert (=> bs!1851404 (not (= lambda!394739 lambda!394735))))

(assert (=> d!2166482 true))

(assert (=> d!2166482 true))

(assert (=> d!2166482 true))

(assert (=> d!2166482 (= (isDefined!13422 (findConcatSeparation!3135 r1!6342 lt!2473823 Nil!66581 s!14361 s!14361)) (Exists!3952 lambda!394739))))

(declare-fun lt!2473937 () Unit!160628)

(declare-fun choose!51644 (Regex!16952 Regex!16952 List!66705) Unit!160628)

(assert (=> d!2166482 (= lt!2473937 (choose!51644 r1!6342 lt!2473823 s!14361))))

(assert (=> d!2166482 (validRegex!8658 r1!6342)))

(assert (=> d!2166482 (= (lemmaFindConcatSeparationEquivalentToExists!2893 r1!6342 lt!2473823 s!14361) lt!2473937)))

(declare-fun bs!1851405 () Bool)

(assert (= bs!1851405 d!2166482))

(assert (=> bs!1851405 m!7640224))

(declare-fun m!7640440 () Bool)

(assert (=> bs!1851405 m!7640440))

(assert (=> bs!1851405 m!7640254))

(declare-fun m!7640442 () Bool)

(assert (=> bs!1851405 m!7640442))

(assert (=> bs!1851405 m!7640254))

(declare-fun m!7640444 () Bool)

(assert (=> bs!1851405 m!7640444))

(assert (=> b!6933872 d!2166482))

(declare-fun d!2166484 () Bool)

(assert (=> d!2166484 (= (matchR!9091 r1!6342 (_1!37112 lt!2473836)) (matchRSpec!4009 r1!6342 (_1!37112 lt!2473836)))))

(declare-fun lt!2473940 () Unit!160628)

(declare-fun choose!51645 (Regex!16952 List!66705) Unit!160628)

(assert (=> d!2166484 (= lt!2473940 (choose!51645 r1!6342 (_1!37112 lt!2473836)))))

(assert (=> d!2166484 (validRegex!8658 r1!6342)))

(assert (=> d!2166484 (= (mainMatchTheorem!4009 r1!6342 (_1!37112 lt!2473836)) lt!2473940)))

(declare-fun bs!1851406 () Bool)

(assert (= bs!1851406 d!2166484))

(assert (=> bs!1851406 m!7640258))

(assert (=> bs!1851406 m!7640256))

(declare-fun m!7640446 () Bool)

(assert (=> bs!1851406 m!7640446))

(assert (=> bs!1851406 m!7640224))

(assert (=> b!6933872 d!2166484))

(declare-fun b!6934177 () Bool)

(declare-fun e!4172064 () Bool)

(declare-fun e!4172065 () Bool)

(assert (=> b!6934177 (= e!4172064 e!4172065)))

(declare-fun c!1286821 () Bool)

(assert (=> b!6934177 (= c!1286821 (is-Union!16952 r3!135))))

(declare-fun b!6934178 () Bool)

(declare-fun res!2828174 () Bool)

(declare-fun e!4172062 () Bool)

(assert (=> b!6934178 (=> res!2828174 e!4172062)))

(assert (=> b!6934178 (= res!2828174 (not (is-Concat!25797 r3!135)))))

(assert (=> b!6934178 (= e!4172065 e!4172062)))

(declare-fun bm!630049 () Bool)

(declare-fun call!630055 () Bool)

(assert (=> bm!630049 (= call!630055 (validRegex!8658 (ite c!1286821 (regTwo!34417 r3!135) (regOne!34416 r3!135))))))

(declare-fun b!6934179 () Bool)

(declare-fun e!4172066 () Bool)

(declare-fun call!630054 () Bool)

(assert (=> b!6934179 (= e!4172066 call!630054)))

(declare-fun b!6934180 () Bool)

(declare-fun e!4172060 () Bool)

(assert (=> b!6934180 (= e!4172064 e!4172060)))

(declare-fun res!2828175 () Bool)

(assert (=> b!6934180 (= res!2828175 (not (nullable!6771 (reg!17281 r3!135))))))

(assert (=> b!6934180 (=> (not res!2828175) (not e!4172060))))

(declare-fun b!6934181 () Bool)

(declare-fun e!4172061 () Bool)

(assert (=> b!6934181 (= e!4172061 call!630055)))

(declare-fun b!6934182 () Bool)

(declare-fun res!2828173 () Bool)

(assert (=> b!6934182 (=> (not res!2828173) (not e!4172061))))

(assert (=> b!6934182 (= res!2828173 call!630054)))

(assert (=> b!6934182 (= e!4172065 e!4172061)))

(declare-fun b!6934183 () Bool)

(assert (=> b!6934183 (= e!4172062 e!4172066)))

(declare-fun res!2828172 () Bool)

(assert (=> b!6934183 (=> (not res!2828172) (not e!4172066))))

(assert (=> b!6934183 (= res!2828172 call!630055)))

(declare-fun b!6934184 () Bool)

(declare-fun call!630056 () Bool)

(assert (=> b!6934184 (= e!4172060 call!630056)))

(declare-fun bm!630050 () Bool)

(assert (=> bm!630050 (= call!630054 call!630056)))

(declare-fun c!1286822 () Bool)

(declare-fun bm!630051 () Bool)

(assert (=> bm!630051 (= call!630056 (validRegex!8658 (ite c!1286822 (reg!17281 r3!135) (ite c!1286821 (regOne!34417 r3!135) (regTwo!34416 r3!135)))))))

(declare-fun b!6934185 () Bool)

(declare-fun e!4172063 () Bool)

(assert (=> b!6934185 (= e!4172063 e!4172064)))

(assert (=> b!6934185 (= c!1286822 (is-Star!16952 r3!135))))

(declare-fun d!2166486 () Bool)

(declare-fun res!2828176 () Bool)

(assert (=> d!2166486 (=> res!2828176 e!4172063)))

(assert (=> d!2166486 (= res!2828176 (is-ElementMatch!16952 r3!135))))

(assert (=> d!2166486 (= (validRegex!8658 r3!135) e!4172063)))

(assert (= (and d!2166486 (not res!2828176)) b!6934185))

(assert (= (and b!6934185 c!1286822) b!6934180))

(assert (= (and b!6934185 (not c!1286822)) b!6934177))

(assert (= (and b!6934180 res!2828175) b!6934184))

(assert (= (and b!6934177 c!1286821) b!6934182))

(assert (= (and b!6934177 (not c!1286821)) b!6934178))

(assert (= (and b!6934182 res!2828173) b!6934181))

(assert (= (and b!6934178 (not res!2828174)) b!6934183))

(assert (= (and b!6934183 res!2828172) b!6934179))

(assert (= (or b!6934182 b!6934179) bm!630050))

(assert (= (or b!6934181 b!6934183) bm!630049))

(assert (= (or b!6934184 bm!630050) bm!630051))

(declare-fun m!7640448 () Bool)

(assert (=> bm!630049 m!7640448))

(declare-fun m!7640450 () Bool)

(assert (=> b!6934180 m!7640450))

(declare-fun m!7640452 () Bool)

(assert (=> bm!630051 m!7640452))

(assert (=> b!6933883 d!2166486))

(declare-fun d!2166488 () Bool)

(declare-fun isEmpty!38845 (Option!16721) Bool)

(assert (=> d!2166488 (= (isDefined!13422 lt!2473843) (not (isEmpty!38845 lt!2473843)))))

(declare-fun bs!1851407 () Bool)

(assert (= bs!1851407 d!2166488))

(declare-fun m!7640454 () Bool)

(assert (=> bs!1851407 m!7640454))

(assert (=> b!6933870 d!2166488))

(declare-fun b!6934215 () Bool)

(declare-fun lt!2473947 () Unit!160628)

(declare-fun lt!2473949 () Unit!160628)

(assert (=> b!6934215 (= lt!2473947 lt!2473949)))

(assert (=> b!6934215 (= (++!14991 (++!14991 Nil!66581 (Cons!66581 (h!73029 s!14361) Nil!66581)) (t!380448 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2850 (List!66705 C!34174 List!66705 List!66705) Unit!160628)

(assert (=> b!6934215 (= lt!2473949 (lemmaMoveElementToOtherListKeepsConcatEq!2850 Nil!66581 (h!73029 s!14361) (t!380448 s!14361) s!14361))))

(declare-fun e!4172088 () Option!16721)

(assert (=> b!6934215 (= e!4172088 (findConcatSeparation!3135 r1!6342 lt!2473823 (++!14991 Nil!66581 (Cons!66581 (h!73029 s!14361) Nil!66581)) (t!380448 s!14361) s!14361))))

(declare-fun d!2166490 () Bool)

(declare-fun e!4172087 () Bool)

(assert (=> d!2166490 e!4172087))

(declare-fun res!2828190 () Bool)

(assert (=> d!2166490 (=> res!2828190 e!4172087)))

(declare-fun e!4172085 () Bool)

(assert (=> d!2166490 (= res!2828190 e!4172085)))

(declare-fun res!2828194 () Bool)

(assert (=> d!2166490 (=> (not res!2828194) (not e!4172085))))

(declare-fun lt!2473948 () Option!16721)

(assert (=> d!2166490 (= res!2828194 (isDefined!13422 lt!2473948))))

(declare-fun e!4172086 () Option!16721)

(assert (=> d!2166490 (= lt!2473948 e!4172086)))

(declare-fun c!1286831 () Bool)

(declare-fun e!4172084 () Bool)

(assert (=> d!2166490 (= c!1286831 e!4172084)))

(declare-fun res!2828192 () Bool)

(assert (=> d!2166490 (=> (not res!2828192) (not e!4172084))))

(assert (=> d!2166490 (= res!2828192 (matchR!9091 r1!6342 Nil!66581))))

(assert (=> d!2166490 (validRegex!8658 r1!6342)))

(assert (=> d!2166490 (= (findConcatSeparation!3135 r1!6342 lt!2473823 Nil!66581 s!14361 s!14361) lt!2473948)))

(declare-fun b!6934216 () Bool)

(assert (=> b!6934216 (= e!4172086 (Some!16720 (tuple2!67619 Nil!66581 s!14361)))))

(declare-fun b!6934217 () Bool)

(assert (=> b!6934217 (= e!4172084 (matchR!9091 lt!2473823 s!14361))))

(declare-fun b!6934218 () Bool)

(declare-fun res!2828193 () Bool)

(assert (=> b!6934218 (=> (not res!2828193) (not e!4172085))))

(assert (=> b!6934218 (= res!2828193 (matchR!9091 lt!2473823 (_2!37112 (get!23365 lt!2473948))))))

(declare-fun b!6934219 () Bool)

(assert (=> b!6934219 (= e!4172088 None!16720)))

(declare-fun b!6934220 () Bool)

(assert (=> b!6934220 (= e!4172085 (= (++!14991 (_1!37112 (get!23365 lt!2473948)) (_2!37112 (get!23365 lt!2473948))) s!14361))))

(declare-fun b!6934221 () Bool)

(assert (=> b!6934221 (= e!4172086 e!4172088)))

(declare-fun c!1286832 () Bool)

(assert (=> b!6934221 (= c!1286832 (is-Nil!66581 s!14361))))

(declare-fun b!6934222 () Bool)

(declare-fun res!2828191 () Bool)

(assert (=> b!6934222 (=> (not res!2828191) (not e!4172085))))

(assert (=> b!6934222 (= res!2828191 (matchR!9091 r1!6342 (_1!37112 (get!23365 lt!2473948))))))

(declare-fun b!6934223 () Bool)

(assert (=> b!6934223 (= e!4172087 (not (isDefined!13422 lt!2473948)))))

(assert (= (and d!2166490 res!2828192) b!6934217))

(assert (= (and d!2166490 c!1286831) b!6934216))

(assert (= (and d!2166490 (not c!1286831)) b!6934221))

(assert (= (and b!6934221 c!1286832) b!6934219))

(assert (= (and b!6934221 (not c!1286832)) b!6934215))

(assert (= (and d!2166490 res!2828194) b!6934222))

(assert (= (and b!6934222 res!2828191) b!6934218))

(assert (= (and b!6934218 res!2828193) b!6934220))

(assert (= (and d!2166490 (not res!2828190)) b!6934223))

(declare-fun m!7640456 () Bool)

(assert (=> b!6934222 m!7640456))

(declare-fun m!7640458 () Bool)

(assert (=> b!6934222 m!7640458))

(declare-fun m!7640460 () Bool)

(assert (=> d!2166490 m!7640460))

(declare-fun m!7640462 () Bool)

(assert (=> d!2166490 m!7640462))

(assert (=> d!2166490 m!7640224))

(declare-fun m!7640464 () Bool)

(assert (=> b!6934215 m!7640464))

(assert (=> b!6934215 m!7640464))

(declare-fun m!7640466 () Bool)

(assert (=> b!6934215 m!7640466))

(declare-fun m!7640468 () Bool)

(assert (=> b!6934215 m!7640468))

(assert (=> b!6934215 m!7640464))

(declare-fun m!7640470 () Bool)

(assert (=> b!6934215 m!7640470))

(assert (=> b!6934220 m!7640456))

(declare-fun m!7640472 () Bool)

(assert (=> b!6934220 m!7640472))

(declare-fun m!7640474 () Bool)

(assert (=> b!6934217 m!7640474))

(assert (=> b!6934218 m!7640456))

(declare-fun m!7640476 () Bool)

(assert (=> b!6934218 m!7640476))

(assert (=> b!6934223 m!7640460))

(assert (=> b!6933870 d!2166490))

(declare-fun bs!1851414 () Bool)

(declare-fun b!6934230 () Bool)

(assert (= bs!1851414 (and b!6934230 d!2166470)))

(declare-fun lambda!394746 () Int)

(assert (=> bs!1851414 (not (= lambda!394746 lambda!394729))))

(assert (=> bs!1851414 (not (= lambda!394746 lambda!394730))))

(declare-fun bs!1851415 () Bool)

(assert (= bs!1851415 (and b!6934230 b!6933865)))

(assert (=> bs!1851415 (not (= lambda!394746 lambda!394700))))

(declare-fun bs!1851416 () Bool)

(assert (= bs!1851416 (and b!6934230 b!6934100)))

(assert (=> bs!1851416 (not (= lambda!394746 lambda!394736))))

(assert (=> bs!1851415 (not (= lambda!394746 lambda!394699))))

(declare-fun bs!1851418 () Bool)

(assert (= bs!1851418 (and b!6934230 b!6933879)))

(assert (=> bs!1851418 (not (= lambda!394746 lambda!394698))))

(declare-fun bs!1851419 () Bool)

(assert (= bs!1851419 (and b!6934230 b!6933872)))

(assert (=> bs!1851419 (not (= lambda!394746 lambda!394696))))

(assert (=> bs!1851418 (not (= lambda!394746 lambda!394697))))

(assert (=> bs!1851419 (not (= lambda!394746 lambda!394695))))

(declare-fun bs!1851420 () Bool)

(assert (= bs!1851420 (and b!6934230 b!6934104)))

(assert (=> bs!1851420 (= (and (= s!14361 (_1!37112 lt!2473836)) (= (reg!17281 lt!2473819) (reg!17281 r1!6342)) (= lt!2473819 r1!6342)) (= lambda!394746 lambda!394735))))

(declare-fun bs!1851421 () Bool)

(assert (= bs!1851421 (and b!6934230 d!2166482)))

(assert (=> bs!1851421 (not (= lambda!394746 lambda!394739))))

(assert (=> b!6934230 true))

(assert (=> b!6934230 true))

(declare-fun bs!1851422 () Bool)

(declare-fun b!6934226 () Bool)

(assert (= bs!1851422 (and b!6934226 d!2166470)))

(declare-fun lambda!394747 () Int)

(assert (=> bs!1851422 (not (= lambda!394747 lambda!394729))))

(declare-fun bs!1851423 () Bool)

(assert (= bs!1851423 (and b!6934226 b!6934230)))

(assert (=> bs!1851423 (not (= lambda!394747 lambda!394746))))

(assert (=> bs!1851422 (= (and (= (regOne!34416 lt!2473819) r1!6342) (= (regTwo!34416 lt!2473819) lt!2473823)) (= lambda!394747 lambda!394730))))

(declare-fun bs!1851424 () Bool)

(assert (= bs!1851424 (and b!6934226 b!6933865)))

(assert (=> bs!1851424 (= (and (= s!14361 lt!2473822) (= (regOne!34416 lt!2473819) r1!6342) (= (regTwo!34416 lt!2473819) r2!6280)) (= lambda!394747 lambda!394700))))

(declare-fun bs!1851425 () Bool)

(assert (= bs!1851425 (and b!6934226 b!6934100)))

(assert (=> bs!1851425 (= (and (= s!14361 (_1!37112 lt!2473836)) (= (regOne!34416 lt!2473819) (regOne!34416 r1!6342)) (= (regTwo!34416 lt!2473819) (regTwo!34416 r1!6342))) (= lambda!394747 lambda!394736))))

(assert (=> bs!1851424 (not (= lambda!394747 lambda!394699))))

(declare-fun bs!1851426 () Bool)

(assert (= bs!1851426 (and b!6934226 b!6933879)))

(assert (=> bs!1851426 (= (and (= s!14361 (_2!37112 lt!2473836)) (= (regOne!34416 lt!2473819) r2!6280) (= (regTwo!34416 lt!2473819) r3!135)) (= lambda!394747 lambda!394698))))

(declare-fun bs!1851427 () Bool)

(assert (= bs!1851427 (and b!6934226 b!6933872)))

(assert (=> bs!1851427 (= (and (= (regOne!34416 lt!2473819) r1!6342) (= (regTwo!34416 lt!2473819) lt!2473823)) (= lambda!394747 lambda!394696))))

(assert (=> bs!1851426 (not (= lambda!394747 lambda!394697))))

(assert (=> bs!1851427 (not (= lambda!394747 lambda!394695))))

(declare-fun bs!1851428 () Bool)

(assert (= bs!1851428 (and b!6934226 b!6934104)))

(assert (=> bs!1851428 (not (= lambda!394747 lambda!394735))))

(declare-fun bs!1851429 () Bool)

(assert (= bs!1851429 (and b!6934226 d!2166482)))

(assert (=> bs!1851429 (not (= lambda!394747 lambda!394739))))

(assert (=> b!6934226 true))

(assert (=> b!6934226 true))

(declare-fun d!2166492 () Bool)

(declare-fun c!1286836 () Bool)

(assert (=> d!2166492 (= c!1286836 (is-EmptyExpr!16952 lt!2473819))))

(declare-fun e!4172095 () Bool)

(assert (=> d!2166492 (= (matchRSpec!4009 lt!2473819 s!14361) e!4172095)))

(declare-fun b!6934224 () Bool)

(declare-fun res!2828195 () Bool)

(declare-fun e!4172091 () Bool)

(assert (=> b!6934224 (=> res!2828195 e!4172091)))

(declare-fun call!630064 () Bool)

(assert (=> b!6934224 (= res!2828195 call!630064)))

(declare-fun e!4172094 () Bool)

(assert (=> b!6934224 (= e!4172094 e!4172091)))

(declare-fun b!6934225 () Bool)

(declare-fun e!4172090 () Bool)

(declare-fun e!4172092 () Bool)

(assert (=> b!6934225 (= e!4172090 e!4172092)))

(declare-fun res!2828196 () Bool)

(assert (=> b!6934225 (= res!2828196 (matchRSpec!4009 (regOne!34417 lt!2473819) s!14361))))

(assert (=> b!6934225 (=> res!2828196 e!4172092)))

(declare-fun call!630063 () Bool)

(assert (=> b!6934226 (= e!4172094 call!630063)))

(declare-fun b!6934227 () Bool)

(declare-fun c!1286834 () Bool)

(assert (=> b!6934227 (= c!1286834 (is-ElementMatch!16952 lt!2473819))))

(declare-fun e!4172089 () Bool)

(declare-fun e!4172093 () Bool)

(assert (=> b!6934227 (= e!4172089 e!4172093)))

(declare-fun b!6934228 () Bool)

(declare-fun c!1286835 () Bool)

(assert (=> b!6934228 (= c!1286835 (is-Union!16952 lt!2473819))))

(assert (=> b!6934228 (= e!4172093 e!4172090)))

(declare-fun bm!630058 () Bool)

(assert (=> bm!630058 (= call!630064 (isEmpty!38844 s!14361))))

(declare-fun b!6934229 () Bool)

(assert (=> b!6934229 (= e!4172090 e!4172094)))

(declare-fun c!1286833 () Bool)

(assert (=> b!6934229 (= c!1286833 (is-Star!16952 lt!2473819))))

(assert (=> b!6934230 (= e!4172091 call!630063)))

(declare-fun b!6934231 () Bool)

(assert (=> b!6934231 (= e!4172093 (= s!14361 (Cons!66581 (c!1286780 lt!2473819) Nil!66581)))))

(declare-fun b!6934232 () Bool)

(assert (=> b!6934232 (= e!4172095 e!4172089)))

(declare-fun res!2828197 () Bool)

(assert (=> b!6934232 (= res!2828197 (not (is-EmptyLang!16952 lt!2473819)))))

(assert (=> b!6934232 (=> (not res!2828197) (not e!4172089))))

(declare-fun bm!630059 () Bool)

(assert (=> bm!630059 (= call!630063 (Exists!3952 (ite c!1286833 lambda!394746 lambda!394747)))))

(declare-fun b!6934233 () Bool)

(assert (=> b!6934233 (= e!4172092 (matchRSpec!4009 (regTwo!34417 lt!2473819) s!14361))))

(declare-fun b!6934234 () Bool)

(assert (=> b!6934234 (= e!4172095 call!630064)))

(assert (= (and d!2166492 c!1286836) b!6934234))

(assert (= (and d!2166492 (not c!1286836)) b!6934232))

(assert (= (and b!6934232 res!2828197) b!6934227))

(assert (= (and b!6934227 c!1286834) b!6934231))

(assert (= (and b!6934227 (not c!1286834)) b!6934228))

(assert (= (and b!6934228 c!1286835) b!6934225))

(assert (= (and b!6934228 (not c!1286835)) b!6934229))

(assert (= (and b!6934225 (not res!2828196)) b!6934233))

(assert (= (and b!6934229 c!1286833) b!6934224))

(assert (= (and b!6934229 (not c!1286833)) b!6934226))

(assert (= (and b!6934224 (not res!2828195)) b!6934230))

(assert (= (or b!6934230 b!6934226) bm!630059))

(assert (= (or b!6934234 b!6934224) bm!630058))

(declare-fun m!7640486 () Bool)

(assert (=> b!6934225 m!7640486))

(declare-fun m!7640488 () Bool)

(assert (=> bm!630058 m!7640488))

(declare-fun m!7640490 () Bool)

(assert (=> bm!630059 m!7640490))

(declare-fun m!7640492 () Bool)

(assert (=> b!6934233 m!7640492))

(assert (=> b!6933860 d!2166492))

(declare-fun b!6934235 () Bool)

(declare-fun e!4172096 () Bool)

(assert (=> b!6934235 (= e!4172096 (not (= (head!13899 s!14361) (c!1286780 lt!2473819))))))

(declare-fun b!6934236 () Bool)

(declare-fun res!2828200 () Bool)

(assert (=> b!6934236 (=> res!2828200 e!4172096)))

(assert (=> b!6934236 (= res!2828200 (not (isEmpty!38844 (tail!12951 s!14361))))))

(declare-fun b!6934237 () Bool)

(declare-fun res!2828201 () Bool)

(declare-fun e!4172099 () Bool)

(assert (=> b!6934237 (=> (not res!2828201) (not e!4172099))))

(assert (=> b!6934237 (= res!2828201 (isEmpty!38844 (tail!12951 s!14361)))))

(declare-fun b!6934238 () Bool)

(declare-fun res!2828203 () Bool)

(declare-fun e!4172098 () Bool)

(assert (=> b!6934238 (=> res!2828203 e!4172098)))

(assert (=> b!6934238 (= res!2828203 e!4172099)))

(declare-fun res!2828202 () Bool)

(assert (=> b!6934238 (=> (not res!2828202) (not e!4172099))))

(declare-fun lt!2473950 () Bool)

(assert (=> b!6934238 (= res!2828202 lt!2473950)))

(declare-fun b!6934239 () Bool)

(declare-fun e!4172097 () Bool)

(assert (=> b!6934239 (= e!4172097 e!4172096)))

(declare-fun res!2828204 () Bool)

(assert (=> b!6934239 (=> res!2828204 e!4172096)))

(declare-fun call!630065 () Bool)

(assert (=> b!6934239 (= res!2828204 call!630065)))

(declare-fun b!6934240 () Bool)

(declare-fun e!4172100 () Bool)

(assert (=> b!6934240 (= e!4172100 (matchR!9091 (derivativeStep!5446 lt!2473819 (head!13899 s!14361)) (tail!12951 s!14361)))))

(declare-fun b!6934241 () Bool)

(declare-fun e!4172102 () Bool)

(assert (=> b!6934241 (= e!4172102 (not lt!2473950))))

(declare-fun bm!630060 () Bool)

(assert (=> bm!630060 (= call!630065 (isEmpty!38844 s!14361))))

(declare-fun b!6934243 () Bool)

(assert (=> b!6934243 (= e!4172100 (nullable!6771 lt!2473819))))

(declare-fun b!6934244 () Bool)

(declare-fun res!2828205 () Bool)

(assert (=> b!6934244 (=> (not res!2828205) (not e!4172099))))

(assert (=> b!6934244 (= res!2828205 (not call!630065))))

(declare-fun b!6934245 () Bool)

(declare-fun e!4172101 () Bool)

(assert (=> b!6934245 (= e!4172101 (= lt!2473950 call!630065))))

(declare-fun b!6934242 () Bool)

(declare-fun res!2828199 () Bool)

(assert (=> b!6934242 (=> res!2828199 e!4172098)))

(assert (=> b!6934242 (= res!2828199 (not (is-ElementMatch!16952 lt!2473819)))))

(assert (=> b!6934242 (= e!4172102 e!4172098)))

(declare-fun d!2166496 () Bool)

(assert (=> d!2166496 e!4172101))

(declare-fun c!1286837 () Bool)

(assert (=> d!2166496 (= c!1286837 (is-EmptyExpr!16952 lt!2473819))))

(assert (=> d!2166496 (= lt!2473950 e!4172100)))

(declare-fun c!1286839 () Bool)

(assert (=> d!2166496 (= c!1286839 (isEmpty!38844 s!14361))))

(assert (=> d!2166496 (validRegex!8658 lt!2473819)))

(assert (=> d!2166496 (= (matchR!9091 lt!2473819 s!14361) lt!2473950)))

(declare-fun b!6934246 () Bool)

(assert (=> b!6934246 (= e!4172099 (= (head!13899 s!14361) (c!1286780 lt!2473819)))))

(declare-fun b!6934247 () Bool)

(assert (=> b!6934247 (= e!4172098 e!4172097)))

(declare-fun res!2828198 () Bool)

(assert (=> b!6934247 (=> (not res!2828198) (not e!4172097))))

(assert (=> b!6934247 (= res!2828198 (not lt!2473950))))

(declare-fun b!6934248 () Bool)

(assert (=> b!6934248 (= e!4172101 e!4172102)))

(declare-fun c!1286838 () Bool)

(assert (=> b!6934248 (= c!1286838 (is-EmptyLang!16952 lt!2473819))))

(assert (= (and d!2166496 c!1286839) b!6934243))

(assert (= (and d!2166496 (not c!1286839)) b!6934240))

(assert (= (and d!2166496 c!1286837) b!6934245))

(assert (= (and d!2166496 (not c!1286837)) b!6934248))

(assert (= (and b!6934248 c!1286838) b!6934241))

(assert (= (and b!6934248 (not c!1286838)) b!6934242))

(assert (= (and b!6934242 (not res!2828199)) b!6934238))

(assert (= (and b!6934238 res!2828202) b!6934244))

(assert (= (and b!6934244 res!2828205) b!6934237))

(assert (= (and b!6934237 res!2828201) b!6934246))

(assert (= (and b!6934238 (not res!2828203)) b!6934247))

(assert (= (and b!6934247 res!2828198) b!6934239))

(assert (= (and b!6934239 (not res!2828204)) b!6934236))

(assert (= (and b!6934236 (not res!2828200)) b!6934235))

(assert (= (or b!6934245 b!6934244 b!6934239) bm!630060))

(declare-fun m!7640496 () Bool)

(assert (=> b!6934235 m!7640496))

(assert (=> bm!630060 m!7640488))

(assert (=> d!2166496 m!7640488))

(declare-fun m!7640498 () Bool)

(assert (=> d!2166496 m!7640498))

(declare-fun m!7640500 () Bool)

(assert (=> b!6934243 m!7640500))

(assert (=> b!6934246 m!7640496))

(declare-fun m!7640502 () Bool)

(assert (=> b!6934236 m!7640502))

(assert (=> b!6934236 m!7640502))

(declare-fun m!7640504 () Bool)

(assert (=> b!6934236 m!7640504))

(assert (=> b!6934240 m!7640496))

(assert (=> b!6934240 m!7640496))

(declare-fun m!7640506 () Bool)

(assert (=> b!6934240 m!7640506))

(assert (=> b!6934240 m!7640502))

(assert (=> b!6934240 m!7640506))

(assert (=> b!6934240 m!7640502))

(declare-fun m!7640508 () Bool)

(assert (=> b!6934240 m!7640508))

(assert (=> b!6934237 m!7640502))

(assert (=> b!6934237 m!7640502))

(assert (=> b!6934237 m!7640504))

(assert (=> b!6933860 d!2166496))

(declare-fun bs!1851431 () Bool)

(declare-fun b!6934255 () Bool)

(assert (= bs!1851431 (and b!6934255 d!2166470)))

(declare-fun lambda!394748 () Int)

(assert (=> bs!1851431 (not (= lambda!394748 lambda!394729))))

(declare-fun bs!1851432 () Bool)

(assert (= bs!1851432 (and b!6934255 b!6934230)))

(assert (=> bs!1851432 (= (and (= (reg!17281 lt!2473839) (reg!17281 lt!2473819)) (= lt!2473839 lt!2473819)) (= lambda!394748 lambda!394746))))

(assert (=> bs!1851431 (not (= lambda!394748 lambda!394730))))

(declare-fun bs!1851433 () Bool)

(assert (= bs!1851433 (and b!6934255 b!6933865)))

(assert (=> bs!1851433 (not (= lambda!394748 lambda!394700))))

(declare-fun bs!1851434 () Bool)

(assert (= bs!1851434 (and b!6934255 b!6934100)))

(assert (=> bs!1851434 (not (= lambda!394748 lambda!394736))))

(assert (=> bs!1851433 (not (= lambda!394748 lambda!394699))))

(declare-fun bs!1851435 () Bool)

(assert (= bs!1851435 (and b!6934255 b!6933879)))

(assert (=> bs!1851435 (not (= lambda!394748 lambda!394698))))

(declare-fun bs!1851436 () Bool)

(assert (= bs!1851436 (and b!6934255 b!6933872)))

(assert (=> bs!1851436 (not (= lambda!394748 lambda!394696))))

(assert (=> bs!1851435 (not (= lambda!394748 lambda!394697))))

(assert (=> bs!1851436 (not (= lambda!394748 lambda!394695))))

(declare-fun bs!1851437 () Bool)

(assert (= bs!1851437 (and b!6934255 b!6934104)))

(assert (=> bs!1851437 (= (and (= s!14361 (_1!37112 lt!2473836)) (= (reg!17281 lt!2473839) (reg!17281 r1!6342)) (= lt!2473839 r1!6342)) (= lambda!394748 lambda!394735))))

(declare-fun bs!1851438 () Bool)

(assert (= bs!1851438 (and b!6934255 d!2166482)))

(assert (=> bs!1851438 (not (= lambda!394748 lambda!394739))))

(declare-fun bs!1851439 () Bool)

(assert (= bs!1851439 (and b!6934255 b!6934226)))

(assert (=> bs!1851439 (not (= lambda!394748 lambda!394747))))

(assert (=> b!6934255 true))

(assert (=> b!6934255 true))

(declare-fun bs!1851440 () Bool)

(declare-fun b!6934251 () Bool)

(assert (= bs!1851440 (and b!6934251 d!2166470)))

(declare-fun lambda!394749 () Int)

(assert (=> bs!1851440 (not (= lambda!394749 lambda!394729))))

(declare-fun bs!1851441 () Bool)

(assert (= bs!1851441 (and b!6934251 b!6934230)))

(assert (=> bs!1851441 (not (= lambda!394749 lambda!394746))))

(assert (=> bs!1851440 (= (and (= (regOne!34416 lt!2473839) r1!6342) (= (regTwo!34416 lt!2473839) lt!2473823)) (= lambda!394749 lambda!394730))))

(declare-fun bs!1851442 () Bool)

(assert (= bs!1851442 (and b!6934251 b!6934255)))

(assert (=> bs!1851442 (not (= lambda!394749 lambda!394748))))

(declare-fun bs!1851443 () Bool)

(assert (= bs!1851443 (and b!6934251 b!6933865)))

(assert (=> bs!1851443 (= (and (= s!14361 lt!2473822) (= (regOne!34416 lt!2473839) r1!6342) (= (regTwo!34416 lt!2473839) r2!6280)) (= lambda!394749 lambda!394700))))

(declare-fun bs!1851444 () Bool)

(assert (= bs!1851444 (and b!6934251 b!6934100)))

(assert (=> bs!1851444 (= (and (= s!14361 (_1!37112 lt!2473836)) (= (regOne!34416 lt!2473839) (regOne!34416 r1!6342)) (= (regTwo!34416 lt!2473839) (regTwo!34416 r1!6342))) (= lambda!394749 lambda!394736))))

(assert (=> bs!1851443 (not (= lambda!394749 lambda!394699))))

(declare-fun bs!1851445 () Bool)

(assert (= bs!1851445 (and b!6934251 b!6933879)))

(assert (=> bs!1851445 (= (and (= s!14361 (_2!37112 lt!2473836)) (= (regOne!34416 lt!2473839) r2!6280) (= (regTwo!34416 lt!2473839) r3!135)) (= lambda!394749 lambda!394698))))

(declare-fun bs!1851446 () Bool)

(assert (= bs!1851446 (and b!6934251 b!6933872)))

(assert (=> bs!1851446 (= (and (= (regOne!34416 lt!2473839) r1!6342) (= (regTwo!34416 lt!2473839) lt!2473823)) (= lambda!394749 lambda!394696))))

(assert (=> bs!1851445 (not (= lambda!394749 lambda!394697))))

(assert (=> bs!1851446 (not (= lambda!394749 lambda!394695))))

(declare-fun bs!1851447 () Bool)

(assert (= bs!1851447 (and b!6934251 b!6934104)))

(assert (=> bs!1851447 (not (= lambda!394749 lambda!394735))))

(declare-fun bs!1851448 () Bool)

(assert (= bs!1851448 (and b!6934251 d!2166482)))

(assert (=> bs!1851448 (not (= lambda!394749 lambda!394739))))

(declare-fun bs!1851449 () Bool)

(assert (= bs!1851449 (and b!6934251 b!6934226)))

(assert (=> bs!1851449 (= (and (= (regOne!34416 lt!2473839) (regOne!34416 lt!2473819)) (= (regTwo!34416 lt!2473839) (regTwo!34416 lt!2473819))) (= lambda!394749 lambda!394747))))

(assert (=> b!6934251 true))

(assert (=> b!6934251 true))

(declare-fun d!2166502 () Bool)

(declare-fun c!1286843 () Bool)

(assert (=> d!2166502 (= c!1286843 (is-EmptyExpr!16952 lt!2473839))))

(declare-fun e!4172109 () Bool)

(assert (=> d!2166502 (= (matchRSpec!4009 lt!2473839 s!14361) e!4172109)))

(declare-fun b!6934249 () Bool)

(declare-fun res!2828206 () Bool)

(declare-fun e!4172105 () Bool)

(assert (=> b!6934249 (=> res!2828206 e!4172105)))

(declare-fun call!630067 () Bool)

(assert (=> b!6934249 (= res!2828206 call!630067)))

(declare-fun e!4172108 () Bool)

(assert (=> b!6934249 (= e!4172108 e!4172105)))

(declare-fun b!6934250 () Bool)

(declare-fun e!4172104 () Bool)

(declare-fun e!4172106 () Bool)

(assert (=> b!6934250 (= e!4172104 e!4172106)))

(declare-fun res!2828207 () Bool)

(assert (=> b!6934250 (= res!2828207 (matchRSpec!4009 (regOne!34417 lt!2473839) s!14361))))

(assert (=> b!6934250 (=> res!2828207 e!4172106)))

(declare-fun call!630066 () Bool)

(assert (=> b!6934251 (= e!4172108 call!630066)))

(declare-fun b!6934252 () Bool)

(declare-fun c!1286841 () Bool)

(assert (=> b!6934252 (= c!1286841 (is-ElementMatch!16952 lt!2473839))))

(declare-fun e!4172103 () Bool)

(declare-fun e!4172107 () Bool)

(assert (=> b!6934252 (= e!4172103 e!4172107)))

(declare-fun b!6934253 () Bool)

(declare-fun c!1286842 () Bool)

(assert (=> b!6934253 (= c!1286842 (is-Union!16952 lt!2473839))))

(assert (=> b!6934253 (= e!4172107 e!4172104)))

(declare-fun bm!630061 () Bool)

(assert (=> bm!630061 (= call!630067 (isEmpty!38844 s!14361))))

(declare-fun b!6934254 () Bool)

(assert (=> b!6934254 (= e!4172104 e!4172108)))

(declare-fun c!1286840 () Bool)

(assert (=> b!6934254 (= c!1286840 (is-Star!16952 lt!2473839))))

(assert (=> b!6934255 (= e!4172105 call!630066)))

(declare-fun b!6934256 () Bool)

(assert (=> b!6934256 (= e!4172107 (= s!14361 (Cons!66581 (c!1286780 lt!2473839) Nil!66581)))))

(declare-fun b!6934257 () Bool)

(assert (=> b!6934257 (= e!4172109 e!4172103)))

(declare-fun res!2828208 () Bool)

(assert (=> b!6934257 (= res!2828208 (not (is-EmptyLang!16952 lt!2473839)))))

(assert (=> b!6934257 (=> (not res!2828208) (not e!4172103))))

(declare-fun bm!630062 () Bool)

(assert (=> bm!630062 (= call!630066 (Exists!3952 (ite c!1286840 lambda!394748 lambda!394749)))))

(declare-fun b!6934258 () Bool)

(assert (=> b!6934258 (= e!4172106 (matchRSpec!4009 (regTwo!34417 lt!2473839) s!14361))))

(declare-fun b!6934259 () Bool)

(assert (=> b!6934259 (= e!4172109 call!630067)))

(assert (= (and d!2166502 c!1286843) b!6934259))

(assert (= (and d!2166502 (not c!1286843)) b!6934257))

(assert (= (and b!6934257 res!2828208) b!6934252))

(assert (= (and b!6934252 c!1286841) b!6934256))

(assert (= (and b!6934252 (not c!1286841)) b!6934253))

(assert (= (and b!6934253 c!1286842) b!6934250))

(assert (= (and b!6934253 (not c!1286842)) b!6934254))

(assert (= (and b!6934250 (not res!2828207)) b!6934258))

(assert (= (and b!6934254 c!1286840) b!6934249))

(assert (= (and b!6934254 (not c!1286840)) b!6934251))

(assert (= (and b!6934249 (not res!2828206)) b!6934255))

(assert (= (or b!6934255 b!6934251) bm!630062))

(assert (= (or b!6934259 b!6934249) bm!630061))

(declare-fun m!7640510 () Bool)

(assert (=> b!6934250 m!7640510))

(assert (=> bm!630061 m!7640488))

(declare-fun m!7640512 () Bool)

(assert (=> bm!630062 m!7640512))

(declare-fun m!7640514 () Bool)

(assert (=> b!6934258 m!7640514))

(assert (=> b!6933860 d!2166502))

(declare-fun d!2166504 () Bool)

(assert (=> d!2166504 (= (matchR!9091 lt!2473839 s!14361) (matchRSpec!4009 lt!2473839 s!14361))))

(declare-fun lt!2473951 () Unit!160628)

(assert (=> d!2166504 (= lt!2473951 (choose!51645 lt!2473839 s!14361))))

(assert (=> d!2166504 (validRegex!8658 lt!2473839)))

(assert (=> d!2166504 (= (mainMatchTheorem!4009 lt!2473839 s!14361) lt!2473951)))

(declare-fun bs!1851450 () Bool)

(assert (= bs!1851450 d!2166504))

(assert (=> bs!1851450 m!7640210))

(assert (=> bs!1851450 m!7640218))

(declare-fun m!7640516 () Bool)

(assert (=> bs!1851450 m!7640516))

(declare-fun m!7640518 () Bool)

(assert (=> bs!1851450 m!7640518))

(assert (=> b!6933860 d!2166504))

(declare-fun d!2166506 () Bool)

(assert (=> d!2166506 (= (matchR!9091 lt!2473819 s!14361) (matchRSpec!4009 lt!2473819 s!14361))))

(declare-fun lt!2473952 () Unit!160628)

(assert (=> d!2166506 (= lt!2473952 (choose!51645 lt!2473819 s!14361))))

(assert (=> d!2166506 (validRegex!8658 lt!2473819)))

(assert (=> d!2166506 (= (mainMatchTheorem!4009 lt!2473819 s!14361) lt!2473952)))

(declare-fun bs!1851451 () Bool)

(assert (= bs!1851451 d!2166506))

(assert (=> bs!1851451 m!7640214))

(assert (=> bs!1851451 m!7640208))

(declare-fun m!7640520 () Bool)

(assert (=> bs!1851451 m!7640520))

(assert (=> bs!1851451 m!7640498))

(assert (=> b!6933860 d!2166506))

(declare-fun b!6934260 () Bool)

(declare-fun e!4172110 () Bool)

(assert (=> b!6934260 (= e!4172110 (not (= (head!13899 s!14361) (c!1286780 lt!2473839))))))

(declare-fun b!6934261 () Bool)

(declare-fun res!2828211 () Bool)

(assert (=> b!6934261 (=> res!2828211 e!4172110)))

(assert (=> b!6934261 (= res!2828211 (not (isEmpty!38844 (tail!12951 s!14361))))))

(declare-fun b!6934262 () Bool)

(declare-fun res!2828212 () Bool)

(declare-fun e!4172113 () Bool)

(assert (=> b!6934262 (=> (not res!2828212) (not e!4172113))))

(assert (=> b!6934262 (= res!2828212 (isEmpty!38844 (tail!12951 s!14361)))))

(declare-fun b!6934263 () Bool)

(declare-fun res!2828214 () Bool)

(declare-fun e!4172112 () Bool)

(assert (=> b!6934263 (=> res!2828214 e!4172112)))

(assert (=> b!6934263 (= res!2828214 e!4172113)))

(declare-fun res!2828213 () Bool)

(assert (=> b!6934263 (=> (not res!2828213) (not e!4172113))))

(declare-fun lt!2473953 () Bool)

(assert (=> b!6934263 (= res!2828213 lt!2473953)))

(declare-fun b!6934264 () Bool)

(declare-fun e!4172111 () Bool)

(assert (=> b!6934264 (= e!4172111 e!4172110)))

(declare-fun res!2828215 () Bool)

(assert (=> b!6934264 (=> res!2828215 e!4172110)))

(declare-fun call!630068 () Bool)

(assert (=> b!6934264 (= res!2828215 call!630068)))

(declare-fun b!6934265 () Bool)

(declare-fun e!4172114 () Bool)

(assert (=> b!6934265 (= e!4172114 (matchR!9091 (derivativeStep!5446 lt!2473839 (head!13899 s!14361)) (tail!12951 s!14361)))))

(declare-fun b!6934266 () Bool)

(declare-fun e!4172116 () Bool)

(assert (=> b!6934266 (= e!4172116 (not lt!2473953))))

(declare-fun bm!630063 () Bool)

(assert (=> bm!630063 (= call!630068 (isEmpty!38844 s!14361))))

(declare-fun b!6934268 () Bool)

(assert (=> b!6934268 (= e!4172114 (nullable!6771 lt!2473839))))

(declare-fun b!6934269 () Bool)

(declare-fun res!2828216 () Bool)

(assert (=> b!6934269 (=> (not res!2828216) (not e!4172113))))

(assert (=> b!6934269 (= res!2828216 (not call!630068))))

(declare-fun b!6934270 () Bool)

(declare-fun e!4172115 () Bool)

(assert (=> b!6934270 (= e!4172115 (= lt!2473953 call!630068))))

(declare-fun b!6934267 () Bool)

(declare-fun res!2828210 () Bool)

(assert (=> b!6934267 (=> res!2828210 e!4172112)))

(assert (=> b!6934267 (= res!2828210 (not (is-ElementMatch!16952 lt!2473839)))))

(assert (=> b!6934267 (= e!4172116 e!4172112)))

(declare-fun d!2166508 () Bool)

(assert (=> d!2166508 e!4172115))

(declare-fun c!1286844 () Bool)

(assert (=> d!2166508 (= c!1286844 (is-EmptyExpr!16952 lt!2473839))))

(assert (=> d!2166508 (= lt!2473953 e!4172114)))

(declare-fun c!1286846 () Bool)

(assert (=> d!2166508 (= c!1286846 (isEmpty!38844 s!14361))))

(assert (=> d!2166508 (validRegex!8658 lt!2473839)))

(assert (=> d!2166508 (= (matchR!9091 lt!2473839 s!14361) lt!2473953)))

(declare-fun b!6934271 () Bool)

(assert (=> b!6934271 (= e!4172113 (= (head!13899 s!14361) (c!1286780 lt!2473839)))))

(declare-fun b!6934272 () Bool)

(assert (=> b!6934272 (= e!4172112 e!4172111)))

(declare-fun res!2828209 () Bool)

(assert (=> b!6934272 (=> (not res!2828209) (not e!4172111))))

(assert (=> b!6934272 (= res!2828209 (not lt!2473953))))

(declare-fun b!6934273 () Bool)

(assert (=> b!6934273 (= e!4172115 e!4172116)))

(declare-fun c!1286845 () Bool)

(assert (=> b!6934273 (= c!1286845 (is-EmptyLang!16952 lt!2473839))))

(assert (= (and d!2166508 c!1286846) b!6934268))

(assert (= (and d!2166508 (not c!1286846)) b!6934265))

(assert (= (and d!2166508 c!1286844) b!6934270))

(assert (= (and d!2166508 (not c!1286844)) b!6934273))

(assert (= (and b!6934273 c!1286845) b!6934266))

(assert (= (and b!6934273 (not c!1286845)) b!6934267))

(assert (= (and b!6934267 (not res!2828210)) b!6934263))

(assert (= (and b!6934263 res!2828213) b!6934269))

(assert (= (and b!6934269 res!2828216) b!6934262))

(assert (= (and b!6934262 res!2828212) b!6934271))

(assert (= (and b!6934263 (not res!2828214)) b!6934272))

(assert (= (and b!6934272 res!2828209) b!6934264))

(assert (= (and b!6934264 (not res!2828215)) b!6934261))

(assert (= (and b!6934261 (not res!2828211)) b!6934260))

(assert (= (or b!6934270 b!6934269 b!6934264) bm!630063))

(assert (=> b!6934260 m!7640496))

(assert (=> bm!630063 m!7640488))

(assert (=> d!2166508 m!7640488))

(assert (=> d!2166508 m!7640518))

(declare-fun m!7640522 () Bool)

(assert (=> b!6934268 m!7640522))

(assert (=> b!6934271 m!7640496))

(assert (=> b!6934261 m!7640502))

(assert (=> b!6934261 m!7640502))

(assert (=> b!6934261 m!7640504))

(assert (=> b!6934265 m!7640496))

(assert (=> b!6934265 m!7640496))

(declare-fun m!7640524 () Bool)

(assert (=> b!6934265 m!7640524))

(assert (=> b!6934265 m!7640502))

(assert (=> b!6934265 m!7640524))

(assert (=> b!6934265 m!7640502))

(declare-fun m!7640526 () Bool)

(assert (=> b!6934265 m!7640526))

(assert (=> b!6934262 m!7640502))

(assert (=> b!6934262 m!7640502))

(assert (=> b!6934262 m!7640504))

(assert (=> b!6933860 d!2166508))

(declare-fun b!6934274 () Bool)

(declare-fun e!4172121 () Bool)

(declare-fun e!4172122 () Bool)

(assert (=> b!6934274 (= e!4172121 e!4172122)))

(declare-fun c!1286847 () Bool)

(assert (=> b!6934274 (= c!1286847 (is-Union!16952 r2!6280))))

(declare-fun b!6934275 () Bool)

(declare-fun res!2828219 () Bool)

(declare-fun e!4172119 () Bool)

(assert (=> b!6934275 (=> res!2828219 e!4172119)))

(assert (=> b!6934275 (= res!2828219 (not (is-Concat!25797 r2!6280)))))

(assert (=> b!6934275 (= e!4172122 e!4172119)))

(declare-fun bm!630064 () Bool)

(declare-fun call!630070 () Bool)

(assert (=> bm!630064 (= call!630070 (validRegex!8658 (ite c!1286847 (regTwo!34417 r2!6280) (regOne!34416 r2!6280))))))

(declare-fun b!6934276 () Bool)

(declare-fun e!4172123 () Bool)

(declare-fun call!630069 () Bool)

(assert (=> b!6934276 (= e!4172123 call!630069)))

(declare-fun b!6934277 () Bool)

(declare-fun e!4172117 () Bool)

(assert (=> b!6934277 (= e!4172121 e!4172117)))

(declare-fun res!2828220 () Bool)

(assert (=> b!6934277 (= res!2828220 (not (nullable!6771 (reg!17281 r2!6280))))))

(assert (=> b!6934277 (=> (not res!2828220) (not e!4172117))))

(declare-fun b!6934278 () Bool)

(declare-fun e!4172118 () Bool)

(assert (=> b!6934278 (= e!4172118 call!630070)))

(declare-fun b!6934279 () Bool)

(declare-fun res!2828218 () Bool)

(assert (=> b!6934279 (=> (not res!2828218) (not e!4172118))))

(assert (=> b!6934279 (= res!2828218 call!630069)))

(assert (=> b!6934279 (= e!4172122 e!4172118)))

(declare-fun b!6934280 () Bool)

(assert (=> b!6934280 (= e!4172119 e!4172123)))

(declare-fun res!2828217 () Bool)

(assert (=> b!6934280 (=> (not res!2828217) (not e!4172123))))

(assert (=> b!6934280 (= res!2828217 call!630070)))

(declare-fun b!6934281 () Bool)

(declare-fun call!630071 () Bool)

(assert (=> b!6934281 (= e!4172117 call!630071)))

(declare-fun bm!630065 () Bool)

(assert (=> bm!630065 (= call!630069 call!630071)))

(declare-fun c!1286848 () Bool)

(declare-fun bm!630066 () Bool)

(assert (=> bm!630066 (= call!630071 (validRegex!8658 (ite c!1286848 (reg!17281 r2!6280) (ite c!1286847 (regOne!34417 r2!6280) (regTwo!34416 r2!6280)))))))

(declare-fun b!6934282 () Bool)

(declare-fun e!4172120 () Bool)

(assert (=> b!6934282 (= e!4172120 e!4172121)))

(assert (=> b!6934282 (= c!1286848 (is-Star!16952 r2!6280))))

(declare-fun d!2166510 () Bool)

(declare-fun res!2828221 () Bool)

(assert (=> d!2166510 (=> res!2828221 e!4172120)))

(assert (=> d!2166510 (= res!2828221 (is-ElementMatch!16952 r2!6280))))

(assert (=> d!2166510 (= (validRegex!8658 r2!6280) e!4172120)))

(assert (= (and d!2166510 (not res!2828221)) b!6934282))

(assert (= (and b!6934282 c!1286848) b!6934277))

(assert (= (and b!6934282 (not c!1286848)) b!6934274))

(assert (= (and b!6934277 res!2828220) b!6934281))

(assert (= (and b!6934274 c!1286847) b!6934279))

(assert (= (and b!6934274 (not c!1286847)) b!6934275))

(assert (= (and b!6934279 res!2828218) b!6934278))

(assert (= (and b!6934275 (not res!2828219)) b!6934280))

(assert (= (and b!6934280 res!2828217) b!6934276))

(assert (= (or b!6934279 b!6934276) bm!630065))

(assert (= (or b!6934278 b!6934280) bm!630064))

(assert (= (or b!6934281 bm!630065) bm!630066))

(declare-fun m!7640528 () Bool)

(assert (=> bm!630064 m!7640528))

(declare-fun m!7640530 () Bool)

(assert (=> b!6934277 m!7640530))

(declare-fun m!7640532 () Bool)

(assert (=> bm!630066 m!7640532))

(assert (=> b!6933871 d!2166510))

(declare-fun d!2166512 () Bool)

(assert (=> d!2166512 (= (matchR!9091 r3!135 (_2!37112 lt!2473832)) (matchRSpec!4009 r3!135 (_2!37112 lt!2473832)))))

(declare-fun lt!2473954 () Unit!160628)

(assert (=> d!2166512 (= lt!2473954 (choose!51645 r3!135 (_2!37112 lt!2473832)))))

(assert (=> d!2166512 (validRegex!8658 r3!135)))

(assert (=> d!2166512 (= (mainMatchTheorem!4009 r3!135 (_2!37112 lt!2473832)) lt!2473954)))

(declare-fun bs!1851452 () Bool)

(assert (= bs!1851452 d!2166512))

(assert (=> bs!1851452 m!7640204))

(assert (=> bs!1851452 m!7640174))

(declare-fun m!7640534 () Bool)

(assert (=> bs!1851452 m!7640534))

(assert (=> bs!1851452 m!7640220))

(assert (=> b!6933869 d!2166512))

(declare-fun b!6934284 () Bool)

(declare-fun e!4172124 () List!66705)

(assert (=> b!6934284 (= e!4172124 (Cons!66581 (h!73029 (_1!37112 lt!2473832)) (++!14991 (t!380448 (_1!37112 lt!2473832)) (_2!37112 lt!2473832))))))

(declare-fun b!6934286 () Bool)

(declare-fun e!4172125 () Bool)

(declare-fun lt!2473955 () List!66705)

(assert (=> b!6934286 (= e!4172125 (or (not (= (_2!37112 lt!2473832) Nil!66581)) (= lt!2473955 (_1!37112 lt!2473832))))))

(declare-fun b!6934283 () Bool)

(assert (=> b!6934283 (= e!4172124 (_2!37112 lt!2473832))))

(declare-fun d!2166514 () Bool)

(assert (=> d!2166514 e!4172125))

(declare-fun res!2828222 () Bool)

(assert (=> d!2166514 (=> (not res!2828222) (not e!4172125))))

(assert (=> d!2166514 (= res!2828222 (= (content!13093 lt!2473955) (set.union (content!13093 (_1!37112 lt!2473832)) (content!13093 (_2!37112 lt!2473832)))))))

(assert (=> d!2166514 (= lt!2473955 e!4172124)))

(declare-fun c!1286849 () Bool)

(assert (=> d!2166514 (= c!1286849 (is-Nil!66581 (_1!37112 lt!2473832)))))

(assert (=> d!2166514 (= (++!14991 (_1!37112 lt!2473832) (_2!37112 lt!2473832)) lt!2473955)))

(declare-fun b!6934285 () Bool)

(declare-fun res!2828223 () Bool)

(assert (=> b!6934285 (=> (not res!2828223) (not e!4172125))))

(assert (=> b!6934285 (= res!2828223 (= (size!40790 lt!2473955) (+ (size!40790 (_1!37112 lt!2473832)) (size!40790 (_2!37112 lt!2473832)))))))

(assert (= (and d!2166514 c!1286849) b!6934283))

(assert (= (and d!2166514 (not c!1286849)) b!6934284))

(assert (= (and d!2166514 res!2828222) b!6934285))

(assert (= (and b!6934285 res!2828223) b!6934286))

(declare-fun m!7640536 () Bool)

(assert (=> b!6934284 m!7640536))

(declare-fun m!7640538 () Bool)

(assert (=> d!2166514 m!7640538))

(declare-fun m!7640540 () Bool)

(assert (=> d!2166514 m!7640540))

(declare-fun m!7640542 () Bool)

(assert (=> d!2166514 m!7640542))

(declare-fun m!7640544 () Bool)

(assert (=> b!6934285 m!7640544))

(declare-fun m!7640546 () Bool)

(assert (=> b!6934285 m!7640546))

(declare-fun m!7640548 () Bool)

(assert (=> b!6934285 m!7640548))

(assert (=> b!6933869 d!2166514))

(declare-fun b!6934288 () Bool)

(declare-fun e!4172126 () List!66705)

(assert (=> b!6934288 (= e!4172126 (Cons!66581 (h!73029 (_1!37112 lt!2473836)) (++!14991 (t!380448 (_1!37112 lt!2473836)) (++!14991 (_1!37112 lt!2473832) (_2!37112 lt!2473832)))))))

(declare-fun lt!2473956 () List!66705)

(declare-fun b!6934290 () Bool)

(declare-fun e!4172127 () Bool)

(assert (=> b!6934290 (= e!4172127 (or (not (= (++!14991 (_1!37112 lt!2473832) (_2!37112 lt!2473832)) Nil!66581)) (= lt!2473956 (_1!37112 lt!2473836))))))

(declare-fun b!6934287 () Bool)

(assert (=> b!6934287 (= e!4172126 (++!14991 (_1!37112 lt!2473832) (_2!37112 lt!2473832)))))

(declare-fun d!2166516 () Bool)

(assert (=> d!2166516 e!4172127))

(declare-fun res!2828224 () Bool)

(assert (=> d!2166516 (=> (not res!2828224) (not e!4172127))))

(assert (=> d!2166516 (= res!2828224 (= (content!13093 lt!2473956) (set.union (content!13093 (_1!37112 lt!2473836)) (content!13093 (++!14991 (_1!37112 lt!2473832) (_2!37112 lt!2473832))))))))

(assert (=> d!2166516 (= lt!2473956 e!4172126)))

(declare-fun c!1286850 () Bool)

(assert (=> d!2166516 (= c!1286850 (is-Nil!66581 (_1!37112 lt!2473836)))))

(assert (=> d!2166516 (= (++!14991 (_1!37112 lt!2473836) (++!14991 (_1!37112 lt!2473832) (_2!37112 lt!2473832))) lt!2473956)))

(declare-fun b!6934289 () Bool)

(declare-fun res!2828225 () Bool)

(assert (=> b!6934289 (=> (not res!2828225) (not e!4172127))))

(assert (=> b!6934289 (= res!2828225 (= (size!40790 lt!2473956) (+ (size!40790 (_1!37112 lt!2473836)) (size!40790 (++!14991 (_1!37112 lt!2473832) (_2!37112 lt!2473832))))))))

(assert (= (and d!2166516 c!1286850) b!6934287))

(assert (= (and d!2166516 (not c!1286850)) b!6934288))

(assert (= (and d!2166516 res!2828224) b!6934289))

(assert (= (and b!6934289 res!2828225) b!6934290))

(assert (=> b!6934288 m!7640178))

(declare-fun m!7640550 () Bool)

(assert (=> b!6934288 m!7640550))

(declare-fun m!7640552 () Bool)

(assert (=> d!2166516 m!7640552))

(declare-fun m!7640554 () Bool)

(assert (=> d!2166516 m!7640554))

(assert (=> d!2166516 m!7640178))

(declare-fun m!7640556 () Bool)

(assert (=> d!2166516 m!7640556))

(declare-fun m!7640558 () Bool)

(assert (=> b!6934289 m!7640558))

(declare-fun m!7640560 () Bool)

(assert (=> b!6934289 m!7640560))

(assert (=> b!6934289 m!7640178))

(declare-fun m!7640562 () Bool)

(assert (=> b!6934289 m!7640562))

(assert (=> b!6933869 d!2166516))

(declare-fun bs!1851453 () Bool)

(declare-fun b!6934297 () Bool)

(assert (= bs!1851453 (and b!6934297 d!2166470)))

(declare-fun lambda!394750 () Int)

(assert (=> bs!1851453 (not (= lambda!394750 lambda!394729))))

(declare-fun bs!1851454 () Bool)

(assert (= bs!1851454 (and b!6934297 b!6934230)))

(assert (=> bs!1851454 (= (and (= (_2!37112 lt!2473832) s!14361) (= (reg!17281 r3!135) (reg!17281 lt!2473819)) (= r3!135 lt!2473819)) (= lambda!394750 lambda!394746))))

(declare-fun bs!1851455 () Bool)

(assert (= bs!1851455 (and b!6934297 b!6934255)))

(assert (=> bs!1851455 (= (and (= (_2!37112 lt!2473832) s!14361) (= (reg!17281 r3!135) (reg!17281 lt!2473839)) (= r3!135 lt!2473839)) (= lambda!394750 lambda!394748))))

(declare-fun bs!1851456 () Bool)

(assert (= bs!1851456 (and b!6934297 b!6933865)))

(assert (=> bs!1851456 (not (= lambda!394750 lambda!394700))))

(declare-fun bs!1851457 () Bool)

(assert (= bs!1851457 (and b!6934297 b!6934100)))

(assert (=> bs!1851457 (not (= lambda!394750 lambda!394736))))

(assert (=> bs!1851456 (not (= lambda!394750 lambda!394699))))

(declare-fun bs!1851458 () Bool)

(assert (= bs!1851458 (and b!6934297 b!6933879)))

(assert (=> bs!1851458 (not (= lambda!394750 lambda!394698))))

(declare-fun bs!1851459 () Bool)

(assert (= bs!1851459 (and b!6934297 b!6933872)))

(assert (=> bs!1851459 (not (= lambda!394750 lambda!394696))))

(assert (=> bs!1851458 (not (= lambda!394750 lambda!394697))))

(declare-fun bs!1851460 () Bool)

(assert (= bs!1851460 (and b!6934297 b!6934251)))

(assert (=> bs!1851460 (not (= lambda!394750 lambda!394749))))

(assert (=> bs!1851453 (not (= lambda!394750 lambda!394730))))

(assert (=> bs!1851459 (not (= lambda!394750 lambda!394695))))

(declare-fun bs!1851461 () Bool)

(assert (= bs!1851461 (and b!6934297 b!6934104)))

(assert (=> bs!1851461 (= (and (= (_2!37112 lt!2473832) (_1!37112 lt!2473836)) (= (reg!17281 r3!135) (reg!17281 r1!6342)) (= r3!135 r1!6342)) (= lambda!394750 lambda!394735))))

(declare-fun bs!1851462 () Bool)

(assert (= bs!1851462 (and b!6934297 d!2166482)))

(assert (=> bs!1851462 (not (= lambda!394750 lambda!394739))))

(declare-fun bs!1851463 () Bool)

(assert (= bs!1851463 (and b!6934297 b!6934226)))

(assert (=> bs!1851463 (not (= lambda!394750 lambda!394747))))

(assert (=> b!6934297 true))

(assert (=> b!6934297 true))

(declare-fun bs!1851464 () Bool)

(declare-fun b!6934293 () Bool)

(assert (= bs!1851464 (and b!6934293 d!2166470)))

(declare-fun lambda!394751 () Int)

(assert (=> bs!1851464 (not (= lambda!394751 lambda!394729))))

(declare-fun bs!1851465 () Bool)

(assert (= bs!1851465 (and b!6934293 b!6934230)))

(assert (=> bs!1851465 (not (= lambda!394751 lambda!394746))))

(declare-fun bs!1851466 () Bool)

(assert (= bs!1851466 (and b!6934293 b!6934255)))

(assert (=> bs!1851466 (not (= lambda!394751 lambda!394748))))

(declare-fun bs!1851467 () Bool)

(assert (= bs!1851467 (and b!6934293 b!6933865)))

(assert (=> bs!1851467 (= (and (= (_2!37112 lt!2473832) lt!2473822) (= (regOne!34416 r3!135) r1!6342) (= (regTwo!34416 r3!135) r2!6280)) (= lambda!394751 lambda!394700))))

(declare-fun bs!1851468 () Bool)

(assert (= bs!1851468 (and b!6934293 b!6934100)))

(assert (=> bs!1851468 (= (and (= (_2!37112 lt!2473832) (_1!37112 lt!2473836)) (= (regOne!34416 r3!135) (regOne!34416 r1!6342)) (= (regTwo!34416 r3!135) (regTwo!34416 r1!6342))) (= lambda!394751 lambda!394736))))

(declare-fun bs!1851469 () Bool)

(assert (= bs!1851469 (and b!6934293 b!6934297)))

(assert (=> bs!1851469 (not (= lambda!394751 lambda!394750))))

(assert (=> bs!1851467 (not (= lambda!394751 lambda!394699))))

(declare-fun bs!1851470 () Bool)

(assert (= bs!1851470 (and b!6934293 b!6933879)))

(assert (=> bs!1851470 (= (and (= (_2!37112 lt!2473832) (_2!37112 lt!2473836)) (= (regOne!34416 r3!135) r2!6280) (= (regTwo!34416 r3!135) r3!135)) (= lambda!394751 lambda!394698))))

(declare-fun bs!1851471 () Bool)

(assert (= bs!1851471 (and b!6934293 b!6933872)))

(assert (=> bs!1851471 (= (and (= (_2!37112 lt!2473832) s!14361) (= (regOne!34416 r3!135) r1!6342) (= (regTwo!34416 r3!135) lt!2473823)) (= lambda!394751 lambda!394696))))

(assert (=> bs!1851470 (not (= lambda!394751 lambda!394697))))

(declare-fun bs!1851472 () Bool)

(assert (= bs!1851472 (and b!6934293 b!6934251)))

(assert (=> bs!1851472 (= (and (= (_2!37112 lt!2473832) s!14361) (= (regOne!34416 r3!135) (regOne!34416 lt!2473839)) (= (regTwo!34416 r3!135) (regTwo!34416 lt!2473839))) (= lambda!394751 lambda!394749))))

(assert (=> bs!1851464 (= (and (= (_2!37112 lt!2473832) s!14361) (= (regOne!34416 r3!135) r1!6342) (= (regTwo!34416 r3!135) lt!2473823)) (= lambda!394751 lambda!394730))))

(assert (=> bs!1851471 (not (= lambda!394751 lambda!394695))))

(declare-fun bs!1851473 () Bool)

(assert (= bs!1851473 (and b!6934293 b!6934104)))

(assert (=> bs!1851473 (not (= lambda!394751 lambda!394735))))

(declare-fun bs!1851474 () Bool)

(assert (= bs!1851474 (and b!6934293 d!2166482)))

(assert (=> bs!1851474 (not (= lambda!394751 lambda!394739))))

(declare-fun bs!1851475 () Bool)

(assert (= bs!1851475 (and b!6934293 b!6934226)))

(assert (=> bs!1851475 (= (and (= (_2!37112 lt!2473832) s!14361) (= (regOne!34416 r3!135) (regOne!34416 lt!2473819)) (= (regTwo!34416 r3!135) (regTwo!34416 lt!2473819))) (= lambda!394751 lambda!394747))))

(assert (=> b!6934293 true))

(assert (=> b!6934293 true))

(declare-fun d!2166518 () Bool)

(declare-fun c!1286854 () Bool)

(assert (=> d!2166518 (= c!1286854 (is-EmptyExpr!16952 r3!135))))

(declare-fun e!4172134 () Bool)

(assert (=> d!2166518 (= (matchRSpec!4009 r3!135 (_2!37112 lt!2473832)) e!4172134)))

(declare-fun b!6934291 () Bool)

(declare-fun res!2828226 () Bool)

(declare-fun e!4172130 () Bool)

(assert (=> b!6934291 (=> res!2828226 e!4172130)))

(declare-fun call!630073 () Bool)

(assert (=> b!6934291 (= res!2828226 call!630073)))

(declare-fun e!4172133 () Bool)

(assert (=> b!6934291 (= e!4172133 e!4172130)))

(declare-fun b!6934292 () Bool)

(declare-fun e!4172129 () Bool)

(declare-fun e!4172131 () Bool)

(assert (=> b!6934292 (= e!4172129 e!4172131)))

(declare-fun res!2828227 () Bool)

(assert (=> b!6934292 (= res!2828227 (matchRSpec!4009 (regOne!34417 r3!135) (_2!37112 lt!2473832)))))

(assert (=> b!6934292 (=> res!2828227 e!4172131)))

(declare-fun call!630072 () Bool)

(assert (=> b!6934293 (= e!4172133 call!630072)))

(declare-fun b!6934294 () Bool)

(declare-fun c!1286852 () Bool)

(assert (=> b!6934294 (= c!1286852 (is-ElementMatch!16952 r3!135))))

(declare-fun e!4172128 () Bool)

(declare-fun e!4172132 () Bool)

(assert (=> b!6934294 (= e!4172128 e!4172132)))

(declare-fun b!6934295 () Bool)

(declare-fun c!1286853 () Bool)

(assert (=> b!6934295 (= c!1286853 (is-Union!16952 r3!135))))

(assert (=> b!6934295 (= e!4172132 e!4172129)))

(declare-fun bm!630067 () Bool)

(assert (=> bm!630067 (= call!630073 (isEmpty!38844 (_2!37112 lt!2473832)))))

(declare-fun b!6934296 () Bool)

(assert (=> b!6934296 (= e!4172129 e!4172133)))

(declare-fun c!1286851 () Bool)

(assert (=> b!6934296 (= c!1286851 (is-Star!16952 r3!135))))

(assert (=> b!6934297 (= e!4172130 call!630072)))

(declare-fun b!6934298 () Bool)

(assert (=> b!6934298 (= e!4172132 (= (_2!37112 lt!2473832) (Cons!66581 (c!1286780 r3!135) Nil!66581)))))

(declare-fun b!6934299 () Bool)

(assert (=> b!6934299 (= e!4172134 e!4172128)))

(declare-fun res!2828228 () Bool)

(assert (=> b!6934299 (= res!2828228 (not (is-EmptyLang!16952 r3!135)))))

(assert (=> b!6934299 (=> (not res!2828228) (not e!4172128))))

(declare-fun bm!630068 () Bool)

(assert (=> bm!630068 (= call!630072 (Exists!3952 (ite c!1286851 lambda!394750 lambda!394751)))))

(declare-fun b!6934300 () Bool)

(assert (=> b!6934300 (= e!4172131 (matchRSpec!4009 (regTwo!34417 r3!135) (_2!37112 lt!2473832)))))

(declare-fun b!6934301 () Bool)

(assert (=> b!6934301 (= e!4172134 call!630073)))

(assert (= (and d!2166518 c!1286854) b!6934301))

(assert (= (and d!2166518 (not c!1286854)) b!6934299))

(assert (= (and b!6934299 res!2828228) b!6934294))

(assert (= (and b!6934294 c!1286852) b!6934298))

(assert (= (and b!6934294 (not c!1286852)) b!6934295))

(assert (= (and b!6934295 c!1286853) b!6934292))

(assert (= (and b!6934295 (not c!1286853)) b!6934296))

(assert (= (and b!6934292 (not res!2828227)) b!6934300))

(assert (= (and b!6934296 c!1286851) b!6934291))

(assert (= (and b!6934296 (not c!1286851)) b!6934293))

(assert (= (and b!6934291 (not res!2828226)) b!6934297))

(assert (= (or b!6934297 b!6934293) bm!630068))

(assert (= (or b!6934301 b!6934291) bm!630067))

(declare-fun m!7640564 () Bool)

(assert (=> b!6934292 m!7640564))

(assert (=> bm!630067 m!7640378))

(declare-fun m!7640566 () Bool)

(assert (=> bm!630068 m!7640566))

(declare-fun m!7640568 () Bool)

(assert (=> b!6934300 m!7640568))

(assert (=> b!6933869 d!2166518))

(declare-fun bs!1851476 () Bool)

(declare-fun b!6934308 () Bool)

(assert (= bs!1851476 (and b!6934308 b!6934293)))

(declare-fun lambda!394752 () Int)

(assert (=> bs!1851476 (not (= lambda!394752 lambda!394751))))

(declare-fun bs!1851477 () Bool)

(assert (= bs!1851477 (and b!6934308 d!2166470)))

(assert (=> bs!1851477 (not (= lambda!394752 lambda!394729))))

(declare-fun bs!1851478 () Bool)

(assert (= bs!1851478 (and b!6934308 b!6934230)))

(assert (=> bs!1851478 (= (and (= (_1!37112 lt!2473832) s!14361) (= (reg!17281 r2!6280) (reg!17281 lt!2473819)) (= r2!6280 lt!2473819)) (= lambda!394752 lambda!394746))))

(declare-fun bs!1851479 () Bool)

(assert (= bs!1851479 (and b!6934308 b!6934255)))

(assert (=> bs!1851479 (= (and (= (_1!37112 lt!2473832) s!14361) (= (reg!17281 r2!6280) (reg!17281 lt!2473839)) (= r2!6280 lt!2473839)) (= lambda!394752 lambda!394748))))

(declare-fun bs!1851480 () Bool)

(assert (= bs!1851480 (and b!6934308 b!6933865)))

(assert (=> bs!1851480 (not (= lambda!394752 lambda!394700))))

(declare-fun bs!1851481 () Bool)

(assert (= bs!1851481 (and b!6934308 b!6934100)))

(assert (=> bs!1851481 (not (= lambda!394752 lambda!394736))))

(declare-fun bs!1851482 () Bool)

(assert (= bs!1851482 (and b!6934308 b!6934297)))

(assert (=> bs!1851482 (= (and (= (_1!37112 lt!2473832) (_2!37112 lt!2473832)) (= (reg!17281 r2!6280) (reg!17281 r3!135)) (= r2!6280 r3!135)) (= lambda!394752 lambda!394750))))

(assert (=> bs!1851480 (not (= lambda!394752 lambda!394699))))

(declare-fun bs!1851483 () Bool)

(assert (= bs!1851483 (and b!6934308 b!6933879)))

(assert (=> bs!1851483 (not (= lambda!394752 lambda!394698))))

(declare-fun bs!1851484 () Bool)

(assert (= bs!1851484 (and b!6934308 b!6933872)))

(assert (=> bs!1851484 (not (= lambda!394752 lambda!394696))))

(assert (=> bs!1851483 (not (= lambda!394752 lambda!394697))))

(declare-fun bs!1851485 () Bool)

(assert (= bs!1851485 (and b!6934308 b!6934251)))

(assert (=> bs!1851485 (not (= lambda!394752 lambda!394749))))

(assert (=> bs!1851477 (not (= lambda!394752 lambda!394730))))

(assert (=> bs!1851484 (not (= lambda!394752 lambda!394695))))

(declare-fun bs!1851486 () Bool)

(assert (= bs!1851486 (and b!6934308 b!6934104)))

(assert (=> bs!1851486 (= (and (= (_1!37112 lt!2473832) (_1!37112 lt!2473836)) (= (reg!17281 r2!6280) (reg!17281 r1!6342)) (= r2!6280 r1!6342)) (= lambda!394752 lambda!394735))))

(declare-fun bs!1851487 () Bool)

(assert (= bs!1851487 (and b!6934308 d!2166482)))

(assert (=> bs!1851487 (not (= lambda!394752 lambda!394739))))

(declare-fun bs!1851488 () Bool)

(assert (= bs!1851488 (and b!6934308 b!6934226)))

(assert (=> bs!1851488 (not (= lambda!394752 lambda!394747))))

(assert (=> b!6934308 true))

(assert (=> b!6934308 true))

(declare-fun bs!1851489 () Bool)

(declare-fun b!6934304 () Bool)

(assert (= bs!1851489 (and b!6934304 b!6934293)))

(declare-fun lambda!394753 () Int)

(assert (=> bs!1851489 (= (and (= (_1!37112 lt!2473832) (_2!37112 lt!2473832)) (= (regOne!34416 r2!6280) (regOne!34416 r3!135)) (= (regTwo!34416 r2!6280) (regTwo!34416 r3!135))) (= lambda!394753 lambda!394751))))

(declare-fun bs!1851490 () Bool)

(assert (= bs!1851490 (and b!6934304 d!2166470)))

(assert (=> bs!1851490 (not (= lambda!394753 lambda!394729))))

(declare-fun bs!1851491 () Bool)

(assert (= bs!1851491 (and b!6934304 b!6934230)))

(assert (=> bs!1851491 (not (= lambda!394753 lambda!394746))))

(declare-fun bs!1851492 () Bool)

(assert (= bs!1851492 (and b!6934304 b!6934255)))

(assert (=> bs!1851492 (not (= lambda!394753 lambda!394748))))

(declare-fun bs!1851493 () Bool)

(assert (= bs!1851493 (and b!6934304 b!6933865)))

(assert (=> bs!1851493 (= (and (= (_1!37112 lt!2473832) lt!2473822) (= (regOne!34416 r2!6280) r1!6342) (= (regTwo!34416 r2!6280) r2!6280)) (= lambda!394753 lambda!394700))))

(declare-fun bs!1851494 () Bool)

(assert (= bs!1851494 (and b!6934304 b!6934297)))

(assert (=> bs!1851494 (not (= lambda!394753 lambda!394750))))

(assert (=> bs!1851493 (not (= lambda!394753 lambda!394699))))

(declare-fun bs!1851495 () Bool)

(assert (= bs!1851495 (and b!6934304 b!6933879)))

(assert (=> bs!1851495 (= (and (= (_1!37112 lt!2473832) (_2!37112 lt!2473836)) (= (regOne!34416 r2!6280) r2!6280) (= (regTwo!34416 r2!6280) r3!135)) (= lambda!394753 lambda!394698))))

(declare-fun bs!1851496 () Bool)

(assert (= bs!1851496 (and b!6934304 b!6933872)))

(assert (=> bs!1851496 (= (and (= (_1!37112 lt!2473832) s!14361) (= (regOne!34416 r2!6280) r1!6342) (= (regTwo!34416 r2!6280) lt!2473823)) (= lambda!394753 lambda!394696))))

(assert (=> bs!1851495 (not (= lambda!394753 lambda!394697))))

(declare-fun bs!1851497 () Bool)

(assert (= bs!1851497 (and b!6934304 b!6934251)))

(assert (=> bs!1851497 (= (and (= (_1!37112 lt!2473832) s!14361) (= (regOne!34416 r2!6280) (regOne!34416 lt!2473839)) (= (regTwo!34416 r2!6280) (regTwo!34416 lt!2473839))) (= lambda!394753 lambda!394749))))

(assert (=> bs!1851490 (= (and (= (_1!37112 lt!2473832) s!14361) (= (regOne!34416 r2!6280) r1!6342) (= (regTwo!34416 r2!6280) lt!2473823)) (= lambda!394753 lambda!394730))))

(declare-fun bs!1851498 () Bool)

(assert (= bs!1851498 (and b!6934304 b!6934100)))

(assert (=> bs!1851498 (= (and (= (_1!37112 lt!2473832) (_1!37112 lt!2473836)) (= (regOne!34416 r2!6280) (regOne!34416 r1!6342)) (= (regTwo!34416 r2!6280) (regTwo!34416 r1!6342))) (= lambda!394753 lambda!394736))))

(declare-fun bs!1851499 () Bool)

(assert (= bs!1851499 (and b!6934304 b!6934308)))

(assert (=> bs!1851499 (not (= lambda!394753 lambda!394752))))

(assert (=> bs!1851496 (not (= lambda!394753 lambda!394695))))

(declare-fun bs!1851500 () Bool)

(assert (= bs!1851500 (and b!6934304 b!6934104)))

(assert (=> bs!1851500 (not (= lambda!394753 lambda!394735))))

(declare-fun bs!1851501 () Bool)

(assert (= bs!1851501 (and b!6934304 d!2166482)))

(assert (=> bs!1851501 (not (= lambda!394753 lambda!394739))))

(declare-fun bs!1851502 () Bool)

(assert (= bs!1851502 (and b!6934304 b!6934226)))

(assert (=> bs!1851502 (= (and (= (_1!37112 lt!2473832) s!14361) (= (regOne!34416 r2!6280) (regOne!34416 lt!2473819)) (= (regTwo!34416 r2!6280) (regTwo!34416 lt!2473819))) (= lambda!394753 lambda!394747))))

(assert (=> b!6934304 true))

(assert (=> b!6934304 true))

(declare-fun d!2166520 () Bool)

(declare-fun c!1286858 () Bool)

(assert (=> d!2166520 (= c!1286858 (is-EmptyExpr!16952 r2!6280))))

(declare-fun e!4172141 () Bool)

(assert (=> d!2166520 (= (matchRSpec!4009 r2!6280 (_1!37112 lt!2473832)) e!4172141)))

(declare-fun b!6934302 () Bool)

(declare-fun res!2828229 () Bool)

(declare-fun e!4172137 () Bool)

(assert (=> b!6934302 (=> res!2828229 e!4172137)))

(declare-fun call!630075 () Bool)

(assert (=> b!6934302 (= res!2828229 call!630075)))

(declare-fun e!4172140 () Bool)

(assert (=> b!6934302 (= e!4172140 e!4172137)))

(declare-fun b!6934303 () Bool)

(declare-fun e!4172136 () Bool)

(declare-fun e!4172138 () Bool)

(assert (=> b!6934303 (= e!4172136 e!4172138)))

(declare-fun res!2828230 () Bool)

(assert (=> b!6934303 (= res!2828230 (matchRSpec!4009 (regOne!34417 r2!6280) (_1!37112 lt!2473832)))))

(assert (=> b!6934303 (=> res!2828230 e!4172138)))

(declare-fun call!630074 () Bool)

(assert (=> b!6934304 (= e!4172140 call!630074)))

(declare-fun b!6934305 () Bool)

(declare-fun c!1286856 () Bool)

(assert (=> b!6934305 (= c!1286856 (is-ElementMatch!16952 r2!6280))))

(declare-fun e!4172135 () Bool)

(declare-fun e!4172139 () Bool)

(assert (=> b!6934305 (= e!4172135 e!4172139)))

(declare-fun b!6934306 () Bool)

(declare-fun c!1286857 () Bool)

(assert (=> b!6934306 (= c!1286857 (is-Union!16952 r2!6280))))

(assert (=> b!6934306 (= e!4172139 e!4172136)))

(declare-fun bm!630069 () Bool)

(assert (=> bm!630069 (= call!630075 (isEmpty!38844 (_1!37112 lt!2473832)))))

(declare-fun b!6934307 () Bool)

(assert (=> b!6934307 (= e!4172136 e!4172140)))

(declare-fun c!1286855 () Bool)

(assert (=> b!6934307 (= c!1286855 (is-Star!16952 r2!6280))))

(assert (=> b!6934308 (= e!4172137 call!630074)))

(declare-fun b!6934309 () Bool)

(assert (=> b!6934309 (= e!4172139 (= (_1!37112 lt!2473832) (Cons!66581 (c!1286780 r2!6280) Nil!66581)))))

(declare-fun b!6934310 () Bool)

(assert (=> b!6934310 (= e!4172141 e!4172135)))

(declare-fun res!2828231 () Bool)

(assert (=> b!6934310 (= res!2828231 (not (is-EmptyLang!16952 r2!6280)))))

(assert (=> b!6934310 (=> (not res!2828231) (not e!4172135))))

(declare-fun bm!630070 () Bool)

(assert (=> bm!630070 (= call!630074 (Exists!3952 (ite c!1286855 lambda!394752 lambda!394753)))))

(declare-fun b!6934311 () Bool)

(assert (=> b!6934311 (= e!4172138 (matchRSpec!4009 (regTwo!34417 r2!6280) (_1!37112 lt!2473832)))))

(declare-fun b!6934312 () Bool)

(assert (=> b!6934312 (= e!4172141 call!630075)))

(assert (= (and d!2166520 c!1286858) b!6934312))

(assert (= (and d!2166520 (not c!1286858)) b!6934310))

(assert (= (and b!6934310 res!2828231) b!6934305))

(assert (= (and b!6934305 c!1286856) b!6934309))

(assert (= (and b!6934305 (not c!1286856)) b!6934306))

(assert (= (and b!6934306 c!1286857) b!6934303))

(assert (= (and b!6934306 (not c!1286857)) b!6934307))

(assert (= (and b!6934303 (not res!2828230)) b!6934311))

(assert (= (and b!6934307 c!1286855) b!6934302))

(assert (= (and b!6934307 (not c!1286855)) b!6934304))

(assert (= (and b!6934302 (not res!2828229)) b!6934308))

(assert (= (or b!6934308 b!6934304) bm!630070))

(assert (= (or b!6934312 b!6934302) bm!630069))

(declare-fun m!7640570 () Bool)

(assert (=> b!6934303 m!7640570))

(declare-fun m!7640572 () Bool)

(assert (=> bm!630069 m!7640572))

(declare-fun m!7640574 () Bool)

(assert (=> bm!630070 m!7640574))

(declare-fun m!7640576 () Bool)

(assert (=> b!6934311 m!7640576))

(assert (=> b!6933869 d!2166520))

(declare-fun d!2166522 () Bool)

(assert (=> d!2166522 (= (matchR!9091 r2!6280 (_1!37112 lt!2473832)) (matchRSpec!4009 r2!6280 (_1!37112 lt!2473832)))))

(declare-fun lt!2473957 () Unit!160628)

(assert (=> d!2166522 (= lt!2473957 (choose!51645 r2!6280 (_1!37112 lt!2473832)))))

(assert (=> d!2166522 (validRegex!8658 r2!6280)))

(assert (=> d!2166522 (= (mainMatchTheorem!4009 r2!6280 (_1!37112 lt!2473832)) lt!2473957)))

(declare-fun bs!1851503 () Bool)

(assert (= bs!1851503 d!2166522))

(assert (=> bs!1851503 m!7640200))

(assert (=> bs!1851503 m!7640172))

(declare-fun m!7640578 () Bool)

(assert (=> bs!1851503 m!7640578))

(assert (=> bs!1851503 m!7640272))

(assert (=> b!6933869 d!2166522))

(declare-fun b!6934313 () Bool)

(declare-fun e!4172142 () Bool)

(assert (=> b!6934313 (= e!4172142 (not (= (head!13899 (_2!37112 lt!2473836)) (c!1286780 lt!2473823))))))

(declare-fun b!6934314 () Bool)

(declare-fun res!2828234 () Bool)

(assert (=> b!6934314 (=> res!2828234 e!4172142)))

(assert (=> b!6934314 (= res!2828234 (not (isEmpty!38844 (tail!12951 (_2!37112 lt!2473836)))))))

(declare-fun b!6934315 () Bool)

(declare-fun res!2828235 () Bool)

(declare-fun e!4172145 () Bool)

(assert (=> b!6934315 (=> (not res!2828235) (not e!4172145))))

(assert (=> b!6934315 (= res!2828235 (isEmpty!38844 (tail!12951 (_2!37112 lt!2473836))))))

(declare-fun b!6934316 () Bool)

(declare-fun res!2828237 () Bool)

(declare-fun e!4172144 () Bool)

(assert (=> b!6934316 (=> res!2828237 e!4172144)))

(assert (=> b!6934316 (= res!2828237 e!4172145)))

(declare-fun res!2828236 () Bool)

(assert (=> b!6934316 (=> (not res!2828236) (not e!4172145))))

(declare-fun lt!2473958 () Bool)

(assert (=> b!6934316 (= res!2828236 lt!2473958)))

(declare-fun b!6934317 () Bool)

(declare-fun e!4172143 () Bool)

(assert (=> b!6934317 (= e!4172143 e!4172142)))

(declare-fun res!2828238 () Bool)

(assert (=> b!6934317 (=> res!2828238 e!4172142)))

(declare-fun call!630076 () Bool)

(assert (=> b!6934317 (= res!2828238 call!630076)))

(declare-fun b!6934318 () Bool)

(declare-fun e!4172146 () Bool)

(assert (=> b!6934318 (= e!4172146 (matchR!9091 (derivativeStep!5446 lt!2473823 (head!13899 (_2!37112 lt!2473836))) (tail!12951 (_2!37112 lt!2473836))))))

(declare-fun b!6934319 () Bool)

(declare-fun e!4172148 () Bool)

(assert (=> b!6934319 (= e!4172148 (not lt!2473958))))

(declare-fun bm!630071 () Bool)

(assert (=> bm!630071 (= call!630076 (isEmpty!38844 (_2!37112 lt!2473836)))))

(declare-fun b!6934321 () Bool)

(assert (=> b!6934321 (= e!4172146 (nullable!6771 lt!2473823))))

(declare-fun b!6934322 () Bool)

(declare-fun res!2828239 () Bool)

(assert (=> b!6934322 (=> (not res!2828239) (not e!4172145))))

(assert (=> b!6934322 (= res!2828239 (not call!630076))))

(declare-fun b!6934323 () Bool)

(declare-fun e!4172147 () Bool)

(assert (=> b!6934323 (= e!4172147 (= lt!2473958 call!630076))))

(declare-fun b!6934320 () Bool)

(declare-fun res!2828233 () Bool)

(assert (=> b!6934320 (=> res!2828233 e!4172144)))

(assert (=> b!6934320 (= res!2828233 (not (is-ElementMatch!16952 lt!2473823)))))

(assert (=> b!6934320 (= e!4172148 e!4172144)))

(declare-fun d!2166524 () Bool)

(assert (=> d!2166524 e!4172147))

(declare-fun c!1286859 () Bool)

(assert (=> d!2166524 (= c!1286859 (is-EmptyExpr!16952 lt!2473823))))

(assert (=> d!2166524 (= lt!2473958 e!4172146)))

(declare-fun c!1286861 () Bool)

(assert (=> d!2166524 (= c!1286861 (isEmpty!38844 (_2!37112 lt!2473836)))))

(assert (=> d!2166524 (validRegex!8658 lt!2473823)))

(assert (=> d!2166524 (= (matchR!9091 lt!2473823 (_2!37112 lt!2473836)) lt!2473958)))

(declare-fun b!6934324 () Bool)

(assert (=> b!6934324 (= e!4172145 (= (head!13899 (_2!37112 lt!2473836)) (c!1286780 lt!2473823)))))

(declare-fun b!6934325 () Bool)

(assert (=> b!6934325 (= e!4172144 e!4172143)))

(declare-fun res!2828232 () Bool)

(assert (=> b!6934325 (=> (not res!2828232) (not e!4172143))))

(assert (=> b!6934325 (= res!2828232 (not lt!2473958))))

(declare-fun b!6934326 () Bool)

(assert (=> b!6934326 (= e!4172147 e!4172148)))

(declare-fun c!1286860 () Bool)

(assert (=> b!6934326 (= c!1286860 (is-EmptyLang!16952 lt!2473823))))

(assert (= (and d!2166524 c!1286861) b!6934321))

(assert (= (and d!2166524 (not c!1286861)) b!6934318))

(assert (= (and d!2166524 c!1286859) b!6934323))

(assert (= (and d!2166524 (not c!1286859)) b!6934326))

(assert (= (and b!6934326 c!1286860) b!6934319))

(assert (= (and b!6934326 (not c!1286860)) b!6934320))

(assert (= (and b!6934320 (not res!2828233)) b!6934316))

(assert (= (and b!6934316 res!2828236) b!6934322))

(assert (= (and b!6934322 res!2828239) b!6934315))

(assert (= (and b!6934315 res!2828235) b!6934324))

(assert (= (and b!6934316 (not res!2828237)) b!6934325))

(assert (= (and b!6934325 res!2828232) b!6934317))

(assert (= (and b!6934317 (not res!2828238)) b!6934314))

(assert (= (and b!6934314 (not res!2828234)) b!6934313))

(assert (= (or b!6934323 b!6934322 b!6934317) bm!630071))

(declare-fun m!7640580 () Bool)

(assert (=> b!6934313 m!7640580))

(declare-fun m!7640582 () Bool)

(assert (=> bm!630071 m!7640582))

(assert (=> d!2166524 m!7640582))

(declare-fun m!7640584 () Bool)

(assert (=> d!2166524 m!7640584))

(declare-fun m!7640586 () Bool)

(assert (=> b!6934321 m!7640586))

(assert (=> b!6934324 m!7640580))

(declare-fun m!7640588 () Bool)

(assert (=> b!6934314 m!7640588))

(assert (=> b!6934314 m!7640588))

(declare-fun m!7640590 () Bool)

(assert (=> b!6934314 m!7640590))

(assert (=> b!6934318 m!7640580))

(assert (=> b!6934318 m!7640580))

(declare-fun m!7640592 () Bool)

(assert (=> b!6934318 m!7640592))

(assert (=> b!6934318 m!7640588))

(assert (=> b!6934318 m!7640592))

(assert (=> b!6934318 m!7640588))

(declare-fun m!7640594 () Bool)

(assert (=> b!6934318 m!7640594))

(assert (=> b!6934315 m!7640588))

(assert (=> b!6934315 m!7640588))

(assert (=> b!6934315 m!7640590))

(assert (=> b!6933868 d!2166524))

(declare-fun d!2166526 () Bool)

(assert (=> d!2166526 (= (matchR!9091 lt!2473823 (_2!37112 lt!2473836)) (matchRSpec!4009 lt!2473823 (_2!37112 lt!2473836)))))

(declare-fun lt!2473959 () Unit!160628)

(assert (=> d!2166526 (= lt!2473959 (choose!51645 lt!2473823 (_2!37112 lt!2473836)))))

(assert (=> d!2166526 (validRegex!8658 lt!2473823)))

(assert (=> d!2166526 (= (mainMatchTheorem!4009 lt!2473823 (_2!37112 lt!2473836)) lt!2473959)))

(declare-fun bs!1851504 () Bool)

(assert (= bs!1851504 d!2166526))

(assert (=> bs!1851504 m!7640222))

(assert (=> bs!1851504 m!7640192))

(declare-fun m!7640596 () Bool)

(assert (=> bs!1851504 m!7640596))

(assert (=> bs!1851504 m!7640584))

(assert (=> b!6933879 d!2166526))

(declare-fun bs!1851505 () Bool)

(declare-fun d!2166528 () Bool)

(assert (= bs!1851505 (and d!2166528 b!6934293)))

(declare-fun lambda!394754 () Int)

(assert (=> bs!1851505 (not (= lambda!394754 lambda!394751))))

(declare-fun bs!1851506 () Bool)

(assert (= bs!1851506 (and d!2166528 d!2166470)))

(assert (=> bs!1851506 (= (and (= (_2!37112 lt!2473836) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473823)) (= lambda!394754 lambda!394729))))

(declare-fun bs!1851507 () Bool)

(assert (= bs!1851507 (and d!2166528 b!6934304)))

(assert (=> bs!1851507 (not (= lambda!394754 lambda!394753))))

(declare-fun bs!1851508 () Bool)

(assert (= bs!1851508 (and d!2166528 b!6934230)))

(assert (=> bs!1851508 (not (= lambda!394754 lambda!394746))))

(declare-fun bs!1851509 () Bool)

(assert (= bs!1851509 (and d!2166528 b!6934255)))

(assert (=> bs!1851509 (not (= lambda!394754 lambda!394748))))

(declare-fun bs!1851510 () Bool)

(assert (= bs!1851510 (and d!2166528 b!6933865)))

(assert (=> bs!1851510 (not (= lambda!394754 lambda!394700))))

(declare-fun bs!1851511 () Bool)

(assert (= bs!1851511 (and d!2166528 b!6934297)))

(assert (=> bs!1851511 (not (= lambda!394754 lambda!394750))))

(assert (=> bs!1851510 (= (and (= (_2!37112 lt!2473836) lt!2473822) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394754 lambda!394699))))

(declare-fun bs!1851512 () Bool)

(assert (= bs!1851512 (and d!2166528 b!6933879)))

(assert (=> bs!1851512 (not (= lambda!394754 lambda!394698))))

(declare-fun bs!1851513 () Bool)

(assert (= bs!1851513 (and d!2166528 b!6933872)))

(assert (=> bs!1851513 (not (= lambda!394754 lambda!394696))))

(assert (=> bs!1851512 (= lambda!394754 lambda!394697)))

(declare-fun bs!1851514 () Bool)

(assert (= bs!1851514 (and d!2166528 b!6934251)))

(assert (=> bs!1851514 (not (= lambda!394754 lambda!394749))))

(assert (=> bs!1851506 (not (= lambda!394754 lambda!394730))))

(declare-fun bs!1851515 () Bool)

(assert (= bs!1851515 (and d!2166528 b!6934100)))

(assert (=> bs!1851515 (not (= lambda!394754 lambda!394736))))

(declare-fun bs!1851516 () Bool)

(assert (= bs!1851516 (and d!2166528 b!6934308)))

(assert (=> bs!1851516 (not (= lambda!394754 lambda!394752))))

(assert (=> bs!1851513 (= (and (= (_2!37112 lt!2473836) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473823)) (= lambda!394754 lambda!394695))))

(declare-fun bs!1851517 () Bool)

(assert (= bs!1851517 (and d!2166528 b!6934104)))

(assert (=> bs!1851517 (not (= lambda!394754 lambda!394735))))

(declare-fun bs!1851518 () Bool)

(assert (= bs!1851518 (and d!2166528 d!2166482)))

(assert (=> bs!1851518 (= (and (= (_2!37112 lt!2473836) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473823)) (= lambda!394754 lambda!394739))))

(declare-fun bs!1851519 () Bool)

(assert (= bs!1851519 (and d!2166528 b!6934226)))

(assert (=> bs!1851519 (not (= lambda!394754 lambda!394747))))

(assert (=> d!2166528 true))

(assert (=> d!2166528 true))

(assert (=> d!2166528 true))

(declare-fun lambda!394755 () Int)

(assert (=> bs!1851505 (= (and (= (_2!37112 lt!2473836) (_2!37112 lt!2473832)) (= r2!6280 (regOne!34416 r3!135)) (= r3!135 (regTwo!34416 r3!135))) (= lambda!394755 lambda!394751))))

(assert (=> bs!1851506 (not (= lambda!394755 lambda!394729))))

(assert (=> bs!1851507 (= (and (= (_2!37112 lt!2473836) (_1!37112 lt!2473832)) (= r2!6280 (regOne!34416 r2!6280)) (= r3!135 (regTwo!34416 r2!6280))) (= lambda!394755 lambda!394753))))

(assert (=> bs!1851508 (not (= lambda!394755 lambda!394746))))

(assert (=> bs!1851509 (not (= lambda!394755 lambda!394748))))

(assert (=> bs!1851510 (= (and (= (_2!37112 lt!2473836) lt!2473822) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394755 lambda!394700))))

(assert (=> bs!1851511 (not (= lambda!394755 lambda!394750))))

(assert (=> bs!1851510 (not (= lambda!394755 lambda!394699))))

(declare-fun bs!1851520 () Bool)

(assert (= bs!1851520 d!2166528))

(assert (=> bs!1851520 (not (= lambda!394755 lambda!394754))))

(assert (=> bs!1851512 (= lambda!394755 lambda!394698)))

(assert (=> bs!1851513 (= (and (= (_2!37112 lt!2473836) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473823)) (= lambda!394755 lambda!394696))))

(assert (=> bs!1851512 (not (= lambda!394755 lambda!394697))))

(assert (=> bs!1851514 (= (and (= (_2!37112 lt!2473836) s!14361) (= r2!6280 (regOne!34416 lt!2473839)) (= r3!135 (regTwo!34416 lt!2473839))) (= lambda!394755 lambda!394749))))

(assert (=> bs!1851506 (= (and (= (_2!37112 lt!2473836) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473823)) (= lambda!394755 lambda!394730))))

(assert (=> bs!1851515 (= (and (= (_2!37112 lt!2473836) (_1!37112 lt!2473836)) (= r2!6280 (regOne!34416 r1!6342)) (= r3!135 (regTwo!34416 r1!6342))) (= lambda!394755 lambda!394736))))

(assert (=> bs!1851516 (not (= lambda!394755 lambda!394752))))

(assert (=> bs!1851513 (not (= lambda!394755 lambda!394695))))

(assert (=> bs!1851517 (not (= lambda!394755 lambda!394735))))

(assert (=> bs!1851518 (not (= lambda!394755 lambda!394739))))

(assert (=> bs!1851519 (= (and (= (_2!37112 lt!2473836) s!14361) (= r2!6280 (regOne!34416 lt!2473819)) (= r3!135 (regTwo!34416 lt!2473819))) (= lambda!394755 lambda!394747))))

(assert (=> d!2166528 true))

(assert (=> d!2166528 true))

(assert (=> d!2166528 true))

(assert (=> d!2166528 (= (Exists!3952 lambda!394754) (Exists!3952 lambda!394755))))

(declare-fun lt!2473962 () Unit!160628)

(assert (=> d!2166528 (= lt!2473962 (choose!51643 r2!6280 r3!135 (_2!37112 lt!2473836)))))

(assert (=> d!2166528 (validRegex!8658 r2!6280)))

(assert (=> d!2166528 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2413 r2!6280 r3!135 (_2!37112 lt!2473836)) lt!2473962)))

(declare-fun m!7640598 () Bool)

(assert (=> bs!1851520 m!7640598))

(declare-fun m!7640600 () Bool)

(assert (=> bs!1851520 m!7640600))

(declare-fun m!7640602 () Bool)

(assert (=> bs!1851520 m!7640602))

(assert (=> bs!1851520 m!7640272))

(assert (=> b!6933879 d!2166528))

(declare-fun d!2166530 () Bool)

(assert (=> d!2166530 (= (isDefined!13422 lt!2473842) (not (isEmpty!38845 lt!2473842)))))

(declare-fun bs!1851521 () Bool)

(assert (= bs!1851521 d!2166530))

(declare-fun m!7640604 () Bool)

(assert (=> bs!1851521 m!7640604))

(assert (=> b!6933879 d!2166530))

(declare-fun d!2166532 () Bool)

(assert (=> d!2166532 (= (get!23365 lt!2473842) (v!52992 lt!2473842))))

(assert (=> b!6933879 d!2166532))

(declare-fun b!6934345 () Bool)

(declare-fun e!4172159 () Bool)

(assert (=> b!6934345 (= e!4172159 (not (= (head!13899 (_1!37112 lt!2473832)) (c!1286780 r2!6280))))))

(declare-fun b!6934346 () Bool)

(declare-fun res!2828252 () Bool)

(assert (=> b!6934346 (=> res!2828252 e!4172159)))

(assert (=> b!6934346 (= res!2828252 (not (isEmpty!38844 (tail!12951 (_1!37112 lt!2473832)))))))

(declare-fun b!6934347 () Bool)

(declare-fun res!2828253 () Bool)

(declare-fun e!4172162 () Bool)

(assert (=> b!6934347 (=> (not res!2828253) (not e!4172162))))

(assert (=> b!6934347 (= res!2828253 (isEmpty!38844 (tail!12951 (_1!37112 lt!2473832))))))

(declare-fun b!6934348 () Bool)

(declare-fun res!2828255 () Bool)

(declare-fun e!4172161 () Bool)

(assert (=> b!6934348 (=> res!2828255 e!4172161)))

(assert (=> b!6934348 (= res!2828255 e!4172162)))

(declare-fun res!2828254 () Bool)

(assert (=> b!6934348 (=> (not res!2828254) (not e!4172162))))

(declare-fun lt!2473967 () Bool)

(assert (=> b!6934348 (= res!2828254 lt!2473967)))

(declare-fun b!6934349 () Bool)

(declare-fun e!4172160 () Bool)

(assert (=> b!6934349 (= e!4172160 e!4172159)))

(declare-fun res!2828256 () Bool)

(assert (=> b!6934349 (=> res!2828256 e!4172159)))

(declare-fun call!630077 () Bool)

(assert (=> b!6934349 (= res!2828256 call!630077)))

(declare-fun b!6934350 () Bool)

(declare-fun e!4172163 () Bool)

(assert (=> b!6934350 (= e!4172163 (matchR!9091 (derivativeStep!5446 r2!6280 (head!13899 (_1!37112 lt!2473832))) (tail!12951 (_1!37112 lt!2473832))))))

(declare-fun b!6934351 () Bool)

(declare-fun e!4172165 () Bool)

(assert (=> b!6934351 (= e!4172165 (not lt!2473967))))

(declare-fun bm!630072 () Bool)

(assert (=> bm!630072 (= call!630077 (isEmpty!38844 (_1!37112 lt!2473832)))))

(declare-fun b!6934353 () Bool)

(assert (=> b!6934353 (= e!4172163 (nullable!6771 r2!6280))))

(declare-fun b!6934354 () Bool)

(declare-fun res!2828257 () Bool)

(assert (=> b!6934354 (=> (not res!2828257) (not e!4172162))))

(assert (=> b!6934354 (= res!2828257 (not call!630077))))

(declare-fun b!6934355 () Bool)

(declare-fun e!4172164 () Bool)

(assert (=> b!6934355 (= e!4172164 (= lt!2473967 call!630077))))

(declare-fun b!6934352 () Bool)

(declare-fun res!2828251 () Bool)

(assert (=> b!6934352 (=> res!2828251 e!4172161)))

(assert (=> b!6934352 (= res!2828251 (not (is-ElementMatch!16952 r2!6280)))))

(assert (=> b!6934352 (= e!4172165 e!4172161)))

(declare-fun d!2166534 () Bool)

(assert (=> d!2166534 e!4172164))

(declare-fun c!1286866 () Bool)

(assert (=> d!2166534 (= c!1286866 (is-EmptyExpr!16952 r2!6280))))

(assert (=> d!2166534 (= lt!2473967 e!4172163)))

(declare-fun c!1286868 () Bool)

(assert (=> d!2166534 (= c!1286868 (isEmpty!38844 (_1!37112 lt!2473832)))))

(assert (=> d!2166534 (validRegex!8658 r2!6280)))

(assert (=> d!2166534 (= (matchR!9091 r2!6280 (_1!37112 lt!2473832)) lt!2473967)))

(declare-fun b!6934356 () Bool)

(assert (=> b!6934356 (= e!4172162 (= (head!13899 (_1!37112 lt!2473832)) (c!1286780 r2!6280)))))

(declare-fun b!6934357 () Bool)

(assert (=> b!6934357 (= e!4172161 e!4172160)))

(declare-fun res!2828250 () Bool)

(assert (=> b!6934357 (=> (not res!2828250) (not e!4172160))))

(assert (=> b!6934357 (= res!2828250 (not lt!2473967))))

(declare-fun b!6934358 () Bool)

(assert (=> b!6934358 (= e!4172164 e!4172165)))

(declare-fun c!1286867 () Bool)

(assert (=> b!6934358 (= c!1286867 (is-EmptyLang!16952 r2!6280))))

(assert (= (and d!2166534 c!1286868) b!6934353))

(assert (= (and d!2166534 (not c!1286868)) b!6934350))

(assert (= (and d!2166534 c!1286866) b!6934355))

(assert (= (and d!2166534 (not c!1286866)) b!6934358))

(assert (= (and b!6934358 c!1286867) b!6934351))

(assert (= (and b!6934358 (not c!1286867)) b!6934352))

(assert (= (and b!6934352 (not res!2828251)) b!6934348))

(assert (= (and b!6934348 res!2828254) b!6934354))

(assert (= (and b!6934354 res!2828257) b!6934347))

(assert (= (and b!6934347 res!2828253) b!6934356))

(assert (= (and b!6934348 (not res!2828255)) b!6934357))

(assert (= (and b!6934357 res!2828250) b!6934349))

(assert (= (and b!6934349 (not res!2828256)) b!6934346))

(assert (= (and b!6934346 (not res!2828252)) b!6934345))

(assert (= (or b!6934355 b!6934354 b!6934349) bm!630072))

(declare-fun m!7640606 () Bool)

(assert (=> b!6934345 m!7640606))

(assert (=> bm!630072 m!7640572))

(assert (=> d!2166534 m!7640572))

(assert (=> d!2166534 m!7640272))

(declare-fun m!7640608 () Bool)

(assert (=> b!6934353 m!7640608))

(assert (=> b!6934356 m!7640606))

(declare-fun m!7640610 () Bool)

(assert (=> b!6934346 m!7640610))

(assert (=> b!6934346 m!7640610))

(declare-fun m!7640612 () Bool)

(assert (=> b!6934346 m!7640612))

(assert (=> b!6934350 m!7640606))

(assert (=> b!6934350 m!7640606))

(declare-fun m!7640614 () Bool)

(assert (=> b!6934350 m!7640614))

(assert (=> b!6934350 m!7640610))

(assert (=> b!6934350 m!7640614))

(assert (=> b!6934350 m!7640610))

(declare-fun m!7640616 () Bool)

(assert (=> b!6934350 m!7640616))

(assert (=> b!6934347 m!7640610))

(assert (=> b!6934347 m!7640610))

(assert (=> b!6934347 m!7640612))

(assert (=> b!6933879 d!2166534))

(declare-fun b!6934359 () Bool)

(declare-fun lt!2473968 () Unit!160628)

(declare-fun lt!2473970 () Unit!160628)

(assert (=> b!6934359 (= lt!2473968 lt!2473970)))

(assert (=> b!6934359 (= (++!14991 (++!14991 Nil!66581 (Cons!66581 (h!73029 (_2!37112 lt!2473836)) Nil!66581)) (t!380448 (_2!37112 lt!2473836))) (_2!37112 lt!2473836))))

(assert (=> b!6934359 (= lt!2473970 (lemmaMoveElementToOtherListKeepsConcatEq!2850 Nil!66581 (h!73029 (_2!37112 lt!2473836)) (t!380448 (_2!37112 lt!2473836)) (_2!37112 lt!2473836)))))

(declare-fun e!4172170 () Option!16721)

(assert (=> b!6934359 (= e!4172170 (findConcatSeparation!3135 r2!6280 r3!135 (++!14991 Nil!66581 (Cons!66581 (h!73029 (_2!37112 lt!2473836)) Nil!66581)) (t!380448 (_2!37112 lt!2473836)) (_2!37112 lt!2473836)))))

(declare-fun d!2166536 () Bool)

(declare-fun e!4172169 () Bool)

(assert (=> d!2166536 e!4172169))

(declare-fun res!2828258 () Bool)

(assert (=> d!2166536 (=> res!2828258 e!4172169)))

(declare-fun e!4172167 () Bool)

(assert (=> d!2166536 (= res!2828258 e!4172167)))

(declare-fun res!2828262 () Bool)

(assert (=> d!2166536 (=> (not res!2828262) (not e!4172167))))

(declare-fun lt!2473969 () Option!16721)

(assert (=> d!2166536 (= res!2828262 (isDefined!13422 lt!2473969))))

(declare-fun e!4172168 () Option!16721)

(assert (=> d!2166536 (= lt!2473969 e!4172168)))

(declare-fun c!1286869 () Bool)

(declare-fun e!4172166 () Bool)

(assert (=> d!2166536 (= c!1286869 e!4172166)))

(declare-fun res!2828260 () Bool)

(assert (=> d!2166536 (=> (not res!2828260) (not e!4172166))))

(assert (=> d!2166536 (= res!2828260 (matchR!9091 r2!6280 Nil!66581))))

(assert (=> d!2166536 (validRegex!8658 r2!6280)))

(assert (=> d!2166536 (= (findConcatSeparation!3135 r2!6280 r3!135 Nil!66581 (_2!37112 lt!2473836) (_2!37112 lt!2473836)) lt!2473969)))

(declare-fun b!6934360 () Bool)

(assert (=> b!6934360 (= e!4172168 (Some!16720 (tuple2!67619 Nil!66581 (_2!37112 lt!2473836))))))

(declare-fun b!6934361 () Bool)

(assert (=> b!6934361 (= e!4172166 (matchR!9091 r3!135 (_2!37112 lt!2473836)))))

(declare-fun b!6934362 () Bool)

(declare-fun res!2828261 () Bool)

(assert (=> b!6934362 (=> (not res!2828261) (not e!4172167))))

(assert (=> b!6934362 (= res!2828261 (matchR!9091 r3!135 (_2!37112 (get!23365 lt!2473969))))))

(declare-fun b!6934363 () Bool)

(assert (=> b!6934363 (= e!4172170 None!16720)))

(declare-fun b!6934364 () Bool)

(assert (=> b!6934364 (= e!4172167 (= (++!14991 (_1!37112 (get!23365 lt!2473969)) (_2!37112 (get!23365 lt!2473969))) (_2!37112 lt!2473836)))))

(declare-fun b!6934365 () Bool)

(assert (=> b!6934365 (= e!4172168 e!4172170)))

(declare-fun c!1286870 () Bool)

(assert (=> b!6934365 (= c!1286870 (is-Nil!66581 (_2!37112 lt!2473836)))))

(declare-fun b!6934366 () Bool)

(declare-fun res!2828259 () Bool)

(assert (=> b!6934366 (=> (not res!2828259) (not e!4172167))))

(assert (=> b!6934366 (= res!2828259 (matchR!9091 r2!6280 (_1!37112 (get!23365 lt!2473969))))))

(declare-fun b!6934367 () Bool)

(assert (=> b!6934367 (= e!4172169 (not (isDefined!13422 lt!2473969)))))

(assert (= (and d!2166536 res!2828260) b!6934361))

(assert (= (and d!2166536 c!1286869) b!6934360))

(assert (= (and d!2166536 (not c!1286869)) b!6934365))

(assert (= (and b!6934365 c!1286870) b!6934363))

(assert (= (and b!6934365 (not c!1286870)) b!6934359))

(assert (= (and d!2166536 res!2828262) b!6934366))

(assert (= (and b!6934366 res!2828259) b!6934362))

(assert (= (and b!6934362 res!2828261) b!6934364))

(assert (= (and d!2166536 (not res!2828258)) b!6934367))

(declare-fun m!7640618 () Bool)

(assert (=> b!6934366 m!7640618))

(declare-fun m!7640620 () Bool)

(assert (=> b!6934366 m!7640620))

(declare-fun m!7640622 () Bool)

(assert (=> d!2166536 m!7640622))

(declare-fun m!7640624 () Bool)

(assert (=> d!2166536 m!7640624))

(assert (=> d!2166536 m!7640272))

(declare-fun m!7640626 () Bool)

(assert (=> b!6934359 m!7640626))

(assert (=> b!6934359 m!7640626))

(declare-fun m!7640628 () Bool)

(assert (=> b!6934359 m!7640628))

(declare-fun m!7640630 () Bool)

(assert (=> b!6934359 m!7640630))

(assert (=> b!6934359 m!7640626))

(declare-fun m!7640632 () Bool)

(assert (=> b!6934359 m!7640632))

(assert (=> b!6934364 m!7640618))

(declare-fun m!7640634 () Bool)

(assert (=> b!6934364 m!7640634))

(declare-fun m!7640636 () Bool)

(assert (=> b!6934361 m!7640636))

(assert (=> b!6934362 m!7640618))

(declare-fun m!7640638 () Bool)

(assert (=> b!6934362 m!7640638))

(assert (=> b!6934367 m!7640622))

(assert (=> b!6933879 d!2166536))

(declare-fun bs!1851522 () Bool)

(declare-fun b!6934374 () Bool)

(assert (= bs!1851522 (and b!6934374 b!6934293)))

(declare-fun lambda!394756 () Int)

(assert (=> bs!1851522 (not (= lambda!394756 lambda!394751))))

(declare-fun bs!1851523 () Bool)

(assert (= bs!1851523 (and b!6934374 d!2166470)))

(assert (=> bs!1851523 (not (= lambda!394756 lambda!394729))))

(declare-fun bs!1851524 () Bool)

(assert (= bs!1851524 (and b!6934374 b!6934304)))

(assert (=> bs!1851524 (not (= lambda!394756 lambda!394753))))

(declare-fun bs!1851525 () Bool)

(assert (= bs!1851525 (and b!6934374 b!6934230)))

(assert (=> bs!1851525 (= (and (= (_2!37112 lt!2473836) s!14361) (= (reg!17281 lt!2473823) (reg!17281 lt!2473819)) (= lt!2473823 lt!2473819)) (= lambda!394756 lambda!394746))))

(declare-fun bs!1851526 () Bool)

(assert (= bs!1851526 (and b!6934374 b!6934255)))

(assert (=> bs!1851526 (= (and (= (_2!37112 lt!2473836) s!14361) (= (reg!17281 lt!2473823) (reg!17281 lt!2473839)) (= lt!2473823 lt!2473839)) (= lambda!394756 lambda!394748))))

(declare-fun bs!1851527 () Bool)

(assert (= bs!1851527 (and b!6934374 b!6933865)))

(assert (=> bs!1851527 (not (= lambda!394756 lambda!394700))))

(declare-fun bs!1851528 () Bool)

(assert (= bs!1851528 (and b!6934374 b!6934297)))

(assert (=> bs!1851528 (= (and (= (_2!37112 lt!2473836) (_2!37112 lt!2473832)) (= (reg!17281 lt!2473823) (reg!17281 r3!135)) (= lt!2473823 r3!135)) (= lambda!394756 lambda!394750))))

(assert (=> bs!1851527 (not (= lambda!394756 lambda!394699))))

(declare-fun bs!1851529 () Bool)

(assert (= bs!1851529 (and b!6934374 d!2166528)))

(assert (=> bs!1851529 (not (= lambda!394756 lambda!394755))))

(assert (=> bs!1851529 (not (= lambda!394756 lambda!394754))))

(declare-fun bs!1851530 () Bool)

(assert (= bs!1851530 (and b!6934374 b!6933879)))

(assert (=> bs!1851530 (not (= lambda!394756 lambda!394698))))

(declare-fun bs!1851531 () Bool)

(assert (= bs!1851531 (and b!6934374 b!6933872)))

(assert (=> bs!1851531 (not (= lambda!394756 lambda!394696))))

(assert (=> bs!1851530 (not (= lambda!394756 lambda!394697))))

(declare-fun bs!1851532 () Bool)

(assert (= bs!1851532 (and b!6934374 b!6934251)))

(assert (=> bs!1851532 (not (= lambda!394756 lambda!394749))))

(assert (=> bs!1851523 (not (= lambda!394756 lambda!394730))))

(declare-fun bs!1851533 () Bool)

(assert (= bs!1851533 (and b!6934374 b!6934100)))

(assert (=> bs!1851533 (not (= lambda!394756 lambda!394736))))

(declare-fun bs!1851534 () Bool)

(assert (= bs!1851534 (and b!6934374 b!6934308)))

(assert (=> bs!1851534 (= (and (= (_2!37112 lt!2473836) (_1!37112 lt!2473832)) (= (reg!17281 lt!2473823) (reg!17281 r2!6280)) (= lt!2473823 r2!6280)) (= lambda!394756 lambda!394752))))

(assert (=> bs!1851531 (not (= lambda!394756 lambda!394695))))

(declare-fun bs!1851535 () Bool)

(assert (= bs!1851535 (and b!6934374 b!6934104)))

(assert (=> bs!1851535 (= (and (= (_2!37112 lt!2473836) (_1!37112 lt!2473836)) (= (reg!17281 lt!2473823) (reg!17281 r1!6342)) (= lt!2473823 r1!6342)) (= lambda!394756 lambda!394735))))

(declare-fun bs!1851536 () Bool)

(assert (= bs!1851536 (and b!6934374 d!2166482)))

(assert (=> bs!1851536 (not (= lambda!394756 lambda!394739))))

(declare-fun bs!1851537 () Bool)

(assert (= bs!1851537 (and b!6934374 b!6934226)))

(assert (=> bs!1851537 (not (= lambda!394756 lambda!394747))))

(assert (=> b!6934374 true))

(assert (=> b!6934374 true))

(declare-fun bs!1851538 () Bool)

(declare-fun b!6934370 () Bool)

(assert (= bs!1851538 (and b!6934370 b!6934293)))

(declare-fun lambda!394757 () Int)

(assert (=> bs!1851538 (= (and (= (_2!37112 lt!2473836) (_2!37112 lt!2473832)) (= (regOne!34416 lt!2473823) (regOne!34416 r3!135)) (= (regTwo!34416 lt!2473823) (regTwo!34416 r3!135))) (= lambda!394757 lambda!394751))))

(declare-fun bs!1851539 () Bool)

(assert (= bs!1851539 (and b!6934370 d!2166470)))

(assert (=> bs!1851539 (not (= lambda!394757 lambda!394729))))

(declare-fun bs!1851540 () Bool)

(assert (= bs!1851540 (and b!6934370 b!6934304)))

(assert (=> bs!1851540 (= (and (= (_2!37112 lt!2473836) (_1!37112 lt!2473832)) (= (regOne!34416 lt!2473823) (regOne!34416 r2!6280)) (= (regTwo!34416 lt!2473823) (regTwo!34416 r2!6280))) (= lambda!394757 lambda!394753))))

(declare-fun bs!1851541 () Bool)

(assert (= bs!1851541 (and b!6934370 b!6934230)))

(assert (=> bs!1851541 (not (= lambda!394757 lambda!394746))))

(declare-fun bs!1851542 () Bool)

(assert (= bs!1851542 (and b!6934370 b!6934374)))

(assert (=> bs!1851542 (not (= lambda!394757 lambda!394756))))

(declare-fun bs!1851543 () Bool)

(assert (= bs!1851543 (and b!6934370 b!6934255)))

(assert (=> bs!1851543 (not (= lambda!394757 lambda!394748))))

(declare-fun bs!1851544 () Bool)

(assert (= bs!1851544 (and b!6934370 b!6933865)))

(assert (=> bs!1851544 (= (and (= (_2!37112 lt!2473836) lt!2473822) (= (regOne!34416 lt!2473823) r1!6342) (= (regTwo!34416 lt!2473823) r2!6280)) (= lambda!394757 lambda!394700))))

(declare-fun bs!1851545 () Bool)

(assert (= bs!1851545 (and b!6934370 b!6934297)))

(assert (=> bs!1851545 (not (= lambda!394757 lambda!394750))))

(assert (=> bs!1851544 (not (= lambda!394757 lambda!394699))))

(declare-fun bs!1851546 () Bool)

(assert (= bs!1851546 (and b!6934370 d!2166528)))

(assert (=> bs!1851546 (= (and (= (regOne!34416 lt!2473823) r2!6280) (= (regTwo!34416 lt!2473823) r3!135)) (= lambda!394757 lambda!394755))))

(assert (=> bs!1851546 (not (= lambda!394757 lambda!394754))))

(declare-fun bs!1851547 () Bool)

(assert (= bs!1851547 (and b!6934370 b!6933879)))

(assert (=> bs!1851547 (= (and (= (regOne!34416 lt!2473823) r2!6280) (= (regTwo!34416 lt!2473823) r3!135)) (= lambda!394757 lambda!394698))))

(declare-fun bs!1851548 () Bool)

(assert (= bs!1851548 (and b!6934370 b!6933872)))

(assert (=> bs!1851548 (= (and (= (_2!37112 lt!2473836) s!14361) (= (regOne!34416 lt!2473823) r1!6342) (= (regTwo!34416 lt!2473823) lt!2473823)) (= lambda!394757 lambda!394696))))

(assert (=> bs!1851547 (not (= lambda!394757 lambda!394697))))

(declare-fun bs!1851549 () Bool)

(assert (= bs!1851549 (and b!6934370 b!6934251)))

(assert (=> bs!1851549 (= (and (= (_2!37112 lt!2473836) s!14361) (= (regOne!34416 lt!2473823) (regOne!34416 lt!2473839)) (= (regTwo!34416 lt!2473823) (regTwo!34416 lt!2473839))) (= lambda!394757 lambda!394749))))

(assert (=> bs!1851539 (= (and (= (_2!37112 lt!2473836) s!14361) (= (regOne!34416 lt!2473823) r1!6342) (= (regTwo!34416 lt!2473823) lt!2473823)) (= lambda!394757 lambda!394730))))

(declare-fun bs!1851550 () Bool)

(assert (= bs!1851550 (and b!6934370 b!6934100)))

(assert (=> bs!1851550 (= (and (= (_2!37112 lt!2473836) (_1!37112 lt!2473836)) (= (regOne!34416 lt!2473823) (regOne!34416 r1!6342)) (= (regTwo!34416 lt!2473823) (regTwo!34416 r1!6342))) (= lambda!394757 lambda!394736))))

(declare-fun bs!1851551 () Bool)

(assert (= bs!1851551 (and b!6934370 b!6934308)))

(assert (=> bs!1851551 (not (= lambda!394757 lambda!394752))))

(assert (=> bs!1851548 (not (= lambda!394757 lambda!394695))))

(declare-fun bs!1851552 () Bool)

(assert (= bs!1851552 (and b!6934370 b!6934104)))

(assert (=> bs!1851552 (not (= lambda!394757 lambda!394735))))

(declare-fun bs!1851553 () Bool)

(assert (= bs!1851553 (and b!6934370 d!2166482)))

(assert (=> bs!1851553 (not (= lambda!394757 lambda!394739))))

(declare-fun bs!1851554 () Bool)

(assert (= bs!1851554 (and b!6934370 b!6934226)))

(assert (=> bs!1851554 (= (and (= (_2!37112 lt!2473836) s!14361) (= (regOne!34416 lt!2473823) (regOne!34416 lt!2473819)) (= (regTwo!34416 lt!2473823) (regTwo!34416 lt!2473819))) (= lambda!394757 lambda!394747))))

(assert (=> b!6934370 true))

(assert (=> b!6934370 true))

(declare-fun d!2166538 () Bool)

(declare-fun c!1286874 () Bool)

(assert (=> d!2166538 (= c!1286874 (is-EmptyExpr!16952 lt!2473823))))

(declare-fun e!4172177 () Bool)

(assert (=> d!2166538 (= (matchRSpec!4009 lt!2473823 (_2!37112 lt!2473836)) e!4172177)))

(declare-fun b!6934368 () Bool)

(declare-fun res!2828263 () Bool)

(declare-fun e!4172173 () Bool)

(assert (=> b!6934368 (=> res!2828263 e!4172173)))

(declare-fun call!630079 () Bool)

(assert (=> b!6934368 (= res!2828263 call!630079)))

(declare-fun e!4172176 () Bool)

(assert (=> b!6934368 (= e!4172176 e!4172173)))

(declare-fun b!6934369 () Bool)

(declare-fun e!4172172 () Bool)

(declare-fun e!4172174 () Bool)

(assert (=> b!6934369 (= e!4172172 e!4172174)))

(declare-fun res!2828264 () Bool)

(assert (=> b!6934369 (= res!2828264 (matchRSpec!4009 (regOne!34417 lt!2473823) (_2!37112 lt!2473836)))))

(assert (=> b!6934369 (=> res!2828264 e!4172174)))

(declare-fun call!630078 () Bool)

(assert (=> b!6934370 (= e!4172176 call!630078)))

(declare-fun b!6934371 () Bool)

(declare-fun c!1286872 () Bool)

(assert (=> b!6934371 (= c!1286872 (is-ElementMatch!16952 lt!2473823))))

(declare-fun e!4172171 () Bool)

(declare-fun e!4172175 () Bool)

(assert (=> b!6934371 (= e!4172171 e!4172175)))

(declare-fun b!6934372 () Bool)

(declare-fun c!1286873 () Bool)

(assert (=> b!6934372 (= c!1286873 (is-Union!16952 lt!2473823))))

(assert (=> b!6934372 (= e!4172175 e!4172172)))

(declare-fun bm!630073 () Bool)

(assert (=> bm!630073 (= call!630079 (isEmpty!38844 (_2!37112 lt!2473836)))))

(declare-fun b!6934373 () Bool)

(assert (=> b!6934373 (= e!4172172 e!4172176)))

(declare-fun c!1286871 () Bool)

(assert (=> b!6934373 (= c!1286871 (is-Star!16952 lt!2473823))))

(assert (=> b!6934374 (= e!4172173 call!630078)))

(declare-fun b!6934375 () Bool)

(assert (=> b!6934375 (= e!4172175 (= (_2!37112 lt!2473836) (Cons!66581 (c!1286780 lt!2473823) Nil!66581)))))

(declare-fun b!6934376 () Bool)

(assert (=> b!6934376 (= e!4172177 e!4172171)))

(declare-fun res!2828265 () Bool)

(assert (=> b!6934376 (= res!2828265 (not (is-EmptyLang!16952 lt!2473823)))))

(assert (=> b!6934376 (=> (not res!2828265) (not e!4172171))))

(declare-fun bm!630074 () Bool)

(assert (=> bm!630074 (= call!630078 (Exists!3952 (ite c!1286871 lambda!394756 lambda!394757)))))

(declare-fun b!6934377 () Bool)

(assert (=> b!6934377 (= e!4172174 (matchRSpec!4009 (regTwo!34417 lt!2473823) (_2!37112 lt!2473836)))))

(declare-fun b!6934378 () Bool)

(assert (=> b!6934378 (= e!4172177 call!630079)))

(assert (= (and d!2166538 c!1286874) b!6934378))

(assert (= (and d!2166538 (not c!1286874)) b!6934376))

(assert (= (and b!6934376 res!2828265) b!6934371))

(assert (= (and b!6934371 c!1286872) b!6934375))

(assert (= (and b!6934371 (not c!1286872)) b!6934372))

(assert (= (and b!6934372 c!1286873) b!6934369))

(assert (= (and b!6934372 (not c!1286873)) b!6934373))

(assert (= (and b!6934369 (not res!2828264)) b!6934377))

(assert (= (and b!6934373 c!1286871) b!6934368))

(assert (= (and b!6934373 (not c!1286871)) b!6934370))

(assert (= (and b!6934368 (not res!2828263)) b!6934374))

(assert (= (or b!6934374 b!6934370) bm!630074))

(assert (= (or b!6934378 b!6934368) bm!630073))

(declare-fun m!7640662 () Bool)

(assert (=> b!6934369 m!7640662))

(assert (=> bm!630073 m!7640582))

(declare-fun m!7640664 () Bool)

(assert (=> bm!630074 m!7640664))

(declare-fun m!7640666 () Bool)

(assert (=> b!6934377 m!7640666))

(assert (=> b!6933879 d!2166538))

(declare-fun bs!1851555 () Bool)

(declare-fun d!2166542 () Bool)

(assert (= bs!1851555 (and d!2166542 b!6934293)))

(declare-fun lambda!394758 () Int)

(assert (=> bs!1851555 (not (= lambda!394758 lambda!394751))))

(declare-fun bs!1851556 () Bool)

(assert (= bs!1851556 (and d!2166542 d!2166470)))

(assert (=> bs!1851556 (= (and (= (_2!37112 lt!2473836) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473823)) (= lambda!394758 lambda!394729))))

(declare-fun bs!1851557 () Bool)

(assert (= bs!1851557 (and d!2166542 b!6934304)))

(assert (=> bs!1851557 (not (= lambda!394758 lambda!394753))))

(declare-fun bs!1851558 () Bool)

(assert (= bs!1851558 (and d!2166542 b!6934230)))

(assert (=> bs!1851558 (not (= lambda!394758 lambda!394746))))

(declare-fun bs!1851559 () Bool)

(assert (= bs!1851559 (and d!2166542 b!6934374)))

(assert (=> bs!1851559 (not (= lambda!394758 lambda!394756))))

(declare-fun bs!1851560 () Bool)

(assert (= bs!1851560 (and d!2166542 b!6934255)))

(assert (=> bs!1851560 (not (= lambda!394758 lambda!394748))))

(declare-fun bs!1851561 () Bool)

(assert (= bs!1851561 (and d!2166542 b!6934297)))

(assert (=> bs!1851561 (not (= lambda!394758 lambda!394750))))

(declare-fun bs!1851562 () Bool)

(assert (= bs!1851562 (and d!2166542 b!6933865)))

(assert (=> bs!1851562 (= (and (= (_2!37112 lt!2473836) lt!2473822) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394758 lambda!394699))))

(declare-fun bs!1851563 () Bool)

(assert (= bs!1851563 (and d!2166542 d!2166528)))

(assert (=> bs!1851563 (not (= lambda!394758 lambda!394755))))

(assert (=> bs!1851563 (= lambda!394758 lambda!394754)))

(declare-fun bs!1851564 () Bool)

(assert (= bs!1851564 (and d!2166542 b!6933879)))

(assert (=> bs!1851564 (not (= lambda!394758 lambda!394698))))

(declare-fun bs!1851565 () Bool)

(assert (= bs!1851565 (and d!2166542 b!6933872)))

(assert (=> bs!1851565 (not (= lambda!394758 lambda!394696))))

(assert (=> bs!1851564 (= lambda!394758 lambda!394697)))

(declare-fun bs!1851566 () Bool)

(assert (= bs!1851566 (and d!2166542 b!6934251)))

(assert (=> bs!1851566 (not (= lambda!394758 lambda!394749))))

(assert (=> bs!1851556 (not (= lambda!394758 lambda!394730))))

(declare-fun bs!1851567 () Bool)

(assert (= bs!1851567 (and d!2166542 b!6934370)))

(assert (=> bs!1851567 (not (= lambda!394758 lambda!394757))))

(assert (=> bs!1851562 (not (= lambda!394758 lambda!394700))))

(declare-fun bs!1851568 () Bool)

(assert (= bs!1851568 (and d!2166542 b!6934100)))

(assert (=> bs!1851568 (not (= lambda!394758 lambda!394736))))

(declare-fun bs!1851569 () Bool)

(assert (= bs!1851569 (and d!2166542 b!6934308)))

(assert (=> bs!1851569 (not (= lambda!394758 lambda!394752))))

(assert (=> bs!1851565 (= (and (= (_2!37112 lt!2473836) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473823)) (= lambda!394758 lambda!394695))))

(declare-fun bs!1851570 () Bool)

(assert (= bs!1851570 (and d!2166542 b!6934104)))

(assert (=> bs!1851570 (not (= lambda!394758 lambda!394735))))

(declare-fun bs!1851571 () Bool)

(assert (= bs!1851571 (and d!2166542 d!2166482)))

(assert (=> bs!1851571 (= (and (= (_2!37112 lt!2473836) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2473823)) (= lambda!394758 lambda!394739))))

(declare-fun bs!1851572 () Bool)

(assert (= bs!1851572 (and d!2166542 b!6934226)))

(assert (=> bs!1851572 (not (= lambda!394758 lambda!394747))))

(assert (=> d!2166542 true))

(assert (=> d!2166542 true))

(assert (=> d!2166542 true))

(assert (=> d!2166542 (= (isDefined!13422 (findConcatSeparation!3135 r2!6280 r3!135 Nil!66581 (_2!37112 lt!2473836) (_2!37112 lt!2473836))) (Exists!3952 lambda!394758))))

(declare-fun lt!2473974 () Unit!160628)

(assert (=> d!2166542 (= lt!2473974 (choose!51644 r2!6280 r3!135 (_2!37112 lt!2473836)))))

(assert (=> d!2166542 (validRegex!8658 r2!6280)))

(assert (=> d!2166542 (= (lemmaFindConcatSeparationEquivalentToExists!2893 r2!6280 r3!135 (_2!37112 lt!2473836)) lt!2473974)))

(declare-fun bs!1851573 () Bool)

(assert (= bs!1851573 d!2166542))

(assert (=> bs!1851573 m!7640272))

(declare-fun m!7640668 () Bool)

(assert (=> bs!1851573 m!7640668))

(assert (=> bs!1851573 m!7640202))

(declare-fun m!7640670 () Bool)

(assert (=> bs!1851573 m!7640670))

(assert (=> bs!1851573 m!7640202))

(declare-fun m!7640672 () Bool)

(assert (=> bs!1851573 m!7640672))

(assert (=> b!6933879 d!2166542))

(declare-fun d!2166544 () Bool)

(assert (=> d!2166544 (= (Exists!3952 lambda!394697) (choose!51642 lambda!394697))))

(declare-fun bs!1851574 () Bool)

(assert (= bs!1851574 d!2166544))

(declare-fun m!7640674 () Bool)

(assert (=> bs!1851574 m!7640674))

(assert (=> b!6933879 d!2166544))

(declare-fun d!2166546 () Bool)

(assert (=> d!2166546 (= (Exists!3952 lambda!394698) (choose!51642 lambda!394698))))

(declare-fun bs!1851575 () Bool)

(assert (= bs!1851575 d!2166546))

(declare-fun m!7640676 () Bool)

(assert (=> bs!1851575 m!7640676))

(assert (=> b!6933879 d!2166546))

(declare-fun b!6934389 () Bool)

(declare-fun e!4172183 () List!66705)

(assert (=> b!6934389 (= e!4172183 (Cons!66581 (h!73029 (_1!37112 lt!2473836)) (++!14991 (t!380448 (_1!37112 lt!2473836)) (_1!37112 lt!2473832))))))

(declare-fun b!6934391 () Bool)

(declare-fun e!4172184 () Bool)

(declare-fun lt!2473975 () List!66705)

(assert (=> b!6934391 (= e!4172184 (or (not (= (_1!37112 lt!2473832) Nil!66581)) (= lt!2473975 (_1!37112 lt!2473836))))))

(declare-fun b!6934388 () Bool)

(assert (=> b!6934388 (= e!4172183 (_1!37112 lt!2473832))))

(declare-fun d!2166548 () Bool)

(assert (=> d!2166548 e!4172184))

(declare-fun res!2828271 () Bool)

(assert (=> d!2166548 (=> (not res!2828271) (not e!4172184))))

(assert (=> d!2166548 (= res!2828271 (= (content!13093 lt!2473975) (set.union (content!13093 (_1!37112 lt!2473836)) (content!13093 (_1!37112 lt!2473832)))))))

(assert (=> d!2166548 (= lt!2473975 e!4172183)))

(declare-fun c!1286877 () Bool)

(assert (=> d!2166548 (= c!1286877 (is-Nil!66581 (_1!37112 lt!2473836)))))

(assert (=> d!2166548 (= (++!14991 (_1!37112 lt!2473836) (_1!37112 lt!2473832)) lt!2473975)))

(declare-fun b!6934390 () Bool)

(declare-fun res!2828272 () Bool)

(assert (=> b!6934390 (=> (not res!2828272) (not e!4172184))))

(assert (=> b!6934390 (= res!2828272 (= (size!40790 lt!2473975) (+ (size!40790 (_1!37112 lt!2473836)) (size!40790 (_1!37112 lt!2473832)))))))

(assert (= (and d!2166548 c!1286877) b!6934388))

(assert (= (and d!2166548 (not c!1286877)) b!6934389))

(assert (= (and d!2166548 res!2828271) b!6934390))

(assert (= (and b!6934390 res!2828272) b!6934391))

(declare-fun m!7640678 () Bool)

(assert (=> b!6934389 m!7640678))

(declare-fun m!7640680 () Bool)

(assert (=> d!2166548 m!7640680))

(assert (=> d!2166548 m!7640554))

(assert (=> d!2166548 m!7640540))

(declare-fun m!7640682 () Bool)

(assert (=> b!6934390 m!7640682))

(assert (=> b!6934390 m!7640560))

(assert (=> b!6934390 m!7640546))

(assert (=> b!6933865 d!2166548))

(declare-fun b!6934392 () Bool)

(declare-fun e!4172185 () Bool)

(assert (=> b!6934392 (= e!4172185 (not (= (head!13899 lt!2473822) (c!1286780 lt!2473820))))))

(declare-fun b!6934393 () Bool)

(declare-fun res!2828275 () Bool)

(assert (=> b!6934393 (=> res!2828275 e!4172185)))

(assert (=> b!6934393 (= res!2828275 (not (isEmpty!38844 (tail!12951 lt!2473822))))))

(declare-fun b!6934394 () Bool)

(declare-fun res!2828276 () Bool)

(declare-fun e!4172188 () Bool)

(assert (=> b!6934394 (=> (not res!2828276) (not e!4172188))))

(assert (=> b!6934394 (= res!2828276 (isEmpty!38844 (tail!12951 lt!2473822)))))

(declare-fun b!6934395 () Bool)

(declare-fun res!2828278 () Bool)

(declare-fun e!4172187 () Bool)

(assert (=> b!6934395 (=> res!2828278 e!4172187)))

(assert (=> b!6934395 (= res!2828278 e!4172188)))

(declare-fun res!2828277 () Bool)

(assert (=> b!6934395 (=> (not res!2828277) (not e!4172188))))

(declare-fun lt!2473976 () Bool)

(assert (=> b!6934395 (= res!2828277 lt!2473976)))

(declare-fun b!6934396 () Bool)

(declare-fun e!4172186 () Bool)

(assert (=> b!6934396 (= e!4172186 e!4172185)))

(declare-fun res!2828279 () Bool)

(assert (=> b!6934396 (=> res!2828279 e!4172185)))

(declare-fun call!630080 () Bool)

(assert (=> b!6934396 (= res!2828279 call!630080)))

(declare-fun b!6934397 () Bool)

(declare-fun e!4172189 () Bool)

(assert (=> b!6934397 (= e!4172189 (matchR!9091 (derivativeStep!5446 lt!2473820 (head!13899 lt!2473822)) (tail!12951 lt!2473822)))))

(declare-fun b!6934398 () Bool)

(declare-fun e!4172191 () Bool)

(assert (=> b!6934398 (= e!4172191 (not lt!2473976))))

(declare-fun bm!630075 () Bool)

(assert (=> bm!630075 (= call!630080 (isEmpty!38844 lt!2473822))))

(declare-fun b!6934400 () Bool)

(assert (=> b!6934400 (= e!4172189 (nullable!6771 lt!2473820))))

(declare-fun b!6934401 () Bool)

(declare-fun res!2828280 () Bool)

(assert (=> b!6934401 (=> (not res!2828280) (not e!4172188))))

(assert (=> b!6934401 (= res!2828280 (not call!630080))))

(declare-fun b!6934402 () Bool)

(declare-fun e!4172190 () Bool)

(assert (=> b!6934402 (= e!4172190 (= lt!2473976 call!630080))))

(declare-fun b!6934399 () Bool)

(declare-fun res!2828274 () Bool)

(assert (=> b!6934399 (=> res!2828274 e!4172187)))

(assert (=> b!6934399 (= res!2828274 (not (is-ElementMatch!16952 lt!2473820)))))

(assert (=> b!6934399 (= e!4172191 e!4172187)))

(declare-fun d!2166550 () Bool)

(assert (=> d!2166550 e!4172190))

(declare-fun c!1286878 () Bool)

(assert (=> d!2166550 (= c!1286878 (is-EmptyExpr!16952 lt!2473820))))

(assert (=> d!2166550 (= lt!2473976 e!4172189)))

(declare-fun c!1286880 () Bool)

(assert (=> d!2166550 (= c!1286880 (isEmpty!38844 lt!2473822))))

(assert (=> d!2166550 (validRegex!8658 lt!2473820)))

(assert (=> d!2166550 (= (matchR!9091 lt!2473820 lt!2473822) lt!2473976)))

(declare-fun b!6934403 () Bool)

(assert (=> b!6934403 (= e!4172188 (= (head!13899 lt!2473822) (c!1286780 lt!2473820)))))

(declare-fun b!6934404 () Bool)

(assert (=> b!6934404 (= e!4172187 e!4172186)))

(declare-fun res!2828273 () Bool)

(assert (=> b!6934404 (=> (not res!2828273) (not e!4172186))))

(assert (=> b!6934404 (= res!2828273 (not lt!2473976))))

(declare-fun b!6934405 () Bool)

(assert (=> b!6934405 (= e!4172190 e!4172191)))

(declare-fun c!1286879 () Bool)

(assert (=> b!6934405 (= c!1286879 (is-EmptyLang!16952 lt!2473820))))

(assert (= (and d!2166550 c!1286880) b!6934400))

(assert (= (and d!2166550 (not c!1286880)) b!6934397))

(assert (= (and d!2166550 c!1286878) b!6934402))

(assert (= (and d!2166550 (not c!1286878)) b!6934405))

(assert (= (and b!6934405 c!1286879) b!6934398))

(assert (= (and b!6934405 (not c!1286879)) b!6934399))

(assert (= (and b!6934399 (not res!2828274)) b!6934395))

(assert (= (and b!6934395 res!2828277) b!6934401))

(assert (= (and b!6934401 res!2828280) b!6934394))

(assert (= (and b!6934394 res!2828276) b!6934403))

(assert (= (and b!6934395 (not res!2828278)) b!6934404))

(assert (= (and b!6934404 res!2828273) b!6934396))

(assert (= (and b!6934396 (not res!2828279)) b!6934393))

(assert (= (and b!6934393 (not res!2828275)) b!6934392))

(assert (= (or b!6934402 b!6934401 b!6934396) bm!630075))

(declare-fun m!7640684 () Bool)

(assert (=> b!6934392 m!7640684))

(declare-fun m!7640686 () Bool)

(assert (=> bm!630075 m!7640686))

(assert (=> d!2166550 m!7640686))

(declare-fun m!7640688 () Bool)

(assert (=> d!2166550 m!7640688))

(declare-fun m!7640690 () Bool)

(assert (=> b!6934400 m!7640690))

(assert (=> b!6934403 m!7640684))

(declare-fun m!7640692 () Bool)

(assert (=> b!6934393 m!7640692))

(assert (=> b!6934393 m!7640692))

(declare-fun m!7640694 () Bool)

(assert (=> b!6934393 m!7640694))

(assert (=> b!6934397 m!7640684))

(assert (=> b!6934397 m!7640684))

(declare-fun m!7640696 () Bool)

(assert (=> b!6934397 m!7640696))

(assert (=> b!6934397 m!7640692))

(assert (=> b!6934397 m!7640696))

(assert (=> b!6934397 m!7640692))

(declare-fun m!7640698 () Bool)

(assert (=> b!6934397 m!7640698))

(assert (=> b!6934394 m!7640692))

(assert (=> b!6934394 m!7640692))

(assert (=> b!6934394 m!7640694))

(assert (=> b!6933865 d!2166550))

(declare-fun b!6934406 () Bool)

(declare-fun lt!2473977 () Unit!160628)

(declare-fun lt!2473979 () Unit!160628)

(assert (=> b!6934406 (= lt!2473977 lt!2473979)))

(assert (=> b!6934406 (= (++!14991 (++!14991 Nil!66581 (Cons!66581 (h!73029 lt!2473822) Nil!66581)) (t!380448 lt!2473822)) lt!2473822)))

(assert (=> b!6934406 (= lt!2473979 (lemmaMoveElementToOtherListKeepsConcatEq!2850 Nil!66581 (h!73029 lt!2473822) (t!380448 lt!2473822) lt!2473822))))

(declare-fun e!4172196 () Option!16721)

(assert (=> b!6934406 (= e!4172196 (findConcatSeparation!3135 r1!6342 r2!6280 (++!14991 Nil!66581 (Cons!66581 (h!73029 lt!2473822) Nil!66581)) (t!380448 lt!2473822) lt!2473822))))

(declare-fun d!2166552 () Bool)

(declare-fun e!4172195 () Bool)

(assert (=> d!2166552 e!4172195))

(declare-fun res!2828281 () Bool)

(assert (=> d!2166552 (=> res!2828281 e!4172195)))

(declare-fun e!4172193 () Bool)

(assert (=> d!2166552 (= res!2828281 e!4172193)))

(declare-fun res!2828285 () Bool)

(assert (=> d!2166552 (=> (not res!2828285) (not e!4172193))))

(declare-fun lt!2473978 () Option!16721)

(assert (=> d!2166552 (= res!2828285 (isDefined!13422 lt!2473978))))

(declare-fun e!4172194 () Option!16721)

(assert (=> d!2166552 (= lt!2473978 e!4172194)))

(declare-fun c!1286881 () Bool)

(declare-fun e!4172192 () Bool)

(assert (=> d!2166552 (= c!1286881 e!4172192)))

(declare-fun res!2828283 () Bool)

(assert (=> d!2166552 (=> (not res!2828283) (not e!4172192))))

(assert (=> d!2166552 (= res!2828283 (matchR!9091 r1!6342 Nil!66581))))

(assert (=> d!2166552 (validRegex!8658 r1!6342)))

(assert (=> d!2166552 (= (findConcatSeparation!3135 r1!6342 r2!6280 Nil!66581 lt!2473822 lt!2473822) lt!2473978)))

(declare-fun b!6934407 () Bool)

(assert (=> b!6934407 (= e!4172194 (Some!16720 (tuple2!67619 Nil!66581 lt!2473822)))))

(declare-fun b!6934408 () Bool)

(assert (=> b!6934408 (= e!4172192 (matchR!9091 r2!6280 lt!2473822))))

(declare-fun b!6934409 () Bool)

(declare-fun res!2828284 () Bool)

(assert (=> b!6934409 (=> (not res!2828284) (not e!4172193))))

(assert (=> b!6934409 (= res!2828284 (matchR!9091 r2!6280 (_2!37112 (get!23365 lt!2473978))))))

(declare-fun b!6934410 () Bool)

(assert (=> b!6934410 (= e!4172196 None!16720)))

(declare-fun b!6934411 () Bool)

(assert (=> b!6934411 (= e!4172193 (= (++!14991 (_1!37112 (get!23365 lt!2473978)) (_2!37112 (get!23365 lt!2473978))) lt!2473822))))

(declare-fun b!6934412 () Bool)

(assert (=> b!6934412 (= e!4172194 e!4172196)))

(declare-fun c!1286882 () Bool)

(assert (=> b!6934412 (= c!1286882 (is-Nil!66581 lt!2473822))))

(declare-fun b!6934413 () Bool)

(declare-fun res!2828282 () Bool)

(assert (=> b!6934413 (=> (not res!2828282) (not e!4172193))))

(assert (=> b!6934413 (= res!2828282 (matchR!9091 r1!6342 (_1!37112 (get!23365 lt!2473978))))))

(declare-fun b!6934414 () Bool)

(assert (=> b!6934414 (= e!4172195 (not (isDefined!13422 lt!2473978)))))

(assert (= (and d!2166552 res!2828283) b!6934408))

(assert (= (and d!2166552 c!1286881) b!6934407))

(assert (= (and d!2166552 (not c!1286881)) b!6934412))

(assert (= (and b!6934412 c!1286882) b!6934410))

(assert (= (and b!6934412 (not c!1286882)) b!6934406))

(assert (= (and d!2166552 res!2828285) b!6934413))

(assert (= (and b!6934413 res!2828282) b!6934409))

(assert (= (and b!6934409 res!2828284) b!6934411))

(assert (= (and d!2166552 (not res!2828281)) b!6934414))

(declare-fun m!7640700 () Bool)

(assert (=> b!6934413 m!7640700))

(declare-fun m!7640702 () Bool)

(assert (=> b!6934413 m!7640702))

(declare-fun m!7640704 () Bool)

(assert (=> d!2166552 m!7640704))

(assert (=> d!2166552 m!7640462))

(assert (=> d!2166552 m!7640224))

(declare-fun m!7640706 () Bool)

(assert (=> b!6934406 m!7640706))

(assert (=> b!6934406 m!7640706))

(declare-fun m!7640708 () Bool)

(assert (=> b!6934406 m!7640708))

(declare-fun m!7640710 () Bool)

(assert (=> b!6934406 m!7640710))

(assert (=> b!6934406 m!7640706))

(declare-fun m!7640712 () Bool)

(assert (=> b!6934406 m!7640712))

(assert (=> b!6934411 m!7640700))

(declare-fun m!7640714 () Bool)

(assert (=> b!6934411 m!7640714))

(declare-fun m!7640716 () Bool)

(assert (=> b!6934408 m!7640716))

(assert (=> b!6934409 m!7640700))

(declare-fun m!7640718 () Bool)

(assert (=> b!6934409 m!7640718))

(assert (=> b!6934414 m!7640704))

(assert (=> b!6933865 d!2166552))

(declare-fun bs!1851576 () Bool)

(declare-fun d!2166554 () Bool)

(assert (= bs!1851576 (and d!2166554 b!6934293)))

(declare-fun lambda!394759 () Int)

(assert (=> bs!1851576 (not (= lambda!394759 lambda!394751))))

(declare-fun bs!1851577 () Bool)

(assert (= bs!1851577 (and d!2166554 d!2166470)))

(assert (=> bs!1851577 (= (and (= lt!2473822 s!14361) (= r2!6280 lt!2473823)) (= lambda!394759 lambda!394729))))

(declare-fun bs!1851578 () Bool)

(assert (= bs!1851578 (and d!2166554 b!6934304)))

(assert (=> bs!1851578 (not (= lambda!394759 lambda!394753))))

(declare-fun bs!1851579 () Bool)

(assert (= bs!1851579 (and d!2166554 b!6934230)))

(assert (=> bs!1851579 (not (= lambda!394759 lambda!394746))))

(declare-fun bs!1851580 () Bool)

(assert (= bs!1851580 (and d!2166554 b!6934374)))

(assert (=> bs!1851580 (not (= lambda!394759 lambda!394756))))

(declare-fun bs!1851581 () Bool)

(assert (= bs!1851581 (and d!2166554 b!6934255)))

(assert (=> bs!1851581 (not (= lambda!394759 lambda!394748))))

(declare-fun bs!1851582 () Bool)

(assert (= bs!1851582 (and d!2166554 b!6934297)))

(assert (=> bs!1851582 (not (= lambda!394759 lambda!394750))))

(declare-fun bs!1851583 () Bool)

(assert (= bs!1851583 (and d!2166554 b!6933865)))

(assert (=> bs!1851583 (= lambda!394759 lambda!394699)))

(declare-fun bs!1851584 () Bool)

(assert (= bs!1851584 (and d!2166554 d!2166528)))

(assert (=> bs!1851584 (not (= lambda!394759 lambda!394755))))

(assert (=> bs!1851584 (= (and (= lt!2473822 (_2!37112 lt!2473836)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394759 lambda!394754))))

(declare-fun bs!1851585 () Bool)

(assert (= bs!1851585 (and d!2166554 b!6933879)))

(assert (=> bs!1851585 (not (= lambda!394759 lambda!394698))))

(declare-fun bs!1851586 () Bool)

(assert (= bs!1851586 (and d!2166554 d!2166542)))

(assert (=> bs!1851586 (= (and (= lt!2473822 (_2!37112 lt!2473836)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394759 lambda!394758))))

(declare-fun bs!1851587 () Bool)

(assert (= bs!1851587 (and d!2166554 b!6933872)))

(assert (=> bs!1851587 (not (= lambda!394759 lambda!394696))))

(assert (=> bs!1851585 (= (and (= lt!2473822 (_2!37112 lt!2473836)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394759 lambda!394697))))

(declare-fun bs!1851588 () Bool)

(assert (= bs!1851588 (and d!2166554 b!6934251)))

(assert (=> bs!1851588 (not (= lambda!394759 lambda!394749))))

(assert (=> bs!1851577 (not (= lambda!394759 lambda!394730))))

(declare-fun bs!1851589 () Bool)

(assert (= bs!1851589 (and d!2166554 b!6934370)))

(assert (=> bs!1851589 (not (= lambda!394759 lambda!394757))))

(assert (=> bs!1851583 (not (= lambda!394759 lambda!394700))))

(declare-fun bs!1851590 () Bool)

(assert (= bs!1851590 (and d!2166554 b!6934100)))

(assert (=> bs!1851590 (not (= lambda!394759 lambda!394736))))

(declare-fun bs!1851591 () Bool)

(assert (= bs!1851591 (and d!2166554 b!6934308)))

(assert (=> bs!1851591 (not (= lambda!394759 lambda!394752))))

(assert (=> bs!1851587 (= (and (= lt!2473822 s!14361) (= r2!6280 lt!2473823)) (= lambda!394759 lambda!394695))))

(declare-fun bs!1851592 () Bool)

(assert (= bs!1851592 (and d!2166554 b!6934104)))

(assert (=> bs!1851592 (not (= lambda!394759 lambda!394735))))

(declare-fun bs!1851593 () Bool)

(assert (= bs!1851593 (and d!2166554 d!2166482)))

(assert (=> bs!1851593 (= (and (= lt!2473822 s!14361) (= r2!6280 lt!2473823)) (= lambda!394759 lambda!394739))))

(declare-fun bs!1851594 () Bool)

(assert (= bs!1851594 (and d!2166554 b!6934226)))

(assert (=> bs!1851594 (not (= lambda!394759 lambda!394747))))

(assert (=> d!2166554 true))

(assert (=> d!2166554 true))

(assert (=> d!2166554 true))

(assert (=> d!2166554 (= (isDefined!13422 (findConcatSeparation!3135 r1!6342 r2!6280 Nil!66581 lt!2473822 lt!2473822)) (Exists!3952 lambda!394759))))

(declare-fun lt!2473982 () Unit!160628)

(assert (=> d!2166554 (= lt!2473982 (choose!51644 r1!6342 r2!6280 lt!2473822))))

(assert (=> d!2166554 (validRegex!8658 r1!6342)))

(assert (=> d!2166554 (= (lemmaFindConcatSeparationEquivalentToExists!2893 r1!6342 r2!6280 lt!2473822) lt!2473982)))

(declare-fun bs!1851595 () Bool)

(assert (= bs!1851595 d!2166554))

(assert (=> bs!1851595 m!7640224))

(declare-fun m!7640720 () Bool)

(assert (=> bs!1851595 m!7640720))

(assert (=> bs!1851595 m!7640234))

(declare-fun m!7640722 () Bool)

(assert (=> bs!1851595 m!7640722))

(assert (=> bs!1851595 m!7640234))

(assert (=> bs!1851595 m!7640238))

(assert (=> b!6933865 d!2166554))

(declare-fun d!2166556 () Bool)

(assert (=> d!2166556 (= (isDefined!13422 (findConcatSeparation!3135 r1!6342 r2!6280 Nil!66581 lt!2473822 lt!2473822)) (not (isEmpty!38845 (findConcatSeparation!3135 r1!6342 r2!6280 Nil!66581 lt!2473822 lt!2473822))))))

(declare-fun bs!1851596 () Bool)

(assert (= bs!1851596 d!2166556))

(assert (=> bs!1851596 m!7640234))

(declare-fun m!7640724 () Bool)

(assert (=> bs!1851596 m!7640724))

(assert (=> b!6933865 d!2166556))

(declare-fun bs!1851597 () Bool)

(declare-fun b!6934425 () Bool)

(assert (= bs!1851597 (and b!6934425 b!6934293)))

(declare-fun lambda!394762 () Int)

(assert (=> bs!1851597 (not (= lambda!394762 lambda!394751))))

(declare-fun bs!1851598 () Bool)

(assert (= bs!1851598 (and b!6934425 d!2166470)))

(assert (=> bs!1851598 (not (= lambda!394762 lambda!394729))))

(declare-fun bs!1851599 () Bool)

(assert (= bs!1851599 (and b!6934425 b!6934304)))

(assert (=> bs!1851599 (not (= lambda!394762 lambda!394753))))

(declare-fun bs!1851600 () Bool)

(assert (= bs!1851600 (and b!6934425 b!6934230)))

(assert (=> bs!1851600 (= (and (= lt!2473822 s!14361) (= (reg!17281 lt!2473820) (reg!17281 lt!2473819)) (= lt!2473820 lt!2473819)) (= lambda!394762 lambda!394746))))

(declare-fun bs!1851601 () Bool)

(assert (= bs!1851601 (and b!6934425 b!6934374)))

(assert (=> bs!1851601 (= (and (= lt!2473822 (_2!37112 lt!2473836)) (= (reg!17281 lt!2473820) (reg!17281 lt!2473823)) (= lt!2473820 lt!2473823)) (= lambda!394762 lambda!394756))))

(declare-fun bs!1851602 () Bool)

(assert (= bs!1851602 (and b!6934425 b!6934255)))

(assert (=> bs!1851602 (= (and (= lt!2473822 s!14361) (= (reg!17281 lt!2473820) (reg!17281 lt!2473839)) (= lt!2473820 lt!2473839)) (= lambda!394762 lambda!394748))))

(declare-fun bs!1851603 () Bool)

(assert (= bs!1851603 (and b!6934425 b!6934297)))

(assert (=> bs!1851603 (= (and (= lt!2473822 (_2!37112 lt!2473832)) (= (reg!17281 lt!2473820) (reg!17281 r3!135)) (= lt!2473820 r3!135)) (= lambda!394762 lambda!394750))))

(declare-fun bs!1851604 () Bool)

(assert (= bs!1851604 (and b!6934425 b!6933865)))

(assert (=> bs!1851604 (not (= lambda!394762 lambda!394699))))

(declare-fun bs!1851605 () Bool)

(assert (= bs!1851605 (and b!6934425 d!2166528)))

(assert (=> bs!1851605 (not (= lambda!394762 lambda!394755))))

(assert (=> bs!1851605 (not (= lambda!394762 lambda!394754))))

(declare-fun bs!1851606 () Bool)

(assert (= bs!1851606 (and b!6934425 d!2166554)))

(assert (=> bs!1851606 (not (= lambda!394762 lambda!394759))))

(declare-fun bs!1851607 () Bool)

(assert (= bs!1851607 (and b!6934425 b!6933879)))

(assert (=> bs!1851607 (not (= lambda!394762 lambda!394698))))

(declare-fun bs!1851608 () Bool)

(assert (= bs!1851608 (and b!6934425 d!2166542)))

(assert (=> bs!1851608 (not (= lambda!394762 lambda!394758))))

(declare-fun bs!1851609 () Bool)

(assert (= bs!1851609 (and b!6934425 b!6933872)))

(assert (=> bs!1851609 (not (= lambda!394762 lambda!394696))))

(assert (=> bs!1851607 (not (= lambda!394762 lambda!394697))))

(declare-fun bs!1851610 () Bool)

(assert (= bs!1851610 (and b!6934425 b!6934251)))

(assert (=> bs!1851610 (not (= lambda!394762 lambda!394749))))

(assert (=> bs!1851598 (not (= lambda!394762 lambda!394730))))

(declare-fun bs!1851611 () Bool)

(assert (= bs!1851611 (and b!6934425 b!6934370)))

(assert (=> bs!1851611 (not (= lambda!394762 lambda!394757))))

(assert (=> bs!1851604 (not (= lambda!394762 lambda!394700))))

(declare-fun bs!1851612 () Bool)

(assert (= bs!1851612 (and b!6934425 b!6934100)))

(assert (=> bs!1851612 (not (= lambda!394762 lambda!394736))))

(declare-fun bs!1851613 () Bool)

(assert (= bs!1851613 (and b!6934425 b!6934308)))

(assert (=> bs!1851613 (= (and (= lt!2473822 (_1!37112 lt!2473832)) (= (reg!17281 lt!2473820) (reg!17281 r2!6280)) (= lt!2473820 r2!6280)) (= lambda!394762 lambda!394752))))

(assert (=> bs!1851609 (not (= lambda!394762 lambda!394695))))

(declare-fun bs!1851614 () Bool)

(assert (= bs!1851614 (and b!6934425 b!6934104)))

(assert (=> bs!1851614 (= (and (= lt!2473822 (_1!37112 lt!2473836)) (= (reg!17281 lt!2473820) (reg!17281 r1!6342)) (= lt!2473820 r1!6342)) (= lambda!394762 lambda!394735))))

(declare-fun bs!1851615 () Bool)

(assert (= bs!1851615 (and b!6934425 d!2166482)))

(assert (=> bs!1851615 (not (= lambda!394762 lambda!394739))))

(declare-fun bs!1851616 () Bool)

(assert (= bs!1851616 (and b!6934425 b!6934226)))

(assert (=> bs!1851616 (not (= lambda!394762 lambda!394747))))

(assert (=> b!6934425 true))

(assert (=> b!6934425 true))

(declare-fun bs!1851617 () Bool)

(declare-fun b!6934421 () Bool)

(assert (= bs!1851617 (and b!6934421 b!6934293)))

(declare-fun lambda!394765 () Int)

(assert (=> bs!1851617 (= (and (= lt!2473822 (_2!37112 lt!2473832)) (= (regOne!34416 lt!2473820) (regOne!34416 r3!135)) (= (regTwo!34416 lt!2473820) (regTwo!34416 r3!135))) (= lambda!394765 lambda!394751))))

(declare-fun bs!1851618 () Bool)

(assert (= bs!1851618 (and b!6934421 d!2166470)))

(assert (=> bs!1851618 (not (= lambda!394765 lambda!394729))))

(declare-fun bs!1851619 () Bool)

(assert (= bs!1851619 (and b!6934421 b!6934304)))

(assert (=> bs!1851619 (= (and (= lt!2473822 (_1!37112 lt!2473832)) (= (regOne!34416 lt!2473820) (regOne!34416 r2!6280)) (= (regTwo!34416 lt!2473820) (regTwo!34416 r2!6280))) (= lambda!394765 lambda!394753))))

(declare-fun bs!1851621 () Bool)

(assert (= bs!1851621 (and b!6934421 b!6934230)))

(assert (=> bs!1851621 (not (= lambda!394765 lambda!394746))))

(declare-fun bs!1851622 () Bool)

(assert (= bs!1851622 (and b!6934421 b!6934374)))

(assert (=> bs!1851622 (not (= lambda!394765 lambda!394756))))

(declare-fun bs!1851623 () Bool)

(assert (= bs!1851623 (and b!6934421 b!6934255)))

(assert (=> bs!1851623 (not (= lambda!394765 lambda!394748))))

(declare-fun bs!1851624 () Bool)

(assert (= bs!1851624 (and b!6934421 b!6934297)))

(assert (=> bs!1851624 (not (= lambda!394765 lambda!394750))))

(declare-fun bs!1851626 () Bool)

(assert (= bs!1851626 (and b!6934421 b!6933865)))

(assert (=> bs!1851626 (not (= lambda!394765 lambda!394699))))

(declare-fun bs!1851627 () Bool)

(assert (= bs!1851627 (and b!6934421 d!2166528)))

(assert (=> bs!1851627 (= (and (= lt!2473822 (_2!37112 lt!2473836)) (= (regOne!34416 lt!2473820) r2!6280) (= (regTwo!34416 lt!2473820) r3!135)) (= lambda!394765 lambda!394755))))

(assert (=> bs!1851627 (not (= lambda!394765 lambda!394754))))

(declare-fun bs!1851629 () Bool)

(assert (= bs!1851629 (and b!6934421 d!2166554)))

(assert (=> bs!1851629 (not (= lambda!394765 lambda!394759))))

(declare-fun bs!1851631 () Bool)

(assert (= bs!1851631 (and b!6934421 b!6933879)))

(assert (=> bs!1851631 (= (and (= lt!2473822 (_2!37112 lt!2473836)) (= (regOne!34416 lt!2473820) r2!6280) (= (regTwo!34416 lt!2473820) r3!135)) (= lambda!394765 lambda!394698))))

(declare-fun bs!1851632 () Bool)

(assert (= bs!1851632 (and b!6934421 b!6934425)))

(assert (=> bs!1851632 (not (= lambda!394765 lambda!394762))))

(declare-fun bs!1851633 () Bool)

(assert (= bs!1851633 (and b!6934421 d!2166542)))

(assert (=> bs!1851633 (not (= lambda!394765 lambda!394758))))

(declare-fun bs!1851634 () Bool)

(assert (= bs!1851634 (and b!6934421 b!6933872)))

(assert (=> bs!1851634 (= (and (= lt!2473822 s!14361) (= (regOne!34416 lt!2473820) r1!6342) (= (regTwo!34416 lt!2473820) lt!2473823)) (= lambda!394765 lambda!394696))))

(assert (=> bs!1851631 (not (= lambda!394765 lambda!394697))))

(declare-fun bs!1851636 () Bool)

(assert (= bs!1851636 (and b!6934421 b!6934251)))

(assert (=> bs!1851636 (= (and (= lt!2473822 s!14361) (= (regOne!34416 lt!2473820) (regOne!34416 lt!2473839)) (= (regTwo!34416 lt!2473820) (regTwo!34416 lt!2473839))) (= lambda!394765 lambda!394749))))

(assert (=> bs!1851618 (= (and (= lt!2473822 s!14361) (= (regOne!34416 lt!2473820) r1!6342) (= (regTwo!34416 lt!2473820) lt!2473823)) (= lambda!394765 lambda!394730))))

(declare-fun bs!1851637 () Bool)

(assert (= bs!1851637 (and b!6934421 b!6934370)))

(assert (=> bs!1851637 (= (and (= lt!2473822 (_2!37112 lt!2473836)) (= (regOne!34416 lt!2473820) (regOne!34416 lt!2473823)) (= (regTwo!34416 lt!2473820) (regTwo!34416 lt!2473823))) (= lambda!394765 lambda!394757))))

(assert (=> bs!1851626 (= (and (= (regOne!34416 lt!2473820) r1!6342) (= (regTwo!34416 lt!2473820) r2!6280)) (= lambda!394765 lambda!394700))))

(declare-fun bs!1851638 () Bool)

(assert (= bs!1851638 (and b!6934421 b!6934100)))

(assert (=> bs!1851638 (= (and (= lt!2473822 (_1!37112 lt!2473836)) (= (regOne!34416 lt!2473820) (regOne!34416 r1!6342)) (= (regTwo!34416 lt!2473820) (regTwo!34416 r1!6342))) (= lambda!394765 lambda!394736))))

(declare-fun bs!1851639 () Bool)

(assert (= bs!1851639 (and b!6934421 b!6934308)))

(assert (=> bs!1851639 (not (= lambda!394765 lambda!394752))))

(assert (=> bs!1851634 (not (= lambda!394765 lambda!394695))))

(declare-fun bs!1851640 () Bool)

(assert (= bs!1851640 (and b!6934421 b!6934104)))

(assert (=> bs!1851640 (not (= lambda!394765 lambda!394735))))

(declare-fun bs!1851641 () Bool)

(assert (= bs!1851641 (and b!6934421 d!2166482)))

(assert (=> bs!1851641 (not (= lambda!394765 lambda!394739))))

(declare-fun bs!1851642 () Bool)

(assert (= bs!1851642 (and b!6934421 b!6934226)))

(assert (=> bs!1851642 (= (and (= lt!2473822 s!14361) (= (regOne!34416 lt!2473820) (regOne!34416 lt!2473819)) (= (regTwo!34416 lt!2473820) (regTwo!34416 lt!2473819))) (= lambda!394765 lambda!394747))))

(assert (=> b!6934421 true))

(assert (=> b!6934421 true))

(declare-fun d!2166558 () Bool)

(declare-fun c!1286886 () Bool)

(assert (=> d!2166558 (= c!1286886 (is-EmptyExpr!16952 lt!2473820))))

(declare-fun e!4172205 () Bool)

(assert (=> d!2166558 (= (matchRSpec!4009 lt!2473820 lt!2473822) e!4172205)))

(declare-fun b!6934419 () Bool)

(declare-fun res!2828290 () Bool)

(declare-fun e!4172201 () Bool)

(assert (=> b!6934419 (=> res!2828290 e!4172201)))

(declare-fun call!630082 () Bool)

(assert (=> b!6934419 (= res!2828290 call!630082)))

(declare-fun e!4172204 () Bool)

(assert (=> b!6934419 (= e!4172204 e!4172201)))

(declare-fun b!6934420 () Bool)

(declare-fun e!4172200 () Bool)

(declare-fun e!4172202 () Bool)

(assert (=> b!6934420 (= e!4172200 e!4172202)))

(declare-fun res!2828291 () Bool)

(assert (=> b!6934420 (= res!2828291 (matchRSpec!4009 (regOne!34417 lt!2473820) lt!2473822))))

(assert (=> b!6934420 (=> res!2828291 e!4172202)))

(declare-fun call!630081 () Bool)

(assert (=> b!6934421 (= e!4172204 call!630081)))

(declare-fun b!6934422 () Bool)

(declare-fun c!1286884 () Bool)

(assert (=> b!6934422 (= c!1286884 (is-ElementMatch!16952 lt!2473820))))

(declare-fun e!4172199 () Bool)

(declare-fun e!4172203 () Bool)

(assert (=> b!6934422 (= e!4172199 e!4172203)))

(declare-fun b!6934423 () Bool)

(declare-fun c!1286885 () Bool)

(assert (=> b!6934423 (= c!1286885 (is-Union!16952 lt!2473820))))

(assert (=> b!6934423 (= e!4172203 e!4172200)))

(declare-fun bm!630076 () Bool)

(assert (=> bm!630076 (= call!630082 (isEmpty!38844 lt!2473822))))

(declare-fun b!6934424 () Bool)

(assert (=> b!6934424 (= e!4172200 e!4172204)))

(declare-fun c!1286883 () Bool)

(assert (=> b!6934424 (= c!1286883 (is-Star!16952 lt!2473820))))

(assert (=> b!6934425 (= e!4172201 call!630081)))

(declare-fun b!6934426 () Bool)

(assert (=> b!6934426 (= e!4172203 (= lt!2473822 (Cons!66581 (c!1286780 lt!2473820) Nil!66581)))))

(declare-fun b!6934427 () Bool)

(assert (=> b!6934427 (= e!4172205 e!4172199)))

(declare-fun res!2828292 () Bool)

(assert (=> b!6934427 (= res!2828292 (not (is-EmptyLang!16952 lt!2473820)))))

(assert (=> b!6934427 (=> (not res!2828292) (not e!4172199))))

(declare-fun bm!630077 () Bool)

(assert (=> bm!630077 (= call!630081 (Exists!3952 (ite c!1286883 lambda!394762 lambda!394765)))))

(declare-fun b!6934428 () Bool)

(assert (=> b!6934428 (= e!4172202 (matchRSpec!4009 (regTwo!34417 lt!2473820) lt!2473822))))

(declare-fun b!6934429 () Bool)

(assert (=> b!6934429 (= e!4172205 call!630082)))

(assert (= (and d!2166558 c!1286886) b!6934429))

(assert (= (and d!2166558 (not c!1286886)) b!6934427))

(assert (= (and b!6934427 res!2828292) b!6934422))

(assert (= (and b!6934422 c!1286884) b!6934426))

(assert (= (and b!6934422 (not c!1286884)) b!6934423))

(assert (= (and b!6934423 c!1286885) b!6934420))

(assert (= (and b!6934423 (not c!1286885)) b!6934424))

(assert (= (and b!6934420 (not res!2828291)) b!6934428))

(assert (= (and b!6934424 c!1286883) b!6934419))

(assert (= (and b!6934424 (not c!1286883)) b!6934421))

(assert (= (and b!6934419 (not res!2828290)) b!6934425))

(assert (= (or b!6934425 b!6934421) bm!630077))

(assert (= (or b!6934429 b!6934419) bm!630076))

(declare-fun m!7640726 () Bool)

(assert (=> b!6934420 m!7640726))

(assert (=> bm!630076 m!7640686))

(declare-fun m!7640728 () Bool)

(assert (=> bm!630077 m!7640728))

(declare-fun m!7640730 () Bool)

(assert (=> b!6934428 m!7640730))

(assert (=> b!6933865 d!2166558))

(declare-fun b!6934435 () Bool)

(declare-fun e!4172208 () List!66705)

(assert (=> b!6934435 (= e!4172208 (Cons!66581 (h!73029 lt!2473822) (++!14991 (t!380448 lt!2473822) (_2!37112 lt!2473832))))))

(declare-fun lt!2473984 () List!66705)

(declare-fun b!6934437 () Bool)

(declare-fun e!4172209 () Bool)

(assert (=> b!6934437 (= e!4172209 (or (not (= (_2!37112 lt!2473832) Nil!66581)) (= lt!2473984 lt!2473822)))))

(declare-fun b!6934434 () Bool)

(assert (=> b!6934434 (= e!4172208 (_2!37112 lt!2473832))))

(declare-fun d!2166560 () Bool)

(assert (=> d!2166560 e!4172209))

(declare-fun res!2828297 () Bool)

(assert (=> d!2166560 (=> (not res!2828297) (not e!4172209))))

(assert (=> d!2166560 (= res!2828297 (= (content!13093 lt!2473984) (set.union (content!13093 lt!2473822) (content!13093 (_2!37112 lt!2473832)))))))

(assert (=> d!2166560 (= lt!2473984 e!4172208)))

(declare-fun c!1286887 () Bool)

(assert (=> d!2166560 (= c!1286887 (is-Nil!66581 lt!2473822))))

(assert (=> d!2166560 (= (++!14991 lt!2473822 (_2!37112 lt!2473832)) lt!2473984)))

(declare-fun b!6934436 () Bool)

(declare-fun res!2828298 () Bool)

(assert (=> b!6934436 (=> (not res!2828298) (not e!4172209))))

(assert (=> b!6934436 (= res!2828298 (= (size!40790 lt!2473984) (+ (size!40790 lt!2473822) (size!40790 (_2!37112 lt!2473832)))))))

(assert (= (and d!2166560 c!1286887) b!6934434))

(assert (= (and d!2166560 (not c!1286887)) b!6934435))

(assert (= (and d!2166560 res!2828297) b!6934436))

(assert (= (and b!6934436 res!2828298) b!6934437))

(declare-fun m!7640732 () Bool)

(assert (=> b!6934435 m!7640732))

(declare-fun m!7640734 () Bool)

(assert (=> d!2166560 m!7640734))

(assert (=> d!2166560 m!7640396))

(assert (=> d!2166560 m!7640542))

(declare-fun m!7640736 () Bool)

(assert (=> b!6934436 m!7640736))

(assert (=> b!6934436 m!7640402))

(assert (=> b!6934436 m!7640548))

(assert (=> b!6933865 d!2166560))

(declare-fun d!2166562 () Bool)

(assert (=> d!2166562 (= (Exists!3952 lambda!394699) (choose!51642 lambda!394699))))

(declare-fun bs!1851644 () Bool)

(assert (= bs!1851644 d!2166562))

(declare-fun m!7640738 () Bool)

(assert (=> bs!1851644 m!7640738))

(assert (=> b!6933865 d!2166562))

(declare-fun d!2166564 () Bool)

(assert (=> d!2166564 (= (matchR!9091 lt!2473820 lt!2473822) (matchRSpec!4009 lt!2473820 lt!2473822))))

(declare-fun lt!2473985 () Unit!160628)

(assert (=> d!2166564 (= lt!2473985 (choose!51645 lt!2473820 lt!2473822))))

(assert (=> d!2166564 (validRegex!8658 lt!2473820)))

(assert (=> d!2166564 (= (mainMatchTheorem!4009 lt!2473820 lt!2473822) lt!2473985)))

(declare-fun bs!1851645 () Bool)

(assert (= bs!1851645 d!2166564))

(assert (=> bs!1851645 m!7640228))

(assert (=> bs!1851645 m!7640242))

(declare-fun m!7640740 () Bool)

(assert (=> bs!1851645 m!7640740))

(assert (=> bs!1851645 m!7640688))

(assert (=> b!6933865 d!2166564))

(declare-fun bs!1851646 () Bool)

(declare-fun d!2166566 () Bool)

(assert (= bs!1851646 (and d!2166566 b!6934293)))

(declare-fun lambda!394768 () Int)

(assert (=> bs!1851646 (not (= lambda!394768 lambda!394751))))

(declare-fun bs!1851647 () Bool)

(assert (= bs!1851647 (and d!2166566 d!2166470)))

(assert (=> bs!1851647 (= (and (= lt!2473822 s!14361) (= r2!6280 lt!2473823)) (= lambda!394768 lambda!394729))))

(declare-fun bs!1851648 () Bool)

(assert (= bs!1851648 (and d!2166566 b!6934304)))

(assert (=> bs!1851648 (not (= lambda!394768 lambda!394753))))

(declare-fun bs!1851649 () Bool)

(assert (= bs!1851649 (and d!2166566 b!6934230)))

(assert (=> bs!1851649 (not (= lambda!394768 lambda!394746))))

(declare-fun bs!1851650 () Bool)

(assert (= bs!1851650 (and d!2166566 b!6934374)))

(assert (=> bs!1851650 (not (= lambda!394768 lambda!394756))))

(declare-fun bs!1851651 () Bool)

(assert (= bs!1851651 (and d!2166566 b!6934255)))

(assert (=> bs!1851651 (not (= lambda!394768 lambda!394748))))

(declare-fun bs!1851652 () Bool)

(assert (= bs!1851652 (and d!2166566 b!6934297)))

(assert (=> bs!1851652 (not (= lambda!394768 lambda!394750))))

(declare-fun bs!1851653 () Bool)

(assert (= bs!1851653 (and d!2166566 b!6933865)))

(assert (=> bs!1851653 (= lambda!394768 lambda!394699)))

(declare-fun bs!1851654 () Bool)

(assert (= bs!1851654 (and d!2166566 d!2166528)))

(assert (=> bs!1851654 (not (= lambda!394768 lambda!394755))))

(declare-fun bs!1851655 () Bool)

(assert (= bs!1851655 (and d!2166566 b!6934421)))

(assert (=> bs!1851655 (not (= lambda!394768 lambda!394765))))

(assert (=> bs!1851654 (= (and (= lt!2473822 (_2!37112 lt!2473836)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394768 lambda!394754))))

(declare-fun bs!1851657 () Bool)

(assert (= bs!1851657 (and d!2166566 d!2166554)))

(assert (=> bs!1851657 (= lambda!394768 lambda!394759)))

(declare-fun bs!1851658 () Bool)

(assert (= bs!1851658 (and d!2166566 b!6933879)))

(assert (=> bs!1851658 (not (= lambda!394768 lambda!394698))))

(declare-fun bs!1851659 () Bool)

(assert (= bs!1851659 (and d!2166566 b!6934425)))

(assert (=> bs!1851659 (not (= lambda!394768 lambda!394762))))

(declare-fun bs!1851660 () Bool)

(assert (= bs!1851660 (and d!2166566 d!2166542)))

(assert (=> bs!1851660 (= (and (= lt!2473822 (_2!37112 lt!2473836)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394768 lambda!394758))))

(declare-fun bs!1851661 () Bool)

(assert (= bs!1851661 (and d!2166566 b!6933872)))

(assert (=> bs!1851661 (not (= lambda!394768 lambda!394696))))

(assert (=> bs!1851658 (= (and (= lt!2473822 (_2!37112 lt!2473836)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394768 lambda!394697))))

(declare-fun bs!1851662 () Bool)

(assert (= bs!1851662 (and d!2166566 b!6934251)))

(assert (=> bs!1851662 (not (= lambda!394768 lambda!394749))))

(assert (=> bs!1851647 (not (= lambda!394768 lambda!394730))))

(declare-fun bs!1851663 () Bool)

(assert (= bs!1851663 (and d!2166566 b!6934370)))

(assert (=> bs!1851663 (not (= lambda!394768 lambda!394757))))

(assert (=> bs!1851653 (not (= lambda!394768 lambda!394700))))

(declare-fun bs!1851664 () Bool)

(assert (= bs!1851664 (and d!2166566 b!6934100)))

(assert (=> bs!1851664 (not (= lambda!394768 lambda!394736))))

(declare-fun bs!1851665 () Bool)

(assert (= bs!1851665 (and d!2166566 b!6934308)))

(assert (=> bs!1851665 (not (= lambda!394768 lambda!394752))))

(assert (=> bs!1851661 (= (and (= lt!2473822 s!14361) (= r2!6280 lt!2473823)) (= lambda!394768 lambda!394695))))

(declare-fun bs!1851666 () Bool)

(assert (= bs!1851666 (and d!2166566 b!6934104)))

(assert (=> bs!1851666 (not (= lambda!394768 lambda!394735))))

(declare-fun bs!1851667 () Bool)

(assert (= bs!1851667 (and d!2166566 d!2166482)))

(assert (=> bs!1851667 (= (and (= lt!2473822 s!14361) (= r2!6280 lt!2473823)) (= lambda!394768 lambda!394739))))

(declare-fun bs!1851668 () Bool)

(assert (= bs!1851668 (and d!2166566 b!6934226)))

(assert (=> bs!1851668 (not (= lambda!394768 lambda!394747))))

(assert (=> d!2166566 true))

(assert (=> d!2166566 true))

(assert (=> d!2166566 true))

(declare-fun lambda!394769 () Int)

(assert (=> bs!1851646 (= (and (= lt!2473822 (_2!37112 lt!2473832)) (= r1!6342 (regOne!34416 r3!135)) (= r2!6280 (regTwo!34416 r3!135))) (= lambda!394769 lambda!394751))))

(assert (=> bs!1851647 (not (= lambda!394769 lambda!394729))))

(assert (=> bs!1851648 (= (and (= lt!2473822 (_1!37112 lt!2473832)) (= r1!6342 (regOne!34416 r2!6280)) (= r2!6280 (regTwo!34416 r2!6280))) (= lambda!394769 lambda!394753))))

(assert (=> bs!1851649 (not (= lambda!394769 lambda!394746))))

(assert (=> bs!1851650 (not (= lambda!394769 lambda!394756))))

(assert (=> bs!1851651 (not (= lambda!394769 lambda!394748))))

(assert (=> bs!1851652 (not (= lambda!394769 lambda!394750))))

(assert (=> bs!1851653 (not (= lambda!394769 lambda!394699))))

(assert (=> bs!1851654 (= (and (= lt!2473822 (_2!37112 lt!2473836)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394769 lambda!394755))))

(assert (=> bs!1851655 (= (and (= r1!6342 (regOne!34416 lt!2473820)) (= r2!6280 (regTwo!34416 lt!2473820))) (= lambda!394769 lambda!394765))))

(assert (=> bs!1851654 (not (= lambda!394769 lambda!394754))))

(assert (=> bs!1851657 (not (= lambda!394769 lambda!394759))))

(assert (=> bs!1851658 (= (and (= lt!2473822 (_2!37112 lt!2473836)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394769 lambda!394698))))

(assert (=> bs!1851659 (not (= lambda!394769 lambda!394762))))

(assert (=> bs!1851660 (not (= lambda!394769 lambda!394758))))

(assert (=> bs!1851661 (= (and (= lt!2473822 s!14361) (= r2!6280 lt!2473823)) (= lambda!394769 lambda!394696))))

(assert (=> bs!1851658 (not (= lambda!394769 lambda!394697))))

(declare-fun bs!1851669 () Bool)

(assert (= bs!1851669 d!2166566))

(assert (=> bs!1851669 (not (= lambda!394769 lambda!394768))))

(assert (=> bs!1851662 (= (and (= lt!2473822 s!14361) (= r1!6342 (regOne!34416 lt!2473839)) (= r2!6280 (regTwo!34416 lt!2473839))) (= lambda!394769 lambda!394749))))

(assert (=> bs!1851647 (= (and (= lt!2473822 s!14361) (= r2!6280 lt!2473823)) (= lambda!394769 lambda!394730))))

(assert (=> bs!1851663 (= (and (= lt!2473822 (_2!37112 lt!2473836)) (= r1!6342 (regOne!34416 lt!2473823)) (= r2!6280 (regTwo!34416 lt!2473823))) (= lambda!394769 lambda!394757))))

(assert (=> bs!1851653 (= lambda!394769 lambda!394700)))

(assert (=> bs!1851664 (= (and (= lt!2473822 (_1!37112 lt!2473836)) (= r1!6342 (regOne!34416 r1!6342)) (= r2!6280 (regTwo!34416 r1!6342))) (= lambda!394769 lambda!394736))))

(assert (=> bs!1851665 (not (= lambda!394769 lambda!394752))))

(assert (=> bs!1851661 (not (= lambda!394769 lambda!394695))))

(assert (=> bs!1851666 (not (= lambda!394769 lambda!394735))))

(assert (=> bs!1851667 (not (= lambda!394769 lambda!394739))))

(assert (=> bs!1851668 (= (and (= lt!2473822 s!14361) (= r1!6342 (regOne!34416 lt!2473819)) (= r2!6280 (regTwo!34416 lt!2473819))) (= lambda!394769 lambda!394747))))

(assert (=> d!2166566 true))

(assert (=> d!2166566 true))

(assert (=> d!2166566 true))

(assert (=> d!2166566 (= (Exists!3952 lambda!394768) (Exists!3952 lambda!394769))))

(declare-fun lt!2473986 () Unit!160628)

(assert (=> d!2166566 (= lt!2473986 (choose!51643 r1!6342 r2!6280 lt!2473822))))

(assert (=> d!2166566 (validRegex!8658 r1!6342)))

(assert (=> d!2166566 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2413 r1!6342 r2!6280 lt!2473822) lt!2473986)))

(declare-fun m!7640750 () Bool)

(assert (=> bs!1851669 m!7640750))

(declare-fun m!7640752 () Bool)

(assert (=> bs!1851669 m!7640752))

(declare-fun m!7640754 () Bool)

(assert (=> bs!1851669 m!7640754))

(assert (=> bs!1851669 m!7640224))

(assert (=> b!6933865 d!2166566))

(declare-fun d!2166572 () Bool)

(declare-fun e!4172227 () Bool)

(assert (=> d!2166572 e!4172227))

(declare-fun res!2828317 () Bool)

(assert (=> d!2166572 (=> res!2828317 e!4172227)))

(declare-fun lt!2473991 () Bool)

(assert (=> d!2166572 (= res!2828317 (not lt!2473991))))

(declare-fun e!4172228 () Bool)

(assert (=> d!2166572 (= lt!2473991 e!4172228)))

(declare-fun res!2828318 () Bool)

(assert (=> d!2166572 (=> res!2828318 e!4172228)))

(assert (=> d!2166572 (= res!2828318 (is-Nil!66581 Nil!66581))))

(assert (=> d!2166572 (= (isPrefix!5813 Nil!66581 (_1!37112 lt!2473836)) lt!2473991)))

(declare-fun b!6934467 () Bool)

(declare-fun res!2828320 () Bool)

(declare-fun e!4172226 () Bool)

(assert (=> b!6934467 (=> (not res!2828320) (not e!4172226))))

(assert (=> b!6934467 (= res!2828320 (= (head!13899 Nil!66581) (head!13899 (_1!37112 lt!2473836))))))

(declare-fun b!6934466 () Bool)

(assert (=> b!6934466 (= e!4172228 e!4172226)))

(declare-fun res!2828319 () Bool)

(assert (=> b!6934466 (=> (not res!2828319) (not e!4172226))))

(assert (=> b!6934466 (= res!2828319 (not (is-Nil!66581 (_1!37112 lt!2473836))))))

(declare-fun b!6934469 () Bool)

(assert (=> b!6934469 (= e!4172227 (>= (size!40790 (_1!37112 lt!2473836)) (size!40790 Nil!66581)))))

(declare-fun b!6934468 () Bool)

(assert (=> b!6934468 (= e!4172226 (isPrefix!5813 (tail!12951 Nil!66581) (tail!12951 (_1!37112 lt!2473836))))))

(assert (= (and d!2166572 (not res!2828318)) b!6934466))

(assert (= (and b!6934466 res!2828319) b!6934467))

(assert (= (and b!6934467 res!2828320) b!6934468))

(assert (= (and d!2166572 (not res!2828317)) b!6934469))

(declare-fun m!7640756 () Bool)

(assert (=> b!6934467 m!7640756))

(assert (=> b!6934467 m!7640428))

(assert (=> b!6934469 m!7640560))

(assert (=> b!6934469 m!7640400))

(declare-fun m!7640758 () Bool)

(assert (=> b!6934468 m!7640758))

(assert (=> b!6934468 m!7640432))

(assert (=> b!6934468 m!7640758))

(assert (=> b!6934468 m!7640432))

(declare-fun m!7640760 () Bool)

(assert (=> b!6934468 m!7640760))

(assert (=> b!6933865 d!2166572))

(declare-fun d!2166574 () Bool)

(assert (=> d!2166574 (= (Exists!3952 lambda!394700) (choose!51642 lambda!394700))))

(declare-fun bs!1851670 () Bool)

(assert (= bs!1851670 d!2166574))

(declare-fun m!7640762 () Bool)

(assert (=> bs!1851670 m!7640762))

(assert (=> b!6933865 d!2166574))

(declare-fun d!2166576 () Bool)

(assert (=> d!2166576 (= (++!14991 (++!14991 (_1!37112 lt!2473836) (_1!37112 lt!2473832)) (_2!37112 lt!2473832)) (++!14991 (_1!37112 lt!2473836) (++!14991 (_1!37112 lt!2473832) (_2!37112 lt!2473832))))))

(declare-fun lt!2473994 () Unit!160628)

(declare-fun choose!51650 (List!66705 List!66705 List!66705) Unit!160628)

(assert (=> d!2166576 (= lt!2473994 (choose!51650 (_1!37112 lt!2473836) (_1!37112 lt!2473832) (_2!37112 lt!2473832)))))

(assert (=> d!2166576 (= (lemmaConcatAssociativity!3033 (_1!37112 lt!2473836) (_1!37112 lt!2473832) (_2!37112 lt!2473832)) lt!2473994)))

(declare-fun bs!1851671 () Bool)

(assert (= bs!1851671 d!2166576))

(declare-fun m!7640764 () Bool)

(assert (=> bs!1851671 m!7640764))

(assert (=> bs!1851671 m!7640246))

(declare-fun m!7640766 () Bool)

(assert (=> bs!1851671 m!7640766))

(assert (=> bs!1851671 m!7640178))

(assert (=> bs!1851671 m!7640178))

(assert (=> bs!1851671 m!7640180))

(assert (=> bs!1851671 m!7640246))

(assert (=> b!6933865 d!2166576))

(declare-fun b!6934478 () Bool)

(declare-fun e!4172237 () Bool)

(declare-fun e!4172238 () Bool)

(assert (=> b!6934478 (= e!4172237 e!4172238)))

(declare-fun c!1286894 () Bool)

(assert (=> b!6934478 (= c!1286894 (is-Union!16952 r1!6342))))

(declare-fun b!6934479 () Bool)

(declare-fun res!2828329 () Bool)

(declare-fun e!4172235 () Bool)

(assert (=> b!6934479 (=> res!2828329 e!4172235)))

(assert (=> b!6934479 (= res!2828329 (not (is-Concat!25797 r1!6342)))))

(assert (=> b!6934479 (= e!4172238 e!4172235)))

(declare-fun bm!630080 () Bool)

(declare-fun call!630086 () Bool)

(assert (=> bm!630080 (= call!630086 (validRegex!8658 (ite c!1286894 (regTwo!34417 r1!6342) (regOne!34416 r1!6342))))))

(declare-fun b!6934480 () Bool)

(declare-fun e!4172239 () Bool)

(declare-fun call!630085 () Bool)

(assert (=> b!6934480 (= e!4172239 call!630085)))

(declare-fun b!6934481 () Bool)

(declare-fun e!4172233 () Bool)

(assert (=> b!6934481 (= e!4172237 e!4172233)))

(declare-fun res!2828330 () Bool)

(assert (=> b!6934481 (= res!2828330 (not (nullable!6771 (reg!17281 r1!6342))))))

(assert (=> b!6934481 (=> (not res!2828330) (not e!4172233))))

(declare-fun b!6934482 () Bool)

(declare-fun e!4172234 () Bool)

(assert (=> b!6934482 (= e!4172234 call!630086)))

(declare-fun b!6934483 () Bool)

(declare-fun res!2828328 () Bool)

(assert (=> b!6934483 (=> (not res!2828328) (not e!4172234))))

(assert (=> b!6934483 (= res!2828328 call!630085)))

(assert (=> b!6934483 (= e!4172238 e!4172234)))

(declare-fun b!6934484 () Bool)

(assert (=> b!6934484 (= e!4172235 e!4172239)))

(declare-fun res!2828327 () Bool)

(assert (=> b!6934484 (=> (not res!2828327) (not e!4172239))))

(assert (=> b!6934484 (= res!2828327 call!630086)))

(declare-fun b!6934485 () Bool)

(declare-fun call!630087 () Bool)

(assert (=> b!6934485 (= e!4172233 call!630087)))

(declare-fun bm!630081 () Bool)

(assert (=> bm!630081 (= call!630085 call!630087)))

(declare-fun c!1286895 () Bool)

(declare-fun bm!630082 () Bool)

(assert (=> bm!630082 (= call!630087 (validRegex!8658 (ite c!1286895 (reg!17281 r1!6342) (ite c!1286894 (regOne!34417 r1!6342) (regTwo!34416 r1!6342)))))))

(declare-fun b!6934486 () Bool)

(declare-fun e!4172236 () Bool)

(assert (=> b!6934486 (= e!4172236 e!4172237)))

(assert (=> b!6934486 (= c!1286895 (is-Star!16952 r1!6342))))

(declare-fun d!2166578 () Bool)

(declare-fun res!2828331 () Bool)

(assert (=> d!2166578 (=> res!2828331 e!4172236)))

(assert (=> d!2166578 (= res!2828331 (is-ElementMatch!16952 r1!6342))))

(assert (=> d!2166578 (= (validRegex!8658 r1!6342) e!4172236)))

(assert (= (and d!2166578 (not res!2828331)) b!6934486))

(assert (= (and b!6934486 c!1286895) b!6934481))

(assert (= (and b!6934486 (not c!1286895)) b!6934478))

(assert (= (and b!6934481 res!2828330) b!6934485))

(assert (= (and b!6934478 c!1286894) b!6934483))

(assert (= (and b!6934478 (not c!1286894)) b!6934479))

(assert (= (and b!6934483 res!2828328) b!6934482))

(assert (= (and b!6934479 (not res!2828329)) b!6934484))

(assert (= (and b!6934484 res!2828327) b!6934480))

(assert (= (or b!6934483 b!6934480) bm!630081))

(assert (= (or b!6934482 b!6934484) bm!630080))

(assert (= (or b!6934485 bm!630081) bm!630082))

(declare-fun m!7640768 () Bool)

(assert (=> bm!630080 m!7640768))

(declare-fun m!7640770 () Bool)

(assert (=> b!6934481 m!7640770))

(declare-fun m!7640772 () Bool)

(assert (=> bm!630082 m!7640772))

(assert (=> start!666232 d!2166578))

(declare-fun b!6934497 () Bool)

(declare-fun e!4172242 () Bool)

(assert (=> b!6934497 (= e!4172242 tp_is_empty!43129)))

(assert (=> b!6933862 (= tp!1911507 e!4172242)))

(declare-fun b!6934499 () Bool)

(declare-fun tp!1911567 () Bool)

(assert (=> b!6934499 (= e!4172242 tp!1911567)))

(declare-fun b!6934500 () Bool)

(declare-fun tp!1911566 () Bool)

(declare-fun tp!1911569 () Bool)

(assert (=> b!6934500 (= e!4172242 (and tp!1911566 tp!1911569))))

(declare-fun b!6934498 () Bool)

(declare-fun tp!1911568 () Bool)

(declare-fun tp!1911570 () Bool)

(assert (=> b!6934498 (= e!4172242 (and tp!1911568 tp!1911570))))

(assert (= (and b!6933862 (is-ElementMatch!16952 (regOne!34417 r1!6342))) b!6934497))

(assert (= (and b!6933862 (is-Concat!25797 (regOne!34417 r1!6342))) b!6934498))

(assert (= (and b!6933862 (is-Star!16952 (regOne!34417 r1!6342))) b!6934499))

(assert (= (and b!6933862 (is-Union!16952 (regOne!34417 r1!6342))) b!6934500))

(declare-fun b!6934501 () Bool)

(declare-fun e!4172243 () Bool)

(assert (=> b!6934501 (= e!4172243 tp_is_empty!43129)))

(assert (=> b!6933862 (= tp!1911503 e!4172243)))

(declare-fun b!6934503 () Bool)

(declare-fun tp!1911572 () Bool)

(assert (=> b!6934503 (= e!4172243 tp!1911572)))

(declare-fun b!6934504 () Bool)

(declare-fun tp!1911571 () Bool)

(declare-fun tp!1911574 () Bool)

(assert (=> b!6934504 (= e!4172243 (and tp!1911571 tp!1911574))))

(declare-fun b!6934502 () Bool)

(declare-fun tp!1911573 () Bool)

(declare-fun tp!1911575 () Bool)

(assert (=> b!6934502 (= e!4172243 (and tp!1911573 tp!1911575))))

(assert (= (and b!6933862 (is-ElementMatch!16952 (regTwo!34417 r1!6342))) b!6934501))

(assert (= (and b!6933862 (is-Concat!25797 (regTwo!34417 r1!6342))) b!6934502))

(assert (= (and b!6933862 (is-Star!16952 (regTwo!34417 r1!6342))) b!6934503))

(assert (= (and b!6933862 (is-Union!16952 (regTwo!34417 r1!6342))) b!6934504))

(declare-fun b!6934505 () Bool)

(declare-fun e!4172244 () Bool)

(assert (=> b!6934505 (= e!4172244 tp_is_empty!43129)))

(assert (=> b!6933878 (= tp!1911500 e!4172244)))

(declare-fun b!6934507 () Bool)

(declare-fun tp!1911577 () Bool)

(assert (=> b!6934507 (= e!4172244 tp!1911577)))

(declare-fun b!6934508 () Bool)

(declare-fun tp!1911576 () Bool)

(declare-fun tp!1911579 () Bool)

(assert (=> b!6934508 (= e!4172244 (and tp!1911576 tp!1911579))))

(declare-fun b!6934506 () Bool)

(declare-fun tp!1911578 () Bool)

(declare-fun tp!1911580 () Bool)

(assert (=> b!6934506 (= e!4172244 (and tp!1911578 tp!1911580))))

(assert (= (and b!6933878 (is-ElementMatch!16952 (reg!17281 r3!135))) b!6934505))

(assert (= (and b!6933878 (is-Concat!25797 (reg!17281 r3!135))) b!6934506))

(assert (= (and b!6933878 (is-Star!16952 (reg!17281 r3!135))) b!6934507))

(assert (= (and b!6933878 (is-Union!16952 (reg!17281 r3!135))) b!6934508))

(declare-fun b!6934509 () Bool)

(declare-fun e!4172245 () Bool)

(assert (=> b!6934509 (= e!4172245 tp_is_empty!43129)))

(assert (=> b!6933873 (= tp!1911493 e!4172245)))

(declare-fun b!6934511 () Bool)

(declare-fun tp!1911582 () Bool)

(assert (=> b!6934511 (= e!4172245 tp!1911582)))

(declare-fun b!6934512 () Bool)

(declare-fun tp!1911581 () Bool)

(declare-fun tp!1911584 () Bool)

(assert (=> b!6934512 (= e!4172245 (and tp!1911581 tp!1911584))))

(declare-fun b!6934510 () Bool)

(declare-fun tp!1911583 () Bool)

(declare-fun tp!1911585 () Bool)

(assert (=> b!6934510 (= e!4172245 (and tp!1911583 tp!1911585))))

(assert (= (and b!6933873 (is-ElementMatch!16952 (regOne!34416 r3!135))) b!6934509))

(assert (= (and b!6933873 (is-Concat!25797 (regOne!34416 r3!135))) b!6934510))

(assert (= (and b!6933873 (is-Star!16952 (regOne!34416 r3!135))) b!6934511))

(assert (= (and b!6933873 (is-Union!16952 (regOne!34416 r3!135))) b!6934512))

(declare-fun b!6934513 () Bool)

(declare-fun e!4172246 () Bool)

(assert (=> b!6934513 (= e!4172246 tp_is_empty!43129)))

(assert (=> b!6933873 (= tp!1911495 e!4172246)))

(declare-fun b!6934515 () Bool)

(declare-fun tp!1911587 () Bool)

(assert (=> b!6934515 (= e!4172246 tp!1911587)))

(declare-fun b!6934516 () Bool)

(declare-fun tp!1911586 () Bool)

(declare-fun tp!1911589 () Bool)

(assert (=> b!6934516 (= e!4172246 (and tp!1911586 tp!1911589))))

(declare-fun b!6934514 () Bool)

(declare-fun tp!1911588 () Bool)

(declare-fun tp!1911590 () Bool)

(assert (=> b!6934514 (= e!4172246 (and tp!1911588 tp!1911590))))

(assert (= (and b!6933873 (is-ElementMatch!16952 (regTwo!34416 r3!135))) b!6934513))

(assert (= (and b!6933873 (is-Concat!25797 (regTwo!34416 r3!135))) b!6934514))

(assert (= (and b!6933873 (is-Star!16952 (regTwo!34416 r3!135))) b!6934515))

(assert (= (and b!6933873 (is-Union!16952 (regTwo!34416 r3!135))) b!6934516))

(declare-fun b!6934521 () Bool)

(declare-fun e!4172249 () Bool)

(declare-fun tp!1911593 () Bool)

(assert (=> b!6934521 (= e!4172249 (and tp_is_empty!43129 tp!1911593))))

(assert (=> b!6933866 (= tp!1911494 e!4172249)))

(assert (= (and b!6933866 (is-Cons!66581 (t!380448 s!14361))) b!6934521))

(declare-fun b!6934522 () Bool)

(declare-fun e!4172250 () Bool)

(assert (=> b!6934522 (= e!4172250 tp_is_empty!43129)))

(assert (=> b!6933877 (= tp!1911506 e!4172250)))

(declare-fun b!6934524 () Bool)

(declare-fun tp!1911595 () Bool)

(assert (=> b!6934524 (= e!4172250 tp!1911595)))

(declare-fun b!6934525 () Bool)

(declare-fun tp!1911594 () Bool)

(declare-fun tp!1911597 () Bool)

(assert (=> b!6934525 (= e!4172250 (and tp!1911594 tp!1911597))))

(declare-fun b!6934523 () Bool)

(declare-fun tp!1911596 () Bool)

(declare-fun tp!1911598 () Bool)

(assert (=> b!6934523 (= e!4172250 (and tp!1911596 tp!1911598))))

(assert (= (and b!6933877 (is-ElementMatch!16952 (regOne!34416 r1!6342))) b!6934522))

(assert (= (and b!6933877 (is-Concat!25797 (regOne!34416 r1!6342))) b!6934523))

(assert (= (and b!6933877 (is-Star!16952 (regOne!34416 r1!6342))) b!6934524))

(assert (= (and b!6933877 (is-Union!16952 (regOne!34416 r1!6342))) b!6934525))

(declare-fun b!6934526 () Bool)

(declare-fun e!4172251 () Bool)

(assert (=> b!6934526 (= e!4172251 tp_is_empty!43129)))

(assert (=> b!6933877 (= tp!1911498 e!4172251)))

(declare-fun b!6934528 () Bool)

(declare-fun tp!1911600 () Bool)

(assert (=> b!6934528 (= e!4172251 tp!1911600)))

(declare-fun b!6934529 () Bool)

(declare-fun tp!1911599 () Bool)

(declare-fun tp!1911602 () Bool)

(assert (=> b!6934529 (= e!4172251 (and tp!1911599 tp!1911602))))

(declare-fun b!6934527 () Bool)

(declare-fun tp!1911601 () Bool)

(declare-fun tp!1911603 () Bool)

(assert (=> b!6934527 (= e!4172251 (and tp!1911601 tp!1911603))))

(assert (= (and b!6933877 (is-ElementMatch!16952 (regTwo!34416 r1!6342))) b!6934526))

(assert (= (and b!6933877 (is-Concat!25797 (regTwo!34416 r1!6342))) b!6934527))

(assert (= (and b!6933877 (is-Star!16952 (regTwo!34416 r1!6342))) b!6934528))

(assert (= (and b!6933877 (is-Union!16952 (regTwo!34416 r1!6342))) b!6934529))

(declare-fun b!6934530 () Bool)

(declare-fun e!4172252 () Bool)

(assert (=> b!6934530 (= e!4172252 tp_is_empty!43129)))

(assert (=> b!6933867 (= tp!1911496 e!4172252)))

(declare-fun b!6934532 () Bool)

(declare-fun tp!1911605 () Bool)

(assert (=> b!6934532 (= e!4172252 tp!1911605)))

(declare-fun b!6934533 () Bool)

(declare-fun tp!1911604 () Bool)

(declare-fun tp!1911607 () Bool)

(assert (=> b!6934533 (= e!4172252 (and tp!1911604 tp!1911607))))

(declare-fun b!6934531 () Bool)

(declare-fun tp!1911606 () Bool)

(declare-fun tp!1911608 () Bool)

(assert (=> b!6934531 (= e!4172252 (and tp!1911606 tp!1911608))))

(assert (= (and b!6933867 (is-ElementMatch!16952 (regOne!34417 r3!135))) b!6934530))

(assert (= (and b!6933867 (is-Concat!25797 (regOne!34417 r3!135))) b!6934531))

(assert (= (and b!6933867 (is-Star!16952 (regOne!34417 r3!135))) b!6934532))

(assert (= (and b!6933867 (is-Union!16952 (regOne!34417 r3!135))) b!6934533))

(declare-fun b!6934534 () Bool)

(declare-fun e!4172253 () Bool)

(assert (=> b!6934534 (= e!4172253 tp_is_empty!43129)))

(assert (=> b!6933867 (= tp!1911492 e!4172253)))

(declare-fun b!6934536 () Bool)

(declare-fun tp!1911610 () Bool)

(assert (=> b!6934536 (= e!4172253 tp!1911610)))

(declare-fun b!6934537 () Bool)

(declare-fun tp!1911609 () Bool)

(declare-fun tp!1911612 () Bool)

(assert (=> b!6934537 (= e!4172253 (and tp!1911609 tp!1911612))))

(declare-fun b!6934535 () Bool)

(declare-fun tp!1911611 () Bool)

(declare-fun tp!1911613 () Bool)

(assert (=> b!6934535 (= e!4172253 (and tp!1911611 tp!1911613))))

(assert (= (and b!6933867 (is-ElementMatch!16952 (regTwo!34417 r3!135))) b!6934534))

(assert (= (and b!6933867 (is-Concat!25797 (regTwo!34417 r3!135))) b!6934535))

(assert (= (and b!6933867 (is-Star!16952 (regTwo!34417 r3!135))) b!6934536))

(assert (= (and b!6933867 (is-Union!16952 (regTwo!34417 r3!135))) b!6934537))

(declare-fun b!6934538 () Bool)

(declare-fun e!4172254 () Bool)

(assert (=> b!6934538 (= e!4172254 tp_is_empty!43129)))

(assert (=> b!6933881 (= tp!1911505 e!4172254)))

(declare-fun b!6934540 () Bool)

(declare-fun tp!1911615 () Bool)

(assert (=> b!6934540 (= e!4172254 tp!1911615)))

(declare-fun b!6934541 () Bool)

(declare-fun tp!1911614 () Bool)

(declare-fun tp!1911617 () Bool)

(assert (=> b!6934541 (= e!4172254 (and tp!1911614 tp!1911617))))

(declare-fun b!6934539 () Bool)

(declare-fun tp!1911616 () Bool)

(declare-fun tp!1911618 () Bool)

(assert (=> b!6934539 (= e!4172254 (and tp!1911616 tp!1911618))))

(assert (= (and b!6933881 (is-ElementMatch!16952 (regOne!34416 r2!6280))) b!6934538))

(assert (= (and b!6933881 (is-Concat!25797 (regOne!34416 r2!6280))) b!6934539))

(assert (= (and b!6933881 (is-Star!16952 (regOne!34416 r2!6280))) b!6934540))

(assert (= (and b!6933881 (is-Union!16952 (regOne!34416 r2!6280))) b!6934541))

(declare-fun b!6934542 () Bool)

(declare-fun e!4172255 () Bool)

(assert (=> b!6934542 (= e!4172255 tp_is_empty!43129)))

(assert (=> b!6933881 (= tp!1911504 e!4172255)))

(declare-fun b!6934544 () Bool)

(declare-fun tp!1911620 () Bool)

(assert (=> b!6934544 (= e!4172255 tp!1911620)))

(declare-fun b!6934545 () Bool)

(declare-fun tp!1911619 () Bool)

(declare-fun tp!1911622 () Bool)

(assert (=> b!6934545 (= e!4172255 (and tp!1911619 tp!1911622))))

(declare-fun b!6934543 () Bool)

(declare-fun tp!1911621 () Bool)

(declare-fun tp!1911623 () Bool)

(assert (=> b!6934543 (= e!4172255 (and tp!1911621 tp!1911623))))

(assert (= (and b!6933881 (is-ElementMatch!16952 (regTwo!34416 r2!6280))) b!6934542))

(assert (= (and b!6933881 (is-Concat!25797 (regTwo!34416 r2!6280))) b!6934543))

(assert (= (and b!6933881 (is-Star!16952 (regTwo!34416 r2!6280))) b!6934544))

(assert (= (and b!6933881 (is-Union!16952 (regTwo!34416 r2!6280))) b!6934545))

(declare-fun b!6934546 () Bool)

(declare-fun e!4172256 () Bool)

(assert (=> b!6934546 (= e!4172256 tp_is_empty!43129)))

(assert (=> b!6933864 (= tp!1911499 e!4172256)))

(declare-fun b!6934548 () Bool)

(declare-fun tp!1911625 () Bool)

(assert (=> b!6934548 (= e!4172256 tp!1911625)))

(declare-fun b!6934549 () Bool)

(declare-fun tp!1911624 () Bool)

(declare-fun tp!1911627 () Bool)

(assert (=> b!6934549 (= e!4172256 (and tp!1911624 tp!1911627))))

(declare-fun b!6934547 () Bool)

(declare-fun tp!1911626 () Bool)

(declare-fun tp!1911628 () Bool)

(assert (=> b!6934547 (= e!4172256 (and tp!1911626 tp!1911628))))

(assert (= (and b!6933864 (is-ElementMatch!16952 (reg!17281 r2!6280))) b!6934546))

(assert (= (and b!6933864 (is-Concat!25797 (reg!17281 r2!6280))) b!6934547))

(assert (= (and b!6933864 (is-Star!16952 (reg!17281 r2!6280))) b!6934548))

(assert (= (and b!6933864 (is-Union!16952 (reg!17281 r2!6280))) b!6934549))

(declare-fun b!6934550 () Bool)

(declare-fun e!4172257 () Bool)

(assert (=> b!6934550 (= e!4172257 tp_is_empty!43129)))

(assert (=> b!6933880 (= tp!1911497 e!4172257)))

(declare-fun b!6934552 () Bool)

(declare-fun tp!1911630 () Bool)

(assert (=> b!6934552 (= e!4172257 tp!1911630)))

(declare-fun b!6934553 () Bool)

(declare-fun tp!1911629 () Bool)

(declare-fun tp!1911632 () Bool)

(assert (=> b!6934553 (= e!4172257 (and tp!1911629 tp!1911632))))

(declare-fun b!6934551 () Bool)

(declare-fun tp!1911631 () Bool)

(declare-fun tp!1911633 () Bool)

(assert (=> b!6934551 (= e!4172257 (and tp!1911631 tp!1911633))))

(assert (= (and b!6933880 (is-ElementMatch!16952 (regOne!34417 r2!6280))) b!6934550))

(assert (= (and b!6933880 (is-Concat!25797 (regOne!34417 r2!6280))) b!6934551))

(assert (= (and b!6933880 (is-Star!16952 (regOne!34417 r2!6280))) b!6934552))

(assert (= (and b!6933880 (is-Union!16952 (regOne!34417 r2!6280))) b!6934553))

(declare-fun b!6934567 () Bool)

(declare-fun e!4172265 () Bool)

(assert (=> b!6934567 (= e!4172265 tp_is_empty!43129)))

(assert (=> b!6933880 (= tp!1911502 e!4172265)))

(declare-fun b!6934570 () Bool)

(declare-fun tp!1911635 () Bool)

(assert (=> b!6934570 (= e!4172265 tp!1911635)))

(declare-fun b!6934571 () Bool)

(declare-fun tp!1911634 () Bool)

(declare-fun tp!1911637 () Bool)

(assert (=> b!6934571 (= e!4172265 (and tp!1911634 tp!1911637))))

(declare-fun b!6934569 () Bool)

(declare-fun tp!1911636 () Bool)

(declare-fun tp!1911638 () Bool)

(assert (=> b!6934569 (= e!4172265 (and tp!1911636 tp!1911638))))

(assert (= (and b!6933880 (is-ElementMatch!16952 (regTwo!34417 r2!6280))) b!6934567))

(assert (= (and b!6933880 (is-Concat!25797 (regTwo!34417 r2!6280))) b!6934569))

(assert (= (and b!6933880 (is-Star!16952 (regTwo!34417 r2!6280))) b!6934570))

(assert (= (and b!6933880 (is-Union!16952 (regTwo!34417 r2!6280))) b!6934571))

(declare-fun b!6934572 () Bool)

(declare-fun e!4172266 () Bool)

(assert (=> b!6934572 (= e!4172266 tp_is_empty!43129)))

(assert (=> b!6933875 (= tp!1911501 e!4172266)))

(declare-fun b!6934574 () Bool)

(declare-fun tp!1911640 () Bool)

(assert (=> b!6934574 (= e!4172266 tp!1911640)))

(declare-fun b!6934575 () Bool)

(declare-fun tp!1911639 () Bool)

(declare-fun tp!1911642 () Bool)

(assert (=> b!6934575 (= e!4172266 (and tp!1911639 tp!1911642))))

(declare-fun b!6934573 () Bool)

(declare-fun tp!1911641 () Bool)

(declare-fun tp!1911643 () Bool)

(assert (=> b!6934573 (= e!4172266 (and tp!1911641 tp!1911643))))

(assert (= (and b!6933875 (is-ElementMatch!16952 (reg!17281 r1!6342))) b!6934572))

(assert (= (and b!6933875 (is-Concat!25797 (reg!17281 r1!6342))) b!6934573))

(assert (= (and b!6933875 (is-Star!16952 (reg!17281 r1!6342))) b!6934574))

(assert (= (and b!6933875 (is-Union!16952 (reg!17281 r1!6342))) b!6934575))

(push 1)

(assert (not bm!630049))

(assert (not b!6934268))

(assert (not d!2166462))

(assert (not d!2166514))

(assert (not b!6934468))

(assert (not d!2166554))

(assert (not d!2166550))

(assert (not b!6934435))

(assert (not b!6934503))

(assert (not d!2166556))

(assert (not b!6934525))

(assert (not bm!630040))

(assert (not d!2166546))

(assert (not b!6934529))

(assert (not d!2166508))

(assert (not b!6934347))

(assert (not b!6934409))

(assert (not b!6934261))

(assert (not bm!630062))

(assert (not b!6934222))

(assert (not b!6934541))

(assert (not b!6934406))

(assert (not b!6934315))

(assert (not b!6934180))

(assert (not b!6934117))

(assert (not b!6934217))

(assert (not b!6934536))

(assert (not b!6934390))

(assert (not b!6934277))

(assert (not bm!630058))

(assert (not b!6934110))

(assert (not b!6934575))

(assert (not b!6934111))

(assert (not b!6934552))

(assert (not b!6934324))

(assert (not d!2166516))

(assert (not b!6934215))

(assert (not b!6934285))

(assert (not b!6934498))

(assert (not b!6934527))

(assert (not d!2166566))

(assert (not bm!630066))

(assert (not b!6934521))

(assert (not b!6934369))

(assert (not b!6934524))

(assert (not b!6934377))

(assert (not bm!630059))

(assert (not b!6934353))

(assert (not b!6934531))

(assert (not b!6934258))

(assert (not d!2166548))

(assert (not bm!630075))

(assert (not b!6934321))

(assert (not b!6934569))

(assert (not bm!630063))

(assert (not d!2166574))

(assert (not b!6934362))

(assert (not b!6934271))

(assert (not b!6934034))

(assert (not b!6934300))

(assert (not bm!630041))

(assert (not d!2166530))

(assert (not b!6934313))

(assert (not b!6934367))

(assert (not b!6934292))

(assert (not b!6934393))

(assert (not b!6934533))

(assert (not d!2166480))

(assert (not b!6934350))

(assert (not b!6934481))

(assert (not b!6934394))

(assert (not b!6934056))

(assert (not b!6934528))

(assert (not b!6934510))

(assert (not b!6934515))

(assert (not b!6934246))

(assert (not b!6934504))

(assert (not d!2166564))

(assert (not b!6934420))

(assert (not d!2166534))

(assert (not d!2166496))

(assert (not b!6934408))

(assert (not b!6934428))

(assert (not b!6934359))

(assert (not b!6934512))

(assert (not b!6934250))

(assert (not b!6934236))

(assert (not b!6934223))

(assert (not d!2166470))

(assert (not b!6934262))

(assert (not b!6934265))

(assert (not b!6934356))

(assert (not b!6934345))

(assert (not b!6934553))

(assert (not b!6934544))

(assert (not bm!630068))

(assert (not b!6934570))

(assert (not bm!630080))

(assert (not b!6934311))

(assert (not d!2166504))

(assert (not b!6934551))

(assert (not b!6934318))

(assert (not b!6934043))

(assert (not b!6934573))

(assert (not b!6934032))

(assert (not b!6934502))

(assert (not b!6934516))

(assert (not b!6934346))

(assert (not d!2166488))

(assert (not b!6934260))

(assert (not b!6934114))

(assert (not b!6934314))

(assert (not d!2166524))

(assert (not bm!630064))

(assert (not b!6934548))

(assert (not d!2166528))

(assert (not d!2166526))

(assert (not b!6934467))

(assert (not bm!630073))

(assert (not bm!630070))

(assert (not d!2166490))

(assert (not b!6934120))

(assert (not b!6934237))

(assert (not b!6934413))

(assert (not d!2166542))

(assert (not b!6934547))

(assert (not bm!630071))

(assert (not bm!630077))

(assert (not bm!630035))

(assert (not b!6934543))

(assert (not d!2166460))

(assert (not d!2166484))

(assert (not b!6934243))

(assert (not b!6934436))

(assert (not b!6934539))

(assert (not b!6934400))

(assert (not b!6934397))

(assert (not b!6934284))

(assert (not b!6934571))

(assert (not bm!630051))

(assert (not d!2166506))

(assert (not bm!630074))

(assert (not b!6934037))

(assert (not b!6934225))

(assert (not b!6934499))

(assert (not d!2166466))

(assert (not b!6934218))

(assert (not b!6934508))

(assert (not d!2166512))

(assert (not b!6934549))

(assert (not bm!630067))

(assert (not b!6934235))

(assert (not b!6934033))

(assert (not b!6934389))

(assert (not bm!630082))

(assert (not b!6934500))

(assert (not d!2166560))

(assert (not b!6934361))

(assert (not b!6934109))

(assert (not b!6934414))

(assert (not b!6934514))

(assert (not d!2166536))

(assert (not b!6934233))

(assert tp_is_empty!43129)

(assert (not d!2166576))

(assert (not b!6934535))

(assert (not b!6934303))

(assert (not b!6934469))

(assert (not b!6934099))

(assert (not bm!630076))

(assert (not bm!630042))

(assert (not b!6934511))

(assert (not d!2166468))

(assert (not bm!630060))

(assert (not d!2166562))

(assert (not b!6934220))

(assert (not b!6934364))

(assert (not b!6934574))

(assert (not b!6934366))

(assert (not b!6934288))

(assert (not b!6934506))

(assert (not b!6934545))

(assert (not d!2166544))

(assert (not b!6934392))

(assert (not d!2166522))

(assert (not b!6934523))

(assert (not b!6934289))

(assert (not bm!630069))

(assert (not b!6934040))

(assert (not b!6934411))

(assert (not b!6934537))

(assert (not b!6934107))

(assert (not b!6934507))

(assert (not b!6934532))

(assert (not b!6934403))

(assert (not bm!630072))

(assert (not bm!630061))

(assert (not d!2166482))

(assert (not b!6934540))

(assert (not d!2166552))

(assert (not b!6934055))

(assert (not b!6934240))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

