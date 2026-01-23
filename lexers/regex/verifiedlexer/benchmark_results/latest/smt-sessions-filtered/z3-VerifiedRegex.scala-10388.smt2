; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538356 () Bool)

(assert start!538356)

(declare-fun tp!1424016 () Bool)

(declare-datatypes ((C!28400 0))(
  ( (C!28401 (val!23852 Int)) )
))
(declare-datatypes ((Regex!14071 0))(
  ( (ElementMatch!14071 (c!877049 C!28400)) (Concat!22916 (regOne!28654 Regex!14071) (regTwo!28654 Regex!14071)) (EmptyExpr!14071) (Star!14071 (reg!14400 Regex!14071)) (EmptyLang!14071) (Union!14071 (regOne!28655 Regex!14071) (regTwo!28655 Regex!14071)) )
))
(declare-datatypes ((List!58999 0))(
  ( (Nil!58875) (Cons!58875 (h!65323 Regex!14071) (t!372000 List!58999)) )
))
(declare-datatypes ((Context!6910 0))(
  ( (Context!6911 (exprs!3955 List!58999)) )
))
(declare-fun setElem!29326 () Context!6910)

(declare-fun setNonEmpty!29326 () Bool)

(declare-fun e!3184046 () Bool)

(declare-fun setRes!29326 () Bool)

(declare-fun inv!78352 (Context!6910) Bool)

