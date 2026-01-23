; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!582262 () Bool)

(assert start!582262)

(declare-fun b!5619011 () Bool)

(assert (=> b!5619011 true))

(assert (=> b!5619011 true))

(declare-fun lambda!301614 () Int)

(declare-fun lambda!301613 () Int)

(assert (=> b!5619011 (not (= lambda!301614 lambda!301613))))

(assert (=> b!5619011 true))

(assert (=> b!5619011 true))

(declare-fun b!5619001 () Bool)

(assert (=> b!5619001 true))

(declare-fun b!5618977 () Bool)

(declare-fun e!3463912 () Bool)

(declare-fun tp_is_empty!40457 () Bool)

(assert (=> b!5618977 (= e!3463912 tp_is_empty!40457)))

(declare-fun b!5618979 () Bool)

(declare-fun e!3463892 () Bool)

(declare-fun e!3463907 () Bool)

(assert (=> b!5618979 (= e!3463892 (not e!3463907))))

(declare-fun res!2380106 () Bool)

(assert (=> b!5618979 (=> res!2380106 e!3463907)))

(declare-datatypes ((C!31474 0))(
  ( (C!31475 (val!25439 Int)) )
))
(declare-datatypes ((Regex!15602 0))(
  ( (ElementMatch!15602 (c!985926 C!31474)) (Concat!24447 (regOne!31716 Regex!15602) (regTwo!31716 Regex!15602)) (EmptyExpr!15602) (Star!15602 (reg!15931 Regex!15602)) (EmptyLang!15602) (Union!15602 (regOne!31717 Regex!15602) (regTwo!31717 Regex!15602)) )
))
(declare-datatypes ((List!63105 0))(
  ( (Nil!62981) (Cons!62981 (h!69429 Regex!15602) (t!376395 List!63105)) )
))
(declare-datatypes ((Context!9972 0))(
  ( (Context!9973 (exprs!5486 List!63105)) )
))
(declare-datatypes ((List!63106 0))(
  ( (Nil!62982) (Cons!62982 (h!69430 Context!9972) (t!376396 List!63106)) )
))
(declare-fun zl!343 () List!63106)

(assert (=> b!5618979 (= res!2380106 (not (is-Cons!62982 zl!343)))))

(declare-fun lt!2259431 () Bool)

(declare-fun r!7292 () Regex!15602)

(declare-datatypes ((List!63107 0))(
  ( (Nil!62983) (Cons!62983 (h!69431 C!31474) (t!376397 List!63107)) )
))
(declare-fun s!2326 () List!63107)

(declare-fun matchRSpec!2705 (Regex!15602 List!63107) Bool)

(assert (=> b!5618979 (= lt!2259431 (matchRSpec!2705 r!7292 s!2326))))

(declare-fun matchR!7787 (Regex!15602 List!63107) Bool)

(assert (=> b!5618979 (= lt!2259431 (matchR!7787 r!7292 s!2326))))

(declare-datatypes ((Unit!155908 0))(
  ( (Unit!155909) )
))
(declare-fun lt!2259436 () Unit!155908)

(declare-fun mainMatchTheorem!2705 (Regex!15602 List!63107) Unit!155908)

(assert (=> b!5618979 (= lt!2259436 (mainMatchTheorem!2705 r!7292 s!2326))))

(declare-fun b!5618980 () Bool)

(declare-fun res!2380119 () Bool)

(declare-fun e!3463908 () Bool)

(assert (=> b!5618980 (=> res!2380119 e!3463908)))

(declare-fun lt!2259450 () Regex!15602)

(assert (=> b!5618980 (= res!2380119 (or (not (= lt!2259450 r!7292)) (not (= (exprs!5486 (h!69430 zl!343)) (Cons!62981 (regOne!31716 r!7292) (t!376395 (exprs!5486 (h!69430 zl!343))))))))))

(declare-fun b!5618981 () Bool)

(declare-fun e!3463903 () Bool)

(assert (=> b!5618981 (= e!3463908 e!3463903)))

(declare-fun res!2380103 () Bool)

(assert (=> b!5618981 (=> res!2380103 e!3463903)))

(declare-fun lt!2259446 () Int)

(declare-fun lt!2259465 () Int)

(assert (=> b!5618981 (= res!2380103 (>= lt!2259446 lt!2259465))))

(declare-fun zipperDepthTotal!227 (List!63106) Int)

(assert (=> b!5618981 (= lt!2259465 (zipperDepthTotal!227 zl!343))))

(declare-fun lt!2259454 () List!63106)

(assert (=> b!5618981 (= lt!2259446 (zipperDepthTotal!227 lt!2259454))))

(declare-fun lt!2259460 () Context!9972)

(assert (=> b!5618981 (= lt!2259454 (Cons!62982 lt!2259460 Nil!62982))))

(declare-fun b!5618982 () Bool)

(declare-fun e!3463895 () Bool)

(declare-fun lt!2259458 () (Set Context!9972))

(declare-fun matchZipper!1740 ((Set Context!9972) List!63107) Bool)

(assert (=> b!5618982 (= e!3463895 (matchZipper!1740 lt!2259458 (t!376397 s!2326)))))

(declare-fun b!5618983 () Bool)

(declare-fun e!3463909 () Unit!155908)

(declare-fun Unit!155910 () Unit!155908)

(assert (=> b!5618983 (= e!3463909 Unit!155910)))

(declare-fun lt!2259459 () Unit!155908)

(declare-fun lt!2259429 () (Set Context!9972))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!627 ((Set Context!9972) (Set Context!9972) List!63107) Unit!155908)

(assert (=> b!5618983 (= lt!2259459 (lemmaZipperConcatMatchesSameAsBothZippers!627 lt!2259429 lt!2259458 (t!376397 s!2326)))))

(declare-fun res!2380104 () Bool)

(assert (=> b!5618983 (= res!2380104 (matchZipper!1740 lt!2259429 (t!376397 s!2326)))))

(assert (=> b!5618983 (=> res!2380104 e!3463895)))

(assert (=> b!5618983 (= (matchZipper!1740 (set.union lt!2259429 lt!2259458) (t!376397 s!2326)) e!3463895)))

(declare-fun b!5618984 () Bool)

(declare-fun tp!1556417 () Bool)

(declare-fun tp!1556420 () Bool)

(assert (=> b!5618984 (= e!3463912 (and tp!1556417 tp!1556420))))

(declare-fun b!5618985 () Bool)

(declare-fun e!3463905 () Bool)

(assert (=> b!5618985 (= e!3463905 (matchZipper!1740 lt!2259458 (t!376397 s!2326)))))

(declare-fun lt!2259462 () Regex!15602)

(declare-fun e!3463894 () Bool)

(declare-fun lt!2259434 () Regex!15602)

(declare-fun b!5618986 () Bool)

(declare-fun lt!2259470 () Regex!15602)

(assert (=> b!5618986 (= e!3463894 (or (not (= lt!2259470 (Concat!24447 (regOne!31717 (regOne!31716 r!7292)) lt!2259434))) (= lt!2259462 (Concat!24447 (regTwo!31717 (regOne!31716 r!7292)) lt!2259434))))))

(declare-fun generalisedConcat!1217 (List!63105) Regex!15602)

(assert (=> b!5618986 (= lt!2259434 (generalisedConcat!1217 (t!376395 (exprs!5486 (h!69430 zl!343)))))))

(declare-fun setIsEmpty!37481 () Bool)

(declare-fun setRes!37481 () Bool)

(assert (=> setIsEmpty!37481 setRes!37481))

(declare-fun b!5618987 () Bool)

(declare-fun e!3463893 () Bool)

(assert (=> b!5618987 (= e!3463893 e!3463908)))

(declare-fun res!2380120 () Bool)

(assert (=> b!5618987 (=> res!2380120 e!3463908)))

(declare-fun lt!2259468 () Bool)

(declare-fun e!3463899 () Bool)

(assert (=> b!5618987 (= res!2380120 (not (= lt!2259468 e!3463899)))))

(declare-fun res!2380118 () Bool)

(assert (=> b!5618987 (=> res!2380118 e!3463899)))

(declare-fun lt!2259443 () Bool)

(assert (=> b!5618987 (= res!2380118 lt!2259443)))

(declare-fun z!1189 () (Set Context!9972))

(assert (=> b!5618987 (= lt!2259468 (matchZipper!1740 z!1189 s!2326))))

(declare-fun lt!2259441 () (Set Context!9972))

(assert (=> b!5618987 (= lt!2259443 (matchZipper!1740 lt!2259441 s!2326))))

(declare-fun lt!2259456 () Unit!155908)

(assert (=> b!5618987 (= lt!2259456 e!3463909)))

(declare-fun c!985923 () Bool)

(declare-fun nullable!5634 (Regex!15602) Bool)

(assert (=> b!5618987 (= c!985923 (nullable!5634 (regTwo!31717 (regOne!31716 r!7292))))))

(declare-fun lambda!301615 () Int)

(declare-fun lt!2259455 () Context!9972)

(declare-fun lt!2259437 () (Set Context!9972))

(declare-fun flatMap!1215 ((Set Context!9972) Int) (Set Context!9972))

(declare-fun derivationStepZipperUp!870 (Context!9972 C!31474) (Set Context!9972))

(assert (=> b!5618987 (= (flatMap!1215 lt!2259437 lambda!301615) (derivationStepZipperUp!870 lt!2259455 (h!69431 s!2326)))))

(declare-fun lt!2259444 () Unit!155908)

(declare-fun lemmaFlatMapOnSingletonSet!747 ((Set Context!9972) Context!9972 Int) Unit!155908)

(assert (=> b!5618987 (= lt!2259444 (lemmaFlatMapOnSingletonSet!747 lt!2259437 lt!2259455 lambda!301615))))

(declare-fun lt!2259467 () (Set Context!9972))

(assert (=> b!5618987 (= lt!2259467 (derivationStepZipperUp!870 lt!2259455 (h!69431 s!2326)))))

(declare-fun lt!2259471 () Unit!155908)

(declare-fun e!3463896 () Unit!155908)

(assert (=> b!5618987 (= lt!2259471 e!3463896)))

(declare-fun c!985924 () Bool)

(assert (=> b!5618987 (= c!985924 (nullable!5634 (regOne!31717 (regOne!31716 r!7292))))))

(assert (=> b!5618987 (= (flatMap!1215 lt!2259441 lambda!301615) (derivationStepZipperUp!870 lt!2259460 (h!69431 s!2326)))))

(declare-fun lt!2259457 () Unit!155908)

(assert (=> b!5618987 (= lt!2259457 (lemmaFlatMapOnSingletonSet!747 lt!2259441 lt!2259460 lambda!301615))))

(declare-fun lt!2259453 () (Set Context!9972))

(assert (=> b!5618987 (= lt!2259453 (derivationStepZipperUp!870 lt!2259460 (h!69431 s!2326)))))

(assert (=> b!5618987 (= lt!2259437 (set.insert lt!2259455 (as set.empty (Set Context!9972))))))

(declare-fun lt!2259463 () List!63105)

(assert (=> b!5618987 (= lt!2259455 (Context!9973 lt!2259463))))

(assert (=> b!5618987 (= lt!2259463 (Cons!62981 (regTwo!31717 (regOne!31716 r!7292)) (t!376395 (exprs!5486 (h!69430 zl!343)))))))

(assert (=> b!5618987 (= lt!2259441 (set.insert lt!2259460 (as set.empty (Set Context!9972))))))

(declare-fun lt!2259440 () List!63105)

(assert (=> b!5618987 (= lt!2259460 (Context!9973 lt!2259440))))

(assert (=> b!5618987 (= lt!2259440 (Cons!62981 (regOne!31717 (regOne!31716 r!7292)) (t!376395 (exprs!5486 (h!69430 zl!343)))))))

(declare-fun b!5618988 () Bool)

(declare-fun res!2380114 () Bool)

(declare-fun e!3463897 () Bool)

(assert (=> b!5618988 (=> res!2380114 e!3463897)))

(declare-fun isEmpty!34808 (List!63105) Bool)

(assert (=> b!5618988 (= res!2380114 (isEmpty!34808 (t!376395 (exprs!5486 (h!69430 zl!343)))))))

(declare-fun b!5618989 () Bool)

(declare-fun res!2380108 () Bool)

(declare-fun e!3463900 () Bool)

(assert (=> b!5618989 (=> (not res!2380108) (not e!3463900))))

(declare-fun toList!9386 ((Set Context!9972)) List!63106)

(assert (=> b!5618989 (= res!2380108 (= (toList!9386 z!1189) zl!343))))

(declare-fun b!5618990 () Bool)

(declare-fun e!3463906 () Bool)

(declare-fun e!3463911 () Bool)

(assert (=> b!5618990 (= e!3463906 e!3463911)))

(declare-fun res!2380116 () Bool)

(assert (=> b!5618990 (=> res!2380116 e!3463911)))

(declare-fun lt!2259447 () (Set Context!9972))

(declare-fun lt!2259435 () (Set Context!9972))

(assert (=> b!5618990 (= res!2380116 (not (= lt!2259447 lt!2259435)))))

(declare-fun lt!2259438 () (Set Context!9972))

(assert (=> b!5618990 (= lt!2259435 (set.union lt!2259438 lt!2259429))))

(declare-fun lt!2259472 () Context!9972)

(declare-fun derivationStepZipperDown!944 (Regex!15602 Context!9972 C!31474) (Set Context!9972))

(assert (=> b!5618990 (= lt!2259429 (derivationStepZipperDown!944 (regTwo!31717 (regOne!31716 r!7292)) lt!2259472 (h!69431 s!2326)))))

(assert (=> b!5618990 (= lt!2259438 (derivationStepZipperDown!944 (regOne!31717 (regOne!31716 r!7292)) lt!2259472 (h!69431 s!2326)))))

(declare-fun b!5618978 () Bool)

(declare-fun e!3463913 () Bool)

(assert (=> b!5618978 (= e!3463913 (matchZipper!1740 lt!2259429 (t!376397 s!2326)))))

(declare-fun res!2380100 () Bool)

(assert (=> start!582262 (=> (not res!2380100) (not e!3463900))))

(declare-fun validRegex!7338 (Regex!15602) Bool)

(assert (=> start!582262 (= res!2380100 (validRegex!7338 r!7292))))

(assert (=> start!582262 e!3463900))

(assert (=> start!582262 e!3463912))

(declare-fun condSetEmpty!37481 () Bool)

(assert (=> start!582262 (= condSetEmpty!37481 (= z!1189 (as set.empty (Set Context!9972))))))

(assert (=> start!582262 setRes!37481))

(declare-fun e!3463910 () Bool)

(assert (=> start!582262 e!3463910))

(declare-fun e!3463902 () Bool)

(assert (=> start!582262 e!3463902))

(declare-fun b!5618991 () Bool)

(declare-fun e!3463914 () Unit!155908)

(declare-fun Unit!155911 () Unit!155908)

(assert (=> b!5618991 (= e!3463914 Unit!155911)))

(declare-fun lt!2259439 () Unit!155908)

(assert (=> b!5618991 (= lt!2259439 (lemmaZipperConcatMatchesSameAsBothZippers!627 lt!2259447 lt!2259458 (t!376397 s!2326)))))

(declare-fun res!2380105 () Bool)

(assert (=> b!5618991 (= res!2380105 (matchZipper!1740 lt!2259447 (t!376397 s!2326)))))

(assert (=> b!5618991 (=> res!2380105 e!3463905)))

(assert (=> b!5618991 (= (matchZipper!1740 (set.union lt!2259447 lt!2259458) (t!376397 s!2326)) e!3463905)))

(declare-fun b!5618992 () Bool)

(declare-fun e!3463915 () Bool)

(declare-fun tp!1556419 () Bool)

(assert (=> b!5618992 (= e!3463915 tp!1556419)))

(declare-fun b!5618993 () Bool)

(declare-fun res!2380097 () Bool)

(assert (=> b!5618993 (=> res!2380097 e!3463907)))

(declare-fun isEmpty!34809 (List!63106) Bool)

(assert (=> b!5618993 (= res!2380097 (not (isEmpty!34809 (t!376396 zl!343))))))

(declare-fun b!5618994 () Bool)

(declare-fun e!3463898 () Bool)

(assert (=> b!5618994 (= e!3463903 e!3463898)))

(declare-fun res!2380109 () Bool)

(assert (=> b!5618994 (=> res!2380109 e!3463898)))

(declare-fun lt!2259445 () List!63106)

(assert (=> b!5618994 (= res!2380109 (>= (zipperDepthTotal!227 lt!2259445) lt!2259465))))

(assert (=> b!5618994 (= lt!2259445 (Cons!62982 lt!2259455 Nil!62982))))

(declare-fun b!5618995 () Bool)

(declare-fun tp!1556421 () Bool)

(declare-fun tp!1556415 () Bool)

(assert (=> b!5618995 (= e!3463912 (and tp!1556421 tp!1556415))))

(declare-fun b!5618996 () Bool)

(declare-fun e!3463891 () Bool)

(assert (=> b!5618996 (= e!3463891 (matchZipper!1740 lt!2259458 (t!376397 s!2326)))))

(declare-fun b!5618997 () Bool)

(declare-fun res!2380101 () Bool)

(assert (=> b!5618997 (=> res!2380101 e!3463907)))

(declare-fun generalisedUnion!1465 (List!63105) Regex!15602)

(declare-fun unfocusZipperList!1030 (List!63106) List!63105)

(assert (=> b!5618997 (= res!2380101 (not (= r!7292 (generalisedUnion!1465 (unfocusZipperList!1030 zl!343)))))))

(declare-fun b!5618998 () Bool)

(declare-fun Unit!155912 () Unit!155908)

(assert (=> b!5618998 (= e!3463914 Unit!155912)))

(declare-fun b!5618999 () Bool)

(declare-fun res!2380098 () Bool)

(assert (=> b!5618999 (=> res!2380098 e!3463907)))

(assert (=> b!5618999 (= res!2380098 (not (= r!7292 (generalisedConcat!1217 (exprs!5486 (h!69430 zl!343))))))))

(declare-fun b!5619000 () Bool)

(declare-fun e!3463904 () Bool)

(assert (=> b!5619000 (= e!3463904 (not (matchZipper!1740 lt!2259429 (t!376397 s!2326))))))

(assert (=> b!5619001 (= e!3463897 e!3463906)))

(declare-fun res!2380111 () Bool)

(assert (=> b!5619001 (=> res!2380111 e!3463906)))

(assert (=> b!5619001 (= res!2380111 (or (and (is-ElementMatch!15602 (regOne!31716 r!7292)) (= (c!985926 (regOne!31716 r!7292)) (h!69431 s!2326))) (not (is-Union!15602 (regOne!31716 r!7292)))))))

(declare-fun lt!2259452 () Unit!155908)

(assert (=> b!5619001 (= lt!2259452 e!3463914)))

(declare-fun c!985925 () Bool)

(assert (=> b!5619001 (= c!985925 (nullable!5634 (h!69429 (exprs!5486 (h!69430 zl!343)))))))

(assert (=> b!5619001 (= (flatMap!1215 z!1189 lambda!301615) (derivationStepZipperUp!870 (h!69430 zl!343) (h!69431 s!2326)))))

(declare-fun lt!2259448 () Unit!155908)

(assert (=> b!5619001 (= lt!2259448 (lemmaFlatMapOnSingletonSet!747 z!1189 (h!69430 zl!343) lambda!301615))))

(assert (=> b!5619001 (= lt!2259458 (derivationStepZipperUp!870 lt!2259472 (h!69431 s!2326)))))

(assert (=> b!5619001 (= lt!2259447 (derivationStepZipperDown!944 (h!69429 (exprs!5486 (h!69430 zl!343))) lt!2259472 (h!69431 s!2326)))))

(assert (=> b!5619001 (= lt!2259472 (Context!9973 (t!376395 (exprs!5486 (h!69430 zl!343)))))))

(declare-fun lt!2259432 () (Set Context!9972))

(assert (=> b!5619001 (= lt!2259432 (derivationStepZipperUp!870 (Context!9973 (Cons!62981 (h!69429 (exprs!5486 (h!69430 zl!343))) (t!376395 (exprs!5486 (h!69430 zl!343))))) (h!69431 s!2326)))))

(declare-fun b!5619002 () Bool)

(assert (=> b!5619002 (= e!3463899 (matchZipper!1740 lt!2259437 s!2326))))

(declare-fun setElem!37481 () Context!9972)

(declare-fun setNonEmpty!37481 () Bool)

(declare-fun tp!1556412 () Bool)

(declare-fun inv!82253 (Context!9972) Bool)

(assert (=> setNonEmpty!37481 (= setRes!37481 (and tp!1556412 (inv!82253 setElem!37481) e!3463915))))

(declare-fun setRest!37481 () (Set Context!9972))

(assert (=> setNonEmpty!37481 (= z!1189 (set.union (set.insert setElem!37481 (as set.empty (Set Context!9972))) setRest!37481))))

(declare-fun b!5619003 () Bool)

(assert (=> b!5619003 (= e!3463911 e!3463893)))

(declare-fun res!2380113 () Bool)

(assert (=> b!5619003 (=> res!2380113 e!3463893)))

(assert (=> b!5619003 (= res!2380113 e!3463904)))

(declare-fun res!2380112 () Bool)

(assert (=> b!5619003 (=> (not res!2380112) (not e!3463904))))

(declare-fun lt!2259473 () Bool)

(assert (=> b!5619003 (= res!2380112 (not (= (matchZipper!1740 lt!2259447 (t!376397 s!2326)) lt!2259473)))))

(assert (=> b!5619003 (= (matchZipper!1740 lt!2259435 (t!376397 s!2326)) e!3463913)))

(declare-fun res!2380107 () Bool)

(assert (=> b!5619003 (=> res!2380107 e!3463913)))

(assert (=> b!5619003 (= res!2380107 lt!2259473)))

(assert (=> b!5619003 (= lt!2259473 (matchZipper!1740 lt!2259438 (t!376397 s!2326)))))

(declare-fun lt!2259428 () Unit!155908)

(assert (=> b!5619003 (= lt!2259428 (lemmaZipperConcatMatchesSameAsBothZippers!627 lt!2259438 lt!2259429 (t!376397 s!2326)))))

(declare-fun b!5619004 () Bool)

(declare-fun Unit!155913 () Unit!155908)

(assert (=> b!5619004 (= e!3463909 Unit!155913)))

(declare-fun b!5619005 () Bool)

(declare-fun Unit!155914 () Unit!155908)

(assert (=> b!5619005 (= e!3463896 Unit!155914)))

(declare-fun lt!2259449 () Unit!155908)

(assert (=> b!5619005 (= lt!2259449 (lemmaZipperConcatMatchesSameAsBothZippers!627 lt!2259438 lt!2259458 (t!376397 s!2326)))))

(declare-fun res!2380121 () Bool)

(assert (=> b!5619005 (= res!2380121 lt!2259473)))

(assert (=> b!5619005 (=> res!2380121 e!3463891)))

(assert (=> b!5619005 (= (matchZipper!1740 (set.union lt!2259438 lt!2259458) (t!376397 s!2326)) e!3463891)))

(declare-fun b!5619006 () Bool)

(declare-fun res!2380099 () Bool)

(assert (=> b!5619006 (=> res!2380099 e!3463907)))

(assert (=> b!5619006 (= res!2380099 (or (is-EmptyExpr!15602 r!7292) (is-EmptyLang!15602 r!7292) (is-ElementMatch!15602 r!7292) (is-Union!15602 r!7292) (not (is-Concat!24447 r!7292))))))

(declare-fun b!5619007 () Bool)

(assert (=> b!5619007 (= e!3463898 e!3463894)))

(declare-fun res!2380102 () Bool)

(assert (=> b!5619007 (=> res!2380102 e!3463894)))

(declare-fun lt!2259466 () Bool)

(declare-fun lt!2259469 () Bool)

(assert (=> b!5619007 (= res!2380102 (or (and (not (= lt!2259468 lt!2259466)) (not lt!2259469)) (not (= r!7292 (Concat!24447 (Union!15602 (regOne!31717 (regOne!31716 r!7292)) (regTwo!31717 (regOne!31716 r!7292))) (regTwo!31716 r!7292))))))))

(assert (=> b!5619007 (= lt!2259469 (matchRSpec!2705 lt!2259462 s!2326))))

(declare-fun lt!2259433 () Unit!155908)

(assert (=> b!5619007 (= lt!2259433 (mainMatchTheorem!2705 lt!2259462 s!2326))))

(assert (=> b!5619007 (= lt!2259466 (matchRSpec!2705 lt!2259470 s!2326))))

(declare-fun lt!2259442 () Unit!155908)

(assert (=> b!5619007 (= lt!2259442 (mainMatchTheorem!2705 lt!2259470 s!2326))))

(assert (=> b!5619007 (= lt!2259469 (matchZipper!1740 lt!2259437 s!2326))))

(assert (=> b!5619007 (= lt!2259469 (matchR!7787 lt!2259462 s!2326))))

(declare-fun lt!2259427 () Unit!155908)

(declare-fun theoremZipperRegexEquiv!618 ((Set Context!9972) List!63106 Regex!15602 List!63107) Unit!155908)

(assert (=> b!5619007 (= lt!2259427 (theoremZipperRegexEquiv!618 lt!2259437 lt!2259445 lt!2259462 s!2326))))

(assert (=> b!5619007 (= lt!2259462 (generalisedConcat!1217 lt!2259463))))

(assert (=> b!5619007 (= lt!2259466 lt!2259443)))

(assert (=> b!5619007 (= lt!2259466 (matchR!7787 lt!2259470 s!2326))))

(declare-fun lt!2259451 () Unit!155908)

(assert (=> b!5619007 (= lt!2259451 (theoremZipperRegexEquiv!618 lt!2259441 lt!2259454 lt!2259470 s!2326))))

(assert (=> b!5619007 (= lt!2259470 (generalisedConcat!1217 lt!2259440))))

(declare-fun e!3463901 () Bool)

(declare-fun b!5619008 () Bool)

(declare-fun tp!1556416 () Bool)

(assert (=> b!5619008 (= e!3463910 (and (inv!82253 (h!69430 zl!343)) e!3463901 tp!1556416))))

(declare-fun b!5619009 () Bool)

(declare-fun Unit!155915 () Unit!155908)

(assert (=> b!5619009 (= e!3463896 Unit!155915)))

(declare-fun b!5619010 () Bool)

(declare-fun tp!1556414 () Bool)

(assert (=> b!5619010 (= e!3463912 tp!1556414)))

(assert (=> b!5619011 (= e!3463907 e!3463897)))

(declare-fun res!2380115 () Bool)

(assert (=> b!5619011 (=> res!2380115 e!3463897)))

(declare-fun lt!2259430 () Bool)

(assert (=> b!5619011 (= res!2380115 (or (not (= lt!2259431 lt!2259430)) (is-Nil!62983 s!2326)))))

(declare-fun Exists!2702 (Int) Bool)

(assert (=> b!5619011 (= (Exists!2702 lambda!301613) (Exists!2702 lambda!301614))))

(declare-fun lt!2259464 () Unit!155908)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1331 (Regex!15602 Regex!15602 List!63107) Unit!155908)

(assert (=> b!5619011 (= lt!2259464 (lemmaExistCutMatchRandMatchRSpecEquivalent!1331 (regOne!31716 r!7292) (regTwo!31716 r!7292) s!2326))))

(assert (=> b!5619011 (= lt!2259430 (Exists!2702 lambda!301613))))

(declare-datatypes ((tuple2!65398 0))(
  ( (tuple2!65399 (_1!36002 List!63107) (_2!36002 List!63107)) )
))
(declare-datatypes ((Option!15611 0))(
  ( (None!15610) (Some!15610 (v!51655 tuple2!65398)) )
))
(declare-fun isDefined!12314 (Option!15611) Bool)

(declare-fun findConcatSeparation!2025 (Regex!15602 Regex!15602 List!63107 List!63107 List!63107) Option!15611)

(assert (=> b!5619011 (= lt!2259430 (isDefined!12314 (findConcatSeparation!2025 (regOne!31716 r!7292) (regTwo!31716 r!7292) Nil!62983 s!2326 s!2326)))))

