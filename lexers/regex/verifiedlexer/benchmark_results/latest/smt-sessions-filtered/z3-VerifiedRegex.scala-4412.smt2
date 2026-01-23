; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!234904 () Bool)

(assert start!234904)

(declare-fun b!2393977 () Bool)

(assert (=> b!2393977 true))

(assert (=> b!2393977 true))

(declare-fun lambda!89779 () Int)

(declare-fun lambda!89778 () Int)

(assert (=> b!2393977 (not (= lambda!89779 lambda!89778))))

(assert (=> b!2393977 true))

(assert (=> b!2393977 true))

(declare-fun e!1525787 () Bool)

(declare-fun e!1525802 () Bool)

(assert (=> b!2393977 (= e!1525787 e!1525802)))

(declare-fun res!1017115 () Bool)

(assert (=> b!2393977 (=> res!1017115 e!1525802)))

(declare-fun lt!871215 () Bool)

(declare-fun lt!871220 () Bool)

(assert (=> b!2393977 (= res!1017115 (not (= lt!871215 lt!871220)))))

(declare-fun Exists!1079 (Int) Bool)

(assert (=> b!2393977 (= (Exists!1079 lambda!89778) (Exists!1079 lambda!89779))))

(declare-datatypes ((Unit!41228 0))(
  ( (Unit!41229) )
))
(declare-fun lt!871217 () Unit!41228)

(declare-datatypes ((C!14192 0))(
  ( (C!14193 (val!8338 Int)) )
))
(declare-datatypes ((Regex!7017 0))(
  ( (ElementMatch!7017 (c!380905 C!14192)) (Concat!11653 (regOne!14546 Regex!7017) (regTwo!14546 Regex!7017)) (EmptyExpr!7017) (Star!7017 (reg!7346 Regex!7017)) (EmptyLang!7017) (Union!7017 (regOne!14547 Regex!7017) (regTwo!14547 Regex!7017)) )
))
(declare-fun r!13927 () Regex!7017)

(declare-datatypes ((List!28272 0))(
  ( (Nil!28174) (Cons!28174 (h!33575 C!14192) (t!208249 List!28272)) )
))
(declare-fun s!9460 () List!28272)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!418 (Regex!7017 Regex!7017 List!28272) Unit!41228)

(assert (=> b!2393977 (= lt!871217 (lemmaExistCutMatchRandMatchRSpecEquivalent!418 (regOne!14546 r!13927) (regTwo!14546 r!13927) s!9460))))

(assert (=> b!2393977 (= lt!871220 (Exists!1079 lambda!89778))))

(declare-datatypes ((tuple2!27898 0))(
  ( (tuple2!27899 (_1!16490 List!28272) (_2!16490 List!28272)) )
))
(declare-datatypes ((Option!5560 0))(
  ( (None!5559) (Some!5559 (v!30967 tuple2!27898)) )
))
(declare-fun isDefined!4388 (Option!5560) Bool)

(declare-fun findConcatSeparation!668 (Regex!7017 Regex!7017 List!28272 List!28272 List!28272) Option!5560)

(assert (=> b!2393977 (= lt!871220 (isDefined!4388 (findConcatSeparation!668 (regOne!14546 r!13927) (regTwo!14546 r!13927) Nil!28174 s!9460 s!9460)))))

(declare-fun lt!871222 () Unit!41228)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!668 (Regex!7017 Regex!7017 List!28272) Unit!41228)

(assert (=> b!2393977 (= lt!871222 (lemmaFindConcatSeparationEquivalentToExists!668 (regOne!14546 r!13927) (regTwo!14546 r!13927) s!9460))))

(declare-fun b!2393978 () Bool)

(declare-fun res!1017107 () Bool)

(declare-fun e!1525789 () Bool)

(assert (=> b!2393978 (=> (not res!1017107) (not e!1525789))))

(declare-datatypes ((List!28273 0))(
  ( (Nil!28175) (Cons!28175 (h!33576 Regex!7017) (t!208250 List!28273)) )
))
(declare-fun l!9164 () List!28273)

(declare-fun generalisedConcat!118 (List!28273) Regex!7017)

(assert (=> b!2393978 (= res!1017107 (= r!13927 (generalisedConcat!118 l!9164)))))

(declare-fun b!2393979 () Bool)

(declare-fun e!1525794 () Bool)

(assert (=> b!2393979 (= e!1525802 e!1525794)))

(declare-fun res!1017110 () Bool)

(assert (=> b!2393979 (=> res!1017110 e!1525794)))

(declare-fun e!1525800 () Bool)

(assert (=> b!2393979 (= res!1017110 e!1525800)))

(declare-fun c!380902 () Bool)

(get-info :version)

(assert (=> b!2393979 (= c!380902 ((_ is Cons!28175) l!9164))))

(declare-fun lt!871226 () Unit!41228)

(declare-fun e!1525798 () Unit!41228)

(assert (=> b!2393979 (= lt!871226 e!1525798)))

(declare-fun c!380903 () Bool)

(declare-fun isEmpty!16159 (List!28273) Bool)

(assert (=> b!2393979 (= c!380903 (isEmpty!16159 l!9164))))

(declare-fun b!2393980 () Bool)

(declare-fun e!1525790 () Bool)

(declare-fun tp!762674 () Bool)

(declare-fun tp!762672 () Bool)

(assert (=> b!2393980 (= e!1525790 (and tp!762674 tp!762672))))

(declare-fun b!2393981 () Bool)

(declare-fun e!1525796 () Bool)

(declare-fun tp_is_empty!11447 () Bool)

(declare-fun tp!762678 () Bool)

(assert (=> b!2393981 (= e!1525796 (and tp_is_empty!11447 tp!762678))))

(declare-fun b!2393982 () Bool)

(declare-fun e!1525797 () Unit!41228)

(declare-fun Unit!41230 () Unit!41228)

(assert (=> b!2393982 (= e!1525797 Unit!41230)))

(declare-fun b!2393983 () Bool)

(declare-fun e!1525792 () Unit!41228)

(assert (=> b!2393983 (= e!1525798 e!1525792)))

(declare-fun lt!871223 () List!28273)

(declare-fun tail!3535 (List!28273) List!28273)

(assert (=> b!2393983 (= lt!871223 (tail!3535 l!9164))))

(declare-fun c!380904 () Bool)

(assert (=> b!2393983 (= c!380904 (isEmpty!16159 lt!871223))))

(declare-fun b!2393984 () Bool)

(declare-fun res!1017108 () Bool)

(assert (=> b!2393984 (=> res!1017108 e!1525794)))

(assert (=> b!2393984 (= res!1017108 (not ((_ is Cons!28175) l!9164)))))

(declare-fun lt!871230 () Regex!7017)

(declare-fun lt!871218 () Regex!7017)

(declare-fun call!145953 () Bool)

(declare-fun c!380900 () Bool)

(declare-fun bm!145943 () Bool)

(declare-fun call!145956 () List!28272)

(declare-fun matchR!3134 (Regex!7017 List!28272) Bool)

(assert (=> bm!145943 (= call!145953 (matchR!3134 (ite c!380900 lt!871218 (Concat!11653 lt!871230 EmptyExpr!7017)) (ite c!380900 s!9460 call!145956)))))

(declare-fun b!2393985 () Bool)

(assert (=> b!2393985 (= e!1525790 tp_is_empty!11447)))

(declare-fun b!2393986 () Bool)

(declare-fun lt!871219 () Bool)

(declare-fun isEmpty!16160 (List!28272) Bool)

(assert (=> b!2393986 (= e!1525800 (not (= lt!871219 (isEmpty!16160 s!9460))))))

(declare-fun b!2393987 () Bool)

(declare-fun Unit!41231 () Unit!41228)

(assert (=> b!2393987 (= e!1525798 Unit!41231)))

(assert (=> b!2393987 false))

(declare-fun bm!145944 () Bool)

(declare-fun call!145952 () Option!5560)

(declare-fun call!145949 () Option!5560)

(assert (=> bm!145944 (= call!145952 call!145949)))

(declare-fun b!2393988 () Bool)

(declare-fun e!1525793 () Bool)

(assert (=> b!2393988 e!1525793))

(declare-fun res!1017112 () Bool)

(assert (=> b!2393988 (=> (not res!1017112) (not e!1525793))))

(assert (=> b!2393988 (= res!1017112 call!145953)))

(declare-fun lt!871227 () tuple2!27898)

(declare-fun lt!871228 () Unit!41228)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!36 (Regex!7017 Regex!7017 List!28272 List!28272 List!28272) Unit!41228)

(assert (=> b!2393988 (= lt!871228 (lemmaFindSeparationIsDefinedThenConcatMatches!36 lt!871230 EmptyExpr!7017 (_1!16490 lt!871227) (_2!16490 lt!871227) s!9460))))

(declare-fun lt!871232 () Option!5560)

(declare-fun get!8623 (Option!5560) tuple2!27898)

(assert (=> b!2393988 (= lt!871227 (get!8623 lt!871232))))

(declare-fun Unit!41232 () Unit!41228)

(assert (=> b!2393988 (= e!1525797 Unit!41232)))

(declare-fun call!145951 () Regex!7017)

(declare-fun bm!145945 () Bool)

(declare-fun call!145954 () Regex!7017)

(declare-fun call!145957 () Regex!7017)

(assert (=> bm!145945 (= call!145949 (findConcatSeparation!668 (ite c!380904 lt!871230 call!145957) (ite c!380904 call!145951 call!145954) Nil!28174 s!9460 s!9460))))

(declare-fun bm!145946 () Bool)

(declare-fun call!145958 () Bool)

(declare-fun call!145950 () Bool)

(assert (=> bm!145946 (= call!145958 call!145950)))

(declare-fun b!2393989 () Bool)

(declare-fun e!1525795 () Unit!41228)

(declare-fun Unit!41233 () Unit!41228)

(assert (=> b!2393989 (= e!1525795 Unit!41233)))

(declare-fun lt!871216 () Unit!41228)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!54 (Regex!7017 Regex!7017 List!28272 List!28272) Unit!41228)

(assert (=> b!2393989 (= lt!871216 (lemmaTwoRegexMatchThenConcatMatchesConcatString!54 lt!871230 EmptyExpr!7017 s!9460 Nil!28174))))

(assert (=> b!2393989 (= lt!871218 (Concat!11653 lt!871230 EmptyExpr!7017))))

(declare-fun res!1017113 () Bool)

(assert (=> b!2393989 (= res!1017113 (matchR!3134 lt!871218 call!145956))))

(declare-fun e!1525801 () Bool)

(assert (=> b!2393989 (=> (not res!1017113) (not e!1525801))))

(assert (=> b!2393989 e!1525801))

(declare-fun lt!871225 () Unit!41228)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!36 (Regex!7017 Regex!7017 List!28272) Unit!41228)

(assert (=> b!2393989 (= lt!871225 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!36 lt!871230 EmptyExpr!7017 s!9460))))

(declare-fun res!1017111 () Bool)

(declare-fun call!145955 () Bool)

(assert (=> b!2393989 (= res!1017111 call!145955)))

(declare-fun e!1525788 () Bool)

(assert (=> b!2393989 (=> (not res!1017111) (not e!1525788))))

(assert (=> b!2393989 e!1525788))

(declare-fun b!2393990 () Bool)

(assert (=> b!2393990 (= e!1525788 call!145958)))

(declare-fun b!2393991 () Bool)

(declare-fun tp!762679 () Bool)

(declare-fun tp!762673 () Bool)

(assert (=> b!2393991 (= e!1525790 (and tp!762679 tp!762673))))

(declare-fun b!2393992 () Bool)

(assert (=> b!2393992 (= lt!871219 (isDefined!4388 (findConcatSeparation!668 lt!871230 call!145954 Nil!28174 s!9460 s!9460)))))

(declare-fun lt!871224 () Unit!41228)

(assert (=> b!2393992 (= lt!871224 e!1525795)))

(assert (=> b!2393992 (= c!380900 (matchR!3134 lt!871230 s!9460))))

(assert (=> b!2393992 (= lt!871230 call!145957)))

(declare-fun Unit!41234 () Unit!41228)

(assert (=> b!2393992 (= e!1525792 Unit!41234)))

(declare-fun bm!145947 () Bool)

(declare-fun call!145948 () Option!5560)

(assert (=> bm!145947 (= call!145948 (findConcatSeparation!668 lt!871230 EmptyExpr!7017 Nil!28174 s!9460 s!9460))))

(declare-fun b!2393993 () Bool)

(declare-fun Unit!41235 () Unit!41228)

(assert (=> b!2393993 (= e!1525795 Unit!41235)))

(assert (=> b!2393993 (= lt!871232 call!145948)))

(declare-fun lt!871221 () Bool)

(assert (=> b!2393993 (= lt!871221 call!145955)))

(declare-fun c!380901 () Bool)

(assert (=> b!2393993 (= c!380901 lt!871221)))

(declare-fun lt!871231 () Unit!41228)

(assert (=> b!2393993 (= lt!871231 e!1525797)))

(declare-fun res!1017114 () Bool)

(assert (=> b!2393993 (= res!1017114 (not lt!871221))))

(declare-fun e!1525799 () Bool)

(assert (=> b!2393993 (=> (not res!1017114) (not e!1525799))))

(assert (=> b!2393993 e!1525799))

(declare-fun b!2393994 () Bool)

(declare-fun tp!762675 () Bool)

(assert (=> b!2393994 (= e!1525790 tp!762675)))

(declare-fun bm!145948 () Bool)

(assert (=> bm!145948 (= call!145950 (isDefined!4388 (ite c!380904 call!145952 call!145949)))))

(declare-fun bm!145949 () Bool)

(declare-fun head!5265 (List!28273) Regex!7017)

(assert (=> bm!145949 (= call!145957 (head!5265 l!9164))))

(declare-fun bm!145950 () Bool)

(assert (=> bm!145950 (= call!145955 (isDefined!4388 (ite c!380900 call!145948 lt!871232)))))

(declare-fun b!2393995 () Bool)

(assert (=> b!2393995 (= e!1525789 (not e!1525787))))

(declare-fun res!1017116 () Bool)

(assert (=> b!2393995 (=> res!1017116 e!1525787)))

(assert (=> b!2393995 (= res!1017116 (not ((_ is Concat!11653) r!13927)))))

(assert (=> b!2393995 (= lt!871219 lt!871215)))

(declare-fun matchRSpec!866 (Regex!7017 List!28272) Bool)

(assert (=> b!2393995 (= lt!871215 (matchRSpec!866 r!13927 s!9460))))

(assert (=> b!2393995 (= lt!871219 (matchR!3134 r!13927 s!9460))))

(declare-fun lt!871229 () Unit!41228)

(declare-fun mainMatchTheorem!866 (Regex!7017 List!28272) Unit!41228)

(assert (=> b!2393995 (= lt!871229 (mainMatchTheorem!866 r!13927 s!9460))))

(declare-fun b!2393996 () Bool)

(assert (=> b!2393996 (= e!1525801 call!145953)))

(declare-fun b!2393997 () Bool)

(assert (=> b!2393997 (= e!1525799 (not call!145958))))

(declare-fun bm!145951 () Bool)

(declare-fun ++!6971 (List!28272 List!28272) List!28272)

(assert (=> bm!145951 (= call!145956 (++!6971 (ite c!380900 s!9460 (_1!16490 lt!871227)) (ite c!380900 Nil!28174 (_2!16490 lt!871227))))))

(declare-fun b!2393998 () Bool)

(assert (=> b!2393998 (= e!1525793 false)))

(declare-fun res!1017109 () Bool)

(assert (=> start!234904 (=> (not res!1017109) (not e!1525789))))

(declare-fun lambda!89777 () Int)

(declare-fun forall!5651 (List!28273 Int) Bool)

(assert (=> start!234904 (= res!1017109 (forall!5651 l!9164 lambda!89777))))

(assert (=> start!234904 e!1525789))

(declare-fun e!1525791 () Bool)

(assert (=> start!234904 e!1525791))

(assert (=> start!234904 e!1525790))

(assert (=> start!234904 e!1525796))

(declare-fun b!2393999 () Bool)

(assert (=> b!2393999 (= lt!871219 call!145950)))

(declare-fun Unit!41236 () Unit!41228)

(assert (=> b!2393999 (= e!1525792 Unit!41236)))

(declare-fun bm!145952 () Bool)

(assert (=> bm!145952 (= call!145954 (generalisedConcat!118 lt!871223))))

(declare-fun b!2394000 () Bool)

(declare-fun validRegex!2742 (Regex!7017) Bool)

(assert (=> b!2394000 (= e!1525794 (validRegex!2742 r!13927))))

(declare-fun b!2394001 () Bool)

(assert (=> b!2394001 (= e!1525800 (not (= lt!871219 (isDefined!4388 (findConcatSeparation!668 (h!33576 l!9164) (generalisedConcat!118 (t!208250 l!9164)) Nil!28174 s!9460 s!9460)))))))

(declare-fun bm!145953 () Bool)

(assert (=> bm!145953 (= call!145951 call!145954)))

(declare-fun b!2394002 () Bool)

(declare-fun tp!762677 () Bool)

(declare-fun tp!762676 () Bool)

