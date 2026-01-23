; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!549324 () Bool)

(assert start!549324)

(declare-fun b!5188952 () Bool)

(declare-fun e!3232291 () Bool)

(declare-fun tp!1455726 () Bool)

(declare-fun tp!1455730 () Bool)

(assert (=> b!5188952 (= e!3232291 (and tp!1455726 tp!1455730))))

(declare-fun b!5188953 () Bool)

(declare-fun e!3232296 () Bool)

(declare-fun tp!1455731 () Bool)

(assert (=> b!5188953 (= e!3232296 tp!1455731)))

(declare-fun b!5188954 () Bool)

(declare-fun res!2203993 () Bool)

(declare-fun e!3232293 () Bool)

(assert (=> b!5188954 (=> (not res!2203993) (not e!3232293))))

(declare-datatypes ((C!29706 0))(
  ( (C!29707 (val!24555 Int)) )
))
(declare-datatypes ((Regex!14718 0))(
  ( (ElementMatch!14718 (c!894349 C!29706)) (Concat!23563 (regOne!29948 Regex!14718) (regTwo!29948 Regex!14718)) (EmptyExpr!14718) (Star!14718 (reg!15047 Regex!14718)) (EmptyLang!14718) (Union!14718 (regOne!29949 Regex!14718) (regTwo!29949 Regex!14718)) )
))
(declare-fun r!7292 () Regex!14718)

(declare-datatypes ((List!60453 0))(
  ( (Nil!60329) (Cons!60329 (h!66777 Regex!14718) (t!373606 List!60453)) )
))
(declare-datatypes ((Context!8204 0))(
  ( (Context!8205 (exprs!4602 List!60453)) )
))
(declare-datatypes ((List!60454 0))(
  ( (Nil!60330) (Cons!60330 (h!66778 Context!8204) (t!373607 List!60454)) )
))
(declare-fun zl!343 () List!60454)

(declare-fun unfocusZipper!460 (List!60454) Regex!14718)

(assert (=> b!5188954 (= res!2203993 (= r!7292 (unfocusZipper!460 zl!343)))))

(declare-fun b!5188955 () Bool)

(declare-fun res!2203995 () Bool)

(declare-fun e!3232294 () Bool)

(assert (=> b!5188955 (=> res!2203995 e!3232294)))

(declare-fun generalisedConcat!387 (List!60453) Regex!14718)

(assert (=> b!5188955 (= res!2203995 (not (= r!7292 (generalisedConcat!387 (exprs!4602 (h!66778 zl!343))))))))

(declare-fun e!3232292 () Bool)

(declare-fun b!5188956 () Bool)

(declare-fun tp!1455734 () Bool)

(declare-fun inv!80043 (Context!8204) Bool)

(assert (=> b!5188956 (= e!3232292 (and (inv!80043 (h!66778 zl!343)) e!3232296 tp!1455734))))

(declare-fun b!5188957 () Bool)

(declare-fun tp!1455729 () Bool)

(declare-fun tp!1455733 () Bool)

(assert (=> b!5188957 (= e!3232291 (and tp!1455729 tp!1455733))))

(declare-fun b!5188958 () Bool)

(declare-fun res!2203992 () Bool)

(declare-fun e!3232298 () Bool)

(assert (=> b!5188958 (=> res!2203992 e!3232298)))

(declare-fun lt!2136946 () (Set Context!8204))

(declare-datatypes ((List!60455 0))(
  ( (Nil!60331) (Cons!60331 (h!66779 C!29706) (t!373608 List!60455)) )
))
(declare-fun s!2326 () List!60455)

(declare-fun lt!2136949 () Context!8204)

(declare-fun derivationStepZipperDown!187 (Regex!14718 Context!8204 C!29706) (Set Context!8204))

(assert (=> b!5188958 (= res!2203992 (not (= lt!2136946 (set.union (derivationStepZipperDown!187 (regOne!29949 r!7292) lt!2136949 (h!66779 s!2326)) (derivationStepZipperDown!187 (regTwo!29949 r!7292) lt!2136949 (h!66779 s!2326))))))))

(declare-fun res!2203997 () Bool)

(assert (=> start!549324 (=> (not res!2203997) (not e!3232293))))

(declare-fun validRegex!6454 (Regex!14718) Bool)

(assert (=> start!549324 (= res!2203997 (validRegex!6454 r!7292))))

(assert (=> start!549324 e!3232293))

(assert (=> start!549324 e!3232291))

(declare-fun condSetEmpty!32731 () Bool)

(declare-fun z!1189 () (Set Context!8204))

(assert (=> start!549324 (= condSetEmpty!32731 (= z!1189 (as set.empty (Set Context!8204))))))

(declare-fun setRes!32731 () Bool)

(assert (=> start!549324 setRes!32731))

(assert (=> start!549324 e!3232292))

(declare-fun e!3232297 () Bool)

(assert (=> start!549324 e!3232297))

(declare-fun b!5188959 () Bool)

(declare-fun res!2203999 () Bool)

(assert (=> b!5188959 (=> res!2203999 e!3232294)))

(assert (=> b!5188959 (= res!2203999 (or (is-EmptyExpr!14718 r!7292) (is-EmptyLang!14718 r!7292) (is-ElementMatch!14718 r!7292) (not (is-Union!14718 r!7292))))))

(declare-fun b!5188960 () Bool)

(declare-fun res!2203990 () Bool)

(assert (=> b!5188960 (=> res!2203990 e!3232294)))

(declare-fun generalisedUnion!647 (List!60453) Regex!14718)

(declare-fun unfocusZipperList!160 (List!60454) List!60453)

(assert (=> b!5188960 (= res!2203990 (not (= r!7292 (generalisedUnion!647 (unfocusZipperList!160 zl!343)))))))

(declare-fun b!5188961 () Bool)

(declare-fun res!2203991 () Bool)

(assert (=> b!5188961 (=> res!2203991 e!3232294)))

(assert (=> b!5188961 (= res!2203991 (not (is-Cons!60329 (exprs!4602 (h!66778 zl!343)))))))

(declare-fun b!5188962 () Bool)

(declare-fun e!3232295 () Bool)

(assert (=> b!5188962 (= e!3232294 e!3232295)))

(declare-fun res!2203994 () Bool)

(assert (=> b!5188962 (=> res!2203994 e!3232295)))

(declare-fun lt!2136947 () Bool)

(declare-fun lt!2136945 () Bool)

(declare-fun lt!2136948 () Bool)

(assert (=> b!5188962 (= res!2203994 (or (not (= lt!2136948 (or lt!2136947 lt!2136945))) (is-Nil!60331 s!2326)))))

(declare-fun matchRSpec!1821 (Regex!14718 List!60455) Bool)

(assert (=> b!5188962 (= lt!2136945 (matchRSpec!1821 (regTwo!29949 r!7292) s!2326))))

(declare-fun matchR!6903 (Regex!14718 List!60455) Bool)

(assert (=> b!5188962 (= lt!2136945 (matchR!6903 (regTwo!29949 r!7292) s!2326))))

(declare-datatypes ((Unit!152270 0))(
  ( (Unit!152271) )
))
(declare-fun lt!2136943 () Unit!152270)

(declare-fun mainMatchTheorem!1821 (Regex!14718 List!60455) Unit!152270)

(assert (=> b!5188962 (= lt!2136943 (mainMatchTheorem!1821 (regTwo!29949 r!7292) s!2326))))

(assert (=> b!5188962 (= lt!2136947 (matchRSpec!1821 (regOne!29949 r!7292) s!2326))))

(assert (=> b!5188962 (= lt!2136947 (matchR!6903 (regOne!29949 r!7292) s!2326))))

(declare-fun lt!2136950 () Unit!152270)

(assert (=> b!5188962 (= lt!2136950 (mainMatchTheorem!1821 (regOne!29949 r!7292) s!2326))))

(declare-fun b!5188963 () Bool)

(assert (=> b!5188963 (= e!3232293 (not e!3232294))))

(declare-fun res!2203989 () Bool)

(assert (=> b!5188963 (=> res!2203989 e!3232294)))

(assert (=> b!5188963 (= res!2203989 (not (is-Cons!60330 zl!343)))))

(assert (=> b!5188963 (= lt!2136948 (matchRSpec!1821 r!7292 s!2326))))

(assert (=> b!5188963 (= lt!2136948 (matchR!6903 r!7292 s!2326))))

(declare-fun lt!2136944 () Unit!152270)

(assert (=> b!5188963 (= lt!2136944 (mainMatchTheorem!1821 r!7292 s!2326))))

(declare-fun b!5188964 () Bool)

(declare-fun tp_is_empty!38689 () Bool)

(declare-fun tp!1455732 () Bool)

(assert (=> b!5188964 (= e!3232297 (and tp_is_empty!38689 tp!1455732))))

(declare-fun b!5188965 () Bool)

(declare-fun res!2203998 () Bool)

(assert (=> b!5188965 (=> (not res!2203998) (not e!3232293))))

(declare-fun toList!8502 ((Set Context!8204)) List!60454)

(assert (=> b!5188965 (= res!2203998 (= (toList!8502 z!1189) zl!343))))

(declare-fun b!5188966 () Bool)

(declare-fun tp!1455727 () Bool)

(assert (=> b!5188966 (= e!3232291 tp!1455727)))

(declare-fun setIsEmpty!32731 () Bool)

(assert (=> setIsEmpty!32731 setRes!32731))

(declare-fun b!5188967 () Bool)

(declare-fun e!3232290 () Bool)

(declare-fun tp!1455728 () Bool)

(assert (=> b!5188967 (= e!3232290 tp!1455728)))

(declare-fun b!5188968 () Bool)

(assert (=> b!5188968 (= e!3232295 e!3232298)))

(declare-fun res!2204000 () Bool)

(assert (=> b!5188968 (=> res!2204000 e!3232298)))

(declare-fun lt!2136942 () (Set Context!8204))

(assert (=> b!5188968 (= res!2204000 (not (= lt!2136942 lt!2136946)))))

(assert (=> b!5188968 (= lt!2136946 (derivationStepZipperDown!187 r!7292 lt!2136949 (h!66779 s!2326)))))

(assert (=> b!5188968 (= lt!2136949 (Context!8205 Nil!60329))))

(declare-fun derivationStepZipperUp!108 (Context!8204 C!29706) (Set Context!8204))

(assert (=> b!5188968 (= lt!2136942 (derivationStepZipperUp!108 (Context!8205 (Cons!60329 r!7292 Nil!60329)) (h!66779 s!2326)))))

(declare-fun b!5188969 () Bool)

(assert (=> b!5188969 (= e!3232291 tp_is_empty!38689)))

(declare-fun tp!1455735 () Bool)

(declare-fun setNonEmpty!32731 () Bool)

(declare-fun setElem!32731 () Context!8204)

(assert (=> setNonEmpty!32731 (= setRes!32731 (and tp!1455735 (inv!80043 setElem!32731) e!3232290))))

(declare-fun setRest!32731 () (Set Context!8204))

(assert (=> setNonEmpty!32731 (= z!1189 (set.union (set.insert setElem!32731 (as set.empty (Set Context!8204))) setRest!32731))))

(declare-fun b!5188970 () Bool)

(declare-fun res!2203996 () Bool)

(assert (=> b!5188970 (=> res!2203996 e!3232294)))

(declare-fun isEmpty!32295 (List!60454) Bool)

(assert (=> b!5188970 (= res!2203996 (not (isEmpty!32295 (t!373607 zl!343))))))

(declare-fun b!5188971 () Bool)

(assert (=> b!5188971 (= e!3232298 (validRegex!6454 (regTwo!29949 r!7292)))))

(assert (= (and start!549324 res!2203997) b!5188965))

(assert (= (and b!5188965 res!2203998) b!5188954))

(assert (= (and b!5188954 res!2203993) b!5188963))

(assert (= (and b!5188963 (not res!2203989)) b!5188970))

(assert (= (and b!5188970 (not res!2203996)) b!5188955))

(assert (= (and b!5188955 (not res!2203995)) b!5188961))

(assert (= (and b!5188961 (not res!2203991)) b!5188960))

(assert (= (and b!5188960 (not res!2203990)) b!5188959))

(assert (= (and b!5188959 (not res!2203999)) b!5188962))

(assert (= (and b!5188962 (not res!2203994)) b!5188968))

(assert (= (and b!5188968 (not res!2204000)) b!5188958))

(assert (= (and b!5188958 (not res!2203992)) b!5188971))

(assert (= (and start!549324 (is-ElementMatch!14718 r!7292)) b!5188969))

(assert (= (and start!549324 (is-Concat!23563 r!7292)) b!5188952))

(assert (= (and start!549324 (is-Star!14718 r!7292)) b!5188966))

(assert (= (and start!549324 (is-Union!14718 r!7292)) b!5188957))

(assert (= (and start!549324 condSetEmpty!32731) setIsEmpty!32731))

(assert (= (and start!549324 (not condSetEmpty!32731)) setNonEmpty!32731))

(assert (= setNonEmpty!32731 b!5188967))

(assert (= b!5188956 b!5188953))

(assert (= (and start!549324 (is-Cons!60330 zl!343)) b!5188956))

(assert (= (and start!549324 (is-Cons!60331 s!2326)) b!5188964))

(declare-fun m!6245830 () Bool)

(assert (=> b!5188970 m!6245830))

(declare-fun m!6245832 () Bool)

(assert (=> b!5188962 m!6245832))

(declare-fun m!6245834 () Bool)

(assert (=> b!5188962 m!6245834))

(declare-fun m!6245836 () Bool)

(assert (=> b!5188962 m!6245836))

(declare-fun m!6245838 () Bool)

(assert (=> b!5188962 m!6245838))

(declare-fun m!6245840 () Bool)

(assert (=> b!5188962 m!6245840))

(declare-fun m!6245842 () Bool)

(assert (=> b!5188962 m!6245842))

(declare-fun m!6245844 () Bool)

(assert (=> start!549324 m!6245844))

(declare-fun m!6245846 () Bool)

(assert (=> b!5188960 m!6245846))

(assert (=> b!5188960 m!6245846))

(declare-fun m!6245848 () Bool)

(assert (=> b!5188960 m!6245848))

(declare-fun m!6245850 () Bool)

(assert (=> b!5188971 m!6245850))

(declare-fun m!6245852 () Bool)

(assert (=> b!5188958 m!6245852))

(declare-fun m!6245854 () Bool)

(assert (=> b!5188958 m!6245854))

(declare-fun m!6245856 () Bool)

(assert (=> b!5188955 m!6245856))

(declare-fun m!6245858 () Bool)

(assert (=> b!5188965 m!6245858))

(declare-fun m!6245860 () Bool)

(assert (=> b!5188956 m!6245860))

(declare-fun m!6245862 () Bool)

(assert (=> b!5188954 m!6245862))

(declare-fun m!6245864 () Bool)

(assert (=> b!5188968 m!6245864))

(declare-fun m!6245866 () Bool)

(assert (=> b!5188968 m!6245866))

(declare-fun m!6245868 () Bool)

(assert (=> b!5188963 m!6245868))

