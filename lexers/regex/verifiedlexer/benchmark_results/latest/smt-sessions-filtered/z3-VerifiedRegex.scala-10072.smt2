; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527414 () Bool)

(assert start!527414)

(declare-fun b!4989307 () Bool)

(declare-fun e!3118166 () Bool)

(declare-fun tp!1398370 () Bool)

(declare-fun tp!1398371 () Bool)

(assert (=> b!4989307 (= e!3118166 (and tp!1398370 tp!1398371))))

(declare-fun b!4989308 () Bool)

(declare-fun res!2129859 () Bool)

(declare-fun e!3118168 () Bool)

(assert (=> b!4989308 (=> (not res!2129859) (not e!3118168))))

(declare-datatypes ((C!27708 0))(
  ( (C!27709 (val!23220 Int)) )
))
(declare-datatypes ((List!57791 0))(
  ( (Nil!57667) (Cons!57667 (h!64115 C!27708) (t!370117 List!57791)) )
))
(declare-datatypes ((IArray!30557 0))(
  ( (IArray!30558 (innerList!15336 List!57791)) )
))
(declare-datatypes ((Conc!15248 0))(
  ( (Node!15248 (left!42202 Conc!15248) (right!42532 Conc!15248) (csize!30726 Int) (cheight!15459 Int)) (Leaf!25321 (xs!18574 IArray!30557) (csize!30727 Int)) (Empty!15248) )
))
(declare-datatypes ((BalanceConc!29926 0))(
  ( (BalanceConc!29927 (c!851323 Conc!15248)) )
))
(declare-fun input!5597 () BalanceConc!29926)

(declare-fun totalInput!1012 () BalanceConc!29926)

(declare-fun isSuffix!1295 (List!57791 List!57791) Bool)

(declare-fun list!18532 (BalanceConc!29926) List!57791)

(assert (=> b!4989308 (= res!2129859 (isSuffix!1295 (list!18532 input!5597) (list!18532 totalInput!1012)))))

(declare-fun b!4989309 () Bool)

(declare-fun tp!1398368 () Bool)

(assert (=> b!4989309 (= e!3118166 tp!1398368)))

(declare-fun b!4989310 () Bool)

(declare-fun e!3118169 () Bool)

(declare-fun tp!1398369 () Bool)

(assert (=> b!4989310 (= e!3118169 tp!1398369)))

(declare-fun b!4989311 () Bool)

(declare-fun e!3118165 () Bool)

(declare-fun tp!1398364 () Bool)

(declare-fun inv!75668 (Conc!15248) Bool)

(assert (=> b!4989311 (= e!3118165 (and (inv!75668 (c!851323 input!5597)) tp!1398364))))

(declare-fun res!2129860 () Bool)

(assert (=> start!527414 (=> (not res!2129860) (not e!3118168))))

(declare-datatypes ((Regex!13729 0))(
  ( (ElementMatch!13729 (c!851324 C!27708)) (Concat!22522 (regOne!27970 Regex!13729) (regTwo!27970 Regex!13729)) (EmptyExpr!13729) (Star!13729 (reg!14058 Regex!13729)) (EmptyLang!13729) (Union!13729 (regOne!27971 Regex!13729) (regTwo!27971 Regex!13729)) )
))
(declare-fun r!12727 () Regex!13729)

(declare-fun validRegex!6026 (Regex!13729) Bool)

(assert (=> start!527414 (= res!2129860 (validRegex!6026 r!12727))))

(assert (=> start!527414 e!3118168))

(assert (=> start!527414 e!3118166))

(declare-fun condSetEmpty!28142 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!57792 0))(
  ( (Nil!57668) (Cons!57668 (h!64116 Regex!13729) (t!370118 List!57792)) )
))
(declare-datatypes ((Context!6308 0))(
  ( (Context!6309 (exprs!3654 List!57792)) )
))
(declare-fun z!4183 () (InoxSet Context!6308))

(assert (=> start!527414 (= condSetEmpty!28142 (= z!4183 ((as const (Array Context!6308 Bool)) false)))))

(declare-fun setRes!28142 () Bool)

(assert (=> start!527414 setRes!28142))

(declare-fun inv!75669 (BalanceConc!29926) Bool)

(assert (=> start!527414 (and (inv!75669 input!5597) e!3118165)))

(declare-fun e!3118167 () Bool)

(assert (=> start!527414 (and (inv!75669 totalInput!1012) e!3118167)))

(declare-fun b!4989312 () Bool)

(declare-fun res!2129861 () Bool)

(assert (=> b!4989312 (=> (not res!2129861) (not e!3118168))))

(declare-datatypes ((List!57793 0))(
  ( (Nil!57669) (Cons!57669 (h!64117 Context!6308) (t!370119 List!57793)) )
))
(declare-fun unfocusZipper!256 (List!57793) Regex!13729)

(declare-fun toList!8014 ((InoxSet Context!6308)) List!57793)

(assert (=> b!4989312 (= res!2129861 (= (unfocusZipper!256 (toList!8014 z!4183)) r!12727))))