(assert (=> b!2394002 (= e!1525791 (and tp!762677 tp!762676))))

(assert (= (and start!234904 res!1017109) b!2393978))

(assert (= (and b!2393978 res!1017107) b!2393995))

(assert (= (and b!2393995 (not res!1017116)) b!2393977))

(assert (= (and b!2393977 (not res!1017115)) b!2393979))

(assert (= (and b!2393979 c!380903) b!2393987))

(assert (= (and b!2393979 (not c!380903)) b!2393983))

(assert (= (and b!2393983 c!380904) b!2393992))

(assert (= (and b!2393983 (not c!380904)) b!2393999))

(assert (= (and b!2393992 c!380900) b!2393989))

(assert (= (and b!2393992 (not c!380900)) b!2393993))

(assert (= (and b!2393989 res!1017113) b!2393996))

(assert (= (and b!2393989 res!1017111) b!2393990))

(assert (= (and b!2393993 c!380901) b!2393988))

(assert (= (and b!2393993 (not c!380901)) b!2393982))

(assert (= (and b!2393988 res!1017112) b!2393998))

(assert (= (and b!2393993 res!1017114) b!2393997))

(assert (= (or b!2393989 b!2393988) bm!145951))

(assert (= (or b!2393990 b!2393997) bm!145953))

(assert (= (or b!2393989 b!2393993) bm!145947))

(assert (= (or b!2393989 b!2393993) bm!145950))

(assert (= (or b!2393996 b!2393988) bm!145943))

(assert (= (or b!2393990 b!2393997) bm!145944))

(assert (= (or b!2393990 b!2393997) bm!145946))

(assert (= (or b!2393992 b!2393999) bm!145949))

(assert (= (or b!2393992 bm!145953 b!2393999) bm!145952))

(assert (= (or bm!145944 b!2393999) bm!145945))

(assert (= (or bm!145946 b!2393999) bm!145948))

(assert (= (and b!2393979 c!380902) b!2394001))

(assert (= (and b!2393979 (not c!380902)) b!2393986))

(assert (= (and b!2393979 (not res!1017110)) b!2393984))

(assert (= (and b!2393984 (not res!1017108)) b!2394000))

(assert (= (and start!234904 ((_ is Cons!28175) l!9164)) b!2394002))

(assert (= (and start!234904 ((_ is ElementMatch!7017) r!13927)) b!2393985))

(assert (= (and start!234904 ((_ is Concat!11653) r!13927)) b!2393980))

(assert (= (and start!234904 ((_ is Star!7017) r!13927)) b!2393994))

(assert (= (and start!234904 ((_ is Union!7017) r!13927)) b!2393991))

(assert (= (and start!234904 ((_ is Cons!28174) s!9460)) b!2393981))

(declare-fun m!2793259 () Bool)

(assert (=> start!234904 m!2793259))

(declare-fun m!2793261 () Bool)

(assert (=> bm!145948 m!2793261))

(declare-fun m!2793263 () Bool)

(assert (=> bm!145949 m!2793263))

(declare-fun m!2793265 () Bool)

(assert (=> b!2393986 m!2793265))

(declare-fun m!2793267 () Bool)

(assert (=> bm!145947 m!2793267))

(declare-fun m!2793269 () Bool)

(assert (=> b!2393983 m!2793269))

(declare-fun m!2793271 () Bool)

(assert (=> b!2393983 m!2793271))

(declare-fun m!2793273 () Bool)

(assert (=> bm!145943 m!2793273))

(declare-fun m!2793275 () Bool)

(assert (=> b!2394001 m!2793275))

(assert (=> b!2394001 m!2793275))

(declare-fun m!2793277 () Bool)

(assert (=> b!2394001 m!2793277))

(assert (=> b!2394001 m!2793277))

(declare-fun m!2793279 () Bool)

(assert (=> b!2394001 m!2793279))

(declare-fun m!2793281 () Bool)

(assert (=> b!2393978 m!2793281))

(declare-fun m!2793283 () Bool)

(assert (=> b!2394000 m!2793283))

(declare-fun m!2793285 () Bool)

(assert (=> b!2393979 m!2793285))

(declare-fun m!2793287 () Bool)

(assert (=> b!2393988 m!2793287))

(declare-fun m!2793289 () Bool)

(assert (=> b!2393988 m!2793289))

(declare-fun m!2793291 () Bool)

(assert (=> bm!145951 m!2793291))

(declare-fun m!2793293 () Bool)

(assert (=> bm!145952 m!2793293))

(declare-fun m!2793295 () Bool)

(assert (=> b!2393995 m!2793295))

(declare-fun m!2793297 () Bool)

(assert (=> b!2393995 m!2793297))

(declare-fun m!2793299 () Bool)

(assert (=> b!2393995 m!2793299))

(declare-fun m!2793301 () Bool)

(assert (=> b!2393977 m!2793301))

(declare-fun m!2793303 () Bool)

(assert (=> b!2393977 m!2793303))

(declare-fun m!2793305 () Bool)

(assert (=> b!2393977 m!2793305))

(assert (=> b!2393977 m!2793301))

(declare-fun m!2793307 () Bool)

(assert (=> b!2393977 m!2793307))

(declare-fun m!2793309 () Bool)

(assert (=> b!2393977 m!2793309))

(declare-fun m!2793311 () Bool)

(assert (=> b!2393977 m!2793311))

(assert (=> b!2393977 m!2793309))

(declare-fun m!2793313 () Bool)

(assert (=> bm!145950 m!2793313))

(declare-fun m!2793315 () Bool)

(assert (=> bm!145945 m!2793315))

(declare-fun m!2793317 () Bool)

(assert (=> b!2393992 m!2793317))

(assert (=> b!2393992 m!2793317))

(declare-fun m!2793319 () Bool)

(assert (=> b!2393992 m!2793319))

(declare-fun m!2793321 () Bool)

(assert (=> b!2393992 m!2793321))

(declare-fun m!2793323 () Bool)

(assert (=> b!2393989 m!2793323))

(declare-fun m!2793325 () Bool)

(assert (=> b!2393989 m!2793325))

(declare-fun m!2793327 () Bool)

(assert (=> b!2393989 m!2793327))

(check-sat (not b!2393986) (not bm!145949) (not b!2393978) (not b!2393994) (not bm!145951) (not b!2393995) (not b!2393979) (not b!2393989) (not b!2393988) (not b!2394002) (not b!2394000) (not bm!145943) (not bm!145952) (not bm!145948) (not bm!145947) (not b!2393977) (not b!2393983) (not b!2393991) tp_is_empty!11447 (not bm!145945) (not b!2393980) (not start!234904) (not b!2393992) (not bm!145950) (not b!2394001) (not b!2393981))
(check-sat)
(get-model)

(declare-fun d!698643 () Bool)

(assert (=> d!698643 (matchR!3134 (Concat!11653 lt!871230 EmptyExpr!7017) (++!6971 s!9460 Nil!28174))))

(declare-fun lt!871249 () Unit!41228)

(declare-fun choose!14129 (Regex!7017 Regex!7017 List!28272 List!28272) Unit!41228)

(assert (=> d!698643 (= lt!871249 (choose!14129 lt!871230 EmptyExpr!7017 s!9460 Nil!28174))))

(declare-fun e!1525852 () Bool)

(assert (=> d!698643 e!1525852))

(declare-fun res!1017156 () Bool)

(assert (=> d!698643 (=> (not res!1017156) (not e!1525852))))

(assert (=> d!698643 (= res!1017156 (validRegex!2742 lt!871230))))

(assert (=> d!698643 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!54 lt!871230 EmptyExpr!7017 s!9460 Nil!28174) lt!871249)))

(declare-fun b!2394094 () Bool)

(assert (=> b!2394094 (= e!1525852 (validRegex!2742 EmptyExpr!7017))))

(assert (= (and d!698643 res!1017156) b!2394094))

(declare-fun m!2793367 () Bool)

(assert (=> d!698643 m!2793367))

(assert (=> d!698643 m!2793367))

(declare-fun m!2793369 () Bool)

(assert (=> d!698643 m!2793369))

(declare-fun m!2793371 () Bool)

(assert (=> d!698643 m!2793371))

(declare-fun m!2793373 () Bool)

(assert (=> d!698643 m!2793373))

(declare-fun m!2793375 () Bool)

(assert (=> b!2394094 m!2793375))

(assert (=> b!2393989 d!698643))

(declare-fun b!2394191 () Bool)

(declare-fun res!1017212 () Bool)

(declare-fun e!1525908 () Bool)

(assert (=> b!2394191 (=> res!1017212 e!1525908)))

(declare-fun e!1525906 () Bool)

(assert (=> b!2394191 (= res!1017212 e!1525906)))

(declare-fun res!1017211 () Bool)

(assert (=> b!2394191 (=> (not res!1017211) (not e!1525906))))

(declare-fun lt!871267 () Bool)

(assert (=> b!2394191 (= res!1017211 lt!871267)))

(declare-fun b!2394192 () Bool)

(declare-fun e!1525905 () Bool)

(assert (=> b!2394192 (= e!1525905 (not lt!871267))))

(declare-fun b!2394193 () Bool)

(declare-fun e!1525907 () Bool)

(declare-fun call!145965 () Bool)

(assert (=> b!2394193 (= e!1525907 (= lt!871267 call!145965))))

(declare-fun b!2394194 () Bool)

(declare-fun e!1525904 () Bool)

(declare-fun nullable!2066 (Regex!7017) Bool)

(assert (=> b!2394194 (= e!1525904 (nullable!2066 lt!871218))))

(declare-fun b!2394195 () Bool)

(declare-fun derivativeStep!1724 (Regex!7017 C!14192) Regex!7017)

(declare-fun head!5267 (List!28272) C!14192)

(declare-fun tail!3537 (List!28272) List!28272)

(assert (=> b!2394195 (= e!1525904 (matchR!3134 (derivativeStep!1724 lt!871218 (head!5267 call!145956)) (tail!3537 call!145956)))))

(declare-fun b!2394197 () Bool)

(declare-fun e!1525903 () Bool)

(declare-fun e!1525909 () Bool)

(assert (=> b!2394197 (= e!1525903 e!1525909)))

(declare-fun res!1017208 () Bool)

(assert (=> b!2394197 (=> res!1017208 e!1525909)))

(assert (=> b!2394197 (= res!1017208 call!145965)))

(declare-fun b!2394198 () Bool)

(assert (=> b!2394198 (= e!1525907 e!1525905)))

(declare-fun c!380954 () Bool)

(assert (=> b!2394198 (= c!380954 ((_ is EmptyLang!7017) lt!871218))))

(declare-fun b!2394199 () Bool)

(declare-fun res!1017207 () Bool)

(assert (=> b!2394199 (=> (not res!1017207) (not e!1525906))))

(assert (=> b!2394199 (= res!1017207 (not call!145965))))

(declare-fun b!2394200 () Bool)

(assert (=> b!2394200 (= e!1525909 (not (= (head!5267 call!145956) (c!380905 lt!871218))))))

(declare-fun b!2394201 () Bool)

(declare-fun res!1017214 () Bool)

(assert (=> b!2394201 (=> res!1017214 e!1525909)))

(assert (=> b!2394201 (= res!1017214 (not (isEmpty!16160 (tail!3537 call!145956))))))

(declare-fun bm!145960 () Bool)

(assert (=> bm!145960 (= call!145965 (isEmpty!16160 call!145956))))

(declare-fun b!2394202 () Bool)

(declare-fun res!1017213 () Bool)

(assert (=> b!2394202 (=> (not res!1017213) (not e!1525906))))

(assert (=> b!2394202 (= res!1017213 (isEmpty!16160 (tail!3537 call!145956)))))

(declare-fun b!2394203 () Bool)

(assert (=> b!2394203 (= e!1525908 e!1525903)))

(declare-fun res!1017209 () Bool)

(assert (=> b!2394203 (=> (not res!1017209) (not e!1525903))))

(assert (=> b!2394203 (= res!1017209 (not lt!871267))))

(declare-fun b!2394204 () Bool)

(assert (=> b!2394204 (= e!1525906 (= (head!5267 call!145956) (c!380905 lt!871218)))))

(declare-fun b!2394196 () Bool)

(declare-fun res!1017210 () Bool)

(assert (=> b!2394196 (=> res!1017210 e!1525908)))

(assert (=> b!2394196 (= res!1017210 (not ((_ is ElementMatch!7017) lt!871218)))))

(assert (=> b!2394196 (= e!1525905 e!1525908)))

(declare-fun d!698647 () Bool)

(assert (=> d!698647 e!1525907))

(declare-fun c!380953 () Bool)

(assert (=> d!698647 (= c!380953 ((_ is EmptyExpr!7017) lt!871218))))

(assert (=> d!698647 (= lt!871267 e!1525904)))

(declare-fun c!380955 () Bool)

(assert (=> d!698647 (= c!380955 (isEmpty!16160 call!145956))))

(assert (=> d!698647 (validRegex!2742 lt!871218)))

(assert (=> d!698647 (= (matchR!3134 lt!871218 call!145956) lt!871267)))

(assert (= (and d!698647 c!380955) b!2394194))

(assert (= (and d!698647 (not c!380955)) b!2394195))

(assert (= (and d!698647 c!380953) b!2394193))

(assert (= (and d!698647 (not c!380953)) b!2394198))

(assert (= (and b!2394198 c!380954) b!2394192))

(assert (= (and b!2394198 (not c!380954)) b!2394196))

(assert (= (and b!2394196 (not res!1017210)) b!2394191))

(assert (= (and b!2394191 res!1017211) b!2394199))

(assert (= (and b!2394199 res!1017207) b!2394202))

(assert (= (and b!2394202 res!1017213) b!2394204))

(assert (= (and b!2394191 (not res!1017212)) b!2394203))

(assert (= (and b!2394203 res!1017209) b!2394197))

(assert (= (and b!2394197 (not res!1017208)) b!2394201))

(assert (= (and b!2394201 (not res!1017214)) b!2394200))

(assert (= (or b!2394193 b!2394197 b!2394199) bm!145960))

(declare-fun m!2793487 () Bool)

(assert (=> b!2394194 m!2793487))

(declare-fun m!2793489 () Bool)

(assert (=> b!2394200 m!2793489))

(declare-fun m!2793491 () Bool)

(assert (=> bm!145960 m!2793491))

(assert (=> b!2394195 m!2793489))

(assert (=> b!2394195 m!2793489))

(declare-fun m!2793493 () Bool)

(assert (=> b!2394195 m!2793493))

(declare-fun m!2793495 () Bool)

(assert (=> b!2394195 m!2793495))

(assert (=> b!2394195 m!2793493))

(assert (=> b!2394195 m!2793495))

(declare-fun m!2793497 () Bool)

(assert (=> b!2394195 m!2793497))

(assert (=> b!2394204 m!2793489))

(assert (=> d!698647 m!2793491))

(declare-fun m!2793499 () Bool)

(assert (=> d!698647 m!2793499))

(assert (=> b!2394201 m!2793495))

(assert (=> b!2394201 m!2793495))

(declare-fun m!2793501 () Bool)

(assert (=> b!2394201 m!2793501))

(assert (=> b!2394202 m!2793495))

(assert (=> b!2394202 m!2793495))

(assert (=> b!2394202 m!2793501))

(assert (=> b!2393989 d!698647))

(declare-fun d!698673 () Bool)

(assert (=> d!698673 (isDefined!4388 (findConcatSeparation!668 lt!871230 EmptyExpr!7017 Nil!28174 s!9460 s!9460))))

(declare-fun lt!871275 () Unit!41228)

(declare-fun choose!14130 (Regex!7017 Regex!7017 List!28272) Unit!41228)

(assert (=> d!698673 (= lt!871275 (choose!14130 lt!871230 EmptyExpr!7017 s!9460))))

(assert (=> d!698673 (validRegex!2742 lt!871230)))

(assert (=> d!698673 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!36 lt!871230 EmptyExpr!7017 s!9460) lt!871275)))

(declare-fun bs!462750 () Bool)

(assert (= bs!462750 d!698673))

(assert (=> bs!462750 m!2793267))

(assert (=> bs!462750 m!2793267))

(declare-fun m!2793509 () Bool)

(assert (=> bs!462750 m!2793509))

(declare-fun m!2793511 () Bool)

(assert (=> bs!462750 m!2793511))

(assert (=> bs!462750 m!2793373))

(assert (=> b!2393989 d!698673))

(declare-fun d!698677 () Bool)

(assert (=> d!698677 (= (tail!3535 l!9164) (t!208250 l!9164))))

(assert (=> b!2393983 d!698677))

(declare-fun d!698679 () Bool)

(assert (=> d!698679 (= (isEmpty!16159 lt!871223) ((_ is Nil!28175) lt!871223))))

(assert (=> b!2393983 d!698679))

(declare-fun d!698681 () Bool)

(declare-fun isEmpty!16162 (Option!5560) Bool)

(assert (=> d!698681 (= (isDefined!4388 (ite c!380900 call!145948 lt!871232)) (not (isEmpty!16162 (ite c!380900 call!145948 lt!871232))))))

(declare-fun bs!462754 () Bool)

(assert (= bs!462754 d!698681))

(declare-fun m!2793513 () Bool)

(assert (=> bs!462754 m!2793513))