(declare-fun m!6245870 () Bool)

(assert (=> b!5188963 m!6245870))

(declare-fun m!6245872 () Bool)

(assert (=> b!5188963 m!6245872))

(declare-fun m!6245874 () Bool)

(assert (=> setNonEmpty!32731 m!6245874))

(push 1)

(assert (not setNonEmpty!32731))

(assert (not b!5188966))

(assert (not b!5188970))

(assert (not b!5188963))

(assert (not b!5188954))

(assert (not b!5188960))

(assert (not b!5188967))

(assert (not b!5188962))

(assert (not start!549324))

(assert (not b!5188965))

(assert (not b!5188952))

(assert (not b!5188955))

(assert (not b!5188958))

(assert (not b!5188957))

(assert (not b!5188964))

(assert (not b!5188968))

(assert (not b!5188971))

(assert tp_is_empty!38689)

(assert (not b!5188953))

(assert (not b!5188956))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5189074 () Bool)

(declare-fun e!3232353 () Bool)

(declare-fun lt!2136980 () Regex!14718)

(declare-fun head!11113 (List!60453) Regex!14718)

(assert (=> b!5189074 (= e!3232353 (= lt!2136980 (head!11113 (unfocusZipperList!160 zl!343))))))

(declare-fun b!5189075 () Bool)

(declare-fun e!3232354 () Bool)

(declare-fun isEmpty!32297 (List!60453) Bool)

(assert (=> b!5189075 (= e!3232354 (isEmpty!32297 (t!373606 (unfocusZipperList!160 zl!343))))))

(declare-fun b!5189076 () Bool)

(declare-fun e!3232355 () Regex!14718)

(assert (=> b!5189076 (= e!3232355 EmptyLang!14718)))

(declare-fun b!5189077 () Bool)

(declare-fun isUnion!175 (Regex!14718) Bool)

(assert (=> b!5189077 (= e!3232353 (isUnion!175 lt!2136980))))

(declare-fun b!5189078 () Bool)

(declare-fun e!3232352 () Bool)

(declare-fun e!3232357 () Bool)

(assert (=> b!5189078 (= e!3232352 e!3232357)))

(declare-fun c!894367 () Bool)

(assert (=> b!5189078 (= c!894367 (isEmpty!32297 (unfocusZipperList!160 zl!343)))))

(declare-fun b!5189079 () Bool)

(assert (=> b!5189079 (= e!3232357 e!3232353)))

(declare-fun c!894369 () Bool)

(declare-fun tail!10210 (List!60453) List!60453)

(assert (=> b!5189079 (= c!894369 (isEmpty!32297 (tail!10210 (unfocusZipperList!160 zl!343))))))

(declare-fun b!5189080 () Bool)

(declare-fun isEmptyLang!743 (Regex!14718) Bool)

(assert (=> b!5189080 (= e!3232357 (isEmptyLang!743 lt!2136980))))

(declare-fun d!1676495 () Bool)

(assert (=> d!1676495 e!3232352))

(declare-fun res!2204048 () Bool)

(assert (=> d!1676495 (=> (not res!2204048) (not e!3232352))))

(assert (=> d!1676495 (= res!2204048 (validRegex!6454 lt!2136980))))

(declare-fun e!3232356 () Regex!14718)

(assert (=> d!1676495 (= lt!2136980 e!3232356)))

(declare-fun c!894370 () Bool)

(assert (=> d!1676495 (= c!894370 e!3232354)))

(declare-fun res!2204047 () Bool)

(assert (=> d!1676495 (=> (not res!2204047) (not e!3232354))))

(assert (=> d!1676495 (= res!2204047 (is-Cons!60329 (unfocusZipperList!160 zl!343)))))

(declare-fun lambda!259428 () Int)

(declare-fun forall!14205 (List!60453 Int) Bool)

(assert (=> d!1676495 (forall!14205 (unfocusZipperList!160 zl!343) lambda!259428)))

(assert (=> d!1676495 (= (generalisedUnion!647 (unfocusZipperList!160 zl!343)) lt!2136980)))

(declare-fun b!5189081 () Bool)

(assert (=> b!5189081 (= e!3232355 (Union!14718 (h!66777 (unfocusZipperList!160 zl!343)) (generalisedUnion!647 (t!373606 (unfocusZipperList!160 zl!343)))))))

(declare-fun b!5189082 () Bool)

(assert (=> b!5189082 (= e!3232356 e!3232355)))

(declare-fun c!894368 () Bool)

(assert (=> b!5189082 (= c!894368 (is-Cons!60329 (unfocusZipperList!160 zl!343)))))

(declare-fun b!5189083 () Bool)

(assert (=> b!5189083 (= e!3232356 (h!66777 (unfocusZipperList!160 zl!343)))))

(assert (= (and d!1676495 res!2204047) b!5189075))

(assert (= (and d!1676495 c!894370) b!5189083))

(assert (= (and d!1676495 (not c!894370)) b!5189082))

(assert (= (and b!5189082 c!894368) b!5189081))

(assert (= (and b!5189082 (not c!894368)) b!5189076))

(assert (= (and d!1676495 res!2204048) b!5189078))

(assert (= (and b!5189078 c!894367) b!5189080))

(assert (= (and b!5189078 (not c!894367)) b!5189079))

(assert (= (and b!5189079 c!894369) b!5189074))

(assert (= (and b!5189079 (not c!894369)) b!5189077))

(declare-fun m!6245922 () Bool)

(assert (=> b!5189080 m!6245922))

(assert (=> b!5189078 m!6245846))

(declare-fun m!6245924 () Bool)

(assert (=> b!5189078 m!6245924))

(declare-fun m!6245926 () Bool)

(assert (=> b!5189081 m!6245926))

(declare-fun m!6245928 () Bool)

(assert (=> b!5189077 m!6245928))

(declare-fun m!6245930 () Bool)

(assert (=> b!5189075 m!6245930))

(declare-fun m!6245932 () Bool)

(assert (=> d!1676495 m!6245932))

(assert (=> d!1676495 m!6245846))

(declare-fun m!6245934 () Bool)

(assert (=> d!1676495 m!6245934))

(assert (=> b!5189079 m!6245846))

(declare-fun m!6245936 () Bool)

(assert (=> b!5189079 m!6245936))

(assert (=> b!5189079 m!6245936))

(declare-fun m!6245938 () Bool)

(assert (=> b!5189079 m!6245938))

(assert (=> b!5189074 m!6245846))

(declare-fun m!6245940 () Bool)

(assert (=> b!5189074 m!6245940))

(assert (=> b!5188960 d!1676495))

(declare-fun bs!1208476 () Bool)

(declare-fun d!1676499 () Bool)

(assert (= bs!1208476 (and d!1676499 d!1676495)))

(declare-fun lambda!259431 () Int)

(assert (=> bs!1208476 (= lambda!259431 lambda!259428)))

(declare-fun lt!2136983 () List!60453)

(assert (=> d!1676499 (forall!14205 lt!2136983 lambda!259431)))

(declare-fun e!3232360 () List!60453)

(assert (=> d!1676499 (= lt!2136983 e!3232360)))

(declare-fun c!894373 () Bool)

(assert (=> d!1676499 (= c!894373 (is-Cons!60330 zl!343))))

(assert (=> d!1676499 (= (unfocusZipperList!160 zl!343) lt!2136983)))

(declare-fun b!5189088 () Bool)

(assert (=> b!5189088 (= e!3232360 (Cons!60329 (generalisedConcat!387 (exprs!4602 (h!66778 zl!343))) (unfocusZipperList!160 (t!373607 zl!343))))))

(declare-fun b!5189089 () Bool)

(assert (=> b!5189089 (= e!3232360 Nil!60329)))

(assert (= (and d!1676499 c!894373) b!5189088))

(assert (= (and d!1676499 (not c!894373)) b!5189089))

(declare-fun m!6245942 () Bool)

(assert (=> d!1676499 m!6245942))

(assert (=> b!5189088 m!6245856))

(declare-fun m!6245944 () Bool)

(assert (=> b!5189088 m!6245944))

(assert (=> b!5188960 d!1676499))

(declare-fun call!364745 () List!60453)

(declare-fun c!894385 () Bool)

(declare-fun c!894387 () Bool)

(declare-fun bm!364735 () Bool)

(declare-fun $colon$colon!1254 (List!60453 Regex!14718) List!60453)

(assert (=> bm!364735 (= call!364745 ($colon$colon!1254 (exprs!4602 lt!2136949) (ite (or c!894385 c!894387) (regTwo!29948 (regOne!29949 r!7292)) (regOne!29949 r!7292))))))

(declare-fun b!5189112 () Bool)

(declare-fun e!3232377 () (Set Context!8204))

(assert (=> b!5189112 (= e!3232377 (set.insert lt!2136949 (as set.empty (Set Context!8204))))))

(declare-fun b!5189113 () Bool)

(declare-fun e!3232378 () (Set Context!8204))

(declare-fun e!3232376 () (Set Context!8204))

(assert (=> b!5189113 (= e!3232378 e!3232376)))

(assert (=> b!5189113 (= c!894387 (is-Concat!23563 (regOne!29949 r!7292)))))

(declare-fun b!5189114 () Bool)

(declare-fun e!3232375 () (Set Context!8204))

(assert (=> b!5189114 (= e!3232377 e!3232375)))

(declare-fun c!894386 () Bool)

(assert (=> b!5189114 (= c!894386 (is-Union!14718 (regOne!29949 r!7292)))))

(declare-fun b!5189115 () Bool)

(declare-fun c!894384 () Bool)

(assert (=> b!5189115 (= c!894384 (is-Star!14718 (regOne!29949 r!7292)))))

(declare-fun e!3232374 () (Set Context!8204))

(assert (=> b!5189115 (= e!3232376 e!3232374)))

(declare-fun b!5189116 () Bool)

(declare-fun e!3232373 () Bool)

(declare-fun nullable!4917 (Regex!14718) Bool)

(assert (=> b!5189116 (= e!3232373 (nullable!4917 (regOne!29948 (regOne!29949 r!7292))))))

(declare-fun b!5189117 () Bool)

(declare-fun call!364740 () (Set Context!8204))

(assert (=> b!5189117 (= e!3232374 call!364740)))

(declare-fun bm!364736 () Bool)

(declare-fun call!364742 () (Set Context!8204))

(assert (=> bm!364736 (= call!364740 call!364742)))

(declare-fun d!1676501 () Bool)

(declare-fun c!894388 () Bool)

(assert (=> d!1676501 (= c!894388 (and (is-ElementMatch!14718 (regOne!29949 r!7292)) (= (c!894349 (regOne!29949 r!7292)) (h!66779 s!2326))))))

(assert (=> d!1676501 (= (derivationStepZipperDown!187 (regOne!29949 r!7292) lt!2136949 (h!66779 s!2326)) e!3232377)))

(declare-fun bm!364737 () Bool)

(declare-fun call!364741 () (Set Context!8204))

(assert (=> bm!364737 (= call!364742 call!364741)))

(declare-fun b!5189118 () Bool)

(assert (=> b!5189118 (= c!894385 e!3232373)))

(declare-fun res!2204051 () Bool)

(assert (=> b!5189118 (=> (not res!2204051) (not e!3232373))))

(assert (=> b!5189118 (= res!2204051 (is-Concat!23563 (regOne!29949 r!7292)))))

(assert (=> b!5189118 (= e!3232375 e!3232378)))

(declare-fun b!5189119 () Bool)

(declare-fun call!364744 () (Set Context!8204))

(assert (=> b!5189119 (= e!3232378 (set.union call!364744 call!364742))))

(declare-fun bm!364738 () Bool)

(declare-fun call!364743 () List!60453)

(assert (=> bm!364738 (= call!364741 (derivationStepZipperDown!187 (ite c!894386 (regOne!29949 (regOne!29949 r!7292)) (ite c!894385 (regTwo!29948 (regOne!29949 r!7292)) (ite c!894387 (regOne!29948 (regOne!29949 r!7292)) (reg!15047 (regOne!29949 r!7292))))) (ite (or c!894386 c!894385) lt!2136949 (Context!8205 call!364743)) (h!66779 s!2326)))))

(declare-fun bm!364739 () Bool)

(assert (=> bm!364739 (= call!364744 (derivationStepZipperDown!187 (ite c!894386 (regTwo!29949 (regOne!29949 r!7292)) (regOne!29948 (regOne!29949 r!7292))) (ite c!894386 lt!2136949 (Context!8205 call!364745)) (h!66779 s!2326)))))

(declare-fun b!5189120 () Bool)

(assert (=> b!5189120 (= e!3232375 (set.union call!364741 call!364744))))

(declare-fun b!5189121 () Bool)

(assert (=> b!5189121 (= e!3232376 call!364740)))

(declare-fun b!5189122 () Bool)

(assert (=> b!5189122 (= e!3232374 (as set.empty (Set Context!8204)))))

(declare-fun bm!364740 () Bool)

(assert (=> bm!364740 (= call!364743 call!364745)))

(assert (= (and d!1676501 c!894388) b!5189112))

(assert (= (and d!1676501 (not c!894388)) b!5189114))

(assert (= (and b!5189114 c!894386) b!5189120))

(assert (= (and b!5189114 (not c!894386)) b!5189118))

(assert (= (and b!5189118 res!2204051) b!5189116))

(assert (= (and b!5189118 c!894385) b!5189119))

(assert (= (and b!5189118 (not c!894385)) b!5189113))

(assert (= (and b!5189113 c!894387) b!5189121))

(assert (= (and b!5189113 (not c!894387)) b!5189115))

(assert (= (and b!5189115 c!894384) b!5189117))

(assert (= (and b!5189115 (not c!894384)) b!5189122))

(assert (= (or b!5189121 b!5189117) bm!364740))

(assert (= (or b!5189121 b!5189117) bm!364736))

(assert (= (or b!5189119 bm!364740) bm!364735))

(assert (= (or b!5189119 bm!364736) bm!364737))

(assert (= (or b!5189120 b!5189119) bm!364739))

(assert (= (or b!5189120 bm!364737) bm!364738))

(declare-fun m!6245946 () Bool)

(assert (=> b!5189112 m!6245946))

(declare-fun m!6245948 () Bool)

(assert (=> b!5189116 m!6245948))

(declare-fun m!6245950 () Bool)

(assert (=> bm!364739 m!6245950))

(declare-fun m!6245952 () Bool)

(assert (=> bm!364735 m!6245952))

(declare-fun m!6245954 () Bool)

(assert (=> bm!364738 m!6245954))

(assert (=> b!5188958 d!1676501))

(declare-fun c!894392 () Bool)

(declare-fun call!364751 () List!60453)

(declare-fun bm!364741 () Bool)

(declare-fun c!894390 () Bool)

(assert (=> bm!364741 (= call!364751 ($colon$colon!1254 (exprs!4602 lt!2136949) (ite (or c!894390 c!894392) (regTwo!29948 (regTwo!29949 r!7292)) (regTwo!29949 r!7292))))))

(declare-fun b!5189123 () Bool)

(declare-fun e!3232383 () (Set Context!8204))

