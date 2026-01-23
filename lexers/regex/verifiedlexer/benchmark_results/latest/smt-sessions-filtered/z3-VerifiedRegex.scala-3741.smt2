; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209446 () Bool)

(assert start!209446)

(declare-fun b!2158765 () Bool)

(declare-fun b_free!63789 () Bool)

(declare-fun b_next!64493 () Bool)

(assert (=> b!2158765 (= b_free!63789 (not b_next!64493))))

(declare-fun tp!672906 () Bool)

(declare-fun b_and!173405 () Bool)

(assert (=> b!2158765 (= tp!672906 b_and!173405)))

(declare-fun b!2158757 () Bool)

(declare-fun b_free!63791 () Bool)

(declare-fun b_next!64495 () Bool)

(assert (=> b!2158757 (= b_free!63791 (not b_next!64495))))

(declare-fun tp!672910 () Bool)

(declare-fun b_and!173407 () Bool)

(assert (=> b!2158757 (= tp!672910 b_and!173407)))

(declare-fun mapIsEmpty!13925 () Bool)

(declare-fun mapRes!13925 () Bool)

(assert (=> mapIsEmpty!13925 mapRes!13925))

(declare-fun res!930255 () Bool)

(declare-fun e!1381152 () Bool)

(assert (=> start!209446 (=> (not res!930255) (not e!1381152))))

(declare-datatypes ((C!12044 0))(
  ( (C!12045 (val!7008 Int)) )
))
(declare-datatypes ((List!25056 0))(
  ( (Nil!24972) (Cons!24972 (h!30373 C!12044) (t!197604 List!25056)) )
))
(declare-datatypes ((IArray!16175 0))(
  ( (IArray!16176 (innerList!8145 List!25056)) )
))
(declare-datatypes ((Conc!8085 0))(
  ( (Node!8085 (left!19224 Conc!8085) (right!19554 Conc!8085) (csize!16400 Int) (cheight!8296 Int)) (Leaf!11827 (xs!11027 IArray!16175) (csize!16401 Int)) (Empty!8085) )
))
(declare-datatypes ((BalanceConc!15932 0))(
  ( (BalanceConc!15933 (c!341762 Conc!8085)) )
))
(declare-fun localTotalInput!17 () BalanceConc!15932)