(assert (=> bm!145950 d!698681))

(declare-fun bs!462764 () Bool)

(declare-fun b!2394347 () Bool)

(assert (= bs!462764 (and b!2394347 b!2393977)))

(declare-fun lambda!89803 () Int)

(assert (=> bs!462764 (not (= lambda!89803 lambda!89778))))

(assert (=> bs!462764 (not (= lambda!89803 lambda!89779))))

(assert (=> b!2394347 true))

(assert (=> b!2394347 true))

(declare-fun bs!462766 () Bool)

(declare-fun b!2394344 () Bool)

(assert (= bs!462766 (and b!2394344 b!2393977)))

(declare-fun lambda!89804 () Int)

(assert (=> bs!462766 (not (= lambda!89804 lambda!89778))))

(assert (=> bs!462766 (= lambda!89804 lambda!89779)))

(declare-fun bs!462767 () Bool)

(assert (= bs!462767 (and b!2394344 b!2394347)))

(assert (=> bs!462767 (not (= lambda!89804 lambda!89803))))

(assert (=> b!2394344 true))

(assert (=> b!2394344 true))

(declare-fun b!2394341 () Bool)

(declare-fun e!1525990 () Bool)

(declare-fun call!145979 () Bool)

(assert (=> b!2394341 (= e!1525990 call!145979)))

(declare-fun b!2394342 () Bool)

(declare-fun c!380988 () Bool)

(assert (=> b!2394342 (= c!380988 ((_ is ElementMatch!7017) r!13927))))

(declare-fun e!1525991 () Bool)

(declare-fun e!1525992 () Bool)

(assert (=> b!2394342 (= e!1525991 e!1525992)))

(declare-fun b!2394343 () Bool)

(declare-fun e!1525988 () Bool)

(declare-fun e!1525986 () Bool)

(assert (=> b!2394343 (= e!1525988 e!1525986)))

(declare-fun c!380987 () Bool)

(assert (=> b!2394343 (= c!380987 ((_ is Star!7017) r!13927))))

(declare-fun bm!145973 () Bool)

(declare-fun call!145978 () Bool)

(assert (=> bm!145973 (= call!145978 (Exists!1079 (ite c!380987 lambda!89803 lambda!89804)))))

(assert (=> b!2394344 (= e!1525986 call!145978)))

(declare-fun b!2394345 () Bool)

(declare-fun res!1017291 () Bool)

(declare-fun e!1525989 () Bool)

(assert (=> b!2394345 (=> res!1017291 e!1525989)))

(assert (=> b!2394345 (= res!1017291 call!145979)))

(assert (=> b!2394345 (= e!1525986 e!1525989)))

(declare-fun b!2394346 () Bool)

(declare-fun e!1525987 () Bool)

(assert (=> b!2394346 (= e!1525988 e!1525987)))

(declare-fun res!1017293 () Bool)

(assert (=> b!2394346 (= res!1017293 (matchRSpec!866 (regOne!14547 r!13927) s!9460))))

(assert (=> b!2394346 (=> res!1017293 e!1525987)))

(assert (=> b!2394347 (= e!1525989 call!145978)))

(declare-fun b!2394348 () Bool)

(declare-fun c!380986 () Bool)

(assert (=> b!2394348 (= c!380986 ((_ is Union!7017) r!13927))))

(assert (=> b!2394348 (= e!1525992 e!1525988)))

(declare-fun b!2394349 () Bool)

(assert (=> b!2394349 (= e!1525992 (= s!9460 (Cons!28174 (c!380905 r!13927) Nil!28174)))))

(declare-fun d!698683 () Bool)

(declare-fun c!380989 () Bool)

(assert (=> d!698683 (= c!380989 ((_ is EmptyExpr!7017) r!13927))))

(assert (=> d!698683 (= (matchRSpec!866 r!13927 s!9460) e!1525990)))

(declare-fun b!2394350 () Bool)

(assert (=> b!2394350 (= e!1525990 e!1525991)))

(declare-fun res!1017292 () Bool)

(assert (=> b!2394350 (= res!1017292 (not ((_ is EmptyLang!7017) r!13927)))))

(assert (=> b!2394350 (=> (not res!1017292) (not e!1525991))))

(declare-fun bm!145974 () Bool)

(assert (=> bm!145974 (= call!145979 (isEmpty!16160 s!9460))))

(declare-fun b!2394351 () Bool)

(assert (=> b!2394351 (= e!1525987 (matchRSpec!866 (regTwo!14547 r!13927) s!9460))))

(assert (= (and d!698683 c!380989) b!2394341))

(assert (= (and d!698683 (not c!380989)) b!2394350))

(assert (= (and b!2394350 res!1017292) b!2394342))

(assert (= (and b!2394342 c!380988) b!2394349))

(assert (= (and b!2394342 (not c!380988)) b!2394348))

(assert (= (and b!2394348 c!380986) b!2394346))

(assert (= (and b!2394348 (not c!380986)) b!2394343))

(assert (= (and b!2394346 (not res!1017293)) b!2394351))

(assert (= (and b!2394343 c!380987) b!2394345))

(assert (= (and b!2394343 (not c!380987)) b!2394344))

(assert (= (and b!2394345 (not res!1017291)) b!2394347))

(assert (= (or b!2394347 b!2394344) bm!145973))

(assert (= (or b!2394341 b!2394345) bm!145974))

(declare-fun m!2793595 () Bool)

(assert (=> bm!145973 m!2793595))

(declare-fun m!2793597 () Bool)

(assert (=> b!2394346 m!2793597))

(assert (=> bm!145974 m!2793265))

(declare-fun m!2793599 () Bool)

(assert (=> b!2394351 m!2793599))

(assert (=> b!2393995 d!698683))

(declare-fun b!2394370 () Bool)

(declare-fun res!1017309 () Bool)

(declare-fun e!1526012 () Bool)

(assert (=> b!2394370 (=> res!1017309 e!1526012)))

(declare-fun e!1526010 () Bool)

(assert (=> b!2394370 (= res!1017309 e!1526010)))

(declare-fun res!1017308 () Bool)

(assert (=> b!2394370 (=> (not res!1017308) (not e!1526010))))

(declare-fun lt!871294 () Bool)

(assert (=> b!2394370 (= res!1017308 lt!871294)))

(declare-fun b!2394371 () Bool)

(declare-fun e!1526009 () Bool)

(assert (=> b!2394371 (= e!1526009 (not lt!871294))))

(declare-fun b!2394372 () Bool)

(declare-fun e!1526011 () Bool)

(declare-fun call!145986 () Bool)

(assert (=> b!2394372 (= e!1526011 (= lt!871294 call!145986))))

(declare-fun b!2394373 () Bool)

(declare-fun e!1526008 () Bool)

(assert (=> b!2394373 (= e!1526008 (nullable!2066 r!13927))))

(declare-fun b!2394374 () Bool)

(assert (=> b!2394374 (= e!1526008 (matchR!3134 (derivativeStep!1724 r!13927 (head!5267 s!9460)) (tail!3537 s!9460)))))

(declare-fun b!2394376 () Bool)

(declare-fun e!1526007 () Bool)

(declare-fun e!1526013 () Bool)

(assert (=> b!2394376 (= e!1526007 e!1526013)))

(declare-fun res!1017305 () Bool)

(assert (=> b!2394376 (=> res!1017305 e!1526013)))

(assert (=> b!2394376 (= res!1017305 call!145986)))

(declare-fun b!2394377 () Bool)

(assert (=> b!2394377 (= e!1526011 e!1526009)))

(declare-fun c!380995 () Bool)

(assert (=> b!2394377 (= c!380995 ((_ is EmptyLang!7017) r!13927))))

(declare-fun b!2394378 () Bool)

(declare-fun res!1017304 () Bool)

(assert (=> b!2394378 (=> (not res!1017304) (not e!1526010))))

(assert (=> b!2394378 (= res!1017304 (not call!145986))))

(declare-fun b!2394379 () Bool)

(assert (=> b!2394379 (= e!1526013 (not (= (head!5267 s!9460) (c!380905 r!13927))))))

(declare-fun b!2394380 () Bool)

(declare-fun res!1017311 () Bool)

(assert (=> b!2394380 (=> res!1017311 e!1526013)))

(assert (=> b!2394380 (= res!1017311 (not (isEmpty!16160 (tail!3537 s!9460))))))

(declare-fun bm!145981 () Bool)

(assert (=> bm!145981 (= call!145986 (isEmpty!16160 s!9460))))

(declare-fun b!2394381 () Bool)

(declare-fun res!1017310 () Bool)

(assert (=> b!2394381 (=> (not res!1017310) (not e!1526010))))

(assert (=> b!2394381 (= res!1017310 (isEmpty!16160 (tail!3537 s!9460)))))

(declare-fun b!2394382 () Bool)

(assert (=> b!2394382 (= e!1526012 e!1526007)))

(declare-fun res!1017306 () Bool)

(assert (=> b!2394382 (=> (not res!1017306) (not e!1526007))))

(assert (=> b!2394382 (= res!1017306 (not lt!871294))))

(declare-fun b!2394383 () Bool)

(assert (=> b!2394383 (= e!1526010 (= (head!5267 s!9460) (c!380905 r!13927)))))

(declare-fun b!2394375 () Bool)

(declare-fun res!1017307 () Bool)

(assert (=> b!2394375 (=> res!1017307 e!1526012)))

(assert (=> b!2394375 (= res!1017307 (not ((_ is ElementMatch!7017) r!13927)))))

(assert (=> b!2394375 (= e!1526009 e!1526012)))

(declare-fun d!698713 () Bool)

(assert (=> d!698713 e!1526011))

(declare-fun c!380994 () Bool)

(assert (=> d!698713 (= c!380994 ((_ is EmptyExpr!7017) r!13927))))

(assert (=> d!698713 (= lt!871294 e!1526008)))

(declare-fun c!380996 () Bool)

(assert (=> d!698713 (= c!380996 (isEmpty!16160 s!9460))))

(assert (=> d!698713 (validRegex!2742 r!13927)))

(assert (=> d!698713 (= (matchR!3134 r!13927 s!9460) lt!871294)))

(assert (= (and d!698713 c!380996) b!2394373))

(assert (= (and d!698713 (not c!380996)) b!2394374))

(assert (= (and d!698713 c!380994) b!2394372))

(assert (= (and d!698713 (not c!380994)) b!2394377))

(assert (= (and b!2394377 c!380995) b!2394371))

(assert (= (and b!2394377 (not c!380995)) b!2394375))

(assert (= (and b!2394375 (not res!1017307)) b!2394370))

(assert (= (and b!2394370 res!1017308) b!2394378))

(assert (= (and b!2394378 res!1017304) b!2394381))

(assert (= (and b!2394381 res!1017310) b!2394383))

(assert (= (and b!2394370 (not res!1017309)) b!2394382))

(assert (= (and b!2394382 res!1017306) b!2394376))

(assert (= (and b!2394376 (not res!1017305)) b!2394380))

(assert (= (and b!2394380 (not res!1017311)) b!2394379))

(assert (= (or b!2394372 b!2394376 b!2394378) bm!145981))

(declare-fun m!2793601 () Bool)

(assert (=> b!2394373 m!2793601))

(declare-fun m!2793603 () Bool)

(assert (=> b!2394379 m!2793603))

(assert (=> bm!145981 m!2793265))

(assert (=> b!2394374 m!2793603))

(assert (=> b!2394374 m!2793603))

(declare-fun m!2793605 () Bool)

(assert (=> b!2394374 m!2793605))

(declare-fun m!2793607 () Bool)

(assert (=> b!2394374 m!2793607))

(assert (=> b!2394374 m!2793605))

(assert (=> b!2394374 m!2793607))

(declare-fun m!2793609 () Bool)

(assert (=> b!2394374 m!2793609))

(assert (=> b!2394383 m!2793603))

(assert (=> d!698713 m!2793265))

(assert (=> d!698713 m!2793283))

(assert (=> b!2394380 m!2793607))

(assert (=> b!2394380 m!2793607))

(declare-fun m!2793611 () Bool)

(assert (=> b!2394380 m!2793611))

(assert (=> b!2394381 m!2793607))

(assert (=> b!2394381 m!2793607))

(assert (=> b!2394381 m!2793611))

(assert (=> b!2393995 d!698713))

(declare-fun d!698715 () Bool)

(assert (=> d!698715 (= (matchR!3134 r!13927 s!9460) (matchRSpec!866 r!13927 s!9460))))

(declare-fun lt!871298 () Unit!41228)

(declare-fun choose!14131 (Regex!7017 List!28272) Unit!41228)

(assert (=> d!698715 (= lt!871298 (choose!14131 r!13927 s!9460))))

(assert (=> d!698715 (validRegex!2742 r!13927)))

(assert (=> d!698715 (= (mainMatchTheorem!866 r!13927 s!9460) lt!871298)))

(declare-fun bs!462772 () Bool)

(assert (= bs!462772 d!698715))

(assert (=> bs!462772 m!2793297))

(assert (=> bs!462772 m!2793295))

(declare-fun m!2793643 () Bool)

(assert (=> bs!462772 m!2793643))

(assert (=> bs!462772 m!2793283))

(assert (=> b!2393995 d!698715))

(declare-fun d!698725 () Bool)

(assert (=> d!698725 (= (head!5265 l!9164) (h!33576 l!9164))))

(assert (=> bm!145949 d!698725))

(declare-fun d!698729 () Bool)

(assert (=> d!698729 (matchR!3134 (Concat!11653 lt!871230 EmptyExpr!7017) (++!6971 (_1!16490 lt!871227) (_2!16490 lt!871227)))))

(declare-fun lt!871301 () Unit!41228)

(declare-fun choose!14133 (Regex!7017 Regex!7017 List!28272 List!28272 List!28272) Unit!41228)

(assert (=> d!698729 (= lt!871301 (choose!14133 lt!871230 EmptyExpr!7017 (_1!16490 lt!871227) (_2!16490 lt!871227) s!9460))))

(assert (=> d!698729 (validRegex!2742 lt!871230)))

(assert (=> d!698729 (= (lemmaFindSeparationIsDefinedThenConcatMatches!36 lt!871230 EmptyExpr!7017 (_1!16490 lt!871227) (_2!16490 lt!871227) s!9460) lt!871301)))

(declare-fun bs!462774 () Bool)

(assert (= bs!462774 d!698729))

(declare-fun m!2793645 () Bool)

(assert (=> bs!462774 m!2793645))

(assert (=> bs!462774 m!2793645))

(declare-fun m!2793647 () Bool)

(assert (=> bs!462774 m!2793647))

(declare-fun m!2793649 () Bool)

(assert (=> bs!462774 m!2793649))

(assert (=> bs!462774 m!2793373))

(assert (=> b!2393988 d!698729))

(declare-fun d!698731 () Bool)

(assert (=> d!698731 (= (get!8623 lt!871232) (v!30967 lt!871232))))

(assert (=> b!2393988 d!698731))

(declare-fun b!2394471 () Bool)

(declare-fun e!1526060 () Bool)

(declare-fun lt!871309 () Option!5560)

(assert (=> b!2394471 (= e!1526060 (not (isDefined!4388 lt!871309)))))

(declare-fun b!2394472 () Bool)

(declare-fun e!1526058 () Option!5560)

(assert (=> b!2394472 (= e!1526058 (Some!5559 (tuple2!27899 Nil!28174 s!9460)))))

(declare-fun b!2394473 () Bool)

(declare-fun lt!871308 () Unit!41228)

(declare-fun lt!871310 () Unit!41228)

(assert (=> b!2394473 (= lt!871308 lt!871310)))

