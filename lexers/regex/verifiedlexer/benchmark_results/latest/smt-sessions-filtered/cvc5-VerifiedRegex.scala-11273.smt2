; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!593254 () Bool)

(assert start!593254)

(declare-fun b!5784097 () Bool)

(assert (=> b!5784097 true))

(assert (=> b!5784097 true))

(declare-fun lambda!315164 () Int)

(declare-fun lambda!315163 () Int)

(assert (=> b!5784097 (not (= lambda!315164 lambda!315163))))

(assert (=> b!5784097 true))

(assert (=> b!5784097 true))

(declare-fun lambda!315165 () Int)

(assert (=> b!5784097 (not (= lambda!315165 lambda!315163))))

(assert (=> b!5784097 (not (= lambda!315165 lambda!315164))))

(assert (=> b!5784097 true))

(assert (=> b!5784097 true))

(declare-fun b!5784095 () Bool)

(declare-fun res!2440701 () Bool)

(declare-fun e!3552716 () Bool)

(assert (=> b!5784095 (=> (not res!2440701) (not e!3552716))))

(declare-datatypes ((C!31854 0))(
  ( (C!31855 (val!25629 Int)) )
))
(declare-datatypes ((Regex!15792 0))(
  ( (ElementMatch!15792 (c!1024040 C!31854)) (Concat!24637 (regOne!32096 Regex!15792) (regTwo!32096 Regex!15792)) (EmptyExpr!15792) (Star!15792 (reg!16121 Regex!15792)) (EmptyLang!15792) (Union!15792 (regOne!32097 Regex!15792) (regTwo!32097 Regex!15792)) )
))
(declare-datatypes ((List!63675 0))(
  ( (Nil!63551) (Cons!63551 (h!69999 Regex!15792) (t!377014 List!63675)) )
))
(declare-datatypes ((Context!10352 0))(
  ( (Context!10353 (exprs!5676 List!63675)) )
))
(declare-fun z!1189 () (Set Context!10352))

(declare-datatypes ((List!63676 0))(
  ( (Nil!63552) (Cons!63552 (h!70000 Context!10352) (t!377015 List!63676)) )
))
(declare-fun zl!343 () List!63676)

(declare-fun toList!9576 ((Set Context!10352)) List!63676)

(assert (=> b!5784095 (= res!2440701 (= (toList!9576 z!1189) zl!343))))

(declare-fun b!5784096 () Bool)

(declare-fun res!2440700 () Bool)

(assert (=> b!5784096 (=> (not res!2440700) (not e!3552716))))

(declare-fun r!7292 () Regex!15792)

(declare-fun unfocusZipper!1534 (List!63676) Regex!15792)

(assert (=> b!5784096 (= res!2440700 (= r!7292 (unfocusZipper!1534 zl!343)))))

(declare-fun e!3552722 () Bool)

(declare-fun lt!2296220 () Bool)

(declare-fun e!3552717 () Bool)

(assert (=> b!5784097 (= e!3552722 (= lt!2296220 e!3552717))))

(declare-fun res!2440699 () Bool)

(assert (=> b!5784097 (=> res!2440699 e!3552717)))

(declare-datatypes ((List!63677 0))(
  ( (Nil!63553) (Cons!63553 (h!70001 C!31854) (t!377016 List!63677)) )
))
(declare-fun s!2326 () List!63677)

(declare-fun isEmpty!35453 (List!63677) Bool)

(assert (=> b!5784097 (= res!2440699 (isEmpty!35453 s!2326))))

(declare-fun Exists!2892 (Int) Bool)

(assert (=> b!5784097 (= (Exists!2892 lambda!315163) (Exists!2892 lambda!315165))))

(declare-datatypes ((Unit!156844 0))(
  ( (Unit!156845) )
))
(declare-fun lt!2296223 () Unit!156844)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1521 (Regex!15792 Regex!15792 List!63677) Unit!156844)

(assert (=> b!5784097 (= lt!2296223 (lemmaExistCutMatchRandMatchRSpecEquivalent!1521 (reg!16121 r!7292) r!7292 s!2326))))

(assert (=> b!5784097 (= (Exists!2892 lambda!315163) (Exists!2892 lambda!315164))))

(declare-fun lt!2296219 () Unit!156844)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!573 (Regex!15792 List!63677) Unit!156844)

(assert (=> b!5784097 (= lt!2296219 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!573 (reg!16121 r!7292) s!2326))))

(declare-fun lt!2296222 () Bool)

(assert (=> b!5784097 (= lt!2296222 (Exists!2892 lambda!315163))))

(declare-datatypes ((tuple2!65778 0))(
  ( (tuple2!65779 (_1!36192 List!63677) (_2!36192 List!63677)) )
))
(declare-datatypes ((Option!15801 0))(
  ( (None!15800) (Some!15800 (v!51860 tuple2!65778)) )
))
(declare-fun isDefined!12504 (Option!15801) Bool)

(declare-fun findConcatSeparation!2215 (Regex!15792 Regex!15792 List!63677 List!63677 List!63677) Option!15801)

(assert (=> b!5784097 (= lt!2296222 (isDefined!12504 (findConcatSeparation!2215 (reg!16121 r!7292) r!7292 Nil!63553 s!2326 s!2326)))))

(declare-fun lt!2296224 () Unit!156844)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1979 (Regex!15792 Regex!15792 List!63677) Unit!156844)

(assert (=> b!5784097 (= lt!2296224 (lemmaFindConcatSeparationEquivalentToExists!1979 (reg!16121 r!7292) r!7292 s!2326))))

(declare-fun b!5784098 () Bool)

(declare-fun e!3552720 () Bool)

(declare-fun tp_is_empty!40837 () Bool)

(assert (=> b!5784098 (= e!3552720 tp_is_empty!40837)))

(declare-fun b!5784099 () Bool)

(assert (=> b!5784099 (= e!3552717 lt!2296222)))

(declare-fun b!5784100 () Bool)

(assert (=> b!5784100 (= e!3552716 (not e!3552722))))

(declare-fun res!2440703 () Bool)

(assert (=> b!5784100 (=> res!2440703 e!3552722)))

(assert (=> b!5784100 (= res!2440703 (not (is-Cons!63552 zl!343)))))

(declare-fun matchRSpec!2895 (Regex!15792 List!63677) Bool)

(assert (=> b!5784100 (= lt!2296220 (matchRSpec!2895 r!7292 s!2326))))

(declare-fun matchR!7977 (Regex!15792 List!63677) Bool)

(assert (=> b!5784100 (= lt!2296220 (matchR!7977 r!7292 s!2326))))

(declare-fun lt!2296221 () Unit!156844)

(declare-fun mainMatchTheorem!2895 (Regex!15792 List!63677) Unit!156844)

(assert (=> b!5784100 (= lt!2296221 (mainMatchTheorem!2895 r!7292 s!2326))))

(declare-fun b!5784101 () Bool)

(declare-fun e!3552718 () Bool)

(declare-fun tp!1595743 () Bool)

(assert (=> b!5784101 (= e!3552718 tp!1595743)))

(declare-fun b!5784102 () Bool)

(declare-fun res!2440706 () Bool)

(assert (=> b!5784102 (=> res!2440706 e!3552722)))

(declare-fun generalisedUnion!1655 (List!63675) Regex!15792)

(declare-fun unfocusZipperList!1220 (List!63676) List!63675)

(assert (=> b!5784102 (= res!2440706 (not (= r!7292 (generalisedUnion!1655 (unfocusZipperList!1220 zl!343)))))))

(declare-fun setRes!38845 () Bool)

(declare-fun setElem!38845 () Context!10352)

(declare-fun tp!1595742 () Bool)

(declare-fun setNonEmpty!38845 () Bool)

(declare-fun e!3552719 () Bool)

(declare-fun inv!82728 (Context!10352) Bool)

(assert (=> setNonEmpty!38845 (= setRes!38845 (and tp!1595742 (inv!82728 setElem!38845) e!3552719))))

(declare-fun setRest!38845 () (Set Context!10352))

(assert (=> setNonEmpty!38845 (= z!1189 (set.union (set.insert setElem!38845 (as set.empty (Set Context!10352))) setRest!38845))))

(declare-fun b!5784103 () Bool)

(declare-fun tp!1595744 () Bool)

(declare-fun tp!1595737 () Bool)

(assert (=> b!5784103 (= e!3552720 (and tp!1595744 tp!1595737))))

(declare-fun b!5784104 () Bool)

(declare-fun res!2440707 () Bool)

(assert (=> b!5784104 (=> res!2440707 e!3552722)))

(assert (=> b!5784104 (= res!2440707 (not (is-Cons!63551 (exprs!5676 (h!70000 zl!343)))))))

(declare-fun b!5784105 () Bool)

(declare-fun res!2440704 () Bool)

(assert (=> b!5784105 (=> res!2440704 e!3552722)))

(assert (=> b!5784105 (= res!2440704 (or (is-EmptyExpr!15792 r!7292) (is-EmptyLang!15792 r!7292) (is-ElementMatch!15792 r!7292) (is-Union!15792 r!7292) (is-Concat!24637 r!7292)))))

(declare-fun setIsEmpty!38845 () Bool)

(assert (=> setIsEmpty!38845 setRes!38845))

(declare-fun res!2440708 () Bool)

(assert (=> start!593254 (=> (not res!2440708) (not e!3552716))))

(declare-fun validRegex!7528 (Regex!15792) Bool)

(assert (=> start!593254 (= res!2440708 (validRegex!7528 r!7292))))

(assert (=> start!593254 e!3552716))

(assert (=> start!593254 e!3552720))

(declare-fun condSetEmpty!38845 () Bool)

(assert (=> start!593254 (= condSetEmpty!38845 (= z!1189 (as set.empty (Set Context!10352))))))

(assert (=> start!593254 setRes!38845))

(declare-fun e!3552723 () Bool)

(assert (=> start!593254 e!3552723))

(declare-fun e!3552721 () Bool)

(assert (=> start!593254 e!3552721))

(declare-fun b!5784106 () Bool)

(declare-fun tp!1595745 () Bool)

(assert (=> b!5784106 (= e!3552721 (and tp_is_empty!40837 tp!1595745))))

(declare-fun b!5784107 () Bool)

