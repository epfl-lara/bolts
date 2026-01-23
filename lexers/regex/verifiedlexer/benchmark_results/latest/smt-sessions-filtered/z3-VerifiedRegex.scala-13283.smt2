; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!722640 () Bool)

(assert start!722640)

(declare-fun b!7440112 () Bool)

(assert (=> b!7440112 true))

(declare-fun b!7440111 () Bool)

(declare-fun m!8052386 () Bool)

(assert (=> b!7440111 m!8052386))

(assert (=> b!7440111 true))

(assert (=> b!7440111 true))

(declare-fun b!7440107 () Bool)

(declare-fun e!4442770 () Bool)

(declare-fun tp!2150432 () Bool)

(assert (=> b!7440107 (= e!4442770 tp!2150432)))

(declare-fun b!7440108 () Bool)

(declare-fun res!2986187 () Bool)

(declare-fun e!4442765 () Bool)

(assert (=> b!7440108 (=> (not res!2986187) (not e!4442765))))

(declare-datatypes ((C!39156 0))(
  ( (C!39157 (val!29952 Int)) )
))
(declare-datatypes ((Regex!19441 0))(
  ( (ElementMatch!19441 (c!1376921 C!39156)) (Concat!28286 (regOne!39394 Regex!19441) (regTwo!39394 Regex!19441)) (EmptyExpr!19441) (Star!19441 (reg!19770 Regex!19441)) (EmptyLang!19441) (Union!19441 (regOne!39395 Regex!19441) (regTwo!39395 Regex!19441)) )
))
(declare-datatypes ((List!72101 0))(
  ( (Nil!71977) (Cons!71977 (h!78425 Regex!19441) (t!386664 List!72101)) )
))
(declare-datatypes ((Context!16762 0))(
  ( (Context!16763 (exprs!8881 List!72101)) )
))
(declare-fun lt!2619304 () Context!16762)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2619301 () (InoxSet Context!16762))

(assert (=> b!7440108 (= res!2986187 (select lt!2619301 lt!2619304))))

(declare-fun b!7440109 () Bool)

(declare-fun e!4442767 () Bool)

(declare-fun tp!2150430 () Bool)

(assert (=> b!7440109 (= e!4442767 tp!2150430)))

(declare-fun res!2986183 () Bool)

(declare-fun e!4442768 () Bool)

(assert (=> start!722640 (=> (not res!2986183) (not e!4442768))))

(declare-fun lt!2619303 () Context!16762)

(declare-fun z!3488 () (InoxSet Context!16762))

(declare-datatypes ((List!72102 0))(
  ( (Nil!71978) (Cons!71978 (h!78426 C!39156) (t!386665 List!72102)) )
))
(declare-fun s!7945 () List!72102)

(get-info :version)

(assert (=> start!722640 (= res!2986183 (and (= z!3488 (store ((as const (Array Context!16762 Bool)) false) lt!2619303 true)) ((_ is Cons!71978) s!7945)))))

(assert (=> start!722640 (= lt!2619303 (Context!16763 Nil!71977))))

(assert (=> start!722640 e!4442768))

(declare-fun condSetEmpty!56525 () Bool)

(assert (=> start!722640 (= condSetEmpty!56525 (= z!3488 ((as const (Array Context!16762 Bool)) false)))))

(declare-fun setRes!56525 () Bool)

(assert (=> start!722640 setRes!56525))

(declare-fun e!4442766 () Bool)

(assert (=> start!722640 e!4442766))

(declare-fun b!7440110 () Bool)

(declare-fun tp_is_empty!49145 () Bool)

(declare-fun tp!2150429 () Bool)

(assert (=> b!7440110 (= e!4442766 (and tp_is_empty!49145 tp!2150429))))

(assert (=> b!7440111 (= e!4442765 (not true))))

(declare-fun lt!2619302 () Bool)

(declare-fun lambda!460345 () Int)

(declare-fun exists!4802 ((InoxSet Context!16762) Int) Bool)

(assert (=> b!7440111 (= lt!2619302 (exists!4802 z!3488 lambda!460345))))

(declare-fun empty!3647 () Context!16762)

(declare-fun lambda!460344 () Int)

(declare-fun flatMapPost!232 ((InoxSet Context!16762) Int Context!16762) Context!16762)

(assert (=> b!7440111 (= (flatMapPost!232 z!3488 lambda!460344 lt!2619304) empty!3647)))

(assert (=> b!7440111 true))

(declare-fun inv!91963 (Context!16762) Bool)

(assert (=> b!7440111 (and (inv!91963 empty!3647) e!4442767)))

(declare-fun e!4442769 () Bool)

(assert (=> b!7440112 (= e!4442769 e!4442765)))