(declare-fun lt!2259461 () Unit!155908)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1789 (Regex!15602 Regex!15602 List!63107) Unit!155908)

(assert (=> b!5619011 (= lt!2259461 (lemmaFindConcatSeparationEquivalentToExists!1789 (regOne!31716 r!7292) (regTwo!31716 r!7292) s!2326))))

(declare-fun b!5619012 () Bool)

(declare-fun tp!1556413 () Bool)

(assert (=> b!5619012 (= e!3463901 tp!1556413)))

(declare-fun b!5619013 () Bool)

(declare-fun tp!1556418 () Bool)

(assert (=> b!5619013 (= e!3463902 (and tp_is_empty!40457 tp!1556418))))

(declare-fun b!5619014 () Bool)

(declare-fun res!2380110 () Bool)

(assert (=> b!5619014 (=> res!2380110 e!3463907)))

(assert (=> b!5619014 (= res!2380110 (not (is-Cons!62981 (exprs!5486 (h!69430 zl!343)))))))

(declare-fun b!5619015 () Bool)

(assert (=> b!5619015 (= e!3463900 e!3463892)))

(declare-fun res!2380117 () Bool)

(assert (=> b!5619015 (=> (not res!2380117) (not e!3463892))))

(assert (=> b!5619015 (= res!2380117 (= r!7292 lt!2259450))))

(declare-fun unfocusZipper!1344 (List!63106) Regex!15602)

(assert (=> b!5619015 (= lt!2259450 (unfocusZipper!1344 zl!343))))

(assert (= (and start!582262 res!2380100) b!5618989))

(assert (= (and b!5618989 res!2380108) b!5619015))

(assert (= (and b!5619015 res!2380117) b!5618979))

(assert (= (and b!5618979 (not res!2380106)) b!5618993))

(assert (= (and b!5618993 (not res!2380097)) b!5618999))

(assert (= (and b!5618999 (not res!2380098)) b!5619014))

(assert (= (and b!5619014 (not res!2380110)) b!5618997))

(assert (= (and b!5618997 (not res!2380101)) b!5619006))

(assert (= (and b!5619006 (not res!2380099)) b!5619011))

(assert (= (and b!5619011 (not res!2380115)) b!5618988))

(assert (= (and b!5618988 (not res!2380114)) b!5619001))

(assert (= (and b!5619001 c!985925) b!5618991))

(assert (= (and b!5619001 (not c!985925)) b!5618998))

(assert (= (and b!5618991 (not res!2380105)) b!5618985))

(assert (= (and b!5619001 (not res!2380111)) b!5618990))

(assert (= (and b!5618990 (not res!2380116)) b!5619003))

(assert (= (and b!5619003 (not res!2380107)) b!5618978))

(assert (= (and b!5619003 res!2380112) b!5619000))

(assert (= (and b!5619003 (not res!2380113)) b!5618987))

(assert (= (and b!5618987 c!985924) b!5619005))

(assert (= (and b!5618987 (not c!985924)) b!5619009))

(assert (= (and b!5619005 (not res!2380121)) b!5618996))

(assert (= (and b!5618987 c!985923) b!5618983))

(assert (= (and b!5618987 (not c!985923)) b!5619004))

(assert (= (and b!5618983 (not res!2380104)) b!5618982))

(assert (= (and b!5618987 (not res!2380118)) b!5619002))

(assert (= (and b!5618987 (not res!2380120)) b!5618980))

(assert (= (and b!5618980 (not res!2380119)) b!5618981))

(assert (= (and b!5618981 (not res!2380103)) b!5618994))

(assert (= (and b!5618994 (not res!2380109)) b!5619007))

(assert (= (and b!5619007 (not res!2380102)) b!5618986))

(assert (= (and start!582262 (is-ElementMatch!15602 r!7292)) b!5618977))

(assert (= (and start!582262 (is-Concat!24447 r!7292)) b!5618995))

(assert (= (and start!582262 (is-Star!15602 r!7292)) b!5619010))

(assert (= (and start!582262 (is-Union!15602 r!7292)) b!5618984))

(assert (= (and start!582262 condSetEmpty!37481) setIsEmpty!37481))

(assert (= (and start!582262 (not condSetEmpty!37481)) setNonEmpty!37481))

(assert (= setNonEmpty!37481 b!5618992))

(assert (= b!5619008 b!5619012))

(assert (= (and start!582262 (is-Cons!62982 zl!343)) b!5619008))

(assert (= (and start!582262 (is-Cons!62983 s!2326)) b!5619013))

(declare-fun m!6592636 () Bool)

(assert (=> setNonEmpty!37481 m!6592636))

(declare-fun m!6592638 () Bool)

(assert (=> b!5618986 m!6592638))

(declare-fun m!6592640 () Bool)

(assert (=> b!5618990 m!6592640))

(declare-fun m!6592642 () Bool)

(assert (=> b!5618990 m!6592642))

(declare-fun m!6592644 () Bool)

(assert (=> b!5618981 m!6592644))

(declare-fun m!6592646 () Bool)

(assert (=> b!5618981 m!6592646))

(declare-fun m!6592648 () Bool)

(assert (=> b!5618988 m!6592648))

(declare-fun m!6592650 () Bool)

(assert (=> b!5618993 m!6592650))

(declare-fun m!6592652 () Bool)

(assert (=> b!5618978 m!6592652))

(declare-fun m!6592654 () Bool)

(assert (=> b!5618979 m!6592654))

(declare-fun m!6592656 () Bool)

(assert (=> b!5618979 m!6592656))

(declare-fun m!6592658 () Bool)

(assert (=> b!5618979 m!6592658))

(declare-fun m!6592660 () Bool)

(assert (=> b!5618982 m!6592660))

(declare-fun m!6592662 () Bool)

(assert (=> b!5619003 m!6592662))

(declare-fun m!6592664 () Bool)

(assert (=> b!5619003 m!6592664))

(declare-fun m!6592666 () Bool)

(assert (=> b!5619003 m!6592666))

(declare-fun m!6592668 () Bool)

(assert (=> b!5619003 m!6592668))

(declare-fun m!6592670 () Bool)

(assert (=> b!5619015 m!6592670))

(assert (=> b!5619000 m!6592652))

(declare-fun m!6592672 () Bool)

(assert (=> b!5618991 m!6592672))

(assert (=> b!5618991 m!6592662))

(declare-fun m!6592674 () Bool)

(assert (=> b!5618991 m!6592674))

(declare-fun m!6592676 () Bool)

(assert (=> b!5619001 m!6592676))

(declare-fun m!6592678 () Bool)

(assert (=> b!5619001 m!6592678))

(declare-fun m!6592680 () Bool)

(assert (=> b!5619001 m!6592680))

(declare-fun m!6592682 () Bool)

(assert (=> b!5619001 m!6592682))

(declare-fun m!6592684 () Bool)

(assert (=> b!5619001 m!6592684))

(declare-fun m!6592686 () Bool)

(assert (=> b!5619001 m!6592686))

(declare-fun m!6592688 () Bool)

(assert (=> b!5619001 m!6592688))

(declare-fun m!6592690 () Bool)

(assert (=> b!5619011 m!6592690))

(declare-fun m!6592692 () Bool)

(assert (=> b!5619011 m!6592692))

(declare-fun m!6592694 () Bool)

(assert (=> b!5619011 m!6592694))

(declare-fun m!6592696 () Bool)

(assert (=> b!5619011 m!6592696))

(declare-fun m!6592698 () Bool)

(assert (=> b!5619011 m!6592698))

(assert (=> b!5619011 m!6592690))

(assert (=> b!5619011 m!6592692))

(declare-fun m!6592700 () Bool)

(assert (=> b!5619011 m!6592700))

(declare-fun m!6592702 () Bool)

(assert (=> start!582262 m!6592702))

(declare-fun m!6592704 () Bool)

(assert (=> b!5618983 m!6592704))

(assert (=> b!5618983 m!6592652))

(declare-fun m!6592706 () Bool)

(assert (=> b!5618983 m!6592706))

(declare-fun m!6592708 () Bool)

(assert (=> b!5619008 m!6592708))

(declare-fun m!6592710 () Bool)

(assert (=> b!5618989 m!6592710))

(declare-fun m!6592712 () Bool)

(assert (=> b!5619007 m!6592712))

(declare-fun m!6592714 () Bool)

(assert (=> b!5619007 m!6592714))

(declare-fun m!6592716 () Bool)

(assert (=> b!5619007 m!6592716))

(declare-fun m!6592718 () Bool)

(assert (=> b!5619007 m!6592718))

(declare-fun m!6592720 () Bool)

(assert (=> b!5619007 m!6592720))

(declare-fun m!6592722 () Bool)

(assert (=> b!5619007 m!6592722))

(declare-fun m!6592724 () Bool)

(assert (=> b!5619007 m!6592724))

(declare-fun m!6592726 () Bool)

(assert (=> b!5619007 m!6592726))

(declare-fun m!6592728 () Bool)

(assert (=> b!5619007 m!6592728))

(declare-fun m!6592730 () Bool)

(assert (=> b!5619007 m!6592730))

(declare-fun m!6592732 () Bool)

(assert (=> b!5619007 m!6592732))

(declare-fun m!6592734 () Bool)

(assert (=> b!5618997 m!6592734))

(assert (=> b!5618997 m!6592734))

(declare-fun m!6592736 () Bool)

(assert (=> b!5618997 m!6592736))

(assert (=> b!5619002 m!6592720))

(declare-fun m!6592738 () Bool)

(assert (=> b!5618994 m!6592738))

(assert (=> b!5618996 m!6592660))

(assert (=> b!5618985 m!6592660))

(declare-fun m!6592740 () Bool)

(assert (=> b!5619005 m!6592740))

(declare-fun m!6592742 () Bool)

(assert (=> b!5619005 m!6592742))

(declare-fun m!6592744 () Bool)

(assert (=> b!5618999 m!6592744))

(declare-fun m!6592746 () Bool)

(assert (=> b!5618987 m!6592746))

(declare-fun m!6592748 () Bool)

(assert (=> b!5618987 m!6592748))

(declare-fun m!6592750 () Bool)

(assert (=> b!5618987 m!6592750))

(declare-fun m!6592752 () Bool)

(assert (=> b!5618987 m!6592752))

(declare-fun m!6592754 () Bool)

(assert (=> b!5618987 m!6592754))

(declare-fun m!6592756 () Bool)

(assert (=> b!5618987 m!6592756))

(declare-fun m!6592758 () Bool)

(assert (=> b!5618987 m!6592758))

(declare-fun m!6592760 () Bool)

(assert (=> b!5618987 m!6592760))

(declare-fun m!6592762 () Bool)

(assert (=> b!5618987 m!6592762))

(declare-fun m!6592764 () Bool)

(assert (=> b!5618987 m!6592764))

(declare-fun m!6592766 () Bool)

(assert (=> b!5618987 m!6592766))

(declare-fun m!6592768 () Bool)

(assert (=> b!5618987 m!6592768))

(push 1)

(assert (not b!5618996))

(assert (not b!5619007))

(assert (not b!5618995))

(assert (not b!5618982))

(assert tp_is_empty!40457)

(assert (not b!5619015))

(assert (not b!5619012))

(assert (not b!5618978))

(assert (not b!5618989))

(assert (not b!5619013))

(assert (not b!5618984))

(assert (not b!5618991))

(assert (not b!5618990))

(assert (not setNonEmpty!37481))

(assert (not b!5619003))

(assert (not b!5618986))

(assert (not b!5618992))

(assert (not b!5618997))

(assert (not b!5618999))

(assert (not b!5618987))

(assert (not b!5618983))

(assert (not b!5619001))

(assert (not b!5618985))

(assert (not b!5618988))

(assert (not b!5619008))

(assert (not b!5619002))

(assert (not b!5618981))

(assert (not b!5619011))

(assert (not b!5619010))

(assert (not b!5619000))

(assert (not start!582262))

(assert (not b!5618994))

(assert (not b!5619005))

(assert (not b!5618979))

(assert (not b!5618993))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1775801 () Bool)

(declare-fun lambda!301633 () Int)

(declare-fun forall!14761 (List!63105 Int) Bool)

(assert (=> d!1775801 (= (inv!82253 (h!69430 zl!343)) (forall!14761 (exprs!5486 (h!69430 zl!343)) lambda!301633))))

(declare-fun bs!1301326 () Bool)

(assert (= bs!1301326 d!1775801))

(declare-fun m!6592904 () Bool)

(assert (=> bs!1301326 m!6592904))

(assert (=> b!5619008 d!1775801))

(declare-fun d!1775803 () Bool)

(assert (=> d!1775803 (= (isEmpty!34808 (t!376395 (exprs!5486 (h!69430 zl!343)))) (is-Nil!62981 (t!376395 (exprs!5486 (h!69430 zl!343)))))))

(assert (=> b!5618988 d!1775803))

(declare-fun d!1775805 () Bool)

(declare-fun nullableFct!1735 (Regex!15602) Bool)

(assert (=> d!1775805 (= (nullable!5634 (regTwo!31717 (regOne!31716 r!7292))) (nullableFct!1735 (regTwo!31717 (regOne!31716 r!7292))))))

(declare-fun bs!1301327 () Bool)

(assert (= bs!1301327 d!1775805))

(declare-fun m!6592906 () Bool)

(assert (=> bs!1301327 m!6592906))

(assert (=> b!5618987 d!1775805))

(declare-fun d!1775807 () Bool)

(declare-fun c!985948 () Bool)

(declare-fun e!3464003 () Bool)

(assert (=> d!1775807 (= c!985948 e!3464003)))

(declare-fun res!2380211 () Bool)

(assert (=> d!1775807 (=> (not res!2380211) (not e!3464003))))

(assert (=> d!1775807 (= res!2380211 (is-Cons!62981 (exprs!5486 lt!2259460)))))

(declare-fun e!3464005 () (Set Context!9972))

(assert (=> d!1775807 (= (derivationStepZipperUp!870 lt!2259460 (h!69431 s!2326)) e!3464005)))

(declare-fun b!5619167 () Bool)

(assert (=> b!5619167 (= e!3464003 (nullable!5634 (h!69429 (exprs!5486 lt!2259460))))))

(declare-fun b!5619168 () Bool)

(declare-fun e!3464004 () (Set Context!9972))

(declare-fun call!423044 () (Set Context!9972))

(assert (=> b!5619168 (= e!3464004 call!423044)))

(declare-fun b!5619169 () Bool)

(assert (=> b!5619169 (= e!3464004 (as set.empty (Set Context!9972)))))

(declare-fun bm!423039 () Bool)

(assert (=> bm!423039 (= call!423044 (derivationStepZipperDown!944 (h!69429 (exprs!5486 lt!2259460)) (Context!9973 (t!376395 (exprs!5486 lt!2259460))) (h!69431 s!2326)))))

(declare-fun b!5619170 () Bool)

(assert (=> b!5619170 (= e!3464005 e!3464004)))

(declare-fun c!985949 () Bool)

(assert (=> b!5619170 (= c!985949 (is-Cons!62981 (exprs!5486 lt!2259460)))))

(declare-fun b!5619171 () Bool)

(assert (=> b!5619171 (= e!3464005 (set.union call!423044 (derivationStepZipperUp!870 (Context!9973 (t!376395 (exprs!5486 lt!2259460))) (h!69431 s!2326))))))

(assert (= (and d!1775807 res!2380211) b!5619167))

(assert (= (and d!1775807 c!985948) b!5619171))

(assert (= (and d!1775807 (not c!985948)) b!5619170))

(assert (= (and b!5619170 c!985949) b!5619168))

(assert (= (and b!5619170 (not c!985949)) b!5619169))

(assert (= (or b!5619171 b!5619168) bm!423039))

(declare-fun m!6592908 () Bool)

(assert (=> b!5619167 m!6592908))

(declare-fun m!6592910 () Bool)

(assert (=> bm!423039 m!6592910))

(declare-fun m!6592912 () Bool)

(assert (=> b!5619171 m!6592912))

(assert (=> b!5618987 d!1775807))

(declare-fun d!1775809 () Bool)

(declare-fun c!985950 () Bool)

(declare-fun e!3464006 () Bool)

(assert (=> d!1775809 (= c!985950 e!3464006)))

(declare-fun res!2380212 () Bool)

(assert (=> d!1775809 (=> (not res!2380212) (not e!3464006))))

(assert (=> d!1775809 (= res!2380212 (is-Cons!62981 (exprs!5486 lt!2259455)))))

(declare-fun e!3464008 () (Set Context!9972))

(assert (=> d!1775809 (= (derivationStepZipperUp!870 lt!2259455 (h!69431 s!2326)) e!3464008)))

(declare-fun b!5619172 () Bool)

(assert (=> b!5619172 (= e!3464006 (nullable!5634 (h!69429 (exprs!5486 lt!2259455))))))

(declare-fun b!5619173 () Bool)

(declare-fun e!3464007 () (Set Context!9972))

(declare-fun call!423045 () (Set Context!9972))

(assert (=> b!5619173 (= e!3464007 call!423045)))

(declare-fun b!5619174 () Bool)

(assert (=> b!5619174 (= e!3464007 (as set.empty (Set Context!9972)))))

(declare-fun bm!423040 () Bool)

(assert (=> bm!423040 (= call!423045 (derivationStepZipperDown!944 (h!69429 (exprs!5486 lt!2259455)) (Context!9973 (t!376395 (exprs!5486 lt!2259455))) (h!69431 s!2326)))))

(declare-fun b!5619175 () Bool)

(assert (=> b!5619175 (= e!3464008 e!3464007)))

(declare-fun c!985951 () Bool)

(assert (=> b!5619175 (= c!985951 (is-Cons!62981 (exprs!5486 lt!2259455)))))

(declare-fun b!5619176 () Bool)

(assert (=> b!5619176 (= e!3464008 (set.union call!423045 (derivationStepZipperUp!870 (Context!9973 (t!376395 (exprs!5486 lt!2259455))) (h!69431 s!2326))))))

(assert (= (and d!1775809 res!2380212) b!5619172))

(assert (= (and d!1775809 c!985950) b!5619176))

(assert (= (and d!1775809 (not c!985950)) b!5619175))

(assert (= (and b!5619175 c!985951) b!5619173))

(assert (= (and b!5619175 (not c!985951)) b!5619174))

(assert (= (or b!5619176 b!5619173) bm!423040))

(declare-fun m!6592914 () Bool)

(assert (=> b!5619172 m!6592914))

(declare-fun m!6592916 () Bool)

(assert (=> bm!423040 m!6592916))

(declare-fun m!6592918 () Bool)

(assert (=> b!5619176 m!6592918))

(assert (=> b!5618987 d!1775809))

(declare-fun d!1775811 () Bool)

(declare-fun c!985954 () Bool)

(declare-fun isEmpty!34812 (List!63107) Bool)

(assert (=> d!1775811 (= c!985954 (isEmpty!34812 s!2326))))

(declare-fun e!3464011 () Bool)

(assert (=> d!1775811 (= (matchZipper!1740 z!1189 s!2326) e!3464011)))

(declare-fun b!5619181 () Bool)

(declare-fun nullableZipper!1589 ((Set Context!9972)) Bool)

(assert (=> b!5619181 (= e!3464011 (nullableZipper!1589 z!1189))))

(declare-fun b!5619182 () Bool)

(declare-fun derivationStepZipper!1693 ((Set Context!9972) C!31474) (Set Context!9972))

(declare-fun head!11957 (List!63107) C!31474)

(declare-fun tail!11052 (List!63107) List!63107)

(assert (=> b!5619182 (= e!3464011 (matchZipper!1740 (derivationStepZipper!1693 z!1189 (head!11957 s!2326)) (tail!11052 s!2326)))))

(assert (= (and d!1775811 c!985954) b!5619181))

(assert (= (and d!1775811 (not c!985954)) b!5619182))

(declare-fun m!6592920 () Bool)

(assert (=> d!1775811 m!6592920))

(declare-fun m!6592922 () Bool)

(assert (=> b!5619181 m!6592922))

(declare-fun m!6592924 () Bool)

(assert (=> b!5619182 m!6592924))

(assert (=> b!5619182 m!6592924))

(declare-fun m!6592926 () Bool)

(assert (=> b!5619182 m!6592926))

(declare-fun m!6592928 () Bool)

(assert (=> b!5619182 m!6592928))

(assert (=> b!5619182 m!6592926))

(assert (=> b!5619182 m!6592928))

(declare-fun m!6592930 () Bool)

(assert (=> b!5619182 m!6592930))

(assert (=> b!5618987 d!1775811))

(declare-fun d!1775813 () Bool)

(declare-fun choose!42538 ((Set Context!9972) Int) (Set Context!9972))

(assert (=> d!1775813 (= (flatMap!1215 lt!2259441 lambda!301615) (choose!42538 lt!2259441 lambda!301615))))

(declare-fun bs!1301328 () Bool)

(assert (= bs!1301328 d!1775813))

(declare-fun m!6592932 () Bool)

(assert (=> bs!1301328 m!6592932))

(assert (=> b!5618987 d!1775813))

(declare-fun d!1775815 () Bool)

(declare-fun dynLambda!24633 (Int Context!9972) (Set Context!9972))

(assert (=> d!1775815 (= (flatMap!1215 lt!2259437 lambda!301615) (dynLambda!24633 lambda!301615 lt!2259455))))

(declare-fun lt!2259617 () Unit!155908)

(declare-fun choose!42539 ((Set Context!9972) Context!9972 Int) Unit!155908)

(assert (=> d!1775815 (= lt!2259617 (choose!42539 lt!2259437 lt!2259455 lambda!301615))))

(assert (=> d!1775815 (= lt!2259437 (set.insert lt!2259455 (as set.empty (Set Context!9972))))))

(assert (=> d!1775815 (= (lemmaFlatMapOnSingletonSet!747 lt!2259437 lt!2259455 lambda!301615) lt!2259617)))

(declare-fun b_lambda!212667 () Bool)

(assert (=> (not b_lambda!212667) (not d!1775815)))

(declare-fun bs!1301329 () Bool)

(assert (= bs!1301329 d!1775815))

(assert (=> bs!1301329 m!6592760))

(declare-fun m!6592934 () Bool)

(assert (=> bs!1301329 m!6592934))

(declare-fun m!6592936 () Bool)

(assert (=> bs!1301329 m!6592936))

(assert (=> bs!1301329 m!6592752))

(assert (=> b!5618987 d!1775815))

(declare-fun d!1775817 () Bool)

(assert (=> d!1775817 (= (flatMap!1215 lt!2259441 lambda!301615) (dynLambda!24633 lambda!301615 lt!2259460))))

(declare-fun lt!2259618 () Unit!155908)

(assert (=> d!1775817 (= lt!2259618 (choose!42539 lt!2259441 lt!2259460 lambda!301615))))

(assert (=> d!1775817 (= lt!2259441 (set.insert lt!2259460 (as set.empty (Set Context!9972))))))

(assert (=> d!1775817 (= (lemmaFlatMapOnSingletonSet!747 lt!2259441 lt!2259460 lambda!301615) lt!2259618)))

(declare-fun b_lambda!212669 () Bool)

(assert (=> (not b_lambda!212669) (not d!1775817)))

(declare-fun bs!1301330 () Bool)

(assert (= bs!1301330 d!1775817))

(assert (=> bs!1301330 m!6592764))

(declare-fun m!6592938 () Bool)

(assert (=> bs!1301330 m!6592938))

(declare-fun m!6592940 () Bool)

(assert (=> bs!1301330 m!6592940))

(assert (=> bs!1301330 m!6592758))

(assert (=> b!5618987 d!1775817))

(declare-fun d!1775819 () Bool)

(assert (=> d!1775819 (= (nullable!5634 (regOne!31717 (regOne!31716 r!7292))) (nullableFct!1735 (regOne!31717 (regOne!31716 r!7292))))))

(declare-fun bs!1301331 () Bool)

(assert (= bs!1301331 d!1775819))

(declare-fun m!6592942 () Bool)

(assert (=> bs!1301331 m!6592942))

(assert (=> b!5618987 d!1775819))

(declare-fun d!1775821 () Bool)

(declare-fun c!985955 () Bool)

(assert (=> d!1775821 (= c!985955 (isEmpty!34812 s!2326))))

(declare-fun e!3464012 () Bool)

(assert (=> d!1775821 (= (matchZipper!1740 lt!2259441 s!2326) e!3464012)))

(declare-fun b!5619183 () Bool)

(assert (=> b!5619183 (= e!3464012 (nullableZipper!1589 lt!2259441))))

(declare-fun b!5619184 () Bool)

(assert (=> b!5619184 (= e!3464012 (matchZipper!1740 (derivationStepZipper!1693 lt!2259441 (head!11957 s!2326)) (tail!11052 s!2326)))))

(assert (= (and d!1775821 c!985955) b!5619183))

(assert (= (and d!1775821 (not c!985955)) b!5619184))

(assert (=> d!1775821 m!6592920))

(declare-fun m!6592944 () Bool)

(assert (=> b!5619183 m!6592944))

(assert (=> b!5619184 m!6592924))

(assert (=> b!5619184 m!6592924))

(declare-fun m!6592946 () Bool)

(assert (=> b!5619184 m!6592946))

(assert (=> b!5619184 m!6592928))

(assert (=> b!5619184 m!6592946))

(assert (=> b!5619184 m!6592928))

(declare-fun m!6592948 () Bool)

(assert (=> b!5619184 m!6592948))

(assert (=> b!5618987 d!1775821))

(declare-fun d!1775823 () Bool)

(assert (=> d!1775823 (= (flatMap!1215 lt!2259437 lambda!301615) (choose!42538 lt!2259437 lambda!301615))))

(declare-fun bs!1301332 () Bool)

(assert (= bs!1301332 d!1775823))

(declare-fun m!6592950 () Bool)

(assert (=> bs!1301332 m!6592950))

(assert (=> b!5618987 d!1775823))

(declare-fun d!1775825 () Bool)

(declare-fun e!3464015 () Bool)

(assert (=> d!1775825 e!3464015))

(declare-fun res!2380215 () Bool)

(assert (=> d!1775825 (=> (not res!2380215) (not e!3464015))))

(declare-fun lt!2259621 () List!63106)

(declare-fun noDuplicate!1570 (List!63106) Bool)

(assert (=> d!1775825 (= res!2380215 (noDuplicate!1570 lt!2259621))))

(declare-fun choose!42540 ((Set Context!9972)) List!63106)

(assert (=> d!1775825 (= lt!2259621 (choose!42540 z!1189))))

(assert (=> d!1775825 (= (toList!9386 z!1189) lt!2259621)))

(declare-fun b!5619187 () Bool)

(declare-fun content!11379 (List!63106) (Set Context!9972))

(assert (=> b!5619187 (= e!3464015 (= (content!11379 lt!2259621) z!1189))))

(assert (= (and d!1775825 res!2380215) b!5619187))

(declare-fun m!6592952 () Bool)

(assert (=> d!1775825 m!6592952))

(declare-fun m!6592954 () Bool)

(assert (=> d!1775825 m!6592954))

(declare-fun m!6592956 () Bool)

(assert (=> b!5619187 m!6592956))

(assert (=> b!5618989 d!1775825))

(declare-fun b!5619207 () Bool)

(declare-fun res!2380228 () Bool)

(declare-fun e!3464028 () Bool)

(assert (=> b!5619207 (=> (not res!2380228) (not e!3464028))))

(declare-fun lt!2259628 () Option!15611)

(declare-fun get!21692 (Option!15611) tuple2!65398)

(assert (=> b!5619207 (= res!2380228 (matchR!7787 (regTwo!31716 r!7292) (_2!36002 (get!21692 lt!2259628))))))

(declare-fun b!5619208 () Bool)

(declare-fun e!3464029 () Option!15611)

(assert (=> b!5619208 (= e!3464029 (Some!15610 (tuple2!65399 Nil!62983 s!2326)))))

(declare-fun b!5619209 () Bool)

(declare-fun e!3464026 () Bool)

(assert (=> b!5619209 (= e!3464026 (matchR!7787 (regTwo!31716 r!7292) s!2326))))

(declare-fun b!5619210 () Bool)

(declare-fun e!3464030 () Option!15611)

(assert (=> b!5619210 (= e!3464029 e!3464030)))

(declare-fun c!985960 () Bool)

