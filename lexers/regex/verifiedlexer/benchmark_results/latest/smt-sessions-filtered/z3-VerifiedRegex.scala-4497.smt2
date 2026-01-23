; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239050 () Bool)

(assert start!239050)

(declare-fun b!2445923 () Bool)

(assert (=> b!2445923 true))

(assert (=> b!2445923 true))

(declare-fun lambda!92633 () Int)

(declare-fun lambda!92632 () Int)

(assert (=> b!2445923 (not (= lambda!92633 lambda!92632))))

(assert (=> b!2445923 true))

(assert (=> b!2445923 true))

(declare-datatypes ((C!14532 0))(
  ( (C!14533 (val!8508 Int)) )
))
(declare-datatypes ((List!28610 0))(
  ( (Nil!28512) (Cons!28512 (h!33913 C!14532) (t!208587 List!28610)) )
))
(declare-fun s!9460 () List!28610)

(declare-datatypes ((Regex!7187 0))(
  ( (ElementMatch!7187 (c!390313 C!14532)) (Concat!11823 (regOne!14886 Regex!7187) (regTwo!14886 Regex!7187)) (EmptyExpr!7187) (Star!7187 (reg!7516 Regex!7187)) (EmptyLang!7187) (Union!7187 (regOne!14887 Regex!7187) (regTwo!14887 Regex!7187)) )
))
(declare-fun call!150012 () Regex!7187)

(declare-fun c!390309 () Bool)

(declare-datatypes ((tuple2!28130 0))(
  ( (tuple2!28131 (_1!16606 List!28610) (_2!16606 List!28610)) )
))
(declare-datatypes ((Option!5676 0))(
  ( (None!5675) (Some!5675 (v!31083 tuple2!28130)) )
))
(declare-fun call!150016 () Option!5676)

(declare-fun lt!879074 () Regex!7187)

(declare-fun bm!150005 () Bool)

(declare-fun call!150013 () Regex!7187)

(declare-fun findConcatSeparation!784 (Regex!7187 Regex!7187 List!28610 List!28610 List!28610) Option!5676)

(assert (=> bm!150005 (= call!150016 (findConcatSeparation!784 (ite c!390309 lt!879074 call!150013) (ite c!390309 EmptyExpr!7187 call!150012) Nil!28512 s!9460 s!9460))))

(declare-fun b!2445913 () Bool)

(declare-fun e!1553293 () Bool)

(declare-fun e!1553292 () Bool)

(assert (=> b!2445913 (= e!1553293 (not e!1553292))))

(declare-fun res!1037983 () Bool)

(assert (=> b!2445913 (=> res!1037983 e!1553292)))

(declare-fun r!13927 () Regex!7187)

(get-info :version)

(assert (=> b!2445913 (= res!1037983 (not ((_ is Concat!11823) r!13927)))))

(declare-fun lt!879069 () Bool)

(declare-fun lt!879072 () Bool)

(assert (=> b!2445913 (= lt!879069 lt!879072)))

(declare-fun matchRSpec!1034 (Regex!7187 List!28610) Bool)

(assert (=> b!2445913 (= lt!879072 (matchRSpec!1034 r!13927 s!9460))))

(declare-fun matchR!3302 (Regex!7187 List!28610) Bool)

(assert (=> b!2445913 (= lt!879069 (matchR!3302 r!13927 s!9460))))

(declare-datatypes ((Unit!41780 0))(
  ( (Unit!41781) )
))
(declare-fun lt!879077 () Unit!41780)

(declare-fun mainMatchTheorem!1034 (Regex!7187 List!28610) Unit!41780)

(assert (=> b!2445913 (= lt!879077 (mainMatchTheorem!1034 r!13927 s!9460))))

(declare-fun b!2445914 () Bool)

(declare-fun e!1553297 () Bool)

(declare-fun call!150020 () Bool)

(assert (=> b!2445914 (= e!1553297 (not call!150020))))

(declare-fun b!2445915 () Bool)

(declare-fun e!1553288 () Unit!41780)

(declare-fun Unit!41782 () Unit!41780)

(assert (=> b!2445915 (= e!1553288 Unit!41782)))

(declare-fun lt!879068 () Unit!41780)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!118 (Regex!7187 Regex!7187 List!28610 List!28610) Unit!41780)

(assert (=> b!2445915 (= lt!879068 (lemmaTwoRegexMatchThenConcatMatchesConcatString!118 lt!879074 EmptyExpr!7187 s!9460 Nil!28512))))