(assert (=> b!5189123 (= e!3232383 (set.insert lt!2136949 (as set.empty (Set Context!8204))))))

(declare-fun b!5189124 () Bool)

(declare-fun e!3232384 () (Set Context!8204))

(declare-fun e!3232382 () (Set Context!8204))

(assert (=> b!5189124 (= e!3232384 e!3232382)))

(assert (=> b!5189124 (= c!894392 (is-Concat!23563 (regTwo!29949 r!7292)))))

(declare-fun b!5189125 () Bool)

(declare-fun e!3232381 () (Set Context!8204))

(assert (=> b!5189125 (= e!3232383 e!3232381)))

(declare-fun c!894391 () Bool)

(assert (=> b!5189125 (= c!894391 (is-Union!14718 (regTwo!29949 r!7292)))))

(declare-fun b!5189126 () Bool)

(declare-fun c!894389 () Bool)

(assert (=> b!5189126 (= c!894389 (is-Star!14718 (regTwo!29949 r!7292)))))

(declare-fun e!3232380 () (Set Context!8204))

(assert (=> b!5189126 (= e!3232382 e!3232380)))

(declare-fun b!5189127 () Bool)

(declare-fun e!3232379 () Bool)

(assert (=> b!5189127 (= e!3232379 (nullable!4917 (regOne!29948 (regTwo!29949 r!7292))))))

(declare-fun b!5189128 () Bool)

(declare-fun call!364746 () (Set Context!8204))

(assert (=> b!5189128 (= e!3232380 call!364746)))

(declare-fun bm!364742 () Bool)

(declare-fun call!364748 () (Set Context!8204))

(assert (=> bm!364742 (= call!364746 call!364748)))

(declare-fun d!1676503 () Bool)

(declare-fun c!894393 () Bool)

(assert (=> d!1676503 (= c!894393 (and (is-ElementMatch!14718 (regTwo!29949 r!7292)) (= (c!894349 (regTwo!29949 r!7292)) (h!66779 s!2326))))))

(assert (=> d!1676503 (= (derivationStepZipperDown!187 (regTwo!29949 r!7292) lt!2136949 (h!66779 s!2326)) e!3232383)))

(declare-fun bm!364743 () Bool)

(declare-fun call!364747 () (Set Context!8204))

(assert (=> bm!364743 (= call!364748 call!364747)))

(declare-fun b!5189129 () Bool)

(assert (=> b!5189129 (= c!894390 e!3232379)))

(declare-fun res!2204052 () Bool)

(assert (=> b!5189129 (=> (not res!2204052) (not e!3232379))))

(assert (=> b!5189129 (= res!2204052 (is-Concat!23563 (regTwo!29949 r!7292)))))

(assert (=> b!5189129 (= e!3232381 e!3232384)))

(declare-fun b!5189130 () Bool)

(declare-fun call!364750 () (Set Context!8204))

(assert (=> b!5189130 (= e!3232384 (set.union call!364750 call!364748))))

(declare-fun call!364749 () List!60453)

(declare-fun bm!364744 () Bool)

(assert (=> bm!364744 (= call!364747 (derivationStepZipperDown!187 (ite c!894391 (regOne!29949 (regTwo!29949 r!7292)) (ite c!894390 (regTwo!29948 (regTwo!29949 r!7292)) (ite c!894392 (regOne!29948 (regTwo!29949 r!7292)) (reg!15047 (regTwo!29949 r!7292))))) (ite (or c!894391 c!894390) lt!2136949 (Context!8205 call!364749)) (h!66779 s!2326)))))

(declare-fun bm!364745 () Bool)

(assert (=> bm!364745 (= call!364750 (derivationStepZipperDown!187 (ite c!894391 (regTwo!29949 (regTwo!29949 r!7292)) (regOne!29948 (regTwo!29949 r!7292))) (ite c!894391 lt!2136949 (Context!8205 call!364751)) (h!66779 s!2326)))))

(declare-fun b!5189131 () Bool)

(assert (=> b!5189131 (= e!3232381 (set.union call!364747 call!364750))))

(declare-fun b!5189132 () Bool)

(assert (=> b!5189132 (= e!3232382 call!364746)))

(declare-fun b!5189133 () Bool)

(assert (=> b!5189133 (= e!3232380 (as set.empty (Set Context!8204)))))

(declare-fun bm!364746 () Bool)

(assert (=> bm!364746 (= call!364749 call!364751)))

(assert (= (and d!1676503 c!894393) b!5189123))

(assert (= (and d!1676503 (not c!894393)) b!5189125))

(assert (= (and b!5189125 c!894391) b!5189131))

(assert (= (and b!5189125 (not c!894391)) b!5189129))

(assert (= (and b!5189129 res!2204052) b!5189127))

(assert (= (and b!5189129 c!894390) b!5189130))

(assert (= (and b!5189129 (not c!894390)) b!5189124))

(assert (= (and b!5189124 c!894392) b!5189132))

(assert (= (and b!5189124 (not c!894392)) b!5189126))

(assert (= (and b!5189126 c!894389) b!5189128))

(assert (= (and b!5189126 (not c!894389)) b!5189133))

(assert (= (or b!5189132 b!5189128) bm!364746))

(assert (= (or b!5189132 b!5189128) bm!364742))

(assert (= (or b!5189130 bm!364746) bm!364741))

(assert (= (or b!5189130 bm!364742) bm!364743))

(assert (= (or b!5189131 b!5189130) bm!364745))

(assert (= (or b!5189131 bm!364743) bm!364744))

(assert (=> b!5189123 m!6245946))

(declare-fun m!6245956 () Bool)

(assert (=> b!5189127 m!6245956))

(declare-fun m!6245958 () Bool)

(assert (=> bm!364745 m!6245958))

(declare-fun m!6245960 () Bool)

(assert (=> bm!364741 m!6245960))

(declare-fun m!6245962 () Bool)

(assert (=> bm!364744 m!6245962))

(assert (=> b!5188958 d!1676503))

(declare-fun call!364757 () List!60453)

(declare-fun c!894397 () Bool)

(declare-fun c!894395 () Bool)

(declare-fun bm!364747 () Bool)

(assert (=> bm!364747 (= call!364757 ($colon$colon!1254 (exprs!4602 lt!2136949) (ite (or c!894395 c!894397) (regTwo!29948 r!7292) r!7292)))))

(declare-fun b!5189134 () Bool)

(declare-fun e!3232389 () (Set Context!8204))

(assert (=> b!5189134 (= e!3232389 (set.insert lt!2136949 (as set.empty (Set Context!8204))))))

(declare-fun b!5189135 () Bool)

(declare-fun e!3232390 () (Set Context!8204))

(declare-fun e!3232388 () (Set Context!8204))

(assert (=> b!5189135 (= e!3232390 e!3232388)))

(assert (=> b!5189135 (= c!894397 (is-Concat!23563 r!7292))))

(declare-fun b!5189136 () Bool)

(declare-fun e!3232387 () (Set Context!8204))

(assert (=> b!5189136 (= e!3232389 e!3232387)))

(declare-fun c!894396 () Bool)

(assert (=> b!5189136 (= c!894396 (is-Union!14718 r!7292))))

(declare-fun b!5189137 () Bool)

(declare-fun c!894394 () Bool)

(assert (=> b!5189137 (= c!894394 (is-Star!14718 r!7292))))

(declare-fun e!3232386 () (Set Context!8204))

(assert (=> b!5189137 (= e!3232388 e!3232386)))

(declare-fun b!5189138 () Bool)

(declare-fun e!3232385 () Bool)

(assert (=> b!5189138 (= e!3232385 (nullable!4917 (regOne!29948 r!7292)))))

(declare-fun b!5189139 () Bool)

(declare-fun call!364752 () (Set Context!8204))

(assert (=> b!5189139 (= e!3232386 call!364752)))

(declare-fun bm!364748 () Bool)

(declare-fun call!364754 () (Set Context!8204))

(assert (=> bm!364748 (= call!364752 call!364754)))

(declare-fun d!1676505 () Bool)

(declare-fun c!894398 () Bool)

(assert (=> d!1676505 (= c!894398 (and (is-ElementMatch!14718 r!7292) (= (c!894349 r!7292) (h!66779 s!2326))))))

(assert (=> d!1676505 (= (derivationStepZipperDown!187 r!7292 lt!2136949 (h!66779 s!2326)) e!3232389)))

(declare-fun bm!364749 () Bool)

(declare-fun call!364753 () (Set Context!8204))

(assert (=> bm!364749 (= call!364754 call!364753)))

(declare-fun b!5189140 () Bool)

(assert (=> b!5189140 (= c!894395 e!3232385)))

(declare-fun res!2204053 () Bool)

(assert (=> b!5189140 (=> (not res!2204053) (not e!3232385))))

(assert (=> b!5189140 (= res!2204053 (is-Concat!23563 r!7292))))

(assert (=> b!5189140 (= e!3232387 e!3232390)))

(declare-fun b!5189141 () Bool)

(declare-fun call!364756 () (Set Context!8204))

(assert (=> b!5189141 (= e!3232390 (set.union call!364756 call!364754))))

(declare-fun call!364755 () List!60453)

(declare-fun bm!364750 () Bool)

(assert (=> bm!364750 (= call!364753 (derivationStepZipperDown!187 (ite c!894396 (regOne!29949 r!7292) (ite c!894395 (regTwo!29948 r!7292) (ite c!894397 (regOne!29948 r!7292) (reg!15047 r!7292)))) (ite (or c!894396 c!894395) lt!2136949 (Context!8205 call!364755)) (h!66779 s!2326)))))

(declare-fun bm!364751 () Bool)

(assert (=> bm!364751 (= call!364756 (derivationStepZipperDown!187 (ite c!894396 (regTwo!29949 r!7292) (regOne!29948 r!7292)) (ite c!894396 lt!2136949 (Context!8205 call!364757)) (h!66779 s!2326)))))

(declare-fun b!5189142 () Bool)

(assert (=> b!5189142 (= e!3232387 (set.union call!364753 call!364756))))

(declare-fun b!5189143 () Bool)

(assert (=> b!5189143 (= e!3232388 call!364752)))

(declare-fun b!5189144 () Bool)

(assert (=> b!5189144 (= e!3232386 (as set.empty (Set Context!8204)))))

(declare-fun bm!364752 () Bool)

(assert (=> bm!364752 (= call!364755 call!364757)))

(assert (= (and d!1676505 c!894398) b!5189134))

(assert (= (and d!1676505 (not c!894398)) b!5189136))

(assert (= (and b!5189136 c!894396) b!5189142))

(assert (= (and b!5189136 (not c!894396)) b!5189140))

(assert (= (and b!5189140 res!2204053) b!5189138))

(assert (= (and b!5189140 c!894395) b!5189141))

(assert (= (and b!5189140 (not c!894395)) b!5189135))

(assert (= (and b!5189135 c!894397) b!5189143))

(assert (= (and b!5189135 (not c!894397)) b!5189137))

(assert (= (and b!5189137 c!894394) b!5189139))

(assert (= (and b!5189137 (not c!894394)) b!5189144))

(assert (= (or b!5189143 b!5189139) bm!364752))

(assert (= (or b!5189143 b!5189139) bm!364748))

(assert (= (or b!5189141 bm!364752) bm!364747))

(assert (= (or b!5189141 bm!364748) bm!364749))

(assert (= (or b!5189142 b!5189141) bm!364751))

(assert (= (or b!5189142 bm!364749) bm!364750))

(assert (=> b!5189134 m!6245946))

(declare-fun m!6245964 () Bool)

(assert (=> b!5189138 m!6245964))

(declare-fun m!6245966 () Bool)

(assert (=> bm!364751 m!6245966))

(declare-fun m!6245968 () Bool)

(assert (=> bm!364747 m!6245968))

(declare-fun m!6245970 () Bool)

(assert (=> bm!364750 m!6245970))

(assert (=> b!5188968 d!1676505))

(declare-fun b!5189155 () Bool)

(declare-fun e!3232399 () (Set Context!8204))

(assert (=> b!5189155 (= e!3232399 (as set.empty (Set Context!8204)))))

(declare-fun b!5189156 () Bool)

(declare-fun call!364760 () (Set Context!8204))

(assert (=> b!5189156 (= e!3232399 call!364760)))

(declare-fun d!1676507 () Bool)

(declare-fun c!894404 () Bool)

(declare-fun e!3232397 () Bool)

(assert (=> d!1676507 (= c!894404 e!3232397)))

(declare-fun res!2204056 () Bool)

(assert (=> d!1676507 (=> (not res!2204056) (not e!3232397))))

(assert (=> d!1676507 (= res!2204056 (is-Cons!60329 (exprs!4602 (Context!8205 (Cons!60329 r!7292 Nil!60329)))))))

(declare-fun e!3232398 () (Set Context!8204))

(assert (=> d!1676507 (= (derivationStepZipperUp!108 (Context!8205 (Cons!60329 r!7292 Nil!60329)) (h!66779 s!2326)) e!3232398)))

(declare-fun b!5189157 () Bool)

(assert (=> b!5189157 (= e!3232397 (nullable!4917 (h!66777 (exprs!4602 (Context!8205 (Cons!60329 r!7292 Nil!60329))))))))

(declare-fun b!5189158 () Bool)

(assert (=> b!5189158 (= e!3232398 (set.union call!364760 (derivationStepZipperUp!108 (Context!8205 (t!373606 (exprs!4602 (Context!8205 (Cons!60329 r!7292 Nil!60329))))) (h!66779 s!2326))))))

(declare-fun b!5189159 () Bool)

(assert (=> b!5189159 (= e!3232398 e!3232399)))

(declare-fun c!894403 () Bool)

(assert (=> b!5189159 (= c!894403 (is-Cons!60329 (exprs!4602 (Context!8205 (Cons!60329 r!7292 Nil!60329)))))))

(declare-fun bm!364755 () Bool)

(assert (=> bm!364755 (= call!364760 (derivationStepZipperDown!187 (h!66777 (exprs!4602 (Context!8205 (Cons!60329 r!7292 Nil!60329)))) (Context!8205 (t!373606 (exprs!4602 (Context!8205 (Cons!60329 r!7292 Nil!60329))))) (h!66779 s!2326)))))

(assert (= (and d!1676507 res!2204056) b!5189157))

(assert (= (and d!1676507 c!894404) b!5189158))

(assert (= (and d!1676507 (not c!894404)) b!5189159))

(assert (= (and b!5189159 c!894403) b!5189156))

(assert (= (and b!5189159 (not c!894403)) b!5189155))

(assert (= (or b!5189158 b!5189156) bm!364755))

(declare-fun m!6245972 () Bool)

(assert (=> b!5189157 m!6245972))

(declare-fun m!6245974 () Bool)

(assert (=> b!5189158 m!6245974))

(declare-fun m!6245976 () Bool)

(assert (=> bm!364755 m!6245976))

(assert (=> b!5188968 d!1676507))

(declare-fun b!5189196 () Bool)

(assert (=> b!5189196 true))

(assert (=> b!5189196 true))