(declare-fun res!2440705 () Bool)

(assert (=> b!5784107 (=> res!2440705 e!3552722)))

(declare-fun generalisedConcat!1407 (List!63675) Regex!15792)

(assert (=> b!5784107 (= res!2440705 (not (= r!7292 (generalisedConcat!1407 (exprs!5676 (h!70000 zl!343))))))))

(declare-fun b!5784108 () Bool)

(declare-fun tp!1595738 () Bool)

(declare-fun tp!1595741 () Bool)

(assert (=> b!5784108 (= e!3552720 (and tp!1595738 tp!1595741))))

(declare-fun b!5784109 () Bool)

(declare-fun tp!1595740 () Bool)

(assert (=> b!5784109 (= e!3552720 tp!1595740)))

(declare-fun b!5784110 () Bool)

(declare-fun tp!1595739 () Bool)

(assert (=> b!5784110 (= e!3552719 tp!1595739)))

(declare-fun b!5784111 () Bool)

(declare-fun tp!1595746 () Bool)

(assert (=> b!5784111 (= e!3552723 (and (inv!82728 (h!70000 zl!343)) e!3552718 tp!1595746))))

(declare-fun b!5784112 () Bool)

(declare-fun res!2440702 () Bool)

(assert (=> b!5784112 (=> res!2440702 e!3552722)))

(declare-fun isEmpty!35454 (List!63676) Bool)

(assert (=> b!5784112 (= res!2440702 (not (isEmpty!35454 (t!377015 zl!343))))))

(assert (= (and start!593254 res!2440708) b!5784095))

(assert (= (and b!5784095 res!2440701) b!5784096))

(assert (= (and b!5784096 res!2440700) b!5784100))

(assert (= (and b!5784100 (not res!2440703)) b!5784112))

(assert (= (and b!5784112 (not res!2440702)) b!5784107))

(assert (= (and b!5784107 (not res!2440705)) b!5784104))

(assert (= (and b!5784104 (not res!2440707)) b!5784102))

(assert (= (and b!5784102 (not res!2440706)) b!5784105))

(assert (= (and b!5784105 (not res!2440704)) b!5784097))

(assert (= (and b!5784097 (not res!2440699)) b!5784099))

(assert (= (and start!593254 (is-ElementMatch!15792 r!7292)) b!5784098))

(assert (= (and start!593254 (is-Concat!24637 r!7292)) b!5784108))

(assert (= (and start!593254 (is-Star!15792 r!7292)) b!5784109))

(assert (= (and start!593254 (is-Union!15792 r!7292)) b!5784103))

(assert (= (and start!593254 condSetEmpty!38845) setIsEmpty!38845))

(assert (= (and start!593254 (not condSetEmpty!38845)) setNonEmpty!38845))

(assert (= setNonEmpty!38845 b!5784110))

(assert (= b!5784111 b!5784101))

(assert (= (and start!593254 (is-Cons!63552 zl!343)) b!5784111))

(assert (= (and start!593254 (is-Cons!63553 s!2326)) b!5784106))

(declare-fun m!6729868 () Bool)

(assert (=> setNonEmpty!38845 m!6729868))

(declare-fun m!6729870 () Bool)

(assert (=> b!5784096 m!6729870))

(declare-fun m!6729872 () Bool)

(assert (=> b!5784111 m!6729872))

(declare-fun m!6729874 () Bool)

(assert (=> b!5784097 m!6729874))

(declare-fun m!6729876 () Bool)

(assert (=> b!5784097 m!6729876))

(declare-fun m!6729878 () Bool)

(assert (=> b!5784097 m!6729878))

(declare-fun m!6729880 () Bool)

(assert (=> b!5784097 m!6729880))

(declare-fun m!6729882 () Bool)

(assert (=> b!5784097 m!6729882))

(assert (=> b!5784097 m!6729882))

(declare-fun m!6729884 () Bool)

(assert (=> b!5784097 m!6729884))

(declare-fun m!6729886 () Bool)

(assert (=> b!5784097 m!6729886))

(declare-fun m!6729888 () Bool)

(assert (=> b!5784097 m!6729888))

(assert (=> b!5784097 m!6729876))

(assert (=> b!5784097 m!6729876))

(declare-fun m!6729890 () Bool)

(assert (=> b!5784097 m!6729890))

(declare-fun m!6729892 () Bool)

(assert (=> b!5784107 m!6729892))

(declare-fun m!6729894 () Bool)

(assert (=> b!5784095 m!6729894))

(declare-fun m!6729896 () Bool)

(assert (=> b!5784112 m!6729896))

(declare-fun m!6729898 () Bool)

(assert (=> b!5784102 m!6729898))

(assert (=> b!5784102 m!6729898))

(declare-fun m!6729900 () Bool)

(assert (=> b!5784102 m!6729900))

(declare-fun m!6729902 () Bool)

(assert (=> start!593254 m!6729902))

(declare-fun m!6729904 () Bool)

(assert (=> b!5784100 m!6729904))

(declare-fun m!6729906 () Bool)

(assert (=> b!5784100 m!6729906))

(declare-fun m!6729908 () Bool)

(assert (=> b!5784100 m!6729908))

(push 1)

(assert (not b!5784108))

(assert (not b!5784097))

(assert (not start!593254))

(assert (not b!5784107))

(assert (not b!5784101))

(assert (not b!5784111))

(assert (not b!5784112))

(assert (not b!5784106))

(assert (not b!5784095))

(assert (not b!5784110))

(assert (not b!5784103))

(assert (not b!5784100))

(assert (not b!5784096))

(assert (not setNonEmpty!38845))

(assert (not b!5784102))

(assert (not b!5784109))

(assert tp_is_empty!40837)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1822716 () Bool)

(declare-fun e!3552760 () Bool)

(assert (=> d!1822716 e!3552760))

(declare-fun res!2440763 () Bool)

(assert (=> d!1822716 (=> (not res!2440763) (not e!3552760))))

(declare-fun lt!2296245 () List!63676)

(declare-fun noDuplicate!1695 (List!63676) Bool)

(assert (=> d!1822716 (= res!2440763 (noDuplicate!1695 lt!2296245))))

(declare-fun choose!43906 ((Set Context!10352)) List!63676)

(assert (=> d!1822716 (= lt!2296245 (choose!43906 z!1189))))

(assert (=> d!1822716 (= (toList!9576 z!1189) lt!2296245)))

(declare-fun b!5784199 () Bool)

(declare-fun content!11618 (List!63676) (Set Context!10352))

(assert (=> b!5784199 (= e!3552760 (= (content!11618 lt!2296245) z!1189))))

(assert (= (and d!1822716 res!2440763) b!5784199))

(declare-fun m!6729952 () Bool)

(assert (=> d!1822716 m!6729952))

(declare-fun m!6729954 () Bool)

(assert (=> d!1822716 m!6729954))

(declare-fun m!6729956 () Bool)

(assert (=> b!5784199 m!6729956))

(assert (=> b!5784095 d!1822716))

(declare-fun b!5784218 () Bool)

(declare-fun e!3552779 () Bool)

(declare-fun call!450319 () Bool)

(assert (=> b!5784218 (= e!3552779 call!450319)))

(declare-fun b!5784219 () Bool)

(declare-fun res!2440777 () Bool)

(declare-fun e!3552775 () Bool)

(assert (=> b!5784219 (=> (not res!2440777) (not e!3552775))))

(declare-fun call!450318 () Bool)

(assert (=> b!5784219 (= res!2440777 call!450318)))

(declare-fun e!3552781 () Bool)

(assert (=> b!5784219 (= e!3552781 e!3552775)))

(declare-fun b!5784220 () Bool)

(declare-fun res!2440775 () Bool)

(declare-fun e!3552778 () Bool)

(assert (=> b!5784220 (=> res!2440775 e!3552778)))

(assert (=> b!5784220 (= res!2440775 (not (is-Concat!24637 r!7292)))))

(assert (=> b!5784220 (= e!3552781 e!3552778)))

(declare-fun b!5784221 () Bool)

(declare-fun e!3552780 () Bool)

(declare-fun e!3552776 () Bool)

(assert (=> b!5784221 (= e!3552780 e!3552776)))

(declare-fun c!1024047 () Bool)

(assert (=> b!5784221 (= c!1024047 (is-Star!15792 r!7292))))

(declare-fun d!1822718 () Bool)

(declare-fun res!2440774 () Bool)

(assert (=> d!1822718 (=> res!2440774 e!3552780)))

(assert (=> d!1822718 (= res!2440774 (is-ElementMatch!15792 r!7292))))

(assert (=> d!1822718 (= (validRegex!7528 r!7292) e!3552780)))

(declare-fun b!5784222 () Bool)

(declare-fun call!450317 () Bool)

(assert (=> b!5784222 (= e!3552775 call!450317)))

(declare-fun bm!450312 () Bool)

(assert (=> bm!450312 (= call!450318 call!450319)))

(declare-fun b!5784223 () Bool)

(declare-fun e!3552777 () Bool)

(assert (=> b!5784223 (= e!3552777 call!450317)))

(declare-fun c!1024046 () Bool)

(declare-fun bm!450313 () Bool)

(assert (=> bm!450313 (= call!450319 (validRegex!7528 (ite c!1024047 (reg!16121 r!7292) (ite c!1024046 (regOne!32097 r!7292) (regOne!32096 r!7292)))))))

(declare-fun b!5784224 () Bool)

(assert (=> b!5784224 (= e!3552776 e!3552781)))

(assert (=> b!5784224 (= c!1024046 (is-Union!15792 r!7292))))

(declare-fun bm!450314 () Bool)

(assert (=> bm!450314 (= call!450317 (validRegex!7528 (ite c!1024046 (regTwo!32097 r!7292) (regTwo!32096 r!7292))))))

(declare-fun b!5784225 () Bool)

(assert (=> b!5784225 (= e!3552778 e!3552777)))

(declare-fun res!2440778 () Bool)

(assert (=> b!5784225 (=> (not res!2440778) (not e!3552777))))

(assert (=> b!5784225 (= res!2440778 call!450318)))

(declare-fun b!5784226 () Bool)

(assert (=> b!5784226 (= e!3552776 e!3552779)))

(declare-fun res!2440776 () Bool)