(declare-fun lt!879073 () Regex!7187)

(assert (=> b!2445915 (= lt!879073 (Concat!11823 lt!879074 EmptyExpr!7187))))

(declare-fun res!1037986 () Bool)

(declare-fun call!150011 () List!28610)

(assert (=> b!2445915 (= res!1037986 (matchR!3302 lt!879073 call!150011))))

(declare-fun e!1553287 () Bool)

(assert (=> b!2445915 (=> (not res!1037986) (not e!1553287))))

(assert (=> b!2445915 e!1553287))

(declare-fun lt!879071 () Unit!41780)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!86 (Regex!7187 Regex!7187 List!28610) Unit!41780)

(assert (=> b!2445915 (= lt!879071 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!86 lt!879074 EmptyExpr!7187 s!9460))))

(declare-fun res!1037985 () Bool)

(declare-fun call!150014 () Bool)

(assert (=> b!2445915 (= res!1037985 call!150014)))

(declare-fun e!1553289 () Bool)

(assert (=> b!2445915 (=> (not res!1037985) (not e!1553289))))

(assert (=> b!2445915 e!1553289))

(declare-fun call!150017 () Regex!7187)

(declare-fun bm!150006 () Bool)

(declare-fun call!150018 () Option!5676)

(assert (=> bm!150006 (= call!150018 (findConcatSeparation!784 lt!879074 call!150017 Nil!28512 s!9460 s!9460))))

(declare-fun b!2445916 () Bool)

(declare-fun e!1553298 () Unit!41780)

(declare-fun Unit!41783 () Unit!41780)

(assert (=> b!2445916 (= e!1553298 Unit!41783)))

(assert (=> b!2445916 false))

(declare-fun b!2445917 () Bool)

(declare-fun Unit!41784 () Unit!41780)

(assert (=> b!2445917 (= e!1553288 Unit!41784)))

(declare-fun lt!879061 () Option!5676)

(declare-fun call!150015 () Option!5676)

(assert (=> b!2445917 (= lt!879061 call!150015)))

(declare-fun lt!879070 () Bool)

(assert (=> b!2445917 (= lt!879070 call!150014)))

(declare-fun c!390311 () Bool)

(assert (=> b!2445917 (= c!390311 lt!879070)))

(declare-fun lt!879062 () Unit!41780)

(declare-fun e!1553291 () Unit!41780)

(assert (=> b!2445917 (= lt!879062 e!1553291)))

(declare-fun res!1037988 () Bool)

(assert (=> b!2445917 (= res!1037988 (not lt!879070))))

(assert (=> b!2445917 (=> (not res!1037988) (not e!1553297))))

(assert (=> b!2445917 e!1553297))

(declare-fun b!2445918 () Bool)

(declare-fun Unit!41785 () Unit!41780)

(assert (=> b!2445918 (= e!1553291 Unit!41785)))

(declare-fun b!2445919 () Bool)

(declare-fun e!1553290 () Bool)

(declare-fun tp!777045 () Bool)

(declare-fun tp!777044 () Bool)

(assert (=> b!2445919 (= e!1553290 (and tp!777045 tp!777044))))

(declare-fun b!2445920 () Bool)

(declare-fun call!150019 () Bool)

(assert (=> b!2445920 (= e!1553287 call!150019)))

(declare-fun b!2445921 () Bool)

(declare-fun tp_is_empty!11787 () Bool)

(assert (=> b!2445921 (= e!1553290 tp_is_empty!11787)))

(declare-fun res!1037990 () Bool)

(assert (=> start!239050 (=> (not res!1037990) (not e!1553293))))

(declare-datatypes ((List!28611 0))(
  ( (Nil!28513) (Cons!28513 (h!33914 Regex!7187) (t!208588 List!28611)) )
))
(declare-fun l!9164 () List!28611)

(declare-fun lambda!92631 () Int)

(declare-fun forall!5821 (List!28611 Int) Bool)

(assert (=> start!239050 (= res!1037990 (forall!5821 l!9164 lambda!92631))))

(assert (=> start!239050 e!1553293))

(declare-fun e!1553294 () Bool)

(assert (=> start!239050 e!1553294))

(assert (=> start!239050 e!1553290))

(declare-fun e!1553295 () Bool)

(assert (=> start!239050 e!1553295))

(declare-fun b!2445922 () Bool)