(declare-fun bs!1208477 () Bool)

(declare-fun b!5189195 () Bool)

(assert (= bs!1208477 (and b!5189195 b!5189196)))

(declare-fun lambda!259437 () Int)

(declare-fun lambda!259436 () Int)

(assert (=> bs!1208477 (not (= lambda!259437 lambda!259436))))

(assert (=> b!5189195 true))

(assert (=> b!5189195 true))

(declare-fun b!5189192 () Bool)

(declare-fun e!3232419 () Bool)

(declare-fun e!3232422 () Bool)

(assert (=> b!5189192 (= e!3232419 e!3232422)))

(declare-fun c!894415 () Bool)

(assert (=> b!5189192 (= c!894415 (is-Star!14718 (regTwo!29949 r!7292)))))

(declare-fun b!5189193 () Bool)

(declare-fun e!3232418 () Bool)

(declare-fun call!364766 () Bool)

(assert (=> b!5189193 (= e!3232418 call!364766)))

(declare-fun b!5189194 () Bool)

(declare-fun e!3232424 () Bool)

(assert (=> b!5189194 (= e!3232418 e!3232424)))

(declare-fun res!2204074 () Bool)

(assert (=> b!5189194 (= res!2204074 (not (is-EmptyLang!14718 (regTwo!29949 r!7292))))))

(assert (=> b!5189194 (=> (not res!2204074) (not e!3232424))))

(declare-fun call!364765 () Bool)

(assert (=> b!5189195 (= e!3232422 call!364765)))

(declare-fun d!1676509 () Bool)

(declare-fun c!894414 () Bool)

(assert (=> d!1676509 (= c!894414 (is-EmptyExpr!14718 (regTwo!29949 r!7292)))))

(assert (=> d!1676509 (= (matchRSpec!1821 (regTwo!29949 r!7292) s!2326) e!3232418)))

(declare-fun e!3232421 () Bool)

(assert (=> b!5189196 (= e!3232421 call!364765)))

(declare-fun b!5189197 () Bool)

(declare-fun e!3232423 () Bool)

(assert (=> b!5189197 (= e!3232419 e!3232423)))

(declare-fun res!2204075 () Bool)

(assert (=> b!5189197 (= res!2204075 (matchRSpec!1821 (regOne!29949 (regTwo!29949 r!7292)) s!2326))))

(assert (=> b!5189197 (=> res!2204075 e!3232423)))

(declare-fun bm!364760 () Bool)

(declare-fun Exists!1913 (Int) Bool)

(assert (=> bm!364760 (= call!364765 (Exists!1913 (ite c!894415 lambda!259436 lambda!259437)))))

(declare-fun bm!364761 () Bool)

(declare-fun isEmpty!32298 (List!60455) Bool)

(assert (=> bm!364761 (= call!364766 (isEmpty!32298 s!2326))))

(declare-fun b!5189198 () Bool)

(assert (=> b!5189198 (= e!3232423 (matchRSpec!1821 (regTwo!29949 (regTwo!29949 r!7292)) s!2326))))

(declare-fun b!5189199 () Bool)

(declare-fun e!3232420 () Bool)

(assert (=> b!5189199 (= e!3232420 (= s!2326 (Cons!60331 (c!894349 (regTwo!29949 r!7292)) Nil!60331)))))

(declare-fun b!5189200 () Bool)

(declare-fun res!2204073 () Bool)

(assert (=> b!5189200 (=> res!2204073 e!3232421)))

(assert (=> b!5189200 (= res!2204073 call!364766)))

(assert (=> b!5189200 (= e!3232422 e!3232421)))

(declare-fun b!5189201 () Bool)

(declare-fun c!894416 () Bool)

(assert (=> b!5189201 (= c!894416 (is-Union!14718 (regTwo!29949 r!7292)))))

(assert (=> b!5189201 (= e!3232420 e!3232419)))

(declare-fun b!5189202 () Bool)

(declare-fun c!894413 () Bool)

(assert (=> b!5189202 (= c!894413 (is-ElementMatch!14718 (regTwo!29949 r!7292)))))

(assert (=> b!5189202 (= e!3232424 e!3232420)))

(assert (= (and d!1676509 c!894414) b!5189193))

(assert (= (and d!1676509 (not c!894414)) b!5189194))

(assert (= (and b!5189194 res!2204074) b!5189202))

(assert (= (and b!5189202 c!894413) b!5189199))

(assert (= (and b!5189202 (not c!894413)) b!5189201))

(assert (= (and b!5189201 c!894416) b!5189197))

(assert (= (and b!5189201 (not c!894416)) b!5189192))

(assert (= (and b!5189197 (not res!2204075)) b!5189198))

(assert (= (and b!5189192 c!894415) b!5189200))

(assert (= (and b!5189192 (not c!894415)) b!5189195))

(assert (= (and b!5189200 (not res!2204073)) b!5189196))

(assert (= (or b!5189196 b!5189195) bm!364760))

(assert (= (or b!5189193 b!5189200) bm!364761))

(declare-fun m!6245978 () Bool)

(assert (=> b!5189197 m!6245978))

(declare-fun m!6245980 () Bool)

(assert (=> bm!364760 m!6245980))

(declare-fun m!6245982 () Bool)

(assert (=> bm!364761 m!6245982))

(declare-fun m!6245984 () Bool)

(assert (=> b!5189198 m!6245984))

(assert (=> b!5188962 d!1676509))

(declare-fun d!1676511 () Bool)

(assert (=> d!1676511 (= (matchR!6903 (regOne!29949 r!7292) s!2326) (matchRSpec!1821 (regOne!29949 r!7292) s!2326))))

(declare-fun lt!2136986 () Unit!152270)

(declare-fun choose!38548 (Regex!14718 List!60455) Unit!152270)

(assert (=> d!1676511 (= lt!2136986 (choose!38548 (regOne!29949 r!7292) s!2326))))

(assert (=> d!1676511 (validRegex!6454 (regOne!29949 r!7292))))

(assert (=> d!1676511 (= (mainMatchTheorem!1821 (regOne!29949 r!7292) s!2326) lt!2136986)))

(declare-fun bs!1208478 () Bool)

(assert (= bs!1208478 d!1676511))

(assert (=> bs!1208478 m!6245842))

(assert (=> bs!1208478 m!6245838))

(declare-fun m!6245986 () Bool)

(assert (=> bs!1208478 m!6245986))

(declare-fun m!6245988 () Bool)

(assert (=> bs!1208478 m!6245988))

(assert (=> b!5188962 d!1676511))

(declare-fun b!5189235 () Bool)

(declare-fun e!3232443 () Bool)

(declare-fun e!3232440 () Bool)

(assert (=> b!5189235 (= e!3232443 e!3232440)))

(declare-fun res!2204092 () Bool)

(assert (=> b!5189235 (=> (not res!2204092) (not e!3232440))))

(declare-fun lt!2136989 () Bool)

(assert (=> b!5189235 (= res!2204092 (not lt!2136989))))

(declare-fun b!5189236 () Bool)

(declare-fun e!3232444 () Bool)

(assert (=> b!5189236 (= e!3232444 (nullable!4917 (regTwo!29949 r!7292)))))

(declare-fun b!5189237 () Bool)

(declare-fun e!3232442 () Bool)

(declare-fun head!11114 (List!60455) C!29706)

(assert (=> b!5189237 (= e!3232442 (not (= (head!11114 s!2326) (c!894349 (regTwo!29949 r!7292)))))))

(declare-fun b!5189238 () Bool)

(declare-fun res!2204097 () Bool)

(declare-fun e!3232439 () Bool)

(assert (=> b!5189238 (=> (not res!2204097) (not e!3232439))))

(declare-fun tail!10211 (List!60455) List!60455)

(assert (=> b!5189238 (= res!2204097 (isEmpty!32298 (tail!10211 s!2326)))))

(declare-fun b!5189239 () Bool)

(declare-fun derivativeStep!4019 (Regex!14718 C!29706) Regex!14718)

(assert (=> b!5189239 (= e!3232444 (matchR!6903 (derivativeStep!4019 (regTwo!29949 r!7292) (head!11114 s!2326)) (tail!10211 s!2326)))))

(declare-fun b!5189241 () Bool)

(declare-fun res!2204096 () Bool)

(assert (=> b!5189241 (=> res!2204096 e!3232442)))

(assert (=> b!5189241 (= res!2204096 (not (isEmpty!32298 (tail!10211 s!2326))))))

(declare-fun b!5189242 () Bool)

(assert (=> b!5189242 (= e!3232439 (= (head!11114 s!2326) (c!894349 (regTwo!29949 r!7292))))))

(declare-fun b!5189243 () Bool)

(declare-fun e!3232441 () Bool)

(assert (=> b!5189243 (= e!3232441 (not lt!2136989))))

(declare-fun b!5189244 () Bool)

(assert (=> b!5189244 (= e!3232440 e!3232442)))

(declare-fun res!2204098 () Bool)

(assert (=> b!5189244 (=> res!2204098 e!3232442)))

(declare-fun call!364769 () Bool)

(assert (=> b!5189244 (= res!2204098 call!364769)))

(declare-fun b!5189245 () Bool)

(declare-fun e!3232445 () Bool)

(assert (=> b!5189245 (= e!3232445 (= lt!2136989 call!364769))))

(declare-fun b!5189246 () Bool)

(assert (=> b!5189246 (= e!3232445 e!3232441)))

(declare-fun c!894425 () Bool)

(assert (=> b!5189246 (= c!894425 (is-EmptyLang!14718 (regTwo!29949 r!7292)))))

(declare-fun b!5189247 () Bool)

(declare-fun res!2204093 () Bool)

(assert (=> b!5189247 (=> res!2204093 e!3232443)))

(assert (=> b!5189247 (= res!2204093 (not (is-ElementMatch!14718 (regTwo!29949 r!7292))))))

(assert (=> b!5189247 (= e!3232441 e!3232443)))

(declare-fun b!5189240 () Bool)

(declare-fun res!2204095 () Bool)

(assert (=> b!5189240 (=> res!2204095 e!3232443)))

(assert (=> b!5189240 (= res!2204095 e!3232439)))

(declare-fun res!2204094 () Bool)

(assert (=> b!5189240 (=> (not res!2204094) (not e!3232439))))

(assert (=> b!5189240 (= res!2204094 lt!2136989)))

(declare-fun d!1676513 () Bool)

(assert (=> d!1676513 e!3232445))

(declare-fun c!894423 () Bool)

(assert (=> d!1676513 (= c!894423 (is-EmptyExpr!14718 (regTwo!29949 r!7292)))))

(assert (=> d!1676513 (= lt!2136989 e!3232444)))

(declare-fun c!894424 () Bool)

(assert (=> d!1676513 (= c!894424 (isEmpty!32298 s!2326))))

(assert (=> d!1676513 (validRegex!6454 (regTwo!29949 r!7292))))

(assert (=> d!1676513 (= (matchR!6903 (regTwo!29949 r!7292) s!2326) lt!2136989)))

(declare-fun b!5189248 () Bool)

(declare-fun res!2204099 () Bool)

(assert (=> b!5189248 (=> (not res!2204099) (not e!3232439))))

(assert (=> b!5189248 (= res!2204099 (not call!364769))))

(declare-fun bm!364764 () Bool)

(assert (=> bm!364764 (= call!364769 (isEmpty!32298 s!2326))))

(assert (= (and d!1676513 c!894424) b!5189236))

(assert (= (and d!1676513 (not c!894424)) b!5189239))

(assert (= (and d!1676513 c!894423) b!5189245))

(assert (= (and d!1676513 (not c!894423)) b!5189246))

(assert (= (and b!5189246 c!894425) b!5189243))

(assert (= (and b!5189246 (not c!894425)) b!5189247))

(assert (= (and b!5189247 (not res!2204093)) b!5189240))

(assert (= (and b!5189240 res!2204094) b!5189248))

(assert (= (and b!5189248 res!2204099) b!5189238))

(assert (= (and b!5189238 res!2204097) b!5189242))

(assert (= (and b!5189240 (not res!2204095)) b!5189235))

(assert (= (and b!5189235 res!2204092) b!5189244))

(assert (= (and b!5189244 (not res!2204098)) b!5189241))

(assert (= (and b!5189241 (not res!2204096)) b!5189237))

(assert (= (or b!5189245 b!5189248 b!5189244) bm!364764))

(declare-fun m!6245990 () Bool)

(assert (=> b!5189237 m!6245990))

(declare-fun m!6245992 () Bool)

(assert (=> b!5189241 m!6245992))

(assert (=> b!5189241 m!6245992))

(declare-fun m!6245994 () Bool)

(assert (=> b!5189241 m!6245994))

(assert (=> b!5189242 m!6245990))

(assert (=> b!5189238 m!6245992))

(assert (=> b!5189238 m!6245992))

(assert (=> b!5189238 m!6245994))

(assert (=> bm!364764 m!6245982))

(assert (=> b!5189239 m!6245990))

(assert (=> b!5189239 m!6245990))

(declare-fun m!6245996 () Bool)

(assert (=> b!5189239 m!6245996))

(assert (=> b!5189239 m!6245992))

(assert (=> b!5189239 m!6245996))

(assert (=> b!5189239 m!6245992))

(declare-fun m!6245998 () Bool)

(assert (=> b!5189239 m!6245998))

(assert (=> d!1676513 m!6245982))

(assert (=> d!1676513 m!6245850))

(declare-fun m!6246000 () Bool)

(assert (=> b!5189236 m!6246000))

(assert (=> b!5188962 d!1676513))

(declare-fun d!1676515 () Bool)

(assert (=> d!1676515 (= (matchR!6903 (regTwo!29949 r!7292) s!2326) (matchRSpec!1821 (regTwo!29949 r!7292) s!2326))))

(declare-fun lt!2136990 () Unit!152270)

(assert (=> d!1676515 (= lt!2136990 (choose!38548 (regTwo!29949 r!7292) s!2326))))

(assert (=> d!1676515 (validRegex!6454 (regTwo!29949 r!7292))))

(assert (=> d!1676515 (= (mainMatchTheorem!1821 (regTwo!29949 r!7292) s!2326) lt!2136990)))

(declare-fun bs!1208479 () Bool)

(assert (= bs!1208479 d!1676515))

(assert (=> bs!1208479 m!6245836))

(assert (=> bs!1208479 m!6245832))

(declare-fun m!6246002 () Bool)

(assert (=> bs!1208479 m!6246002))

(assert (=> bs!1208479 m!6245850))

(assert (=> b!5188962 d!1676515))

(declare-fun bs!1208480 () Bool)

(declare-fun b!5189253 () Bool)

(assert (= bs!1208480 (and b!5189253 b!5189196)))

(declare-fun lambda!259438 () Int)

(assert (=> bs!1208480 (= (and (= (reg!15047 (regOne!29949 r!7292)) (reg!15047 (regTwo!29949 r!7292))) (= (regOne!29949 r!7292) (regTwo!29949 r!7292))) (= lambda!259438 lambda!259436))))

(declare-fun bs!1208481 () Bool)