(assert (=> b!2394473 (= (++!6971 (++!6971 Nil!28174 (Cons!28174 (h!33575 s!9460) Nil!28174)) (t!208249 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!613 (List!28272 C!14192 List!28272 List!28272) Unit!41228)

(assert (=> b!2394473 (= lt!871310 (lemmaMoveElementToOtherListKeepsConcatEq!613 Nil!28174 (h!33575 s!9460) (t!208249 s!9460) s!9460))))

(declare-fun e!1526061 () Option!5560)

(assert (=> b!2394473 (= e!1526061 (findConcatSeparation!668 (ite c!380904 lt!871230 call!145957) (ite c!380904 call!145951 call!145954) (++!6971 Nil!28174 (Cons!28174 (h!33575 s!9460) Nil!28174)) (t!208249 s!9460) s!9460))))

(declare-fun b!2394474 () Bool)

(declare-fun e!1526059 () Bool)

(assert (=> b!2394474 (= e!1526059 (= (++!6971 (_1!16490 (get!8623 lt!871309)) (_2!16490 (get!8623 lt!871309))) s!9460))))

(declare-fun b!2394475 () Bool)

(declare-fun res!1017335 () Bool)

(assert (=> b!2394475 (=> (not res!1017335) (not e!1526059))))

(assert (=> b!2394475 (= res!1017335 (matchR!3134 (ite c!380904 call!145951 call!145954) (_2!16490 (get!8623 lt!871309))))))

(declare-fun d!698733 () Bool)

(assert (=> d!698733 e!1526060))

(declare-fun res!1017337 () Bool)

(assert (=> d!698733 (=> res!1017337 e!1526060)))

(assert (=> d!698733 (= res!1017337 e!1526059)))

(declare-fun res!1017336 () Bool)

(assert (=> d!698733 (=> (not res!1017336) (not e!1526059))))

(assert (=> d!698733 (= res!1017336 (isDefined!4388 lt!871309))))

(assert (=> d!698733 (= lt!871309 e!1526058)))

(declare-fun c!381008 () Bool)

(declare-fun e!1526057 () Bool)

(assert (=> d!698733 (= c!381008 e!1526057)))

(declare-fun res!1017338 () Bool)

(assert (=> d!698733 (=> (not res!1017338) (not e!1526057))))

(assert (=> d!698733 (= res!1017338 (matchR!3134 (ite c!380904 lt!871230 call!145957) Nil!28174))))

(assert (=> d!698733 (validRegex!2742 (ite c!380904 lt!871230 call!145957))))

(assert (=> d!698733 (= (findConcatSeparation!668 (ite c!380904 lt!871230 call!145957) (ite c!380904 call!145951 call!145954) Nil!28174 s!9460 s!9460) lt!871309)))

(declare-fun b!2394476 () Bool)

(assert (=> b!2394476 (= e!1526061 None!5559)))

(declare-fun b!2394477 () Bool)

(assert (=> b!2394477 (= e!1526057 (matchR!3134 (ite c!380904 call!145951 call!145954) s!9460))))

(declare-fun b!2394478 () Bool)

(assert (=> b!2394478 (= e!1526058 e!1526061)))

(declare-fun c!381007 () Bool)

(assert (=> b!2394478 (= c!381007 ((_ is Nil!28174) s!9460))))

(declare-fun b!2394479 () Bool)

(declare-fun res!1017339 () Bool)

(assert (=> b!2394479 (=> (not res!1017339) (not e!1526059))))

(assert (=> b!2394479 (= res!1017339 (matchR!3134 (ite c!380904 lt!871230 call!145957) (_1!16490 (get!8623 lt!871309))))))

(assert (= (and d!698733 res!1017338) b!2394477))

(assert (= (and d!698733 c!381008) b!2394472))

(assert (= (and d!698733 (not c!381008)) b!2394478))

(assert (= (and b!2394478 c!381007) b!2394476))

(assert (= (and b!2394478 (not c!381007)) b!2394473))

(assert (= (and d!698733 res!1017336) b!2394479))

(assert (= (and b!2394479 res!1017339) b!2394475))

(assert (= (and b!2394475 res!1017335) b!2394474))

(assert (= (and d!698733 (not res!1017337)) b!2394471))

(declare-fun m!2793651 () Bool)

(assert (=> b!2394479 m!2793651))

(declare-fun m!2793653 () Bool)

(assert (=> b!2394479 m!2793653))

(declare-fun m!2793655 () Bool)

(assert (=> b!2394471 m!2793655))

(assert (=> d!698733 m!2793655))

(declare-fun m!2793657 () Bool)

(assert (=> d!698733 m!2793657))

(declare-fun m!2793659 () Bool)

(assert (=> d!698733 m!2793659))

(declare-fun m!2793661 () Bool)

(assert (=> b!2394477 m!2793661))

(assert (=> b!2394474 m!2793651))

(declare-fun m!2793663 () Bool)

(assert (=> b!2394474 m!2793663))

(declare-fun m!2793665 () Bool)

(assert (=> b!2394473 m!2793665))

(assert (=> b!2394473 m!2793665))

(declare-fun m!2793667 () Bool)

(assert (=> b!2394473 m!2793667))

(declare-fun m!2793669 () Bool)

(assert (=> b!2394473 m!2793669))

(assert (=> b!2394473 m!2793665))

(declare-fun m!2793671 () Bool)

(assert (=> b!2394473 m!2793671))

(assert (=> b!2394475 m!2793651))

(declare-fun m!2793673 () Bool)

(assert (=> b!2394475 m!2793673))

(assert (=> bm!145945 d!698733))

(declare-fun bs!462775 () Bool)

(declare-fun d!698735 () Bool)

(assert (= bs!462775 (and d!698735 start!234904)))

(declare-fun lambda!89808 () Int)

(assert (=> bs!462775 (= lambda!89808 lambda!89777)))

(declare-fun b!2394500 () Bool)

(declare-fun e!1526074 () Bool)

(declare-fun lt!871313 () Regex!7017)

(declare-fun isConcat!87 (Regex!7017) Bool)

(assert (=> b!2394500 (= e!1526074 (isConcat!87 lt!871313))))

(declare-fun b!2394501 () Bool)

(declare-fun e!1526075 () Bool)

(declare-fun e!1526076 () Bool)

(assert (=> b!2394501 (= e!1526075 e!1526076)))

(declare-fun c!381017 () Bool)

(assert (=> b!2394501 (= c!381017 (isEmpty!16159 l!9164))))

(declare-fun b!2394503 () Bool)

(declare-fun e!1526077 () Regex!7017)

(declare-fun e!1526079 () Regex!7017)

(assert (=> b!2394503 (= e!1526077 e!1526079)))

(declare-fun c!381020 () Bool)

(assert (=> b!2394503 (= c!381020 ((_ is Cons!28175) l!9164))))

(declare-fun b!2394504 () Bool)

(declare-fun e!1526078 () Bool)

(assert (=> b!2394504 (= e!1526078 (isEmpty!16159 (t!208250 l!9164)))))

(declare-fun b!2394505 () Bool)

(assert (=> b!2394505 (= e!1526079 EmptyExpr!7017)))

(declare-fun b!2394502 () Bool)

(assert (=> b!2394502 (= e!1526077 (h!33576 l!9164))))

(assert (=> d!698735 e!1526075))

(declare-fun res!1017344 () Bool)

(assert (=> d!698735 (=> (not res!1017344) (not e!1526075))))

(assert (=> d!698735 (= res!1017344 (validRegex!2742 lt!871313))))

(assert (=> d!698735 (= lt!871313 e!1526077)))

(declare-fun c!381018 () Bool)

(assert (=> d!698735 (= c!381018 e!1526078)))

(declare-fun res!1017345 () Bool)

(assert (=> d!698735 (=> (not res!1017345) (not e!1526078))))

(assert (=> d!698735 (= res!1017345 ((_ is Cons!28175) l!9164))))

(assert (=> d!698735 (forall!5651 l!9164 lambda!89808)))

(assert (=> d!698735 (= (generalisedConcat!118 l!9164) lt!871313)))

(declare-fun b!2394506 () Bool)

(declare-fun isEmptyExpr!87 (Regex!7017) Bool)

(assert (=> b!2394506 (= e!1526076 (isEmptyExpr!87 lt!871313))))

(declare-fun b!2394507 () Bool)

(assert (=> b!2394507 (= e!1526079 (Concat!11653 (h!33576 l!9164) (generalisedConcat!118 (t!208250 l!9164))))))

(declare-fun b!2394508 () Bool)

(assert (=> b!2394508 (= e!1526074 (= lt!871313 (head!5265 l!9164)))))

(declare-fun b!2394509 () Bool)

(assert (=> b!2394509 (= e!1526076 e!1526074)))

(declare-fun c!381019 () Bool)

(assert (=> b!2394509 (= c!381019 (isEmpty!16159 (tail!3535 l!9164)))))

(assert (= (and d!698735 res!1017345) b!2394504))

(assert (= (and d!698735 c!381018) b!2394502))

(assert (= (and d!698735 (not c!381018)) b!2394503))

(assert (= (and b!2394503 c!381020) b!2394507))

(assert (= (and b!2394503 (not c!381020)) b!2394505))

(assert (= (and d!698735 res!1017344) b!2394501))

(assert (= (and b!2394501 c!381017) b!2394506))

(assert (= (and b!2394501 (not c!381017)) b!2394509))

(assert (= (and b!2394509 c!381019) b!2394508))

(assert (= (and b!2394509 (not c!381019)) b!2394500))

(declare-fun m!2793675 () Bool)

(assert (=> b!2394506 m!2793675))

(assert (=> b!2394507 m!2793275))

(assert (=> b!2394501 m!2793285))

(assert (=> b!2394508 m!2793263))

(declare-fun m!2793677 () Bool)

(assert (=> b!2394500 m!2793677))

(declare-fun m!2793679 () Bool)

(assert (=> b!2394504 m!2793679))

(assert (=> b!2394509 m!2793269))

(assert (=> b!2394509 m!2793269))

(declare-fun m!2793681 () Bool)

(assert (=> b!2394509 m!2793681))

(declare-fun m!2793683 () Bool)

(assert (=> d!698735 m!2793683))

(declare-fun m!2793685 () Bool)

(assert (=> d!698735 m!2793685))

(assert (=> b!2393978 d!698735))

(declare-fun b!2394528 () Bool)

(declare-fun e!1526095 () Bool)

(declare-fun e!1526100 () Bool)

(assert (=> b!2394528 (= e!1526095 e!1526100)))

(declare-fun c!381025 () Bool)

(assert (=> b!2394528 (= c!381025 ((_ is Star!7017) r!13927))))

(declare-fun b!2394529 () Bool)

(declare-fun e!1526096 () Bool)

(declare-fun call!145998 () Bool)

(assert (=> b!2394529 (= e!1526096 call!145998)))

(declare-fun b!2394531 () Bool)

(declare-fun e!1526097 () Bool)

(declare-fun call!145996 () Bool)

(assert (=> b!2394531 (= e!1526097 call!145996)))

(declare-fun b!2394532 () Bool)

(declare-fun e!1526098 () Bool)

(assert (=> b!2394532 (= e!1526100 e!1526098)))

(declare-fun res!1017360 () Bool)

(assert (=> b!2394532 (= res!1017360 (not (nullable!2066 (reg!7346 r!13927))))))

(assert (=> b!2394532 (=> (not res!1017360) (not e!1526098))))

(declare-fun b!2394533 () Bool)

(declare-fun e!1526094 () Bool)

(assert (=> b!2394533 (= e!1526094 e!1526096)))

(declare-fun res!1017356 () Bool)

(assert (=> b!2394533 (=> (not res!1017356) (not e!1526096))))

(assert (=> b!2394533 (= res!1017356 call!145996)))

(declare-fun c!381026 () Bool)

(declare-fun bm!145991 () Bool)

(declare-fun call!145997 () Bool)

(assert (=> bm!145991 (= call!145997 (validRegex!2742 (ite c!381025 (reg!7346 r!13927) (ite c!381026 (regTwo!14547 r!13927) (regOne!14546 r!13927)))))))

(declare-fun b!2394534 () Bool)

(assert (=> b!2394534 (= e!1526098 call!145997)))

(declare-fun b!2394535 () Bool)

(declare-fun res!1017359 () Bool)

(assert (=> b!2394535 (=> res!1017359 e!1526094)))

(assert (=> b!2394535 (= res!1017359 (not ((_ is Concat!11653) r!13927)))))

(declare-fun e!1526099 () Bool)

(assert (=> b!2394535 (= e!1526099 e!1526094)))

(declare-fun bm!145992 () Bool)

(assert (=> bm!145992 (= call!145998 (validRegex!2742 (ite c!381026 (regOne!14547 r!13927) (regTwo!14546 r!13927))))))

(declare-fun b!2394536 () Bool)

(declare-fun res!1017358 () Bool)

(assert (=> b!2394536 (=> (not res!1017358) (not e!1526097))))

(assert (=> b!2394536 (= res!1017358 call!145998)))

(assert (=> b!2394536 (= e!1526099 e!1526097)))

(declare-fun bm!145993 () Bool)

(assert (=> bm!145993 (= call!145996 call!145997)))

(declare-fun b!2394530 () Bool)

(assert (=> b!2394530 (= e!1526100 e!1526099)))

(assert (=> b!2394530 (= c!381026 ((_ is Union!7017) r!13927))))

(declare-fun d!698737 () Bool)

(declare-fun res!1017357 () Bool)

(assert (=> d!698737 (=> res!1017357 e!1526095)))

(assert (=> d!698737 (= res!1017357 ((_ is ElementMatch!7017) r!13927))))

(assert (=> d!698737 (= (validRegex!2742 r!13927) e!1526095)))

(assert (= (and d!698737 (not res!1017357)) b!2394528))

(assert (= (and b!2394528 c!381025) b!2394532))

(assert (= (and b!2394528 (not c!381025)) b!2394530))

(assert (= (and b!2394532 res!1017360) b!2394534))

(assert (= (and b!2394530 c!381026) b!2394536))

(assert (= (and b!2394530 (not c!381026)) b!2394535))

(assert (= (and b!2394536 res!1017358) b!2394531))

(assert (= (and b!2394535 (not res!1017359)) b!2394533))

(assert (= (and b!2394533 res!1017356) b!2394529))

(assert (= (or b!2394536 b!2394529) bm!145992))

(assert (= (or b!2394531 b!2394533) bm!145993))

(assert (= (or b!2394534 bm!145993) bm!145991))

(declare-fun m!2793687 () Bool)

(assert (=> b!2394532 m!2793687))

(declare-fun m!2793689 () Bool)

(assert (=> bm!145991 m!2793689))

(declare-fun m!2793691 () Bool)

(assert (=> bm!145992 m!2793691))

(assert (=> b!2394000 d!698737))

(declare-fun d!698739 () Bool)

(assert (=> d!698739 (= (isEmpty!16159 l!9164) ((_ is Nil!28175) l!9164))))

(assert (=> b!2393979 d!698739))

(declare-fun d!698741 () Bool)

(assert (=> d!698741 (= (isDefined!4388 (findConcatSeparation!668 (h!33576 l!9164) (generalisedConcat!118 (t!208250 l!9164)) Nil!28174 s!9460 s!9460)) (not (isEmpty!16162 (findConcatSeparation!668 (h!33576 l!9164) (generalisedConcat!118 (t!208250 l!9164)) Nil!28174 s!9460 s!9460))))))

(declare-fun bs!462776 () Bool)

(assert (= bs!462776 d!698741))

(assert (=> bs!462776 m!2793277))

(declare-fun m!2793693 () Bool)

(assert (=> bs!462776 m!2793693))

(assert (=> b!2394001 d!698741))

(declare-fun b!2394537 () Bool)

(declare-fun e!1526104 () Bool)

(declare-fun lt!871315 () Option!5560)

(assert (=> b!2394537 (= e!1526104 (not (isDefined!4388 lt!871315)))))

(declare-fun b!2394538 () Bool)

(declare-fun e!1526102 () Option!5560)

(assert (=> b!2394538 (= e!1526102 (Some!5559 (tuple2!27899 Nil!28174 s!9460)))))

(declare-fun b!2394539 () Bool)

(declare-fun lt!871314 () Unit!41228)

(declare-fun lt!871316 () Unit!41228)

(assert (=> b!2394539 (= lt!871314 lt!871316)))

(assert (=> b!2394539 (= (++!6971 (++!6971 Nil!28174 (Cons!28174 (h!33575 s!9460) Nil!28174)) (t!208249 s!9460)) s!9460)))

(assert (=> b!2394539 (= lt!871316 (lemmaMoveElementToOtherListKeepsConcatEq!613 Nil!28174 (h!33575 s!9460) (t!208249 s!9460) s!9460))))

(declare-fun e!1526105 () Option!5560)

(assert (=> b!2394539 (= e!1526105 (findConcatSeparation!668 (h!33576 l!9164) (generalisedConcat!118 (t!208250 l!9164)) (++!6971 Nil!28174 (Cons!28174 (h!33575 s!9460) Nil!28174)) (t!208249 s!9460) s!9460))))

(declare-fun b!2394540 () Bool)

(declare-fun e!1526103 () Bool)

(assert (=> b!2394540 (= e!1526103 (= (++!6971 (_1!16490 (get!8623 lt!871315)) (_2!16490 (get!8623 lt!871315))) s!9460))))

(declare-fun b!2394541 () Bool)

(declare-fun res!1017361 () Bool)

(assert (=> b!2394541 (=> (not res!1017361) (not e!1526103))))

(assert (=> b!2394541 (= res!1017361 (matchR!3134 (generalisedConcat!118 (t!208250 l!9164)) (_2!16490 (get!8623 lt!871315))))))

(declare-fun d!698743 () Bool)

(assert (=> d!698743 e!1526104))

(declare-fun res!1017363 () Bool)

(assert (=> d!698743 (=> res!1017363 e!1526104)))

(assert (=> d!698743 (= res!1017363 e!1526103)))

(declare-fun res!1017362 () Bool)

(assert (=> d!698743 (=> (not res!1017362) (not e!1526103))))

(assert (=> d!698743 (= res!1017362 (isDefined!4388 lt!871315))))

(assert (=> d!698743 (= lt!871315 e!1526102)))

(declare-fun c!381028 () Bool)

(declare-fun e!1526101 () Bool)

(assert (=> d!698743 (= c!381028 e!1526101)))

(declare-fun res!1017364 () Bool)

(assert (=> d!698743 (=> (not res!1017364) (not e!1526101))))

(assert (=> d!698743 (= res!1017364 (matchR!3134 (h!33576 l!9164) Nil!28174))))

(assert (=> d!698743 (validRegex!2742 (h!33576 l!9164))))

(assert (=> d!698743 (= (findConcatSeparation!668 (h!33576 l!9164) (generalisedConcat!118 (t!208250 l!9164)) Nil!28174 s!9460 s!9460) lt!871315)))

(declare-fun b!2394542 () Bool)

(assert (=> b!2394542 (= e!1526105 None!5559)))

(declare-fun b!2394543 () Bool)

(assert (=> b!2394543 (= e!1526101 (matchR!3134 (generalisedConcat!118 (t!208250 l!9164)) s!9460))))

(declare-fun b!2394544 () Bool)

(assert (=> b!2394544 (= e!1526102 e!1526105)))

(declare-fun c!381027 () Bool)

(assert (=> b!2394544 (= c!381027 ((_ is Nil!28174) s!9460))))

(declare-fun b!2394545 () Bool)

(declare-fun res!1017365 () Bool)

(assert (=> b!2394545 (=> (not res!1017365) (not e!1526103))))

(assert (=> b!2394545 (= res!1017365 (matchR!3134 (h!33576 l!9164) (_1!16490 (get!8623 lt!871315))))))

(assert (= (and d!698743 res!1017364) b!2394543))

(assert (= (and d!698743 c!381028) b!2394538))

(assert (= (and d!698743 (not c!381028)) b!2394544))

(assert (= (and b!2394544 c!381027) b!2394542))

(assert (= (and b!2394544 (not c!381027)) b!2394539))

(assert (= (and d!698743 res!1017362) b!2394545))

(assert (= (and b!2394545 res!1017365) b!2394541))

(assert (= (and b!2394541 res!1017361) b!2394540))

(assert (= (and d!698743 (not res!1017363)) b!2394537))

(declare-fun m!2793695 () Bool)

(assert (=> b!2394545 m!2793695))

(declare-fun m!2793697 () Bool)

(assert (=> b!2394545 m!2793697))

(declare-fun m!2793699 () Bool)

(assert (=> b!2394537 m!2793699))

(assert (=> d!698743 m!2793699))

(declare-fun m!2793701 () Bool)

(assert (=> d!698743 m!2793701))

(declare-fun m!2793703 () Bool)

(assert (=> d!698743 m!2793703))

(assert (=> b!2394543 m!2793275))

(declare-fun m!2793705 () Bool)

(assert (=> b!2394543 m!2793705))

(assert (=> b!2394540 m!2793695))

(declare-fun m!2793707 () Bool)

(assert (=> b!2394540 m!2793707))

(assert (=> b!2394539 m!2793665))

(assert (=> b!2394539 m!2793665))

(assert (=> b!2394539 m!2793667))

(assert (=> b!2394539 m!2793669))

(assert (=> b!2394539 m!2793275))

(assert (=> b!2394539 m!2793665))

(declare-fun m!2793709 () Bool)

(assert (=> b!2394539 m!2793709))

(assert (=> b!2394541 m!2793695))

(assert (=> b!2394541 m!2793275))

(declare-fun m!2793711 () Bool)

(assert (=> b!2394541 m!2793711))

(assert (=> b!2394001 d!698743))

(declare-fun bs!462777 () Bool)

(declare-fun d!698745 () Bool)

(assert (= bs!462777 (and d!698745 start!234904)))

(declare-fun lambda!89809 () Int)

(assert (=> bs!462777 (= lambda!89809 lambda!89777)))

(declare-fun bs!462778 () Bool)

(assert (= bs!462778 (and d!698745 d!698735)))

(assert (=> bs!462778 (= lambda!89809 lambda!89808)))

(declare-fun b!2394546 () Bool)

(declare-fun e!1526106 () Bool)

(declare-fun lt!871317 () Regex!7017)

(assert (=> b!2394546 (= e!1526106 (isConcat!87 lt!871317))))

(declare-fun b!2394547 () Bool)

(declare-fun e!1526107 () Bool)

(declare-fun e!1526108 () Bool)

(assert (=> b!2394547 (= e!1526107 e!1526108)))

(declare-fun c!381029 () Bool)

(assert (=> b!2394547 (= c!381029 (isEmpty!16159 (t!208250 l!9164)))))

(declare-fun b!2394549 () Bool)

(declare-fun e!1526109 () Regex!7017)

(declare-fun e!1526111 () Regex!7017)

(assert (=> b!2394549 (= e!1526109 e!1526111)))

(declare-fun c!381032 () Bool)

(assert (=> b!2394549 (= c!381032 ((_ is Cons!28175) (t!208250 l!9164)))))

(declare-fun b!2394550 () Bool)

(declare-fun e!1526110 () Bool)

(assert (=> b!2394550 (= e!1526110 (isEmpty!16159 (t!208250 (t!208250 l!9164))))))

(declare-fun b!2394551 () Bool)

(assert (=> b!2394551 (= e!1526111 EmptyExpr!7017)))

(declare-fun b!2394548 () Bool)

(assert (=> b!2394548 (= e!1526109 (h!33576 (t!208250 l!9164)))))

(assert (=> d!698745 e!1526107))

(declare-fun res!1017366 () Bool)

(assert (=> d!698745 (=> (not res!1017366) (not e!1526107))))

(assert (=> d!698745 (= res!1017366 (validRegex!2742 lt!871317))))

(assert (=> d!698745 (= lt!871317 e!1526109)))

(declare-fun c!381030 () Bool)

(assert (=> d!698745 (= c!381030 e!1526110)))

(declare-fun res!1017367 () Bool)

(assert (=> d!698745 (=> (not res!1017367) (not e!1526110))))

(assert (=> d!698745 (= res!1017367 ((_ is Cons!28175) (t!208250 l!9164)))))

(assert (=> d!698745 (forall!5651 (t!208250 l!9164) lambda!89809)))

(assert (=> d!698745 (= (generalisedConcat!118 (t!208250 l!9164)) lt!871317)))

(declare-fun b!2394552 () Bool)

(assert (=> b!2394552 (= e!1526108 (isEmptyExpr!87 lt!871317))))

(declare-fun b!2394553 () Bool)

(assert (=> b!2394553 (= e!1526111 (Concat!11653 (h!33576 (t!208250 l!9164)) (generalisedConcat!118 (t!208250 (t!208250 l!9164)))))))

(declare-fun b!2394554 () Bool)

(assert (=> b!2394554 (= e!1526106 (= lt!871317 (head!5265 (t!208250 l!9164))))))

(declare-fun b!2394555 () Bool)

(assert (=> b!2394555 (= e!1526108 e!1526106)))

(declare-fun c!381031 () Bool)

(assert (=> b!2394555 (= c!381031 (isEmpty!16159 (tail!3535 (t!208250 l!9164))))))

(assert (= (and d!698745 res!1017367) b!2394550))

(assert (= (and d!698745 c!381030) b!2394548))

(assert (= (and d!698745 (not c!381030)) b!2394549))

(assert (= (and b!2394549 c!381032) b!2394553))

(assert (= (and b!2394549 (not c!381032)) b!2394551))

(assert (= (and d!698745 res!1017366) b!2394547))

(assert (= (and b!2394547 c!381029) b!2394552))

(assert (= (and b!2394547 (not c!381029)) b!2394555))

(assert (= (and b!2394555 c!381031) b!2394554))

(assert (= (and b!2394555 (not c!381031)) b!2394546))

(declare-fun m!2793713 () Bool)

(assert (=> b!2394552 m!2793713))

(declare-fun m!2793715 () Bool)

(assert (=> b!2394553 m!2793715))

(assert (=> b!2394547 m!2793679))

(declare-fun m!2793717 () Bool)

(assert (=> b!2394554 m!2793717))

(declare-fun m!2793719 () Bool)

(assert (=> b!2394546 m!2793719))

(declare-fun m!2793721 () Bool)

(assert (=> b!2394550 m!2793721))

(declare-fun m!2793723 () Bool)

(assert (=> b!2394555 m!2793723))

(assert (=> b!2394555 m!2793723))

(declare-fun m!2793725 () Bool)

(assert (=> b!2394555 m!2793725))

(declare-fun m!2793727 () Bool)

(assert (=> d!698745 m!2793727))

(declare-fun m!2793729 () Bool)

(assert (=> d!698745 m!2793729))

(assert (=> b!2394001 d!698745))

(declare-fun d!698747 () Bool)

(assert (=> d!698747 (= (isDefined!4388 (ite c!380904 call!145952 call!145949)) (not (isEmpty!16162 (ite c!380904 call!145952 call!145949))))))

(declare-fun bs!462779 () Bool)

(assert (= bs!462779 d!698747))

(declare-fun m!2793731 () Bool)

(assert (=> bs!462779 m!2793731))

(assert (=> bm!145948 d!698747))

(declare-fun d!698749 () Bool)

(declare-fun choose!14136 (Int) Bool)

(assert (=> d!698749 (= (Exists!1079 lambda!89779) (choose!14136 lambda!89779))))

(declare-fun bs!462780 () Bool)

(assert (= bs!462780 d!698749))

(declare-fun m!2793733 () Bool)

(assert (=> bs!462780 m!2793733))

(assert (=> b!2393977 d!698749))

(declare-fun d!698751 () Bool)

(assert (=> d!698751 (= (isDefined!4388 (findConcatSeparation!668 (regOne!14546 r!13927) (regTwo!14546 r!13927) Nil!28174 s!9460 s!9460)) (not (isEmpty!16162 (findConcatSeparation!668 (regOne!14546 r!13927) (regTwo!14546 r!13927) Nil!28174 s!9460 s!9460))))))

(declare-fun bs!462781 () Bool)

(assert (= bs!462781 d!698751))

(assert (=> bs!462781 m!2793301))

(declare-fun m!2793735 () Bool)

(assert (=> bs!462781 m!2793735))

(assert (=> b!2393977 d!698751))

(declare-fun bs!462782 () Bool)

(declare-fun d!698753 () Bool)

(assert (= bs!462782 (and d!698753 b!2393977)))

(declare-fun lambda!89814 () Int)

(assert (=> bs!462782 (= lambda!89814 lambda!89778)))

(assert (=> bs!462782 (not (= lambda!89814 lambda!89779))))

(declare-fun bs!462783 () Bool)

(assert (= bs!462783 (and d!698753 b!2394347)))

(assert (=> bs!462783 (not (= lambda!89814 lambda!89803))))

(declare-fun bs!462784 () Bool)

(assert (= bs!462784 (and d!698753 b!2394344)))

(assert (=> bs!462784 (not (= lambda!89814 lambda!89804))))

(assert (=> d!698753 true))

(assert (=> d!698753 true))

(assert (=> d!698753 true))

(declare-fun lambda!89815 () Int)

(assert (=> bs!462784 (= lambda!89815 lambda!89804)))

(assert (=> bs!462782 (= lambda!89815 lambda!89779)))

(assert (=> bs!462783 (not (= lambda!89815 lambda!89803))))

(declare-fun bs!462785 () Bool)

(assert (= bs!462785 d!698753))

(assert (=> bs!462785 (not (= lambda!89815 lambda!89814))))

(assert (=> bs!462782 (not (= lambda!89815 lambda!89778))))

(assert (=> d!698753 true))

(assert (=> d!698753 true))

(assert (=> d!698753 true))

(assert (=> d!698753 (= (Exists!1079 lambda!89814) (Exists!1079 lambda!89815))))

(declare-fun lt!871320 () Unit!41228)

(declare-fun choose!14137 (Regex!7017 Regex!7017 List!28272) Unit!41228)

(assert (=> d!698753 (= lt!871320 (choose!14137 (regOne!14546 r!13927) (regTwo!14546 r!13927) s!9460))))

(assert (=> d!698753 (validRegex!2742 (regOne!14546 r!13927))))

(assert (=> d!698753 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!418 (regOne!14546 r!13927) (regTwo!14546 r!13927) s!9460) lt!871320)))

(declare-fun m!2793737 () Bool)

(assert (=> bs!462785 m!2793737))

(declare-fun m!2793739 () Bool)

(assert (=> bs!462785 m!2793739))

(declare-fun m!2793741 () Bool)

(assert (=> bs!462785 m!2793741))

(declare-fun m!2793743 () Bool)

(assert (=> bs!462785 m!2793743))

(assert (=> b!2393977 d!698753))

(declare-fun b!2394564 () Bool)

(declare-fun e!1526119 () Bool)

(declare-fun lt!871322 () Option!5560)

(assert (=> b!2394564 (= e!1526119 (not (isDefined!4388 lt!871322)))))

(declare-fun b!2394565 () Bool)

(declare-fun e!1526117 () Option!5560)

(assert (=> b!2394565 (= e!1526117 (Some!5559 (tuple2!27899 Nil!28174 s!9460)))))

(declare-fun b!2394566 () Bool)

(declare-fun lt!871321 () Unit!41228)

(declare-fun lt!871323 () Unit!41228)

(assert (=> b!2394566 (= lt!871321 lt!871323)))

(assert (=> b!2394566 (= (++!6971 (++!6971 Nil!28174 (Cons!28174 (h!33575 s!9460) Nil!28174)) (t!208249 s!9460)) s!9460)))

(assert (=> b!2394566 (= lt!871323 (lemmaMoveElementToOtherListKeepsConcatEq!613 Nil!28174 (h!33575 s!9460) (t!208249 s!9460) s!9460))))

(declare-fun e!1526120 () Option!5560)

(assert (=> b!2394566 (= e!1526120 (findConcatSeparation!668 (regOne!14546 r!13927) (regTwo!14546 r!13927) (++!6971 Nil!28174 (Cons!28174 (h!33575 s!9460) Nil!28174)) (t!208249 s!9460) s!9460))))

(declare-fun b!2394567 () Bool)

(declare-fun e!1526118 () Bool)

(assert (=> b!2394567 (= e!1526118 (= (++!6971 (_1!16490 (get!8623 lt!871322)) (_2!16490 (get!8623 lt!871322))) s!9460))))

(declare-fun b!2394568 () Bool)

(declare-fun res!1017376 () Bool)

(assert (=> b!2394568 (=> (not res!1017376) (not e!1526118))))

(assert (=> b!2394568 (= res!1017376 (matchR!3134 (regTwo!14546 r!13927) (_2!16490 (get!8623 lt!871322))))))

(declare-fun d!698755 () Bool)

(assert (=> d!698755 e!1526119))

(declare-fun res!1017378 () Bool)

(assert (=> d!698755 (=> res!1017378 e!1526119)))

(assert (=> d!698755 (= res!1017378 e!1526118)))

(declare-fun res!1017377 () Bool)

(assert (=> d!698755 (=> (not res!1017377) (not e!1526118))))

(assert (=> d!698755 (= res!1017377 (isDefined!4388 lt!871322))))

(assert (=> d!698755 (= lt!871322 e!1526117)))

(declare-fun c!381034 () Bool)

(declare-fun e!1526116 () Bool)

(assert (=> d!698755 (= c!381034 e!1526116)))

(declare-fun res!1017379 () Bool)

(assert (=> d!698755 (=> (not res!1017379) (not e!1526116))))

(assert (=> d!698755 (= res!1017379 (matchR!3134 (regOne!14546 r!13927) Nil!28174))))

(assert (=> d!698755 (validRegex!2742 (regOne!14546 r!13927))))

(assert (=> d!698755 (= (findConcatSeparation!668 (regOne!14546 r!13927) (regTwo!14546 r!13927) Nil!28174 s!9460 s!9460) lt!871322)))

(declare-fun b!2394569 () Bool)

(assert (=> b!2394569 (= e!1526120 None!5559)))

(declare-fun b!2394570 () Bool)

(assert (=> b!2394570 (= e!1526116 (matchR!3134 (regTwo!14546 r!13927) s!9460))))

(declare-fun b!2394571 () Bool)

(assert (=> b!2394571 (= e!1526117 e!1526120)))

(declare-fun c!381033 () Bool)

(assert (=> b!2394571 (= c!381033 ((_ is Nil!28174) s!9460))))

(declare-fun b!2394572 () Bool)

(declare-fun res!1017380 () Bool)

(assert (=> b!2394572 (=> (not res!1017380) (not e!1526118))))

(assert (=> b!2394572 (= res!1017380 (matchR!3134 (regOne!14546 r!13927) (_1!16490 (get!8623 lt!871322))))))

(assert (= (and d!698755 res!1017379) b!2394570))

(assert (= (and d!698755 c!381034) b!2394565))

(assert (= (and d!698755 (not c!381034)) b!2394571))

(assert (= (and b!2394571 c!381033) b!2394569))

(assert (= (and b!2394571 (not c!381033)) b!2394566))

(assert (= (and d!698755 res!1017377) b!2394572))

(assert (= (and b!2394572 res!1017380) b!2394568))

(assert (= (and b!2394568 res!1017376) b!2394567))

(assert (= (and d!698755 (not res!1017378)) b!2394564))

(declare-fun m!2793745 () Bool)

(assert (=> b!2394572 m!2793745))

(declare-fun m!2793747 () Bool)

(assert (=> b!2394572 m!2793747))

(declare-fun m!2793749 () Bool)

(assert (=> b!2394564 m!2793749))

(assert (=> d!698755 m!2793749))

(declare-fun m!2793751 () Bool)

(assert (=> d!698755 m!2793751))

(assert (=> d!698755 m!2793743))

(declare-fun m!2793753 () Bool)

(assert (=> b!2394570 m!2793753))

(assert (=> b!2394567 m!2793745))

(declare-fun m!2793755 () Bool)

(assert (=> b!2394567 m!2793755))

(assert (=> b!2394566 m!2793665))

(assert (=> b!2394566 m!2793665))

(assert (=> b!2394566 m!2793667))

(assert (=> b!2394566 m!2793669))

(assert (=> b!2394566 m!2793665))

(declare-fun m!2793757 () Bool)

(assert (=> b!2394566 m!2793757))

(assert (=> b!2394568 m!2793745))

(declare-fun m!2793759 () Bool)

(assert (=> b!2394568 m!2793759))

(assert (=> b!2393977 d!698755))

(declare-fun bs!462786 () Bool)

(declare-fun d!698757 () Bool)

(assert (= bs!462786 (and d!698757 b!2394344)))

(declare-fun lambda!89818 () Int)

(assert (=> bs!462786 (not (= lambda!89818 lambda!89804))))

(declare-fun bs!462787 () Bool)

(assert (= bs!462787 (and d!698757 b!2393977)))

(assert (=> bs!462787 (not (= lambda!89818 lambda!89779))))

(declare-fun bs!462788 () Bool)

(assert (= bs!462788 (and d!698757 b!2394347)))

(assert (=> bs!462788 (not (= lambda!89818 lambda!89803))))

(declare-fun bs!462789 () Bool)

(assert (= bs!462789 (and d!698757 d!698753)))

(assert (=> bs!462789 (not (= lambda!89818 lambda!89815))))

(assert (=> bs!462789 (= lambda!89818 lambda!89814)))

(assert (=> bs!462787 (= lambda!89818 lambda!89778)))

(assert (=> d!698757 true))

(assert (=> d!698757 true))

(assert (=> d!698757 true))

(assert (=> d!698757 (= (isDefined!4388 (findConcatSeparation!668 (regOne!14546 r!13927) (regTwo!14546 r!13927) Nil!28174 s!9460 s!9460)) (Exists!1079 lambda!89818))))

(declare-fun lt!871326 () Unit!41228)

(declare-fun choose!14138 (Regex!7017 Regex!7017 List!28272) Unit!41228)

(assert (=> d!698757 (= lt!871326 (choose!14138 (regOne!14546 r!13927) (regTwo!14546 r!13927) s!9460))))

(assert (=> d!698757 (validRegex!2742 (regOne!14546 r!13927))))

(assert (=> d!698757 (= (lemmaFindConcatSeparationEquivalentToExists!668 (regOne!14546 r!13927) (regTwo!14546 r!13927) s!9460) lt!871326)))

(declare-fun bs!462790 () Bool)

(assert (= bs!462790 d!698757))

(declare-fun m!2793761 () Bool)

(assert (=> bs!462790 m!2793761))

(declare-fun m!2793763 () Bool)

(assert (=> bs!462790 m!2793763))

(assert (=> bs!462790 m!2793301))

(assert (=> bs!462790 m!2793301))

(assert (=> bs!462790 m!2793303))

(assert (=> bs!462790 m!2793743))

(assert (=> b!2393977 d!698757))

(declare-fun d!698759 () Bool)

(assert (=> d!698759 (= (Exists!1079 lambda!89778) (choose!14136 lambda!89778))))

(declare-fun bs!462791 () Bool)

(assert (= bs!462791 d!698759))

(declare-fun m!2793765 () Bool)

(assert (=> bs!462791 m!2793765))

(assert (=> b!2393977 d!698759))

(declare-fun bs!462792 () Bool)

(declare-fun d!698761 () Bool)

(assert (= bs!462792 (and d!698761 start!234904)))

(declare-fun lambda!89819 () Int)

(assert (=> bs!462792 (= lambda!89819 lambda!89777)))

(declare-fun bs!462793 () Bool)

(assert (= bs!462793 (and d!698761 d!698735)))

(assert (=> bs!462793 (= lambda!89819 lambda!89808)))

(declare-fun bs!462794 () Bool)

(assert (= bs!462794 (and d!698761 d!698745)))

(assert (=> bs!462794 (= lambda!89819 lambda!89809)))

(declare-fun b!2394577 () Bool)

(declare-fun e!1526123 () Bool)

(declare-fun lt!871327 () Regex!7017)

(assert (=> b!2394577 (= e!1526123 (isConcat!87 lt!871327))))

(declare-fun b!2394578 () Bool)

(declare-fun e!1526124 () Bool)

(declare-fun e!1526125 () Bool)

(assert (=> b!2394578 (= e!1526124 e!1526125)))

(declare-fun c!381035 () Bool)

(assert (=> b!2394578 (= c!381035 (isEmpty!16159 lt!871223))))

(declare-fun b!2394580 () Bool)

(declare-fun e!1526126 () Regex!7017)

(declare-fun e!1526128 () Regex!7017)

(assert (=> b!2394580 (= e!1526126 e!1526128)))

(declare-fun c!381038 () Bool)

(assert (=> b!2394580 (= c!381038 ((_ is Cons!28175) lt!871223))))

(declare-fun b!2394581 () Bool)

(declare-fun e!1526127 () Bool)

(assert (=> b!2394581 (= e!1526127 (isEmpty!16159 (t!208250 lt!871223)))))

(declare-fun b!2394582 () Bool)

(assert (=> b!2394582 (= e!1526128 EmptyExpr!7017)))

(declare-fun b!2394579 () Bool)

(assert (=> b!2394579 (= e!1526126 (h!33576 lt!871223))))

(assert (=> d!698761 e!1526124))

(declare-fun res!1017385 () Bool)

(assert (=> d!698761 (=> (not res!1017385) (not e!1526124))))

(assert (=> d!698761 (= res!1017385 (validRegex!2742 lt!871327))))

(assert (=> d!698761 (= lt!871327 e!1526126)))

(declare-fun c!381036 () Bool)

(assert (=> d!698761 (= c!381036 e!1526127)))

(declare-fun res!1017386 () Bool)

(assert (=> d!698761 (=> (not res!1017386) (not e!1526127))))

(assert (=> d!698761 (= res!1017386 ((_ is Cons!28175) lt!871223))))

(assert (=> d!698761 (forall!5651 lt!871223 lambda!89819)))

(assert (=> d!698761 (= (generalisedConcat!118 lt!871223) lt!871327)))

(declare-fun b!2394583 () Bool)

(assert (=> b!2394583 (= e!1526125 (isEmptyExpr!87 lt!871327))))

(declare-fun b!2394584 () Bool)

(assert (=> b!2394584 (= e!1526128 (Concat!11653 (h!33576 lt!871223) (generalisedConcat!118 (t!208250 lt!871223))))))

(declare-fun b!2394585 () Bool)

(assert (=> b!2394585 (= e!1526123 (= lt!871327 (head!5265 lt!871223)))))

(declare-fun b!2394586 () Bool)

(assert (=> b!2394586 (= e!1526125 e!1526123)))

(declare-fun c!381037 () Bool)

(assert (=> b!2394586 (= c!381037 (isEmpty!16159 (tail!3535 lt!871223)))))

(assert (= (and d!698761 res!1017386) b!2394581))

(assert (= (and d!698761 c!381036) b!2394579))

(assert (= (and d!698761 (not c!381036)) b!2394580))

(assert (= (and b!2394580 c!381038) b!2394584))

(assert (= (and b!2394580 (not c!381038)) b!2394582))

(assert (= (and d!698761 res!1017385) b!2394578))

(assert (= (and b!2394578 c!381035) b!2394583))

(assert (= (and b!2394578 (not c!381035)) b!2394586))

(assert (= (and b!2394586 c!381037) b!2394585))

(assert (= (and b!2394586 (not c!381037)) b!2394577))

(declare-fun m!2793767 () Bool)

(assert (=> b!2394583 m!2793767))

(declare-fun m!2793769 () Bool)

(assert (=> b!2394584 m!2793769))

(assert (=> b!2394578 m!2793271))

(declare-fun m!2793771 () Bool)

(assert (=> b!2394585 m!2793771))

(declare-fun m!2793773 () Bool)

(assert (=> b!2394577 m!2793773))

(declare-fun m!2793775 () Bool)

(assert (=> b!2394581 m!2793775))

(declare-fun m!2793777 () Bool)

(assert (=> b!2394586 m!2793777))

(assert (=> b!2394586 m!2793777))

(declare-fun m!2793779 () Bool)

(assert (=> b!2394586 m!2793779))

(declare-fun m!2793781 () Bool)

(assert (=> d!698761 m!2793781))

(declare-fun m!2793783 () Bool)

(assert (=> d!698761 m!2793783))

(assert (=> bm!145952 d!698761))

(declare-fun b!2394587 () Bool)

(declare-fun e!1526132 () Bool)

(declare-fun lt!871329 () Option!5560)

(assert (=> b!2394587 (= e!1526132 (not (isDefined!4388 lt!871329)))))

(declare-fun b!2394588 () Bool)

(declare-fun e!1526130 () Option!5560)

(assert (=> b!2394588 (= e!1526130 (Some!5559 (tuple2!27899 Nil!28174 s!9460)))))

(declare-fun b!2394589 () Bool)

(declare-fun lt!871328 () Unit!41228)

(declare-fun lt!871330 () Unit!41228)

(assert (=> b!2394589 (= lt!871328 lt!871330)))

(assert (=> b!2394589 (= (++!6971 (++!6971 Nil!28174 (Cons!28174 (h!33575 s!9460) Nil!28174)) (t!208249 s!9460)) s!9460)))

(assert (=> b!2394589 (= lt!871330 (lemmaMoveElementToOtherListKeepsConcatEq!613 Nil!28174 (h!33575 s!9460) (t!208249 s!9460) s!9460))))

(declare-fun e!1526133 () Option!5560)

(assert (=> b!2394589 (= e!1526133 (findConcatSeparation!668 lt!871230 EmptyExpr!7017 (++!6971 Nil!28174 (Cons!28174 (h!33575 s!9460) Nil!28174)) (t!208249 s!9460) s!9460))))

(declare-fun b!2394590 () Bool)

(declare-fun e!1526131 () Bool)

(assert (=> b!2394590 (= e!1526131 (= (++!6971 (_1!16490 (get!8623 lt!871329)) (_2!16490 (get!8623 lt!871329))) s!9460))))

(declare-fun b!2394591 () Bool)

(declare-fun res!1017387 () Bool)

(assert (=> b!2394591 (=> (not res!1017387) (not e!1526131))))

(assert (=> b!2394591 (= res!1017387 (matchR!3134 EmptyExpr!7017 (_2!16490 (get!8623 lt!871329))))))

(declare-fun d!698763 () Bool)

(assert (=> d!698763 e!1526132))

(declare-fun res!1017389 () Bool)

(assert (=> d!698763 (=> res!1017389 e!1526132)))

(assert (=> d!698763 (= res!1017389 e!1526131)))

(declare-fun res!1017388 () Bool)

(assert (=> d!698763 (=> (not res!1017388) (not e!1526131))))

(assert (=> d!698763 (= res!1017388 (isDefined!4388 lt!871329))))

(assert (=> d!698763 (= lt!871329 e!1526130)))

(declare-fun c!381040 () Bool)

(declare-fun e!1526129 () Bool)

(assert (=> d!698763 (= c!381040 e!1526129)))

(declare-fun res!1017390 () Bool)

(assert (=> d!698763 (=> (not res!1017390) (not e!1526129))))

(assert (=> d!698763 (= res!1017390 (matchR!3134 lt!871230 Nil!28174))))

(assert (=> d!698763 (validRegex!2742 lt!871230)))

(assert (=> d!698763 (= (findConcatSeparation!668 lt!871230 EmptyExpr!7017 Nil!28174 s!9460 s!9460) lt!871329)))

(declare-fun b!2394592 () Bool)

(assert (=> b!2394592 (= e!1526133 None!5559)))

(declare-fun b!2394593 () Bool)

(assert (=> b!2394593 (= e!1526129 (matchR!3134 EmptyExpr!7017 s!9460))))

(declare-fun b!2394594 () Bool)

(assert (=> b!2394594 (= e!1526130 e!1526133)))

(declare-fun c!381039 () Bool)

(assert (=> b!2394594 (= c!381039 ((_ is Nil!28174) s!9460))))

(declare-fun b!2394595 () Bool)

(declare-fun res!1017391 () Bool)

(assert (=> b!2394595 (=> (not res!1017391) (not e!1526131))))

(assert (=> b!2394595 (= res!1017391 (matchR!3134 lt!871230 (_1!16490 (get!8623 lt!871329))))))

(assert (= (and d!698763 res!1017390) b!2394593))

(assert (= (and d!698763 c!381040) b!2394588))

(assert (= (and d!698763 (not c!381040)) b!2394594))

(assert (= (and b!2394594 c!381039) b!2394592))

(assert (= (and b!2394594 (not c!381039)) b!2394589))

(assert (= (and d!698763 res!1017388) b!2394595))

(assert (= (and b!2394595 res!1017391) b!2394591))

(assert (= (and b!2394591 res!1017387) b!2394590))

(assert (= (and d!698763 (not res!1017389)) b!2394587))

(declare-fun m!2793785 () Bool)

(assert (=> b!2394595 m!2793785))

(declare-fun m!2793787 () Bool)

(assert (=> b!2394595 m!2793787))

(declare-fun m!2793789 () Bool)

(assert (=> b!2394587 m!2793789))

(assert (=> d!698763 m!2793789))

(declare-fun m!2793791 () Bool)

(assert (=> d!698763 m!2793791))

(assert (=> d!698763 m!2793373))

(declare-fun m!2793793 () Bool)

(assert (=> b!2394593 m!2793793))

(assert (=> b!2394590 m!2793785))

(declare-fun m!2793795 () Bool)

(assert (=> b!2394590 m!2793795))

(assert (=> b!2394589 m!2793665))

(assert (=> b!2394589 m!2793665))

(assert (=> b!2394589 m!2793667))

(assert (=> b!2394589 m!2793669))

(assert (=> b!2394589 m!2793665))

(declare-fun m!2793797 () Bool)

(assert (=> b!2394589 m!2793797))

(assert (=> b!2394591 m!2793785))

(declare-fun m!2793799 () Bool)

(assert (=> b!2394591 m!2793799))

(assert (=> bm!145947 d!698763))

(declare-fun d!698765 () Bool)

(assert (=> d!698765 (= (isEmpty!16160 s!9460) ((_ is Nil!28174) s!9460))))

(assert (=> b!2393986 d!698765))

(declare-fun d!698767 () Bool)

(declare-fun res!1017396 () Bool)

(declare-fun e!1526138 () Bool)

(assert (=> d!698767 (=> res!1017396 e!1526138)))

(assert (=> d!698767 (= res!1017396 ((_ is Nil!28175) l!9164))))

(assert (=> d!698767 (= (forall!5651 l!9164 lambda!89777) e!1526138)))

(declare-fun b!2394600 () Bool)

(declare-fun e!1526139 () Bool)

(assert (=> b!2394600 (= e!1526138 e!1526139)))

(declare-fun res!1017397 () Bool)

(assert (=> b!2394600 (=> (not res!1017397) (not e!1526139))))

(declare-fun dynLambda!12132 (Int Regex!7017) Bool)

(assert (=> b!2394600 (= res!1017397 (dynLambda!12132 lambda!89777 (h!33576 l!9164)))))

(declare-fun b!2394601 () Bool)

(assert (=> b!2394601 (= e!1526139 (forall!5651 (t!208250 l!9164) lambda!89777))))

(assert (= (and d!698767 (not res!1017396)) b!2394600))

(assert (= (and b!2394600 res!1017397) b!2394601))

(declare-fun b_lambda!74231 () Bool)

(assert (=> (not b_lambda!74231) (not b!2394600)))

(declare-fun m!2793801 () Bool)

(assert (=> b!2394600 m!2793801))

(declare-fun m!2793803 () Bool)

(assert (=> b!2394601 m!2793803))

(assert (=> start!234904 d!698767))

(declare-fun b!2394602 () Bool)

(declare-fun res!1017403 () Bool)

(declare-fun e!1526145 () Bool)

(assert (=> b!2394602 (=> res!1017403 e!1526145)))

(declare-fun e!1526143 () Bool)

(assert (=> b!2394602 (= res!1017403 e!1526143)))

(declare-fun res!1017402 () Bool)

(assert (=> b!2394602 (=> (not res!1017402) (not e!1526143))))

(declare-fun lt!871331 () Bool)

(assert (=> b!2394602 (= res!1017402 lt!871331)))

(declare-fun b!2394603 () Bool)

(declare-fun e!1526142 () Bool)

(assert (=> b!2394603 (= e!1526142 (not lt!871331))))

(declare-fun b!2394604 () Bool)

(declare-fun e!1526144 () Bool)

(declare-fun call!145999 () Bool)

(assert (=> b!2394604 (= e!1526144 (= lt!871331 call!145999))))

(declare-fun b!2394605 () Bool)

(declare-fun e!1526141 () Bool)

(assert (=> b!2394605 (= e!1526141 (nullable!2066 (ite c!380900 lt!871218 (Concat!11653 lt!871230 EmptyExpr!7017))))))

(declare-fun b!2394606 () Bool)

(assert (=> b!2394606 (= e!1526141 (matchR!3134 (derivativeStep!1724 (ite c!380900 lt!871218 (Concat!11653 lt!871230 EmptyExpr!7017)) (head!5267 (ite c!380900 s!9460 call!145956))) (tail!3537 (ite c!380900 s!9460 call!145956))))))

(declare-fun b!2394608 () Bool)

(declare-fun e!1526140 () Bool)

(declare-fun e!1526146 () Bool)

(assert (=> b!2394608 (= e!1526140 e!1526146)))

(declare-fun res!1017399 () Bool)

(assert (=> b!2394608 (=> res!1017399 e!1526146)))

(assert (=> b!2394608 (= res!1017399 call!145999)))

(declare-fun b!2394609 () Bool)

(assert (=> b!2394609 (= e!1526144 e!1526142)))

(declare-fun c!381042 () Bool)

(assert (=> b!2394609 (= c!381042 ((_ is EmptyLang!7017) (ite c!380900 lt!871218 (Concat!11653 lt!871230 EmptyExpr!7017))))))

(declare-fun b!2394610 () Bool)

(declare-fun res!1017398 () Bool)

(assert (=> b!2394610 (=> (not res!1017398) (not e!1526143))))

(assert (=> b!2394610 (= res!1017398 (not call!145999))))

(declare-fun b!2394611 () Bool)

(assert (=> b!2394611 (= e!1526146 (not (= (head!5267 (ite c!380900 s!9460 call!145956)) (c!380905 (ite c!380900 lt!871218 (Concat!11653 lt!871230 EmptyExpr!7017))))))))

(declare-fun b!2394612 () Bool)

(declare-fun res!1017405 () Bool)

(assert (=> b!2394612 (=> res!1017405 e!1526146)))

(assert (=> b!2394612 (= res!1017405 (not (isEmpty!16160 (tail!3537 (ite c!380900 s!9460 call!145956)))))))

(declare-fun bm!145994 () Bool)

(assert (=> bm!145994 (= call!145999 (isEmpty!16160 (ite c!380900 s!9460 call!145956)))))

(declare-fun b!2394613 () Bool)

(declare-fun res!1017404 () Bool)

(assert (=> b!2394613 (=> (not res!1017404) (not e!1526143))))

(assert (=> b!2394613 (= res!1017404 (isEmpty!16160 (tail!3537 (ite c!380900 s!9460 call!145956))))))

(declare-fun b!2394614 () Bool)

(assert (=> b!2394614 (= e!1526145 e!1526140)))

(declare-fun res!1017400 () Bool)

(assert (=> b!2394614 (=> (not res!1017400) (not e!1526140))))

(assert (=> b!2394614 (= res!1017400 (not lt!871331))))

(declare-fun b!2394615 () Bool)

(assert (=> b!2394615 (= e!1526143 (= (head!5267 (ite c!380900 s!9460 call!145956)) (c!380905 (ite c!380900 lt!871218 (Concat!11653 lt!871230 EmptyExpr!7017)))))))

(declare-fun b!2394607 () Bool)

(declare-fun res!1017401 () Bool)

(assert (=> b!2394607 (=> res!1017401 e!1526145)))

(assert (=> b!2394607 (= res!1017401 (not ((_ is ElementMatch!7017) (ite c!380900 lt!871218 (Concat!11653 lt!871230 EmptyExpr!7017)))))))

(assert (=> b!2394607 (= e!1526142 e!1526145)))

(declare-fun d!698769 () Bool)

(assert (=> d!698769 e!1526144))

(declare-fun c!381041 () Bool)

(assert (=> d!698769 (= c!381041 ((_ is EmptyExpr!7017) (ite c!380900 lt!871218 (Concat!11653 lt!871230 EmptyExpr!7017))))))

(assert (=> d!698769 (= lt!871331 e!1526141)))

(declare-fun c!381043 () Bool)

(assert (=> d!698769 (= c!381043 (isEmpty!16160 (ite c!380900 s!9460 call!145956)))))

(assert (=> d!698769 (validRegex!2742 (ite c!380900 lt!871218 (Concat!11653 lt!871230 EmptyExpr!7017)))))

(assert (=> d!698769 (= (matchR!3134 (ite c!380900 lt!871218 (Concat!11653 lt!871230 EmptyExpr!7017)) (ite c!380900 s!9460 call!145956)) lt!871331)))

(assert (= (and d!698769 c!381043) b!2394605))

(assert (= (and d!698769 (not c!381043)) b!2394606))

(assert (= (and d!698769 c!381041) b!2394604))

(assert (= (and d!698769 (not c!381041)) b!2394609))

(assert (= (and b!2394609 c!381042) b!2394603))

(assert (= (and b!2394609 (not c!381042)) b!2394607))

(assert (= (and b!2394607 (not res!1017401)) b!2394602))

(assert (= (and b!2394602 res!1017402) b!2394610))

(assert (= (and b!2394610 res!1017398) b!2394613))

(assert (= (and b!2394613 res!1017404) b!2394615))

(assert (= (and b!2394602 (not res!1017403)) b!2394614))

(assert (= (and b!2394614 res!1017400) b!2394608))

(assert (= (and b!2394608 (not res!1017399)) b!2394612))

(assert (= (and b!2394612 (not res!1017405)) b!2394611))

(assert (= (or b!2394604 b!2394608 b!2394610) bm!145994))

(declare-fun m!2793805 () Bool)

(assert (=> b!2394605 m!2793805))

(declare-fun m!2793807 () Bool)

(assert (=> b!2394611 m!2793807))

(declare-fun m!2793809 () Bool)

(assert (=> bm!145994 m!2793809))

(assert (=> b!2394606 m!2793807))

(assert (=> b!2394606 m!2793807))

(declare-fun m!2793811 () Bool)

(assert (=> b!2394606 m!2793811))

(declare-fun m!2793813 () Bool)

(assert (=> b!2394606 m!2793813))

(assert (=> b!2394606 m!2793811))

(assert (=> b!2394606 m!2793813))

(declare-fun m!2793815 () Bool)

(assert (=> b!2394606 m!2793815))

(assert (=> b!2394615 m!2793807))

(assert (=> d!698769 m!2793809))

(declare-fun m!2793817 () Bool)

(assert (=> d!698769 m!2793817))

(assert (=> b!2394612 m!2793813))

(assert (=> b!2394612 m!2793813))

(declare-fun m!2793819 () Bool)

(assert (=> b!2394612 m!2793819))

(assert (=> b!2394613 m!2793813))

(assert (=> b!2394613 m!2793813))

(assert (=> b!2394613 m!2793819))

(assert (=> bm!145943 d!698769))

(declare-fun b!2394624 () Bool)

(declare-fun e!1526151 () List!28272)

(assert (=> b!2394624 (= e!1526151 (ite c!380900 Nil!28174 (_2!16490 lt!871227)))))

(declare-fun b!2394625 () Bool)

(assert (=> b!2394625 (= e!1526151 (Cons!28174 (h!33575 (ite c!380900 s!9460 (_1!16490 lt!871227))) (++!6971 (t!208249 (ite c!380900 s!9460 (_1!16490 lt!871227))) (ite c!380900 Nil!28174 (_2!16490 lt!871227)))))))

(declare-fun b!2394626 () Bool)

(declare-fun res!1017411 () Bool)

(declare-fun e!1526152 () Bool)

(assert (=> b!2394626 (=> (not res!1017411) (not e!1526152))))

(declare-fun lt!871334 () List!28272)

(declare-fun size!22192 (List!28272) Int)

(assert (=> b!2394626 (= res!1017411 (= (size!22192 lt!871334) (+ (size!22192 (ite c!380900 s!9460 (_1!16490 lt!871227))) (size!22192 (ite c!380900 Nil!28174 (_2!16490 lt!871227))))))))

(declare-fun b!2394627 () Bool)

(assert (=> b!2394627 (= e!1526152 (or (not (= (ite c!380900 Nil!28174 (_2!16490 lt!871227)) Nil!28174)) (= lt!871334 (ite c!380900 s!9460 (_1!16490 lt!871227)))))))

(declare-fun d!698771 () Bool)

(assert (=> d!698771 e!1526152))

(declare-fun res!1017410 () Bool)

(assert (=> d!698771 (=> (not res!1017410) (not e!1526152))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3854 (List!28272) (InoxSet C!14192))

(assert (=> d!698771 (= res!1017410 (= (content!3854 lt!871334) ((_ map or) (content!3854 (ite c!380900 s!9460 (_1!16490 lt!871227))) (content!3854 (ite c!380900 Nil!28174 (_2!16490 lt!871227))))))))

(assert (=> d!698771 (= lt!871334 e!1526151)))

(declare-fun c!381046 () Bool)

(assert (=> d!698771 (= c!381046 ((_ is Nil!28174) (ite c!380900 s!9460 (_1!16490 lt!871227))))))

(assert (=> d!698771 (= (++!6971 (ite c!380900 s!9460 (_1!16490 lt!871227)) (ite c!380900 Nil!28174 (_2!16490 lt!871227))) lt!871334)))

(assert (= (and d!698771 c!381046) b!2394624))

(assert (= (and d!698771 (not c!381046)) b!2394625))

(assert (= (and d!698771 res!1017410) b!2394626))

(assert (= (and b!2394626 res!1017411) b!2394627))

(declare-fun m!2793821 () Bool)

(assert (=> b!2394625 m!2793821))

(declare-fun m!2793823 () Bool)

(assert (=> b!2394626 m!2793823))

(declare-fun m!2793825 () Bool)

(assert (=> b!2394626 m!2793825))

(declare-fun m!2793827 () Bool)

(assert (=> b!2394626 m!2793827))

(declare-fun m!2793829 () Bool)

(assert (=> d!698771 m!2793829))

(declare-fun m!2793831 () Bool)

(assert (=> d!698771 m!2793831))

(declare-fun m!2793833 () Bool)

(assert (=> d!698771 m!2793833))

(assert (=> bm!145951 d!698771))

(declare-fun d!698773 () Bool)

(assert (=> d!698773 (= (isDefined!4388 (findConcatSeparation!668 lt!871230 call!145954 Nil!28174 s!9460 s!9460)) (not (isEmpty!16162 (findConcatSeparation!668 lt!871230 call!145954 Nil!28174 s!9460 s!9460))))))

(declare-fun bs!462795 () Bool)

(assert (= bs!462795 d!698773))

(assert (=> bs!462795 m!2793317))

(declare-fun m!2793835 () Bool)

(assert (=> bs!462795 m!2793835))

(assert (=> b!2393992 d!698773))

(declare-fun b!2394628 () Bool)

(declare-fun e!1526156 () Bool)

(declare-fun lt!871336 () Option!5560)

(assert (=> b!2394628 (= e!1526156 (not (isDefined!4388 lt!871336)))))

(declare-fun b!2394629 () Bool)

(declare-fun e!1526154 () Option!5560)

(assert (=> b!2394629 (= e!1526154 (Some!5559 (tuple2!27899 Nil!28174 s!9460)))))

(declare-fun b!2394630 () Bool)

(declare-fun lt!871335 () Unit!41228)

(declare-fun lt!871337 () Unit!41228)

(assert (=> b!2394630 (= lt!871335 lt!871337)))

(assert (=> b!2394630 (= (++!6971 (++!6971 Nil!28174 (Cons!28174 (h!33575 s!9460) Nil!28174)) (t!208249 s!9460)) s!9460)))

(assert (=> b!2394630 (= lt!871337 (lemmaMoveElementToOtherListKeepsConcatEq!613 Nil!28174 (h!33575 s!9460) (t!208249 s!9460) s!9460))))

(declare-fun e!1526157 () Option!5560)

(assert (=> b!2394630 (= e!1526157 (findConcatSeparation!668 lt!871230 call!145954 (++!6971 Nil!28174 (Cons!28174 (h!33575 s!9460) Nil!28174)) (t!208249 s!9460) s!9460))))

(declare-fun b!2394631 () Bool)

(declare-fun e!1526155 () Bool)

(assert (=> b!2394631 (= e!1526155 (= (++!6971 (_1!16490 (get!8623 lt!871336)) (_2!16490 (get!8623 lt!871336))) s!9460))))

(declare-fun b!2394632 () Bool)

(declare-fun res!1017412 () Bool)

(assert (=> b!2394632 (=> (not res!1017412) (not e!1526155))))

(assert (=> b!2394632 (= res!1017412 (matchR!3134 call!145954 (_2!16490 (get!8623 lt!871336))))))

(declare-fun d!698775 () Bool)

(assert (=> d!698775 e!1526156))

(declare-fun res!1017414 () Bool)

(assert (=> d!698775 (=> res!1017414 e!1526156)))

(assert (=> d!698775 (= res!1017414 e!1526155)))

(declare-fun res!1017413 () Bool)

(assert (=> d!698775 (=> (not res!1017413) (not e!1526155))))

(assert (=> d!698775 (= res!1017413 (isDefined!4388 lt!871336))))

(assert (=> d!698775 (= lt!871336 e!1526154)))

(declare-fun c!381048 () Bool)

(declare-fun e!1526153 () Bool)

(assert (=> d!698775 (= c!381048 e!1526153)))

(declare-fun res!1017415 () Bool)

(assert (=> d!698775 (=> (not res!1017415) (not e!1526153))))

(assert (=> d!698775 (= res!1017415 (matchR!3134 lt!871230 Nil!28174))))

(assert (=> d!698775 (validRegex!2742 lt!871230)))

(assert (=> d!698775 (= (findConcatSeparation!668 lt!871230 call!145954 Nil!28174 s!9460 s!9460) lt!871336)))

(declare-fun b!2394633 () Bool)

(assert (=> b!2394633 (= e!1526157 None!5559)))

(declare-fun b!2394634 () Bool)

(assert (=> b!2394634 (= e!1526153 (matchR!3134 call!145954 s!9460))))

(declare-fun b!2394635 () Bool)

(assert (=> b!2394635 (= e!1526154 e!1526157)))

(declare-fun c!381047 () Bool)

(assert (=> b!2394635 (= c!381047 ((_ is Nil!28174) s!9460))))

(declare-fun b!2394636 () Bool)

(declare-fun res!1017416 () Bool)

(assert (=> b!2394636 (=> (not res!1017416) (not e!1526155))))

(assert (=> b!2394636 (= res!1017416 (matchR!3134 lt!871230 (_1!16490 (get!8623 lt!871336))))))

(assert (= (and d!698775 res!1017415) b!2394634))

(assert (= (and d!698775 c!381048) b!2394629))

(assert (= (and d!698775 (not c!381048)) b!2394635))

(assert (= (and b!2394635 c!381047) b!2394633))

(assert (= (and b!2394635 (not c!381047)) b!2394630))

(assert (= (and d!698775 res!1017413) b!2394636))

(assert (= (and b!2394636 res!1017416) b!2394632))

(assert (= (and b!2394632 res!1017412) b!2394631))

(assert (= (and d!698775 (not res!1017414)) b!2394628))

(declare-fun m!2793837 () Bool)

(assert (=> b!2394636 m!2793837))

(declare-fun m!2793839 () Bool)

(assert (=> b!2394636 m!2793839))

(declare-fun m!2793841 () Bool)

(assert (=> b!2394628 m!2793841))

(assert (=> d!698775 m!2793841))

(assert (=> d!698775 m!2793791))

(assert (=> d!698775 m!2793373))

(declare-fun m!2793843 () Bool)

(assert (=> b!2394634 m!2793843))

(assert (=> b!2394631 m!2793837))

(declare-fun m!2793845 () Bool)

(assert (=> b!2394631 m!2793845))

(assert (=> b!2394630 m!2793665))

(assert (=> b!2394630 m!2793665))

(assert (=> b!2394630 m!2793667))

(assert (=> b!2394630 m!2793669))

(assert (=> b!2394630 m!2793665))

(declare-fun m!2793847 () Bool)

(assert (=> b!2394630 m!2793847))

(assert (=> b!2394632 m!2793837))

(declare-fun m!2793849 () Bool)

(assert (=> b!2394632 m!2793849))

(assert (=> b!2393992 d!698775))

(declare-fun b!2394637 () Bool)

(declare-fun res!1017422 () Bool)

(declare-fun e!1526163 () Bool)

(assert (=> b!2394637 (=> res!1017422 e!1526163)))

(declare-fun e!1526161 () Bool)

(assert (=> b!2394637 (= res!1017422 e!1526161)))

(declare-fun res!1017421 () Bool)

(assert (=> b!2394637 (=> (not res!1017421) (not e!1526161))))

(declare-fun lt!871338 () Bool)

(assert (=> b!2394637 (= res!1017421 lt!871338)))

(declare-fun b!2394638 () Bool)

(declare-fun e!1526160 () Bool)

(assert (=> b!2394638 (= e!1526160 (not lt!871338))))

(declare-fun b!2394639 () Bool)

(declare-fun e!1526162 () Bool)

(declare-fun call!146000 () Bool)

(assert (=> b!2394639 (= e!1526162 (= lt!871338 call!146000))))

(declare-fun b!2394640 () Bool)

(declare-fun e!1526159 () Bool)

(assert (=> b!2394640 (= e!1526159 (nullable!2066 lt!871230))))

(declare-fun b!2394641 () Bool)

(assert (=> b!2394641 (= e!1526159 (matchR!3134 (derivativeStep!1724 lt!871230 (head!5267 s!9460)) (tail!3537 s!9460)))))

(declare-fun b!2394643 () Bool)

(declare-fun e!1526158 () Bool)

(declare-fun e!1526164 () Bool)

(assert (=> b!2394643 (= e!1526158 e!1526164)))

(declare-fun res!1017418 () Bool)

(assert (=> b!2394643 (=> res!1017418 e!1526164)))

(assert (=> b!2394643 (= res!1017418 call!146000)))

(declare-fun b!2394644 () Bool)

(assert (=> b!2394644 (= e!1526162 e!1526160)))

(declare-fun c!381050 () Bool)

(assert (=> b!2394644 (= c!381050 ((_ is EmptyLang!7017) lt!871230))))

(declare-fun b!2394645 () Bool)

(declare-fun res!1017417 () Bool)

(assert (=> b!2394645 (=> (not res!1017417) (not e!1526161))))

(assert (=> b!2394645 (= res!1017417 (not call!146000))))

(declare-fun b!2394646 () Bool)

(assert (=> b!2394646 (= e!1526164 (not (= (head!5267 s!9460) (c!380905 lt!871230))))))

(declare-fun b!2394647 () Bool)

(declare-fun res!1017424 () Bool)

(assert (=> b!2394647 (=> res!1017424 e!1526164)))

(assert (=> b!2394647 (= res!1017424 (not (isEmpty!16160 (tail!3537 s!9460))))))

(declare-fun bm!145995 () Bool)

(assert (=> bm!145995 (= call!146000 (isEmpty!16160 s!9460))))

(declare-fun b!2394648 () Bool)

(declare-fun res!1017423 () Bool)

(assert (=> b!2394648 (=> (not res!1017423) (not e!1526161))))

(assert (=> b!2394648 (= res!1017423 (isEmpty!16160 (tail!3537 s!9460)))))

(declare-fun b!2394649 () Bool)

(assert (=> b!2394649 (= e!1526163 e!1526158)))

(declare-fun res!1017419 () Bool)

(assert (=> b!2394649 (=> (not res!1017419) (not e!1526158))))

(assert (=> b!2394649 (= res!1017419 (not lt!871338))))

(declare-fun b!2394650 () Bool)

(assert (=> b!2394650 (= e!1526161 (= (head!5267 s!9460) (c!380905 lt!871230)))))

(declare-fun b!2394642 () Bool)

(declare-fun res!1017420 () Bool)

(assert (=> b!2394642 (=> res!1017420 e!1526163)))

(assert (=> b!2394642 (= res!1017420 (not ((_ is ElementMatch!7017) lt!871230)))))

(assert (=> b!2394642 (= e!1526160 e!1526163)))

(declare-fun d!698777 () Bool)

(assert (=> d!698777 e!1526162))

(declare-fun c!381049 () Bool)

(assert (=> d!698777 (= c!381049 ((_ is EmptyExpr!7017) lt!871230))))

(assert (=> d!698777 (= lt!871338 e!1526159)))

(declare-fun c!381051 () Bool)

(assert (=> d!698777 (= c!381051 (isEmpty!16160 s!9460))))

(assert (=> d!698777 (validRegex!2742 lt!871230)))

(assert (=> d!698777 (= (matchR!3134 lt!871230 s!9460) lt!871338)))

(assert (= (and d!698777 c!381051) b!2394640))

(assert (= (and d!698777 (not c!381051)) b!2394641))

(assert (= (and d!698777 c!381049) b!2394639))

(assert (= (and d!698777 (not c!381049)) b!2394644))

(assert (= (and b!2394644 c!381050) b!2394638))

(assert (= (and b!2394644 (not c!381050)) b!2394642))

(assert (= (and b!2394642 (not res!1017420)) b!2394637))

(assert (= (and b!2394637 res!1017421) b!2394645))

(assert (= (and b!2394645 res!1017417) b!2394648))

(assert (= (and b!2394648 res!1017423) b!2394650))

(assert (= (and b!2394637 (not res!1017422)) b!2394649))

(assert (= (and b!2394649 res!1017419) b!2394643))

(assert (= (and b!2394643 (not res!1017418)) b!2394647))

(assert (= (and b!2394647 (not res!1017424)) b!2394646))

(assert (= (or b!2394639 b!2394643 b!2394645) bm!145995))

(declare-fun m!2793851 () Bool)

(assert (=> b!2394640 m!2793851))

(assert (=> b!2394646 m!2793603))

(assert (=> bm!145995 m!2793265))

(assert (=> b!2394641 m!2793603))

(assert (=> b!2394641 m!2793603))

(declare-fun m!2793853 () Bool)

(assert (=> b!2394641 m!2793853))

(assert (=> b!2394641 m!2793607))

(assert (=> b!2394641 m!2793853))

(assert (=> b!2394641 m!2793607))

(declare-fun m!2793855 () Bool)

(assert (=> b!2394641 m!2793855))

(assert (=> b!2394650 m!2793603))

(assert (=> d!698777 m!2793265))

(assert (=> d!698777 m!2793373))

(assert (=> b!2394647 m!2793607))

(assert (=> b!2394647 m!2793607))

(assert (=> b!2394647 m!2793611))

(assert (=> b!2394648 m!2793607))

(assert (=> b!2394648 m!2793607))

(assert (=> b!2394648 m!2793611))

(assert (=> b!2393992 d!698777))

(declare-fun b!2394664 () Bool)

(declare-fun e!1526167 () Bool)

(declare-fun tp!762740 () Bool)

(declare-fun tp!762742 () Bool)

(assert (=> b!2394664 (= e!1526167 (and tp!762740 tp!762742))))

(assert (=> b!2393994 (= tp!762675 e!1526167)))

(declare-fun b!2394661 () Bool)

(assert (=> b!2394661 (= e!1526167 tp_is_empty!11447)))

(declare-fun b!2394662 () Bool)

(declare-fun tp!762743 () Bool)

(declare-fun tp!762739 () Bool)

(assert (=> b!2394662 (= e!1526167 (and tp!762743 tp!762739))))

(declare-fun b!2394663 () Bool)

(declare-fun tp!762741 () Bool)

(assert (=> b!2394663 (= e!1526167 tp!762741)))

(assert (= (and b!2393994 ((_ is ElementMatch!7017) (reg!7346 r!13927))) b!2394661))

(assert (= (and b!2393994 ((_ is Concat!11653) (reg!7346 r!13927))) b!2394662))

(assert (= (and b!2393994 ((_ is Star!7017) (reg!7346 r!13927))) b!2394663))

(assert (= (and b!2393994 ((_ is Union!7017) (reg!7346 r!13927))) b!2394664))

(declare-fun b!2394669 () Bool)

(declare-fun e!1526170 () Bool)

(declare-fun tp!762746 () Bool)

(assert (=> b!2394669 (= e!1526170 (and tp_is_empty!11447 tp!762746))))

(assert (=> b!2393981 (= tp!762678 e!1526170)))

(assert (= (and b!2393981 ((_ is Cons!28174) (t!208249 s!9460))) b!2394669))

(declare-fun b!2394673 () Bool)

(declare-fun e!1526171 () Bool)

(declare-fun tp!762748 () Bool)

(declare-fun tp!762750 () Bool)

(assert (=> b!2394673 (= e!1526171 (and tp!762748 tp!762750))))

(assert (=> b!2394002 (= tp!762677 e!1526171)))

(declare-fun b!2394670 () Bool)

(assert (=> b!2394670 (= e!1526171 tp_is_empty!11447)))

(declare-fun b!2394671 () Bool)

(declare-fun tp!762751 () Bool)

(declare-fun tp!762747 () Bool)

(assert (=> b!2394671 (= e!1526171 (and tp!762751 tp!762747))))

(declare-fun b!2394672 () Bool)

(declare-fun tp!762749 () Bool)

(assert (=> b!2394672 (= e!1526171 tp!762749)))

(assert (= (and b!2394002 ((_ is ElementMatch!7017) (h!33576 l!9164))) b!2394670))

(assert (= (and b!2394002 ((_ is Concat!11653) (h!33576 l!9164))) b!2394671))

(assert (= (and b!2394002 ((_ is Star!7017) (h!33576 l!9164))) b!2394672))

(assert (= (and b!2394002 ((_ is Union!7017) (h!33576 l!9164))) b!2394673))

(declare-fun b!2394678 () Bool)

(declare-fun e!1526174 () Bool)

(declare-fun tp!762756 () Bool)

(declare-fun tp!762757 () Bool)

(assert (=> b!2394678 (= e!1526174 (and tp!762756 tp!762757))))

(assert (=> b!2394002 (= tp!762676 e!1526174)))

(assert (= (and b!2394002 ((_ is Cons!28175) (t!208250 l!9164))) b!2394678))

(declare-fun b!2394682 () Bool)

(declare-fun e!1526175 () Bool)

(declare-fun tp!762759 () Bool)

(declare-fun tp!762761 () Bool)

(assert (=> b!2394682 (= e!1526175 (and tp!762759 tp!762761))))

(assert (=> b!2393980 (= tp!762674 e!1526175)))

(declare-fun b!2394679 () Bool)

(assert (=> b!2394679 (= e!1526175 tp_is_empty!11447)))

(declare-fun b!2394680 () Bool)

(declare-fun tp!762762 () Bool)

(declare-fun tp!762758 () Bool)

(assert (=> b!2394680 (= e!1526175 (and tp!762762 tp!762758))))

(declare-fun b!2394681 () Bool)

(declare-fun tp!762760 () Bool)

(assert (=> b!2394681 (= e!1526175 tp!762760)))

(assert (= (and b!2393980 ((_ is ElementMatch!7017) (regOne!14546 r!13927))) b!2394679))

(assert (= (and b!2393980 ((_ is Concat!11653) (regOne!14546 r!13927))) b!2394680))

(assert (= (and b!2393980 ((_ is Star!7017) (regOne!14546 r!13927))) b!2394681))

(assert (= (and b!2393980 ((_ is Union!7017) (regOne!14546 r!13927))) b!2394682))

(declare-fun b!2394686 () Bool)

(declare-fun e!1526176 () Bool)

(declare-fun tp!762764 () Bool)

(declare-fun tp!762766 () Bool)

(assert (=> b!2394686 (= e!1526176 (and tp!762764 tp!762766))))

(assert (=> b!2393980 (= tp!762672 e!1526176)))

(declare-fun b!2394683 () Bool)

(assert (=> b!2394683 (= e!1526176 tp_is_empty!11447)))

(declare-fun b!2394684 () Bool)

(declare-fun tp!762767 () Bool)

(declare-fun tp!762763 () Bool)

(assert (=> b!2394684 (= e!1526176 (and tp!762767 tp!762763))))

(declare-fun b!2394685 () Bool)

(declare-fun tp!762765 () Bool)

(assert (=> b!2394685 (= e!1526176 tp!762765)))

(assert (= (and b!2393980 ((_ is ElementMatch!7017) (regTwo!14546 r!13927))) b!2394683))

(assert (= (and b!2393980 ((_ is Concat!11653) (regTwo!14546 r!13927))) b!2394684))

(assert (= (and b!2393980 ((_ is Star!7017) (regTwo!14546 r!13927))) b!2394685))

(assert (= (and b!2393980 ((_ is Union!7017) (regTwo!14546 r!13927))) b!2394686))

(declare-fun b!2394690 () Bool)

(declare-fun e!1526177 () Bool)

(declare-fun tp!762769 () Bool)

(declare-fun tp!762771 () Bool)

(assert (=> b!2394690 (= e!1526177 (and tp!762769 tp!762771))))

(assert (=> b!2393991 (= tp!762679 e!1526177)))

(declare-fun b!2394687 () Bool)

(assert (=> b!2394687 (= e!1526177 tp_is_empty!11447)))

(declare-fun b!2394688 () Bool)

(declare-fun tp!762772 () Bool)

(declare-fun tp!762768 () Bool)

(assert (=> b!2394688 (= e!1526177 (and tp!762772 tp!762768))))

(declare-fun b!2394689 () Bool)

(declare-fun tp!762770 () Bool)

(assert (=> b!2394689 (= e!1526177 tp!762770)))

(assert (= (and b!2393991 ((_ is ElementMatch!7017) (regOne!14547 r!13927))) b!2394687))

(assert (= (and b!2393991 ((_ is Concat!11653) (regOne!14547 r!13927))) b!2394688))

(assert (= (and b!2393991 ((_ is Star!7017) (regOne!14547 r!13927))) b!2394689))

(assert (= (and b!2393991 ((_ is Union!7017) (regOne!14547 r!13927))) b!2394690))

(declare-fun b!2394694 () Bool)

(declare-fun e!1526178 () Bool)

(declare-fun tp!762774 () Bool)

(declare-fun tp!762776 () Bool)

(assert (=> b!2394694 (= e!1526178 (and tp!762774 tp!762776))))

(assert (=> b!2393991 (= tp!762673 e!1526178)))

(declare-fun b!2394691 () Bool)

(assert (=> b!2394691 (= e!1526178 tp_is_empty!11447)))

(declare-fun b!2394692 () Bool)

(declare-fun tp!762777 () Bool)

(declare-fun tp!762773 () Bool)

(assert (=> b!2394692 (= e!1526178 (and tp!762777 tp!762773))))

(declare-fun b!2394693 () Bool)

(declare-fun tp!762775 () Bool)

(assert (=> b!2394693 (= e!1526178 tp!762775)))

(assert (= (and b!2393991 ((_ is ElementMatch!7017) (regTwo!14547 r!13927))) b!2394691))

(assert (= (and b!2393991 ((_ is Concat!11653) (regTwo!14547 r!13927))) b!2394692))

(assert (= (and b!2393991 ((_ is Star!7017) (regTwo!14547 r!13927))) b!2394693))

(assert (= (and b!2393991 ((_ is Union!7017) (regTwo!14547 r!13927))) b!2394694))

(declare-fun b_lambda!74233 () Bool)

(assert (= b_lambda!74231 (or start!234904 b_lambda!74233)))

(declare-fun bs!462796 () Bool)

(declare-fun d!698779 () Bool)

(assert (= bs!462796 (and d!698779 start!234904)))

(assert (=> bs!462796 (= (dynLambda!12132 lambda!89777 (h!33576 l!9164)) (validRegex!2742 (h!33576 l!9164)))))

(assert (=> bs!462796 m!2793703))

(assert (=> b!2394600 d!698779))

(check-sat (not b!2394590) (not b!2394625) (not b!2394373) (not b!2394380) (not b!2394554) (not b!2394567) (not b!2394682) (not b!2394585) (not b!2394578) (not b!2394613) (not b!2394685) (not d!698771) (not d!698755) (not d!698643) (not b!2394681) (not d!698769) (not b!2394593) (not b!2394584) (not d!698733) (not b!2394509) (not b!2394474) (not b!2394587) (not b!2394631) (not b!2394508) (not b!2394581) (not bm!145974) (not bm!145981) (not b!2394506) (not b!2394663) (not b!2394664) (not b!2394471) (not d!698681) (not b!2394564) (not b!2394673) (not d!698775) (not b!2394601) (not b!2394537) (not b!2394648) (not b!2394694) (not d!698751) (not b!2394626) (not d!698741) (not b_lambda!74233) (not b!2394475) (not b!2394605) (not b!2394566) (not b!2394611) (not b!2394379) (not bs!462796) (not b!2394583) (not b!2394641) (not b!2394595) (not b!2394545) (not b!2394680) (not d!698673) tp_is_empty!11447 (not b!2394532) (not b!2394693) (not bm!145995) (not b!2394628) (not d!698757) (not b!2394473) (not b!2394632) (not b!2394570) (not d!698749) (not b!2394094) (not d!698761) (not b!2394634) (not b!2394669) (not b!2394477) (not b!2394540) (not b!2394671) (not bm!145992) (not b!2394636) (not b!2394541) (not b!2394507) (not b!2394650) (not d!698729) (not d!698715) (not bm!145991) (not bm!145973) (not b!2394374) (not d!698747) (not b!2394351) (not b!2394572) (not b!2394688) (not b!2394543) (not b!2394577) (not b!2394547) (not b!2394346) (not b!2394689) (not b!2394381) (not d!698647) (not b!2394672) (not b!2394501) (not b!2394195) (not b!2394678) (not d!698753) (not b!2394546) (not b!2394504) (not b!2394200) (not d!698759) (not d!698735) (not b!2394552) (not d!698777) (not b!2394202) (not b!2394630) (not b!2394615) (not b!2394589) (not d!698763) (not d!698745) (not b!2394555) (not b!2394690) (not d!698713) (not b!2394692) (not b!2394550) (not b!2394204) (not d!698773) (not d!698743) (not b!2394684) (not b!2394479) (not b!2394201) (not b!2394612) (not b!2394194) (not bm!145994) (not b!2394647) (not b!2394662) (not b!2394606) (not b!2394539) (not b!2394646) (not b!2394591) (not bm!145960) (not b!2394686) (not b!2394500) (not b!2394586) (not b!2394383) (not b!2394568) (not b!2394553) (not b!2394640))
(check-sat)