(declare-fun tp!777047 () Bool)

(declare-fun tp!777042 () Bool)

(assert (=> b!2445922 (= e!1553290 (and tp!777047 tp!777042))))

(declare-fun e!1553286 () Bool)

(assert (=> b!2445923 (= e!1553292 e!1553286)))

(declare-fun res!1037987 () Bool)

(assert (=> b!2445923 (=> res!1037987 e!1553286)))

(declare-fun lt!879067 () Bool)

(assert (=> b!2445923 (= res!1037987 (not (= lt!879072 lt!879067)))))

(declare-fun Exists!1223 (Int) Bool)

(assert (=> b!2445923 (= (Exists!1223 lambda!92632) (Exists!1223 lambda!92633))))

(declare-fun lt!879076 () Unit!41780)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!468 (Regex!7187 Regex!7187 List!28610) Unit!41780)

(assert (=> b!2445923 (= lt!879076 (lemmaExistCutMatchRandMatchRSpecEquivalent!468 (regOne!14886 r!13927) (regTwo!14886 r!13927) s!9460))))

(assert (=> b!2445923 (= lt!879067 (Exists!1223 lambda!92632))))

(declare-fun isDefined!4502 (Option!5676) Bool)

(assert (=> b!2445923 (= lt!879067 (isDefined!4502 (findConcatSeparation!784 (regOne!14886 r!13927) (regTwo!14886 r!13927) Nil!28512 s!9460 s!9460)))))

(declare-fun lt!879066 () Unit!41780)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!722 (Regex!7187 Regex!7187 List!28610) Unit!41780)

(assert (=> b!2445923 (= lt!879066 (lemmaFindConcatSeparationEquivalentToExists!722 (regOne!14886 r!13927) (regTwo!14886 r!13927) s!9460))))

(declare-fun b!2445924 () Bool)

(assert (=> b!2445924 (= e!1553289 call!150020)))

(declare-fun bm!150007 () Bool)

(assert (=> bm!150007 (= call!150015 call!150016)))

(declare-fun bm!150008 () Bool)

(assert (=> bm!150008 (= call!150020 (isDefined!4502 call!150018))))

(declare-fun bm!150009 () Bool)

(declare-fun call!150010 () Bool)

(assert (=> bm!150009 (= call!150014 call!150010)))

(declare-fun b!2445925 () Bool)

(assert (=> b!2445925 (= lt!879069 call!150010)))

(declare-fun e!1553285 () Unit!41780)

(declare-fun Unit!41786 () Unit!41780)

(assert (=> b!2445925 (= e!1553285 Unit!41786)))

(declare-fun bm!150010 () Bool)

(declare-fun lt!879063 () List!28611)

(declare-fun generalisedConcat!288 (List!28611) Regex!7187)

(assert (=> bm!150010 (= call!150012 (generalisedConcat!288 lt!879063))))

(declare-fun b!2445926 () Bool)

(assert (=> b!2445926 (= lt!879069 (isDefined!4502 (findConcatSeparation!784 lt!879074 call!150012 Nil!28512 s!9460 s!9460)))))

(declare-fun lt!879075 () Unit!41780)

(assert (=> b!2445926 (= lt!879075 e!1553288)))

(declare-fun c!390312 () Bool)

(assert (=> b!2445926 (= c!390312 (matchR!3302 lt!879074 s!9460))))

(assert (=> b!2445926 (= lt!879074 call!150013)))

(declare-fun Unit!41787 () Unit!41780)

(assert (=> b!2445926 (= e!1553285 Unit!41787)))

(declare-fun b!2445927 () Bool)

(declare-fun tp!777043 () Bool)

(declare-fun tp!777046 () Bool)

(assert (=> b!2445927 (= e!1553294 (and tp!777043 tp!777046))))

(declare-fun b!2445928 () Bool)

(declare-fun e!1553296 () Bool)

(assert (=> b!2445928 e!1553296))

(declare-fun res!1037984 () Bool)

(assert (=> b!2445928 (=> (not res!1037984) (not e!1553296))))

(assert (=> b!2445928 (= res!1037984 call!150019)))

(declare-fun lt!879078 () tuple2!28130)

(declare-fun lt!879065 () Unit!41780)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!90 (Regex!7187 Regex!7187 List!28610 List!28610 List!28610) Unit!41780)

(assert (=> b!2445928 (= lt!879065 (lemmaFindSeparationIsDefinedThenConcatMatches!90 lt!879074 EmptyExpr!7187 (_1!16606 lt!879078) (_2!16606 lt!879078) s!9460))))