(assert (= bs!1208481 (and b!5189253 b!5189195)))

(assert (=> bs!1208481 (not (= lambda!259438 lambda!259437))))

(assert (=> b!5189253 true))

(assert (=> b!5189253 true))

(declare-fun bs!1208482 () Bool)

(declare-fun b!5189252 () Bool)

(assert (= bs!1208482 (and b!5189252 b!5189196)))

(declare-fun lambda!259439 () Int)

(assert (=> bs!1208482 (not (= lambda!259439 lambda!259436))))

(declare-fun bs!1208483 () Bool)

(assert (= bs!1208483 (and b!5189252 b!5189195)))

(assert (=> bs!1208483 (= (and (= (regOne!29948 (regOne!29949 r!7292)) (regOne!29948 (regTwo!29949 r!7292))) (= (regTwo!29948 (regOne!29949 r!7292)) (regTwo!29948 (regTwo!29949 r!7292)))) (= lambda!259439 lambda!259437))))

(declare-fun bs!1208484 () Bool)

(assert (= bs!1208484 (and b!5189252 b!5189253)))

(assert (=> bs!1208484 (not (= lambda!259439 lambda!259438))))

(assert (=> b!5189252 true))

(assert (=> b!5189252 true))

(declare-fun b!5189249 () Bool)

(declare-fun e!3232447 () Bool)

(declare-fun e!3232450 () Bool)

(assert (=> b!5189249 (= e!3232447 e!3232450)))

(declare-fun c!894428 () Bool)

(assert (=> b!5189249 (= c!894428 (is-Star!14718 (regOne!29949 r!7292)))))

(declare-fun b!5189250 () Bool)

(declare-fun e!3232446 () Bool)

(declare-fun call!364771 () Bool)

(assert (=> b!5189250 (= e!3232446 call!364771)))

(declare-fun b!5189251 () Bool)

(declare-fun e!3232452 () Bool)

(assert (=> b!5189251 (= e!3232446 e!3232452)))

(declare-fun res!2204101 () Bool)

(assert (=> b!5189251 (= res!2204101 (not (is-EmptyLang!14718 (regOne!29949 r!7292))))))

(assert (=> b!5189251 (=> (not res!2204101) (not e!3232452))))

(declare-fun call!364770 () Bool)

(assert (=> b!5189252 (= e!3232450 call!364770)))

(declare-fun d!1676517 () Bool)

(declare-fun c!894427 () Bool)

(assert (=> d!1676517 (= c!894427 (is-EmptyExpr!14718 (regOne!29949 r!7292)))))

(assert (=> d!1676517 (= (matchRSpec!1821 (regOne!29949 r!7292) s!2326) e!3232446)))

(declare-fun e!3232449 () Bool)

(assert (=> b!5189253 (= e!3232449 call!364770)))

(declare-fun b!5189254 () Bool)

(declare-fun e!3232451 () Bool)

(assert (=> b!5189254 (= e!3232447 e!3232451)))

(declare-fun res!2204102 () Bool)

(assert (=> b!5189254 (= res!2204102 (matchRSpec!1821 (regOne!29949 (regOne!29949 r!7292)) s!2326))))

(assert (=> b!5189254 (=> res!2204102 e!3232451)))

(declare-fun bm!364765 () Bool)

(assert (=> bm!364765 (= call!364770 (Exists!1913 (ite c!894428 lambda!259438 lambda!259439)))))

(declare-fun bm!364766 () Bool)

(assert (=> bm!364766 (= call!364771 (isEmpty!32298 s!2326))))

(declare-fun b!5189255 () Bool)

(assert (=> b!5189255 (= e!3232451 (matchRSpec!1821 (regTwo!29949 (regOne!29949 r!7292)) s!2326))))

(declare-fun b!5189256 () Bool)

(declare-fun e!3232448 () Bool)

(assert (=> b!5189256 (= e!3232448 (= s!2326 (Cons!60331 (c!894349 (regOne!29949 r!7292)) Nil!60331)))))

(declare-fun b!5189257 () Bool)

(declare-fun res!2204100 () Bool)

(assert (=> b!5189257 (=> res!2204100 e!3232449)))

(assert (=> b!5189257 (= res!2204100 call!364771)))

(assert (=> b!5189257 (= e!3232450 e!3232449)))

(declare-fun b!5189258 () Bool)

(declare-fun c!894429 () Bool)

(assert (=> b!5189258 (= c!894429 (is-Union!14718 (regOne!29949 r!7292)))))

(assert (=> b!5189258 (= e!3232448 e!3232447)))

(declare-fun b!5189259 () Bool)

(declare-fun c!894426 () Bool)

(assert (=> b!5189259 (= c!894426 (is-ElementMatch!14718 (regOne!29949 r!7292)))))

(assert (=> b!5189259 (= e!3232452 e!3232448)))

(assert (= (and d!1676517 c!894427) b!5189250))

(assert (= (and d!1676517 (not c!894427)) b!5189251))

(assert (= (and b!5189251 res!2204101) b!5189259))

(assert (= (and b!5189259 c!894426) b!5189256))

(assert (= (and b!5189259 (not c!894426)) b!5189258))

(assert (= (and b!5189258 c!894429) b!5189254))

(assert (= (and b!5189258 (not c!894429)) b!5189249))

(assert (= (and b!5189254 (not res!2204102)) b!5189255))

(assert (= (and b!5189249 c!894428) b!5189257))

(assert (= (and b!5189249 (not c!894428)) b!5189252))

(assert (= (and b!5189257 (not res!2204100)) b!5189253))

(assert (= (or b!5189253 b!5189252) bm!364765))

(assert (= (or b!5189250 b!5189257) bm!364766))

(declare-fun m!6246004 () Bool)

(assert (=> b!5189254 m!6246004))

(declare-fun m!6246006 () Bool)

(assert (=> bm!364765 m!6246006))

(assert (=> bm!364766 m!6245982))

(declare-fun m!6246008 () Bool)

(assert (=> b!5189255 m!6246008))

(assert (=> b!5188962 d!1676517))

(declare-fun b!5189260 () Bool)

(declare-fun e!3232457 () Bool)

(declare-fun e!3232454 () Bool)

(assert (=> b!5189260 (= e!3232457 e!3232454)))

(declare-fun res!2204103 () Bool)

(assert (=> b!5189260 (=> (not res!2204103) (not e!3232454))))

(declare-fun lt!2136991 () Bool)

(assert (=> b!5189260 (= res!2204103 (not lt!2136991))))

(declare-fun b!5189261 () Bool)

(declare-fun e!3232458 () Bool)

(assert (=> b!5189261 (= e!3232458 (nullable!4917 (regOne!29949 r!7292)))))

(declare-fun b!5189262 () Bool)

(declare-fun e!3232456 () Bool)

(assert (=> b!5189262 (= e!3232456 (not (= (head!11114 s!2326) (c!894349 (regOne!29949 r!7292)))))))

(declare-fun b!5189263 () Bool)

(declare-fun res!2204108 () Bool)

(declare-fun e!3232453 () Bool)

(assert (=> b!5189263 (=> (not res!2204108) (not e!3232453))))

(assert (=> b!5189263 (= res!2204108 (isEmpty!32298 (tail!10211 s!2326)))))

(declare-fun b!5189264 () Bool)

(assert (=> b!5189264 (= e!3232458 (matchR!6903 (derivativeStep!4019 (regOne!29949 r!7292) (head!11114 s!2326)) (tail!10211 s!2326)))))

(declare-fun b!5189266 () Bool)

(declare-fun res!2204107 () Bool)

(assert (=> b!5189266 (=> res!2204107 e!3232456)))

(assert (=> b!5189266 (= res!2204107 (not (isEmpty!32298 (tail!10211 s!2326))))))

(declare-fun b!5189267 () Bool)

(assert (=> b!5189267 (= e!3232453 (= (head!11114 s!2326) (c!894349 (regOne!29949 r!7292))))))

(declare-fun b!5189268 () Bool)

(declare-fun e!3232455 () Bool)

(assert (=> b!5189268 (= e!3232455 (not lt!2136991))))

(declare-fun b!5189269 () Bool)

(assert (=> b!5189269 (= e!3232454 e!3232456)))

(declare-fun res!2204109 () Bool)

(assert (=> b!5189269 (=> res!2204109 e!3232456)))

(declare-fun call!364772 () Bool)

(assert (=> b!5189269 (= res!2204109 call!364772)))

(declare-fun b!5189270 () Bool)

(declare-fun e!3232459 () Bool)

(assert (=> b!5189270 (= e!3232459 (= lt!2136991 call!364772))))

(declare-fun b!5189271 () Bool)

(assert (=> b!5189271 (= e!3232459 e!3232455)))

(declare-fun c!894432 () Bool)

(assert (=> b!5189271 (= c!894432 (is-EmptyLang!14718 (regOne!29949 r!7292)))))

(declare-fun b!5189272 () Bool)

(declare-fun res!2204104 () Bool)

(assert (=> b!5189272 (=> res!2204104 e!3232457)))

(assert (=> b!5189272 (= res!2204104 (not (is-ElementMatch!14718 (regOne!29949 r!7292))))))

(assert (=> b!5189272 (= e!3232455 e!3232457)))

(declare-fun b!5189265 () Bool)

(declare-fun res!2204106 () Bool)

(assert (=> b!5189265 (=> res!2204106 e!3232457)))

(assert (=> b!5189265 (= res!2204106 e!3232453)))

(declare-fun res!2204105 () Bool)

(assert (=> b!5189265 (=> (not res!2204105) (not e!3232453))))

(assert (=> b!5189265 (= res!2204105 lt!2136991)))

(declare-fun d!1676519 () Bool)

(assert (=> d!1676519 e!3232459))

(declare-fun c!894430 () Bool)

(assert (=> d!1676519 (= c!894430 (is-EmptyExpr!14718 (regOne!29949 r!7292)))))

(assert (=> d!1676519 (= lt!2136991 e!3232458)))

(declare-fun c!894431 () Bool)

(assert (=> d!1676519 (= c!894431 (isEmpty!32298 s!2326))))

(assert (=> d!1676519 (validRegex!6454 (regOne!29949 r!7292))))

(assert (=> d!1676519 (= (matchR!6903 (regOne!29949 r!7292) s!2326) lt!2136991)))

(declare-fun b!5189273 () Bool)

(declare-fun res!2204110 () Bool)

(assert (=> b!5189273 (=> (not res!2204110) (not e!3232453))))

(assert (=> b!5189273 (= res!2204110 (not call!364772))))

(declare-fun bm!364767 () Bool)

(assert (=> bm!364767 (= call!364772 (isEmpty!32298 s!2326))))

(assert (= (and d!1676519 c!894431) b!5189261))

(assert (= (and d!1676519 (not c!894431)) b!5189264))

(assert (= (and d!1676519 c!894430) b!5189270))

(assert (= (and d!1676519 (not c!894430)) b!5189271))

(assert (= (and b!5189271 c!894432) b!5189268))

(assert (= (and b!5189271 (not c!894432)) b!5189272))

(assert (= (and b!5189272 (not res!2204104)) b!5189265))

(assert (= (and b!5189265 res!2204105) b!5189273))

(assert (= (and b!5189273 res!2204110) b!5189263))

(assert (= (and b!5189263 res!2204108) b!5189267))

(assert (= (and b!5189265 (not res!2204106)) b!5189260))

(assert (= (and b!5189260 res!2204103) b!5189269))

(assert (= (and b!5189269 (not res!2204109)) b!5189266))

(assert (= (and b!5189266 (not res!2204107)) b!5189262))

(assert (= (or b!5189270 b!5189273 b!5189269) bm!364767))

(assert (=> b!5189262 m!6245990))

(assert (=> b!5189266 m!6245992))

(assert (=> b!5189266 m!6245992))

(assert (=> b!5189266 m!6245994))

(assert (=> b!5189267 m!6245990))

(assert (=> b!5189263 m!6245992))

(assert (=> b!5189263 m!6245992))

(assert (=> b!5189263 m!6245994))

(assert (=> bm!364767 m!6245982))

(assert (=> b!5189264 m!6245990))

(assert (=> b!5189264 m!6245990))

(declare-fun m!6246010 () Bool)

(assert (=> b!5189264 m!6246010))

(assert (=> b!5189264 m!6245992))

(assert (=> b!5189264 m!6246010))

(assert (=> b!5189264 m!6245992))

(declare-fun m!6246012 () Bool)

(assert (=> b!5189264 m!6246012))

(assert (=> d!1676519 m!6245982))

(assert (=> d!1676519 m!6245988))

(declare-fun m!6246014 () Bool)

(assert (=> b!5189261 m!6246014))

(assert (=> b!5188962 d!1676519))

(declare-fun b!5189292 () Bool)

(declare-fun res!2204124 () Bool)

(declare-fun e!3232476 () Bool)

(assert (=> b!5189292 (=> res!2204124 e!3232476)))

(assert (=> b!5189292 (= res!2204124 (not (is-Concat!23563 (regTwo!29949 r!7292))))))

(declare-fun e!3232477 () Bool)

(assert (=> b!5189292 (= e!3232477 e!3232476)))

(declare-fun b!5189293 () Bool)

(declare-fun e!3232478 () Bool)

(declare-fun e!3232475 () Bool)

(assert (=> b!5189293 (= e!3232478 e!3232475)))

(declare-fun res!2204121 () Bool)

(assert (=> b!5189293 (= res!2204121 (not (nullable!4917 (reg!15047 (regTwo!29949 r!7292)))))))

(assert (=> b!5189293 (=> (not res!2204121) (not e!3232475))))

(declare-fun bm!364774 () Bool)

(declare-fun call!364780 () Bool)

(declare-fun c!894437 () Bool)

(declare-fun c!894438 () Bool)

(assert (=> bm!364774 (= call!364780 (validRegex!6454 (ite c!894438 (reg!15047 (regTwo!29949 r!7292)) (ite c!894437 (regTwo!29949 (regTwo!29949 r!7292)) (regTwo!29948 (regTwo!29949 r!7292))))))))

(declare-fun b!5189294 () Bool)

(declare-fun e!3232474 () Bool)

(assert (=> b!5189294 (= e!3232476 e!3232474)))

(declare-fun res!2204122 () Bool)

(assert (=> b!5189294 (=> (not res!2204122) (not e!3232474))))

(declare-fun call!364781 () Bool)

(assert (=> b!5189294 (= res!2204122 call!364781)))

(declare-fun b!5189295 () Bool)

(assert (=> b!5189295 (= e!3232478 e!3232477)))

(assert (=> b!5189295 (= c!894437 (is-Union!14718 (regTwo!29949 r!7292)))))

(declare-fun b!5189296 () Bool)

(declare-fun res!2204125 () Bool)

(declare-fun e!3232480 () Bool)

(assert (=> b!5189296 (=> (not res!2204125) (not e!3232480))))

(assert (=> b!5189296 (= res!2204125 call!364781)))

(assert (=> b!5189296 (= e!3232477 e!3232480)))

(declare-fun b!5189297 () Bool)

(assert (=> b!5189297 (= e!3232475 call!364780)))