(declare-fun res!2986186 () Bool)

(assert (=> b!7440112 (=> (not res!2986186) (not e!4442765))))

(declare-fun flatMap!3231 ((InoxSet Context!16762) Int) (InoxSet Context!16762))

(assert (=> b!7440112 (= res!2986186 (select (flatMap!3231 z!3488 lambda!460344) lt!2619304))))

(declare-datatypes ((List!72103 0))(
  ( (Nil!71979) (Cons!71979 (h!78427 Context!16762) (t!386666 List!72103)) )
))
(declare-fun head!15257 (List!72103) Context!16762)

(declare-fun toList!11784 ((InoxSet Context!16762)) List!72103)

(assert (=> b!7440112 (= lt!2619304 (head!15257 (toList!11784 lt!2619301)))))

(declare-fun setIsEmpty!56525 () Bool)

(assert (=> setIsEmpty!56525 setRes!56525))

(declare-fun b!7440113 () Bool)

(assert (=> b!7440113 (= e!4442768 e!4442769)))

(declare-fun res!2986184 () Bool)

(assert (=> b!7440113 (=> (not res!2986184) (not e!4442769))))

(declare-fun derivationStepZipperUp!2837 (Context!16762 C!39156) (InoxSet Context!16762))

(assert (=> b!7440113 (= res!2986184 (= (derivationStepZipperUp!2837 lt!2619303 (h!78426 s!7945)) ((as const (Array Context!16762 Bool)) false)))))

(declare-fun derivationStepZipper!3707 ((InoxSet Context!16762) C!39156) (InoxSet Context!16762))

(assert (=> b!7440113 (= lt!2619301 (derivationStepZipper!3707 z!3488 (h!78426 s!7945)))))

(declare-fun setElem!56525 () Context!16762)

(declare-fun setNonEmpty!56525 () Bool)

(declare-fun tp!2150431 () Bool)

(assert (=> setNonEmpty!56525 (= setRes!56525 (and tp!2150431 (inv!91963 setElem!56525) e!4442770))))

(declare-fun setRest!56525 () (InoxSet Context!16762))

(assert (=> setNonEmpty!56525 (= z!3488 ((_ map or) (store ((as const (Array Context!16762 Bool)) false) setElem!56525 true) setRest!56525))))

(declare-fun b!7440114 () Bool)

(declare-fun res!2986185 () Bool)

(assert (=> b!7440114 (=> (not res!2986185) (not e!4442769))))

(assert (=> b!7440114 (= res!2986185 (not (= lt!2619301 ((as const (Array Context!16762 Bool)) false))))))

(assert (= (and start!722640 res!2986183) b!7440113))

(assert (= (and b!7440113 res!2986184) b!7440114))

(assert (= (and b!7440114 res!2986185) b!7440112))

(assert (= (and b!7440112 res!2986186) b!7440108))

(assert (= (and b!7440108 res!2986187) b!7440111))

(assert (= b!7440111 b!7440109))

(assert (= (and start!722640 condSetEmpty!56525) setIsEmpty!56525))

(assert (= (and start!722640 (not condSetEmpty!56525)) setNonEmpty!56525))

(assert (= setNonEmpty!56525 b!7440107))

(assert (= (and start!722640 ((_ is Cons!71978) s!7945)) b!7440110))

(declare-fun m!8052388 () Bool)

(assert (=> b!7440111 m!8052388))

(declare-fun m!8052390 () Bool)

(assert (=> b!7440111 m!8052390))

(declare-fun m!8052392 () Bool)

(assert (=> b!7440111 m!8052392))

(declare-fun m!8052394 () Bool)

(assert (=> b!7440108 m!8052394))

(declare-fun m!8052396 () Bool)

(assert (=> setNonEmpty!56525 m!8052396))

(declare-fun m!8052398 () Bool)

(assert (=> b!7440112 m!8052398))

(declare-fun m!8052400 () Bool)

(assert (=> b!7440112 m!8052400))

(declare-fun m!8052402 () Bool)

(assert (=> b!7440112 m!8052402))

(assert (=> b!7440112 m!8052402))

(declare-fun m!8052404 () Bool)

(assert (=> b!7440112 m!8052404))

(declare-fun m!8052406 () Bool)

(assert (=> start!722640 m!8052406))

(declare-fun m!8052408 () Bool)

(assert (=> b!7440113 m!8052408))

(declare-fun m!8052410 () Bool)

(assert (=> b!7440113 m!8052410))

(check-sat (not b!7440113) (not b!7440111) (not b!7440110) (not b!7440112) tp_is_empty!49145 (not b!7440107) (not setNonEmpty!56525) (not b!7440109))
(check-sat)