(declare-fun nullable!5824 (Regex!15792) Bool)

(assert (=> b!5784226 (= res!2440776 (not (nullable!5824 (reg!16121 r!7292))))))

(assert (=> b!5784226 (=> (not res!2440776) (not e!3552779))))

(assert (= (and d!1822718 (not res!2440774)) b!5784221))

(assert (= (and b!5784221 c!1024047) b!5784226))

(assert (= (and b!5784221 (not c!1024047)) b!5784224))

(assert (= (and b!5784226 res!2440776) b!5784218))

(assert (= (and b!5784224 c!1024046) b!5784219))

(assert (= (and b!5784224 (not c!1024046)) b!5784220))

(assert (= (and b!5784219 res!2440777) b!5784222))

(assert (= (and b!5784220 (not res!2440775)) b!5784225))

(assert (= (and b!5784225 res!2440778) b!5784223))

(assert (= (or b!5784222 b!5784223) bm!450314))

(assert (= (or b!5784219 b!5784225) bm!450312))

(assert (= (or b!5784218 bm!450312) bm!450313))

(declare-fun m!6729958 () Bool)

(assert (=> bm!450313 m!6729958))

(declare-fun m!6729960 () Bool)

(assert (=> bm!450314 m!6729960))

(declare-fun m!6729962 () Bool)

(assert (=> b!5784226 m!6729962))

(assert (=> start!593254 d!1822718))

(declare-fun bs!1365872 () Bool)

(declare-fun b!5784261 () Bool)

(assert (= bs!1365872 (and b!5784261 b!5784097)))

(declare-fun lambda!315183 () Int)

(assert (=> bs!1365872 (not (= lambda!315183 lambda!315163))))

(assert (=> bs!1365872 (= lambda!315183 lambda!315164)))

(assert (=> bs!1365872 (not (= lambda!315183 lambda!315165))))

(assert (=> b!5784261 true))

(assert (=> b!5784261 true))

(declare-fun bs!1365873 () Bool)

(declare-fun b!5784268 () Bool)

(assert (= bs!1365873 (and b!5784268 b!5784097)))

(declare-fun lambda!315184 () Int)

(assert (=> bs!1365873 (not (= lambda!315184 lambda!315163))))

(assert (=> bs!1365873 (not (= lambda!315184 lambda!315164))))

(assert (=> bs!1365873 (= (and (= (regOne!32096 r!7292) (reg!16121 r!7292)) (= (regTwo!32096 r!7292) r!7292)) (= lambda!315184 lambda!315165))))

(declare-fun bs!1365874 () Bool)

(assert (= bs!1365874 (and b!5784268 b!5784261)))

(assert (=> bs!1365874 (not (= lambda!315184 lambda!315183))))

(assert (=> b!5784268 true))

(assert (=> b!5784268 true))

(declare-fun bm!450319 () Bool)

(declare-fun call!450325 () Bool)

(declare-fun c!1024056 () Bool)

(assert (=> bm!450319 (= call!450325 (Exists!2892 (ite c!1024056 lambda!315183 lambda!315184)))))

(declare-fun b!5784259 () Bool)

(declare-fun e!3552805 () Bool)

(assert (=> b!5784259 (= e!3552805 (matchRSpec!2895 (regTwo!32097 r!7292) s!2326))))

(declare-fun b!5784260 () Bool)

(declare-fun e!3552801 () Bool)

(assert (=> b!5784260 (= e!3552801 e!3552805)))

(declare-fun res!2440797 () Bool)

(assert (=> b!5784260 (= res!2440797 (matchRSpec!2895 (regOne!32097 r!7292) s!2326))))

(assert (=> b!5784260 (=> res!2440797 e!3552805)))

(declare-fun e!3552803 () Bool)

(assert (=> b!5784261 (= e!3552803 call!450325)))

(declare-fun b!5784262 () Bool)

(declare-fun e!3552806 () Bool)

(assert (=> b!5784262 (= e!3552806 (= s!2326 (Cons!63553 (c!1024040 r!7292) Nil!63553)))))

(declare-fun b!5784263 () Bool)

(declare-fun e!3552804 () Bool)

(assert (=> b!5784263 (= e!3552801 e!3552804)))

(assert (=> b!5784263 (= c!1024056 (is-Star!15792 r!7292))))

(declare-fun b!5784264 () Bool)

(declare-fun c!1024058 () Bool)

(assert (=> b!5784264 (= c!1024058 (is-Union!15792 r!7292))))

(assert (=> b!5784264 (= e!3552806 e!3552801)))

(declare-fun b!5784265 () Bool)

(declare-fun e!3552800 () Bool)

(declare-fun call!450324 () Bool)

(assert (=> b!5784265 (= e!3552800 call!450324)))

(declare-fun d!1822720 () Bool)

(declare-fun c!1024057 () Bool)

(assert (=> d!1822720 (= c!1024057 (is-EmptyExpr!15792 r!7292))))

(assert (=> d!1822720 (= (matchRSpec!2895 r!7292 s!2326) e!3552800)))

(declare-fun b!5784266 () Bool)

(declare-fun res!2440796 () Bool)

(assert (=> b!5784266 (=> res!2440796 e!3552803)))

(assert (=> b!5784266 (= res!2440796 call!450324)))

(assert (=> b!5784266 (= e!3552804 e!3552803)))

(declare-fun b!5784267 () Bool)

(declare-fun e!3552802 () Bool)

(assert (=> b!5784267 (= e!3552800 e!3552802)))

(declare-fun res!2440795 () Bool)

(assert (=> b!5784267 (= res!2440795 (not (is-EmptyLang!15792 r!7292)))))

(assert (=> b!5784267 (=> (not res!2440795) (not e!3552802))))

(declare-fun bm!450320 () Bool)

(assert (=> bm!450320 (= call!450324 (isEmpty!35453 s!2326))))

(assert (=> b!5784268 (= e!3552804 call!450325)))

(declare-fun b!5784269 () Bool)

(declare-fun c!1024059 () Bool)

(assert (=> b!5784269 (= c!1024059 (is-ElementMatch!15792 r!7292))))

(assert (=> b!5784269 (= e!3552802 e!3552806)))

(assert (= (and d!1822720 c!1024057) b!5784265))

(assert (= (and d!1822720 (not c!1024057)) b!5784267))

(assert (= (and b!5784267 res!2440795) b!5784269))

(assert (= (and b!5784269 c!1024059) b!5784262))

(assert (= (and b!5784269 (not c!1024059)) b!5784264))

(assert (= (and b!5784264 c!1024058) b!5784260))

(assert (= (and b!5784264 (not c!1024058)) b!5784263))

(assert (= (and b!5784260 (not res!2440797)) b!5784259))

(assert (= (and b!5784263 c!1024056) b!5784266))

(assert (= (and b!5784263 (not c!1024056)) b!5784268))

(assert (= (and b!5784266 (not res!2440796)) b!5784261))

(assert (= (or b!5784261 b!5784268) bm!450319))

(assert (= (or b!5784265 b!5784266) bm!450320))

(declare-fun m!6729964 () Bool)

(assert (=> bm!450319 m!6729964))

(declare-fun m!6729966 () Bool)

(assert (=> b!5784259 m!6729966))

(declare-fun m!6729968 () Bool)

(assert (=> b!5784260 m!6729968))

(assert (=> bm!450320 m!6729888))

(assert (=> b!5784100 d!1822720))

(declare-fun d!1822724 () Bool)

(declare-fun e!3552839 () Bool)

(assert (=> d!1822724 e!3552839))

(declare-fun c!1024072 () Bool)

(assert (=> d!1822724 (= c!1024072 (is-EmptyExpr!15792 r!7292))))

(declare-fun lt!2296251 () Bool)

(declare-fun e!3552840 () Bool)

(assert (=> d!1822724 (= lt!2296251 e!3552840)))

(declare-fun c!1024071 () Bool)

(assert (=> d!1822724 (= c!1024071 (isEmpty!35453 s!2326))))

(assert (=> d!1822724 (validRegex!7528 r!7292)))

(assert (=> d!1822724 (= (matchR!7977 r!7292 s!2326) lt!2296251)))

(declare-fun b!5784319 () Bool)

(declare-fun e!3552843 () Bool)

(declare-fun e!3552844 () Bool)

(assert (=> b!5784319 (= e!3552843 e!3552844)))

(declare-fun res!2440833 () Bool)

(assert (=> b!5784319 (=> res!2440833 e!3552844)))

(declare-fun call!450330 () Bool)

(assert (=> b!5784319 (= res!2440833 call!450330)))

(declare-fun bm!450323 () Bool)

(assert (=> bm!450323 (= call!450330 (isEmpty!35453 s!2326))))

(declare-fun b!5784320 () Bool)

(declare-fun e!3552842 () Bool)

(assert (=> b!5784320 (= e!3552842 e!3552843)))

(declare-fun res!2440834 () Bool)

(assert (=> b!5784320 (=> (not res!2440834) (not e!3552843))))

(assert (=> b!5784320 (= res!2440834 (not lt!2296251))))

(declare-fun b!5784321 () Bool)

(assert (=> b!5784321 (= e!3552840 (nullable!5824 r!7292))))

(declare-fun b!5784322 () Bool)

(declare-fun res!2440831 () Bool)

(assert (=> b!5784322 (=> res!2440831 e!3552842)))

(declare-fun e!3552838 () Bool)

(assert (=> b!5784322 (= res!2440831 e!3552838)))

(declare-fun res!2440827 () Bool)

(assert (=> b!5784322 (=> (not res!2440827) (not e!3552838))))

(assert (=> b!5784322 (= res!2440827 lt!2296251)))

(declare-fun b!5784323 () Bool)

(declare-fun res!2440832 () Bool)

(assert (=> b!5784323 (=> res!2440832 e!3552842)))

(assert (=> b!5784323 (= res!2440832 (not (is-ElementMatch!15792 r!7292)))))

(declare-fun e!3552841 () Bool)

(assert (=> b!5784323 (= e!3552841 e!3552842)))

(declare-fun b!5784324 () Bool)

(assert (=> b!5784324 (= e!3552839 e!3552841)))

(declare-fun c!1024070 () Bool)

(assert (=> b!5784324 (= c!1024070 (is-EmptyLang!15792 r!7292))))