(declare-fun bm!364775 () Bool)

(assert (=> bm!364775 (= call!364781 (validRegex!6454 (ite c!894437 (regOne!29949 (regTwo!29949 r!7292)) (regOne!29948 (regTwo!29949 r!7292)))))))

(declare-fun d!1676521 () Bool)

(declare-fun res!2204123 () Bool)

(declare-fun e!3232479 () Bool)

(assert (=> d!1676521 (=> res!2204123 e!3232479)))

(assert (=> d!1676521 (= res!2204123 (is-ElementMatch!14718 (regTwo!29949 r!7292)))))

(assert (=> d!1676521 (= (validRegex!6454 (regTwo!29949 r!7292)) e!3232479)))

(declare-fun bm!364776 () Bool)

(declare-fun call!364779 () Bool)

(assert (=> bm!364776 (= call!364779 call!364780)))

(declare-fun b!5189298 () Bool)

(assert (=> b!5189298 (= e!3232474 call!364779)))

(declare-fun b!5189299 () Bool)

(assert (=> b!5189299 (= e!3232480 call!364779)))

(declare-fun b!5189300 () Bool)

(assert (=> b!5189300 (= e!3232479 e!3232478)))

(assert (=> b!5189300 (= c!894438 (is-Star!14718 (regTwo!29949 r!7292)))))

(assert (= (and d!1676521 (not res!2204123)) b!5189300))

(assert (= (and b!5189300 c!894438) b!5189293))

(assert (= (and b!5189300 (not c!894438)) b!5189295))

(assert (= (and b!5189293 res!2204121) b!5189297))

(assert (= (and b!5189295 c!894437) b!5189296))

(assert (= (and b!5189295 (not c!894437)) b!5189292))

(assert (= (and b!5189296 res!2204125) b!5189299))

(assert (= (and b!5189292 (not res!2204124)) b!5189294))

(assert (= (and b!5189294 res!2204122) b!5189298))

(assert (= (or b!5189299 b!5189298) bm!364776))

(assert (= (or b!5189296 b!5189294) bm!364775))

(assert (= (or b!5189297 bm!364776) bm!364774))

(declare-fun m!6246016 () Bool)

(assert (=> b!5189293 m!6246016))

(declare-fun m!6246018 () Bool)

(assert (=> bm!364774 m!6246018))

(declare-fun m!6246020 () Bool)

(assert (=> bm!364775 m!6246020))

(assert (=> b!5188971 d!1676521))

(declare-fun bs!1208485 () Bool)

(declare-fun d!1676523 () Bool)

(assert (= bs!1208485 (and d!1676523 d!1676495)))

(declare-fun lambda!259442 () Int)

(assert (=> bs!1208485 (= lambda!259442 lambda!259428)))

(declare-fun bs!1208486 () Bool)

(assert (= bs!1208486 (and d!1676523 d!1676499)))

(assert (=> bs!1208486 (= lambda!259442 lambda!259431)))

(assert (=> d!1676523 (= (inv!80043 setElem!32731) (forall!14205 (exprs!4602 setElem!32731) lambda!259442))))

(declare-fun bs!1208487 () Bool)

(assert (= bs!1208487 d!1676523))

(declare-fun m!6246022 () Bool)

(assert (=> bs!1208487 m!6246022))

(assert (=> setNonEmpty!32731 d!1676523))

(declare-fun d!1676525 () Bool)

(assert (=> d!1676525 (= (isEmpty!32295 (t!373607 zl!343)) (is-Nil!60330 (t!373607 zl!343)))))

(assert (=> b!5188970 d!1676525))

(declare-fun d!1676527 () Bool)

(declare-fun lt!2136994 () Regex!14718)

(assert (=> d!1676527 (validRegex!6454 lt!2136994)))

(assert (=> d!1676527 (= lt!2136994 (generalisedUnion!647 (unfocusZipperList!160 zl!343)))))

(assert (=> d!1676527 (= (unfocusZipper!460 zl!343) lt!2136994)))

(declare-fun bs!1208488 () Bool)

(assert (= bs!1208488 d!1676527))

(declare-fun m!6246024 () Bool)

(assert (=> bs!1208488 m!6246024))

(assert (=> bs!1208488 m!6245846))

(assert (=> bs!1208488 m!6245846))

(assert (=> bs!1208488 m!6245848))

(assert (=> b!5188954 d!1676527))

(declare-fun b!5189301 () Bool)

(declare-fun res!2204129 () Bool)

(declare-fun e!3232483 () Bool)

(assert (=> b!5189301 (=> res!2204129 e!3232483)))

(assert (=> b!5189301 (= res!2204129 (not (is-Concat!23563 r!7292)))))

(declare-fun e!3232484 () Bool)

(assert (=> b!5189301 (= e!3232484 e!3232483)))

(declare-fun b!5189302 () Bool)

(declare-fun e!3232485 () Bool)

(declare-fun e!3232482 () Bool)

(assert (=> b!5189302 (= e!3232485 e!3232482)))

(declare-fun res!2204126 () Bool)

(assert (=> b!5189302 (= res!2204126 (not (nullable!4917 (reg!15047 r!7292))))))

(assert (=> b!5189302 (=> (not res!2204126) (not e!3232482))))

(declare-fun c!894439 () Bool)

(declare-fun bm!364777 () Bool)

(declare-fun c!894440 () Bool)

(declare-fun call!364783 () Bool)

(assert (=> bm!364777 (= call!364783 (validRegex!6454 (ite c!894440 (reg!15047 r!7292) (ite c!894439 (regTwo!29949 r!7292) (regTwo!29948 r!7292)))))))

(declare-fun b!5189303 () Bool)

(declare-fun e!3232481 () Bool)

(assert (=> b!5189303 (= e!3232483 e!3232481)))

(declare-fun res!2204127 () Bool)

(assert (=> b!5189303 (=> (not res!2204127) (not e!3232481))))

(declare-fun call!364784 () Bool)

(assert (=> b!5189303 (= res!2204127 call!364784)))

(declare-fun b!5189304 () Bool)

(assert (=> b!5189304 (= e!3232485 e!3232484)))

(assert (=> b!5189304 (= c!894439 (is-Union!14718 r!7292))))

(declare-fun b!5189305 () Bool)

(declare-fun res!2204130 () Bool)

(declare-fun e!3232487 () Bool)

(assert (=> b!5189305 (=> (not res!2204130) (not e!3232487))))

(assert (=> b!5189305 (= res!2204130 call!364784)))

(assert (=> b!5189305 (= e!3232484 e!3232487)))

(declare-fun b!5189306 () Bool)

(assert (=> b!5189306 (= e!3232482 call!364783)))

(declare-fun bm!364778 () Bool)

(assert (=> bm!364778 (= call!364784 (validRegex!6454 (ite c!894439 (regOne!29949 r!7292) (regOne!29948 r!7292))))))

(declare-fun d!1676529 () Bool)

(declare-fun res!2204128 () Bool)

(declare-fun e!3232486 () Bool)

(assert (=> d!1676529 (=> res!2204128 e!3232486)))

(assert (=> d!1676529 (= res!2204128 (is-ElementMatch!14718 r!7292))))

(assert (=> d!1676529 (= (validRegex!6454 r!7292) e!3232486)))

(declare-fun bm!364779 () Bool)

(declare-fun call!364782 () Bool)

(assert (=> bm!364779 (= call!364782 call!364783)))

(declare-fun b!5189307 () Bool)

(assert (=> b!5189307 (= e!3232481 call!364782)))

(declare-fun b!5189308 () Bool)

(assert (=> b!5189308 (= e!3232487 call!364782)))

(declare-fun b!5189309 () Bool)

(assert (=> b!5189309 (= e!3232486 e!3232485)))

(assert (=> b!5189309 (= c!894440 (is-Star!14718 r!7292))))

(assert (= (and d!1676529 (not res!2204128)) b!5189309))

(assert (= (and b!5189309 c!894440) b!5189302))

(assert (= (and b!5189309 (not c!894440)) b!5189304))

(assert (= (and b!5189302 res!2204126) b!5189306))

(assert (= (and b!5189304 c!894439) b!5189305))

(assert (= (and b!5189304 (not c!894439)) b!5189301))

(assert (= (and b!5189305 res!2204130) b!5189308))

(assert (= (and b!5189301 (not res!2204129)) b!5189303))

(assert (= (and b!5189303 res!2204127) b!5189307))

(assert (= (or b!5189308 b!5189307) bm!364779))

(assert (= (or b!5189305 b!5189303) bm!364778))

(assert (= (or b!5189306 bm!364779) bm!364777))

(declare-fun m!6246026 () Bool)

(assert (=> b!5189302 m!6246026))

(declare-fun m!6246028 () Bool)

(assert (=> bm!364777 m!6246028))

(declare-fun m!6246030 () Bool)

(assert (=> bm!364778 m!6246030))

(assert (=> start!549324 d!1676529))

(declare-fun d!1676531 () Bool)

(declare-fun e!3232492 () Bool)

(assert (=> d!1676531 e!3232492))

(declare-fun res!2204139 () Bool)

(assert (=> d!1676531 (=> (not res!2204139) (not e!3232492))))

(declare-fun lt!2136997 () List!60454)

(declare-fun noDuplicate!1154 (List!60454) Bool)

(assert (=> d!1676531 (= res!2204139 (noDuplicate!1154 lt!2136997))))

(declare-fun choose!38550 ((Set Context!8204)) List!60454)

(assert (=> d!1676531 (= lt!2136997 (choose!38550 z!1189))))

(assert (=> d!1676531 (= (toList!8502 z!1189) lt!2136997)))

(declare-fun b!5189318 () Bool)

(declare-fun content!10690 (List!60454) (Set Context!8204))

(assert (=> b!5189318 (= e!3232492 (= (content!10690 lt!2136997) z!1189))))

(assert (= (and d!1676531 res!2204139) b!5189318))

(declare-fun m!6246032 () Bool)

(assert (=> d!1676531 m!6246032))

(declare-fun m!6246034 () Bool)

(assert (=> d!1676531 m!6246034))

(declare-fun m!6246036 () Bool)

(assert (=> b!5189318 m!6246036))

(assert (=> b!5188965 d!1676531))

(declare-fun bs!1208489 () Bool)

(declare-fun b!5189323 () Bool)

(assert (= bs!1208489 (and b!5189323 b!5189196)))

(declare-fun lambda!259447 () Int)

(assert (=> bs!1208489 (= (and (= (reg!15047 r!7292) (reg!15047 (regTwo!29949 r!7292))) (= r!7292 (regTwo!29949 r!7292))) (= lambda!259447 lambda!259436))))

(declare-fun bs!1208490 () Bool)

(assert (= bs!1208490 (and b!5189323 b!5189195)))

(assert (=> bs!1208490 (not (= lambda!259447 lambda!259437))))

(declare-fun bs!1208491 () Bool)

(assert (= bs!1208491 (and b!5189323 b!5189253)))

(assert (=> bs!1208491 (= (and (= (reg!15047 r!7292) (reg!15047 (regOne!29949 r!7292))) (= r!7292 (regOne!29949 r!7292))) (= lambda!259447 lambda!259438))))

(declare-fun bs!1208492 () Bool)

(assert (= bs!1208492 (and b!5189323 b!5189252)))

(assert (=> bs!1208492 (not (= lambda!259447 lambda!259439))))

(assert (=> b!5189323 true))

(assert (=> b!5189323 true))

(declare-fun bs!1208493 () Bool)

(declare-fun b!5189322 () Bool)

(assert (= bs!1208493 (and b!5189322 b!5189323)))

(declare-fun lambda!259448 () Int)

(assert (=> bs!1208493 (not (= lambda!259448 lambda!259447))))

(declare-fun bs!1208494 () Bool)

(assert (= bs!1208494 (and b!5189322 b!5189196)))

(assert (=> bs!1208494 (not (= lambda!259448 lambda!259436))))

(declare-fun bs!1208495 () Bool)

(assert (= bs!1208495 (and b!5189322 b!5189253)))

(assert (=> bs!1208495 (not (= lambda!259448 lambda!259438))))

(declare-fun bs!1208496 () Bool)

(assert (= bs!1208496 (and b!5189322 b!5189195)))

(assert (=> bs!1208496 (= (and (= (regOne!29948 r!7292) (regOne!29948 (regTwo!29949 r!7292))) (= (regTwo!29948 r!7292) (regTwo!29948 (regTwo!29949 r!7292)))) (= lambda!259448 lambda!259437))))

(declare-fun bs!1208497 () Bool)

(assert (= bs!1208497 (and b!5189322 b!5189252)))

(assert (=> bs!1208497 (= (and (= (regOne!29948 r!7292) (regOne!29948 (regOne!29949 r!7292))) (= (regTwo!29948 r!7292) (regTwo!29948 (regOne!29949 r!7292)))) (= lambda!259448 lambda!259439))))

(assert (=> b!5189322 true))

(assert (=> b!5189322 true))

(declare-fun b!5189319 () Bool)

(declare-fun e!3232494 () Bool)

(declare-fun e!3232497 () Bool)

(assert (=> b!5189319 (= e!3232494 e!3232497)))

(declare-fun c!894443 () Bool)

(assert (=> b!5189319 (= c!894443 (is-Star!14718 r!7292))))

(declare-fun b!5189320 () Bool)

(declare-fun e!3232493 () Bool)

(declare-fun call!364786 () Bool)

(assert (=> b!5189320 (= e!3232493 call!364786)))

(declare-fun b!5189321 () Bool)

(declare-fun e!3232499 () Bool)

(assert (=> b!5189321 (= e!3232493 e!3232499)))

(declare-fun res!2204141 () Bool)

(assert (=> b!5189321 (= res!2204141 (not (is-EmptyLang!14718 r!7292)))))

(assert (=> b!5189321 (=> (not res!2204141) (not e!3232499))))

(declare-fun call!364785 () Bool)

(assert (=> b!5189322 (= e!3232497 call!364785)))

(declare-fun d!1676533 () Bool)

(declare-fun c!894442 () Bool)

(assert (=> d!1676533 (= c!894442 (is-EmptyExpr!14718 r!7292))))

(assert (=> d!1676533 (= (matchRSpec!1821 r!7292 s!2326) e!3232493)))

(declare-fun e!3232496 () Bool)

(assert (=> b!5189323 (= e!3232496 call!364785)))

(declare-fun b!5189324 () Bool)

(declare-fun e!3232498 () Bool)

(assert (=> b!5189324 (= e!3232494 e!3232498)))

(declare-fun res!2204142 () Bool)

(assert (=> b!5189324 (= res!2204142 (matchRSpec!1821 (regOne!29949 r!7292) s!2326))))

(assert (=> b!5189324 (=> res!2204142 e!3232498)))

(declare-fun bm!364780 () Bool)

(assert (=> bm!364780 (= call!364785 (Exists!1913 (ite c!894443 lambda!259447 lambda!259448)))))

(declare-fun bm!364781 () Bool)

(assert (=> bm!364781 (= call!364786 (isEmpty!32298 s!2326))))

(declare-fun b!5189325 () Bool)