(assert (=> setNonEmpty!29326 (= setRes!29326 (and tp!1424016 (inv!78352 setElem!29326) e!3184046))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4303 () (InoxSet Context!6910))

(declare-fun setRest!29326 () (InoxSet Context!6910))

(assert (=> setNonEmpty!29326 (= z!4303 ((_ map or) (store ((as const (Array Context!6910 Bool)) false) setElem!29326 true) setRest!29326))))

(declare-fun b!5105238 () Bool)

(declare-fun e!3184043 () Bool)

(declare-fun e!3184053 () Bool)

(assert (=> b!5105238 (= e!3184043 e!3184053)))

(declare-fun res!2172949 () Bool)

(assert (=> b!5105238 (=> res!2172949 e!3184053)))

(declare-fun e!3184052 () Bool)

(assert (=> b!5105238 (= res!2172949 e!3184052)))

(declare-fun res!2172955 () Bool)

(assert (=> b!5105238 (=> (not res!2172955) (not e!3184052))))

(declare-fun lt!2101092 () Bool)

(assert (=> b!5105238 (= res!2172955 (not lt!2101092))))

(declare-fun r!12920 () Regex!14071)

(declare-datatypes ((List!59000 0))(
  ( (Nil!58876) (Cons!58876 (h!65324 C!28400) (t!372001 List!59000)) )
))
(declare-datatypes ((tuple2!63528 0))(
  ( (tuple2!63529 (_1!35067 List!59000) (_2!35067 List!59000)) )
))
(declare-fun lt!2101098 () tuple2!63528)

(declare-fun matchR!6856 (Regex!14071 List!59000) Bool)

(assert (=> b!5105238 (= lt!2101092 (matchR!6856 r!12920 (_1!35067 lt!2101098)))))

(declare-fun b!5105239 () Bool)

(declare-fun e!3184051 () Bool)

(declare-fun tp!1424017 () Bool)

(declare-fun tp!1424019 () Bool)

(assert (=> b!5105239 (= e!3184051 (and tp!1424017 tp!1424019))))

(declare-fun setIsEmpty!29326 () Bool)

(assert (=> setIsEmpty!29326 setRes!29326))

(declare-fun b!5105240 () Bool)

(declare-fun tp_is_empty!37407 () Bool)

(assert (=> b!5105240 (= e!3184051 tp_is_empty!37407)))

(declare-fun b!5105241 () Bool)

(declare-fun e!3184045 () Bool)

(declare-fun lt!2101099 () tuple2!63528)

(assert (=> b!5105241 (= e!3184045 (matchR!6856 r!12920 (_1!35067 lt!2101099)))))

(declare-fun b!5105242 () Bool)

(declare-fun isEmpty!31816 (List!59000) Bool)

(assert (=> b!5105242 (= e!3184052 (not (isEmpty!31816 (_1!35067 lt!2101098))))))

(declare-fun res!2172958 () Bool)

(declare-fun e!3184044 () Bool)

(assert (=> start!538356 (=> (not res!2172958) (not e!3184044))))

(declare-fun validRegex!6198 (Regex!14071) Bool)

(assert (=> start!538356 (= res!2172958 (validRegex!6198 r!12920))))

(assert (=> start!538356 e!3184044))

(assert (=> start!538356 e!3184051))

(declare-fun condSetEmpty!29326 () Bool)

(assert (=> start!538356 (= condSetEmpty!29326 (= z!4303 ((as const (Array Context!6910 Bool)) false)))))

(assert (=> start!538356 setRes!29326))

(declare-fun e!3184049 () Bool)

(assert (=> start!538356 e!3184049))

(declare-fun b!5105243 () Bool)

(declare-fun e!3184047 () Bool)

(declare-fun lt!2101087 () tuple2!63528)

(assert (=> b!5105243 (= e!3184047 (not (isEmpty!31816 (_1!35067 lt!2101087))))))

(declare-fun b!5105244 () Bool)

(declare-fun e!3184042 () Bool)

(declare-fun input!5654 () List!59000)

(declare-fun isPrefix!5472 (List!59000 List!59000) Bool)

(assert (=> b!5105244 (= e!3184042 (isPrefix!5472 (_1!35067 lt!2101098) input!5654))))

(declare-fun b!5105245 () Bool)

(declare-fun tp!1424020 () Bool)

(assert (=> b!5105245 (= e!3184051 tp!1424020)))

(declare-fun b!5105246 () Bool)

(declare-fun tp!1424021 () Bool)

(declare-fun tp!1424022 () Bool)

(assert (=> b!5105246 (= e!3184051 (and tp!1424021 tp!1424022))))

(declare-fun b!5105247 () Bool)

(declare-fun e!3184050 () Bool)

(assert (=> b!5105247 (= e!3184044 e!3184050)))

(declare-fun res!2172952 () Bool)

(assert (=> b!5105247 (=> (not res!2172952) (not e!3184050))))

(declare-datatypes ((List!59001 0))(
  ( (Nil!58877) (Cons!58877 (h!65325 Context!6910) (t!372002 List!59001)) )
))
(declare-fun lt!2101084 () List!59001)

(declare-fun unfocusZipper!413 (List!59001) Regex!14071)

(assert (=> b!5105247 (= res!2172952 (= (unfocusZipper!413 lt!2101084) r!12920))))

(declare-fun toList!8205 ((InoxSet Context!6910)) List!59001)

(assert (=> b!5105247 (= lt!2101084 (toList!8205 z!4303))))

(declare-fun b!5105248 () Bool)

(declare-fun e!3184055 () Bool)

(assert (=> b!5105248 (= e!3184050 e!3184055)))

(declare-fun res!2172957 () Bool)

(assert (=> b!5105248 (=> (not res!2172957) (not e!3184055))))

(declare-fun lt!2101091 () List!59000)

(assert (=> b!5105248 (= res!2172957 (= lt!2101091 input!5654))))

(declare-fun ++!12920 (List!59000 List!59000) List!59000)

(assert (=> b!5105248 (= lt!2101091 (++!12920 (_1!35067 lt!2101087) (_2!35067 lt!2101087)))))

(declare-fun findLongestMatch!1901 (Regex!14071 List!59000) tuple2!63528)

(assert (=> b!5105248 (= lt!2101098 (findLongestMatch!1901 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!95 ((InoxSet Context!6910) List!59000) tuple2!63528)

(assert (=> b!5105248 (= lt!2101087 (findLongestMatchZipper!95 z!4303 input!5654))))

(declare-fun b!5105249 () Bool)

(declare-fun e!3184048 () Bool)

(assert (=> b!5105249 (= e!3184055 e!3184048)))

(declare-fun res!2172947 () Bool)

(assert (=> b!5105249 (=> (not res!2172947) (not e!3184048))))

(declare-fun lt!2101086 () List!59000)

(assert (=> b!5105249 (= res!2172947 (= lt!2101086 input!5654))))

(assert (=> b!5105249 (= lt!2101086 (++!12920 (_1!35067 lt!2101098) (_2!35067 lt!2101098)))))

(declare-fun b!5105250 () Bool)

(declare-fun tp!1424023 () Bool)

(assert (=> b!5105250 (= e!3184049 (and tp_is_empty!37407 tp!1424023))))

(declare-fun b!5105251 () Bool)

(declare-fun res!2172951 () Bool)

(assert (=> b!5105251 (=> res!2172951 e!3184042)))

(assert (=> b!5105251 (= res!2172951 (not (isPrefix!5472 (_1!35067 lt!2101087) input!5654)))))

(declare-fun b!5105252 () Bool)

(declare-fun e!3184054 () Bool)

(declare-fun lt!2101083 () tuple2!63528)

(declare-fun matchZipper!743 ((InoxSet Context!6910) List!59000) Bool)

(assert (=> b!5105252 (= e!3184054 (matchZipper!743 z!4303 (_1!35067 lt!2101083)))))

(declare-fun b!5105253 () Bool)

(declare-fun tp!1424018 () Bool)

(assert (=> b!5105253 (= e!3184046 tp!1424018)))

(declare-fun b!5105254 () Bool)

(assert (=> b!5105254 (= e!3184053 e!3184042)))

(declare-fun res!2172953 () Bool)

(assert (=> b!5105254 (=> res!2172953 e!3184042)))

(declare-fun lt!2101094 () Int)

(declare-fun lt!2101082 () Int)

(assert (=> b!5105254 (= res!2172953 (or (> lt!2101094 lt!2101082) (> lt!2101082 lt!2101094)))))

(declare-fun size!39373 (List!59000) Int)

(assert (=> b!5105254 (= lt!2101082 (size!39373 (_1!35067 lt!2101087)))))

(assert (=> b!5105254 (= lt!2101094 (size!39373 (_1!35067 lt!2101098)))))

(declare-fun lt!2101089 () Bool)

(assert (=> b!5105254 (= (matchR!6856 r!12920 (_1!35067 lt!2101087)) lt!2101089)))

(declare-datatypes ((Unit!149936 0))(
  ( (Unit!149937) )
))
(declare-fun lt!2101085 () Unit!149936)

(declare-fun theoremZipperRegexEquiv!235 ((InoxSet Context!6910) List!59001 Regex!14071 List!59000) Unit!149936)

(assert (=> b!5105254 (= lt!2101085 (theoremZipperRegexEquiv!235 z!4303 lt!2101084 r!12920 (_1!35067 lt!2101087)))))

(assert (=> b!5105254 (= lt!2101092 (matchZipper!743 z!4303 (_1!35067 lt!2101098)))))

(declare-fun lt!2101096 () Unit!149936)

(assert (=> b!5105254 (= lt!2101096 (theoremZipperRegexEquiv!235 z!4303 lt!2101084 r!12920 (_1!35067 lt!2101098)))))

(declare-fun b!5105255 () Bool)

(assert (=> b!5105255 (= e!3184048 (not e!3184043))))

(declare-fun res!2172950 () Bool)

(assert (=> b!5105255 (=> res!2172950 e!3184043)))

(assert (=> b!5105255 (= res!2172950 e!3184047)))

(declare-fun res!2172954 () Bool)

(assert (=> b!5105255 (=> (not res!2172954) (not e!3184047))))

(assert (=> b!5105255 (= res!2172954 (not lt!2101089))))

(assert (=> b!5105255 (= lt!2101089 (matchZipper!743 z!4303 (_1!35067 lt!2101087)))))

(assert (=> b!5105255 e!3184045))

(declare-fun res!2172948 () Bool)

(assert (=> b!5105255 (=> res!2172948 e!3184045)))

(assert (=> b!5105255 (= res!2172948 (isEmpty!31816 (_1!35067 lt!2101099)))))

(declare-fun lt!2101095 () Int)

(declare-fun lt!2101100 () Int)

(declare-fun findLongestMatchInner!2084 (Regex!14071 List!59000 Int List!59000 List!59000 Int) tuple2!63528)

(assert (=> b!5105255 (= lt!2101099 (findLongestMatchInner!2084 r!12920 Nil!58876 lt!2101095 input!5654 input!5654 lt!2101100))))

(declare-fun lt!2101088 () Unit!149936)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2088 (Regex!14071 List!59000) Unit!149936)

(assert (=> b!5105255 (= lt!2101088 (longestMatchIsAcceptedByMatchOrIsEmpty!2088 r!12920 input!5654))))

(assert (=> b!5105255 e!3184054))

(declare-fun res!2172956 () Bool)

(assert (=> b!5105255 (=> res!2172956 e!3184054)))

(assert (=> b!5105255 (= res!2172956 (isEmpty!31816 (_1!35067 lt!2101083)))))

(declare-fun findLongestMatchInnerZipper!145 ((InoxSet Context!6910) List!59000 Int List!59000 List!59000 Int) tuple2!63528)

(assert (=> b!5105255 (= lt!2101083 (findLongestMatchInnerZipper!145 z!4303 Nil!58876 lt!2101095 input!5654 input!5654 lt!2101100))))

(assert (=> b!5105255 (= lt!2101100 (size!39373 input!5654))))

(assert (=> b!5105255 (= lt!2101095 (size!39373 Nil!58876))))

(declare-fun lt!2101097 () Unit!149936)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2089 ((InoxSet Context!6910) List!59000) Unit!149936)

(assert (=> b!5105255 (= lt!2101097 (longestMatchIsAcceptedByMatchOrIsEmpty!2089 z!4303 input!5654))))

(assert (=> b!5105255 (isPrefix!5472 (_1!35067 lt!2101098) lt!2101086)))

(declare-fun lt!2101093 () Unit!149936)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3530 (List!59000 List!59000) Unit!149936)

(assert (=> b!5105255 (= lt!2101093 (lemmaConcatTwoListThenFirstIsPrefix!3530 (_1!35067 lt!2101098) (_2!35067 lt!2101098)))))

(assert (=> b!5105255 (isPrefix!5472 (_1!35067 lt!2101087) lt!2101091)))

(declare-fun lt!2101090 () Unit!149936)

(assert (=> b!5105255 (= lt!2101090 (lemmaConcatTwoListThenFirstIsPrefix!3530 (_1!35067 lt!2101087) (_2!35067 lt!2101087)))))

(assert (= (and start!538356 res!2172958) b!5105247))

(assert (= (and b!5105247 res!2172952) b!5105248))

(assert (= (and b!5105248 res!2172957) b!5105249))

(assert (= (and b!5105249 res!2172947) b!5105255))

(assert (= (and b!5105255 (not res!2172956)) b!5105252))

(assert (= (and b!5105255 (not res!2172948)) b!5105241))

(assert (= (and b!5105255 res!2172954) b!5105243))

(assert (= (and b!5105255 (not res!2172950)) b!5105238))

(assert (= (and b!5105238 res!2172955) b!5105242))

(assert (= (and b!5105238 (not res!2172949)) b!5105254))

(assert (= (and b!5105254 (not res!2172953)) b!5105251))

(assert (= (and b!5105251 (not res!2172951)) b!5105244))

(get-info :version)

(assert (= (and start!538356 ((_ is ElementMatch!14071) r!12920)) b!5105240))

(assert (= (and start!538356 ((_ is Concat!22916) r!12920)) b!5105246))

(assert (= (and start!538356 ((_ is Star!14071) r!12920)) b!5105245))

(assert (= (and start!538356 ((_ is Union!14071) r!12920)) b!5105239))

(assert (= (and start!538356 condSetEmpty!29326) setIsEmpty!29326))

(assert (= (and start!538356 (not condSetEmpty!29326)) setNonEmpty!29326))

(assert (= setNonEmpty!29326 b!5105253))

(assert (= (and start!538356 ((_ is Cons!58876) input!5654)) b!5105250))

(declare-fun m!6162510 () Bool)

(assert (=> start!538356 m!6162510))

(declare-fun m!6162512 () Bool)

(assert (=> b!5105243 m!6162512))

(declare-fun m!6162514 () Bool)

(assert (=> b!5105254 m!6162514))

(declare-fun m!6162516 () Bool)

(assert (=> b!5105254 m!6162516))

(declare-fun m!6162518 () Bool)

(assert (=> b!5105254 m!6162518))

(declare-fun m!6162520 () Bool)

(assert (=> b!5105254 m!6162520))

(declare-fun m!6162522 () Bool)

(assert (=> b!5105254 m!6162522))

(declare-fun m!6162524 () Bool)

(assert (=> b!5105254 m!6162524))

(declare-fun m!6162526 () Bool)

(assert (=> b!5105247 m!6162526))

(declare-fun m!6162528 () Bool)

(assert (=> b!5105247 m!6162528))

(declare-fun m!6162530 () Bool)

(assert (=> b!5105244 m!6162530))

(declare-fun m!6162532 () Bool)

(assert (=> b!5105251 m!6162532))

(declare-fun m!6162534 () Bool)

(assert (=> b!5105241 m!6162534))

(declare-fun m!6162536 () Bool)

(assert (=> b!5105248 m!6162536))

(declare-fun m!6162538 () Bool)

(assert (=> b!5105248 m!6162538))

(declare-fun m!6162540 () Bool)

(assert (=> b!5105248 m!6162540))

(declare-fun m!6162542 () Bool)

(assert (=> b!5105252 m!6162542))

(declare-fun m!6162544 () Bool)

(assert (=> b!5105238 m!6162544))

(declare-fun m!6162546 () Bool)

(assert (=> b!5105242 m!6162546))

(declare-fun m!6162548 () Bool)

(assert (=> b!5105255 m!6162548))

(declare-fun m!6162550 () Bool)

(assert (=> b!5105255 m!6162550))

(declare-fun m!6162552 () Bool)

(assert (=> b!5105255 m!6162552))

(declare-fun m!6162554 () Bool)

(assert (=> b!5105255 m!6162554))

(declare-fun m!6162556 () Bool)

(assert (=> b!5105255 m!6162556))

(declare-fun m!6162558 () Bool)

(assert (=> b!5105255 m!6162558))

(declare-fun m!6162560 () Bool)

(assert (=> b!5105255 m!6162560))

(declare-fun m!6162562 () Bool)

(assert (=> b!5105255 m!6162562))

(declare-fun m!6162564 () Bool)

(assert (=> b!5105255 m!6162564))

(declare-fun m!6162566 () Bool)

(assert (=> b!5105255 m!6162566))

(declare-fun m!6162568 () Bool)

(assert (=> b!5105255 m!6162568))

(declare-fun m!6162570 () Bool)

(assert (=> b!5105255 m!6162570))

(declare-fun m!6162572 () Bool)

(assert (=> b!5105255 m!6162572))

(declare-fun m!6162574 () Bool)

(assert (=> setNonEmpty!29326 m!6162574))

(declare-fun m!6162576 () Bool)

(assert (=> b!5105249 m!6162576))

(check-sat (not b!5105244) (not b!5105239) tp_is_empty!37407 (not b!5105247) (not b!5105249) (not setNonEmpty!29326) (not b!5105241) (not b!5105246) (not start!538356) (not b!5105251) (not b!5105248) (not b!5105254) (not b!5105238) (not b!5105255) (not b!5105245) (not b!5105253) (not b!5105243) (not b!5105242) (not b!5105252) (not b!5105250))
(check-sat)