(declare-fun setIsEmpty!28142 () Bool)

(assert (=> setIsEmpty!28142 setRes!28142))

(declare-fun b!4989313 () Bool)

(declare-fun tp_is_empty!36455 () Bool)

(assert (=> b!4989313 (= e!3118166 tp_is_empty!36455)))

(declare-fun b!4989314 () Bool)

(declare-fun tp!1398365 () Bool)

(assert (=> b!4989314 (= e!3118167 (and (inv!75668 (c!851323 totalInput!1012)) tp!1398365))))

(declare-fun b!4989315 () Bool)

(assert (=> b!4989315 (= e!3118168 false)))

(declare-fun lt!2062567 () Int)

(declare-fun size!38317 (BalanceConc!29926) Int)

(assert (=> b!4989315 (= lt!2062567 (size!38317 input!5597))))

(declare-fun lt!2062568 () Int)

(assert (=> b!4989315 (= lt!2062568 (size!38317 totalInput!1012))))

(declare-datatypes ((tuple2!62746 0))(
  ( (tuple2!62747 (_1!34676 BalanceConc!29926) (_2!34676 BalanceConc!29926)) )
))
(declare-fun lt!2062566 () tuple2!62746)

(declare-fun findLongestMatchZipperFastV2!31 ((InoxSet Context!6308) BalanceConc!29926 BalanceConc!29926) tuple2!62746)

(assert (=> b!4989315 (= lt!2062566 (findLongestMatchZipperFastV2!31 z!4183 input!5597 totalInput!1012))))

(declare-fun setElem!28142 () Context!6308)

(declare-fun tp!1398367 () Bool)

(declare-fun setNonEmpty!28142 () Bool)

(declare-fun inv!75670 (Context!6308) Bool)

(assert (=> setNonEmpty!28142 (= setRes!28142 (and tp!1398367 (inv!75670 setElem!28142) e!3118169))))

(declare-fun setRest!28142 () (InoxSet Context!6308))

(assert (=> setNonEmpty!28142 (= z!4183 ((_ map or) (store ((as const (Array Context!6308 Bool)) false) setElem!28142 true) setRest!28142))))

(declare-fun b!4989316 () Bool)

(declare-fun tp!1398366 () Bool)

(declare-fun tp!1398372 () Bool)

(assert (=> b!4989316 (= e!3118166 (and tp!1398366 tp!1398372))))

(assert (= (and start!527414 res!2129860) b!4989312))

(assert (= (and b!4989312 res!2129861) b!4989308))

(assert (= (and b!4989308 res!2129859) b!4989315))

(get-info :version)

(assert (= (and start!527414 ((_ is ElementMatch!13729) r!12727)) b!4989313))

(assert (= (and start!527414 ((_ is Concat!22522) r!12727)) b!4989316))

(assert (= (and start!527414 ((_ is Star!13729) r!12727)) b!4989309))

(assert (= (and start!527414 ((_ is Union!13729) r!12727)) b!4989307))

(assert (= (and start!527414 condSetEmpty!28142) setIsEmpty!28142))

(assert (= (and start!527414 (not condSetEmpty!28142)) setNonEmpty!28142))

(assert (= setNonEmpty!28142 b!4989310))

(assert (= start!527414 b!4989311))

(assert (= start!527414 b!4989314))

(declare-fun m!6021206 () Bool)

(assert (=> b!4989311 m!6021206))

(declare-fun m!6021208 () Bool)

(assert (=> b!4989314 m!6021208))

(declare-fun m!6021210 () Bool)

(assert (=> start!527414 m!6021210))

(declare-fun m!6021212 () Bool)

(assert (=> start!527414 m!6021212))

(declare-fun m!6021214 () Bool)

(assert (=> start!527414 m!6021214))

(declare-fun m!6021216 () Bool)

(assert (=> b!4989308 m!6021216))

(declare-fun m!6021218 () Bool)

(assert (=> b!4989308 m!6021218))

(assert (=> b!4989308 m!6021216))

(assert (=> b!4989308 m!6021218))

(declare-fun m!6021220 () Bool)

(assert (=> b!4989308 m!6021220))

(declare-fun m!6021222 () Bool)

(assert (=> setNonEmpty!28142 m!6021222))

(declare-fun m!6021224 () Bool)

(assert (=> b!4989315 m!6021224))

(declare-fun m!6021226 () Bool)

(assert (=> b!4989315 m!6021226))

(declare-fun m!6021228 () Bool)

(assert (=> b!4989315 m!6021228))

(declare-fun m!6021230 () Bool)

(assert (=> b!4989312 m!6021230))

(assert (=> b!4989312 m!6021230))

(declare-fun m!6021232 () Bool)

(assert (=> b!4989312 m!6021232))

(check-sat (not b!4989315) (not b!4989316) (not b!4989314) (not b!4989308) (not b!4989312) (not b!4989307) (not b!4989310) (not b!4989311) (not setNonEmpty!28142) tp_is_empty!36455 (not start!527414) (not b!4989309))
(check-sat)