(assert (=> b!5189325 (= e!3232498 (matchRSpec!1821 (regTwo!29949 r!7292) s!2326))))

(declare-fun b!5189326 () Bool)

(declare-fun e!3232495 () Bool)

(assert (=> b!5189326 (= e!3232495 (= s!2326 (Cons!60331 (c!894349 r!7292) Nil!60331)))))

(declare-fun b!5189327 () Bool)

(declare-fun res!2204140 () Bool)

(assert (=> b!5189327 (=> res!2204140 e!3232496)))

(assert (=> b!5189327 (= res!2204140 call!364786)))

(assert (=> b!5189327 (= e!3232497 e!3232496)))

(declare-fun b!5189328 () Bool)

(declare-fun c!894444 () Bool)

(assert (=> b!5189328 (= c!894444 (is-Union!14718 r!7292))))

(assert (=> b!5189328 (= e!3232495 e!3232494)))

(declare-fun b!5189329 () Bool)

(declare-fun c!894441 () Bool)

(assert (=> b!5189329 (= c!894441 (is-ElementMatch!14718 r!7292))))

(assert (=> b!5189329 (= e!3232499 e!3232495)))

(assert (= (and d!1676533 c!894442) b!5189320))

(assert (= (and d!1676533 (not c!894442)) b!5189321))

(assert (= (and b!5189321 res!2204141) b!5189329))

(assert (= (and b!5189329 c!894441) b!5189326))

(assert (= (and b!5189329 (not c!894441)) b!5189328))

(assert (= (and b!5189328 c!894444) b!5189324))

(assert (= (and b!5189328 (not c!894444)) b!5189319))

(assert (= (and b!5189324 (not res!2204142)) b!5189325))

(assert (= (and b!5189319 c!894443) b!5189327))

(assert (= (and b!5189319 (not c!894443)) b!5189322))

(assert (= (and b!5189327 (not res!2204140)) b!5189323))

(assert (= (or b!5189323 b!5189322) bm!364780))

(assert (= (or b!5189320 b!5189327) bm!364781))

(assert (=> b!5189324 m!6245838))

(declare-fun m!6246038 () Bool)

(assert (=> bm!364780 m!6246038))

(assert (=> bm!364781 m!6245982))

(assert (=> b!5189325 m!6245832))

(assert (=> b!5188963 d!1676533))

(declare-fun b!5189334 () Bool)

(declare-fun e!3232506 () Bool)

(declare-fun e!3232503 () Bool)

(assert (=> b!5189334 (= e!3232506 e!3232503)))

(declare-fun res!2204147 () Bool)

(assert (=> b!5189334 (=> (not res!2204147) (not e!3232503))))

(declare-fun lt!2136998 () Bool)

(assert (=> b!5189334 (= res!2204147 (not lt!2136998))))

(declare-fun b!5189335 () Bool)

(declare-fun e!3232507 () Bool)

(assert (=> b!5189335 (= e!3232507 (nullable!4917 r!7292))))

(declare-fun b!5189336 () Bool)

(declare-fun e!3232505 () Bool)

(assert (=> b!5189336 (= e!3232505 (not (= (head!11114 s!2326) (c!894349 r!7292))))))

(declare-fun b!5189337 () Bool)

(declare-fun res!2204152 () Bool)

(declare-fun e!3232502 () Bool)

(assert (=> b!5189337 (=> (not res!2204152) (not e!3232502))))

(assert (=> b!5189337 (= res!2204152 (isEmpty!32298 (tail!10211 s!2326)))))

(declare-fun b!5189338 () Bool)

(assert (=> b!5189338 (= e!3232507 (matchR!6903 (derivativeStep!4019 r!7292 (head!11114 s!2326)) (tail!10211 s!2326)))))

(declare-fun b!5189340 () Bool)

(declare-fun res!2204151 () Bool)

(assert (=> b!5189340 (=> res!2204151 e!3232505)))

(assert (=> b!5189340 (= res!2204151 (not (isEmpty!32298 (tail!10211 s!2326))))))

(declare-fun b!5189341 () Bool)

(assert (=> b!5189341 (= e!3232502 (= (head!11114 s!2326) (c!894349 r!7292)))))

(declare-fun b!5189342 () Bool)

(declare-fun e!3232504 () Bool)

(assert (=> b!5189342 (= e!3232504 (not lt!2136998))))

(declare-fun b!5189343 () Bool)

(assert (=> b!5189343 (= e!3232503 e!3232505)))

(declare-fun res!2204153 () Bool)

(assert (=> b!5189343 (=> res!2204153 e!3232505)))

(declare-fun call!364791 () Bool)

(assert (=> b!5189343 (= res!2204153 call!364791)))

(declare-fun b!5189344 () Bool)

(declare-fun e!3232508 () Bool)

(assert (=> b!5189344 (= e!3232508 (= lt!2136998 call!364791))))

(declare-fun b!5189345 () Bool)

(assert (=> b!5189345 (= e!3232508 e!3232504)))

(declare-fun c!894447 () Bool)

(assert (=> b!5189345 (= c!894447 (is-EmptyLang!14718 r!7292))))

(declare-fun b!5189346 () Bool)

(declare-fun res!2204148 () Bool)

(assert (=> b!5189346 (=> res!2204148 e!3232506)))

(assert (=> b!5189346 (= res!2204148 (not (is-ElementMatch!14718 r!7292)))))

(assert (=> b!5189346 (= e!3232504 e!3232506)))

(declare-fun b!5189339 () Bool)

(declare-fun res!2204150 () Bool)

(assert (=> b!5189339 (=> res!2204150 e!3232506)))

(assert (=> b!5189339 (= res!2204150 e!3232502)))

(declare-fun res!2204149 () Bool)

(assert (=> b!5189339 (=> (not res!2204149) (not e!3232502))))

(assert (=> b!5189339 (= res!2204149 lt!2136998)))

(declare-fun d!1676535 () Bool)

(assert (=> d!1676535 e!3232508))

(declare-fun c!894445 () Bool)

(assert (=> d!1676535 (= c!894445 (is-EmptyExpr!14718 r!7292))))

(assert (=> d!1676535 (= lt!2136998 e!3232507)))

(declare-fun c!894446 () Bool)

(assert (=> d!1676535 (= c!894446 (isEmpty!32298 s!2326))))

(assert (=> d!1676535 (validRegex!6454 r!7292)))

(assert (=> d!1676535 (= (matchR!6903 r!7292 s!2326) lt!2136998)))

(declare-fun b!5189347 () Bool)

(declare-fun res!2204154 () Bool)

(assert (=> b!5189347 (=> (not res!2204154) (not e!3232502))))

(assert (=> b!5189347 (= res!2204154 (not call!364791))))

(declare-fun bm!364786 () Bool)

(assert (=> bm!364786 (= call!364791 (isEmpty!32298 s!2326))))

(assert (= (and d!1676535 c!894446) b!5189335))

(assert (= (and d!1676535 (not c!894446)) b!5189338))

(assert (= (and d!1676535 c!894445) b!5189344))

(assert (= (and d!1676535 (not c!894445)) b!5189345))

(assert (= (and b!5189345 c!894447) b!5189342))

(assert (= (and b!5189345 (not c!894447)) b!5189346))

(assert (= (and b!5189346 (not res!2204148)) b!5189339))

(assert (= (and b!5189339 res!2204149) b!5189347))

(assert (= (and b!5189347 res!2204154) b!5189337))

(assert (= (and b!5189337 res!2204152) b!5189341))

(assert (= (and b!5189339 (not res!2204150)) b!5189334))

(assert (= (and b!5189334 res!2204147) b!5189343))

(assert (= (and b!5189343 (not res!2204153)) b!5189340))

(assert (= (and b!5189340 (not res!2204151)) b!5189336))

(assert (= (or b!5189344 b!5189347 b!5189343) bm!364786))

(assert (=> b!5189336 m!6245990))

(assert (=> b!5189340 m!6245992))

(assert (=> b!5189340 m!6245992))

(assert (=> b!5189340 m!6245994))

(assert (=> b!5189341 m!6245990))

(assert (=> b!5189337 m!6245992))

(assert (=> b!5189337 m!6245992))

(assert (=> b!5189337 m!6245994))

(assert (=> bm!364786 m!6245982))

(assert (=> b!5189338 m!6245990))

(assert (=> b!5189338 m!6245990))

(declare-fun m!6246040 () Bool)

(assert (=> b!5189338 m!6246040))

(assert (=> b!5189338 m!6245992))

(assert (=> b!5189338 m!6246040))

(assert (=> b!5189338 m!6245992))

(declare-fun m!6246042 () Bool)

(assert (=> b!5189338 m!6246042))

(assert (=> d!1676535 m!6245982))

(assert (=> d!1676535 m!6245844))

(declare-fun m!6246044 () Bool)

(assert (=> b!5189335 m!6246044))

(assert (=> b!5188963 d!1676535))

(declare-fun d!1676537 () Bool)

(assert (=> d!1676537 (= (matchR!6903 r!7292 s!2326) (matchRSpec!1821 r!7292 s!2326))))

(declare-fun lt!2136999 () Unit!152270)

(assert (=> d!1676537 (= lt!2136999 (choose!38548 r!7292 s!2326))))

(assert (=> d!1676537 (validRegex!6454 r!7292)))

(assert (=> d!1676537 (= (mainMatchTheorem!1821 r!7292 s!2326) lt!2136999)))

(declare-fun bs!1208498 () Bool)

(assert (= bs!1208498 d!1676537))

(assert (=> bs!1208498 m!6245870))

(assert (=> bs!1208498 m!6245868))

(declare-fun m!6246046 () Bool)

(assert (=> bs!1208498 m!6246046))

(assert (=> bs!1208498 m!6245844))

(assert (=> b!5188963 d!1676537))

(declare-fun bs!1208501 () Bool)

(declare-fun d!1676539 () Bool)

(assert (= bs!1208501 (and d!1676539 d!1676495)))

(declare-fun lambda!259453 () Int)

(assert (=> bs!1208501 (= lambda!259453 lambda!259428)))

(declare-fun bs!1208502 () Bool)

(assert (= bs!1208502 (and d!1676539 d!1676499)))

(assert (=> bs!1208502 (= lambda!259453 lambda!259431)))

(declare-fun bs!1208503 () Bool)

(assert (= bs!1208503 (and d!1676539 d!1676523)))

(assert (=> bs!1208503 (= lambda!259453 lambda!259442)))

(declare-fun b!5189383 () Bool)

(declare-fun e!3232528 () Regex!14718)

(declare-fun e!3232530 () Regex!14718)

(assert (=> b!5189383 (= e!3232528 e!3232530)))

(declare-fun c!894461 () Bool)

(assert (=> b!5189383 (= c!894461 (is-Cons!60329 (exprs!4602 (h!66778 zl!343))))))

(declare-fun b!5189384 () Bool)

(declare-fun e!3232529 () Bool)

(assert (=> b!5189384 (= e!3232529 (isEmpty!32297 (t!373606 (exprs!4602 (h!66778 zl!343)))))))

(declare-fun e!3232533 () Bool)

(assert (=> d!1676539 e!3232533))

(declare-fun res!2204163 () Bool)

(assert (=> d!1676539 (=> (not res!2204163) (not e!3232533))))

(declare-fun lt!2137005 () Regex!14718)

(assert (=> d!1676539 (= res!2204163 (validRegex!6454 lt!2137005))))

(assert (=> d!1676539 (= lt!2137005 e!3232528)))

(declare-fun c!894462 () Bool)

(assert (=> d!1676539 (= c!894462 e!3232529)))

(declare-fun res!2204162 () Bool)

(assert (=> d!1676539 (=> (not res!2204162) (not e!3232529))))

(assert (=> d!1676539 (= res!2204162 (is-Cons!60329 (exprs!4602 (h!66778 zl!343))))))

(assert (=> d!1676539 (forall!14205 (exprs!4602 (h!66778 zl!343)) lambda!259453)))

(assert (=> d!1676539 (= (generalisedConcat!387 (exprs!4602 (h!66778 zl!343))) lt!2137005)))

(declare-fun b!5189385 () Bool)

(assert (=> b!5189385 (= e!3232530 (Concat!23563 (h!66777 (exprs!4602 (h!66778 zl!343))) (generalisedConcat!387 (t!373606 (exprs!4602 (h!66778 zl!343))))))))

(declare-fun b!5189386 () Bool)

(declare-fun e!3232531 () Bool)

(declare-fun isConcat!256 (Regex!14718) Bool)

(assert (=> b!5189386 (= e!3232531 (isConcat!256 lt!2137005))))

(declare-fun b!5189387 () Bool)

(declare-fun e!3232532 () Bool)

(declare-fun isEmptyExpr!733 (Regex!14718) Bool)

(assert (=> b!5189387 (= e!3232532 (isEmptyExpr!733 lt!2137005))))

(declare-fun b!5189388 () Bool)

(assert (=> b!5189388 (= e!3232533 e!3232532)))

(declare-fun c!894460 () Bool)

(assert (=> b!5189388 (= c!894460 (isEmpty!32297 (exprs!4602 (h!66778 zl!343))))))

(declare-fun b!5189389 () Bool)

(assert (=> b!5189389 (= e!3232528 (h!66777 (exprs!4602 (h!66778 zl!343))))))

(declare-fun b!5189390 () Bool)

(assert (=> b!5189390 (= e!3232531 (= lt!2137005 (head!11113 (exprs!4602 (h!66778 zl!343)))))))

(declare-fun b!5189391 () Bool)

(assert (=> b!5189391 (= e!3232532 e!3232531)))

(declare-fun c!894463 () Bool)

(assert (=> b!5189391 (= c!894463 (isEmpty!32297 (tail!10210 (exprs!4602 (h!66778 zl!343)))))))

(declare-fun b!5189392 () Bool)

(assert (=> b!5189392 (= e!3232530 EmptyExpr!14718)))

(assert (= (and d!1676539 res!2204162) b!5189384))

(assert (= (and d!1676539 c!894462) b!5189389))

(assert (= (and d!1676539 (not c!894462)) b!5189383))

(assert (= (and b!5189383 c!894461) b!5189385))

(assert (= (and b!5189383 (not c!894461)) b!5189392))

(assert (= (and d!1676539 res!2204163) b!5189388))

(assert (= (and b!5189388 c!894460) b!5189387))

(assert (= (and b!5189388 (not c!894460)) b!5189391))

(assert (= (and b!5189391 c!894463) b!5189390))

(assert (= (and b!5189391 (not c!894463)) b!5189386))

(declare-fun m!6246060 () Bool)

(assert (=> b!5189386 m!6246060))

(declare-fun m!6246062 () Bool)

(assert (=> b!5189390 m!6246062))

(declare-fun m!6246064 () Bool)

(assert (=> b!5189385 m!6246064))

(declare-fun m!6246066 () Bool)

(assert (=> b!5189384 m!6246066))

(declare-fun m!6246068 () Bool)

(assert (=> b!5189391 m!6246068))

(assert (=> b!5189391 m!6246068))

(declare-fun m!6246070 () Bool)