(declare-fun get!8810 (Option!5676) tuple2!28130)

(assert (=> b!2445928 (= lt!879078 (get!8810 lt!879061))))

(declare-fun Unit!41788 () Unit!41780)

(assert (=> b!2445928 (= e!1553291 Unit!41788)))

(declare-fun bm!150011 () Bool)

(assert (=> bm!150011 (= call!150017 call!150012)))

(declare-fun bm!150012 () Bool)

(declare-fun head!5558 (List!28611) Regex!7187)

(assert (=> bm!150012 (= call!150013 (head!5558 l!9164))))

(declare-fun b!2445929 () Bool)

(declare-fun res!1037989 () Bool)

(assert (=> b!2445929 (=> (not res!1037989) (not e!1553293))))

(assert (=> b!2445929 (= res!1037989 (= r!13927 (generalisedConcat!288 l!9164)))))

(declare-fun bm!150013 () Bool)

(assert (=> bm!150013 (= call!150010 (isDefined!4502 (ite c!390309 (ite c!390312 call!150015 lt!879061) call!150016)))))

(declare-fun b!2445930 () Bool)

(assert (=> b!2445930 (= e!1553296 false)))

(declare-fun b!2445931 () Bool)

(declare-fun tp!777040 () Bool)

(assert (=> b!2445931 (= e!1553290 tp!777040)))

(declare-fun b!2445932 () Bool)

(assert (=> b!2445932 (= e!1553298 e!1553285)))

(declare-fun tail!3831 (List!28611) List!28611)

(assert (=> b!2445932 (= lt!879063 (tail!3831 l!9164))))

(declare-fun isEmpty!16553 (List!28611) Bool)

(assert (=> b!2445932 (= c!390309 (isEmpty!16553 lt!879063))))

(declare-fun bm!150014 () Bool)

(assert (=> bm!150014 (= call!150019 (matchR!3302 (ite c!390312 lt!879073 (Concat!11823 lt!879074 EmptyExpr!7187)) (ite c!390312 s!9460 call!150011)))))

(declare-fun b!2445933 () Bool)

(assert (=> b!2445933 (= e!1553286 true)))

(declare-fun lt!879064 () Unit!41780)

(assert (=> b!2445933 (= lt!879064 e!1553298)))

(declare-fun c!390310 () Bool)

(assert (=> b!2445933 (= c!390310 (isEmpty!16553 l!9164))))

(declare-fun b!2445934 () Bool)

(declare-fun tp!777041 () Bool)

(assert (=> b!2445934 (= e!1553295 (and tp_is_empty!11787 tp!777041))))

(declare-fun bm!150015 () Bool)

(declare-fun ++!7090 (List!28610 List!28610) List!28610)

(assert (=> bm!150015 (= call!150011 (++!7090 (ite c!390312 s!9460 (_1!16606 lt!879078)) (ite c!390312 Nil!28512 (_2!16606 lt!879078))))))

(assert (= (and start!239050 res!1037990) b!2445929))

(assert (= (and b!2445929 res!1037989) b!2445913))

(assert (= (and b!2445913 (not res!1037983)) b!2445923))

(assert (= (and b!2445923 (not res!1037987)) b!2445933))

(assert (= (and b!2445933 c!390310) b!2445916))

(assert (= (and b!2445933 (not c!390310)) b!2445932))

(assert (= (and b!2445932 c!390309) b!2445926))

(assert (= (and b!2445932 (not c!390309)) b!2445925))

(assert (= (and b!2445926 c!390312) b!2445915))

(assert (= (and b!2445926 (not c!390312)) b!2445917))

(assert (= (and b!2445915 res!1037986) b!2445920))

(assert (= (and b!2445915 res!1037985) b!2445924))

(assert (= (and b!2445917 c!390311) b!2445928))

(assert (= (and b!2445917 (not c!390311)) b!2445918))

(assert (= (and b!2445928 res!1037984) b!2445930))

(assert (= (and b!2445917 res!1037988) b!2445914))

(assert (= (or b!2445915 b!2445917) bm!150007))

(assert (= (or b!2445915 b!2445928) bm!150015))

(assert (= (or b!2445924 b!2445914) bm!150011))

(assert (= (or b!2445915 b!2445917) bm!150009))

(assert (= (or b!2445920 b!2445928) bm!150014))