(declare-fun b!5784325 () Bool)

(declare-fun derivativeStep!4569 (Regex!15792 C!31854) Regex!15792)

(declare-fun head!12212 (List!63677) C!31854)

(declare-fun tail!11307 (List!63677) List!63677)

(assert (=> b!5784325 (= e!3552840 (matchR!7977 (derivativeStep!4569 r!7292 (head!12212 s!2326)) (tail!11307 s!2326)))))

(declare-fun b!5784326 () Bool)

(declare-fun res!2440828 () Bool)

(assert (=> b!5784326 (=> (not res!2440828) (not e!3552838))))

(assert (=> b!5784326 (= res!2440828 (isEmpty!35453 (tail!11307 s!2326)))))

(declare-fun b!5784327 () Bool)

(assert (=> b!5784327 (= e!3552841 (not lt!2296251))))

(declare-fun b!5784328 () Bool)

(assert (=> b!5784328 (= e!3552838 (= (head!12212 s!2326) (c!1024040 r!7292)))))

(declare-fun b!5784329 () Bool)

(declare-fun res!2440829 () Bool)

(assert (=> b!5784329 (=> (not res!2440829) (not e!3552838))))

(assert (=> b!5784329 (= res!2440829 (not call!450330))))

(declare-fun b!5784330 () Bool)

(assert (=> b!5784330 (= e!3552839 (= lt!2296251 call!450330))))

(declare-fun b!5784331 () Bool)

(declare-fun res!2440830 () Bool)

(assert (=> b!5784331 (=> res!2440830 e!3552844)))

(assert (=> b!5784331 (= res!2440830 (not (isEmpty!35453 (tail!11307 s!2326))))))

(declare-fun b!5784332 () Bool)

(assert (=> b!5784332 (= e!3552844 (not (= (head!12212 s!2326) (c!1024040 r!7292))))))

(assert (= (and d!1822724 c!1024071) b!5784321))

(assert (= (and d!1822724 (not c!1024071)) b!5784325))

(assert (= (and d!1822724 c!1024072) b!5784330))

(assert (= (and d!1822724 (not c!1024072)) b!5784324))

(assert (= (and b!5784324 c!1024070) b!5784327))

(assert (= (and b!5784324 (not c!1024070)) b!5784323))

(assert (= (and b!5784323 (not res!2440832)) b!5784322))

(assert (= (and b!5784322 res!2440827) b!5784329))

(assert (= (and b!5784329 res!2440829) b!5784326))

(assert (= (and b!5784326 res!2440828) b!5784328))

(assert (= (and b!5784322 (not res!2440831)) b!5784320))

(assert (= (and b!5784320 res!2440834) b!5784319))

(assert (= (and b!5784319 (not res!2440833)) b!5784331))

(assert (= (and b!5784331 (not res!2440830)) b!5784332))

(assert (= (or b!5784330 b!5784319 b!5784329) bm!450323))

(assert (=> d!1822724 m!6729888))

(assert (=> d!1822724 m!6729902))

(declare-fun m!6729976 () Bool)

(assert (=> b!5784326 m!6729976))

(assert (=> b!5784326 m!6729976))

(declare-fun m!6729978 () Bool)

(assert (=> b!5784326 m!6729978))

(declare-fun m!6729980 () Bool)

(assert (=> b!5784325 m!6729980))

(assert (=> b!5784325 m!6729980))

(declare-fun m!6729982 () Bool)

(assert (=> b!5784325 m!6729982))

(assert (=> b!5784325 m!6729976))

(assert (=> b!5784325 m!6729982))

(assert (=> b!5784325 m!6729976))

(declare-fun m!6729984 () Bool)

(assert (=> b!5784325 m!6729984))

(assert (=> bm!450323 m!6729888))

(assert (=> b!5784331 m!6729976))

(assert (=> b!5784331 m!6729976))

(assert (=> b!5784331 m!6729978))

(assert (=> b!5784328 m!6729980))

(assert (=> b!5784332 m!6729980))

(declare-fun m!6729986 () Bool)

(assert (=> b!5784321 m!6729986))

(assert (=> b!5784100 d!1822724))

(declare-fun d!1822728 () Bool)

(assert (=> d!1822728 (= (matchR!7977 r!7292 s!2326) (matchRSpec!2895 r!7292 s!2326))))

(declare-fun lt!2296254 () Unit!156844)

(declare-fun choose!43907 (Regex!15792 List!63677) Unit!156844)

(assert (=> d!1822728 (= lt!2296254 (choose!43907 r!7292 s!2326))))

(assert (=> d!1822728 (validRegex!7528 r!7292)))

(assert (=> d!1822728 (= (mainMatchTheorem!2895 r!7292 s!2326) lt!2296254)))

(declare-fun bs!1365875 () Bool)

(assert (= bs!1365875 d!1822728))

(assert (=> bs!1365875 m!6729906))

(assert (=> bs!1365875 m!6729904))

(declare-fun m!6729988 () Bool)

(assert (=> bs!1365875 m!6729988))

(assert (=> bs!1365875 m!6729902))

(assert (=> b!5784100 d!1822728))

(declare-fun d!1822730 () Bool)

(declare-fun lt!2296257 () Regex!15792)

(assert (=> d!1822730 (validRegex!7528 lt!2296257)))

(assert (=> d!1822730 (= lt!2296257 (generalisedUnion!1655 (unfocusZipperList!1220 zl!343)))))

(assert (=> d!1822730 (= (unfocusZipper!1534 zl!343) lt!2296257)))

(declare-fun bs!1365876 () Bool)

(assert (= bs!1365876 d!1822730))

(declare-fun m!6729990 () Bool)

(assert (=> bs!1365876 m!6729990))

(assert (=> bs!1365876 m!6729898))

(assert (=> bs!1365876 m!6729898))

(assert (=> bs!1365876 m!6729900))

(assert (=> b!5784096 d!1822730))

(declare-fun d!1822732 () Bool)

(declare-fun lambda!315187 () Int)

(declare-fun forall!14908 (List!63675 Int) Bool)

(assert (=> d!1822732 (= (inv!82728 (h!70000 zl!343)) (forall!14908 (exprs!5676 (h!70000 zl!343)) lambda!315187))))

(declare-fun bs!1365877 () Bool)

(assert (= bs!1365877 d!1822732))

(declare-fun m!6729992 () Bool)

(assert (=> bs!1365877 m!6729992))

(assert (=> b!5784111 d!1822732))

(declare-fun d!1822734 () Bool)

(declare-fun isEmpty!35457 (Option!15801) Bool)

(assert (=> d!1822734 (= (isDefined!12504 (findConcatSeparation!2215 (reg!16121 r!7292) r!7292 Nil!63553 s!2326 s!2326)) (not (isEmpty!35457 (findConcatSeparation!2215 (reg!16121 r!7292) r!7292 Nil!63553 s!2326 s!2326))))))

(declare-fun bs!1365878 () Bool)

(assert (= bs!1365878 d!1822734))

(assert (=> bs!1365878 m!6729882))

(declare-fun m!6729994 () Bool)

(assert (=> bs!1365878 m!6729994))

(assert (=> b!5784097 d!1822734))

(declare-fun bs!1365880 () Bool)

(declare-fun d!1822736 () Bool)

(assert (= bs!1365880 (and d!1822736 b!5784097)))

(declare-fun lambda!315192 () Int)

(assert (=> bs!1365880 (= lambda!315192 lambda!315163)))

(assert (=> bs!1365880 (not (= lambda!315192 lambda!315165))))

(declare-fun bs!1365881 () Bool)

(assert (= bs!1365881 (and d!1822736 b!5784261)))

(assert (=> bs!1365881 (not (= lambda!315192 lambda!315183))))

(declare-fun bs!1365882 () Bool)

(assert (= bs!1365882 (and d!1822736 b!5784268)))

(assert (=> bs!1365882 (not (= lambda!315192 lambda!315184))))

(assert (=> bs!1365880 (not (= lambda!315192 lambda!315164))))

(assert (=> d!1822736 true))

(assert (=> d!1822736 true))

(assert (=> d!1822736 true))

(declare-fun bs!1365883 () Bool)

(assert (= bs!1365883 d!1822736))

(declare-fun lambda!315193 () Int)

(assert (=> bs!1365883 (not (= lambda!315193 lambda!315192))))

(assert (=> bs!1365880 (not (= lambda!315193 lambda!315163))))

(assert (=> bs!1365880 (= lambda!315193 lambda!315165)))

(assert (=> bs!1365881 (not (= lambda!315193 lambda!315183))))

(assert (=> bs!1365882 (= (and (= (reg!16121 r!7292) (regOne!32096 r!7292)) (= r!7292 (regTwo!32096 r!7292))) (= lambda!315193 lambda!315184))))

(assert (=> bs!1365880 (not (= lambda!315193 lambda!315164))))

(assert (=> d!1822736 true))

(assert (=> d!1822736 true))

(assert (=> d!1822736 true))

(assert (=> d!1822736 (= (Exists!2892 lambda!315192) (Exists!2892 lambda!315193))))

(declare-fun lt!2296263 () Unit!156844)

(declare-fun choose!43908 (Regex!15792 Regex!15792 List!63677) Unit!156844)

(assert (=> d!1822736 (= lt!2296263 (choose!43908 (reg!16121 r!7292) r!7292 s!2326))))

(assert (=> d!1822736 (validRegex!7528 (reg!16121 r!7292))))

(assert (=> d!1822736 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1521 (reg!16121 r!7292) r!7292 s!2326) lt!2296263)))

(declare-fun m!6730004 () Bool)

(assert (=> bs!1365883 m!6730004))

(declare-fun m!6730006 () Bool)

(assert (=> bs!1365883 m!6730006))

(declare-fun m!6730008 () Bool)

(assert (=> bs!1365883 m!6730008))

(declare-fun m!6730010 () Bool)

(assert (=> bs!1365883 m!6730010))

(assert (=> b!5784097 d!1822736))

(declare-fun bs!1365884 () Bool)

(declare-fun d!1822742 () Bool)

(assert (= bs!1365884 (and d!1822742 d!1822736)))

(declare-fun lambda!315199 () Int)

(assert (=> bs!1365884 (= (= (Star!15792 (reg!16121 r!7292)) r!7292) (= lambda!315199 lambda!315192))))