(assert (=> b!5189391 m!6246070))

(declare-fun m!6246072 () Bool)

(assert (=> d!1676539 m!6246072))

(declare-fun m!6246074 () Bool)

(assert (=> d!1676539 m!6246074))

(declare-fun m!6246076 () Bool)

(assert (=> b!5189388 m!6246076))

(declare-fun m!6246078 () Bool)

(assert (=> b!5189387 m!6246078))

(assert (=> b!5188955 d!1676539))

(declare-fun bs!1208504 () Bool)

(declare-fun d!1676545 () Bool)

(assert (= bs!1208504 (and d!1676545 d!1676495)))

(declare-fun lambda!259454 () Int)

(assert (=> bs!1208504 (= lambda!259454 lambda!259428)))

(declare-fun bs!1208505 () Bool)

(assert (= bs!1208505 (and d!1676545 d!1676499)))

(assert (=> bs!1208505 (= lambda!259454 lambda!259431)))

(declare-fun bs!1208506 () Bool)

(assert (= bs!1208506 (and d!1676545 d!1676523)))

(assert (=> bs!1208506 (= lambda!259454 lambda!259442)))

(declare-fun bs!1208507 () Bool)

(assert (= bs!1208507 (and d!1676545 d!1676539)))

(assert (=> bs!1208507 (= lambda!259454 lambda!259453)))

(assert (=> d!1676545 (= (inv!80043 (h!66778 zl!343)) (forall!14205 (exprs!4602 (h!66778 zl!343)) lambda!259454))))

(declare-fun bs!1208508 () Bool)

(assert (= bs!1208508 d!1676545))

(declare-fun m!6246080 () Bool)

(assert (=> bs!1208508 m!6246080))

(assert (=> b!5188956 d!1676545))

(declare-fun b!5189397 () Bool)

(declare-fun e!3232536 () Bool)

(declare-fun tp!1455768 () Bool)

(assert (=> b!5189397 (= e!3232536 (and tp_is_empty!38689 tp!1455768))))

(assert (=> b!5188964 (= tp!1455732 e!3232536)))

(assert (= (and b!5188964 (is-Cons!60331 (t!373608 s!2326))) b!5189397))

(declare-fun b!5189402 () Bool)

(declare-fun e!3232539 () Bool)

(declare-fun tp!1455773 () Bool)

(declare-fun tp!1455774 () Bool)

(assert (=> b!5189402 (= e!3232539 (and tp!1455773 tp!1455774))))

(assert (=> b!5188953 (= tp!1455731 e!3232539)))

(assert (= (and b!5188953 (is-Cons!60329 (exprs!4602 (h!66778 zl!343)))) b!5189402))

(declare-fun b!5189403 () Bool)

(declare-fun e!3232540 () Bool)

(declare-fun tp!1455775 () Bool)

(declare-fun tp!1455776 () Bool)

(assert (=> b!5189403 (= e!3232540 (and tp!1455775 tp!1455776))))

(assert (=> b!5188967 (= tp!1455728 e!3232540)))

(assert (= (and b!5188967 (is-Cons!60329 (exprs!4602 setElem!32731))) b!5189403))

(declare-fun b!5189415 () Bool)

(declare-fun e!3232543 () Bool)

(declare-fun tp!1455791 () Bool)

(declare-fun tp!1455788 () Bool)

(assert (=> b!5189415 (= e!3232543 (and tp!1455791 tp!1455788))))

(declare-fun b!5189417 () Bool)

(declare-fun tp!1455787 () Bool)

(declare-fun tp!1455789 () Bool)

(assert (=> b!5189417 (= e!3232543 (and tp!1455787 tp!1455789))))

(declare-fun b!5189416 () Bool)

(declare-fun tp!1455790 () Bool)

(assert (=> b!5189416 (= e!3232543 tp!1455790)))

(assert (=> b!5188952 (= tp!1455726 e!3232543)))

(declare-fun b!5189414 () Bool)

(assert (=> b!5189414 (= e!3232543 tp_is_empty!38689)))

(assert (= (and b!5188952 (is-ElementMatch!14718 (regOne!29948 r!7292))) b!5189414))

(assert (= (and b!5188952 (is-Concat!23563 (regOne!29948 r!7292))) b!5189415))

(assert (= (and b!5188952 (is-Star!14718 (regOne!29948 r!7292))) b!5189416))

(assert (= (and b!5188952 (is-Union!14718 (regOne!29948 r!7292))) b!5189417))

(declare-fun b!5189419 () Bool)

(declare-fun e!3232544 () Bool)

(declare-fun tp!1455796 () Bool)

(declare-fun tp!1455793 () Bool)

(assert (=> b!5189419 (= e!3232544 (and tp!1455796 tp!1455793))))

(declare-fun b!5189421 () Bool)

(declare-fun tp!1455792 () Bool)

(declare-fun tp!1455794 () Bool)

(assert (=> b!5189421 (= e!3232544 (and tp!1455792 tp!1455794))))

(declare-fun b!5189420 () Bool)

(declare-fun tp!1455795 () Bool)

(assert (=> b!5189420 (= e!3232544 tp!1455795)))

(assert (=> b!5188952 (= tp!1455730 e!3232544)))

(declare-fun b!5189418 () Bool)

(assert (=> b!5189418 (= e!3232544 tp_is_empty!38689)))

(assert (= (and b!5188952 (is-ElementMatch!14718 (regTwo!29948 r!7292))) b!5189418))

(assert (= (and b!5188952 (is-Concat!23563 (regTwo!29948 r!7292))) b!5189419))

(assert (= (and b!5188952 (is-Star!14718 (regTwo!29948 r!7292))) b!5189420))

(assert (= (and b!5188952 (is-Union!14718 (regTwo!29948 r!7292))) b!5189421))

(declare-fun b!5189423 () Bool)

(declare-fun e!3232545 () Bool)

(declare-fun tp!1455801 () Bool)

(declare-fun tp!1455798 () Bool)

(assert (=> b!5189423 (= e!3232545 (and tp!1455801 tp!1455798))))

(declare-fun b!5189425 () Bool)

(declare-fun tp!1455797 () Bool)

(declare-fun tp!1455799 () Bool)

(assert (=> b!5189425 (= e!3232545 (and tp!1455797 tp!1455799))))

(declare-fun b!5189424 () Bool)

(declare-fun tp!1455800 () Bool)

(assert (=> b!5189424 (= e!3232545 tp!1455800)))

(assert (=> b!5188957 (= tp!1455729 e!3232545)))

(declare-fun b!5189422 () Bool)

(assert (=> b!5189422 (= e!3232545 tp_is_empty!38689)))

(assert (= (and b!5188957 (is-ElementMatch!14718 (regOne!29949 r!7292))) b!5189422))

(assert (= (and b!5188957 (is-Concat!23563 (regOne!29949 r!7292))) b!5189423))

(assert (= (and b!5188957 (is-Star!14718 (regOne!29949 r!7292))) b!5189424))

(assert (= (and b!5188957 (is-Union!14718 (regOne!29949 r!7292))) b!5189425))

(declare-fun b!5189427 () Bool)

(declare-fun e!3232546 () Bool)

(declare-fun tp!1455806 () Bool)

(declare-fun tp!1455803 () Bool)

(assert (=> b!5189427 (= e!3232546 (and tp!1455806 tp!1455803))))

(declare-fun b!5189429 () Bool)

(declare-fun tp!1455802 () Bool)

(declare-fun tp!1455804 () Bool)

(assert (=> b!5189429 (= e!3232546 (and tp!1455802 tp!1455804))))

(declare-fun b!5189428 () Bool)

(declare-fun tp!1455805 () Bool)

(assert (=> b!5189428 (= e!3232546 tp!1455805)))

(assert (=> b!5188957 (= tp!1455733 e!3232546)))

(declare-fun b!5189426 () Bool)

(assert (=> b!5189426 (= e!3232546 tp_is_empty!38689)))

(assert (= (and b!5188957 (is-ElementMatch!14718 (regTwo!29949 r!7292))) b!5189426))

(assert (= (and b!5188957 (is-Concat!23563 (regTwo!29949 r!7292))) b!5189427))

(assert (= (and b!5188957 (is-Star!14718 (regTwo!29949 r!7292))) b!5189428))

(assert (= (and b!5188957 (is-Union!14718 (regTwo!29949 r!7292))) b!5189429))

(declare-fun b!5189431 () Bool)

(declare-fun e!3232547 () Bool)

(declare-fun tp!1455811 () Bool)

(declare-fun tp!1455808 () Bool)

(assert (=> b!5189431 (= e!3232547 (and tp!1455811 tp!1455808))))

(declare-fun b!5189433 () Bool)

(declare-fun tp!1455807 () Bool)

(declare-fun tp!1455809 () Bool)

(assert (=> b!5189433 (= e!3232547 (and tp!1455807 tp!1455809))))

(declare-fun b!5189432 () Bool)

(declare-fun tp!1455810 () Bool)

(assert (=> b!5189432 (= e!3232547 tp!1455810)))

(assert (=> b!5188966 (= tp!1455727 e!3232547)))

(declare-fun b!5189430 () Bool)

(assert (=> b!5189430 (= e!3232547 tp_is_empty!38689)))

(assert (= (and b!5188966 (is-ElementMatch!14718 (reg!15047 r!7292))) b!5189430))

(assert (= (and b!5188966 (is-Concat!23563 (reg!15047 r!7292))) b!5189431))

(assert (= (and b!5188966 (is-Star!14718 (reg!15047 r!7292))) b!5189432))

(assert (= (and b!5188966 (is-Union!14718 (reg!15047 r!7292))) b!5189433))

(declare-fun condSetEmpty!32737 () Bool)

(assert (=> setNonEmpty!32731 (= condSetEmpty!32737 (= setRest!32731 (as set.empty (Set Context!8204))))))

(declare-fun setRes!32737 () Bool)

(assert (=> setNonEmpty!32731 (= tp!1455735 setRes!32737)))

(declare-fun setIsEmpty!32737 () Bool)

(assert (=> setIsEmpty!32737 setRes!32737))

(declare-fun e!3232560 () Bool)

(declare-fun tp!1455817 () Bool)

(declare-fun setElem!32737 () Context!8204)

(declare-fun setNonEmpty!32737 () Bool)

(assert (=> setNonEmpty!32737 (= setRes!32737 (and tp!1455817 (inv!80043 setElem!32737) e!3232560))))

(declare-fun setRest!32737 () (Set Context!8204))

(assert (=> setNonEmpty!32737 (= setRest!32731 (set.union (set.insert setElem!32737 (as set.empty (Set Context!8204))) setRest!32737))))

(declare-fun b!5189458 () Bool)

(declare-fun tp!1455816 () Bool)

(assert (=> b!5189458 (= e!3232560 tp!1455816)))

(assert (= (and setNonEmpty!32731 condSetEmpty!32737) setIsEmpty!32737))

(assert (= (and setNonEmpty!32731 (not condSetEmpty!32737)) setNonEmpty!32737))

(assert (= setNonEmpty!32737 b!5189458))

(declare-fun m!6246082 () Bool)

(assert (=> setNonEmpty!32737 m!6246082))

(declare-fun b!5189474 () Bool)

(declare-fun e!3232570 () Bool)

(declare-fun tp!1455822 () Bool)

(assert (=> b!5189474 (= e!3232570 tp!1455822)))

(declare-fun b!5189473 () Bool)

(declare-fun e!3232569 () Bool)

(declare-fun tp!1455823 () Bool)

(assert (=> b!5189473 (= e!3232569 (and (inv!80043 (h!66778 (t!373607 zl!343))) e!3232570 tp!1455823))))

(assert (=> b!5188956 (= tp!1455734 e!3232569)))

(assert (= b!5189473 b!5189474))

(assert (= (and b!5188956 (is-Cons!60330 (t!373607 zl!343))) b!5189473))

(declare-fun m!6246084 () Bool)

(assert (=> b!5189473 m!6246084))

(push 1)

(assert (not bm!364781))

(assert (not bm!364764))

(assert (not b!5189432))

(assert (not b!5189425))

(assert (not b!5189075))

(assert (not bm!364735))

(assert (not bm!364751))

(assert (not b!5189474))

(assert (not bm!364766))

(assert (not b!5189384))

(assert (not d!1676545))

(assert (not b!5189263))

(assert (not bm!364777))

(assert (not bm!364747))

(assert (not b!5189116))

(assert (not b!5189197))

(assert (not d!1676535))

(assert (not b!5189074))

(assert (not b!5189458))

(assert (not b!5189433))

(assert (not b!5189077))

(assert (not bm!364738))

(assert (not d!1676539))

(assert (not d!1676515))

(assert (not b!5189335))

(assert (not b!5189337))

(assert (not b!5189264))

(assert (not b!5189391))

(assert (not bm!364745))

(assert (not d!1676537))

(assert (not d!1676531))

(assert (not bm!364786))

(assert (not b!5189390))

(assert (not b!5189138))

(assert (not bm!364780))

(assert (not b!5189242))

(assert (not b!5189325))

(assert (not b!5189388))

(assert (not b!5189324))

(assert (not bm!364741))

(assert (not b!5189385))

(assert (not b!5189429))

(assert (not bm!364761))

(assert (not b!5189254))

(assert (not b!5189237))

(assert (not b!5189340))

(assert (not bm!364778))

(assert (not b!5189266))

(assert (not b!5189423))

(assert (not b!5189341))

(assert (not b!5189318))

(assert (not b!5189419))

(assert (not d!1676495))

(assert (not b!5189473))

(assert (not b!5189080))

(assert (not d!1676513))

(assert (not d!1676511))

(assert (not d!1676523))

(assert (not b!5189397))

(assert (not b!5189431))

(assert (not b!5189338))

(assert (not b!5189415))

(assert (not setNonEmpty!32737))

(assert (not bm!364739))

(assert (not b!5189238))

(assert (not b!5189239))

(assert (not b!5189127))

(assert (not bm!364750))

(assert (not d!1676527))

(assert (not b!5189421))

(assert (not b!5189336))

(assert (not b!5189081))

(assert (not b!5189386))

(assert (not b!5189293))

(assert (not b!5189424))

(assert (not b!5189417))

(assert (not d!1676499))

(assert (not b!5189403))

(assert (not bm!364744))

(assert (not bm!364760))

(assert (not b!5189262))

(assert (not bm!364775))

(assert (not b!5189158))

(assert (not b!5189236))

(assert (not b!5189302))

(assert (not b!5189198))

(assert (not bm!364765))

(assert (not b!5189402))

(assert tp_is_empty!38689)

(assert (not b!5189416))

(assert (not b!5189387))

(assert (not b!5189427))

(assert (not b!5189078))

(assert (not b!5189079))

(assert (not d!1676519))

(assert (not b!5189428))

(assert (not b!5189261))

(assert (not b!5189420))

(assert (not bm!364767))

(assert (not b!5189088))

(assert (not bm!364755))

(assert (not b!5189255))

(assert (not b!5189241))

(assert (not b!5189267))

(assert (not bm!364774))

(assert (not b!5189157))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