(assert (=> b!5619210 (= c!985960 (is-Nil!62983 s!2326))))

(declare-fun b!5619206 () Bool)

(declare-fun lt!2259630 () Unit!155908)

(declare-fun lt!2259629 () Unit!155908)

(assert (=> b!5619206 (= lt!2259630 lt!2259629)))

(declare-fun ++!13823 (List!63107 List!63107) List!63107)

(assert (=> b!5619206 (= (++!13823 (++!13823 Nil!62983 (Cons!62983 (h!69431 s!2326) Nil!62983)) (t!376397 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1992 (List!63107 C!31474 List!63107 List!63107) Unit!155908)

(assert (=> b!5619206 (= lt!2259629 (lemmaMoveElementToOtherListKeepsConcatEq!1992 Nil!62983 (h!69431 s!2326) (t!376397 s!2326) s!2326))))

(assert (=> b!5619206 (= e!3464030 (findConcatSeparation!2025 (regOne!31716 r!7292) (regTwo!31716 r!7292) (++!13823 Nil!62983 (Cons!62983 (h!69431 s!2326) Nil!62983)) (t!376397 s!2326) s!2326))))

(declare-fun d!1775827 () Bool)

(declare-fun e!3464027 () Bool)

(assert (=> d!1775827 e!3464027))

(declare-fun res!2380229 () Bool)

(assert (=> d!1775827 (=> res!2380229 e!3464027)))

(assert (=> d!1775827 (= res!2380229 e!3464028)))

(declare-fun res!2380230 () Bool)

(assert (=> d!1775827 (=> (not res!2380230) (not e!3464028))))

(assert (=> d!1775827 (= res!2380230 (isDefined!12314 lt!2259628))))

(assert (=> d!1775827 (= lt!2259628 e!3464029)))

(declare-fun c!985961 () Bool)

(assert (=> d!1775827 (= c!985961 e!3464026)))

(declare-fun res!2380227 () Bool)

(assert (=> d!1775827 (=> (not res!2380227) (not e!3464026))))

(assert (=> d!1775827 (= res!2380227 (matchR!7787 (regOne!31716 r!7292) Nil!62983))))

(assert (=> d!1775827 (validRegex!7338 (regOne!31716 r!7292))))

(assert (=> d!1775827 (= (findConcatSeparation!2025 (regOne!31716 r!7292) (regTwo!31716 r!7292) Nil!62983 s!2326 s!2326) lt!2259628)))

(declare-fun b!5619211 () Bool)

(assert (=> b!5619211 (= e!3464030 None!15610)))

(declare-fun b!5619212 () Bool)

(declare-fun res!2380226 () Bool)

(assert (=> b!5619212 (=> (not res!2380226) (not e!3464028))))

(assert (=> b!5619212 (= res!2380226 (matchR!7787 (regOne!31716 r!7292) (_1!36002 (get!21692 lt!2259628))))))

(declare-fun b!5619213 () Bool)

(assert (=> b!5619213 (= e!3464028 (= (++!13823 (_1!36002 (get!21692 lt!2259628)) (_2!36002 (get!21692 lt!2259628))) s!2326))))

(declare-fun b!5619214 () Bool)

(assert (=> b!5619214 (= e!3464027 (not (isDefined!12314 lt!2259628)))))

(assert (= (and d!1775827 res!2380227) b!5619209))

(assert (= (and d!1775827 c!985961) b!5619208))

(assert (= (and d!1775827 (not c!985961)) b!5619210))

(assert (= (and b!5619210 c!985960) b!5619211))

(assert (= (and b!5619210 (not c!985960)) b!5619206))

(assert (= (and d!1775827 res!2380230) b!5619212))

(assert (= (and b!5619212 res!2380226) b!5619207))

(assert (= (and b!5619207 res!2380228) b!5619213))

(assert (= (and d!1775827 (not res!2380229)) b!5619214))

(declare-fun m!6592958 () Bool)

(assert (=> b!5619207 m!6592958))

(declare-fun m!6592960 () Bool)

(assert (=> b!5619207 m!6592960))

(declare-fun m!6592962 () Bool)

(assert (=> b!5619209 m!6592962))

(declare-fun m!6592964 () Bool)

(assert (=> b!5619206 m!6592964))

(assert (=> b!5619206 m!6592964))

(declare-fun m!6592966 () Bool)

(assert (=> b!5619206 m!6592966))

(declare-fun m!6592968 () Bool)

(assert (=> b!5619206 m!6592968))

(assert (=> b!5619206 m!6592964))

(declare-fun m!6592970 () Bool)

(assert (=> b!5619206 m!6592970))

(assert (=> b!5619213 m!6592958))

(declare-fun m!6592972 () Bool)

(assert (=> b!5619213 m!6592972))

(assert (=> b!5619212 m!6592958))

(declare-fun m!6592974 () Bool)

(assert (=> b!5619212 m!6592974))

(declare-fun m!6592976 () Bool)

(assert (=> d!1775827 m!6592976))

(declare-fun m!6592978 () Bool)

(assert (=> d!1775827 m!6592978))

(declare-fun m!6592980 () Bool)

(assert (=> d!1775827 m!6592980))

(assert (=> b!5619214 m!6592976))

(assert (=> b!5619011 d!1775827))

(declare-fun d!1775829 () Bool)

(declare-fun choose!42541 (Int) Bool)

(assert (=> d!1775829 (= (Exists!2702 lambda!301614) (choose!42541 lambda!301614))))

(declare-fun bs!1301333 () Bool)

(assert (= bs!1301333 d!1775829))

(declare-fun m!6592982 () Bool)

(assert (=> bs!1301333 m!6592982))

(assert (=> b!5619011 d!1775829))

(declare-fun d!1775831 () Bool)

(assert (=> d!1775831 (= (Exists!2702 lambda!301613) (choose!42541 lambda!301613))))

(declare-fun bs!1301334 () Bool)

(assert (= bs!1301334 d!1775831))

(declare-fun m!6592984 () Bool)

(assert (=> bs!1301334 m!6592984))

(assert (=> b!5619011 d!1775831))

(declare-fun bs!1301335 () Bool)

(declare-fun d!1775833 () Bool)

(assert (= bs!1301335 (and d!1775833 b!5619011)))

(declare-fun lambda!301636 () Int)

(assert (=> bs!1301335 (= lambda!301636 lambda!301613)))

(assert (=> bs!1301335 (not (= lambda!301636 lambda!301614))))

(assert (=> d!1775833 true))

(assert (=> d!1775833 true))

(assert (=> d!1775833 true))

(assert (=> d!1775833 (= (isDefined!12314 (findConcatSeparation!2025 (regOne!31716 r!7292) (regTwo!31716 r!7292) Nil!62983 s!2326 s!2326)) (Exists!2702 lambda!301636))))

(declare-fun lt!2259633 () Unit!155908)

(declare-fun choose!42542 (Regex!15602 Regex!15602 List!63107) Unit!155908)

(assert (=> d!1775833 (= lt!2259633 (choose!42542 (regOne!31716 r!7292) (regTwo!31716 r!7292) s!2326))))

(assert (=> d!1775833 (validRegex!7338 (regOne!31716 r!7292))))

(assert (=> d!1775833 (= (lemmaFindConcatSeparationEquivalentToExists!1789 (regOne!31716 r!7292) (regTwo!31716 r!7292) s!2326) lt!2259633)))

(declare-fun bs!1301336 () Bool)

(assert (= bs!1301336 d!1775833))

(assert (=> bs!1301336 m!6592692))

(assert (=> bs!1301336 m!6592694))

(declare-fun m!6592986 () Bool)

(assert (=> bs!1301336 m!6592986))

(assert (=> bs!1301336 m!6592692))

(assert (=> bs!1301336 m!6592980))

(declare-fun m!6592988 () Bool)

(assert (=> bs!1301336 m!6592988))

(assert (=> b!5619011 d!1775833))

(declare-fun bs!1301337 () Bool)

(declare-fun d!1775835 () Bool)

(assert (= bs!1301337 (and d!1775835 b!5619011)))

(declare-fun lambda!301641 () Int)

(assert (=> bs!1301337 (= lambda!301641 lambda!301613)))

(assert (=> bs!1301337 (not (= lambda!301641 lambda!301614))))

(declare-fun bs!1301338 () Bool)

(assert (= bs!1301338 (and d!1775835 d!1775833)))

(assert (=> bs!1301338 (= lambda!301641 lambda!301636)))

(assert (=> d!1775835 true))

(assert (=> d!1775835 true))

(assert (=> d!1775835 true))

(declare-fun lambda!301642 () Int)

(assert (=> bs!1301337 (not (= lambda!301642 lambda!301613))))

(assert (=> bs!1301337 (= lambda!301642 lambda!301614)))

(assert (=> bs!1301338 (not (= lambda!301642 lambda!301636))))

(declare-fun bs!1301339 () Bool)

(assert (= bs!1301339 d!1775835))

(assert (=> bs!1301339 (not (= lambda!301642 lambda!301641))))

(assert (=> d!1775835 true))

(assert (=> d!1775835 true))

(assert (=> d!1775835 true))

(assert (=> d!1775835 (= (Exists!2702 lambda!301641) (Exists!2702 lambda!301642))))

(declare-fun lt!2259636 () Unit!155908)

(declare-fun choose!42543 (Regex!15602 Regex!15602 List!63107) Unit!155908)

(assert (=> d!1775835 (= lt!2259636 (choose!42543 (regOne!31716 r!7292) (regTwo!31716 r!7292) s!2326))))

(assert (=> d!1775835 (validRegex!7338 (regOne!31716 r!7292))))

(assert (=> d!1775835 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1331 (regOne!31716 r!7292) (regTwo!31716 r!7292) s!2326) lt!2259636)))

(declare-fun m!6592990 () Bool)

(assert (=> bs!1301339 m!6592990))

(declare-fun m!6592992 () Bool)

(assert (=> bs!1301339 m!6592992))

(declare-fun m!6592994 () Bool)

(assert (=> bs!1301339 m!6592994))

(assert (=> bs!1301339 m!6592980))

(assert (=> b!5619011 d!1775835))

(declare-fun d!1775837 () Bool)

(declare-fun isEmpty!34813 (Option!15611) Bool)

(assert (=> d!1775837 (= (isDefined!12314 (findConcatSeparation!2025 (regOne!31716 r!7292) (regTwo!31716 r!7292) Nil!62983 s!2326 s!2326)) (not (isEmpty!34813 (findConcatSeparation!2025 (regOne!31716 r!7292) (regTwo!31716 r!7292) Nil!62983 s!2326 s!2326))))))

(declare-fun bs!1301340 () Bool)

(assert (= bs!1301340 d!1775837))

(assert (=> bs!1301340 m!6592692))

(declare-fun m!6592996 () Bool)

(assert (=> bs!1301340 m!6592996))

(assert (=> b!5619011 d!1775837))

(declare-fun b!5619249 () Bool)

(declare-fun e!3464050 () (Set Context!9972))

(assert (=> b!5619249 (= e!3464050 (as set.empty (Set Context!9972)))))

(declare-fun b!5619250 () Bool)

(declare-fun e!3464053 () (Set Context!9972))

(declare-fun call!423059 () (Set Context!9972))

(assert (=> b!5619250 (= e!3464053 call!423059)))

(declare-fun call!423062 () List!63105)

(declare-fun bm!423053 () Bool)

(declare-fun c!985973 () Bool)

(declare-fun c!985974 () Bool)

(declare-fun $colon$colon!1657 (List!63105 Regex!15602) List!63105)

(assert (=> bm!423053 (= call!423062 ($colon$colon!1657 (exprs!5486 lt!2259472) (ite (or c!985973 c!985974) (regTwo!31716 (regTwo!31717 (regOne!31716 r!7292))) (regTwo!31717 (regOne!31716 r!7292)))))))

(declare-fun call!423063 () List!63105)

(declare-fun c!985972 () Bool)

(declare-fun bm!423054 () Bool)

(declare-fun call!423060 () (Set Context!9972))

(assert (=> bm!423054 (= call!423060 (derivationStepZipperDown!944 (ite c!985972 (regTwo!31717 (regTwo!31717 (regOne!31716 r!7292))) (ite c!985973 (regTwo!31716 (regTwo!31717 (regOne!31716 r!7292))) (ite c!985974 (regOne!31716 (regTwo!31717 (regOne!31716 r!7292))) (reg!15931 (regTwo!31717 (regOne!31716 r!7292)))))) (ite (or c!985972 c!985973) lt!2259472 (Context!9973 call!423063)) (h!69431 s!2326)))))

(declare-fun b!5619251 () Bool)

(declare-fun e!3464051 () Bool)

(assert (=> b!5619251 (= e!3464051 (nullable!5634 (regOne!31716 (regTwo!31717 (regOne!31716 r!7292)))))))

(declare-fun call!423058 () (Set Context!9972))

(declare-fun bm!423055 () Bool)

(assert (=> bm!423055 (= call!423058 (derivationStepZipperDown!944 (ite c!985972 (regOne!31717 (regTwo!31717 (regOne!31716 r!7292))) (regOne!31716 (regTwo!31717 (regOne!31716 r!7292)))) (ite c!985972 lt!2259472 (Context!9973 call!423062)) (h!69431 s!2326)))))

(declare-fun b!5619252 () Bool)

(declare-fun e!3464054 () (Set Context!9972))

(declare-fun call!423061 () (Set Context!9972))

(assert (=> b!5619252 (= e!3464054 (set.union call!423058 call!423061))))

(declare-fun b!5619254 () Bool)

(assert (=> b!5619254 (= e!3464054 e!3464053)))

(assert (=> b!5619254 (= c!985974 (is-Concat!24447 (regTwo!31717 (regOne!31716 r!7292))))))

(declare-fun b!5619255 () Bool)

(declare-fun e!3464049 () (Set Context!9972))

(assert (=> b!5619255 (= e!3464049 (set.union call!423058 call!423060))))

(declare-fun b!5619256 () Bool)

(declare-fun c!985975 () Bool)

(assert (=> b!5619256 (= c!985975 (is-Star!15602 (regTwo!31717 (regOne!31716 r!7292))))))

(assert (=> b!5619256 (= e!3464053 e!3464050)))

(declare-fun bm!423056 () Bool)

(assert (=> bm!423056 (= call!423059 call!423061)))

(declare-fun bm!423057 () Bool)

(assert (=> bm!423057 (= call!423061 call!423060)))

(declare-fun d!1775839 () Bool)

(declare-fun c!985976 () Bool)

(assert (=> d!1775839 (= c!985976 (and (is-ElementMatch!15602 (regTwo!31717 (regOne!31716 r!7292))) (= (c!985926 (regTwo!31717 (regOne!31716 r!7292))) (h!69431 s!2326))))))

(declare-fun e!3464052 () (Set Context!9972))

(assert (=> d!1775839 (= (derivationStepZipperDown!944 (regTwo!31717 (regOne!31716 r!7292)) lt!2259472 (h!69431 s!2326)) e!3464052)))

(declare-fun b!5619253 () Bool)

(assert (=> b!5619253 (= c!985973 e!3464051)))

(declare-fun res!2380245 () Bool)

(assert (=> b!5619253 (=> (not res!2380245) (not e!3464051))))

(assert (=> b!5619253 (= res!2380245 (is-Concat!24447 (regTwo!31717 (regOne!31716 r!7292))))))

(assert (=> b!5619253 (= e!3464049 e!3464054)))

(declare-fun b!5619257 () Bool)

(assert (=> b!5619257 (= e!3464052 e!3464049)))

(assert (=> b!5619257 (= c!985972 (is-Union!15602 (regTwo!31717 (regOne!31716 r!7292))))))

(declare-fun b!5619258 () Bool)

(assert (=> b!5619258 (= e!3464052 (set.insert lt!2259472 (as set.empty (Set Context!9972))))))

(declare-fun b!5619259 () Bool)

(assert (=> b!5619259 (= e!3464050 call!423059)))

(declare-fun bm!423058 () Bool)

(assert (=> bm!423058 (= call!423063 call!423062)))

(assert (= (and d!1775839 c!985976) b!5619258))

(assert (= (and d!1775839 (not c!985976)) b!5619257))

(assert (= (and b!5619257 c!985972) b!5619255))

(assert (= (and b!5619257 (not c!985972)) b!5619253))

(assert (= (and b!5619253 res!2380245) b!5619251))

(assert (= (and b!5619253 c!985973) b!5619252))

(assert (= (and b!5619253 (not c!985973)) b!5619254))

(assert (= (and b!5619254 c!985974) b!5619250))

(assert (= (and b!5619254 (not c!985974)) b!5619256))

(assert (= (and b!5619256 c!985975) b!5619259))

(assert (= (and b!5619256 (not c!985975)) b!5619249))

(assert (= (or b!5619250 b!5619259) bm!423058))

(assert (= (or b!5619250 b!5619259) bm!423056))

(assert (= (or b!5619252 bm!423058) bm!423053))

(assert (= (or b!5619252 bm!423056) bm!423057))

(assert (= (or b!5619255 bm!423057) bm!423054))

(assert (= (or b!5619255 b!5619252) bm!423055))

(declare-fun m!6592998 () Bool)

(assert (=> b!5619251 m!6592998))

(declare-fun m!6593000 () Bool)

(assert (=> bm!423053 m!6593000))

(declare-fun m!6593002 () Bool)

(assert (=> bm!423055 m!6593002))

(declare-fun m!6593004 () Bool)

(assert (=> b!5619258 m!6593004))

(declare-fun m!6593006 () Bool)

(assert (=> bm!423054 m!6593006))

(assert (=> b!5618990 d!1775839))

(declare-fun b!5619260 () Bool)

(declare-fun e!3464056 () (Set Context!9972))

(assert (=> b!5619260 (= e!3464056 (as set.empty (Set Context!9972)))))

(declare-fun b!5619261 () Bool)

(declare-fun e!3464059 () (Set Context!9972))

(declare-fun call!423065 () (Set Context!9972))

(assert (=> b!5619261 (= e!3464059 call!423065)))

(declare-fun c!985978 () Bool)

(declare-fun bm!423059 () Bool)

(declare-fun call!423068 () List!63105)

(declare-fun c!985979 () Bool)

(assert (=> bm!423059 (= call!423068 ($colon$colon!1657 (exprs!5486 lt!2259472) (ite (or c!985978 c!985979) (regTwo!31716 (regOne!31717 (regOne!31716 r!7292))) (regOne!31717 (regOne!31716 r!7292)))))))

(declare-fun call!423066 () (Set Context!9972))

(declare-fun bm!423060 () Bool)

(declare-fun call!423069 () List!63105)

(declare-fun c!985977 () Bool)

(assert (=> bm!423060 (= call!423066 (derivationStepZipperDown!944 (ite c!985977 (regTwo!31717 (regOne!31717 (regOne!31716 r!7292))) (ite c!985978 (regTwo!31716 (regOne!31717 (regOne!31716 r!7292))) (ite c!985979 (regOne!31716 (regOne!31717 (regOne!31716 r!7292))) (reg!15931 (regOne!31717 (regOne!31716 r!7292)))))) (ite (or c!985977 c!985978) lt!2259472 (Context!9973 call!423069)) (h!69431 s!2326)))))

(declare-fun b!5619262 () Bool)

(declare-fun e!3464057 () Bool)

(assert (=> b!5619262 (= e!3464057 (nullable!5634 (regOne!31716 (regOne!31717 (regOne!31716 r!7292)))))))

(declare-fun call!423064 () (Set Context!9972))

(declare-fun bm!423061 () Bool)

(assert (=> bm!423061 (= call!423064 (derivationStepZipperDown!944 (ite c!985977 (regOne!31717 (regOne!31717 (regOne!31716 r!7292))) (regOne!31716 (regOne!31717 (regOne!31716 r!7292)))) (ite c!985977 lt!2259472 (Context!9973 call!423068)) (h!69431 s!2326)))))

(declare-fun b!5619263 () Bool)

(declare-fun e!3464060 () (Set Context!9972))

(declare-fun call!423067 () (Set Context!9972))

(assert (=> b!5619263 (= e!3464060 (set.union call!423064 call!423067))))

(declare-fun b!5619265 () Bool)

(assert (=> b!5619265 (= e!3464060 e!3464059)))

(assert (=> b!5619265 (= c!985979 (is-Concat!24447 (regOne!31717 (regOne!31716 r!7292))))))

(declare-fun b!5619266 () Bool)

(declare-fun e!3464055 () (Set Context!9972))

(assert (=> b!5619266 (= e!3464055 (set.union call!423064 call!423066))))

(declare-fun b!5619267 () Bool)

(declare-fun c!985980 () Bool)

(assert (=> b!5619267 (= c!985980 (is-Star!15602 (regOne!31717 (regOne!31716 r!7292))))))

(assert (=> b!5619267 (= e!3464059 e!3464056)))

(declare-fun bm!423062 () Bool)

(assert (=> bm!423062 (= call!423065 call!423067)))

(declare-fun bm!423063 () Bool)

(assert (=> bm!423063 (= call!423067 call!423066)))

(declare-fun d!1775841 () Bool)

(declare-fun c!985981 () Bool)

(assert (=> d!1775841 (= c!985981 (and (is-ElementMatch!15602 (regOne!31717 (regOne!31716 r!7292))) (= (c!985926 (regOne!31717 (regOne!31716 r!7292))) (h!69431 s!2326))))))

(declare-fun e!3464058 () (Set Context!9972))

(assert (=> d!1775841 (= (derivationStepZipperDown!944 (regOne!31717 (regOne!31716 r!7292)) lt!2259472 (h!69431 s!2326)) e!3464058)))

(declare-fun b!5619264 () Bool)

(assert (=> b!5619264 (= c!985978 e!3464057)))

(declare-fun res!2380246 () Bool)

(assert (=> b!5619264 (=> (not res!2380246) (not e!3464057))))

(assert (=> b!5619264 (= res!2380246 (is-Concat!24447 (regOne!31717 (regOne!31716 r!7292))))))

(assert (=> b!5619264 (= e!3464055 e!3464060)))

(declare-fun b!5619268 () Bool)

(assert (=> b!5619268 (= e!3464058 e!3464055)))

(assert (=> b!5619268 (= c!985977 (is-Union!15602 (regOne!31717 (regOne!31716 r!7292))))))

(declare-fun b!5619269 () Bool)

(assert (=> b!5619269 (= e!3464058 (set.insert lt!2259472 (as set.empty (Set Context!9972))))))

(declare-fun b!5619270 () Bool)

(assert (=> b!5619270 (= e!3464056 call!423065)))

(declare-fun bm!423064 () Bool)

(assert (=> bm!423064 (= call!423069 call!423068)))

(assert (= (and d!1775841 c!985981) b!5619269))

(assert (= (and d!1775841 (not c!985981)) b!5619268))

(assert (= (and b!5619268 c!985977) b!5619266))

(assert (= (and b!5619268 (not c!985977)) b!5619264))

(assert (= (and b!5619264 res!2380246) b!5619262))

(assert (= (and b!5619264 c!985978) b!5619263))

(assert (= (and b!5619264 (not c!985978)) b!5619265))

(assert (= (and b!5619265 c!985979) b!5619261))

(assert (= (and b!5619265 (not c!985979)) b!5619267))

(assert (= (and b!5619267 c!985980) b!5619270))

(assert (= (and b!5619267 (not c!985980)) b!5619260))

(assert (= (or b!5619261 b!5619270) bm!423064))

(assert (= (or b!5619261 b!5619270) bm!423062))

(assert (= (or b!5619263 bm!423064) bm!423059))

(assert (= (or b!5619263 bm!423062) bm!423063))

(assert (= (or b!5619266 bm!423063) bm!423060))

(assert (= (or b!5619266 b!5619263) bm!423061))

(declare-fun m!6593008 () Bool)

(assert (=> b!5619262 m!6593008))

(declare-fun m!6593010 () Bool)

(assert (=> bm!423059 m!6593010))

(declare-fun m!6593012 () Bool)

(assert (=> bm!423061 m!6593012))

(assert (=> b!5619269 m!6593004))

(declare-fun m!6593014 () Bool)

(assert (=> bm!423060 m!6593014))

(assert (=> b!5618990 d!1775841))

(declare-fun d!1775843 () Bool)

(declare-fun e!3464063 () Bool)

(assert (=> d!1775843 (= (matchZipper!1740 (set.union lt!2259447 lt!2259458) (t!376397 s!2326)) e!3464063)))

(declare-fun res!2380249 () Bool)

(assert (=> d!1775843 (=> res!2380249 e!3464063)))

(assert (=> d!1775843 (= res!2380249 (matchZipper!1740 lt!2259447 (t!376397 s!2326)))))

(declare-fun lt!2259639 () Unit!155908)

(declare-fun choose!42544 ((Set Context!9972) (Set Context!9972) List!63107) Unit!155908)

(assert (=> d!1775843 (= lt!2259639 (choose!42544 lt!2259447 lt!2259458 (t!376397 s!2326)))))

(assert (=> d!1775843 (= (lemmaZipperConcatMatchesSameAsBothZippers!627 lt!2259447 lt!2259458 (t!376397 s!2326)) lt!2259639)))

(declare-fun b!5619273 () Bool)

(assert (=> b!5619273 (= e!3464063 (matchZipper!1740 lt!2259458 (t!376397 s!2326)))))

(assert (= (and d!1775843 (not res!2380249)) b!5619273))

(assert (=> d!1775843 m!6592674))

(assert (=> d!1775843 m!6592662))

(declare-fun m!6593016 () Bool)

(assert (=> d!1775843 m!6593016))

(assert (=> b!5619273 m!6592660))

(assert (=> b!5618991 d!1775843))

(declare-fun d!1775845 () Bool)

(declare-fun c!985982 () Bool)

(assert (=> d!1775845 (= c!985982 (isEmpty!34812 (t!376397 s!2326)))))

(declare-fun e!3464064 () Bool)

(assert (=> d!1775845 (= (matchZipper!1740 lt!2259447 (t!376397 s!2326)) e!3464064)))

(declare-fun b!5619274 () Bool)

(assert (=> b!5619274 (= e!3464064 (nullableZipper!1589 lt!2259447))))

(declare-fun b!5619275 () Bool)

(assert (=> b!5619275 (= e!3464064 (matchZipper!1740 (derivationStepZipper!1693 lt!2259447 (head!11957 (t!376397 s!2326))) (tail!11052 (t!376397 s!2326))))))

(assert (= (and d!1775845 c!985982) b!5619274))

(assert (= (and d!1775845 (not c!985982)) b!5619275))

(declare-fun m!6593018 () Bool)

(assert (=> d!1775845 m!6593018))

(declare-fun m!6593020 () Bool)

(assert (=> b!5619274 m!6593020))

(declare-fun m!6593022 () Bool)

(assert (=> b!5619275 m!6593022))

(assert (=> b!5619275 m!6593022))

(declare-fun m!6593024 () Bool)

(assert (=> b!5619275 m!6593024))

(declare-fun m!6593026 () Bool)

(assert (=> b!5619275 m!6593026))

(assert (=> b!5619275 m!6593024))

(assert (=> b!5619275 m!6593026))

(declare-fun m!6593028 () Bool)

(assert (=> b!5619275 m!6593028))

(assert (=> b!5618991 d!1775845))

(declare-fun d!1775847 () Bool)

(declare-fun c!985983 () Bool)

(assert (=> d!1775847 (= c!985983 (isEmpty!34812 (t!376397 s!2326)))))

(declare-fun e!3464065 () Bool)

(assert (=> d!1775847 (= (matchZipper!1740 (set.union lt!2259447 lt!2259458) (t!376397 s!2326)) e!3464065)))

(declare-fun b!5619276 () Bool)

(assert (=> b!5619276 (= e!3464065 (nullableZipper!1589 (set.union lt!2259447 lt!2259458)))))

(declare-fun b!5619277 () Bool)

(assert (=> b!5619277 (= e!3464065 (matchZipper!1740 (derivationStepZipper!1693 (set.union lt!2259447 lt!2259458) (head!11957 (t!376397 s!2326))) (tail!11052 (t!376397 s!2326))))))

(assert (= (and d!1775847 c!985983) b!5619276))

(assert (= (and d!1775847 (not c!985983)) b!5619277))

(assert (=> d!1775847 m!6593018))

(declare-fun m!6593030 () Bool)

(assert (=> b!5619276 m!6593030))

(assert (=> b!5619277 m!6593022))

(assert (=> b!5619277 m!6593022))

(declare-fun m!6593032 () Bool)

(assert (=> b!5619277 m!6593032))

(assert (=> b!5619277 m!6593026))

(assert (=> b!5619277 m!6593032))

(assert (=> b!5619277 m!6593026))

(declare-fun m!6593034 () Bool)

(assert (=> b!5619277 m!6593034))

(assert (=> b!5618991 d!1775847))

(assert (=> b!5619003 d!1775845))

(declare-fun d!1775849 () Bool)

(declare-fun c!985984 () Bool)

(assert (=> d!1775849 (= c!985984 (isEmpty!34812 (t!376397 s!2326)))))

(declare-fun e!3464066 () Bool)

(assert (=> d!1775849 (= (matchZipper!1740 lt!2259435 (t!376397 s!2326)) e!3464066)))

(declare-fun b!5619278 () Bool)

(assert (=> b!5619278 (= e!3464066 (nullableZipper!1589 lt!2259435))))

(declare-fun b!5619279 () Bool)

(assert (=> b!5619279 (= e!3464066 (matchZipper!1740 (derivationStepZipper!1693 lt!2259435 (head!11957 (t!376397 s!2326))) (tail!11052 (t!376397 s!2326))))))

(assert (= (and d!1775849 c!985984) b!5619278))

(assert (= (and d!1775849 (not c!985984)) b!5619279))

(assert (=> d!1775849 m!6593018))

(declare-fun m!6593036 () Bool)

(assert (=> b!5619278 m!6593036))

(assert (=> b!5619279 m!6593022))

(assert (=> b!5619279 m!6593022))

(declare-fun m!6593038 () Bool)

(assert (=> b!5619279 m!6593038))

(assert (=> b!5619279 m!6593026))

(assert (=> b!5619279 m!6593038))

(assert (=> b!5619279 m!6593026))

(declare-fun m!6593040 () Bool)

(assert (=> b!5619279 m!6593040))

(assert (=> b!5619003 d!1775849))

(declare-fun d!1775851 () Bool)

(declare-fun c!985985 () Bool)

(assert (=> d!1775851 (= c!985985 (isEmpty!34812 (t!376397 s!2326)))))

(declare-fun e!3464067 () Bool)

(assert (=> d!1775851 (= (matchZipper!1740 lt!2259438 (t!376397 s!2326)) e!3464067)))

(declare-fun b!5619280 () Bool)

(assert (=> b!5619280 (= e!3464067 (nullableZipper!1589 lt!2259438))))

(declare-fun b!5619281 () Bool)

(assert (=> b!5619281 (= e!3464067 (matchZipper!1740 (derivationStepZipper!1693 lt!2259438 (head!11957 (t!376397 s!2326))) (tail!11052 (t!376397 s!2326))))))

(assert (= (and d!1775851 c!985985) b!5619280))

(assert (= (and d!1775851 (not c!985985)) b!5619281))

(assert (=> d!1775851 m!6593018))

(declare-fun m!6593042 () Bool)

(assert (=> b!5619280 m!6593042))

(assert (=> b!5619281 m!6593022))

(assert (=> b!5619281 m!6593022))

(declare-fun m!6593044 () Bool)

(assert (=> b!5619281 m!6593044))

(assert (=> b!5619281 m!6593026))

(assert (=> b!5619281 m!6593044))

(assert (=> b!5619281 m!6593026))

(declare-fun m!6593046 () Bool)

(assert (=> b!5619281 m!6593046))

(assert (=> b!5619003 d!1775851))

(declare-fun d!1775853 () Bool)

(declare-fun e!3464068 () Bool)

(assert (=> d!1775853 (= (matchZipper!1740 (set.union lt!2259438 lt!2259429) (t!376397 s!2326)) e!3464068)))

(declare-fun res!2380250 () Bool)

(assert (=> d!1775853 (=> res!2380250 e!3464068)))

(assert (=> d!1775853 (= res!2380250 (matchZipper!1740 lt!2259438 (t!376397 s!2326)))))

(declare-fun lt!2259640 () Unit!155908)

(assert (=> d!1775853 (= lt!2259640 (choose!42544 lt!2259438 lt!2259429 (t!376397 s!2326)))))

(assert (=> d!1775853 (= (lemmaZipperConcatMatchesSameAsBothZippers!627 lt!2259438 lt!2259429 (t!376397 s!2326)) lt!2259640)))

(declare-fun b!5619282 () Bool)

(assert (=> b!5619282 (= e!3464068 (matchZipper!1740 lt!2259429 (t!376397 s!2326)))))

(assert (= (and d!1775853 (not res!2380250)) b!5619282))

(declare-fun m!6593048 () Bool)

(assert (=> d!1775853 m!6593048))

(assert (=> d!1775853 m!6592666))

(declare-fun m!6593050 () Bool)

(assert (=> d!1775853 m!6593050))

(assert (=> b!5619282 m!6592652))

(assert (=> b!5619003 d!1775853))

(declare-fun bs!1301341 () Bool)

(declare-fun d!1775855 () Bool)

(assert (= bs!1301341 (and d!1775855 d!1775801)))

(declare-fun lambda!301643 () Int)

(assert (=> bs!1301341 (= lambda!301643 lambda!301633)))

(assert (=> d!1775855 (= (inv!82253 setElem!37481) (forall!14761 (exprs!5486 setElem!37481) lambda!301643))))

(declare-fun bs!1301342 () Bool)

(assert (= bs!1301342 d!1775855))

(declare-fun m!6593052 () Bool)

(assert (=> bs!1301342 m!6593052))

(assert (=> setNonEmpty!37481 d!1775855))

(declare-fun e!3464069 () Bool)

(declare-fun d!1775857 () Bool)

(assert (=> d!1775857 (= (matchZipper!1740 (set.union lt!2259429 lt!2259458) (t!376397 s!2326)) e!3464069)))

(declare-fun res!2380251 () Bool)

(assert (=> d!1775857 (=> res!2380251 e!3464069)))

(assert (=> d!1775857 (= res!2380251 (matchZipper!1740 lt!2259429 (t!376397 s!2326)))))

(declare-fun lt!2259641 () Unit!155908)

(assert (=> d!1775857 (= lt!2259641 (choose!42544 lt!2259429 lt!2259458 (t!376397 s!2326)))))

(assert (=> d!1775857 (= (lemmaZipperConcatMatchesSameAsBothZippers!627 lt!2259429 lt!2259458 (t!376397 s!2326)) lt!2259641)))

(declare-fun b!5619283 () Bool)

(assert (=> b!5619283 (= e!3464069 (matchZipper!1740 lt!2259458 (t!376397 s!2326)))))

(assert (= (and d!1775857 (not res!2380251)) b!5619283))

(assert (=> d!1775857 m!6592706))

(assert (=> d!1775857 m!6592652))

(declare-fun m!6593054 () Bool)

(assert (=> d!1775857 m!6593054))

(assert (=> b!5619283 m!6592660))

(assert (=> b!5618983 d!1775857))

(declare-fun d!1775859 () Bool)

(declare-fun c!985986 () Bool)

(assert (=> d!1775859 (= c!985986 (isEmpty!34812 (t!376397 s!2326)))))

(declare-fun e!3464070 () Bool)

(assert (=> d!1775859 (= (matchZipper!1740 lt!2259429 (t!376397 s!2326)) e!3464070)))

(declare-fun b!5619284 () Bool)

(assert (=> b!5619284 (= e!3464070 (nullableZipper!1589 lt!2259429))))

(declare-fun b!5619285 () Bool)

(assert (=> b!5619285 (= e!3464070 (matchZipper!1740 (derivationStepZipper!1693 lt!2259429 (head!11957 (t!376397 s!2326))) (tail!11052 (t!376397 s!2326))))))

(assert (= (and d!1775859 c!985986) b!5619284))

(assert (= (and d!1775859 (not c!985986)) b!5619285))

(assert (=> d!1775859 m!6593018))

(declare-fun m!6593056 () Bool)

(assert (=> b!5619284 m!6593056))

(assert (=> b!5619285 m!6593022))

(assert (=> b!5619285 m!6593022))

(declare-fun m!6593058 () Bool)

(assert (=> b!5619285 m!6593058))

(assert (=> b!5619285 m!6593026))

(assert (=> b!5619285 m!6593058))

(assert (=> b!5619285 m!6593026))

(declare-fun m!6593060 () Bool)

(assert (=> b!5619285 m!6593060))

(assert (=> b!5618983 d!1775859))

(declare-fun d!1775861 () Bool)

(declare-fun c!985987 () Bool)

(assert (=> d!1775861 (= c!985987 (isEmpty!34812 (t!376397 s!2326)))))

(declare-fun e!3464071 () Bool)

(assert (=> d!1775861 (= (matchZipper!1740 (set.union lt!2259429 lt!2259458) (t!376397 s!2326)) e!3464071)))

(declare-fun b!5619286 () Bool)

(assert (=> b!5619286 (= e!3464071 (nullableZipper!1589 (set.union lt!2259429 lt!2259458)))))

(declare-fun b!5619287 () Bool)

(assert (=> b!5619287 (= e!3464071 (matchZipper!1740 (derivationStepZipper!1693 (set.union lt!2259429 lt!2259458) (head!11957 (t!376397 s!2326))) (tail!11052 (t!376397 s!2326))))))

(assert (= (and d!1775861 c!985987) b!5619286))

(assert (= (and d!1775861 (not c!985987)) b!5619287))

(assert (=> d!1775861 m!6593018))

(declare-fun m!6593062 () Bool)

(assert (=> b!5619286 m!6593062))

(assert (=> b!5619287 m!6593022))

(assert (=> b!5619287 m!6593022))

(declare-fun m!6593064 () Bool)

(assert (=> b!5619287 m!6593064))

(assert (=> b!5619287 m!6593026))

(assert (=> b!5619287 m!6593064))

(assert (=> b!5619287 m!6593026))

(declare-fun m!6593066 () Bool)

(assert (=> b!5619287 m!6593066))

(assert (=> b!5618983 d!1775861))

(declare-fun d!1775863 () Bool)

(declare-fun c!985988 () Bool)

(assert (=> d!1775863 (= c!985988 (isEmpty!34812 (t!376397 s!2326)))))

(declare-fun e!3464072 () Bool)

(assert (=> d!1775863 (= (matchZipper!1740 lt!2259458 (t!376397 s!2326)) e!3464072)))

(declare-fun b!5619288 () Bool)

(assert (=> b!5619288 (= e!3464072 (nullableZipper!1589 lt!2259458))))

(declare-fun b!5619289 () Bool)

(assert (=> b!5619289 (= e!3464072 (matchZipper!1740 (derivationStepZipper!1693 lt!2259458 (head!11957 (t!376397 s!2326))) (tail!11052 (t!376397 s!2326))))))

(assert (= (and d!1775863 c!985988) b!5619288))

(assert (= (and d!1775863 (not c!985988)) b!5619289))

(assert (=> d!1775863 m!6593018))

(declare-fun m!6593068 () Bool)

(assert (=> b!5619288 m!6593068))

(assert (=> b!5619289 m!6593022))

(assert (=> b!5619289 m!6593022))

(declare-fun m!6593070 () Bool)

(assert (=> b!5619289 m!6593070))

(assert (=> b!5619289 m!6593026))

(assert (=> b!5619289 m!6593070))

(assert (=> b!5619289 m!6593026))

(declare-fun m!6593072 () Bool)

(assert (=> b!5619289 m!6593072))

(assert (=> b!5618985 d!1775863))

(declare-fun bs!1301343 () Bool)

(declare-fun d!1775865 () Bool)

(assert (= bs!1301343 (and d!1775865 d!1775801)))

(declare-fun lambda!301646 () Int)

(assert (=> bs!1301343 (= lambda!301646 lambda!301633)))

(declare-fun bs!1301344 () Bool)

(assert (= bs!1301344 (and d!1775865 d!1775855)))

(assert (=> bs!1301344 (= lambda!301646 lambda!301643)))

(declare-fun b!5619310 () Bool)

(declare-fun e!3464086 () Regex!15602)

(declare-fun e!3464087 () Regex!15602)

(assert (=> b!5619310 (= e!3464086 e!3464087)))

(declare-fun c!985998 () Bool)

(assert (=> b!5619310 (= c!985998 (is-Cons!62981 (t!376395 (exprs!5486 (h!69430 zl!343)))))))

(declare-fun b!5619311 () Bool)

(assert (=> b!5619311 (= e!3464087 EmptyExpr!15602)))

(declare-fun b!5619312 () Bool)

(assert (=> b!5619312 (= e!3464087 (Concat!24447 (h!69429 (t!376395 (exprs!5486 (h!69430 zl!343)))) (generalisedConcat!1217 (t!376395 (t!376395 (exprs!5486 (h!69430 zl!343)))))))))

(declare-fun b!5619313 () Bool)

(declare-fun e!3464089 () Bool)

(declare-fun lt!2259644 () Regex!15602)

(declare-fun head!11958 (List!63105) Regex!15602)

(assert (=> b!5619313 (= e!3464089 (= lt!2259644 (head!11958 (t!376395 (exprs!5486 (h!69430 zl!343))))))))

(declare-fun e!3464090 () Bool)

(assert (=> d!1775865 e!3464090))

(declare-fun res!2380256 () Bool)

(assert (=> d!1775865 (=> (not res!2380256) (not e!3464090))))

(assert (=> d!1775865 (= res!2380256 (validRegex!7338 lt!2259644))))

(assert (=> d!1775865 (= lt!2259644 e!3464086)))

(declare-fun c!985999 () Bool)

(declare-fun e!3464088 () Bool)

(assert (=> d!1775865 (= c!985999 e!3464088)))

(declare-fun res!2380257 () Bool)

(assert (=> d!1775865 (=> (not res!2380257) (not e!3464088))))

(assert (=> d!1775865 (= res!2380257 (is-Cons!62981 (t!376395 (exprs!5486 (h!69430 zl!343)))))))

(assert (=> d!1775865 (forall!14761 (t!376395 (exprs!5486 (h!69430 zl!343))) lambda!301646)))

(assert (=> d!1775865 (= (generalisedConcat!1217 (t!376395 (exprs!5486 (h!69430 zl!343)))) lt!2259644)))

(declare-fun b!5619314 () Bool)

(declare-fun e!3464085 () Bool)

(declare-fun isEmptyExpr!1148 (Regex!15602) Bool)

(assert (=> b!5619314 (= e!3464085 (isEmptyExpr!1148 lt!2259644))))

(declare-fun b!5619315 () Bool)

(declare-fun isConcat!671 (Regex!15602) Bool)

(assert (=> b!5619315 (= e!3464089 (isConcat!671 lt!2259644))))

(declare-fun b!5619316 () Bool)

(assert (=> b!5619316 (= e!3464085 e!3464089)))

(declare-fun c!986000 () Bool)

(declare-fun tail!11053 (List!63105) List!63105)

(assert (=> b!5619316 (= c!986000 (isEmpty!34808 (tail!11053 (t!376395 (exprs!5486 (h!69430 zl!343))))))))

(declare-fun b!5619317 () Bool)

(assert (=> b!5619317 (= e!3464086 (h!69429 (t!376395 (exprs!5486 (h!69430 zl!343)))))))

(declare-fun b!5619318 () Bool)

(assert (=> b!5619318 (= e!3464090 e!3464085)))

(declare-fun c!985997 () Bool)

(assert (=> b!5619318 (= c!985997 (isEmpty!34808 (t!376395 (exprs!5486 (h!69430 zl!343)))))))

(declare-fun b!5619319 () Bool)

(assert (=> b!5619319 (= e!3464088 (isEmpty!34808 (t!376395 (t!376395 (exprs!5486 (h!69430 zl!343))))))))

(assert (= (and d!1775865 res!2380257) b!5619319))

(assert (= (and d!1775865 c!985999) b!5619317))

(assert (= (and d!1775865 (not c!985999)) b!5619310))

(assert (= (and b!5619310 c!985998) b!5619312))

(assert (= (and b!5619310 (not c!985998)) b!5619311))

(assert (= (and d!1775865 res!2380256) b!5619318))

(assert (= (and b!5619318 c!985997) b!5619314))

(assert (= (and b!5619318 (not c!985997)) b!5619316))

(assert (= (and b!5619316 c!986000) b!5619313))

(assert (= (and b!5619316 (not c!986000)) b!5619315))

(declare-fun m!6593074 () Bool)

(assert (=> b!5619314 m!6593074))

(declare-fun m!6593076 () Bool)

(assert (=> b!5619315 m!6593076))

(declare-fun m!6593078 () Bool)

(assert (=> d!1775865 m!6593078))

(declare-fun m!6593080 () Bool)

(assert (=> d!1775865 m!6593080))

(assert (=> b!5619318 m!6592648))

(declare-fun m!6593082 () Bool)

(assert (=> b!5619316 m!6593082))

(assert (=> b!5619316 m!6593082))

(declare-fun m!6593084 () Bool)

(assert (=> b!5619316 m!6593084))

(declare-fun m!6593086 () Bool)

(assert (=> b!5619312 m!6593086))

(declare-fun m!6593088 () Bool)

(assert (=> b!5619313 m!6593088))

(declare-fun m!6593090 () Bool)

(assert (=> b!5619319 m!6593090))

(assert (=> b!5618986 d!1775865))

(declare-fun e!3464091 () Bool)

(declare-fun d!1775869 () Bool)

(assert (=> d!1775869 (= (matchZipper!1740 (set.union lt!2259438 lt!2259458) (t!376397 s!2326)) e!3464091)))

(declare-fun res!2380258 () Bool)

(assert (=> d!1775869 (=> res!2380258 e!3464091)))

(assert (=> d!1775869 (= res!2380258 (matchZipper!1740 lt!2259438 (t!376397 s!2326)))))

(declare-fun lt!2259645 () Unit!155908)

(assert (=> d!1775869 (= lt!2259645 (choose!42544 lt!2259438 lt!2259458 (t!376397 s!2326)))))

(assert (=> d!1775869 (= (lemmaZipperConcatMatchesSameAsBothZippers!627 lt!2259438 lt!2259458 (t!376397 s!2326)) lt!2259645)))

(declare-fun b!5619320 () Bool)

(assert (=> b!5619320 (= e!3464091 (matchZipper!1740 lt!2259458 (t!376397 s!2326)))))

(assert (= (and d!1775869 (not res!2380258)) b!5619320))

(assert (=> d!1775869 m!6592742))

(assert (=> d!1775869 m!6592666))

(declare-fun m!6593092 () Bool)

(assert (=> d!1775869 m!6593092))

(assert (=> b!5619320 m!6592660))

(assert (=> b!5619005 d!1775869))

(declare-fun d!1775871 () Bool)

(declare-fun c!986001 () Bool)

(assert (=> d!1775871 (= c!986001 (isEmpty!34812 (t!376397 s!2326)))))

(declare-fun e!3464092 () Bool)

(assert (=> d!1775871 (= (matchZipper!1740 (set.union lt!2259438 lt!2259458) (t!376397 s!2326)) e!3464092)))

(declare-fun b!5619321 () Bool)

(assert (=> b!5619321 (= e!3464092 (nullableZipper!1589 (set.union lt!2259438 lt!2259458)))))

(declare-fun b!5619322 () Bool)

(assert (=> b!5619322 (= e!3464092 (matchZipper!1740 (derivationStepZipper!1693 (set.union lt!2259438 lt!2259458) (head!11957 (t!376397 s!2326))) (tail!11052 (t!376397 s!2326))))))

(assert (= (and d!1775871 c!986001) b!5619321))

(assert (= (and d!1775871 (not c!986001)) b!5619322))

(assert (=> d!1775871 m!6593018))

(declare-fun m!6593094 () Bool)

(assert (=> b!5619321 m!6593094))

(assert (=> b!5619322 m!6593022))

(assert (=> b!5619322 m!6593022))

(declare-fun m!6593096 () Bool)

(assert (=> b!5619322 m!6593096))

(assert (=> b!5619322 m!6593026))

(assert (=> b!5619322 m!6593096))

(assert (=> b!5619322 m!6593026))

(declare-fun m!6593098 () Bool)

(assert (=> b!5619322 m!6593098))

(assert (=> b!5619005 d!1775871))

(declare-fun d!1775873 () Bool)

(assert (=> d!1775873 (= (matchR!7787 lt!2259462 s!2326) (matchRSpec!2705 lt!2259462 s!2326))))

(declare-fun lt!2259648 () Unit!155908)

(declare-fun choose!42545 (Regex!15602 List!63107) Unit!155908)

(assert (=> d!1775873 (= lt!2259648 (choose!42545 lt!2259462 s!2326))))

(assert (=> d!1775873 (validRegex!7338 lt!2259462)))

(assert (=> d!1775873 (= (mainMatchTheorem!2705 lt!2259462 s!2326) lt!2259648)))

(declare-fun bs!1301345 () Bool)

(assert (= bs!1301345 d!1775873))

(assert (=> bs!1301345 m!6592728))

(assert (=> bs!1301345 m!6592714))

(declare-fun m!6593100 () Bool)

(assert (=> bs!1301345 m!6593100))

(declare-fun m!6593102 () Bool)

(assert (=> bs!1301345 m!6593102))

(assert (=> b!5619007 d!1775873))

(declare-fun d!1775875 () Bool)

(assert (=> d!1775875 (= (matchR!7787 lt!2259462 s!2326) (matchZipper!1740 lt!2259437 s!2326))))

(declare-fun lt!2259651 () Unit!155908)

(declare-fun choose!42546 ((Set Context!9972) List!63106 Regex!15602 List!63107) Unit!155908)

(assert (=> d!1775875 (= lt!2259651 (choose!42546 lt!2259437 lt!2259445 lt!2259462 s!2326))))

(assert (=> d!1775875 (validRegex!7338 lt!2259462)))

(assert (=> d!1775875 (= (theoremZipperRegexEquiv!618 lt!2259437 lt!2259445 lt!2259462 s!2326) lt!2259651)))

(declare-fun bs!1301346 () Bool)

(assert (= bs!1301346 d!1775875))

(assert (=> bs!1301346 m!6592728))

(assert (=> bs!1301346 m!6592720))

(declare-fun m!6593116 () Bool)

(assert (=> bs!1301346 m!6593116))

(assert (=> bs!1301346 m!6593102))

(assert (=> b!5619007 d!1775875))

(declare-fun d!1775879 () Bool)

(assert (=> d!1775879 (= (matchR!7787 lt!2259470 s!2326) (matchRSpec!2705 lt!2259470 s!2326))))

(declare-fun lt!2259652 () Unit!155908)

(assert (=> d!1775879 (= lt!2259652 (choose!42545 lt!2259470 s!2326))))

(assert (=> d!1775879 (validRegex!7338 lt!2259470)))

(assert (=> d!1775879 (= (mainMatchTheorem!2705 lt!2259470 s!2326) lt!2259652)))

(declare-fun bs!1301347 () Bool)

(assert (= bs!1301347 d!1775879))

(assert (=> bs!1301347 m!6592730))

(assert (=> bs!1301347 m!6592732))

(declare-fun m!6593118 () Bool)

(assert (=> bs!1301347 m!6593118))

(declare-fun m!6593120 () Bool)

(assert (=> bs!1301347 m!6593120))

(assert (=> b!5619007 d!1775879))

(declare-fun b!5619379 () Bool)

(declare-fun res!2380287 () Bool)

(declare-fun e!3464130 () Bool)

(assert (=> b!5619379 (=> res!2380287 e!3464130)))

(assert (=> b!5619379 (= res!2380287 (not (is-ElementMatch!15602 lt!2259470)))))

(declare-fun e!3464129 () Bool)

(assert (=> b!5619379 (= e!3464129 e!3464130)))

(declare-fun b!5619380 () Bool)

(declare-fun lt!2259655 () Bool)

(assert (=> b!5619380 (= e!3464129 (not lt!2259655))))

(declare-fun b!5619381 () Bool)

(declare-fun e!3464124 () Bool)

(declare-fun e!3464127 () Bool)

(assert (=> b!5619381 (= e!3464124 e!3464127)))

(declare-fun res!2380281 () Bool)

(assert (=> b!5619381 (=> res!2380281 e!3464127)))

(declare-fun call!423072 () Bool)

(assert (=> b!5619381 (= res!2380281 call!423072)))

(declare-fun b!5619382 () Bool)

(declare-fun e!3464128 () Bool)

(declare-fun derivativeStep!4442 (Regex!15602 C!31474) Regex!15602)

(assert (=> b!5619382 (= e!3464128 (matchR!7787 (derivativeStep!4442 lt!2259470 (head!11957 s!2326)) (tail!11052 s!2326)))))

(declare-fun b!5619383 () Bool)

(declare-fun e!3464125 () Bool)

(assert (=> b!5619383 (= e!3464125 (= lt!2259655 call!423072))))

(declare-fun b!5619384 () Bool)

(assert (=> b!5619384 (= e!3464128 (nullable!5634 lt!2259470))))

(declare-fun b!5619385 () Bool)

(declare-fun res!2380288 () Bool)

(declare-fun e!3464126 () Bool)

(assert (=> b!5619385 (=> (not res!2380288) (not e!3464126))))

(assert (=> b!5619385 (= res!2380288 (not call!423072))))

(declare-fun b!5619386 () Bool)

(assert (=> b!5619386 (= e!3464127 (not (= (head!11957 s!2326) (c!985926 lt!2259470))))))

(declare-fun b!5619387 () Bool)

(assert (=> b!5619387 (= e!3464125 e!3464129)))

(declare-fun c!986021 () Bool)

(assert (=> b!5619387 (= c!986021 (is-EmptyLang!15602 lt!2259470))))

(declare-fun b!5619388 () Bool)

(declare-fun res!2380284 () Bool)

(assert (=> b!5619388 (=> res!2380284 e!3464130)))

(assert (=> b!5619388 (= res!2380284 e!3464126)))

(declare-fun res!2380286 () Bool)

(assert (=> b!5619388 (=> (not res!2380286) (not e!3464126))))

(assert (=> b!5619388 (= res!2380286 lt!2259655)))

(declare-fun d!1775881 () Bool)

(assert (=> d!1775881 e!3464125))

(declare-fun c!986020 () Bool)

(assert (=> d!1775881 (= c!986020 (is-EmptyExpr!15602 lt!2259470))))

(assert (=> d!1775881 (= lt!2259655 e!3464128)))

(declare-fun c!986019 () Bool)

(assert (=> d!1775881 (= c!986019 (isEmpty!34812 s!2326))))

(assert (=> d!1775881 (validRegex!7338 lt!2259470)))

(assert (=> d!1775881 (= (matchR!7787 lt!2259470 s!2326) lt!2259655)))

(declare-fun b!5619389 () Bool)

(assert (=> b!5619389 (= e!3464126 (= (head!11957 s!2326) (c!985926 lt!2259470)))))

(declare-fun b!5619390 () Bool)

(declare-fun res!2380285 () Bool)

(assert (=> b!5619390 (=> (not res!2380285) (not e!3464126))))

(assert (=> b!5619390 (= res!2380285 (isEmpty!34812 (tail!11052 s!2326)))))

(declare-fun b!5619391 () Bool)

(declare-fun res!2380282 () Bool)

(assert (=> b!5619391 (=> res!2380282 e!3464127)))

(assert (=> b!5619391 (= res!2380282 (not (isEmpty!34812 (tail!11052 s!2326))))))

(declare-fun bm!423067 () Bool)

(assert (=> bm!423067 (= call!423072 (isEmpty!34812 s!2326))))

(declare-fun b!5619392 () Bool)

(assert (=> b!5619392 (= e!3464130 e!3464124)))

(declare-fun res!2380283 () Bool)

(assert (=> b!5619392 (=> (not res!2380283) (not e!3464124))))

(assert (=> b!5619392 (= res!2380283 (not lt!2259655))))

(assert (= (and d!1775881 c!986019) b!5619384))

(assert (= (and d!1775881 (not c!986019)) b!5619382))

(assert (= (and d!1775881 c!986020) b!5619383))

(assert (= (and d!1775881 (not c!986020)) b!5619387))

(assert (= (and b!5619387 c!986021) b!5619380))

(assert (= (and b!5619387 (not c!986021)) b!5619379))

(assert (= (and b!5619379 (not res!2380287)) b!5619388))

(assert (= (and b!5619388 res!2380286) b!5619385))

(assert (= (and b!5619385 res!2380288) b!5619390))

(assert (= (and b!5619390 res!2380285) b!5619389))

(assert (= (and b!5619388 (not res!2380284)) b!5619392))

(assert (= (and b!5619392 res!2380283) b!5619381))

(assert (= (and b!5619381 (not res!2380281)) b!5619391))

(assert (= (and b!5619391 (not res!2380282)) b!5619386))

(assert (= (or b!5619383 b!5619381 b!5619385) bm!423067))

(assert (=> b!5619382 m!6592924))

(assert (=> b!5619382 m!6592924))

(declare-fun m!6593122 () Bool)

(assert (=> b!5619382 m!6593122))

(assert (=> b!5619382 m!6592928))

(assert (=> b!5619382 m!6593122))

(assert (=> b!5619382 m!6592928))

(declare-fun m!6593124 () Bool)

(assert (=> b!5619382 m!6593124))

(declare-fun m!6593126 () Bool)

(assert (=> b!5619384 m!6593126))

(assert (=> b!5619389 m!6592924))

(assert (=> b!5619391 m!6592928))

(assert (=> b!5619391 m!6592928))

(declare-fun m!6593128 () Bool)

(assert (=> b!5619391 m!6593128))

(assert (=> d!1775881 m!6592920))

(assert (=> d!1775881 m!6593120))

(assert (=> b!5619390 m!6592928))

(assert (=> b!5619390 m!6592928))

(assert (=> b!5619390 m!6593128))

(assert (=> bm!423067 m!6592920))

(assert (=> b!5619386 m!6592924))

(assert (=> b!5619007 d!1775881))

(declare-fun bs!1301348 () Bool)

(declare-fun b!5619445 () Bool)

(assert (= bs!1301348 (and b!5619445 b!5619011)))

(declare-fun lambda!301655 () Int)

(assert (=> bs!1301348 (not (= lambda!301655 lambda!301614))))

(assert (=> bs!1301348 (not (= lambda!301655 lambda!301613))))

(declare-fun bs!1301349 () Bool)

(assert (= bs!1301349 (and b!5619445 d!1775835)))

(assert (=> bs!1301349 (not (= lambda!301655 lambda!301641))))

(declare-fun bs!1301350 () Bool)

(assert (= bs!1301350 (and b!5619445 d!1775833)))

(assert (=> bs!1301350 (not (= lambda!301655 lambda!301636))))

(assert (=> bs!1301349 (not (= lambda!301655 lambda!301642))))

(assert (=> b!5619445 true))

(assert (=> b!5619445 true))

(declare-fun bs!1301351 () Bool)

(declare-fun b!5619441 () Bool)

(assert (= bs!1301351 (and b!5619441 b!5619011)))

(declare-fun lambda!301656 () Int)

(assert (=> bs!1301351 (= (and (= (regOne!31716 lt!2259462) (regOne!31716 r!7292)) (= (regTwo!31716 lt!2259462) (regTwo!31716 r!7292))) (= lambda!301656 lambda!301614))))

(assert (=> bs!1301351 (not (= lambda!301656 lambda!301613))))

(declare-fun bs!1301352 () Bool)

(assert (= bs!1301352 (and b!5619441 d!1775835)))

(assert (=> bs!1301352 (not (= lambda!301656 lambda!301641))))

(declare-fun bs!1301353 () Bool)

(assert (= bs!1301353 (and b!5619441 b!5619445)))

(assert (=> bs!1301353 (not (= lambda!301656 lambda!301655))))

(declare-fun bs!1301354 () Bool)

(assert (= bs!1301354 (and b!5619441 d!1775833)))

(assert (=> bs!1301354 (not (= lambda!301656 lambda!301636))))

(assert (=> bs!1301352 (= (and (= (regOne!31716 lt!2259462) (regOne!31716 r!7292)) (= (regTwo!31716 lt!2259462) (regTwo!31716 r!7292))) (= lambda!301656 lambda!301642))))

(assert (=> b!5619441 true))

(assert (=> b!5619441 true))

(declare-fun b!5619435 () Bool)

(declare-fun e!3464153 () Bool)

(declare-fun e!3464155 () Bool)

(assert (=> b!5619435 (= e!3464153 e!3464155)))

(declare-fun res!2380316 () Bool)

(assert (=> b!5619435 (= res!2380316 (not (is-EmptyLang!15602 lt!2259462)))))

(assert (=> b!5619435 (=> (not res!2380316) (not e!3464155))))

(declare-fun b!5619436 () Bool)

(declare-fun res!2380317 () Bool)

(declare-fun e!3464156 () Bool)

(assert (=> b!5619436 (=> res!2380317 e!3464156)))

(declare-fun call!423082 () Bool)

(assert (=> b!5619436 (= res!2380317 call!423082)))

(declare-fun e!3464154 () Bool)

(assert (=> b!5619436 (= e!3464154 e!3464156)))

(declare-fun bm!423076 () Bool)

(declare-fun c!986031 () Bool)

(declare-fun call!423081 () Bool)

(assert (=> bm!423076 (= call!423081 (Exists!2702 (ite c!986031 lambda!301655 lambda!301656)))))

(declare-fun d!1775883 () Bool)

(declare-fun c!986033 () Bool)

(assert (=> d!1775883 (= c!986033 (is-EmptyExpr!15602 lt!2259462))))

(assert (=> d!1775883 (= (matchRSpec!2705 lt!2259462 s!2326) e!3464153)))

(declare-fun b!5619437 () Bool)

(declare-fun c!986032 () Bool)

(assert (=> b!5619437 (= c!986032 (is-ElementMatch!15602 lt!2259462))))

(declare-fun e!3464159 () Bool)

(assert (=> b!5619437 (= e!3464155 e!3464159)))

(declare-fun b!5619438 () Bool)

(assert (=> b!5619438 (= e!3464153 call!423082)))

(declare-fun b!5619439 () Bool)

(declare-fun e!3464157 () Bool)

(declare-fun e!3464158 () Bool)

(assert (=> b!5619439 (= e!3464157 e!3464158)))

(declare-fun res!2380315 () Bool)

(assert (=> b!5619439 (= res!2380315 (matchRSpec!2705 (regOne!31717 lt!2259462) s!2326))))

(assert (=> b!5619439 (=> res!2380315 e!3464158)))

(declare-fun b!5619440 () Bool)

(declare-fun c!986030 () Bool)

(assert (=> b!5619440 (= c!986030 (is-Union!15602 lt!2259462))))

(assert (=> b!5619440 (= e!3464159 e!3464157)))

(assert (=> b!5619441 (= e!3464154 call!423081)))

(declare-fun bm!423077 () Bool)

(assert (=> bm!423077 (= call!423082 (isEmpty!34812 s!2326))))

(declare-fun b!5619442 () Bool)

(assert (=> b!5619442 (= e!3464159 (= s!2326 (Cons!62983 (c!985926 lt!2259462) Nil!62983)))))

(declare-fun b!5619443 () Bool)

(assert (=> b!5619443 (= e!3464158 (matchRSpec!2705 (regTwo!31717 lt!2259462) s!2326))))

(declare-fun b!5619444 () Bool)

(assert (=> b!5619444 (= e!3464157 e!3464154)))

(assert (=> b!5619444 (= c!986031 (is-Star!15602 lt!2259462))))

(assert (=> b!5619445 (= e!3464156 call!423081)))

(assert (= (and d!1775883 c!986033) b!5619438))

(assert (= (and d!1775883 (not c!986033)) b!5619435))

(assert (= (and b!5619435 res!2380316) b!5619437))

(assert (= (and b!5619437 c!986032) b!5619442))

(assert (= (and b!5619437 (not c!986032)) b!5619440))

(assert (= (and b!5619440 c!986030) b!5619439))

(assert (= (and b!5619440 (not c!986030)) b!5619444))

(assert (= (and b!5619439 (not res!2380315)) b!5619443))

(assert (= (and b!5619444 c!986031) b!5619436))

(assert (= (and b!5619444 (not c!986031)) b!5619441))

(assert (= (and b!5619436 (not res!2380317)) b!5619445))

(assert (= (or b!5619445 b!5619441) bm!423076))

(assert (= (or b!5619438 b!5619436) bm!423077))

(declare-fun m!6593130 () Bool)

(assert (=> bm!423076 m!6593130))

(declare-fun m!6593132 () Bool)

(assert (=> b!5619439 m!6593132))

(assert (=> bm!423077 m!6592920))

(declare-fun m!6593134 () Bool)

(assert (=> b!5619443 m!6593134))

(assert (=> b!5619007 d!1775883))

(declare-fun bs!1301355 () Bool)

(declare-fun d!1775885 () Bool)

(assert (= bs!1301355 (and d!1775885 d!1775801)))

(declare-fun lambda!301657 () Int)

(assert (=> bs!1301355 (= lambda!301657 lambda!301633)))

(declare-fun bs!1301356 () Bool)

(assert (= bs!1301356 (and d!1775885 d!1775855)))

(assert (=> bs!1301356 (= lambda!301657 lambda!301643)))

(declare-fun bs!1301357 () Bool)

(assert (= bs!1301357 (and d!1775885 d!1775865)))

(assert (=> bs!1301357 (= lambda!301657 lambda!301646)))

(declare-fun b!5619446 () Bool)

(declare-fun e!3464161 () Regex!15602)

(declare-fun e!3464162 () Regex!15602)

(assert (=> b!5619446 (= e!3464161 e!3464162)))

(declare-fun c!986035 () Bool)

(assert (=> b!5619446 (= c!986035 (is-Cons!62981 lt!2259463))))

(declare-fun b!5619447 () Bool)

(assert (=> b!5619447 (= e!3464162 EmptyExpr!15602)))

(declare-fun b!5619448 () Bool)

(assert (=> b!5619448 (= e!3464162 (Concat!24447 (h!69429 lt!2259463) (generalisedConcat!1217 (t!376395 lt!2259463))))))

(declare-fun b!5619449 () Bool)

(declare-fun e!3464164 () Bool)

(declare-fun lt!2259656 () Regex!15602)

(assert (=> b!5619449 (= e!3464164 (= lt!2259656 (head!11958 lt!2259463)))))

(declare-fun e!3464165 () Bool)

(assert (=> d!1775885 e!3464165))

(declare-fun res!2380318 () Bool)

(assert (=> d!1775885 (=> (not res!2380318) (not e!3464165))))

(assert (=> d!1775885 (= res!2380318 (validRegex!7338 lt!2259656))))

(assert (=> d!1775885 (= lt!2259656 e!3464161)))

(declare-fun c!986036 () Bool)

(declare-fun e!3464163 () Bool)

(assert (=> d!1775885 (= c!986036 e!3464163)))

(declare-fun res!2380319 () Bool)

(assert (=> d!1775885 (=> (not res!2380319) (not e!3464163))))

(assert (=> d!1775885 (= res!2380319 (is-Cons!62981 lt!2259463))))

(assert (=> d!1775885 (forall!14761 lt!2259463 lambda!301657)))

(assert (=> d!1775885 (= (generalisedConcat!1217 lt!2259463) lt!2259656)))

(declare-fun b!5619450 () Bool)

(declare-fun e!3464160 () Bool)

(assert (=> b!5619450 (= e!3464160 (isEmptyExpr!1148 lt!2259656))))

(declare-fun b!5619451 () Bool)

(assert (=> b!5619451 (= e!3464164 (isConcat!671 lt!2259656))))

(declare-fun b!5619452 () Bool)

(assert (=> b!5619452 (= e!3464160 e!3464164)))

(declare-fun c!986037 () Bool)

(assert (=> b!5619452 (= c!986037 (isEmpty!34808 (tail!11053 lt!2259463)))))

(declare-fun b!5619453 () Bool)

(assert (=> b!5619453 (= e!3464161 (h!69429 lt!2259463))))

(declare-fun b!5619454 () Bool)

(assert (=> b!5619454 (= e!3464165 e!3464160)))

(declare-fun c!986034 () Bool)

(assert (=> b!5619454 (= c!986034 (isEmpty!34808 lt!2259463))))

(declare-fun b!5619455 () Bool)

(assert (=> b!5619455 (= e!3464163 (isEmpty!34808 (t!376395 lt!2259463)))))

(assert (= (and d!1775885 res!2380319) b!5619455))

(assert (= (and d!1775885 c!986036) b!5619453))

(assert (= (and d!1775885 (not c!986036)) b!5619446))

(assert (= (and b!5619446 c!986035) b!5619448))

(assert (= (and b!5619446 (not c!986035)) b!5619447))

(assert (= (and d!1775885 res!2380318) b!5619454))

(assert (= (and b!5619454 c!986034) b!5619450))

(assert (= (and b!5619454 (not c!986034)) b!5619452))

(assert (= (and b!5619452 c!986037) b!5619449))

(assert (= (and b!5619452 (not c!986037)) b!5619451))

(declare-fun m!6593136 () Bool)

(assert (=> b!5619450 m!6593136))

(declare-fun m!6593138 () Bool)

(assert (=> b!5619451 m!6593138))

(declare-fun m!6593140 () Bool)

(assert (=> d!1775885 m!6593140))

(declare-fun m!6593142 () Bool)

(assert (=> d!1775885 m!6593142))

(declare-fun m!6593144 () Bool)

(assert (=> b!5619454 m!6593144))

(declare-fun m!6593146 () Bool)

(assert (=> b!5619452 m!6593146))

(assert (=> b!5619452 m!6593146))

(declare-fun m!6593148 () Bool)

(assert (=> b!5619452 m!6593148))

(declare-fun m!6593150 () Bool)

(assert (=> b!5619448 m!6593150))

(declare-fun m!6593152 () Bool)

(assert (=> b!5619449 m!6593152))

(declare-fun m!6593154 () Bool)

(assert (=> b!5619455 m!6593154))

(assert (=> b!5619007 d!1775885))

(declare-fun d!1775887 () Bool)

(assert (=> d!1775887 (= (matchR!7787 lt!2259470 s!2326) (matchZipper!1740 lt!2259441 s!2326))))

(declare-fun lt!2259657 () Unit!155908)

(assert (=> d!1775887 (= lt!2259657 (choose!42546 lt!2259441 lt!2259454 lt!2259470 s!2326))))

(assert (=> d!1775887 (validRegex!7338 lt!2259470)))

(assert (=> d!1775887 (= (theoremZipperRegexEquiv!618 lt!2259441 lt!2259454 lt!2259470 s!2326) lt!2259657)))

(declare-fun bs!1301358 () Bool)

(assert (= bs!1301358 d!1775887))

(assert (=> bs!1301358 m!6592730))

(assert (=> bs!1301358 m!6592746))

(declare-fun m!6593156 () Bool)

(assert (=> bs!1301358 m!6593156))

(assert (=> bs!1301358 m!6593120))

(assert (=> b!5619007 d!1775887))

(declare-fun d!1775889 () Bool)

(declare-fun c!986042 () Bool)

(assert (=> d!1775889 (= c!986042 (isEmpty!34812 s!2326))))

(declare-fun e!3464173 () Bool)

(assert (=> d!1775889 (= (matchZipper!1740 lt!2259437 s!2326) e!3464173)))

(declare-fun b!5619467 () Bool)

(assert (=> b!5619467 (= e!3464173 (nullableZipper!1589 lt!2259437))))

(declare-fun b!5619468 () Bool)

(assert (=> b!5619468 (= e!3464173 (matchZipper!1740 (derivationStepZipper!1693 lt!2259437 (head!11957 s!2326)) (tail!11052 s!2326)))))

(assert (= (and d!1775889 c!986042) b!5619467))

(assert (= (and d!1775889 (not c!986042)) b!5619468))

(assert (=> d!1775889 m!6592920))

(declare-fun m!6593158 () Bool)

(assert (=> b!5619467 m!6593158))

(assert (=> b!5619468 m!6592924))

(assert (=> b!5619468 m!6592924))

(declare-fun m!6593160 () Bool)

(assert (=> b!5619468 m!6593160))

(assert (=> b!5619468 m!6592928))

(assert (=> b!5619468 m!6593160))

(assert (=> b!5619468 m!6592928))

(declare-fun m!6593162 () Bool)

(assert (=> b!5619468 m!6593162))

(assert (=> b!5619007 d!1775889))

(declare-fun bs!1301359 () Bool)

(declare-fun b!5619479 () Bool)

(assert (= bs!1301359 (and b!5619479 b!5619011)))

(declare-fun lambda!301659 () Int)

(assert (=> bs!1301359 (not (= lambda!301659 lambda!301614))))

(assert (=> bs!1301359 (not (= lambda!301659 lambda!301613))))

(declare-fun bs!1301361 () Bool)

(assert (= bs!1301361 (and b!5619479 b!5619441)))

(assert (=> bs!1301361 (not (= lambda!301659 lambda!301656))))

(declare-fun bs!1301362 () Bool)

(assert (= bs!1301362 (and b!5619479 d!1775835)))

(assert (=> bs!1301362 (not (= lambda!301659 lambda!301641))))

(declare-fun bs!1301363 () Bool)

(assert (= bs!1301363 (and b!5619479 b!5619445)))

(assert (=> bs!1301363 (= (and (= (reg!15931 lt!2259470) (reg!15931 lt!2259462)) (= lt!2259470 lt!2259462)) (= lambda!301659 lambda!301655))))

(declare-fun bs!1301364 () Bool)

(assert (= bs!1301364 (and b!5619479 d!1775833)))

(assert (=> bs!1301364 (not (= lambda!301659 lambda!301636))))

(assert (=> bs!1301362 (not (= lambda!301659 lambda!301642))))

(assert (=> b!5619479 true))

(assert (=> b!5619479 true))

(declare-fun bs!1301365 () Bool)

(declare-fun b!5619475 () Bool)

(assert (= bs!1301365 (and b!5619475 b!5619011)))

(declare-fun lambda!301660 () Int)

(assert (=> bs!1301365 (= (and (= (regOne!31716 lt!2259470) (regOne!31716 r!7292)) (= (regTwo!31716 lt!2259470) (regTwo!31716 r!7292))) (= lambda!301660 lambda!301614))))

(assert (=> bs!1301365 (not (= lambda!301660 lambda!301613))))

(declare-fun bs!1301366 () Bool)

(assert (= bs!1301366 (and b!5619475 b!5619441)))

(assert (=> bs!1301366 (= (and (= (regOne!31716 lt!2259470) (regOne!31716 lt!2259462)) (= (regTwo!31716 lt!2259470) (regTwo!31716 lt!2259462))) (= lambda!301660 lambda!301656))))

(declare-fun bs!1301367 () Bool)

(assert (= bs!1301367 (and b!5619475 d!1775835)))

(assert (=> bs!1301367 (not (= lambda!301660 lambda!301641))))

(declare-fun bs!1301368 () Bool)

(assert (= bs!1301368 (and b!5619475 b!5619479)))

(assert (=> bs!1301368 (not (= lambda!301660 lambda!301659))))

(declare-fun bs!1301370 () Bool)

(assert (= bs!1301370 (and b!5619475 b!5619445)))

(assert (=> bs!1301370 (not (= lambda!301660 lambda!301655))))

(declare-fun bs!1301371 () Bool)

(assert (= bs!1301371 (and b!5619475 d!1775833)))

(assert (=> bs!1301371 (not (= lambda!301660 lambda!301636))))

(assert (=> bs!1301367 (= (and (= (regOne!31716 lt!2259470) (regOne!31716 r!7292)) (= (regTwo!31716 lt!2259470) (regTwo!31716 r!7292))) (= lambda!301660 lambda!301642))))

(assert (=> b!5619475 true))

(assert (=> b!5619475 true))

(declare-fun b!5619469 () Bool)

(declare-fun e!3464174 () Bool)

(declare-fun e!3464176 () Bool)

(assert (=> b!5619469 (= e!3464174 e!3464176)))

(declare-fun res!2380324 () Bool)

(assert (=> b!5619469 (= res!2380324 (not (is-EmptyLang!15602 lt!2259470)))))

(assert (=> b!5619469 (=> (not res!2380324) (not e!3464176))))

(declare-fun b!5619470 () Bool)

(declare-fun res!2380325 () Bool)

(declare-fun e!3464177 () Bool)

(assert (=> b!5619470 (=> res!2380325 e!3464177)))

(declare-fun call!423086 () Bool)

(assert (=> b!5619470 (= res!2380325 call!423086)))

(declare-fun e!3464175 () Bool)

(assert (=> b!5619470 (= e!3464175 e!3464177)))

(declare-fun c!986044 () Bool)

(declare-fun call!423085 () Bool)

(declare-fun bm!423080 () Bool)

(assert (=> bm!423080 (= call!423085 (Exists!2702 (ite c!986044 lambda!301659 lambda!301660)))))

(declare-fun d!1775891 () Bool)

(declare-fun c!986046 () Bool)

(assert (=> d!1775891 (= c!986046 (is-EmptyExpr!15602 lt!2259470))))

(assert (=> d!1775891 (= (matchRSpec!2705 lt!2259470 s!2326) e!3464174)))

(declare-fun b!5619471 () Bool)

(declare-fun c!986045 () Bool)

(assert (=> b!5619471 (= c!986045 (is-ElementMatch!15602 lt!2259470))))

(declare-fun e!3464180 () Bool)

(assert (=> b!5619471 (= e!3464176 e!3464180)))

(declare-fun b!5619472 () Bool)

(assert (=> b!5619472 (= e!3464174 call!423086)))

(declare-fun b!5619473 () Bool)

(declare-fun e!3464178 () Bool)

(declare-fun e!3464179 () Bool)

(assert (=> b!5619473 (= e!3464178 e!3464179)))

(declare-fun res!2380323 () Bool)

(assert (=> b!5619473 (= res!2380323 (matchRSpec!2705 (regOne!31717 lt!2259470) s!2326))))

(assert (=> b!5619473 (=> res!2380323 e!3464179)))

(declare-fun b!5619474 () Bool)

(declare-fun c!986043 () Bool)

(assert (=> b!5619474 (= c!986043 (is-Union!15602 lt!2259470))))

(assert (=> b!5619474 (= e!3464180 e!3464178)))

(assert (=> b!5619475 (= e!3464175 call!423085)))

(declare-fun bm!423081 () Bool)

(assert (=> bm!423081 (= call!423086 (isEmpty!34812 s!2326))))

(declare-fun b!5619476 () Bool)

(assert (=> b!5619476 (= e!3464180 (= s!2326 (Cons!62983 (c!985926 lt!2259470) Nil!62983)))))

(declare-fun b!5619477 () Bool)

(assert (=> b!5619477 (= e!3464179 (matchRSpec!2705 (regTwo!31717 lt!2259470) s!2326))))

(declare-fun b!5619478 () Bool)

(assert (=> b!5619478 (= e!3464178 e!3464175)))

(assert (=> b!5619478 (= c!986044 (is-Star!15602 lt!2259470))))

(assert (=> b!5619479 (= e!3464177 call!423085)))

(assert (= (and d!1775891 c!986046) b!5619472))

(assert (= (and d!1775891 (not c!986046)) b!5619469))

(assert (= (and b!5619469 res!2380324) b!5619471))

(assert (= (and b!5619471 c!986045) b!5619476))

(assert (= (and b!5619471 (not c!986045)) b!5619474))

(assert (= (and b!5619474 c!986043) b!5619473))

(assert (= (and b!5619474 (not c!986043)) b!5619478))

(assert (= (and b!5619473 (not res!2380323)) b!5619477))

(assert (= (and b!5619478 c!986044) b!5619470))

(assert (= (and b!5619478 (not c!986044)) b!5619475))

(assert (= (and b!5619470 (not res!2380325)) b!5619479))

(assert (= (or b!5619479 b!5619475) bm!423080))

(assert (= (or b!5619472 b!5619470) bm!423081))

(declare-fun m!6593164 () Bool)

(assert (=> bm!423080 m!6593164))

(declare-fun m!6593166 () Bool)

(assert (=> b!5619473 m!6593166))

(assert (=> bm!423081 m!6592920))

(declare-fun m!6593168 () Bool)

(assert (=> b!5619477 m!6593168))

(assert (=> b!5619007 d!1775891))

(declare-fun bs!1301373 () Bool)

(declare-fun d!1775893 () Bool)

(assert (= bs!1301373 (and d!1775893 d!1775801)))

(declare-fun lambda!301662 () Int)

(assert (=> bs!1301373 (= lambda!301662 lambda!301633)))

(declare-fun bs!1301374 () Bool)

(assert (= bs!1301374 (and d!1775893 d!1775855)))

(assert (=> bs!1301374 (= lambda!301662 lambda!301643)))

(declare-fun bs!1301375 () Bool)

(assert (= bs!1301375 (and d!1775893 d!1775865)))

(assert (=> bs!1301375 (= lambda!301662 lambda!301646)))

(declare-fun bs!1301376 () Bool)

(assert (= bs!1301376 (and d!1775893 d!1775885)))

(assert (=> bs!1301376 (= lambda!301662 lambda!301657)))

(declare-fun b!5619480 () Bool)

(declare-fun e!3464182 () Regex!15602)

(declare-fun e!3464183 () Regex!15602)

(assert (=> b!5619480 (= e!3464182 e!3464183)))

(declare-fun c!986048 () Bool)

(assert (=> b!5619480 (= c!986048 (is-Cons!62981 lt!2259440))))

(declare-fun b!5619481 () Bool)

(assert (=> b!5619481 (= e!3464183 EmptyExpr!15602)))

(declare-fun b!5619482 () Bool)

(assert (=> b!5619482 (= e!3464183 (Concat!24447 (h!69429 lt!2259440) (generalisedConcat!1217 (t!376395 lt!2259440))))))

(declare-fun b!5619483 () Bool)

(declare-fun e!3464185 () Bool)

(declare-fun lt!2259658 () Regex!15602)

(assert (=> b!5619483 (= e!3464185 (= lt!2259658 (head!11958 lt!2259440)))))

(declare-fun e!3464186 () Bool)

(assert (=> d!1775893 e!3464186))

(declare-fun res!2380326 () Bool)

(assert (=> d!1775893 (=> (not res!2380326) (not e!3464186))))

(assert (=> d!1775893 (= res!2380326 (validRegex!7338 lt!2259658))))

(assert (=> d!1775893 (= lt!2259658 e!3464182)))

(declare-fun c!986049 () Bool)

(declare-fun e!3464184 () Bool)

(assert (=> d!1775893 (= c!986049 e!3464184)))

(declare-fun res!2380327 () Bool)

(assert (=> d!1775893 (=> (not res!2380327) (not e!3464184))))

(assert (=> d!1775893 (= res!2380327 (is-Cons!62981 lt!2259440))))

(assert (=> d!1775893 (forall!14761 lt!2259440 lambda!301662)))

(assert (=> d!1775893 (= (generalisedConcat!1217 lt!2259440) lt!2259658)))

(declare-fun b!5619484 () Bool)

(declare-fun e!3464181 () Bool)

(assert (=> b!5619484 (= e!3464181 (isEmptyExpr!1148 lt!2259658))))

(declare-fun b!5619485 () Bool)

(assert (=> b!5619485 (= e!3464185 (isConcat!671 lt!2259658))))

(declare-fun b!5619486 () Bool)

(assert (=> b!5619486 (= e!3464181 e!3464185)))

(declare-fun c!986050 () Bool)

(assert (=> b!5619486 (= c!986050 (isEmpty!34808 (tail!11053 lt!2259440)))))

(declare-fun b!5619487 () Bool)

(assert (=> b!5619487 (= e!3464182 (h!69429 lt!2259440))))

(declare-fun b!5619488 () Bool)

(assert (=> b!5619488 (= e!3464186 e!3464181)))

(declare-fun c!986047 () Bool)

(assert (=> b!5619488 (= c!986047 (isEmpty!34808 lt!2259440))))

(declare-fun b!5619489 () Bool)

(assert (=> b!5619489 (= e!3464184 (isEmpty!34808 (t!376395 lt!2259440)))))

(assert (= (and d!1775893 res!2380327) b!5619489))

(assert (= (and d!1775893 c!986049) b!5619487))

(assert (= (and d!1775893 (not c!986049)) b!5619480))

(assert (= (and b!5619480 c!986048) b!5619482))

(assert (= (and b!5619480 (not c!986048)) b!5619481))

(assert (= (and d!1775893 res!2380326) b!5619488))

(assert (= (and b!5619488 c!986047) b!5619484))

(assert (= (and b!5619488 (not c!986047)) b!5619486))

(assert (= (and b!5619486 c!986050) b!5619483))

(assert (= (and b!5619486 (not c!986050)) b!5619485))

(declare-fun m!6593178 () Bool)

(assert (=> b!5619484 m!6593178))

(declare-fun m!6593180 () Bool)

(assert (=> b!5619485 m!6593180))

(declare-fun m!6593182 () Bool)

(assert (=> d!1775893 m!6593182))

(declare-fun m!6593184 () Bool)

(assert (=> d!1775893 m!6593184))

(declare-fun m!6593186 () Bool)

(assert (=> b!5619488 m!6593186))

(declare-fun m!6593188 () Bool)

(assert (=> b!5619486 m!6593188))

(assert (=> b!5619486 m!6593188))

(declare-fun m!6593190 () Bool)

(assert (=> b!5619486 m!6593190))

(declare-fun m!6593192 () Bool)

(assert (=> b!5619482 m!6593192))

(declare-fun m!6593194 () Bool)

(assert (=> b!5619483 m!6593194))

(declare-fun m!6593196 () Bool)

(assert (=> b!5619489 m!6593196))

(assert (=> b!5619007 d!1775893))

(declare-fun b!5619490 () Bool)

(declare-fun res!2380334 () Bool)

(declare-fun e!3464193 () Bool)

(assert (=> b!5619490 (=> res!2380334 e!3464193)))

(assert (=> b!5619490 (= res!2380334 (not (is-ElementMatch!15602 lt!2259462)))))

(declare-fun e!3464192 () Bool)

(assert (=> b!5619490 (= e!3464192 e!3464193)))

(declare-fun b!5619491 () Bool)

(declare-fun lt!2259659 () Bool)

(assert (=> b!5619491 (= e!3464192 (not lt!2259659))))

(declare-fun b!5619492 () Bool)

(declare-fun e!3464187 () Bool)

(declare-fun e!3464190 () Bool)

(assert (=> b!5619492 (= e!3464187 e!3464190)))

(declare-fun res!2380328 () Bool)

(assert (=> b!5619492 (=> res!2380328 e!3464190)))

(declare-fun call!423087 () Bool)

(assert (=> b!5619492 (= res!2380328 call!423087)))

(declare-fun b!5619493 () Bool)

(declare-fun e!3464191 () Bool)

(assert (=> b!5619493 (= e!3464191 (matchR!7787 (derivativeStep!4442 lt!2259462 (head!11957 s!2326)) (tail!11052 s!2326)))))

(declare-fun b!5619494 () Bool)

(declare-fun e!3464188 () Bool)

(assert (=> b!5619494 (= e!3464188 (= lt!2259659 call!423087))))

(declare-fun b!5619495 () Bool)

(assert (=> b!5619495 (= e!3464191 (nullable!5634 lt!2259462))))

(declare-fun b!5619496 () Bool)

(declare-fun res!2380335 () Bool)

(declare-fun e!3464189 () Bool)

(assert (=> b!5619496 (=> (not res!2380335) (not e!3464189))))

(assert (=> b!5619496 (= res!2380335 (not call!423087))))

(declare-fun b!5619497 () Bool)

(assert (=> b!5619497 (= e!3464190 (not (= (head!11957 s!2326) (c!985926 lt!2259462))))))

(declare-fun b!5619498 () Bool)

(assert (=> b!5619498 (= e!3464188 e!3464192)))

(declare-fun c!986053 () Bool)

(assert (=> b!5619498 (= c!986053 (is-EmptyLang!15602 lt!2259462))))

(declare-fun b!5619499 () Bool)

(declare-fun res!2380331 () Bool)

(assert (=> b!5619499 (=> res!2380331 e!3464193)))

(assert (=> b!5619499 (= res!2380331 e!3464189)))

(declare-fun res!2380333 () Bool)

(assert (=> b!5619499 (=> (not res!2380333) (not e!3464189))))

(assert (=> b!5619499 (= res!2380333 lt!2259659)))

(declare-fun d!1775897 () Bool)

(assert (=> d!1775897 e!3464188))

(declare-fun c!986052 () Bool)

(assert (=> d!1775897 (= c!986052 (is-EmptyExpr!15602 lt!2259462))))

(assert (=> d!1775897 (= lt!2259659 e!3464191)))

(declare-fun c!986051 () Bool)

(assert (=> d!1775897 (= c!986051 (isEmpty!34812 s!2326))))

(assert (=> d!1775897 (validRegex!7338 lt!2259462)))

(assert (=> d!1775897 (= (matchR!7787 lt!2259462 s!2326) lt!2259659)))

(declare-fun b!5619500 () Bool)

(assert (=> b!5619500 (= e!3464189 (= (head!11957 s!2326) (c!985926 lt!2259462)))))

(declare-fun b!5619501 () Bool)

(declare-fun res!2380332 () Bool)

(assert (=> b!5619501 (=> (not res!2380332) (not e!3464189))))

(assert (=> b!5619501 (= res!2380332 (isEmpty!34812 (tail!11052 s!2326)))))

(declare-fun b!5619502 () Bool)

(declare-fun res!2380329 () Bool)

(assert (=> b!5619502 (=> res!2380329 e!3464190)))

(assert (=> b!5619502 (= res!2380329 (not (isEmpty!34812 (tail!11052 s!2326))))))

(declare-fun bm!423082 () Bool)

(assert (=> bm!423082 (= call!423087 (isEmpty!34812 s!2326))))

(declare-fun b!5619503 () Bool)

(assert (=> b!5619503 (= e!3464193 e!3464187)))

(declare-fun res!2380330 () Bool)

(assert (=> b!5619503 (=> (not res!2380330) (not e!3464187))))

(assert (=> b!5619503 (= res!2380330 (not lt!2259659))))

(assert (= (and d!1775897 c!986051) b!5619495))

(assert (= (and d!1775897 (not c!986051)) b!5619493))

(assert (= (and d!1775897 c!986052) b!5619494))

(assert (= (and d!1775897 (not c!986052)) b!5619498))

(assert (= (and b!5619498 c!986053) b!5619491))

(assert (= (and b!5619498 (not c!986053)) b!5619490))

(assert (= (and b!5619490 (not res!2380334)) b!5619499))

(assert (= (and b!5619499 res!2380333) b!5619496))

(assert (= (and b!5619496 res!2380335) b!5619501))

(assert (= (and b!5619501 res!2380332) b!5619500))

(assert (= (and b!5619499 (not res!2380331)) b!5619503))

(assert (= (and b!5619503 res!2380330) b!5619492))

(assert (= (and b!5619492 (not res!2380328)) b!5619502))

(assert (= (and b!5619502 (not res!2380329)) b!5619497))

(assert (= (or b!5619494 b!5619492 b!5619496) bm!423082))

(assert (=> b!5619493 m!6592924))

(assert (=> b!5619493 m!6592924))

(declare-fun m!6593198 () Bool)

(assert (=> b!5619493 m!6593198))

(assert (=> b!5619493 m!6592928))

(assert (=> b!5619493 m!6593198))

(assert (=> b!5619493 m!6592928))

(declare-fun m!6593200 () Bool)

(assert (=> b!5619493 m!6593200))

(declare-fun m!6593202 () Bool)

(assert (=> b!5619495 m!6593202))

(assert (=> b!5619500 m!6592924))

(assert (=> b!5619502 m!6592928))

(assert (=> b!5619502 m!6592928))

(assert (=> b!5619502 m!6593128))

(assert (=> d!1775897 m!6592920))

(assert (=> d!1775897 m!6593102))

(assert (=> b!5619501 m!6592928))

(assert (=> b!5619501 m!6592928))

(assert (=> b!5619501 m!6593128))

(assert (=> bm!423082 m!6592920))

(assert (=> b!5619497 m!6592924))

(assert (=> b!5619007 d!1775897))

(declare-fun d!1775899 () Bool)

(declare-fun res!2380347 () Bool)

(declare-fun e!3464211 () Bool)

(assert (=> d!1775899 (=> res!2380347 e!3464211)))

(assert (=> d!1775899 (= res!2380347 (is-ElementMatch!15602 r!7292))))

(assert (=> d!1775899 (= (validRegex!7338 r!7292) e!3464211)))

(declare-fun b!5619522 () Bool)

(declare-fun res!2380348 () Bool)

(declare-fun e!3464208 () Bool)

(assert (=> b!5619522 (=> res!2380348 e!3464208)))

(assert (=> b!5619522 (= res!2380348 (not (is-Concat!24447 r!7292)))))

(declare-fun e!3464212 () Bool)

(assert (=> b!5619522 (= e!3464212 e!3464208)))

(declare-fun b!5619523 () Bool)

(declare-fun e!3464214 () Bool)

(declare-fun call!423094 () Bool)

(assert (=> b!5619523 (= e!3464214 call!423094)))

(declare-fun b!5619524 () Bool)

(declare-fun e!3464213 () Bool)

(declare-fun e!3464209 () Bool)

(assert (=> b!5619524 (= e!3464213 e!3464209)))

(declare-fun res!2380350 () Bool)

(assert (=> b!5619524 (= res!2380350 (not (nullable!5634 (reg!15931 r!7292))))))

(assert (=> b!5619524 (=> (not res!2380350) (not e!3464209))))

(declare-fun bm!423089 () Bool)

(declare-fun call!423096 () Bool)

(assert (=> bm!423089 (= call!423094 call!423096)))

(declare-fun b!5619525 () Bool)

(assert (=> b!5619525 (= e!3464213 e!3464212)))

(declare-fun c!986058 () Bool)

(assert (=> b!5619525 (= c!986058 (is-Union!15602 r!7292))))

(declare-fun c!986059 () Bool)

(declare-fun bm!423090 () Bool)

(assert (=> bm!423090 (= call!423096 (validRegex!7338 (ite c!986059 (reg!15931 r!7292) (ite c!986058 (regTwo!31717 r!7292) (regTwo!31716 r!7292)))))))

(declare-fun b!5619526 () Bool)

(assert (=> b!5619526 (= e!3464211 e!3464213)))

(assert (=> b!5619526 (= c!986059 (is-Star!15602 r!7292))))

(declare-fun b!5619527 () Bool)

(declare-fun e!3464210 () Bool)

(assert (=> b!5619527 (= e!3464210 call!423094)))

(declare-fun b!5619528 () Bool)

(assert (=> b!5619528 (= e!3464209 call!423096)))

(declare-fun b!5619529 () Bool)

(declare-fun res!2380346 () Bool)

(assert (=> b!5619529 (=> (not res!2380346) (not e!3464214))))

(declare-fun call!423095 () Bool)

(assert (=> b!5619529 (= res!2380346 call!423095)))

(assert (=> b!5619529 (= e!3464212 e!3464214)))

(declare-fun bm!423091 () Bool)

(assert (=> bm!423091 (= call!423095 (validRegex!7338 (ite c!986058 (regOne!31717 r!7292) (regOne!31716 r!7292))))))

(declare-fun b!5619530 () Bool)

(assert (=> b!5619530 (= e!3464208 e!3464210)))

(declare-fun res!2380349 () Bool)

(assert (=> b!5619530 (=> (not res!2380349) (not e!3464210))))

(assert (=> b!5619530 (= res!2380349 call!423095)))

(assert (= (and d!1775899 (not res!2380347)) b!5619526))

(assert (= (and b!5619526 c!986059) b!5619524))

(assert (= (and b!5619526 (not c!986059)) b!5619525))

(assert (= (and b!5619524 res!2380350) b!5619528))

(assert (= (and b!5619525 c!986058) b!5619529))

(assert (= (and b!5619525 (not c!986058)) b!5619522))

(assert (= (and b!5619529 res!2380346) b!5619523))

(assert (= (and b!5619522 (not res!2380348)) b!5619530))

(assert (= (and b!5619530 res!2380349) b!5619527))

(assert (= (or b!5619523 b!5619527) bm!423089))

(assert (= (or b!5619529 b!5619530) bm!423091))

(assert (= (or b!5619528 bm!423089) bm!423090))

(declare-fun m!6593204 () Bool)

(assert (=> b!5619524 m!6593204))

(declare-fun m!6593206 () Bool)

(assert (=> bm!423090 m!6593206))

(declare-fun m!6593208 () Bool)

(assert (=> bm!423091 m!6593208))

(assert (=> start!582262 d!1775899))

(assert (=> b!5618978 d!1775859))

(assert (=> b!5619000 d!1775859))

(declare-fun bs!1301377 () Bool)

(declare-fun d!1775901 () Bool)

(assert (= bs!1301377 (and d!1775901 d!1775855)))

(declare-fun lambda!301663 () Int)

(assert (=> bs!1301377 (= lambda!301663 lambda!301643)))

(declare-fun bs!1301378 () Bool)

(assert (= bs!1301378 (and d!1775901 d!1775893)))

(assert (=> bs!1301378 (= lambda!301663 lambda!301662)))

(declare-fun bs!1301379 () Bool)

(assert (= bs!1301379 (and d!1775901 d!1775801)))

(assert (=> bs!1301379 (= lambda!301663 lambda!301633)))

(declare-fun bs!1301380 () Bool)

(assert (= bs!1301380 (and d!1775901 d!1775885)))

(assert (=> bs!1301380 (= lambda!301663 lambda!301657)))

(declare-fun bs!1301381 () Bool)

(assert (= bs!1301381 (and d!1775901 d!1775865)))

(assert (=> bs!1301381 (= lambda!301663 lambda!301646)))

(declare-fun b!5619531 () Bool)

(declare-fun e!3464216 () Regex!15602)

(declare-fun e!3464217 () Regex!15602)

(assert (=> b!5619531 (= e!3464216 e!3464217)))

(declare-fun c!986061 () Bool)

(assert (=> b!5619531 (= c!986061 (is-Cons!62981 (exprs!5486 (h!69430 zl!343))))))

(declare-fun b!5619532 () Bool)

(assert (=> b!5619532 (= e!3464217 EmptyExpr!15602)))

(declare-fun b!5619533 () Bool)

(assert (=> b!5619533 (= e!3464217 (Concat!24447 (h!69429 (exprs!5486 (h!69430 zl!343))) (generalisedConcat!1217 (t!376395 (exprs!5486 (h!69430 zl!343))))))))

(declare-fun b!5619534 () Bool)

(declare-fun e!3464219 () Bool)

(declare-fun lt!2259660 () Regex!15602)

(assert (=> b!5619534 (= e!3464219 (= lt!2259660 (head!11958 (exprs!5486 (h!69430 zl!343)))))))

(declare-fun e!3464220 () Bool)

(assert (=> d!1775901 e!3464220))

(declare-fun res!2380351 () Bool)

(assert (=> d!1775901 (=> (not res!2380351) (not e!3464220))))

(assert (=> d!1775901 (= res!2380351 (validRegex!7338 lt!2259660))))

(assert (=> d!1775901 (= lt!2259660 e!3464216)))

(declare-fun c!986062 () Bool)

(declare-fun e!3464218 () Bool)

(assert (=> d!1775901 (= c!986062 e!3464218)))

(declare-fun res!2380352 () Bool)

(assert (=> d!1775901 (=> (not res!2380352) (not e!3464218))))

(assert (=> d!1775901 (= res!2380352 (is-Cons!62981 (exprs!5486 (h!69430 zl!343))))))

(assert (=> d!1775901 (forall!14761 (exprs!5486 (h!69430 zl!343)) lambda!301663)))

(assert (=> d!1775901 (= (generalisedConcat!1217 (exprs!5486 (h!69430 zl!343))) lt!2259660)))

(declare-fun b!5619535 () Bool)

(declare-fun e!3464215 () Bool)

(assert (=> b!5619535 (= e!3464215 (isEmptyExpr!1148 lt!2259660))))

(declare-fun b!5619536 () Bool)

(assert (=> b!5619536 (= e!3464219 (isConcat!671 lt!2259660))))

(declare-fun b!5619537 () Bool)

(assert (=> b!5619537 (= e!3464215 e!3464219)))

(declare-fun c!986063 () Bool)

(assert (=> b!5619537 (= c!986063 (isEmpty!34808 (tail!11053 (exprs!5486 (h!69430 zl!343)))))))

(declare-fun b!5619538 () Bool)

(assert (=> b!5619538 (= e!3464216 (h!69429 (exprs!5486 (h!69430 zl!343))))))

(declare-fun b!5619539 () Bool)

(assert (=> b!5619539 (= e!3464220 e!3464215)))

(declare-fun c!986060 () Bool)

(assert (=> b!5619539 (= c!986060 (isEmpty!34808 (exprs!5486 (h!69430 zl!343))))))

(declare-fun b!5619540 () Bool)

(assert (=> b!5619540 (= e!3464218 (isEmpty!34808 (t!376395 (exprs!5486 (h!69430 zl!343)))))))

(assert (= (and d!1775901 res!2380352) b!5619540))

(assert (= (and d!1775901 c!986062) b!5619538))

(assert (= (and d!1775901 (not c!986062)) b!5619531))

(assert (= (and b!5619531 c!986061) b!5619533))

(assert (= (and b!5619531 (not c!986061)) b!5619532))

(assert (= (and d!1775901 res!2380351) b!5619539))

(assert (= (and b!5619539 c!986060) b!5619535))

(assert (= (and b!5619539 (not c!986060)) b!5619537))

(assert (= (and b!5619537 c!986063) b!5619534))

(assert (= (and b!5619537 (not c!986063)) b!5619536))

(declare-fun m!6593210 () Bool)

(assert (=> b!5619535 m!6593210))

(declare-fun m!6593212 () Bool)

(assert (=> b!5619536 m!6593212))

(declare-fun m!6593214 () Bool)

(assert (=> d!1775901 m!6593214))

(declare-fun m!6593216 () Bool)

(assert (=> d!1775901 m!6593216))

(declare-fun m!6593218 () Bool)

(assert (=> b!5619539 m!6593218))

(declare-fun m!6593220 () Bool)

(assert (=> b!5619537 m!6593220))

(assert (=> b!5619537 m!6593220))

(declare-fun m!6593222 () Bool)

(assert (=> b!5619537 m!6593222))

(assert (=> b!5619533 m!6592638))

(declare-fun m!6593224 () Bool)

(assert (=> b!5619534 m!6593224))

(assert (=> b!5619540 m!6592648))

(assert (=> b!5618999 d!1775901))

(declare-fun bs!1301382 () Bool)

(declare-fun b!5619551 () Bool)

(assert (= bs!1301382 (and b!5619551 b!5619011)))

(declare-fun lambda!301664 () Int)

(assert (=> bs!1301382 (not (= lambda!301664 lambda!301614))))

(assert (=> bs!1301382 (not (= lambda!301664 lambda!301613))))

(declare-fun bs!1301383 () Bool)

(assert (= bs!1301383 (and b!5619551 b!5619475)))

(assert (=> bs!1301383 (not (= lambda!301664 lambda!301660))))

(declare-fun bs!1301384 () Bool)

(assert (= bs!1301384 (and b!5619551 b!5619441)))

(assert (=> bs!1301384 (not (= lambda!301664 lambda!301656))))

(declare-fun bs!1301385 () Bool)

(assert (= bs!1301385 (and b!5619551 d!1775835)))

(assert (=> bs!1301385 (not (= lambda!301664 lambda!301641))))

(declare-fun bs!1301386 () Bool)

(assert (= bs!1301386 (and b!5619551 b!5619479)))

(assert (=> bs!1301386 (= (and (= (reg!15931 r!7292) (reg!15931 lt!2259470)) (= r!7292 lt!2259470)) (= lambda!301664 lambda!301659))))

(declare-fun bs!1301387 () Bool)

(assert (= bs!1301387 (and b!5619551 b!5619445)))

(assert (=> bs!1301387 (= (and (= (reg!15931 r!7292) (reg!15931 lt!2259462)) (= r!7292 lt!2259462)) (= lambda!301664 lambda!301655))))

(declare-fun bs!1301388 () Bool)

(assert (= bs!1301388 (and b!5619551 d!1775833)))

(assert (=> bs!1301388 (not (= lambda!301664 lambda!301636))))

(assert (=> bs!1301385 (not (= lambda!301664 lambda!301642))))

(assert (=> b!5619551 true))

(assert (=> b!5619551 true))

(declare-fun bs!1301389 () Bool)

(declare-fun b!5619547 () Bool)

(assert (= bs!1301389 (and b!5619547 b!5619011)))

(declare-fun lambda!301667 () Int)

(assert (=> bs!1301389 (= lambda!301667 lambda!301614)))

(assert (=> bs!1301389 (not (= lambda!301667 lambda!301613))))

(declare-fun bs!1301390 () Bool)

(assert (= bs!1301390 (and b!5619547 b!5619475)))

(assert (=> bs!1301390 (= (and (= (regOne!31716 r!7292) (regOne!31716 lt!2259470)) (= (regTwo!31716 r!7292) (regTwo!31716 lt!2259470))) (= lambda!301667 lambda!301660))))

(declare-fun bs!1301391 () Bool)

(assert (= bs!1301391 (and b!5619547 b!5619551)))

(assert (=> bs!1301391 (not (= lambda!301667 lambda!301664))))

(declare-fun bs!1301392 () Bool)

(assert (= bs!1301392 (and b!5619547 b!5619441)))

(assert (=> bs!1301392 (= (and (= (regOne!31716 r!7292) (regOne!31716 lt!2259462)) (= (regTwo!31716 r!7292) (regTwo!31716 lt!2259462))) (= lambda!301667 lambda!301656))))

(declare-fun bs!1301393 () Bool)

(assert (= bs!1301393 (and b!5619547 d!1775835)))

(assert (=> bs!1301393 (not (= lambda!301667 lambda!301641))))

(declare-fun bs!1301394 () Bool)

(assert (= bs!1301394 (and b!5619547 b!5619479)))

(assert (=> bs!1301394 (not (= lambda!301667 lambda!301659))))

(declare-fun bs!1301395 () Bool)

(assert (= bs!1301395 (and b!5619547 b!5619445)))

(assert (=> bs!1301395 (not (= lambda!301667 lambda!301655))))

(declare-fun bs!1301396 () Bool)

(assert (= bs!1301396 (and b!5619547 d!1775833)))

(assert (=> bs!1301396 (not (= lambda!301667 lambda!301636))))

(assert (=> bs!1301393 (= lambda!301667 lambda!301642)))

(assert (=> b!5619547 true))

(assert (=> b!5619547 true))

(declare-fun b!5619541 () Bool)

(declare-fun e!3464221 () Bool)

(declare-fun e!3464223 () Bool)

(assert (=> b!5619541 (= e!3464221 e!3464223)))

(declare-fun res!2380354 () Bool)

(assert (=> b!5619541 (= res!2380354 (not (is-EmptyLang!15602 r!7292)))))

(assert (=> b!5619541 (=> (not res!2380354) (not e!3464223))))

(declare-fun b!5619542 () Bool)

(declare-fun res!2380355 () Bool)

(declare-fun e!3464224 () Bool)

(assert (=> b!5619542 (=> res!2380355 e!3464224)))

(declare-fun call!423098 () Bool)

(assert (=> b!5619542 (= res!2380355 call!423098)))

(declare-fun e!3464222 () Bool)

(assert (=> b!5619542 (= e!3464222 e!3464224)))

(declare-fun c!986065 () Bool)

(declare-fun bm!423092 () Bool)

(declare-fun call!423097 () Bool)

(assert (=> bm!423092 (= call!423097 (Exists!2702 (ite c!986065 lambda!301664 lambda!301667)))))

(declare-fun d!1775903 () Bool)

(declare-fun c!986067 () Bool)

(assert (=> d!1775903 (= c!986067 (is-EmptyExpr!15602 r!7292))))

(assert (=> d!1775903 (= (matchRSpec!2705 r!7292 s!2326) e!3464221)))

(declare-fun b!5619543 () Bool)

(declare-fun c!986066 () Bool)

(assert (=> b!5619543 (= c!986066 (is-ElementMatch!15602 r!7292))))

(declare-fun e!3464227 () Bool)

(assert (=> b!5619543 (= e!3464223 e!3464227)))

(declare-fun b!5619544 () Bool)

(assert (=> b!5619544 (= e!3464221 call!423098)))

(declare-fun b!5619545 () Bool)

(declare-fun e!3464225 () Bool)

(declare-fun e!3464226 () Bool)

(assert (=> b!5619545 (= e!3464225 e!3464226)))

(declare-fun res!2380353 () Bool)

(assert (=> b!5619545 (= res!2380353 (matchRSpec!2705 (regOne!31717 r!7292) s!2326))))

(assert (=> b!5619545 (=> res!2380353 e!3464226)))

(declare-fun b!5619546 () Bool)

(declare-fun c!986064 () Bool)

(assert (=> b!5619546 (= c!986064 (is-Union!15602 r!7292))))

(assert (=> b!5619546 (= e!3464227 e!3464225)))

(assert (=> b!5619547 (= e!3464222 call!423097)))

(declare-fun bm!423093 () Bool)

(assert (=> bm!423093 (= call!423098 (isEmpty!34812 s!2326))))

(declare-fun b!5619548 () Bool)

(assert (=> b!5619548 (= e!3464227 (= s!2326 (Cons!62983 (c!985926 r!7292) Nil!62983)))))

(declare-fun b!5619549 () Bool)

(assert (=> b!5619549 (= e!3464226 (matchRSpec!2705 (regTwo!31717 r!7292) s!2326))))

(declare-fun b!5619550 () Bool)

(assert (=> b!5619550 (= e!3464225 e!3464222)))

(assert (=> b!5619550 (= c!986065 (is-Star!15602 r!7292))))

(assert (=> b!5619551 (= e!3464224 call!423097)))

(assert (= (and d!1775903 c!986067) b!5619544))

(assert (= (and d!1775903 (not c!986067)) b!5619541))

(assert (= (and b!5619541 res!2380354) b!5619543))

(assert (= (and b!5619543 c!986066) b!5619548))

(assert (= (and b!5619543 (not c!986066)) b!5619546))

(assert (= (and b!5619546 c!986064) b!5619545))

(assert (= (and b!5619546 (not c!986064)) b!5619550))

(assert (= (and b!5619545 (not res!2380353)) b!5619549))

(assert (= (and b!5619550 c!986065) b!5619542))

(assert (= (and b!5619550 (not c!986065)) b!5619547))

(assert (= (and b!5619542 (not res!2380355)) b!5619551))

(assert (= (or b!5619551 b!5619547) bm!423092))

(assert (= (or b!5619544 b!5619542) bm!423093))

(declare-fun m!6593226 () Bool)

(assert (=> bm!423092 m!6593226))

(declare-fun m!6593228 () Bool)

(assert (=> b!5619545 m!6593228))

(assert (=> bm!423093 m!6592920))

(declare-fun m!6593230 () Bool)

(assert (=> b!5619549 m!6593230))

(assert (=> b!5618979 d!1775903))

(declare-fun b!5619572 () Bool)

(declare-fun res!2380366 () Bool)

(declare-fun e!3464246 () Bool)

(assert (=> b!5619572 (=> res!2380366 e!3464246)))

(assert (=> b!5619572 (= res!2380366 (not (is-ElementMatch!15602 r!7292)))))

(declare-fun e!3464245 () Bool)

(assert (=> b!5619572 (= e!3464245 e!3464246)))

(declare-fun b!5619573 () Bool)

(declare-fun lt!2259663 () Bool)

(assert (=> b!5619573 (= e!3464245 (not lt!2259663))))

(declare-fun b!5619574 () Bool)

(declare-fun e!3464240 () Bool)

(declare-fun e!3464243 () Bool)

(assert (=> b!5619574 (= e!3464240 e!3464243)))

(declare-fun res!2380360 () Bool)

(assert (=> b!5619574 (=> res!2380360 e!3464243)))

(declare-fun call!423099 () Bool)

(assert (=> b!5619574 (= res!2380360 call!423099)))

(declare-fun b!5619575 () Bool)

(declare-fun e!3464244 () Bool)

(assert (=> b!5619575 (= e!3464244 (matchR!7787 (derivativeStep!4442 r!7292 (head!11957 s!2326)) (tail!11052 s!2326)))))

(declare-fun b!5619576 () Bool)

(declare-fun e!3464241 () Bool)

(assert (=> b!5619576 (= e!3464241 (= lt!2259663 call!423099))))

(declare-fun b!5619577 () Bool)

(assert (=> b!5619577 (= e!3464244 (nullable!5634 r!7292))))

(declare-fun b!5619578 () Bool)

(declare-fun res!2380367 () Bool)

(declare-fun e!3464242 () Bool)

(assert (=> b!5619578 (=> (not res!2380367) (not e!3464242))))

(assert (=> b!5619578 (= res!2380367 (not call!423099))))

(declare-fun b!5619579 () Bool)

(assert (=> b!5619579 (= e!3464243 (not (= (head!11957 s!2326) (c!985926 r!7292))))))

(declare-fun b!5619580 () Bool)

(assert (=> b!5619580 (= e!3464241 e!3464245)))

(declare-fun c!986078 () Bool)

(assert (=> b!5619580 (= c!986078 (is-EmptyLang!15602 r!7292))))

(declare-fun b!5619581 () Bool)

(declare-fun res!2380363 () Bool)

(assert (=> b!5619581 (=> res!2380363 e!3464246)))

(assert (=> b!5619581 (= res!2380363 e!3464242)))

(declare-fun res!2380365 () Bool)

(assert (=> b!5619581 (=> (not res!2380365) (not e!3464242))))

(assert (=> b!5619581 (= res!2380365 lt!2259663)))

(declare-fun d!1775905 () Bool)

(assert (=> d!1775905 e!3464241))

(declare-fun c!986077 () Bool)

(assert (=> d!1775905 (= c!986077 (is-EmptyExpr!15602 r!7292))))

(assert (=> d!1775905 (= lt!2259663 e!3464244)))

(declare-fun c!986076 () Bool)

(assert (=> d!1775905 (= c!986076 (isEmpty!34812 s!2326))))

(assert (=> d!1775905 (validRegex!7338 r!7292)))

(assert (=> d!1775905 (= (matchR!7787 r!7292 s!2326) lt!2259663)))

(declare-fun b!5619582 () Bool)

(assert (=> b!5619582 (= e!3464242 (= (head!11957 s!2326) (c!985926 r!7292)))))

(declare-fun b!5619583 () Bool)

(declare-fun res!2380364 () Bool)

(assert (=> b!5619583 (=> (not res!2380364) (not e!3464242))))

(assert (=> b!5619583 (= res!2380364 (isEmpty!34812 (tail!11052 s!2326)))))

(declare-fun b!5619584 () Bool)

(declare-fun res!2380361 () Bool)

(assert (=> b!5619584 (=> res!2380361 e!3464243)))

(assert (=> b!5619584 (= res!2380361 (not (isEmpty!34812 (tail!11052 s!2326))))))

(declare-fun bm!423094 () Bool)

(assert (=> bm!423094 (= call!423099 (isEmpty!34812 s!2326))))

(declare-fun b!5619585 () Bool)

(assert (=> b!5619585 (= e!3464246 e!3464240)))

(declare-fun res!2380362 () Bool)

(assert (=> b!5619585 (=> (not res!2380362) (not e!3464240))))

(assert (=> b!5619585 (= res!2380362 (not lt!2259663))))

(assert (= (and d!1775905 c!986076) b!5619577))

(assert (= (and d!1775905 (not c!986076)) b!5619575))

(assert (= (and d!1775905 c!986077) b!5619576))

(assert (= (and d!1775905 (not c!986077)) b!5619580))

(assert (= (and b!5619580 c!986078) b!5619573))

(assert (= (and b!5619580 (not c!986078)) b!5619572))

(assert (= (and b!5619572 (not res!2380366)) b!5619581))

(assert (= (and b!5619581 res!2380365) b!5619578))

(assert (= (and b!5619578 res!2380367) b!5619583))

(assert (= (and b!5619583 res!2380364) b!5619582))

(assert (= (and b!5619581 (not res!2380363)) b!5619585))

(assert (= (and b!5619585 res!2380362) b!5619574))

(assert (= (and b!5619574 (not res!2380360)) b!5619584))

(assert (= (and b!5619584 (not res!2380361)) b!5619579))

(assert (= (or b!5619576 b!5619574 b!5619578) bm!423094))

(assert (=> b!5619575 m!6592924))

(assert (=> b!5619575 m!6592924))

(declare-fun m!6593232 () Bool)

(assert (=> b!5619575 m!6593232))

(assert (=> b!5619575 m!6592928))

(assert (=> b!5619575 m!6593232))

(assert (=> b!5619575 m!6592928))

(declare-fun m!6593234 () Bool)

(assert (=> b!5619575 m!6593234))

(declare-fun m!6593236 () Bool)

(assert (=> b!5619577 m!6593236))

(assert (=> b!5619582 m!6592924))

(assert (=> b!5619584 m!6592928))

(assert (=> b!5619584 m!6592928))

(assert (=> b!5619584 m!6593128))

(assert (=> d!1775905 m!6592920))

(assert (=> d!1775905 m!6592702))

(assert (=> b!5619583 m!6592928))

(assert (=> b!5619583 m!6592928))

(assert (=> b!5619583 m!6593128))

(assert (=> bm!423094 m!6592920))

(assert (=> b!5619579 m!6592924))

(assert (=> b!5618979 d!1775905))

(declare-fun d!1775907 () Bool)

(assert (=> d!1775907 (= (matchR!7787 r!7292 s!2326) (matchRSpec!2705 r!7292 s!2326))))

(declare-fun lt!2259664 () Unit!155908)

(assert (=> d!1775907 (= lt!2259664 (choose!42545 r!7292 s!2326))))

(assert (=> d!1775907 (validRegex!7338 r!7292)))

(assert (=> d!1775907 (= (mainMatchTheorem!2705 r!7292 s!2326) lt!2259664)))

(declare-fun bs!1301397 () Bool)

(assert (= bs!1301397 d!1775907))

(assert (=> bs!1301397 m!6592656))

(assert (=> bs!1301397 m!6592654))

(declare-fun m!6593238 () Bool)

(assert (=> bs!1301397 m!6593238))

(assert (=> bs!1301397 m!6592702))

(assert (=> b!5618979 d!1775907))

(declare-fun d!1775909 () Bool)

(assert (=> d!1775909 (= (flatMap!1215 z!1189 lambda!301615) (choose!42538 z!1189 lambda!301615))))

(declare-fun bs!1301398 () Bool)

(assert (= bs!1301398 d!1775909))

(declare-fun m!6593240 () Bool)

(assert (=> bs!1301398 m!6593240))

(assert (=> b!5619001 d!1775909))

(declare-fun d!1775911 () Bool)

(assert (=> d!1775911 (= (nullable!5634 (h!69429 (exprs!5486 (h!69430 zl!343)))) (nullableFct!1735 (h!69429 (exprs!5486 (h!69430 zl!343)))))))

(declare-fun bs!1301399 () Bool)

(assert (= bs!1301399 d!1775911))

(declare-fun m!6593242 () Bool)

(assert (=> bs!1301399 m!6593242))

(assert (=> b!5619001 d!1775911))

(declare-fun d!1775913 () Bool)

(declare-fun c!986079 () Bool)

(declare-fun e!3464247 () Bool)

(assert (=> d!1775913 (= c!986079 e!3464247)))

(declare-fun res!2380368 () Bool)

(assert (=> d!1775913 (=> (not res!2380368) (not e!3464247))))

(assert (=> d!1775913 (= res!2380368 (is-Cons!62981 (exprs!5486 (Context!9973 (Cons!62981 (h!69429 (exprs!5486 (h!69430 zl!343))) (t!376395 (exprs!5486 (h!69430 zl!343))))))))))

(declare-fun e!3464249 () (Set Context!9972))

(assert (=> d!1775913 (= (derivationStepZipperUp!870 (Context!9973 (Cons!62981 (h!69429 (exprs!5486 (h!69430 zl!343))) (t!376395 (exprs!5486 (h!69430 zl!343))))) (h!69431 s!2326)) e!3464249)))

(declare-fun b!5619586 () Bool)

(assert (=> b!5619586 (= e!3464247 (nullable!5634 (h!69429 (exprs!5486 (Context!9973 (Cons!62981 (h!69429 (exprs!5486 (h!69430 zl!343))) (t!376395 (exprs!5486 (h!69430 zl!343)))))))))))

(declare-fun b!5619587 () Bool)

(declare-fun e!3464248 () (Set Context!9972))

(declare-fun call!423100 () (Set Context!9972))

(assert (=> b!5619587 (= e!3464248 call!423100)))

(declare-fun b!5619588 () Bool)

(assert (=> b!5619588 (= e!3464248 (as set.empty (Set Context!9972)))))

(declare-fun bm!423095 () Bool)

(assert (=> bm!423095 (= call!423100 (derivationStepZipperDown!944 (h!69429 (exprs!5486 (Context!9973 (Cons!62981 (h!69429 (exprs!5486 (h!69430 zl!343))) (t!376395 (exprs!5486 (h!69430 zl!343))))))) (Context!9973 (t!376395 (exprs!5486 (Context!9973 (Cons!62981 (h!69429 (exprs!5486 (h!69430 zl!343))) (t!376395 (exprs!5486 (h!69430 zl!343)))))))) (h!69431 s!2326)))))

(declare-fun b!5619589 () Bool)

(assert (=> b!5619589 (= e!3464249 e!3464248)))

(declare-fun c!986080 () Bool)

(assert (=> b!5619589 (= c!986080 (is-Cons!62981 (exprs!5486 (Context!9973 (Cons!62981 (h!69429 (exprs!5486 (h!69430 zl!343))) (t!376395 (exprs!5486 (h!69430 zl!343))))))))))

(declare-fun b!5619590 () Bool)

(assert (=> b!5619590 (= e!3464249 (set.union call!423100 (derivationStepZipperUp!870 (Context!9973 (t!376395 (exprs!5486 (Context!9973 (Cons!62981 (h!69429 (exprs!5486 (h!69430 zl!343))) (t!376395 (exprs!5486 (h!69430 zl!343)))))))) (h!69431 s!2326))))))

(assert (= (and d!1775913 res!2380368) b!5619586))

(assert (= (and d!1775913 c!986079) b!5619590))

(assert (= (and d!1775913 (not c!986079)) b!5619589))

(assert (= (and b!5619589 c!986080) b!5619587))

(assert (= (and b!5619589 (not c!986080)) b!5619588))

(assert (= (or b!5619590 b!5619587) bm!423095))

(declare-fun m!6593244 () Bool)

(assert (=> b!5619586 m!6593244))

(declare-fun m!6593246 () Bool)

(assert (=> bm!423095 m!6593246))

(declare-fun m!6593248 () Bool)

(assert (=> b!5619590 m!6593248))

(assert (=> b!5619001 d!1775913))

(declare-fun d!1775915 () Bool)

(declare-fun c!986081 () Bool)

(declare-fun e!3464250 () Bool)

(assert (=> d!1775915 (= c!986081 e!3464250)))

(declare-fun res!2380369 () Bool)

(assert (=> d!1775915 (=> (not res!2380369) (not e!3464250))))

(assert (=> d!1775915 (= res!2380369 (is-Cons!62981 (exprs!5486 lt!2259472)))))

(declare-fun e!3464252 () (Set Context!9972))

(assert (=> d!1775915 (= (derivationStepZipperUp!870 lt!2259472 (h!69431 s!2326)) e!3464252)))

(declare-fun b!5619591 () Bool)

(assert (=> b!5619591 (= e!3464250 (nullable!5634 (h!69429 (exprs!5486 lt!2259472))))))

(declare-fun b!5619592 () Bool)

(declare-fun e!3464251 () (Set Context!9972))

(declare-fun call!423101 () (Set Context!9972))

(assert (=> b!5619592 (= e!3464251 call!423101)))

(declare-fun b!5619593 () Bool)

(assert (=> b!5619593 (= e!3464251 (as set.empty (Set Context!9972)))))

(declare-fun bm!423096 () Bool)

(assert (=> bm!423096 (= call!423101 (derivationStepZipperDown!944 (h!69429 (exprs!5486 lt!2259472)) (Context!9973 (t!376395 (exprs!5486 lt!2259472))) (h!69431 s!2326)))))

(declare-fun b!5619594 () Bool)

(assert (=> b!5619594 (= e!3464252 e!3464251)))

(declare-fun c!986082 () Bool)

(assert (=> b!5619594 (= c!986082 (is-Cons!62981 (exprs!5486 lt!2259472)))))

(declare-fun b!5619595 () Bool)

(assert (=> b!5619595 (= e!3464252 (set.union call!423101 (derivationStepZipperUp!870 (Context!9973 (t!376395 (exprs!5486 lt!2259472))) (h!69431 s!2326))))))

(assert (= (and d!1775915 res!2380369) b!5619591))

(assert (= (and d!1775915 c!986081) b!5619595))

(assert (= (and d!1775915 (not c!986081)) b!5619594))

(assert (= (and b!5619594 c!986082) b!5619592))

(assert (= (and b!5619594 (not c!986082)) b!5619593))

(assert (= (or b!5619595 b!5619592) bm!423096))

(declare-fun m!6593250 () Bool)

(assert (=> b!5619591 m!6593250))

(declare-fun m!6593252 () Bool)

(assert (=> bm!423096 m!6593252))

(declare-fun m!6593254 () Bool)

(assert (=> b!5619595 m!6593254))

(assert (=> b!5619001 d!1775915))

(declare-fun b!5619596 () Bool)

(declare-fun e!3464254 () (Set Context!9972))

(assert (=> b!5619596 (= e!3464254 (as set.empty (Set Context!9972)))))

(declare-fun b!5619597 () Bool)

(declare-fun e!3464257 () (Set Context!9972))

(declare-fun call!423103 () (Set Context!9972))

(assert (=> b!5619597 (= e!3464257 call!423103)))

(declare-fun call!423106 () List!63105)

(declare-fun c!986085 () Bool)

(declare-fun c!986084 () Bool)

(declare-fun bm!423097 () Bool)

(assert (=> bm!423097 (= call!423106 ($colon$colon!1657 (exprs!5486 lt!2259472) (ite (or c!986084 c!986085) (regTwo!31716 (h!69429 (exprs!5486 (h!69430 zl!343)))) (h!69429 (exprs!5486 (h!69430 zl!343))))))))

(declare-fun bm!423098 () Bool)

(declare-fun call!423104 () (Set Context!9972))

(declare-fun c!986083 () Bool)

(declare-fun call!423107 () List!63105)

(assert (=> bm!423098 (= call!423104 (derivationStepZipperDown!944 (ite c!986083 (regTwo!31717 (h!69429 (exprs!5486 (h!69430 zl!343)))) (ite c!986084 (regTwo!31716 (h!69429 (exprs!5486 (h!69430 zl!343)))) (ite c!986085 (regOne!31716 (h!69429 (exprs!5486 (h!69430 zl!343)))) (reg!15931 (h!69429 (exprs!5486 (h!69430 zl!343))))))) (ite (or c!986083 c!986084) lt!2259472 (Context!9973 call!423107)) (h!69431 s!2326)))))

(declare-fun b!5619598 () Bool)

(declare-fun e!3464255 () Bool)

(assert (=> b!5619598 (= e!3464255 (nullable!5634 (regOne!31716 (h!69429 (exprs!5486 (h!69430 zl!343))))))))

(declare-fun call!423102 () (Set Context!9972))

(declare-fun bm!423099 () Bool)

(assert (=> bm!423099 (= call!423102 (derivationStepZipperDown!944 (ite c!986083 (regOne!31717 (h!69429 (exprs!5486 (h!69430 zl!343)))) (regOne!31716 (h!69429 (exprs!5486 (h!69430 zl!343))))) (ite c!986083 lt!2259472 (Context!9973 call!423106)) (h!69431 s!2326)))))

(declare-fun b!5619599 () Bool)

(declare-fun e!3464258 () (Set Context!9972))

(declare-fun call!423105 () (Set Context!9972))

(assert (=> b!5619599 (= e!3464258 (set.union call!423102 call!423105))))

(declare-fun b!5619601 () Bool)

(assert (=> b!5619601 (= e!3464258 e!3464257)))

(assert (=> b!5619601 (= c!986085 (is-Concat!24447 (h!69429 (exprs!5486 (h!69430 zl!343)))))))

(declare-fun b!5619602 () Bool)

(declare-fun e!3464253 () (Set Context!9972))

(assert (=> b!5619602 (= e!3464253 (set.union call!423102 call!423104))))

(declare-fun b!5619603 () Bool)

(declare-fun c!986086 () Bool)

(assert (=> b!5619603 (= c!986086 (is-Star!15602 (h!69429 (exprs!5486 (h!69430 zl!343)))))))

(assert (=> b!5619603 (= e!3464257 e!3464254)))

(declare-fun bm!423100 () Bool)

(assert (=> bm!423100 (= call!423103 call!423105)))

(declare-fun bm!423101 () Bool)

(assert (=> bm!423101 (= call!423105 call!423104)))

(declare-fun d!1775917 () Bool)

(declare-fun c!986087 () Bool)

(assert (=> d!1775917 (= c!986087 (and (is-ElementMatch!15602 (h!69429 (exprs!5486 (h!69430 zl!343)))) (= (c!985926 (h!69429 (exprs!5486 (h!69430 zl!343)))) (h!69431 s!2326))))))

(declare-fun e!3464256 () (Set Context!9972))

(assert (=> d!1775917 (= (derivationStepZipperDown!944 (h!69429 (exprs!5486 (h!69430 zl!343))) lt!2259472 (h!69431 s!2326)) e!3464256)))

(declare-fun b!5619600 () Bool)

(assert (=> b!5619600 (= c!986084 e!3464255)))

(declare-fun res!2380370 () Bool)

(assert (=> b!5619600 (=> (not res!2380370) (not e!3464255))))

(assert (=> b!5619600 (= res!2380370 (is-Concat!24447 (h!69429 (exprs!5486 (h!69430 zl!343)))))))

(assert (=> b!5619600 (= e!3464253 e!3464258)))

(declare-fun b!5619604 () Bool)

(assert (=> b!5619604 (= e!3464256 e!3464253)))

(assert (=> b!5619604 (= c!986083 (is-Union!15602 (h!69429 (exprs!5486 (h!69430 zl!343)))))))

(declare-fun b!5619605 () Bool)

(assert (=> b!5619605 (= e!3464256 (set.insert lt!2259472 (as set.empty (Set Context!9972))))))

(declare-fun b!5619606 () Bool)

(assert (=> b!5619606 (= e!3464254 call!423103)))

(declare-fun bm!423102 () Bool)

(assert (=> bm!423102 (= call!423107 call!423106)))

(assert (= (and d!1775917 c!986087) b!5619605))

(assert (= (and d!1775917 (not c!986087)) b!5619604))

(assert (= (and b!5619604 c!986083) b!5619602))

(assert (= (and b!5619604 (not c!986083)) b!5619600))

(assert (= (and b!5619600 res!2380370) b!5619598))

(assert (= (and b!5619600 c!986084) b!5619599))

(assert (= (and b!5619600 (not c!986084)) b!5619601))

(assert (= (and b!5619601 c!986085) b!5619597))

(assert (= (and b!5619601 (not c!986085)) b!5619603))

(assert (= (and b!5619603 c!986086) b!5619606))

(assert (= (and b!5619603 (not c!986086)) b!5619596))

(assert (= (or b!5619597 b!5619606) bm!423102))

(assert (= (or b!5619597 b!5619606) bm!423100))

(assert (= (or b!5619599 bm!423102) bm!423097))

(assert (= (or b!5619599 bm!423100) bm!423101))

(assert (= (or b!5619602 bm!423101) bm!423098))

(assert (= (or b!5619602 b!5619599) bm!423099))

(declare-fun m!6593256 () Bool)

(assert (=> b!5619598 m!6593256))

(declare-fun m!6593258 () Bool)

(assert (=> bm!423097 m!6593258))

(declare-fun m!6593260 () Bool)

(assert (=> bm!423099 m!6593260))

(assert (=> b!5619605 m!6593004))

(declare-fun m!6593262 () Bool)

(assert (=> bm!423098 m!6593262))

(assert (=> b!5619001 d!1775917))

(declare-fun d!1775919 () Bool)

(declare-fun c!986088 () Bool)

(declare-fun e!3464259 () Bool)

(assert (=> d!1775919 (= c!986088 e!3464259)))

(declare-fun res!2380371 () Bool)

(assert (=> d!1775919 (=> (not res!2380371) (not e!3464259))))

(assert (=> d!1775919 (= res!2380371 (is-Cons!62981 (exprs!5486 (h!69430 zl!343))))))

(declare-fun e!3464261 () (Set Context!9972))

(assert (=> d!1775919 (= (derivationStepZipperUp!870 (h!69430 zl!343) (h!69431 s!2326)) e!3464261)))

(declare-fun b!5619607 () Bool)

(assert (=> b!5619607 (= e!3464259 (nullable!5634 (h!69429 (exprs!5486 (h!69430 zl!343)))))))

(declare-fun b!5619608 () Bool)

(declare-fun e!3464260 () (Set Context!9972))

(declare-fun call!423108 () (Set Context!9972))

(assert (=> b!5619608 (= e!3464260 call!423108)))

(declare-fun b!5619609 () Bool)

(assert (=> b!5619609 (= e!3464260 (as set.empty (Set Context!9972)))))

(declare-fun bm!423103 () Bool)

(assert (=> bm!423103 (= call!423108 (derivationStepZipperDown!944 (h!69429 (exprs!5486 (h!69430 zl!343))) (Context!9973 (t!376395 (exprs!5486 (h!69430 zl!343)))) (h!69431 s!2326)))))

(declare-fun b!5619610 () Bool)

(assert (=> b!5619610 (= e!3464261 e!3464260)))

(declare-fun c!986089 () Bool)

(assert (=> b!5619610 (= c!986089 (is-Cons!62981 (exprs!5486 (h!69430 zl!343))))))

(declare-fun b!5619611 () Bool)

(assert (=> b!5619611 (= e!3464261 (set.union call!423108 (derivationStepZipperUp!870 (Context!9973 (t!376395 (exprs!5486 (h!69430 zl!343)))) (h!69431 s!2326))))))

(assert (= (and d!1775919 res!2380371) b!5619607))

(assert (= (and d!1775919 c!986088) b!5619611))

(assert (= (and d!1775919 (not c!986088)) b!5619610))

(assert (= (and b!5619610 c!986089) b!5619608))

(assert (= (and b!5619610 (not c!986089)) b!5619609))

(assert (= (or b!5619611 b!5619608) bm!423103))

(assert (=> b!5619607 m!6592684))

(declare-fun m!6593264 () Bool)

(assert (=> bm!423103 m!6593264))

(declare-fun m!6593266 () Bool)

(assert (=> b!5619611 m!6593266))

(assert (=> b!5619001 d!1775919))

(declare-fun d!1775921 () Bool)

(assert (=> d!1775921 (= (flatMap!1215 z!1189 lambda!301615) (dynLambda!24633 lambda!301615 (h!69430 zl!343)))))

(declare-fun lt!2259665 () Unit!155908)

(assert (=> d!1775921 (= lt!2259665 (choose!42539 z!1189 (h!69430 zl!343) lambda!301615))))

(assert (=> d!1775921 (= z!1189 (set.insert (h!69430 zl!343) (as set.empty (Set Context!9972))))))

(assert (=> d!1775921 (= (lemmaFlatMapOnSingletonSet!747 z!1189 (h!69430 zl!343) lambda!301615) lt!2259665)))

(declare-fun b_lambda!212671 () Bool)

(assert (=> (not b_lambda!212671) (not d!1775921)))

(declare-fun bs!1301400 () Bool)

(assert (= bs!1301400 d!1775921))

(assert (=> bs!1301400 m!6592686))

(declare-fun m!6593268 () Bool)

(assert (=> bs!1301400 m!6593268))

(declare-fun m!6593270 () Bool)

(assert (=> bs!1301400 m!6593270))

(declare-fun m!6593272 () Bool)

(assert (=> bs!1301400 m!6593272))

(assert (=> b!5619001 d!1775921))

(declare-fun d!1775923 () Bool)

(declare-fun lt!2259669 () Int)

(assert (=> d!1775923 (>= lt!2259669 0)))

(declare-fun e!3464270 () Int)

(assert (=> d!1775923 (= lt!2259669 e!3464270)))

(declare-fun c!986096 () Bool)

(assert (=> d!1775923 (= c!986096 (is-Cons!62982 zl!343))))

(assert (=> d!1775923 (= (zipperDepthTotal!227 zl!343) lt!2259669)))

(declare-fun b!5619626 () Bool)

(declare-fun contextDepthTotal!203 (Context!9972) Int)

(assert (=> b!5619626 (= e!3464270 (+ (contextDepthTotal!203 (h!69430 zl!343)) (zipperDepthTotal!227 (t!376396 zl!343))))))

(declare-fun b!5619627 () Bool)

(assert (=> b!5619627 (= e!3464270 0)))

(assert (= (and d!1775923 c!986096) b!5619626))

(assert (= (and d!1775923 (not c!986096)) b!5619627))

(declare-fun m!6593294 () Bool)

(assert (=> b!5619626 m!6593294))

(declare-fun m!6593296 () Bool)

(assert (=> b!5619626 m!6593296))

(assert (=> b!5618981 d!1775923))

(declare-fun d!1775927 () Bool)

(declare-fun lt!2259670 () Int)

(assert (=> d!1775927 (>= lt!2259670 0)))

(declare-fun e!3464271 () Int)

(assert (=> d!1775927 (= lt!2259670 e!3464271)))

(declare-fun c!986097 () Bool)

(assert (=> d!1775927 (= c!986097 (is-Cons!62982 lt!2259454))))

(assert (=> d!1775927 (= (zipperDepthTotal!227 lt!2259454) lt!2259670)))

(declare-fun b!5619628 () Bool)

(assert (=> b!5619628 (= e!3464271 (+ (contextDepthTotal!203 (h!69430 lt!2259454)) (zipperDepthTotal!227 (t!376396 lt!2259454))))))

(declare-fun b!5619629 () Bool)

(assert (=> b!5619629 (= e!3464271 0)))

(assert (= (and d!1775927 c!986097) b!5619628))

(assert (= (and d!1775927 (not c!986097)) b!5619629))

(declare-fun m!6593298 () Bool)

(assert (=> b!5619628 m!6593298))

(declare-fun m!6593300 () Bool)

(assert (=> b!5619628 m!6593300))

(assert (=> b!5618981 d!1775927))

(assert (=> b!5618982 d!1775863))

(assert (=> b!5619002 d!1775889))

(declare-fun d!1775929 () Bool)

(assert (=> d!1775929 (= (isEmpty!34809 (t!376396 zl!343)) (is-Nil!62982 (t!376396 zl!343)))))

(assert (=> b!5618993 d!1775929))

(declare-fun d!1775931 () Bool)

(declare-fun lt!2259673 () Regex!15602)

(assert (=> d!1775931 (validRegex!7338 lt!2259673)))

(assert (=> d!1775931 (= lt!2259673 (generalisedUnion!1465 (unfocusZipperList!1030 zl!343)))))

(assert (=> d!1775931 (= (unfocusZipper!1344 zl!343) lt!2259673)))

(declare-fun bs!1301404 () Bool)

(assert (= bs!1301404 d!1775931))

(declare-fun m!6593302 () Bool)

(assert (=> bs!1301404 m!6593302))

(assert (=> bs!1301404 m!6592734))

(assert (=> bs!1301404 m!6592734))

(assert (=> bs!1301404 m!6592736))

(assert (=> b!5619015 d!1775931))

(declare-fun d!1775933 () Bool)

(declare-fun lt!2259674 () Int)

(assert (=> d!1775933 (>= lt!2259674 0)))

(declare-fun e!3464279 () Int)

(assert (=> d!1775933 (= lt!2259674 e!3464279)))

(declare-fun c!986102 () Bool)

(assert (=> d!1775933 (= c!986102 (is-Cons!62982 lt!2259445))))

(assert (=> d!1775933 (= (zipperDepthTotal!227 lt!2259445) lt!2259674)))

(declare-fun b!5619641 () Bool)

(assert (=> b!5619641 (= e!3464279 (+ (contextDepthTotal!203 (h!69430 lt!2259445)) (zipperDepthTotal!227 (t!376396 lt!2259445))))))

(declare-fun b!5619642 () Bool)

(assert (=> b!5619642 (= e!3464279 0)))

(assert (= (and d!1775933 c!986102) b!5619641))

(assert (= (and d!1775933 (not c!986102)) b!5619642))

(declare-fun m!6593304 () Bool)

(assert (=> b!5619641 m!6593304))

(declare-fun m!6593306 () Bool)

(assert (=> b!5619641 m!6593306))

(assert (=> b!5618994 d!1775933))

(assert (=> b!5618996 d!1775863))

(declare-fun bs!1301409 () Bool)

(declare-fun d!1775935 () Bool)

(assert (= bs!1301409 (and d!1775935 d!1775855)))

(declare-fun lambda!301673 () Int)

(assert (=> bs!1301409 (= lambda!301673 lambda!301643)))

(declare-fun bs!1301410 () Bool)

(assert (= bs!1301410 (and d!1775935 d!1775893)))

(assert (=> bs!1301410 (= lambda!301673 lambda!301662)))

(declare-fun bs!1301411 () Bool)

(assert (= bs!1301411 (and d!1775935 d!1775801)))

(assert (=> bs!1301411 (= lambda!301673 lambda!301633)))

(declare-fun bs!1301412 () Bool)

(assert (= bs!1301412 (and d!1775935 d!1775901)))

(assert (=> bs!1301412 (= lambda!301673 lambda!301663)))

(declare-fun bs!1301413 () Bool)

(assert (= bs!1301413 (and d!1775935 d!1775885)))

(assert (=> bs!1301413 (= lambda!301673 lambda!301657)))

(declare-fun bs!1301414 () Bool)

(assert (= bs!1301414 (and d!1775935 d!1775865)))

(assert (=> bs!1301414 (= lambda!301673 lambda!301646)))

(declare-fun b!5619663 () Bool)

(declare-fun e!3464292 () Regex!15602)

(declare-fun e!3464296 () Regex!15602)

(assert (=> b!5619663 (= e!3464292 e!3464296)))

(declare-fun c!986113 () Bool)

(assert (=> b!5619663 (= c!986113 (is-Cons!62981 (unfocusZipperList!1030 zl!343)))))

(declare-fun b!5619664 () Bool)

(assert (=> b!5619664 (= e!3464296 (Union!15602 (h!69429 (unfocusZipperList!1030 zl!343)) (generalisedUnion!1465 (t!376395 (unfocusZipperList!1030 zl!343)))))))

(declare-fun b!5619665 () Bool)

(declare-fun e!3464297 () Bool)

(declare-fun lt!2259677 () Regex!15602)

(declare-fun isUnion!588 (Regex!15602) Bool)

(assert (=> b!5619665 (= e!3464297 (isUnion!588 lt!2259677))))

(declare-fun e!3464295 () Bool)

(assert (=> d!1775935 e!3464295))

(declare-fun res!2380381 () Bool)

(assert (=> d!1775935 (=> (not res!2380381) (not e!3464295))))

(assert (=> d!1775935 (= res!2380381 (validRegex!7338 lt!2259677))))

(assert (=> d!1775935 (= lt!2259677 e!3464292)))

(declare-fun c!986114 () Bool)

(declare-fun e!3464294 () Bool)

(assert (=> d!1775935 (= c!986114 e!3464294)))

(declare-fun res!2380382 () Bool)

(assert (=> d!1775935 (=> (not res!2380382) (not e!3464294))))

(assert (=> d!1775935 (= res!2380382 (is-Cons!62981 (unfocusZipperList!1030 zl!343)))))

(assert (=> d!1775935 (forall!14761 (unfocusZipperList!1030 zl!343) lambda!301673)))

(assert (=> d!1775935 (= (generalisedUnion!1465 (unfocusZipperList!1030 zl!343)) lt!2259677)))

(declare-fun b!5619666 () Bool)

(declare-fun e!3464293 () Bool)

(declare-fun isEmptyLang!1158 (Regex!15602) Bool)

(assert (=> b!5619666 (= e!3464293 (isEmptyLang!1158 lt!2259677))))

(declare-fun b!5619667 () Bool)

(assert (=> b!5619667 (= e!3464294 (isEmpty!34808 (t!376395 (unfocusZipperList!1030 zl!343))))))

(declare-fun b!5619668 () Bool)

(assert (=> b!5619668 (= e!3464297 (= lt!2259677 (head!11958 (unfocusZipperList!1030 zl!343))))))

(declare-fun b!5619669 () Bool)

(assert (=> b!5619669 (= e!3464292 (h!69429 (unfocusZipperList!1030 zl!343)))))

(declare-fun b!5619670 () Bool)

(assert (=> b!5619670 (= e!3464296 EmptyLang!15602)))

(declare-fun b!5619671 () Bool)

(assert (=> b!5619671 (= e!3464295 e!3464293)))

(declare-fun c!986111 () Bool)

(assert (=> b!5619671 (= c!986111 (isEmpty!34808 (unfocusZipperList!1030 zl!343)))))

(declare-fun b!5619672 () Bool)

(assert (=> b!5619672 (= e!3464293 e!3464297)))

(declare-fun c!986112 () Bool)

(assert (=> b!5619672 (= c!986112 (isEmpty!34808 (tail!11053 (unfocusZipperList!1030 zl!343))))))

(assert (= (and d!1775935 res!2380382) b!5619667))

(assert (= (and d!1775935 c!986114) b!5619669))

(assert (= (and d!1775935 (not c!986114)) b!5619663))

(assert (= (and b!5619663 c!986113) b!5619664))

(assert (= (and b!5619663 (not c!986113)) b!5619670))

(assert (= (and d!1775935 res!2380381) b!5619671))

(assert (= (and b!5619671 c!986111) b!5619666))

(assert (= (and b!5619671 (not c!986111)) b!5619672))

(assert (= (and b!5619672 c!986112) b!5619668))

(assert (= (and b!5619672 (not c!986112)) b!5619665))

(assert (=> b!5619672 m!6592734))

(declare-fun m!6593314 () Bool)

(assert (=> b!5619672 m!6593314))

(assert (=> b!5619672 m!6593314))

(declare-fun m!6593316 () Bool)

(assert (=> b!5619672 m!6593316))

(declare-fun m!6593318 () Bool)

(assert (=> b!5619665 m!6593318))

(assert (=> b!5619671 m!6592734))

(declare-fun m!6593320 () Bool)

(assert (=> b!5619671 m!6593320))

(declare-fun m!6593322 () Bool)

(assert (=> b!5619664 m!6593322))

(declare-fun m!6593324 () Bool)

(assert (=> b!5619666 m!6593324))

(declare-fun m!6593326 () Bool)

(assert (=> b!5619667 m!6593326))

(assert (=> b!5619668 m!6592734))

(declare-fun m!6593328 () Bool)

(assert (=> b!5619668 m!6593328))

(declare-fun m!6593330 () Bool)

(assert (=> d!1775935 m!6593330))

(assert (=> d!1775935 m!6592734))

(declare-fun m!6593332 () Bool)

(assert (=> d!1775935 m!6593332))

(assert (=> b!5618997 d!1775935))

(declare-fun bs!1301415 () Bool)

(declare-fun d!1775939 () Bool)

(assert (= bs!1301415 (and d!1775939 d!1775855)))

(declare-fun lambda!301676 () Int)

(assert (=> bs!1301415 (= lambda!301676 lambda!301643)))

(declare-fun bs!1301416 () Bool)

(assert (= bs!1301416 (and d!1775939 d!1775893)))

(assert (=> bs!1301416 (= lambda!301676 lambda!301662)))

(declare-fun bs!1301417 () Bool)

(assert (= bs!1301417 (and d!1775939 d!1775935)))

(assert (=> bs!1301417 (= lambda!301676 lambda!301673)))

(declare-fun bs!1301418 () Bool)

(assert (= bs!1301418 (and d!1775939 d!1775801)))

(assert (=> bs!1301418 (= lambda!301676 lambda!301633)))

(declare-fun bs!1301419 () Bool)

(assert (= bs!1301419 (and d!1775939 d!1775901)))

(assert (=> bs!1301419 (= lambda!301676 lambda!301663)))

(declare-fun bs!1301420 () Bool)

(assert (= bs!1301420 (and d!1775939 d!1775885)))

(assert (=> bs!1301420 (= lambda!301676 lambda!301657)))

(declare-fun bs!1301421 () Bool)

(assert (= bs!1301421 (and d!1775939 d!1775865)))

(assert (=> bs!1301421 (= lambda!301676 lambda!301646)))

(declare-fun lt!2259680 () List!63105)

(assert (=> d!1775939 (forall!14761 lt!2259680 lambda!301676)))

(declare-fun e!3464300 () List!63105)

(assert (=> d!1775939 (= lt!2259680 e!3464300)))

(declare-fun c!986117 () Bool)

(assert (=> d!1775939 (= c!986117 (is-Cons!62982 zl!343))))

(assert (=> d!1775939 (= (unfocusZipperList!1030 zl!343) lt!2259680)))

(declare-fun b!5619677 () Bool)

(assert (=> b!5619677 (= e!3464300 (Cons!62981 (generalisedConcat!1217 (exprs!5486 (h!69430 zl!343))) (unfocusZipperList!1030 (t!376396 zl!343))))))

(declare-fun b!5619678 () Bool)

(assert (=> b!5619678 (= e!3464300 Nil!62981)))

(assert (= (and d!1775939 c!986117) b!5619677))

(assert (= (and d!1775939 (not c!986117)) b!5619678))

(declare-fun m!6593334 () Bool)

(assert (=> d!1775939 m!6593334))

(assert (=> b!5619677 m!6592744))

(declare-fun m!6593336 () Bool)

(assert (=> b!5619677 m!6593336))

(assert (=> b!5618997 d!1775939))

(declare-fun b!5619686 () Bool)

(declare-fun e!3464306 () Bool)

(declare-fun tp!1556456 () Bool)

(assert (=> b!5619686 (= e!3464306 tp!1556456)))

(declare-fun e!3464305 () Bool)

(declare-fun b!5619685 () Bool)

(declare-fun tp!1556457 () Bool)

(assert (=> b!5619685 (= e!3464305 (and (inv!82253 (h!69430 (t!376396 zl!343))) e!3464306 tp!1556457))))

(assert (=> b!5619008 (= tp!1556416 e!3464305)))

(assert (= b!5619685 b!5619686))

(assert (= (and b!5619008 (is-Cons!62982 (t!376396 zl!343))) b!5619685))

(declare-fun m!6593338 () Bool)

(assert (=> b!5619685 m!6593338))

(declare-fun condSetEmpty!37487 () Bool)

(assert (=> setNonEmpty!37481 (= condSetEmpty!37487 (= setRest!37481 (as set.empty (Set Context!9972))))))

(declare-fun setRes!37487 () Bool)

(assert (=> setNonEmpty!37481 (= tp!1556412 setRes!37487)))

(declare-fun setIsEmpty!37487 () Bool)

(assert (=> setIsEmpty!37487 setRes!37487))

(declare-fun setNonEmpty!37487 () Bool)

(declare-fun tp!1556463 () Bool)

(declare-fun e!3464309 () Bool)

(declare-fun setElem!37487 () Context!9972)

(assert (=> setNonEmpty!37487 (= setRes!37487 (and tp!1556463 (inv!82253 setElem!37487) e!3464309))))

(declare-fun setRest!37487 () (Set Context!9972))

(assert (=> setNonEmpty!37487 (= setRest!37481 (set.union (set.insert setElem!37487 (as set.empty (Set Context!9972))) setRest!37487))))

(declare-fun b!5619691 () Bool)

(declare-fun tp!1556462 () Bool)

(assert (=> b!5619691 (= e!3464309 tp!1556462)))

(assert (= (and setNonEmpty!37481 condSetEmpty!37487) setIsEmpty!37487))

(assert (= (and setNonEmpty!37481 (not condSetEmpty!37487)) setNonEmpty!37487))

(assert (= setNonEmpty!37487 b!5619691))

(declare-fun m!6593344 () Bool)

(assert (=> setNonEmpty!37487 m!6593344))

(declare-fun b!5619698 () Bool)

(declare-fun e!3464313 () Bool)

(declare-fun tp!1556466 () Bool)

(assert (=> b!5619698 (= e!3464313 (and tp_is_empty!40457 tp!1556466))))

(assert (=> b!5619013 (= tp!1556418 e!3464313)))

(assert (= (and b!5619013 (is-Cons!62983 (t!376397 s!2326))) b!5619698))

(declare-fun e!3464316 () Bool)

(assert (=> b!5618984 (= tp!1556417 e!3464316)))

(declare-fun b!5619712 () Bool)

(declare-fun tp!1556481 () Bool)

(declare-fun tp!1556480 () Bool)

(assert (=> b!5619712 (= e!3464316 (and tp!1556481 tp!1556480))))

(declare-fun b!5619709 () Bool)

(assert (=> b!5619709 (= e!3464316 tp_is_empty!40457)))

(declare-fun b!5619711 () Bool)

(declare-fun tp!1556477 () Bool)

(assert (=> b!5619711 (= e!3464316 tp!1556477)))

(declare-fun b!5619710 () Bool)

(declare-fun tp!1556479 () Bool)

(declare-fun tp!1556478 () Bool)

(assert (=> b!5619710 (= e!3464316 (and tp!1556479 tp!1556478))))

(assert (= (and b!5618984 (is-ElementMatch!15602 (regOne!31717 r!7292))) b!5619709))

(assert (= (and b!5618984 (is-Concat!24447 (regOne!31717 r!7292))) b!5619710))

(assert (= (and b!5618984 (is-Star!15602 (regOne!31717 r!7292))) b!5619711))

(assert (= (and b!5618984 (is-Union!15602 (regOne!31717 r!7292))) b!5619712))

(declare-fun e!3464317 () Bool)

(assert (=> b!5618984 (= tp!1556420 e!3464317)))

(declare-fun b!5619716 () Bool)

(declare-fun tp!1556486 () Bool)

(declare-fun tp!1556485 () Bool)

(assert (=> b!5619716 (= e!3464317 (and tp!1556486 tp!1556485))))

(declare-fun b!5619713 () Bool)

(assert (=> b!5619713 (= e!3464317 tp_is_empty!40457)))

(declare-fun b!5619715 () Bool)

(declare-fun tp!1556482 () Bool)

(assert (=> b!5619715 (= e!3464317 tp!1556482)))

(declare-fun b!5619714 () Bool)

(declare-fun tp!1556484 () Bool)

(declare-fun tp!1556483 () Bool)

(assert (=> b!5619714 (= e!3464317 (and tp!1556484 tp!1556483))))

(assert (= (and b!5618984 (is-ElementMatch!15602 (regTwo!31717 r!7292))) b!5619713))

(assert (= (and b!5618984 (is-Concat!24447 (regTwo!31717 r!7292))) b!5619714))

(assert (= (and b!5618984 (is-Star!15602 (regTwo!31717 r!7292))) b!5619715))

(assert (= (and b!5618984 (is-Union!15602 (regTwo!31717 r!7292))) b!5619716))

(declare-fun e!3464318 () Bool)

(assert (=> b!5619010 (= tp!1556414 e!3464318)))

(declare-fun b!5619720 () Bool)

(declare-fun tp!1556491 () Bool)

(declare-fun tp!1556490 () Bool)

(assert (=> b!5619720 (= e!3464318 (and tp!1556491 tp!1556490))))

(declare-fun b!5619717 () Bool)

(assert (=> b!5619717 (= e!3464318 tp_is_empty!40457)))

(declare-fun b!5619719 () Bool)

(declare-fun tp!1556487 () Bool)

(assert (=> b!5619719 (= e!3464318 tp!1556487)))

(declare-fun b!5619718 () Bool)

(declare-fun tp!1556489 () Bool)

(declare-fun tp!1556488 () Bool)

(assert (=> b!5619718 (= e!3464318 (and tp!1556489 tp!1556488))))

(assert (= (and b!5619010 (is-ElementMatch!15602 (reg!15931 r!7292))) b!5619717))

(assert (= (and b!5619010 (is-Concat!24447 (reg!15931 r!7292))) b!5619718))

(assert (= (and b!5619010 (is-Star!15602 (reg!15931 r!7292))) b!5619719))

(assert (= (and b!5619010 (is-Union!15602 (reg!15931 r!7292))) b!5619720))

(declare-fun e!3464319 () Bool)

(assert (=> b!5618995 (= tp!1556421 e!3464319)))

(declare-fun b!5619724 () Bool)

(declare-fun tp!1556496 () Bool)

(declare-fun tp!1556495 () Bool)

(assert (=> b!5619724 (= e!3464319 (and tp!1556496 tp!1556495))))

(declare-fun b!5619721 () Bool)

(assert (=> b!5619721 (= e!3464319 tp_is_empty!40457)))

(declare-fun b!5619723 () Bool)

(declare-fun tp!1556492 () Bool)

(assert (=> b!5619723 (= e!3464319 tp!1556492)))

(declare-fun b!5619722 () Bool)

(declare-fun tp!1556494 () Bool)

(declare-fun tp!1556493 () Bool)

(assert (=> b!5619722 (= e!3464319 (and tp!1556494 tp!1556493))))

(assert (= (and b!5618995 (is-ElementMatch!15602 (regOne!31716 r!7292))) b!5619721))

(assert (= (and b!5618995 (is-Concat!24447 (regOne!31716 r!7292))) b!5619722))

(assert (= (and b!5618995 (is-Star!15602 (regOne!31716 r!7292))) b!5619723))

(assert (= (and b!5618995 (is-Union!15602 (regOne!31716 r!7292))) b!5619724))

(declare-fun e!3464320 () Bool)

(assert (=> b!5618995 (= tp!1556415 e!3464320)))

(declare-fun b!5619728 () Bool)

(declare-fun tp!1556501 () Bool)

(declare-fun tp!1556500 () Bool)

(assert (=> b!5619728 (= e!3464320 (and tp!1556501 tp!1556500))))

(declare-fun b!5619725 () Bool)

(assert (=> b!5619725 (= e!3464320 tp_is_empty!40457)))

(declare-fun b!5619727 () Bool)

(declare-fun tp!1556497 () Bool)

(assert (=> b!5619727 (= e!3464320 tp!1556497)))

(declare-fun b!5619726 () Bool)

(declare-fun tp!1556499 () Bool)

(declare-fun tp!1556498 () Bool)

(assert (=> b!5619726 (= e!3464320 (and tp!1556499 tp!1556498))))

(assert (= (and b!5618995 (is-ElementMatch!15602 (regTwo!31716 r!7292))) b!5619725))

(assert (= (and b!5618995 (is-Concat!24447 (regTwo!31716 r!7292))) b!5619726))

(assert (= (and b!5618995 (is-Star!15602 (regTwo!31716 r!7292))) b!5619727))

(assert (= (and b!5618995 (is-Union!15602 (regTwo!31716 r!7292))) b!5619728))

(declare-fun b!5619733 () Bool)

(declare-fun e!3464323 () Bool)

(declare-fun tp!1556506 () Bool)

(declare-fun tp!1556507 () Bool)

(assert (=> b!5619733 (= e!3464323 (and tp!1556506 tp!1556507))))

(assert (=> b!5619012 (= tp!1556413 e!3464323)))

(assert (= (and b!5619012 (is-Cons!62981 (exprs!5486 (h!69430 zl!343)))) b!5619733))

(declare-fun b!5619734 () Bool)

(declare-fun e!3464324 () Bool)

(declare-fun tp!1556508 () Bool)

(declare-fun tp!1556509 () Bool)

(assert (=> b!5619734 (= e!3464324 (and tp!1556508 tp!1556509))))

(assert (=> b!5618992 (= tp!1556419 e!3464324)))

(assert (= (and b!5618992 (is-Cons!62981 (exprs!5486 setElem!37481))) b!5619734))

(declare-fun b_lambda!212673 () Bool)

(assert (= b_lambda!212671 (or b!5619001 b_lambda!212673)))

(declare-fun bs!1301423 () Bool)

(declare-fun d!1775945 () Bool)

(assert (= bs!1301423 (and d!1775945 b!5619001)))

(assert (=> bs!1301423 (= (dynLambda!24633 lambda!301615 (h!69430 zl!343)) (derivationStepZipperUp!870 (h!69430 zl!343) (h!69431 s!2326)))))

(assert (=> bs!1301423 m!6592678))

(assert (=> d!1775921 d!1775945))

(declare-fun b_lambda!212675 () Bool)

(assert (= b_lambda!212669 (or b!5619001 b_lambda!212675)))

(declare-fun bs!1301424 () Bool)

(declare-fun d!1775947 () Bool)

(assert (= bs!1301424 (and d!1775947 b!5619001)))

(assert (=> bs!1301424 (= (dynLambda!24633 lambda!301615 lt!2259460) (derivationStepZipperUp!870 lt!2259460 (h!69431 s!2326)))))

(assert (=> bs!1301424 m!6592768))

(assert (=> d!1775817 d!1775947))

(declare-fun b_lambda!212677 () Bool)

(assert (= b_lambda!212667 (or b!5619001 b_lambda!212677)))

(declare-fun bs!1301425 () Bool)

(declare-fun d!1775949 () Bool)

(assert (= bs!1301425 (and d!1775949 b!5619001)))

(assert (=> bs!1301425 (= (dynLambda!24633 lambda!301615 lt!2259455) (derivationStepZipperUp!870 lt!2259455 (h!69431 s!2326)))))

(assert (=> bs!1301425 m!6592750))

(assert (=> d!1775815 d!1775949))

(push 1)

(assert (not d!1775887))

(assert (not b!5619167))

(assert (not b!5619319))

(assert (not b!5619691))

(assert (not d!1775851))

(assert (not b!5619212))

(assert (not b!5619726))

(assert (not b!5619454))

(assert (not b!5619500))

(assert (not b!5619665))

(assert (not bm!423039))

(assert (not b!5619719))

(assert (not bs!1301423))

(assert (not b!5619534))

(assert (not b!5619391))

(assert (not b!5619667))

(assert (not b!5619287))

(assert (not b!5619488))

(assert (not b!5619575))

(assert (not b!5619686))

(assert (not b!5619184))

(assert (not b!5619495))

(assert (not b!5619486))

(assert (not d!1775853))

(assert (not bm!423099))

(assert (not b!5619584))

(assert (not b!5619382))

(assert (not bm!423054))

(assert (not bm!423060))

(assert (not bm!423095))

(assert (not b!5619273))

(assert (not b!5619485))

(assert (not b!5619537))

(assert (not b!5619467))

(assert (not bm!423053))

(assert (not b!5619482))

(assert (not b!5619489))

(assert (not b!5619715))

(assert (not d!1775907))

(assert (not b!5619315))

(assert (not d!1775801))

(assert (not bm!423081))

(assert (not b!5619316))

(assert (not b!5619677))

(assert (not d!1775825))

(assert (not d!1775881))

(assert (not b!5619586))

(assert (not bm!423093))

(assert (not bm!423091))

(assert (not b_lambda!212677))

(assert (not b!5619598))

(assert (not d!1775819))

(assert (not d!1775849))

(assert (not b!5619384))

(assert (not b!5619711))

(assert (not b!5619583))

(assert (not b!5619390))

(assert (not bm!423059))

(assert (not b!5619477))

(assert (not b!5619718))

(assert (not b!5619209))

(assert (not d!1775859))

(assert (not d!1775813))

(assert (not b!5619289))

(assert (not b!5619484))

(assert (not b!5619282))

(assert (not setNonEmpty!37487))

(assert (not d!1775835))

(assert (not b!5619685))

(assert (not d!1775879))

(assert (not b!5619251))

(assert (not b!5619439))

(assert tp_is_empty!40457)

(assert (not b!5619641))

(assert (not b!5619286))

(assert (not b!5619182))

(assert (not b!5619671))

(assert (not d!1775863))

(assert (not b!5619320))

(assert (not d!1775805))

(assert (not bm!423098))

(assert (not b!5619448))

(assert (not b!5619276))

(assert (not b!5619314))

(assert (not b!5619313))

(assert (not d!1775829))

(assert (not d!1775885))

(assert (not d!1775889))

(assert (not d!1775823))

(assert (not d!1775921))

(assert (not b!5619172))

(assert (not d!1775861))

(assert (not b!5619207))

(assert (not b!5619539))

(assert (not d!1775931))

(assert (not d!1775901))

(assert (not b!5619171))

(assert (not b!5619450))

(assert (not b!5619451))

(assert (not d!1775865))

(assert (not b!5619722))

(assert (not b!5619728))

(assert (not b!5619455))

(assert (not d!1775911))

(assert (not b!5619318))

(assert (not b!5619322))

(assert (not b!5619493))

(assert (not b!5619533))

(assert (not b!5619545))

(assert (not bm!423082))

(assert (not d!1775939))

(assert (not b!5619497))

(assert (not b!5619668))

(assert (not b!5619549))

(assert (not b!5619176))

(assert (not b!5619284))

(assert (not b!5619723))

(assert (not d!1775857))

(assert (not b!5619483))

(assert (not b!5619626))

(assert (not b!5619283))

(assert (not b!5619595))

(assert (not b!5619714))

(assert (not b!5619611))

(assert (not b!5619733))

(assert (not d!1775815))

(assert (not b!5619280))

(assert (not bs!1301424))

(assert (not bm!423040))

(assert (not d!1775935))

(assert (not b!5619312))

(assert (not d!1775843))

(assert (not b!5619712))

(assert (not b!5619720))

(assert (not b!5619524))

(assert (not b!5619262))

(assert (not b!5619452))

(assert (not d!1775871))

(assert (not b!5619724))

(assert (not b!5619321))

(assert (not b!5619183))

(assert (not b!5619710))

(assert (not b!5619187))

(assert (not d!1775847))

(assert (not b!5619734))

(assert (not d!1775909))

(assert (not b!5619698))

(assert (not b!5619281))

(assert (not bm!423067))

(assert (not b!5619727))

(assert (not bm!423103))

(assert (not b!5619473))

(assert (not b!5619279))

(assert (not d!1775855))

(assert (not b!5619582))

(assert (not b!5619288))

(assert (not b!5619666))

(assert (not bm!423090))

(assert (not b!5619607))

(assert (not bm!423076))

(assert (not b!5619214))

(assert (not b!5619502))

(assert (not d!1775831))

(assert (not b_lambda!212673))

(assert (not bm!423097))

(assert (not d!1775905))

(assert (not d!1775897))

(assert (not d!1775869))

(assert (not d!1775817))

(assert (not b!5619389))

(assert (not d!1775873))

(assert (not b!5619275))

(assert (not d!1775827))

(assert (not d!1775811))

(assert (not b!5619672))

(assert (not bm!423096))

(assert (not bs!1301425))

(assert (not b!5619577))

(assert (not b!5619716))

(assert (not b!5619443))

(assert (not b!5619278))

(assert (not bm!423080))

(assert (not d!1775845))

(assert (not b!5619213))

(assert (not b!5619540))

(assert (not b!5619468))

(assert (not b_lambda!212675))

(assert (not b!5619206))

(assert (not d!1775893))

(assert (not b!5619591))

(assert (not b!5619181))

(assert (not d!1775875))

(assert (not bm!423055))

(assert (not bm!423061))

(assert (not b!5619501))

(assert (not d!1775837))

(assert (not b!5619628))

(assert (not b!5619590))

(assert (not b!5619664))

(assert (not b!5619535))

(assert (not bm!423094))

(assert (not b!5619536))

(assert (not b!5619274))

(assert (not d!1775821))

(assert (not b!5619386))

(assert (not b!5619277))

(assert (not bm!423092))

(assert (not bm!423077))

(assert (not b!5619285))

(assert (not b!5619579))

(assert (not d!1775833))

(assert (not b!5619449))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