(declare-fun bs!1365885 () Bool)

(assert (= bs!1365885 (and d!1822742 b!5784097)))

(assert (=> bs!1365885 (= (= (Star!15792 (reg!16121 r!7292)) r!7292) (= lambda!315199 lambda!315163))))

(assert (=> bs!1365885 (not (= lambda!315199 lambda!315165))))

(assert (=> bs!1365884 (not (= lambda!315199 lambda!315193))))

(declare-fun bs!1365886 () Bool)

(assert (= bs!1365886 (and d!1822742 b!5784261)))

(assert (=> bs!1365886 (not (= lambda!315199 lambda!315183))))

(declare-fun bs!1365887 () Bool)

(assert (= bs!1365887 (and d!1822742 b!5784268)))

(assert (=> bs!1365887 (not (= lambda!315199 lambda!315184))))

(assert (=> bs!1365885 (not (= lambda!315199 lambda!315164))))

(assert (=> d!1822742 true))

(assert (=> d!1822742 true))

(declare-fun lambda!315201 () Int)

(assert (=> bs!1365884 (not (= lambda!315201 lambda!315192))))

(assert (=> bs!1365885 (not (= lambda!315201 lambda!315163))))

(assert (=> bs!1365885 (not (= lambda!315201 lambda!315165))))

(assert (=> bs!1365884 (not (= lambda!315201 lambda!315193))))

(declare-fun bs!1365888 () Bool)

(assert (= bs!1365888 d!1822742))

(assert (=> bs!1365888 (not (= lambda!315201 lambda!315199))))

(assert (=> bs!1365886 (= (= (Star!15792 (reg!16121 r!7292)) r!7292) (= lambda!315201 lambda!315183))))

(assert (=> bs!1365887 (not (= lambda!315201 lambda!315184))))

(assert (=> bs!1365885 (= (= (Star!15792 (reg!16121 r!7292)) r!7292) (= lambda!315201 lambda!315164))))

(assert (=> d!1822742 true))

(assert (=> d!1822742 true))

(assert (=> d!1822742 (= (Exists!2892 lambda!315199) (Exists!2892 lambda!315201))))

(declare-fun lt!2296266 () Unit!156844)

(declare-fun choose!43909 (Regex!15792 List!63677) Unit!156844)

(assert (=> d!1822742 (= lt!2296266 (choose!43909 (reg!16121 r!7292) s!2326))))

(assert (=> d!1822742 (validRegex!7528 (reg!16121 r!7292))))

(assert (=> d!1822742 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!573 (reg!16121 r!7292) s!2326) lt!2296266)))

(declare-fun m!6730012 () Bool)

(assert (=> bs!1365888 m!6730012))

(declare-fun m!6730014 () Bool)

(assert (=> bs!1365888 m!6730014))

(declare-fun m!6730016 () Bool)

(assert (=> bs!1365888 m!6730016))

(assert (=> bs!1365888 m!6730010))

(assert (=> b!5784097 d!1822742))

(declare-fun d!1822744 () Bool)

(declare-fun choose!43910 (Int) Bool)

(assert (=> d!1822744 (= (Exists!2892 lambda!315165) (choose!43910 lambda!315165))))

(declare-fun bs!1365889 () Bool)

(assert (= bs!1365889 d!1822744))

(declare-fun m!6730018 () Bool)

(assert (=> bs!1365889 m!6730018))

(assert (=> b!5784097 d!1822744))

(declare-fun d!1822746 () Bool)

(assert (=> d!1822746 (= (Exists!2892 lambda!315163) (choose!43910 lambda!315163))))

(declare-fun bs!1365890 () Bool)

(assert (= bs!1365890 d!1822746))

(declare-fun m!6730020 () Bool)

(assert (=> bs!1365890 m!6730020))

(assert (=> b!5784097 d!1822746))

(declare-fun d!1822748 () Bool)

(assert (=> d!1822748 (= (isEmpty!35453 s!2326) (is-Nil!63553 s!2326))))

(assert (=> b!5784097 d!1822748))

(declare-fun d!1822750 () Bool)

(assert (=> d!1822750 (= (Exists!2892 lambda!315164) (choose!43910 lambda!315164))))

(declare-fun bs!1365891 () Bool)

(assert (= bs!1365891 d!1822750))

(declare-fun m!6730022 () Bool)

(assert (=> bs!1365891 m!6730022))

(assert (=> b!5784097 d!1822750))

(declare-fun b!5784410 () Bool)

(declare-fun e!3552888 () Option!15801)

(assert (=> b!5784410 (= e!3552888 (Some!15800 (tuple2!65779 Nil!63553 s!2326)))))

(declare-fun b!5784411 () Bool)

(declare-fun e!3552891 () Option!15801)

(assert (=> b!5784411 (= e!3552888 e!3552891)))

(declare-fun c!1024088 () Bool)

(assert (=> b!5784411 (= c!1024088 (is-Nil!63553 s!2326))))

(declare-fun d!1822752 () Bool)

(declare-fun e!3552890 () Bool)

(assert (=> d!1822752 e!3552890))

(declare-fun res!2440884 () Bool)

(assert (=> d!1822752 (=> res!2440884 e!3552890)))

(declare-fun e!3552892 () Bool)

(assert (=> d!1822752 (= res!2440884 e!3552892)))

(declare-fun res!2440888 () Bool)

(assert (=> d!1822752 (=> (not res!2440888) (not e!3552892))))

(declare-fun lt!2296274 () Option!15801)

(assert (=> d!1822752 (= res!2440888 (isDefined!12504 lt!2296274))))

(assert (=> d!1822752 (= lt!2296274 e!3552888)))

(declare-fun c!1024087 () Bool)

(declare-fun e!3552889 () Bool)

(assert (=> d!1822752 (= c!1024087 e!3552889)))

(declare-fun res!2440885 () Bool)

(assert (=> d!1822752 (=> (not res!2440885) (not e!3552889))))

(assert (=> d!1822752 (= res!2440885 (matchR!7977 (reg!16121 r!7292) Nil!63553))))

(assert (=> d!1822752 (validRegex!7528 (reg!16121 r!7292))))

(assert (=> d!1822752 (= (findConcatSeparation!2215 (reg!16121 r!7292) r!7292 Nil!63553 s!2326 s!2326) lt!2296274)))

(declare-fun b!5784412 () Bool)

(assert (=> b!5784412 (= e!3552891 None!15800)))

(declare-fun b!5784413 () Bool)

(declare-fun ++!14012 (List!63677 List!63677) List!63677)

(declare-fun get!21934 (Option!15801) tuple2!65778)

(assert (=> b!5784413 (= e!3552892 (= (++!14012 (_1!36192 (get!21934 lt!2296274)) (_2!36192 (get!21934 lt!2296274))) s!2326))))

(declare-fun b!5784414 () Bool)

(declare-fun lt!2296273 () Unit!156844)

(declare-fun lt!2296275 () Unit!156844)

(assert (=> b!5784414 (= lt!2296273 lt!2296275)))