(declare-datatypes ((Regex!5949 0))(
  ( (ElementMatch!5949 (c!341763 C!12044)) (Concat!10251 (regOne!12410 Regex!5949) (regTwo!12410 Regex!5949)) (EmptyExpr!5949) (Star!5949 (reg!6278 Regex!5949)) (EmptyLang!5949) (Union!5949 (regOne!12411 Regex!5949) (regTwo!12411 Regex!5949)) )
))
(declare-datatypes ((List!25057 0))(
  ( (Nil!24973) (Cons!24973 (h!30374 Regex!5949) (t!197605 List!25057)) )
))
(declare-datatypes ((Context!3038 0))(
  ( (Context!3039 (exprs!2019 List!25057)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3782 0))(
  ( (tuple3!3783 (_1!14699 (InoxSet Context!3038)) (_2!14699 Int) (_3!2361 Int)) )
))
(declare-datatypes ((array!10085 0))(
  ( (array!10086 (arr!4496 (Array (_ BitVec 32) (_ BitVec 64))) (size!19522 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!24676 0))(
  ( (tuple2!24677 (_1!14700 tuple3!3782) (_2!14700 Int)) )
))
(declare-datatypes ((List!25058 0))(
  ( (Nil!24974) (Cons!24974 (h!30375 tuple2!24676) (t!197606 List!25058)) )
))
(declare-datatypes ((array!10087 0))(
  ( (array!10088 (arr!4497 (Array (_ BitVec 32) List!25058)) (size!19523 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5900 0))(
  ( (LongMapFixedSize!5901 (defaultEntry!3315 Int) (mask!7240 (_ BitVec 32)) (extraKeys!3198 (_ BitVec 32)) (zeroValue!3208 List!25058) (minValue!3208 List!25058) (_size!5951 (_ BitVec 32)) (_keys!3247 array!10085) (_values!3230 array!10087) (_vacant!3011 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11625 0))(
  ( (Cell!11626 (v!29369 LongMapFixedSize!5900)) )
))
(declare-datatypes ((MutLongMap!2950 0))(
  ( (LongMap!2950 (underlying!6095 Cell!11625)) (MutLongMapExt!2949 (__x!17026 Int)) )
))
(declare-datatypes ((Cell!11627 0))(
  ( (Cell!11628 (v!29370 MutLongMap!2950)) )
))
(declare-datatypes ((Hashable!2864 0))(
  ( (HashableExt!2863 (__x!17027 Int)) )
))
(declare-datatypes ((MutableMap!2864 0))(
  ( (MutableMapExt!2863 (__x!17028 Int)) (HashMap!2864 (underlying!6096 Cell!11627) (hashF!4787 Hashable!2864) (_size!5952 (_ BitVec 32)) (defaultValue!3026 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!1086 0))(
  ( (CacheFurthestNullable!1087 (cache!3245 MutableMap!2864) (totalInput!3403 BalanceConc!15932)) )
))
(declare-fun thiss!29220 () CacheFurthestNullable!1086)

(assert (=> start!209446 (= res!930255 (= localTotalInput!17 (totalInput!3403 thiss!29220)))))

(assert (=> start!209446 e!1381152))

(declare-fun e!1381150 () Bool)

(declare-fun inv!33054 (BalanceConc!15932) Bool)

(assert (=> start!209446 (and (inv!33054 localTotalInput!17) e!1381150)))

(assert (=> start!209446 true))

(declare-fun condSetEmpty!17890 () Bool)

(declare-fun z!540 () (InoxSet Context!3038))

(assert (=> start!209446 (= condSetEmpty!17890 (= z!540 ((as const (Array Context!3038 Bool)) false)))))

(declare-fun setRes!17890 () Bool)

(assert (=> start!209446 setRes!17890))

(declare-fun e!1381153 () Bool)

(declare-fun inv!33055 (CacheFurthestNullable!1086) Bool)

(assert (=> start!209446 (and (inv!33055 thiss!29220) e!1381153)))

(declare-fun mapNonEmpty!13925 () Bool)

(declare-fun tp!672905 () Bool)

(declare-fun tp!672904 () Bool)

(assert (=> mapNonEmpty!13925 (= mapRes!13925 (and tp!672905 tp!672904))))

(declare-fun mapKey!13925 () (_ BitVec 32))

(declare-fun mapRest!13925 () (Array (_ BitVec 32) List!25058))

(declare-fun mapValue!13925 () List!25058)

(assert (=> mapNonEmpty!13925 (= (arr!4497 (_values!3230 (v!29369 (underlying!6095 (v!29370 (underlying!6096 (cache!3245 thiss!29220))))))) (store mapRest!13925 mapKey!13925 mapValue!13925))))

(declare-fun b!2158750 () Bool)

(declare-fun e!1381158 () Bool)

(assert (=> b!2158750 (= e!1381152 e!1381158)))

(declare-fun res!930260 () Bool)

(assert (=> b!2158750 (=> (not res!930260) (not e!1381158))))

(declare-fun from!970 () Int)

(declare-fun lt!802424 () Int)

(declare-fun lastNullablePos!109 () Int)

(assert (=> b!2158750 (= res!930260 (and (<= from!970 lt!802424) (>= lastNullablePos!109 (- 1)) (< lastNullablePos!109 from!970)))))

(declare-fun size!19524 (BalanceConc!15932) Int)

(assert (=> b!2158750 (= lt!802424 (size!19524 (totalInput!3403 thiss!29220)))))

(declare-fun b!2158751 () Bool)

(declare-fun valid!2274 (MutableMap!2864) Bool)

(assert (=> b!2158751 (= e!1381158 (not (valid!2274 (cache!3245 thiss!29220))))))

(declare-fun b!2158752 () Bool)

(declare-fun e!1381161 () Bool)

(declare-fun tp!672914 () Bool)

(assert (=> b!2158752 (= e!1381161 (and tp!672914 mapRes!13925))))

(declare-fun condMapEmpty!13925 () Bool)

(declare-fun mapDefault!13925 () List!25058)

(assert (=> b!2158752 (= condMapEmpty!13925 (= (arr!4497 (_values!3230 (v!29369 (underlying!6095 (v!29370 (underlying!6096 (cache!3245 thiss!29220))))))) ((as const (Array (_ BitVec 32) List!25058)) mapDefault!13925)))))

(declare-fun b!2158753 () Bool)

(declare-fun res!930262 () Bool)

(assert (=> b!2158753 (=> (not res!930262) (not e!1381152))))

(declare-fun validCacheMapFurthestNullable!187 (MutableMap!2864 BalanceConc!15932) Bool)

(assert (=> b!2158753 (= res!930262 (validCacheMapFurthestNullable!187 (cache!3245 thiss!29220) (totalInput!3403 thiss!29220)))))

(declare-fun b!2158754 () Bool)

(declare-fun e!1381160 () Bool)

(declare-fun tp!672909 () Bool)

(declare-fun inv!33056 (Conc!8085) Bool)

(assert (=> b!2158754 (= e!1381160 (and (inv!33056 (c!341762 (totalInput!3403 thiss!29220))) tp!672909))))

(declare-fun e!1381151 () Bool)

(declare-fun setElem!17890 () Context!3038)

(declare-fun tp!672908 () Bool)

(declare-fun setNonEmpty!17890 () Bool)

(declare-fun inv!33057 (Context!3038) Bool)

(assert (=> setNonEmpty!17890 (= setRes!17890 (and tp!672908 (inv!33057 setElem!17890) e!1381151))))

(declare-fun setRest!17890 () (InoxSet Context!3038))

(assert (=> setNonEmpty!17890 (= z!540 ((_ map or) (store ((as const (Array Context!3038 Bool)) false) setElem!17890 true) setRest!17890))))

(declare-fun b!2158755 () Bool)

(declare-fun res!930256 () Bool)

(assert (=> b!2158755 (=> (not res!930256) (not e!1381158))))

(declare-fun res!14508 () Int)

(declare-fun furthestNullablePosition!148 ((InoxSet Context!3038) Int BalanceConc!15932 Int Int) Int)

(assert (=> b!2158755 (= res!930256 (= res!14508 (furthestNullablePosition!148 z!540 from!970 (totalInput!3403 thiss!29220) lt!802424 lastNullablePos!109)))))

(declare-fun b!2158756 () Bool)

(declare-fun res!930258 () Bool)

(assert (=> b!2158756 (=> (not res!930258) (not e!1381158))))

(get-info :version)

(assert (=> b!2158756 (= res!930258 ((_ is HashMap!2864) (cache!3245 thiss!29220)))))

(declare-fun e!1381159 () Bool)

(declare-fun e!1381154 () Bool)

(assert (=> b!2158757 (= e!1381159 (and e!1381154 tp!672910))))

(declare-fun b!2158758 () Bool)

(assert (=> b!2158758 (= e!1381153 (and e!1381159 (inv!33054 (totalInput!3403 thiss!29220)) e!1381160))))

(declare-fun b!2158759 () Bool)

(declare-fun tp!672913 () Bool)

(assert (=> b!2158759 (= e!1381150 (and (inv!33056 (c!341762 localTotalInput!17)) tp!672913))))

(declare-fun b!2158760 () Bool)

(declare-fun res!930261 () Bool)

(assert (=> b!2158760 (=> (not res!930261) (not e!1381152))))

(assert (=> b!2158760 (= res!930261 (>= from!970 0))))

(declare-fun b!2158761 () Bool)

(declare-fun e!1381162 () Bool)

(declare-fun lt!802423 () MutLongMap!2950)

(assert (=> b!2158761 (= e!1381154 (and e!1381162 ((_ is LongMap!2950) lt!802423)))))

(assert (=> b!2158761 (= lt!802423 (v!29370 (underlying!6096 (cache!3245 thiss!29220))))))

(declare-fun setIsEmpty!17890 () Bool)

(assert (=> setIsEmpty!17890 setRes!17890))

(declare-fun b!2158762 () Bool)

(declare-fun tp!672911 () Bool)

(assert (=> b!2158762 (= e!1381151 tp!672911)))

(declare-fun b!2158763 () Bool)

(declare-fun e!1381155 () Bool)

(assert (=> b!2158763 (= e!1381155 (= lastNullablePos!109 (- from!970 1)))))

(declare-fun b!2158764 () Bool)

(declare-fun e!1381149 () Bool)

(assert (=> b!2158764 (= e!1381162 e!1381149)))

(declare-fun tp!672907 () Bool)

(declare-fun tp!672912 () Bool)

(declare-fun e!1381157 () Bool)

(declare-fun array_inv!3224 (array!10085) Bool)

(declare-fun array_inv!3225 (array!10087) Bool)

(assert (=> b!2158765 (= e!1381157 (and tp!672906 tp!672912 tp!672907 (array_inv!3224 (_keys!3247 (v!29369 (underlying!6095 (v!29370 (underlying!6096 (cache!3245 thiss!29220))))))) (array_inv!3225 (_values!3230 (v!29369 (underlying!6095 (v!29370 (underlying!6096 (cache!3245 thiss!29220))))))) e!1381161))))

(declare-fun b!2158766 () Bool)

(assert (=> b!2158766 (= e!1381149 e!1381157)))

(declare-fun b!2158767 () Bool)

(declare-fun res!930259 () Bool)

(assert (=> b!2158767 (=> (not res!930259) (not e!1381158))))

(assert (=> b!2158767 (= res!930259 e!1381155)))

(declare-fun res!930257 () Bool)

(assert (=> b!2158767 (=> res!930257 e!1381155)))

(declare-fun nullableZipper!238 ((InoxSet Context!3038)) Bool)

(assert (=> b!2158767 (= res!930257 (not (nullableZipper!238 z!540)))))

(assert (= (and start!209446 res!930255) b!2158753))

(assert (= (and b!2158753 res!930262) b!2158760))

(assert (= (and b!2158760 res!930261) b!2158750))

(assert (= (and b!2158750 res!930260) b!2158767))

(assert (= (and b!2158767 (not res!930257)) b!2158763))

(assert (= (and b!2158767 res!930259) b!2158755))

(assert (= (and b!2158755 res!930256) b!2158756))

(assert (= (and b!2158756 res!930258) b!2158751))

(assert (= start!209446 b!2158759))

(assert (= (and start!209446 condSetEmpty!17890) setIsEmpty!17890))

(assert (= (and start!209446 (not condSetEmpty!17890)) setNonEmpty!17890))

(assert (= setNonEmpty!17890 b!2158762))

(assert (= (and b!2158752 condMapEmpty!13925) mapIsEmpty!13925))

(assert (= (and b!2158752 (not condMapEmpty!13925)) mapNonEmpty!13925))

(assert (= b!2158765 b!2158752))

(assert (= b!2158766 b!2158765))

(assert (= b!2158764 b!2158766))

(assert (= (and b!2158761 ((_ is LongMap!2950) (v!29370 (underlying!6096 (cache!3245 thiss!29220))))) b!2158764))

(assert (= b!2158757 b!2158761))

(assert (= (and b!2158758 ((_ is HashMap!2864) (cache!3245 thiss!29220))) b!2158757))

(assert (= b!2158758 b!2158754))

(assert (= start!209446 b!2158758))

(declare-fun m!2598731 () Bool)

(assert (=> b!2158767 m!2598731))

(declare-fun m!2598733 () Bool)

(assert (=> b!2158753 m!2598733))

(declare-fun m!2598735 () Bool)

(assert (=> b!2158754 m!2598735))

(declare-fun m!2598737 () Bool)

(assert (=> b!2158758 m!2598737))

(declare-fun m!2598739 () Bool)

(assert (=> start!209446 m!2598739))

(declare-fun m!2598741 () Bool)

(assert (=> start!209446 m!2598741))

(declare-fun m!2598743 () Bool)

(assert (=> b!2158751 m!2598743))

(declare-fun m!2598745 () Bool)

(assert (=> b!2158759 m!2598745))

(declare-fun m!2598747 () Bool)

(assert (=> setNonEmpty!17890 m!2598747))

(declare-fun m!2598749 () Bool)

(assert (=> b!2158750 m!2598749))

(declare-fun m!2598751 () Bool)

(assert (=> mapNonEmpty!13925 m!2598751))

(declare-fun m!2598753 () Bool)

(assert (=> b!2158765 m!2598753))

(declare-fun m!2598755 () Bool)

(assert (=> b!2158765 m!2598755))

(declare-fun m!2598757 () Bool)

(assert (=> b!2158755 m!2598757))

(check-sat (not b!2158758) (not b!2158765) (not b!2158767) (not b_next!64495) (not b!2158755) b_and!173407 (not mapNonEmpty!13925) (not setNonEmpty!17890) (not b!2158754) (not b!2158752) (not start!209446) (not b!2158750) (not b!2158751) (not b!2158762) (not b_next!64493) b_and!173405 (not b!2158753) (not b!2158759))
(check-sat b_and!173405 b_and!173407 (not b_next!64493) (not b_next!64495))
(get-model)

(declare-fun d!646712 () Bool)

(declare-fun c!341766 () Bool)

(assert (=> d!646712 (= c!341766 ((_ is Node!8085) (c!341762 (totalInput!3403 thiss!29220))))))

(declare-fun e!1381167 () Bool)

(assert (=> d!646712 (= (inv!33056 (c!341762 (totalInput!3403 thiss!29220))) e!1381167)))

(declare-fun b!2158774 () Bool)

(declare-fun inv!33058 (Conc!8085) Bool)

(assert (=> b!2158774 (= e!1381167 (inv!33058 (c!341762 (totalInput!3403 thiss!29220))))))

(declare-fun b!2158775 () Bool)

(declare-fun e!1381168 () Bool)

(assert (=> b!2158775 (= e!1381167 e!1381168)))

(declare-fun res!930265 () Bool)

(assert (=> b!2158775 (= res!930265 (not ((_ is Leaf!11827) (c!341762 (totalInput!3403 thiss!29220)))))))

(assert (=> b!2158775 (=> res!930265 e!1381168)))

(declare-fun b!2158776 () Bool)

(declare-fun inv!33059 (Conc!8085) Bool)

(assert (=> b!2158776 (= e!1381168 (inv!33059 (c!341762 (totalInput!3403 thiss!29220))))))

(assert (= (and d!646712 c!341766) b!2158774))

(assert (= (and d!646712 (not c!341766)) b!2158775))

(assert (= (and b!2158775 (not res!930265)) b!2158776))

(declare-fun m!2598759 () Bool)

(assert (=> b!2158774 m!2598759))

(declare-fun m!2598761 () Bool)

(assert (=> b!2158776 m!2598761))

(assert (=> b!2158754 d!646712))

(declare-fun d!646714 () Bool)

(declare-fun isBalanced!2511 (Conc!8085) Bool)

(assert (=> d!646714 (= (inv!33054 localTotalInput!17) (isBalanced!2511 (c!341762 localTotalInput!17)))))

(declare-fun bs!445975 () Bool)

(assert (= bs!445975 d!646714))

(declare-fun m!2598763 () Bool)

(assert (=> bs!445975 m!2598763))

(assert (=> start!209446 d!646714))

(declare-fun d!646716 () Bool)

(declare-fun res!930268 () Bool)

(declare-fun e!1381171 () Bool)

(assert (=> d!646716 (=> (not res!930268) (not e!1381171))))

(assert (=> d!646716 (= res!930268 ((_ is HashMap!2864) (cache!3245 thiss!29220)))))

(assert (=> d!646716 (= (inv!33055 thiss!29220) e!1381171)))

(declare-fun b!2158779 () Bool)

(assert (=> b!2158779 (= e!1381171 (validCacheMapFurthestNullable!187 (cache!3245 thiss!29220) (totalInput!3403 thiss!29220)))))

(assert (= (and d!646716 res!930268) b!2158779))

(assert (=> b!2158779 m!2598733))

(assert (=> start!209446 d!646716))

(declare-fun d!646718 () Bool)

(assert (=> d!646718 (= (inv!33054 (totalInput!3403 thiss!29220)) (isBalanced!2511 (c!341762 (totalInput!3403 thiss!29220))))))

(declare-fun bs!445976 () Bool)

(assert (= bs!445976 d!646718))

(declare-fun m!2598765 () Bool)

(assert (=> bs!445976 m!2598765))

(assert (=> b!2158758 d!646718))

(declare-fun d!646720 () Bool)

(declare-fun c!341767 () Bool)

(assert (=> d!646720 (= c!341767 ((_ is Node!8085) (c!341762 localTotalInput!17)))))

(declare-fun e!1381172 () Bool)

(assert (=> d!646720 (= (inv!33056 (c!341762 localTotalInput!17)) e!1381172)))

(declare-fun b!2158780 () Bool)

(assert (=> b!2158780 (= e!1381172 (inv!33058 (c!341762 localTotalInput!17)))))

(declare-fun b!2158781 () Bool)

(declare-fun e!1381173 () Bool)

(assert (=> b!2158781 (= e!1381172 e!1381173)))

(declare-fun res!930269 () Bool)

(assert (=> b!2158781 (= res!930269 (not ((_ is Leaf!11827) (c!341762 localTotalInput!17))))))

(assert (=> b!2158781 (=> res!930269 e!1381173)))

(declare-fun b!2158782 () Bool)

(assert (=> b!2158782 (= e!1381173 (inv!33059 (c!341762 localTotalInput!17)))))

(assert (= (and d!646720 c!341767) b!2158780))

(assert (= (and d!646720 (not c!341767)) b!2158781))

(assert (= (and b!2158781 (not res!930269)) b!2158782))

(declare-fun m!2598767 () Bool)

(assert (=> b!2158780 m!2598767))

(declare-fun m!2598769 () Bool)

(assert (=> b!2158782 m!2598769))

(assert (=> b!2158759 d!646720))

(declare-fun d!646722 () Bool)

(declare-fun lambda!81518 () Int)

(declare-fun exists!743 ((InoxSet Context!3038) Int) Bool)

(assert (=> d!646722 (= (nullableZipper!238 z!540) (exists!743 z!540 lambda!81518))))

(declare-fun bs!445977 () Bool)

(assert (= bs!445977 d!646722))

(declare-fun m!2598771 () Bool)

(assert (=> bs!445977 m!2598771))

(assert (=> b!2158767 d!646722))

(declare-fun b!2158788 () Bool)

(assert (=> b!2158788 true))

(declare-fun d!646724 () Bool)

(declare-fun res!930274 () Bool)

(declare-fun e!1381176 () Bool)

(assert (=> d!646724 (=> (not res!930274) (not e!1381176))))

(assert (=> d!646724 (= res!930274 (valid!2274 (cache!3245 thiss!29220)))))

(assert (=> d!646724 (= (validCacheMapFurthestNullable!187 (cache!3245 thiss!29220) (totalInput!3403 thiss!29220)) e!1381176)))

(declare-fun b!2158787 () Bool)

(declare-fun res!930275 () Bool)

(assert (=> b!2158787 (=> (not res!930275) (not e!1381176))))

(declare-fun invariantList!335 (List!25058) Bool)

(declare-datatypes ((ListMap!729 0))(
  ( (ListMap!730 (toList!1131 List!25058)) )
))
(declare-fun map!5032 (MutableMap!2864) ListMap!729)

(assert (=> b!2158787 (= res!930275 (invariantList!335 (toList!1131 (map!5032 (cache!3245 thiss!29220)))))))

(declare-fun lambda!81521 () Int)

(declare-fun forall!5137 (List!25058 Int) Bool)

(assert (=> b!2158788 (= e!1381176 (forall!5137 (toList!1131 (map!5032 (cache!3245 thiss!29220))) lambda!81521))))

(assert (= (and d!646724 res!930274) b!2158787))

(assert (= (and b!2158787 res!930275) b!2158788))

(assert (=> d!646724 m!2598743))

(declare-fun m!2598774 () Bool)

(assert (=> b!2158787 m!2598774))

(declare-fun m!2598776 () Bool)

(assert (=> b!2158787 m!2598776))

(assert (=> b!2158788 m!2598774))

(declare-fun m!2598778 () Bool)

(assert (=> b!2158788 m!2598778))

(assert (=> b!2158753 d!646724))

(declare-fun d!646726 () Bool)

(assert (=> d!646726 (= (array_inv!3224 (_keys!3247 (v!29369 (underlying!6095 (v!29370 (underlying!6096 (cache!3245 thiss!29220))))))) (bvsge (size!19522 (_keys!3247 (v!29369 (underlying!6095 (v!29370 (underlying!6096 (cache!3245 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2158765 d!646726))

(declare-fun d!646728 () Bool)

(assert (=> d!646728 (= (array_inv!3225 (_values!3230 (v!29369 (underlying!6095 (v!29370 (underlying!6096 (cache!3245 thiss!29220))))))) (bvsge (size!19523 (_values!3230 (v!29369 (underlying!6095 (v!29370 (underlying!6096 (cache!3245 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2158765 d!646728))

(declare-fun d!646730 () Bool)

(declare-fun res!930280 () Bool)

(declare-fun e!1381179 () Bool)

(assert (=> d!646730 (=> (not res!930280) (not e!1381179))))

(declare-fun valid!2275 (MutLongMap!2950) Bool)

(assert (=> d!646730 (= res!930280 (valid!2275 (v!29370 (underlying!6096 (cache!3245 thiss!29220)))))))

(assert (=> d!646730 (= (valid!2274 (cache!3245 thiss!29220)) e!1381179)))

(declare-fun b!2158795 () Bool)

(declare-fun res!930281 () Bool)

(assert (=> b!2158795 (=> (not res!930281) (not e!1381179))))

(declare-fun lambda!81524 () Int)

(declare-datatypes ((tuple2!24678 0))(
  ( (tuple2!24679 (_1!14701 (_ BitVec 64)) (_2!14701 List!25058)) )
))
(declare-datatypes ((List!25059 0))(
  ( (Nil!24975) (Cons!24975 (h!30376 tuple2!24678) (t!197607 List!25059)) )
))
(declare-fun forall!5138 (List!25059 Int) Bool)

(declare-datatypes ((ListLongMap!271 0))(
  ( (ListLongMap!272 (toList!1132 List!25059)) )
))
(declare-fun map!5033 (MutLongMap!2950) ListLongMap!271)

(assert (=> b!2158795 (= res!930281 (forall!5138 (toList!1132 (map!5033 (v!29370 (underlying!6096 (cache!3245 thiss!29220))))) lambda!81524))))

(declare-fun b!2158796 () Bool)

(declare-fun allKeysSameHashInMap!90 (ListLongMap!271 Hashable!2864) Bool)

(assert (=> b!2158796 (= e!1381179 (allKeysSameHashInMap!90 (map!5033 (v!29370 (underlying!6096 (cache!3245 thiss!29220)))) (hashF!4787 (cache!3245 thiss!29220))))))

(assert (= (and d!646730 res!930280) b!2158795))

(assert (= (and b!2158795 res!930281) b!2158796))

(declare-fun m!2598780 () Bool)

(assert (=> d!646730 m!2598780))

(declare-fun m!2598782 () Bool)

(assert (=> b!2158795 m!2598782))

(declare-fun m!2598784 () Bool)

(assert (=> b!2158795 m!2598784))

(assert (=> b!2158796 m!2598782))

(assert (=> b!2158796 m!2598782))

(declare-fun m!2598786 () Bool)

(assert (=> b!2158796 m!2598786))

(assert (=> b!2158751 d!646730))

(declare-fun d!646732 () Bool)

(declare-fun lt!802427 () Int)

(declare-fun size!19525 (List!25056) Int)

(declare-fun list!9573 (BalanceConc!15932) List!25056)

(assert (=> d!646732 (= lt!802427 (size!19525 (list!9573 (totalInput!3403 thiss!29220))))))

(declare-fun size!19526 (Conc!8085) Int)

(assert (=> d!646732 (= lt!802427 (size!19526 (c!341762 (totalInput!3403 thiss!29220))))))

(assert (=> d!646732 (= (size!19524 (totalInput!3403 thiss!29220)) lt!802427)))

(declare-fun bs!445978 () Bool)

(assert (= bs!445978 d!646732))

(declare-fun m!2598788 () Bool)

(assert (=> bs!445978 m!2598788))

(assert (=> bs!445978 m!2598788))

(declare-fun m!2598790 () Bool)

(assert (=> bs!445978 m!2598790))

(declare-fun m!2598792 () Bool)

(assert (=> bs!445978 m!2598792))

(assert (=> b!2158750 d!646732))

(declare-fun d!646734 () Bool)

(declare-fun lambda!81527 () Int)

(declare-fun forall!5139 (List!25057 Int) Bool)

(assert (=> d!646734 (= (inv!33057 setElem!17890) (forall!5139 (exprs!2019 setElem!17890) lambda!81527))))

(declare-fun bs!445979 () Bool)

(assert (= bs!445979 d!646734))

(declare-fun m!2598794 () Bool)

(assert (=> bs!445979 m!2598794))

(assert (=> setNonEmpty!17890 d!646734))

(declare-fun d!646736 () Bool)

(declare-fun lt!802433 () Int)

(assert (=> d!646736 (and (>= lt!802433 (- 1)) (< lt!802433 lt!802424) (>= lt!802433 lastNullablePos!109) (or (= lt!802433 lastNullablePos!109) (>= lt!802433 from!970)))))

(declare-fun e!1381188 () Int)

(assert (=> d!646736 (= lt!802433 e!1381188)))

(declare-fun c!341774 () Bool)

(declare-fun e!1381186 () Bool)

(assert (=> d!646736 (= c!341774 e!1381186)))

(declare-fun res!930284 () Bool)

(assert (=> d!646736 (=> res!930284 e!1381186)))

(assert (=> d!646736 (= res!930284 (= from!970 lt!802424))))

(assert (=> d!646736 (and (>= from!970 0) (<= from!970 lt!802424))))

(assert (=> d!646736 (= (furthestNullablePosition!148 z!540 from!970 (totalInput!3403 thiss!29220) lt!802424 lastNullablePos!109) lt!802433)))

(declare-fun b!2158807 () Bool)

(assert (=> b!2158807 (= e!1381188 lastNullablePos!109)))

(declare-fun b!2158808 () Bool)

(declare-fun lostCauseZipper!146 ((InoxSet Context!3038)) Bool)

(assert (=> b!2158808 (= e!1381186 (lostCauseZipper!146 z!540))))

(declare-fun e!1381187 () Int)

(declare-fun b!2158809 () Bool)

(declare-fun lt!802432 () (InoxSet Context!3038))

(assert (=> b!2158809 (= e!1381188 (furthestNullablePosition!148 lt!802432 (+ from!970 1) (totalInput!3403 thiss!29220) lt!802424 e!1381187))))

(declare-fun derivationStepZipper!113 ((InoxSet Context!3038) C!12044) (InoxSet Context!3038))

(declare-fun apply!6048 (BalanceConc!15932 Int) C!12044)

(assert (=> b!2158809 (= lt!802432 (derivationStepZipper!113 z!540 (apply!6048 (totalInput!3403 thiss!29220) from!970)))))

(declare-fun c!341775 () Bool)

(assert (=> b!2158809 (= c!341775 (nullableZipper!238 lt!802432))))

(declare-fun b!2158810 () Bool)

(assert (=> b!2158810 (= e!1381187 lastNullablePos!109)))

(declare-fun b!2158811 () Bool)

(assert (=> b!2158811 (= e!1381187 from!970)))

(assert (= (and d!646736 (not res!930284)) b!2158808))

(assert (= (and d!646736 c!341774) b!2158807))

(assert (= (and d!646736 (not c!341774)) b!2158809))

(assert (= (and b!2158809 c!341775) b!2158811))

(assert (= (and b!2158809 (not c!341775)) b!2158810))

(declare-fun m!2598796 () Bool)

(assert (=> b!2158808 m!2598796))

(declare-fun m!2598798 () Bool)

(assert (=> b!2158809 m!2598798))

(declare-fun m!2598800 () Bool)

(assert (=> b!2158809 m!2598800))

(assert (=> b!2158809 m!2598800))

(declare-fun m!2598802 () Bool)

(assert (=> b!2158809 m!2598802))

(declare-fun m!2598804 () Bool)

(assert (=> b!2158809 m!2598804))

(assert (=> b!2158755 d!646736))

(declare-fun tp!672921 () Bool)

(declare-fun e!1381193 () Bool)

(declare-fun tp!672922 () Bool)

(declare-fun b!2158820 () Bool)

(assert (=> b!2158820 (= e!1381193 (and (inv!33056 (left!19224 (c!341762 (totalInput!3403 thiss!29220)))) tp!672922 (inv!33056 (right!19554 (c!341762 (totalInput!3403 thiss!29220)))) tp!672921))))

(declare-fun b!2158822 () Bool)

(declare-fun e!1381194 () Bool)

(declare-fun tp!672923 () Bool)

(assert (=> b!2158822 (= e!1381194 tp!672923)))

(declare-fun b!2158821 () Bool)

(declare-fun inv!33060 (IArray!16175) Bool)

(assert (=> b!2158821 (= e!1381193 (and (inv!33060 (xs!11027 (c!341762 (totalInput!3403 thiss!29220)))) e!1381194))))

(assert (=> b!2158754 (= tp!672909 (and (inv!33056 (c!341762 (totalInput!3403 thiss!29220))) e!1381193))))

(assert (= (and b!2158754 ((_ is Node!8085) (c!341762 (totalInput!3403 thiss!29220)))) b!2158820))

(assert (= b!2158821 b!2158822))

(assert (= (and b!2158754 ((_ is Leaf!11827) (c!341762 (totalInput!3403 thiss!29220)))) b!2158821))

(declare-fun m!2598806 () Bool)

(assert (=> b!2158820 m!2598806))

(declare-fun m!2598808 () Bool)

(assert (=> b!2158820 m!2598808))

(declare-fun m!2598810 () Bool)

(assert (=> b!2158821 m!2598810))

(assert (=> b!2158754 m!2598735))

(declare-fun e!1381195 () Bool)

(declare-fun b!2158823 () Bool)

(declare-fun tp!672925 () Bool)

(declare-fun tp!672924 () Bool)

(assert (=> b!2158823 (= e!1381195 (and (inv!33056 (left!19224 (c!341762 localTotalInput!17))) tp!672925 (inv!33056 (right!19554 (c!341762 localTotalInput!17))) tp!672924))))

(declare-fun b!2158825 () Bool)

(declare-fun e!1381196 () Bool)

(declare-fun tp!672926 () Bool)

(assert (=> b!2158825 (= e!1381196 tp!672926)))

(declare-fun b!2158824 () Bool)

(assert (=> b!2158824 (= e!1381195 (and (inv!33060 (xs!11027 (c!341762 localTotalInput!17))) e!1381196))))

(assert (=> b!2158759 (= tp!672913 (and (inv!33056 (c!341762 localTotalInput!17)) e!1381195))))

(assert (= (and b!2158759 ((_ is Node!8085) (c!341762 localTotalInput!17))) b!2158823))

(assert (= b!2158824 b!2158825))

(assert (= (and b!2158759 ((_ is Leaf!11827) (c!341762 localTotalInput!17))) b!2158824))

(declare-fun m!2598812 () Bool)

(assert (=> b!2158823 m!2598812))

(declare-fun m!2598814 () Bool)

(assert (=> b!2158823 m!2598814))

(declare-fun m!2598816 () Bool)

(assert (=> b!2158824 m!2598816))

(assert (=> b!2158759 m!2598745))

(declare-fun b!2158836 () Bool)

(declare-fun e!1381208 () Bool)

(declare-fun setRes!17896 () Bool)

(declare-fun tp!672946 () Bool)

(assert (=> b!2158836 (= e!1381208 (and setRes!17896 tp!672946))))

(declare-fun condSetEmpty!17895 () Bool)

(declare-fun mapDefault!13928 () List!25058)

(assert (=> b!2158836 (= condSetEmpty!17895 (= (_1!14699 (_1!14700 (h!30375 mapDefault!13928))) ((as const (Array Context!3038 Bool)) false)))))

(declare-fun setIsEmpty!17895 () Bool)

(assert (=> setIsEmpty!17895 setRes!17896))

(declare-fun condMapEmpty!13928 () Bool)

(assert (=> mapNonEmpty!13925 (= condMapEmpty!13928 (= mapRest!13925 ((as const (Array (_ BitVec 32) List!25058)) mapDefault!13928)))))

(declare-fun mapRes!13928 () Bool)

(assert (=> mapNonEmpty!13925 (= tp!672905 (and e!1381208 mapRes!13928))))

(declare-fun mapIsEmpty!13928 () Bool)

(assert (=> mapIsEmpty!13928 mapRes!13928))

(declare-fun setNonEmpty!17895 () Bool)

(declare-fun tp!672942 () Bool)

(declare-fun setRes!17895 () Bool)

(declare-fun e!1381205 () Bool)

(declare-fun setElem!17895 () Context!3038)

(assert (=> setNonEmpty!17895 (= setRes!17895 (and tp!672942 (inv!33057 setElem!17895) e!1381205))))

(declare-fun mapValue!13928 () List!25058)

(declare-fun setRest!17895 () (InoxSet Context!3038))

(assert (=> setNonEmpty!17895 (= (_1!14699 (_1!14700 (h!30375 mapValue!13928))) ((_ map or) (store ((as const (Array Context!3038 Bool)) false) setElem!17895 true) setRest!17895))))

(declare-fun setIsEmpty!17896 () Bool)

(assert (=> setIsEmpty!17896 setRes!17895))

(declare-fun tp!672943 () Bool)

(declare-fun setElem!17896 () Context!3038)

(declare-fun setNonEmpty!17896 () Bool)

(declare-fun e!1381206 () Bool)

(assert (=> setNonEmpty!17896 (= setRes!17896 (and tp!672943 (inv!33057 setElem!17896) e!1381206))))

(declare-fun setRest!17896 () (InoxSet Context!3038))

(assert (=> setNonEmpty!17896 (= (_1!14699 (_1!14700 (h!30375 mapDefault!13928))) ((_ map or) (store ((as const (Array Context!3038 Bool)) false) setElem!17896 true) setRest!17896))))

(declare-fun mapNonEmpty!13928 () Bool)

(declare-fun tp!672941 () Bool)

(declare-fun e!1381207 () Bool)

(assert (=> mapNonEmpty!13928 (= mapRes!13928 (and tp!672941 e!1381207))))

(declare-fun mapRest!13928 () (Array (_ BitVec 32) List!25058))

(declare-fun mapKey!13928 () (_ BitVec 32))

(assert (=> mapNonEmpty!13928 (= mapRest!13925 (store mapRest!13928 mapKey!13928 mapValue!13928))))

(declare-fun b!2158837 () Bool)

(declare-fun tp!672945 () Bool)

(assert (=> b!2158837 (= e!1381207 (and setRes!17895 tp!672945))))

(declare-fun condSetEmpty!17896 () Bool)

(assert (=> b!2158837 (= condSetEmpty!17896 (= (_1!14699 (_1!14700 (h!30375 mapValue!13928))) ((as const (Array Context!3038 Bool)) false)))))

(declare-fun b!2158838 () Bool)

(declare-fun tp!672947 () Bool)

(assert (=> b!2158838 (= e!1381206 tp!672947)))

(declare-fun b!2158839 () Bool)

(declare-fun tp!672944 () Bool)

(assert (=> b!2158839 (= e!1381205 tp!672944)))

(assert (= (and mapNonEmpty!13925 condMapEmpty!13928) mapIsEmpty!13928))

(assert (= (and mapNonEmpty!13925 (not condMapEmpty!13928)) mapNonEmpty!13928))

(assert (= (and b!2158837 condSetEmpty!17896) setIsEmpty!17896))

(assert (= (and b!2158837 (not condSetEmpty!17896)) setNonEmpty!17895))

(assert (= setNonEmpty!17895 b!2158839))

(assert (= (and mapNonEmpty!13928 ((_ is Cons!24974) mapValue!13928)) b!2158837))

(assert (= (and b!2158836 condSetEmpty!17895) setIsEmpty!17895))

(assert (= (and b!2158836 (not condSetEmpty!17895)) setNonEmpty!17896))

(assert (= setNonEmpty!17896 b!2158838))

(assert (= (and mapNonEmpty!13925 ((_ is Cons!24974) mapDefault!13928)) b!2158836))

(declare-fun m!2598818 () Bool)

(assert (=> setNonEmpty!17895 m!2598818))

(declare-fun m!2598820 () Bool)

(assert (=> setNonEmpty!17896 m!2598820))

(declare-fun m!2598822 () Bool)

(assert (=> mapNonEmpty!13928 m!2598822))

(declare-fun setIsEmpty!17899 () Bool)

(declare-fun setRes!17899 () Bool)

(assert (=> setIsEmpty!17899 setRes!17899))

(declare-fun e!1381214 () Bool)

(assert (=> mapNonEmpty!13925 (= tp!672904 e!1381214)))

(declare-fun b!2158847 () Bool)

(declare-fun e!1381213 () Bool)

(declare-fun tp!672954 () Bool)

(assert (=> b!2158847 (= e!1381213 tp!672954)))

(declare-fun b!2158846 () Bool)

(declare-fun tp!672956 () Bool)

(assert (=> b!2158846 (= e!1381214 (and setRes!17899 tp!672956))))

(declare-fun condSetEmpty!17899 () Bool)

(assert (=> b!2158846 (= condSetEmpty!17899 (= (_1!14699 (_1!14700 (h!30375 mapValue!13925))) ((as const (Array Context!3038 Bool)) false)))))

(declare-fun setNonEmpty!17899 () Bool)

(declare-fun setElem!17899 () Context!3038)

(declare-fun tp!672955 () Bool)

(assert (=> setNonEmpty!17899 (= setRes!17899 (and tp!672955 (inv!33057 setElem!17899) e!1381213))))

(declare-fun setRest!17899 () (InoxSet Context!3038))

(assert (=> setNonEmpty!17899 (= (_1!14699 (_1!14700 (h!30375 mapValue!13925))) ((_ map or) (store ((as const (Array Context!3038 Bool)) false) setElem!17899 true) setRest!17899))))

(assert (= (and b!2158846 condSetEmpty!17899) setIsEmpty!17899))

(assert (= (and b!2158846 (not condSetEmpty!17899)) setNonEmpty!17899))

(assert (= setNonEmpty!17899 b!2158847))

(assert (= (and mapNonEmpty!13925 ((_ is Cons!24974) mapValue!13925)) b!2158846))

(declare-fun m!2598824 () Bool)

(assert (=> setNonEmpty!17899 m!2598824))

(declare-fun b!2158852 () Bool)

(declare-fun e!1381217 () Bool)

(declare-fun tp!672961 () Bool)

(declare-fun tp!672962 () Bool)

(assert (=> b!2158852 (= e!1381217 (and tp!672961 tp!672962))))

(assert (=> b!2158762 (= tp!672911 e!1381217)))

(assert (= (and b!2158762 ((_ is Cons!24973) (exprs!2019 setElem!17890))) b!2158852))

(declare-fun setIsEmpty!17900 () Bool)

(declare-fun setRes!17900 () Bool)

(assert (=> setIsEmpty!17900 setRes!17900))

(declare-fun e!1381219 () Bool)

(assert (=> b!2158765 (= tp!672912 e!1381219)))

(declare-fun b!2158854 () Bool)

(declare-fun e!1381218 () Bool)

(declare-fun tp!672963 () Bool)

(assert (=> b!2158854 (= e!1381218 tp!672963)))

(declare-fun b!2158853 () Bool)

(declare-fun tp!672965 () Bool)

(assert (=> b!2158853 (= e!1381219 (and setRes!17900 tp!672965))))

(declare-fun condSetEmpty!17900 () Bool)

(assert (=> b!2158853 (= condSetEmpty!17900 (= (_1!14699 (_1!14700 (h!30375 (zeroValue!3208 (v!29369 (underlying!6095 (v!29370 (underlying!6096 (cache!3245 thiss!29220))))))))) ((as const (Array Context!3038 Bool)) false)))))

(declare-fun tp!672964 () Bool)

(declare-fun setNonEmpty!17900 () Bool)

(declare-fun setElem!17900 () Context!3038)

(assert (=> setNonEmpty!17900 (= setRes!17900 (and tp!672964 (inv!33057 setElem!17900) e!1381218))))

(declare-fun setRest!17900 () (InoxSet Context!3038))

(assert (=> setNonEmpty!17900 (= (_1!14699 (_1!14700 (h!30375 (zeroValue!3208 (v!29369 (underlying!6095 (v!29370 (underlying!6096 (cache!3245 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3038 Bool)) false) setElem!17900 true) setRest!17900))))

(assert (= (and b!2158853 condSetEmpty!17900) setIsEmpty!17900))

(assert (= (and b!2158853 (not condSetEmpty!17900)) setNonEmpty!17900))

(assert (= setNonEmpty!17900 b!2158854))

(assert (= (and b!2158765 ((_ is Cons!24974) (zeroValue!3208 (v!29369 (underlying!6095 (v!29370 (underlying!6096 (cache!3245 thiss!29220)))))))) b!2158853))

(declare-fun m!2598826 () Bool)

(assert (=> setNonEmpty!17900 m!2598826))

(declare-fun setIsEmpty!17901 () Bool)

(declare-fun setRes!17901 () Bool)

(assert (=> setIsEmpty!17901 setRes!17901))

(declare-fun e!1381221 () Bool)

(assert (=> b!2158765 (= tp!672907 e!1381221)))

(declare-fun b!2158856 () Bool)

(declare-fun e!1381220 () Bool)

(declare-fun tp!672966 () Bool)

(assert (=> b!2158856 (= e!1381220 tp!672966)))

(declare-fun b!2158855 () Bool)

(declare-fun tp!672968 () Bool)

(assert (=> b!2158855 (= e!1381221 (and setRes!17901 tp!672968))))

(declare-fun condSetEmpty!17901 () Bool)

(assert (=> b!2158855 (= condSetEmpty!17901 (= (_1!14699 (_1!14700 (h!30375 (minValue!3208 (v!29369 (underlying!6095 (v!29370 (underlying!6096 (cache!3245 thiss!29220))))))))) ((as const (Array Context!3038 Bool)) false)))))

(declare-fun setElem!17901 () Context!3038)

(declare-fun tp!672967 () Bool)

(declare-fun setNonEmpty!17901 () Bool)

(assert (=> setNonEmpty!17901 (= setRes!17901 (and tp!672967 (inv!33057 setElem!17901) e!1381220))))

(declare-fun setRest!17901 () (InoxSet Context!3038))

(assert (=> setNonEmpty!17901 (= (_1!14699 (_1!14700 (h!30375 (minValue!3208 (v!29369 (underlying!6095 (v!29370 (underlying!6096 (cache!3245 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3038 Bool)) false) setElem!17901 true) setRest!17901))))

(assert (= (and b!2158855 condSetEmpty!17901) setIsEmpty!17901))

(assert (= (and b!2158855 (not condSetEmpty!17901)) setNonEmpty!17901))

(assert (= setNonEmpty!17901 b!2158856))

(assert (= (and b!2158765 ((_ is Cons!24974) (minValue!3208 (v!29369 (underlying!6095 (v!29370 (underlying!6096 (cache!3245 thiss!29220)))))))) b!2158855))

(declare-fun m!2598828 () Bool)

(assert (=> setNonEmpty!17901 m!2598828))

(declare-fun setIsEmpty!17902 () Bool)

(declare-fun setRes!17902 () Bool)

(assert (=> setIsEmpty!17902 setRes!17902))

(declare-fun e!1381223 () Bool)

(assert (=> b!2158752 (= tp!672914 e!1381223)))

(declare-fun b!2158858 () Bool)

(declare-fun e!1381222 () Bool)

(declare-fun tp!672969 () Bool)

(assert (=> b!2158858 (= e!1381222 tp!672969)))

(declare-fun b!2158857 () Bool)

(declare-fun tp!672971 () Bool)

(assert (=> b!2158857 (= e!1381223 (and setRes!17902 tp!672971))))

(declare-fun condSetEmpty!17902 () Bool)

(assert (=> b!2158857 (= condSetEmpty!17902 (= (_1!14699 (_1!14700 (h!30375 mapDefault!13925))) ((as const (Array Context!3038 Bool)) false)))))

(declare-fun setNonEmpty!17902 () Bool)

(declare-fun tp!672970 () Bool)

(declare-fun setElem!17902 () Context!3038)

(assert (=> setNonEmpty!17902 (= setRes!17902 (and tp!672970 (inv!33057 setElem!17902) e!1381222))))

(declare-fun setRest!17902 () (InoxSet Context!3038))

(assert (=> setNonEmpty!17902 (= (_1!14699 (_1!14700 (h!30375 mapDefault!13925))) ((_ map or) (store ((as const (Array Context!3038 Bool)) false) setElem!17902 true) setRest!17902))))

(assert (= (and b!2158857 condSetEmpty!17902) setIsEmpty!17902))

(assert (= (and b!2158857 (not condSetEmpty!17902)) setNonEmpty!17902))

(assert (= setNonEmpty!17902 b!2158858))

(assert (= (and b!2158752 ((_ is Cons!24974) mapDefault!13925)) b!2158857))

(declare-fun m!2598830 () Bool)

(assert (=> setNonEmpty!17902 m!2598830))

(declare-fun condSetEmpty!17905 () Bool)

(assert (=> setNonEmpty!17890 (= condSetEmpty!17905 (= setRest!17890 ((as const (Array Context!3038 Bool)) false)))))

(declare-fun setRes!17905 () Bool)

(assert (=> setNonEmpty!17890 (= tp!672908 setRes!17905)))

(declare-fun setIsEmpty!17905 () Bool)

(assert (=> setIsEmpty!17905 setRes!17905))

(declare-fun tp!672976 () Bool)

(declare-fun e!1381226 () Bool)

(declare-fun setElem!17905 () Context!3038)

(declare-fun setNonEmpty!17905 () Bool)

(assert (=> setNonEmpty!17905 (= setRes!17905 (and tp!672976 (inv!33057 setElem!17905) e!1381226))))

(declare-fun setRest!17905 () (InoxSet Context!3038))

(assert (=> setNonEmpty!17905 (= setRest!17890 ((_ map or) (store ((as const (Array Context!3038 Bool)) false) setElem!17905 true) setRest!17905))))

(declare-fun b!2158863 () Bool)

(declare-fun tp!672977 () Bool)

(assert (=> b!2158863 (= e!1381226 tp!672977)))

(assert (= (and setNonEmpty!17890 condSetEmpty!17905) setIsEmpty!17905))

(assert (= (and setNonEmpty!17890 (not condSetEmpty!17905)) setNonEmpty!17905))

(assert (= setNonEmpty!17905 b!2158863))

(declare-fun m!2598832 () Bool)

(assert (=> setNonEmpty!17905 m!2598832))

(check-sat (not b!2158836) (not b!2158837) (not b!2158838) (not b!2158795) (not b!2158852) (not b!2158788) (not b!2158825) (not d!646724) (not setNonEmpty!17901) (not setNonEmpty!17905) (not b!2158854) (not b!2158847) (not setNonEmpty!17900) (not d!646714) (not b!2158820) (not mapNonEmpty!13928) (not b_next!64495) (not b_next!64493) (not b!2158780) b_and!173405 (not d!646722) (not d!646732) b_and!173407 (not b!2158846) (not b!2158822) (not d!646734) (not b!2158857) (not b!2158808) (not d!646718) (not b!2158853) (not b!2158858) (not b!2158759) (not b!2158782) (not setNonEmpty!17899) (not b!2158776) (not b!2158754) (not setNonEmpty!17896) (not b!2158863) (not b!2158787) (not b!2158824) (not b!2158779) (not b!2158856) (not b!2158821) (not b!2158774) (not b!2158839) (not d!646730) (not b!2158855) (not setNonEmpty!17902) (not b!2158796) (not b!2158809) (not b!2158823) (not setNonEmpty!17895))
(check-sat b_and!173405 b_and!173407 (not b_next!64493) (not b_next!64495))