(assert (= (or b!2445924 b!2445914) bm!150006))

(assert (= (or b!2445924 b!2445914) bm!150008))

(assert (= (or b!2445926 b!2445925) bm!150012))

(assert (= (or b!2445926 bm!150011 b!2445925) bm!150010))

(assert (= (or bm!150007 b!2445925) bm!150005))

(assert (= (or bm!150009 b!2445925) bm!150013))

(assert (= (and start!239050 ((_ is Cons!28513) l!9164)) b!2445927))

(assert (= (and start!239050 ((_ is ElementMatch!7187) r!13927)) b!2445921))

(assert (= (and start!239050 ((_ is Concat!11823) r!13927)) b!2445922))

(assert (= (and start!239050 ((_ is Star!7187) r!13927)) b!2445931))

(assert (= (and start!239050 ((_ is Union!7187) r!13927)) b!2445919))

(assert (= (and start!239050 ((_ is Cons!28512) s!9460)) b!2445934))

(declare-fun m!2821949 () Bool)

(assert (=> b!2445926 m!2821949))

(assert (=> b!2445926 m!2821949))

(declare-fun m!2821951 () Bool)

(assert (=> b!2445926 m!2821951))

(declare-fun m!2821953 () Bool)

(assert (=> b!2445926 m!2821953))

(declare-fun m!2821955 () Bool)

(assert (=> b!2445913 m!2821955))

(declare-fun m!2821957 () Bool)

(assert (=> b!2445913 m!2821957))

(declare-fun m!2821959 () Bool)

(assert (=> b!2445913 m!2821959))

(declare-fun m!2821961 () Bool)

(assert (=> b!2445932 m!2821961))

(declare-fun m!2821963 () Bool)

(assert (=> b!2445932 m!2821963))

(declare-fun m!2821965 () Bool)

(assert (=> start!239050 m!2821965))

(declare-fun m!2821967 () Bool)

(assert (=> b!2445923 m!2821967))

(declare-fun m!2821969 () Bool)

(assert (=> b!2445923 m!2821969))

(assert (=> b!2445923 m!2821967))

(declare-fun m!2821971 () Bool)

(assert (=> b!2445923 m!2821971))

(declare-fun m!2821973 () Bool)

(assert (=> b!2445923 m!2821973))

(assert (=> b!2445923 m!2821973))

(declare-fun m!2821975 () Bool)

(assert (=> b!2445923 m!2821975))

(declare-fun m!2821977 () Bool)

(assert (=> b!2445923 m!2821977))

(declare-fun m!2821979 () Bool)

(assert (=> bm!150006 m!2821979))

(declare-fun m!2821981 () Bool)

(assert (=> bm!150015 m!2821981))

(declare-fun m!2821983 () Bool)

(assert (=> bm!150012 m!2821983))

(declare-fun m!2821985 () Bool)

(assert (=> bm!150010 m!2821985))

(declare-fun m!2821987 () Bool)

(assert (=> bm!150014 m!2821987))

(declare-fun m!2821989 () Bool)

(assert (=> bm!150005 m!2821989))

(declare-fun m!2821991 () Bool)

(assert (=> b!2445933 m!2821991))

(declare-fun m!2821993 () Bool)

(assert (=> bm!150008 m!2821993))

(declare-fun m!2821995 () Bool)

(assert (=> bm!150013 m!2821995))

(declare-fun m!2821997 () Bool)

(assert (=> b!2445915 m!2821997))

(declare-fun m!2821999 () Bool)

(assert (=> b!2445915 m!2821999))

(declare-fun m!2822001 () Bool)

(assert (=> b!2445915 m!2822001))

(declare-fun m!2822003 () Bool)

(assert (=> b!2445929 m!2822003))

(declare-fun m!2822005 () Bool)

(assert (=> b!2445928 m!2822005))

(declare-fun m!2822007 () Bool)

(assert (=> b!2445928 m!2822007))

(check-sat (not bm!150008) (not b!2445923) (not bm!150014) (not b!2445928) (not b!2445934) (not bm!150015) (not b!2445913) (not b!2445931) (not bm!150012) (not b!2445926) (not b!2445929) (not b!2445927) (not bm!150013) (not start!239050) (not bm!150006) (not bm!150010) (not b!2445933) (not b!2445932) tp_is_empty!11787 (not b!2445919) (not bm!150005) (not b!2445922) (not b!2445915))
(check-sat)