(assert (=> b!5784414 (= (++!14012 (++!14012 Nil!63553 (Cons!63553 (h!70001 s!2326) Nil!63553)) (t!377016 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2119 (List!63677 C!31854 List!63677 List!63677) Unit!156844)

(assert (=> b!5784414 (= lt!2296275 (lemmaMoveElementToOtherListKeepsConcatEq!2119 Nil!63553 (h!70001 s!2326) (t!377016 s!2326) s!2326))))

(assert (=> b!5784414 (= e!3552891 (findConcatSeparation!2215 (reg!16121 r!7292) r!7292 (++!14012 Nil!63553 (Cons!63553 (h!70001 s!2326) Nil!63553)) (t!377016 s!2326) s!2326))))

(declare-fun b!5784415 () Bool)

(assert (=> b!5784415 (= e!3552889 (matchR!7977 r!7292 s!2326))))

(declare-fun b!5784416 () Bool)

(declare-fun res!2440887 () Bool)

(assert (=> b!5784416 (=> (not res!2440887) (not e!3552892))))

(assert (=> b!5784416 (= res!2440887 (matchR!7977 r!7292 (_2!36192 (get!21934 lt!2296274))))))

(declare-fun b!5784417 () Bool)

(assert (=> b!5784417 (= e!3552890 (not (isDefined!12504 lt!2296274)))))

(declare-fun b!5784418 () Bool)

(declare-fun res!2440886 () Bool)

(assert (=> b!5784418 (=> (not res!2440886) (not e!3552892))))

(assert (=> b!5784418 (= res!2440886 (matchR!7977 (reg!16121 r!7292) (_1!36192 (get!21934 lt!2296274))))))

(assert (= (and d!1822752 res!2440885) b!5784415))

(assert (= (and d!1822752 c!1024087) b!5784410))

(assert (= (and d!1822752 (not c!1024087)) b!5784411))

(assert (= (and b!5784411 c!1024088) b!5784412))

(assert (= (and b!5784411 (not c!1024088)) b!5784414))

(assert (= (and d!1822752 res!2440888) b!5784418))

(assert (= (and b!5784418 res!2440886) b!5784416))

(assert (= (and b!5784416 res!2440887) b!5784413))

(assert (= (and d!1822752 (not res!2440884)) b!5784417))

(declare-fun m!6730024 () Bool)

(assert (=> b!5784413 m!6730024))

(declare-fun m!6730026 () Bool)

(assert (=> b!5784413 m!6730026))

(declare-fun m!6730028 () Bool)

(assert (=> b!5784414 m!6730028))

(assert (=> b!5784414 m!6730028))

(declare-fun m!6730030 () Bool)

(assert (=> b!5784414 m!6730030))

(declare-fun m!6730032 () Bool)

(assert (=> b!5784414 m!6730032))

(assert (=> b!5784414 m!6730028))

(declare-fun m!6730034 () Bool)

(assert (=> b!5784414 m!6730034))

(assert (=> b!5784418 m!6730024))

(declare-fun m!6730036 () Bool)

(assert (=> b!5784418 m!6730036))

(assert (=> b!5784416 m!6730024))

(declare-fun m!6730038 () Bool)

(assert (=> b!5784416 m!6730038))

(assert (=> b!5784415 m!6729906))

(declare-fun m!6730040 () Bool)

(assert (=> b!5784417 m!6730040))

(assert (=> d!1822752 m!6730040))

(declare-fun m!6730042 () Bool)

(assert (=> d!1822752 m!6730042))

(assert (=> d!1822752 m!6730010))

(assert (=> b!5784097 d!1822752))

(declare-fun bs!1365895 () Bool)

(declare-fun d!1822754 () Bool)

(assert (= bs!1365895 (and d!1822754 d!1822736)))

(declare-fun lambda!315208 () Int)

(assert (=> bs!1365895 (= lambda!315208 lambda!315192)))

(declare-fun bs!1365896 () Bool)

(assert (= bs!1365896 (and d!1822754 b!5784097)))

(assert (=> bs!1365896 (= lambda!315208 lambda!315163)))

(assert (=> bs!1365896 (not (= lambda!315208 lambda!315165))))

(assert (=> bs!1365895 (not (= lambda!315208 lambda!315193))))

(declare-fun bs!1365897 () Bool)

(assert (= bs!1365897 (and d!1822754 d!1822742)))

(assert (=> bs!1365897 (= (= r!7292 (Star!15792 (reg!16121 r!7292))) (= lambda!315208 lambda!315199))))

(declare-fun bs!1365898 () Bool)

(assert (= bs!1365898 (and d!1822754 b!5784261)))

(assert (=> bs!1365898 (not (= lambda!315208 lambda!315183))))

(declare-fun bs!1365899 () Bool)

(assert (= bs!1365899 (and d!1822754 b!5784268)))

(assert (=> bs!1365899 (not (= lambda!315208 lambda!315184))))

(assert (=> bs!1365896 (not (= lambda!315208 lambda!315164))))

(assert (=> bs!1365897 (not (= lambda!315208 lambda!315201))))

(assert (=> d!1822754 true))

(assert (=> d!1822754 true))

(assert (=> d!1822754 true))

(assert (=> d!1822754 (= (isDefined!12504 (findConcatSeparation!2215 (reg!16121 r!7292) r!7292 Nil!63553 s!2326 s!2326)) (Exists!2892 lambda!315208))))

(declare-fun lt!2296278 () Unit!156844)

(declare-fun choose!43911 (Regex!15792 Regex!15792 List!63677) Unit!156844)

(assert (=> d!1822754 (= lt!2296278 (choose!43911 (reg!16121 r!7292) r!7292 s!2326))))

(assert (=> d!1822754 (validRegex!7528 (reg!16121 r!7292))))

(assert (=> d!1822754 (= (lemmaFindConcatSeparationEquivalentToExists!1979 (reg!16121 r!7292) r!7292 s!2326) lt!2296278)))

(declare-fun bs!1365900 () Bool)

(assert (= bs!1365900 d!1822754))

(assert (=> bs!1365900 m!6729882))

(assert (=> bs!1365900 m!6729884))

(declare-fun m!6730050 () Bool)

(assert (=> bs!1365900 m!6730050))

(assert (=> bs!1365900 m!6729882))

(assert (=> bs!1365900 m!6730010))

(declare-fun m!6730052 () Bool)

(assert (=> bs!1365900 m!6730052))

(assert (=> b!5784097 d!1822754))

(declare-fun bs!1365901 () Bool)

(declare-fun d!1822758 () Bool)

(assert (= bs!1365901 (and d!1822758 d!1822732)))

(declare-fun lambda!315211 () Int)

(assert (=> bs!1365901 (= lambda!315211 lambda!315187)))

(declare-fun b!5784454 () Bool)

(declare-fun e!3552917 () Bool)

(declare-fun e!3552914 () Bool)

(assert (=> b!5784454 (= e!3552917 e!3552914)))

(declare-fun c!1024101 () Bool)

(declare-fun isEmpty!35458 (List!63675) Bool)

(assert (=> b!5784454 (= c!1024101 (isEmpty!35458 (unfocusZipperList!1220 zl!343)))))

(declare-fun b!5784455 () Bool)

(declare-fun e!3552916 () Bool)

(declare-fun lt!2296281 () Regex!15792)

(declare-fun head!12213 (List!63675) Regex!15792)

(assert (=> b!5784455 (= e!3552916 (= lt!2296281 (head!12213 (unfocusZipperList!1220 zl!343))))))

(declare-fun b!5784456 () Bool)

(declare-fun isUnion!713 (Regex!15792) Bool)

(assert (=> b!5784456 (= e!3552916 (isUnion!713 lt!2296281))))

(declare-fun b!5784457 () Bool)

(assert (=> b!5784457 (= e!3552914 e!3552916)))

(declare-fun c!1024102 () Bool)

(declare-fun tail!11308 (List!63675) List!63675)

(assert (=> b!5784457 (= c!1024102 (isEmpty!35458 (tail!11308 (unfocusZipperList!1220 zl!343))))))

(assert (=> d!1822758 e!3552917))

(declare-fun res!2440901 () Bool)

(assert (=> d!1822758 (=> (not res!2440901) (not e!3552917))))

(assert (=> d!1822758 (= res!2440901 (validRegex!7528 lt!2296281))))

(declare-fun e!3552915 () Regex!15792)

(assert (=> d!1822758 (= lt!2296281 e!3552915)))

(declare-fun c!1024104 () Bool)

(declare-fun e!3552919 () Bool)

(assert (=> d!1822758 (= c!1024104 e!3552919)))

(declare-fun res!2440900 () Bool)

(assert (=> d!1822758 (=> (not res!2440900) (not e!3552919))))

(assert (=> d!1822758 (= res!2440900 (is-Cons!63551 (unfocusZipperList!1220 zl!343)))))

(assert (=> d!1822758 (forall!14908 (unfocusZipperList!1220 zl!343) lambda!315211)))

(assert (=> d!1822758 (= (generalisedUnion!1655 (unfocusZipperList!1220 zl!343)) lt!2296281)))

(declare-fun b!5784458 () Bool)

(declare-fun isEmptyLang!1283 (Regex!15792) Bool)

(assert (=> b!5784458 (= e!3552914 (isEmptyLang!1283 lt!2296281))))

(declare-fun b!5784459 () Bool)

(declare-fun e!3552918 () Regex!15792)

(assert (=> b!5784459 (= e!3552915 e!3552918)))

(declare-fun c!1024103 () Bool)

(assert (=> b!5784459 (= c!1024103 (is-Cons!63551 (unfocusZipperList!1220 zl!343)))))

(declare-fun b!5784460 () Bool)

(assert (=> b!5784460 (= e!3552918 EmptyLang!15792)))

(declare-fun b!5784461 () Bool)

(assert (=> b!5784461 (= e!3552919 (isEmpty!35458 (t!377014 (unfocusZipperList!1220 zl!343))))))

(declare-fun b!5784462 () Bool)

(assert (=> b!5784462 (= e!3552915 (h!69999 (unfocusZipperList!1220 zl!343)))))

(declare-fun b!5784463 () Bool)

(assert (=> b!5784463 (= e!3552918 (Union!15792 (h!69999 (unfocusZipperList!1220 zl!343)) (generalisedUnion!1655 (t!377014 (unfocusZipperList!1220 zl!343)))))))

(assert (= (and d!1822758 res!2440900) b!5784461))

(assert (= (and d!1822758 c!1024104) b!5784462))

(assert (= (and d!1822758 (not c!1024104)) b!5784459))

(assert (= (and b!5784459 c!1024103) b!5784463))

(assert (= (and b!5784459 (not c!1024103)) b!5784460))

(assert (= (and d!1822758 res!2440901) b!5784454))

(assert (= (and b!5784454 c!1024101) b!5784458))

(assert (= (and b!5784454 (not c!1024101)) b!5784457))

(assert (= (and b!5784457 c!1024102) b!5784455))

(assert (= (and b!5784457 (not c!1024102)) b!5784456))

(declare-fun m!6730054 () Bool)

(assert (=> b!5784458 m!6730054))

(declare-fun m!6730056 () Bool)

(assert (=> b!5784461 m!6730056))

(assert (=> b!5784455 m!6729898))

(declare-fun m!6730058 () Bool)

(assert (=> b!5784455 m!6730058))

(declare-fun m!6730060 () Bool)

(assert (=> d!1822758 m!6730060))

(assert (=> d!1822758 m!6729898))

(declare-fun m!6730062 () Bool)

(assert (=> d!1822758 m!6730062))

(assert (=> b!5784457 m!6729898))

(declare-fun m!6730064 () Bool)

(assert (=> b!5784457 m!6730064))

(assert (=> b!5784457 m!6730064))

(declare-fun m!6730066 () Bool)

(assert (=> b!5784457 m!6730066))

(assert (=> b!5784454 m!6729898))

(declare-fun m!6730068 () Bool)

(assert (=> b!5784454 m!6730068))

(declare-fun m!6730070 () Bool)

(assert (=> b!5784463 m!6730070))

(declare-fun m!6730072 () Bool)

(assert (=> b!5784456 m!6730072))

(assert (=> b!5784102 d!1822758))

(declare-fun bs!1365902 () Bool)

(declare-fun d!1822760 () Bool)

(assert (= bs!1365902 (and d!1822760 d!1822732)))

(declare-fun lambda!315214 () Int)

(assert (=> bs!1365902 (= lambda!315214 lambda!315187)))

(declare-fun bs!1365903 () Bool)

(assert (= bs!1365903 (and d!1822760 d!1822758)))

(assert (=> bs!1365903 (= lambda!315214 lambda!315211)))

(declare-fun lt!2296286 () List!63675)

(assert (=> d!1822760 (forall!14908 lt!2296286 lambda!315214)))

(declare-fun e!3552936 () List!63675)

(assert (=> d!1822760 (= lt!2296286 e!3552936)))

(declare-fun c!1024113 () Bool)

(assert (=> d!1822760 (= c!1024113 (is-Cons!63552 zl!343))))

(assert (=> d!1822760 (= (unfocusZipperList!1220 zl!343) lt!2296286)))

(declare-fun b!5784496 () Bool)

(assert (=> b!5784496 (= e!3552936 (Cons!63551 (generalisedConcat!1407 (exprs!5676 (h!70000 zl!343))) (unfocusZipperList!1220 (t!377015 zl!343))))))

(declare-fun b!5784497 () Bool)

(assert (=> b!5784497 (= e!3552936 Nil!63551)))

(assert (= (and d!1822760 c!1024113) b!5784496))

(assert (= (and d!1822760 (not c!1024113)) b!5784497))

(declare-fun m!6730074 () Bool)

(assert (=> d!1822760 m!6730074))

(assert (=> b!5784496 m!6729892))

(declare-fun m!6730076 () Bool)

(assert (=> b!5784496 m!6730076))

(assert (=> b!5784102 d!1822760))

(declare-fun d!1822762 () Bool)

(assert (=> d!1822762 (= (isEmpty!35454 (t!377015 zl!343)) (is-Nil!63552 (t!377015 zl!343)))))

(assert (=> b!5784112 d!1822762))

(declare-fun bs!1365904 () Bool)

(declare-fun d!1822764 () Bool)

(assert (= bs!1365904 (and d!1822764 d!1822732)))

(declare-fun lambda!315217 () Int)

(assert (=> bs!1365904 (= lambda!315217 lambda!315187)))

(declare-fun bs!1365905 () Bool)

(assert (= bs!1365905 (and d!1822764 d!1822758)))

(assert (=> bs!1365905 (= lambda!315217 lambda!315211)))

(declare-fun bs!1365906 () Bool)

(assert (= bs!1365906 (and d!1822764 d!1822760)))

(assert (=> bs!1365906 (= lambda!315217 lambda!315214)))

(declare-fun b!5784518 () Bool)

(declare-fun e!3552954 () Bool)

(assert (=> b!5784518 (= e!3552954 (isEmpty!35458 (t!377014 (exprs!5676 (h!70000 zl!343)))))))

(declare-fun b!5784519 () Bool)

(declare-fun e!3552953 () Bool)

(declare-fun e!3552949 () Bool)

(assert (=> b!5784519 (= e!3552953 e!3552949)))

(declare-fun c!1024124 () Bool)

(assert (=> b!5784519 (= c!1024124 (isEmpty!35458 (exprs!5676 (h!70000 zl!343))))))

(assert (=> d!1822764 e!3552953))

(declare-fun res!2440923 () Bool)

(assert (=> d!1822764 (=> (not res!2440923) (not e!3552953))))

(declare-fun lt!2296289 () Regex!15792)

(assert (=> d!1822764 (= res!2440923 (validRegex!7528 lt!2296289))))

(declare-fun e!3552950 () Regex!15792)

(assert (=> d!1822764 (= lt!2296289 e!3552950)))

(declare-fun c!1024125 () Bool)

(assert (=> d!1822764 (= c!1024125 e!3552954)))

(declare-fun res!2440922 () Bool)

(assert (=> d!1822764 (=> (not res!2440922) (not e!3552954))))

(assert (=> d!1822764 (= res!2440922 (is-Cons!63551 (exprs!5676 (h!70000 zl!343))))))

(assert (=> d!1822764 (forall!14908 (exprs!5676 (h!70000 zl!343)) lambda!315217)))

(assert (=> d!1822764 (= (generalisedConcat!1407 (exprs!5676 (h!70000 zl!343))) lt!2296289)))

(declare-fun b!5784520 () Bool)

(declare-fun e!3552952 () Regex!15792)

(assert (=> b!5784520 (= e!3552952 (Concat!24637 (h!69999 (exprs!5676 (h!70000 zl!343))) (generalisedConcat!1407 (t!377014 (exprs!5676 (h!70000 zl!343))))))))

(declare-fun b!5784521 () Bool)

(declare-fun isEmptyExpr!1274 (Regex!15792) Bool)

(assert (=> b!5784521 (= e!3552949 (isEmptyExpr!1274 lt!2296289))))

(declare-fun b!5784522 () Bool)

(assert (=> b!5784522 (= e!3552950 (h!69999 (exprs!5676 (h!70000 zl!343))))))

(declare-fun b!5784523 () Bool)

(assert (=> b!5784523 (= e!3552950 e!3552952)))

(declare-fun c!1024123 () Bool)

(assert (=> b!5784523 (= c!1024123 (is-Cons!63551 (exprs!5676 (h!70000 zl!343))))))

(declare-fun b!5784524 () Bool)

(declare-fun e!3552951 () Bool)

(assert (=> b!5784524 (= e!3552951 (= lt!2296289 (head!12213 (exprs!5676 (h!70000 zl!343)))))))

(declare-fun b!5784525 () Bool)

(assert (=> b!5784525 (= e!3552952 EmptyExpr!15792)))

(declare-fun b!5784526 () Bool)

(assert (=> b!5784526 (= e!3552949 e!3552951)))

(declare-fun c!1024122 () Bool)

(assert (=> b!5784526 (= c!1024122 (isEmpty!35458 (tail!11308 (exprs!5676 (h!70000 zl!343)))))))

(declare-fun b!5784527 () Bool)

(declare-fun isConcat!797 (Regex!15792) Bool)

(assert (=> b!5784527 (= e!3552951 (isConcat!797 lt!2296289))))

(assert (= (and d!1822764 res!2440922) b!5784518))

(assert (= (and d!1822764 c!1024125) b!5784522))

(assert (= (and d!1822764 (not c!1024125)) b!5784523))

(assert (= (and b!5784523 c!1024123) b!5784520))

(assert (= (and b!5784523 (not c!1024123)) b!5784525))

(assert (= (and d!1822764 res!2440923) b!5784519))

(assert (= (and b!5784519 c!1024124) b!5784521))

(assert (= (and b!5784519 (not c!1024124)) b!5784526))

(assert (= (and b!5784526 c!1024122) b!5784524))

(assert (= (and b!5784526 (not c!1024122)) b!5784527))

(declare-fun m!6730078 () Bool)

(assert (=> b!5784518 m!6730078))

(declare-fun m!6730080 () Bool)

(assert (=> b!5784524 m!6730080))

(declare-fun m!6730082 () Bool)

(assert (=> b!5784521 m!6730082))

(declare-fun m!6730084 () Bool)

(assert (=> b!5784519 m!6730084))

(declare-fun m!6730086 () Bool)

(assert (=> b!5784520 m!6730086))

(declare-fun m!6730088 () Bool)

(assert (=> b!5784526 m!6730088))

(assert (=> b!5784526 m!6730088))

(declare-fun m!6730090 () Bool)

(assert (=> b!5784526 m!6730090))

(declare-fun m!6730092 () Bool)

(assert (=> d!1822764 m!6730092))

(declare-fun m!6730094 () Bool)

(assert (=> d!1822764 m!6730094))

(declare-fun m!6730096 () Bool)

(assert (=> b!5784527 m!6730096))

(assert (=> b!5784107 d!1822764))

(declare-fun bs!1365907 () Bool)

(declare-fun d!1822766 () Bool)

(assert (= bs!1365907 (and d!1822766 d!1822732)))

(declare-fun lambda!315218 () Int)

(assert (=> bs!1365907 (= lambda!315218 lambda!315187)))

(declare-fun bs!1365908 () Bool)

(assert (= bs!1365908 (and d!1822766 d!1822758)))

(assert (=> bs!1365908 (= lambda!315218 lambda!315211)))

(declare-fun bs!1365909 () Bool)

(assert (= bs!1365909 (and d!1822766 d!1822760)))

(assert (=> bs!1365909 (= lambda!315218 lambda!315214)))

(declare-fun bs!1365910 () Bool)

(assert (= bs!1365910 (and d!1822766 d!1822764)))

(assert (=> bs!1365910 (= lambda!315218 lambda!315217)))

(assert (=> d!1822766 (= (inv!82728 setElem!38845) (forall!14908 (exprs!5676 setElem!38845) lambda!315218))))

(declare-fun bs!1365911 () Bool)

(assert (= bs!1365911 d!1822766))

(declare-fun m!6730098 () Bool)

(assert (=> bs!1365911 m!6730098))

(assert (=> setNonEmpty!38845 d!1822766))

(declare-fun b!5784552 () Bool)

(declare-fun e!3552964 () Bool)

(assert (=> b!5784552 (= e!3552964 tp_is_empty!40837)))

(declare-fun b!5784554 () Bool)

(declare-fun tp!1595789 () Bool)

(assert (=> b!5784554 (= e!3552964 tp!1595789)))

(declare-fun b!5784553 () Bool)

(declare-fun tp!1595791 () Bool)

(declare-fun tp!1595787 () Bool)

(assert (=> b!5784553 (= e!3552964 (and tp!1595791 tp!1595787))))

(declare-fun b!5784555 () Bool)

(declare-fun tp!1595790 () Bool)

(declare-fun tp!1595788 () Bool)

(assert (=> b!5784555 (= e!3552964 (and tp!1595790 tp!1595788))))

(assert (=> b!5784109 (= tp!1595740 e!3552964)))

(assert (= (and b!5784109 (is-ElementMatch!15792 (reg!16121 r!7292))) b!5784552))

(assert (= (and b!5784109 (is-Concat!24637 (reg!16121 r!7292))) b!5784553))

(assert (= (and b!5784109 (is-Star!15792 (reg!16121 r!7292))) b!5784554))

(assert (= (and b!5784109 (is-Union!15792 (reg!16121 r!7292))) b!5784555))

(declare-fun b!5784560 () Bool)

(declare-fun e!3552967 () Bool)

(declare-fun tp!1595796 () Bool)

(declare-fun tp!1595797 () Bool)

(assert (=> b!5784560 (= e!3552967 (and tp!1595796 tp!1595797))))

(assert (=> b!5784110 (= tp!1595739 e!3552967)))

(assert (= (and b!5784110 (is-Cons!63551 (exprs!5676 setElem!38845))) b!5784560))

(declare-fun b!5784561 () Bool)

(declare-fun e!3552968 () Bool)

(declare-fun tp!1595798 () Bool)

(declare-fun tp!1595799 () Bool)

(assert (=> b!5784561 (= e!3552968 (and tp!1595798 tp!1595799))))

(assert (=> b!5784101 (= tp!1595743 e!3552968)))

(assert (= (and b!5784101 (is-Cons!63551 (exprs!5676 (h!70000 zl!343)))) b!5784561))

(declare-fun b!5784569 () Bool)

(declare-fun e!3552974 () Bool)

(declare-fun tp!1595804 () Bool)

(assert (=> b!5784569 (= e!3552974 tp!1595804)))

(declare-fun b!5784568 () Bool)

(declare-fun e!3552973 () Bool)

(declare-fun tp!1595805 () Bool)

(assert (=> b!5784568 (= e!3552973 (and (inv!82728 (h!70000 (t!377015 zl!343))) e!3552974 tp!1595805))))

(assert (=> b!5784111 (= tp!1595746 e!3552973)))

(assert (= b!5784568 b!5784569))

(assert (= (and b!5784111 (is-Cons!63552 (t!377015 zl!343))) b!5784568))

(declare-fun m!6730110 () Bool)

(assert (=> b!5784568 m!6730110))

(declare-fun b!5784574 () Bool)

(declare-fun e!3552977 () Bool)

(declare-fun tp!1595808 () Bool)

(assert (=> b!5784574 (= e!3552977 (and tp_is_empty!40837 tp!1595808))))

(assert (=> b!5784106 (= tp!1595745 e!3552977)))

(assert (= (and b!5784106 (is-Cons!63553 (t!377016 s!2326))) b!5784574))

(declare-fun condSetEmpty!38851 () Bool)

(assert (=> setNonEmpty!38845 (= condSetEmpty!38851 (= setRest!38845 (as set.empty (Set Context!10352))))))

(declare-fun setRes!38851 () Bool)

(assert (=> setNonEmpty!38845 (= tp!1595742 setRes!38851)))

(declare-fun setIsEmpty!38851 () Bool)

(assert (=> setIsEmpty!38851 setRes!38851))

(declare-fun setElem!38851 () Context!10352)

(declare-fun setNonEmpty!38851 () Bool)

(declare-fun tp!1595814 () Bool)

(declare-fun e!3552980 () Bool)

(assert (=> setNonEmpty!38851 (= setRes!38851 (and tp!1595814 (inv!82728 setElem!38851) e!3552980))))

(declare-fun setRest!38851 () (Set Context!10352))

(assert (=> setNonEmpty!38851 (= setRest!38845 (set.union (set.insert setElem!38851 (as set.empty (Set Context!10352))) setRest!38851))))

(declare-fun b!5784579 () Bool)

(declare-fun tp!1595813 () Bool)

(assert (=> b!5784579 (= e!3552980 tp!1595813)))

(assert (= (and setNonEmpty!38845 condSetEmpty!38851) setIsEmpty!38851))

(assert (= (and setNonEmpty!38845 (not condSetEmpty!38851)) setNonEmpty!38851))

(assert (= setNonEmpty!38851 b!5784579))

(declare-fun m!6730114 () Bool)

(assert (=> setNonEmpty!38851 m!6730114))

(declare-fun b!5784580 () Bool)

(declare-fun e!3552981 () Bool)

(assert (=> b!5784580 (= e!3552981 tp_is_empty!40837)))

(declare-fun b!5784582 () Bool)

(declare-fun tp!1595817 () Bool)

(assert (=> b!5784582 (= e!3552981 tp!1595817)))

(declare-fun b!5784581 () Bool)

(declare-fun tp!1595819 () Bool)

(declare-fun tp!1595815 () Bool)

(assert (=> b!5784581 (= e!3552981 (and tp!1595819 tp!1595815))))

(declare-fun b!5784583 () Bool)

(declare-fun tp!1595818 () Bool)

(declare-fun tp!1595816 () Bool)

(assert (=> b!5784583 (= e!3552981 (and tp!1595818 tp!1595816))))

(assert (=> b!5784108 (= tp!1595738 e!3552981)))

(assert (= (and b!5784108 (is-ElementMatch!15792 (regOne!32096 r!7292))) b!5784580))

(assert (= (and b!5784108 (is-Concat!24637 (regOne!32096 r!7292))) b!5784581))

(assert (= (and b!5784108 (is-Star!15792 (regOne!32096 r!7292))) b!5784582))

(assert (= (and b!5784108 (is-Union!15792 (regOne!32096 r!7292))) b!5784583))

(declare-fun b!5784584 () Bool)

(declare-fun e!3552982 () Bool)

(assert (=> b!5784584 (= e!3552982 tp_is_empty!40837)))

(declare-fun b!5784586 () Bool)

(declare-fun tp!1595822 () Bool)

(assert (=> b!5784586 (= e!3552982 tp!1595822)))

(declare-fun b!5784585 () Bool)

(declare-fun tp!1595824 () Bool)

(declare-fun tp!1595820 () Bool)

(assert (=> b!5784585 (= e!3552982 (and tp!1595824 tp!1595820))))

(declare-fun b!5784587 () Bool)

(declare-fun tp!1595823 () Bool)

(declare-fun tp!1595821 () Bool)

(assert (=> b!5784587 (= e!3552982 (and tp!1595823 tp!1595821))))

(assert (=> b!5784108 (= tp!1595741 e!3552982)))

(assert (= (and b!5784108 (is-ElementMatch!15792 (regTwo!32096 r!7292))) b!5784584))

(assert (= (and b!5784108 (is-Concat!24637 (regTwo!32096 r!7292))) b!5784585))

(assert (= (and b!5784108 (is-Star!15792 (regTwo!32096 r!7292))) b!5784586))

(assert (= (and b!5784108 (is-Union!15792 (regTwo!32096 r!7292))) b!5784587))

(declare-fun b!5784588 () Bool)

(declare-fun e!3552983 () Bool)

(assert (=> b!5784588 (= e!3552983 tp_is_empty!40837)))

(declare-fun b!5784590 () Bool)

(declare-fun tp!1595827 () Bool)

(assert (=> b!5784590 (= e!3552983 tp!1595827)))

(declare-fun b!5784589 () Bool)

(declare-fun tp!1595829 () Bool)

(declare-fun tp!1595825 () Bool)

(assert (=> b!5784589 (= e!3552983 (and tp!1595829 tp!1595825))))

(declare-fun b!5784591 () Bool)

(declare-fun tp!1595828 () Bool)

(declare-fun tp!1595826 () Bool)

(assert (=> b!5784591 (= e!3552983 (and tp!1595828 tp!1595826))))

(assert (=> b!5784103 (= tp!1595744 e!3552983)))

(assert (= (and b!5784103 (is-ElementMatch!15792 (regOne!32097 r!7292))) b!5784588))

(assert (= (and b!5784103 (is-Concat!24637 (regOne!32097 r!7292))) b!5784589))

(assert (= (and b!5784103 (is-Star!15792 (regOne!32097 r!7292))) b!5784590))

(assert (= (and b!5784103 (is-Union!15792 (regOne!32097 r!7292))) b!5784591))

(declare-fun b!5784592 () Bool)

(declare-fun e!3552984 () Bool)

(assert (=> b!5784592 (= e!3552984 tp_is_empty!40837)))

(declare-fun b!5784594 () Bool)

(declare-fun tp!1595832 () Bool)

(assert (=> b!5784594 (= e!3552984 tp!1595832)))

(declare-fun b!5784593 () Bool)

(declare-fun tp!1595834 () Bool)

(declare-fun tp!1595830 () Bool)

(assert (=> b!5784593 (= e!3552984 (and tp!1595834 tp!1595830))))

(declare-fun b!5784595 () Bool)

(declare-fun tp!1595833 () Bool)

(declare-fun tp!1595831 () Bool)

(assert (=> b!5784595 (= e!3552984 (and tp!1595833 tp!1595831))))

(assert (=> b!5784103 (= tp!1595737 e!3552984)))

(assert (= (and b!5784103 (is-ElementMatch!15792 (regTwo!32097 r!7292))) b!5784592))

(assert (= (and b!5784103 (is-Concat!24637 (regTwo!32097 r!7292))) b!5784593))

(assert (= (and b!5784103 (is-Star!15792 (regTwo!32097 r!7292))) b!5784594))

(assert (= (and b!5784103 (is-Union!15792 (regTwo!32097 r!7292))) b!5784595))

(push 1)

(assert (not b!5784554))

(assert (not b!5784561))

(assert (not b!5784524))

(assert (not d!1822744))

(assert (not b!5784455))

(assert (not d!1822746))

(assert (not b!5784331))

(assert (not d!1822754))

(assert (not bm!450313))

(assert (not b!5784594))

(assert (not b!5784587))

(assert (not d!1822724))

(assert (not d!1822760))

(assert (not b!5784457))

(assert (not b!5784496))

(assert (not b!5784553))

(assert (not b!5784590))

(assert (not b!5784526))

(assert (not b!5784591))

(assert (not b!5784328))

(assert (not b!5784321))

(assert (not b!5784418))

(assert (not b!5784574))

(assert (not d!1822752))

(assert (not b!5784569))

(assert (not d!1822764))

(assert (not d!1822736))

(assert (not b!5784417))

(assert (not d!1822732))

(assert (not b!5784527))

(assert (not b!5784519))

(assert (not b!5784325))

(assert (not b!5784463))

(assert (not b!5784520))

(assert (not b!5784518))

(assert (not d!1822742))

(assert (not d!1822728))

(assert (not b!5784260))

(assert (not b!5784226))

(assert (not b!5784581))

(assert (not d!1822750))

(assert (not setNonEmpty!38851))

(assert (not bm!450314))

(assert (not bm!450323))

(assert (not b!5784593))

(assert (not b!5784456))

(assert (not d!1822766))

(assert (not b!5784560))

(assert (not b!5784585))

(assert (not b!5784326))

(assert (not b!5784583))

(assert (not b!5784555))

(assert (not b!5784586))

(assert (not b!5784416))

(assert (not b!5784595))

(assert (not d!1822730))

(assert (not bm!450320))

(assert (not d!1822716))

(assert (not b!5784579))

(assert (not d!1822734))

(assert (not b!5784413))

(assert tp_is_empty!40837)

(assert (not b!5784568))

(assert (not bm!450319))

(assert (not b!5784415))

(assert (not b!5784332))

(assert (not b!5784461))

(assert (not b!5784582))

(assert (not b!5784414))

(assert (not b!5784259))

(assert (not b!5784199))

(assert (not d!1822758))

(assert (not b!5784521))

(assert (not b!5784454))

(assert (not b!5784589))

(assert (not b!5784458))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

