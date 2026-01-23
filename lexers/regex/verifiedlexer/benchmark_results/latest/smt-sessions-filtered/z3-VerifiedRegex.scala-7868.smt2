; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411846 () Bool)

(assert start!411846)

(declare-fun b!4287984 () Bool)

(declare-fun b_free!127223 () Bool)

(declare-fun b_next!127927 () Bool)

(assert (=> b!4287984 (= b_free!127223 (not b_next!127927))))

(declare-fun tp!1313831 () Bool)

(declare-fun b_and!338439 () Bool)

(assert (=> b!4287984 (= tp!1313831 b_and!338439)))

(declare-fun b!4288001 () Bool)

(declare-fun b_free!127225 () Bool)

(declare-fun b_next!127929 () Bool)

(assert (=> b!4288001 (= b_free!127225 (not b_next!127929))))

(declare-fun tp!1313817 () Bool)

(declare-fun b_and!338441 () Bool)

(assert (=> b!4288001 (= tp!1313817 b_and!338441)))

(declare-fun b!4287999 () Bool)

(declare-fun b_free!127227 () Bool)

(declare-fun b_next!127931 () Bool)

(assert (=> b!4287999 (= b_free!127227 (not b_next!127931))))

(declare-fun tp!1313833 () Bool)

(declare-fun b_and!338443 () Bool)

(assert (=> b!4287999 (= tp!1313833 b_and!338443)))

(declare-fun b!4287991 () Bool)

(declare-fun b_free!127229 () Bool)

(declare-fun b_next!127933 () Bool)

(assert (=> b!4287991 (= b_free!127229 (not b_next!127933))))

(declare-fun tp!1313832 () Bool)

(declare-fun b_and!338445 () Bool)

(assert (=> b!4287991 (= tp!1313832 b_and!338445)))

(declare-fun b!4287980 () Bool)

(declare-fun b_free!127231 () Bool)

(declare-fun b_next!127935 () Bool)

(assert (=> b!4287980 (= b_free!127231 (not b_next!127935))))

(declare-fun tp!1313836 () Bool)

(declare-fun b_and!338447 () Bool)

(assert (=> b!4287980 (= tp!1313836 b_and!338447)))

(declare-fun b!4287998 () Bool)

(declare-fun b_free!127233 () Bool)

(declare-fun b_next!127937 () Bool)

(assert (=> b!4287998 (= b_free!127233 (not b_next!127937))))

(declare-fun tp!1313821 () Bool)

(declare-fun b_and!338449 () Bool)

(assert (=> b!4287998 (= tp!1313821 b_and!338449)))

(declare-fun b!4287968 () Bool)

(declare-fun e!2663152 () Bool)

(declare-fun e!2663144 () Bool)

(declare-datatypes ((C!26068 0))(
  ( (C!26069 (val!15360 Int)) )
))
(declare-datatypes ((Regex!12935 0))(
  ( (ElementMatch!12935 (c!730179 C!26068)) (Concat!21254 (regOne!26382 Regex!12935) (regTwo!26382 Regex!12935)) (EmptyExpr!12935) (Star!12935 (reg!13264 Regex!12935)) (EmptyLang!12935) (Union!12935 (regOne!26383 Regex!12935) (regTwo!26383 Regex!12935)) )
))
(declare-datatypes ((List!47722 0))(
  ( (Nil!47598) (Cons!47598 (h!53018 Regex!12935) (t!354321 List!47722)) )
))
(declare-datatypes ((Context!5650 0))(
  ( (Context!5651 (exprs!3325 List!47722)) )
))
(declare-datatypes ((tuple2!45148 0))(
  ( (tuple2!45149 (_1!25760 Context!5650) (_2!25760 C!26068)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45150 0))(
  ( (tuple2!45151 (_1!25761 tuple2!45148) (_2!25761 (InoxSet Context!5650))) )
))
(declare-datatypes ((List!47723 0))(
  ( (Nil!47599) (Cons!47599 (h!53019 tuple2!45150) (t!354322 List!47723)) )
))
(declare-datatypes ((array!15564 0))(
  ( (array!15565 (arr!6952 (Array (_ BitVec 32) List!47723)) (size!34905 (_ BitVec 32))) )
))
(declare-datatypes ((array!15566 0))(
  ( (array!15567 (arr!6953 (Array (_ BitVec 32) (_ BitVec 64))) (size!34906 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8700 0))(
  ( (LongMapFixedSize!8701 (defaultEntry!4735 Int) (mask!12787 (_ BitVec 32)) (extraKeys!4599 (_ BitVec 32)) (zeroValue!4609 List!47723) (minValue!4609 List!47723) (_size!8743 (_ BitVec 32)) (_keys!4650 array!15566) (_values!4631 array!15564) (_vacant!4411 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17209 0))(
  ( (Cell!17210 (v!41510 LongMapFixedSize!8700)) )
))
(declare-datatypes ((MutLongMap!4350 0))(
  ( (LongMap!4350 (underlying!8929 Cell!17209)) (MutLongMapExt!4349 (__x!29075 Int)) )
))
(declare-fun lt!1516384 () MutLongMap!4350)

(get-info :version)

(assert (=> b!4287968 (= e!2663152 (and e!2663144 ((_ is LongMap!4350) lt!1516384)))))

(declare-datatypes ((Cell!17211 0))(
  ( (Cell!17212 (v!41511 MutLongMap!4350)) )
))
(declare-datatypes ((Hashable!4266 0))(
  ( (HashableExt!4265 (__x!29076 Int)) )
))
(declare-datatypes ((MutableMap!4256 0))(
  ( (MutableMapExt!4255 (__x!29077 Int)) (HashMap!4256 (underlying!8930 Cell!17211) (hashF!6298 Hashable!4266) (_size!8744 (_ BitVec 32)) (defaultValue!4427 Int)) )
))
(declare-datatypes ((CacheUp!2780 0))(
  ( (CacheUp!2781 (cache!4396 MutableMap!4256)) )
))
(declare-fun cacheUp!1044 () CacheUp!2780)

(assert (=> b!4287968 (= lt!1516384 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044))))))

(declare-fun mapNonEmpty!19623 () Bool)

(declare-fun mapRes!19625 () Bool)

(declare-fun tp!1313837 () Bool)

(declare-fun tp!1313814 () Bool)

(assert (=> mapNonEmpty!19623 (= mapRes!19625 (and tp!1313837 tp!1313814))))

(declare-fun mapKey!19625 () (_ BitVec 32))

(declare-datatypes ((tuple3!5390 0))(
  ( (tuple3!5391 (_1!25762 Regex!12935) (_2!25762 Context!5650) (_3!3186 C!26068)) )
))
(declare-datatypes ((tuple2!45152 0))(
  ( (tuple2!45153 (_1!25763 tuple3!5390) (_2!25763 (InoxSet Context!5650))) )
))
(declare-datatypes ((List!47724 0))(
  ( (Nil!47600) (Cons!47600 (h!53020 tuple2!45152) (t!354323 List!47724)) )
))
(declare-datatypes ((array!15568 0))(
  ( (array!15569 (arr!6954 (Array (_ BitVec 32) List!47724)) (size!34907 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8702 0))(
  ( (LongMapFixedSize!8703 (defaultEntry!4736 Int) (mask!12788 (_ BitVec 32)) (extraKeys!4600 (_ BitVec 32)) (zeroValue!4610 List!47724) (minValue!4610 List!47724) (_size!8745 (_ BitVec 32)) (_keys!4651 array!15566) (_values!4632 array!15568) (_vacant!4412 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17213 0))(
  ( (Cell!17214 (v!41512 LongMapFixedSize!8702)) )
))
(declare-datatypes ((MutLongMap!4351 0))(
  ( (LongMap!4351 (underlying!8931 Cell!17213)) (MutLongMapExt!4350 (__x!29078 Int)) )
))
(declare-datatypes ((Cell!17215 0))(
  ( (Cell!17216 (v!41513 MutLongMap!4351)) )
))
(declare-datatypes ((Hashable!4267 0))(
  ( (HashableExt!4266 (__x!29079 Int)) )
))
(declare-datatypes ((MutableMap!4257 0))(
  ( (MutableMapExt!4256 (__x!29080 Int)) (HashMap!4257 (underlying!8932 Cell!17215) (hashF!6299 Hashable!4267) (_size!8746 (_ BitVec 32)) (defaultValue!4428 Int)) )
))
(declare-datatypes ((CacheDown!2898 0))(
  ( (CacheDown!2899 (cache!4397 MutableMap!4257)) )
))
(declare-fun cacheDown!1163 () CacheDown!2898)

(declare-fun mapRest!19623 () (Array (_ BitVec 32) List!47724))

(declare-fun mapValue!19623 () List!47724)

(assert (=> mapNonEmpty!19623 (= (arr!6954 (_values!4632 (v!41512 (underlying!8931 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163))))))) (store mapRest!19623 mapKey!19625 mapValue!19623))))

(declare-fun b!4287969 () Bool)

(declare-fun e!2663164 () Bool)

(declare-fun e!2663142 () Bool)

(assert (=> b!4287969 (= e!2663164 e!2663142)))

(declare-fun res!1758952 () Bool)

(declare-fun e!2663156 () Bool)

(assert (=> start!411846 (=> (not res!1758952) (not e!2663156))))

(declare-fun r!15285 () Regex!12935)

(declare-fun validRegex!5855 (Regex!12935) Bool)

(assert (=> start!411846 (= res!1758952 (validRegex!5855 r!15285))))

(assert (=> start!411846 e!2663156))

(declare-datatypes ((List!47725 0))(
  ( (Nil!47601) (Cons!47601 (h!53021 C!26068) (t!354324 List!47725)) )
))
(declare-datatypes ((IArray!28815 0))(
  ( (IArray!28816 (innerList!14465 List!47725)) )
))
(declare-datatypes ((Conc!14377 0))(
  ( (Node!14377 (left!35377 Conc!14377) (right!35707 Conc!14377) (csize!28984 Int) (cheight!14588 Int)) (Leaf!22246 (xs!17683 IArray!28815) (csize!28985 Int)) (Empty!14377) )
))
(declare-datatypes ((BalanceConc!28244 0))(
  ( (BalanceConc!28245 (c!730180 Conc!14377)) )
))
(declare-fun totalInput!1189 () BalanceConc!28244)

(declare-fun e!2663157 () Bool)

(declare-fun inv!63067 (BalanceConc!28244) Bool)

(assert (=> start!411846 (and (inv!63067 totalInput!1189) e!2663157)))

(declare-fun e!2663147 () Bool)

(assert (=> start!411846 e!2663147))

(declare-fun input!6546 () BalanceConc!28244)

(declare-fun e!2663150 () Bool)

(assert (=> start!411846 (and (inv!63067 input!6546) e!2663150)))

(declare-datatypes ((tuple2!45154 0))(
  ( (tuple2!45155 (_1!25764 (InoxSet Context!5650)) (_2!25764 Int)) )
))
(declare-datatypes ((tuple2!45156 0))(
  ( (tuple2!45157 (_1!25765 tuple2!45154) (_2!25765 Int)) )
))
(declare-datatypes ((List!47726 0))(
  ( (Nil!47602) (Cons!47602 (h!53022 tuple2!45156) (t!354325 List!47726)) )
))
(declare-datatypes ((array!15570 0))(
  ( (array!15571 (arr!6955 (Array (_ BitVec 32) List!47726)) (size!34908 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8704 0))(
  ( (LongMapFixedSize!8705 (defaultEntry!4737 Int) (mask!12789 (_ BitVec 32)) (extraKeys!4601 (_ BitVec 32)) (zeroValue!4611 List!47726) (minValue!4611 List!47726) (_size!8747 (_ BitVec 32)) (_keys!4652 array!15566) (_values!4633 array!15570) (_vacant!4413 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17217 0))(
  ( (Cell!17218 (v!41514 LongMapFixedSize!8704)) )
))
(declare-datatypes ((MutLongMap!4352 0))(
  ( (LongMap!4352 (underlying!8933 Cell!17217)) (MutLongMapExt!4351 (__x!29081 Int)) )
))
(declare-datatypes ((Cell!17219 0))(
  ( (Cell!17220 (v!41515 MutLongMap!4352)) )
))
(declare-datatypes ((Hashable!4268 0))(
  ( (HashableExt!4267 (__x!29082 Int)) )
))
(declare-datatypes ((MutableMap!4258 0))(
  ( (MutableMapExt!4257 (__x!29083 Int)) (HashMap!4258 (underlying!8934 Cell!17219) (hashF!6300 Hashable!4268) (_size!8748 (_ BitVec 32)) (defaultValue!4429 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!442 0))(
  ( (CacheFindLongestMatch!443 (cache!4398 MutableMap!4258) (totalInput!4331 BalanceConc!28244)) )
))
(declare-fun cacheFindLongestMatch!199 () CacheFindLongestMatch!442)

(declare-fun e!2663143 () Bool)

(declare-fun inv!63068 (CacheFindLongestMatch!442) Bool)

(assert (=> start!411846 (and (inv!63068 cacheFindLongestMatch!199) e!2663143)))

(declare-fun e!2663159 () Bool)

(declare-fun inv!63069 (CacheDown!2898) Bool)

(assert (=> start!411846 (and (inv!63069 cacheDown!1163) e!2663159)))

(declare-fun e!2663165 () Bool)

(declare-fun inv!63070 (CacheUp!2780) Bool)

(assert (=> start!411846 (and (inv!63070 cacheUp!1044) e!2663165)))

(declare-fun mapIsEmpty!19623 () Bool)

(declare-fun mapRes!19624 () Bool)

(assert (=> mapIsEmpty!19623 mapRes!19624))

(declare-fun b!4287970 () Bool)

(declare-fun e!2663153 () Bool)

(declare-fun e!2663166 () Bool)

(declare-fun lt!1516383 () MutLongMap!4352)

(assert (=> b!4287970 (= e!2663153 (and e!2663166 ((_ is LongMap!4352) lt!1516383)))))

(assert (=> b!4287970 (= lt!1516383 (v!41515 (underlying!8934 (cache!4398 cacheFindLongestMatch!199))))))

(declare-fun b!4287971 () Bool)

(declare-fun e!2663155 () Bool)

(assert (=> b!4287971 (= e!2663159 e!2663155)))

(declare-fun b!4287972 () Bool)

(declare-fun e!2663160 () Bool)

(declare-fun tp!1313820 () Bool)

(assert (=> b!4287972 (= e!2663160 (and tp!1313820 mapRes!19624))))

(declare-fun condMapEmpty!19624 () Bool)

(declare-fun mapDefault!19623 () List!47723)

(assert (=> b!4287972 (= condMapEmpty!19624 (= (arr!6952 (_values!4631 (v!41510 (underlying!8929 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044))))))) ((as const (Array (_ BitVec 32) List!47723)) mapDefault!19623)))))

(declare-fun b!4287973 () Bool)

(declare-fun e!2663167 () Bool)

(assert (=> b!4287973 (= e!2663144 e!2663167)))

(declare-fun b!4287974 () Bool)

(declare-fun tp!1313822 () Bool)

(assert (=> b!4287974 (= e!2663147 tp!1313822)))

(declare-fun b!4287975 () Bool)

(declare-fun e!2663168 () Bool)

(declare-fun e!2663154 () Bool)

(assert (=> b!4287975 (= e!2663168 e!2663154)))

(declare-fun mapNonEmpty!19624 () Bool)

(declare-fun tp!1313813 () Bool)

(declare-fun tp!1313811 () Bool)

(assert (=> mapNonEmpty!19624 (= mapRes!19624 (and tp!1313813 tp!1313811))))

(declare-fun mapKey!19624 () (_ BitVec 32))

(declare-fun mapRest!19624 () (Array (_ BitVec 32) List!47723))

(declare-fun mapValue!19625 () List!47723)

(assert (=> mapNonEmpty!19624 (= (arr!6952 (_values!4631 (v!41510 (underlying!8929 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044))))))) (store mapRest!19624 mapKey!19624 mapValue!19625))))

(declare-fun b!4287976 () Bool)

(declare-fun e!2663145 () Bool)

(declare-fun e!2663151 () Bool)

(declare-fun lt!1516385 () MutLongMap!4351)

(assert (=> b!4287976 (= e!2663145 (and e!2663151 ((_ is LongMap!4351) lt!1516385)))))

(assert (=> b!4287976 (= lt!1516385 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163))))))

(declare-fun b!4287977 () Bool)

(declare-fun res!1758954 () Bool)

(assert (=> b!4287977 (=> (not res!1758954) (not e!2663156))))

(assert (=> b!4287977 (= res!1758954 (= (totalInput!4331 cacheFindLongestMatch!199) totalInput!1189))))

(declare-fun b!4287978 () Bool)

(declare-fun res!1758951 () Bool)

(assert (=> b!4287978 (=> (not res!1758951) (not e!2663156))))

(declare-fun isSuffix!1026 (List!47725 List!47725) Bool)

(declare-fun list!17342 (BalanceConc!28244) List!47725)

(assert (=> b!4287978 (= res!1758951 (isSuffix!1026 (list!17342 input!6546) (list!17342 totalInput!1189)))))

(declare-fun b!4287979 () Bool)

(declare-fun tp_is_empty!23101 () Bool)

(assert (=> b!4287979 (= e!2663147 tp_is_empty!23101)))

(declare-fun tp!1313830 () Bool)

(declare-fun e!2663146 () Bool)

(declare-fun tp!1313823 () Bool)

(declare-fun array_inv!4985 (array!15566) Bool)

(declare-fun array_inv!4986 (array!15564) Bool)

(assert (=> b!4287980 (= e!2663146 (and tp!1313836 tp!1313823 tp!1313830 (array_inv!4985 (_keys!4650 (v!41510 (underlying!8929 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044))))))) (array_inv!4986 (_values!4631 (v!41510 (underlying!8929 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044))))))) e!2663160))))

(declare-fun b!4287981 () Bool)

(declare-fun tp!1313816 () Bool)

(declare-fun tp!1313818 () Bool)

(assert (=> b!4287981 (= e!2663147 (and tp!1313816 tp!1313818))))

(declare-fun b!4287982 () Bool)

(declare-fun tp!1313819 () Bool)

(declare-fun inv!63071 (Conc!14377) Bool)

(assert (=> b!4287982 (= e!2663157 (and (inv!63071 (c!730180 totalInput!1189)) tp!1313819))))

(declare-fun b!4287983 () Bool)

(declare-fun tp!1313826 () Bool)

(declare-fun tp!1313834 () Bool)

(assert (=> b!4287983 (= e!2663147 (and tp!1313826 tp!1313834))))

(declare-fun mapNonEmpty!19625 () Bool)

(declare-fun mapRes!19623 () Bool)

(declare-fun tp!1313829 () Bool)

(declare-fun tp!1313809 () Bool)

(assert (=> mapNonEmpty!19625 (= mapRes!19623 (and tp!1313829 tp!1313809))))

(declare-fun mapKey!19623 () (_ BitVec 32))

(declare-fun mapValue!19624 () List!47726)

(declare-fun mapRest!19625 () (Array (_ BitVec 32) List!47726))

(assert (=> mapNonEmpty!19625 (= (arr!6955 (_values!4633 (v!41514 (underlying!8933 (v!41515 (underlying!8934 (cache!4398 cacheFindLongestMatch!199))))))) (store mapRest!19625 mapKey!19623 mapValue!19624))))

(declare-fun e!2663149 () Bool)

(assert (=> b!4287984 (= e!2663149 (and e!2663153 tp!1313831))))

(declare-fun mapIsEmpty!19624 () Bool)

(assert (=> mapIsEmpty!19624 mapRes!19625))

(declare-fun b!4287985 () Bool)

(declare-fun res!1758953 () Bool)

(assert (=> b!4287985 (=> (not res!1758953) (not e!2663156))))

(declare-fun valid!3380 (CacheDown!2898) Bool)

(assert (=> b!4287985 (= res!1758953 (valid!3380 cacheDown!1163))))

(declare-fun b!4287986 () Bool)

(assert (=> b!4287986 (= e!2663166 e!2663168)))

(declare-fun b!4287987 () Bool)

(assert (=> b!4287987 (= e!2663151 e!2663164)))

(declare-fun b!4287988 () Bool)

(declare-fun tp!1313828 () Bool)

(assert (=> b!4287988 (= e!2663150 (and (inv!63071 (c!730180 input!6546)) tp!1313828))))

(declare-fun b!4287989 () Bool)

(declare-fun e!2663140 () Bool)

(assert (=> b!4287989 (= e!2663143 (and e!2663149 (inv!63067 (totalInput!4331 cacheFindLongestMatch!199)) e!2663140))))

(declare-fun b!4287990 () Bool)

(declare-fun tp!1313827 () Bool)

(assert (=> b!4287990 (= e!2663140 (and (inv!63071 (c!730180 (totalInput!4331 cacheFindLongestMatch!199))) tp!1313827))))

(declare-fun e!2663162 () Bool)

(assert (=> b!4287991 (= e!2663162 (and e!2663152 tp!1313832))))

(declare-fun b!4287992 () Bool)

(declare-fun e!2663163 () Bool)

(declare-fun tp!1313824 () Bool)

(assert (=> b!4287992 (= e!2663163 (and tp!1313824 mapRes!19625))))

(declare-fun condMapEmpty!19625 () Bool)

(declare-fun mapDefault!19625 () List!47724)

(assert (=> b!4287992 (= condMapEmpty!19625 (= (arr!6954 (_values!4632 (v!41512 (underlying!8931 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163))))))) ((as const (Array (_ BitVec 32) List!47724)) mapDefault!19625)))))

(declare-fun b!4287993 () Bool)

(declare-fun e!2663148 () Bool)

(declare-fun tp!1313812 () Bool)

(assert (=> b!4287993 (= e!2663148 (and tp!1313812 mapRes!19623))))

(declare-fun condMapEmpty!19623 () Bool)

(declare-fun mapDefault!19624 () List!47726)

(assert (=> b!4287993 (= condMapEmpty!19623 (= (arr!6955 (_values!4633 (v!41514 (underlying!8933 (v!41515 (underlying!8934 (cache!4398 cacheFindLongestMatch!199))))))) ((as const (Array (_ BitVec 32) List!47726)) mapDefault!19624)))))

(declare-fun b!4287994 () Bool)

(declare-fun res!1758949 () Bool)

(assert (=> b!4287994 (=> (not res!1758949) (not e!2663156))))

(declare-fun valid!3381 (CacheFindLongestMatch!442) Bool)

(assert (=> b!4287994 (= res!1758949 (valid!3381 cacheFindLongestMatch!199))))

(declare-fun mapIsEmpty!19625 () Bool)

(assert (=> mapIsEmpty!19625 mapRes!19623))

(declare-fun b!4287995 () Bool)

(assert (=> b!4287995 (= e!2663167 e!2663146)))

(declare-fun b!4287996 () Bool)

(assert (=> b!4287996 (= e!2663165 e!2663162)))

(declare-fun b!4287997 () Bool)

(declare-datatypes ((List!47727 0))(
  ( (Nil!47603) (Cons!47603 (h!53023 Context!5650) (t!354326 List!47727)) )
))
(declare-fun unfocusZipper!245 (List!47727) Regex!12935)

(declare-fun toList!2123 ((InoxSet Context!5650)) List!47727)

(declare-fun focus!326 (Regex!12935) (InoxSet Context!5650))

(assert (=> b!4287997 (= e!2663156 (not (= (unfocusZipper!245 (toList!2123 (focus!326 r!15285))) r!15285)))))

(assert (=> b!4287998 (= e!2663155 (and e!2663145 tp!1313821))))

(declare-fun tp!1313835 () Bool)

(declare-fun tp!1313815 () Bool)

(declare-fun array_inv!4987 (array!15570) Bool)

(assert (=> b!4287999 (= e!2663154 (and tp!1313833 tp!1313835 tp!1313815 (array_inv!4985 (_keys!4652 (v!41514 (underlying!8933 (v!41515 (underlying!8934 (cache!4398 cacheFindLongestMatch!199))))))) (array_inv!4987 (_values!4633 (v!41514 (underlying!8933 (v!41515 (underlying!8934 (cache!4398 cacheFindLongestMatch!199))))))) e!2663148))))

(declare-fun b!4288000 () Bool)

(declare-fun res!1758950 () Bool)

(assert (=> b!4288000 (=> (not res!1758950) (not e!2663156))))

(declare-fun valid!3382 (CacheUp!2780) Bool)

(assert (=> b!4288000 (= res!1758950 (valid!3382 cacheUp!1044))))

(declare-fun tp!1313825 () Bool)

(declare-fun tp!1313810 () Bool)

(declare-fun array_inv!4988 (array!15568) Bool)

(assert (=> b!4288001 (= e!2663142 (and tp!1313817 tp!1313810 tp!1313825 (array_inv!4985 (_keys!4651 (v!41512 (underlying!8931 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163))))))) (array_inv!4988 (_values!4632 (v!41512 (underlying!8931 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163))))))) e!2663163))))

(assert (= (and start!411846 res!1758952) b!4288000))

(assert (= (and b!4288000 res!1758950) b!4287985))

(assert (= (and b!4287985 res!1758953) b!4287994))

(assert (= (and b!4287994 res!1758949) b!4287977))

(assert (= (and b!4287977 res!1758954) b!4287978))

(assert (= (and b!4287978 res!1758951) b!4287997))

(assert (= start!411846 b!4287982))

(assert (= (and start!411846 ((_ is ElementMatch!12935) r!15285)) b!4287979))

(assert (= (and start!411846 ((_ is Concat!21254) r!15285)) b!4287983))

(assert (= (and start!411846 ((_ is Star!12935) r!15285)) b!4287974))

(assert (= (and start!411846 ((_ is Union!12935) r!15285)) b!4287981))

(assert (= start!411846 b!4287988))

(assert (= (and b!4287993 condMapEmpty!19623) mapIsEmpty!19625))

(assert (= (and b!4287993 (not condMapEmpty!19623)) mapNonEmpty!19625))

(assert (= b!4287999 b!4287993))

(assert (= b!4287975 b!4287999))

(assert (= b!4287986 b!4287975))

(assert (= (and b!4287970 ((_ is LongMap!4352) (v!41515 (underlying!8934 (cache!4398 cacheFindLongestMatch!199))))) b!4287986))

(assert (= b!4287984 b!4287970))

(assert (= (and b!4287989 ((_ is HashMap!4258) (cache!4398 cacheFindLongestMatch!199))) b!4287984))

(assert (= b!4287989 b!4287990))

(assert (= start!411846 b!4287989))

(assert (= (and b!4287992 condMapEmpty!19625) mapIsEmpty!19624))

(assert (= (and b!4287992 (not condMapEmpty!19625)) mapNonEmpty!19623))

(assert (= b!4288001 b!4287992))

(assert (= b!4287969 b!4288001))

(assert (= b!4287987 b!4287969))

(assert (= (and b!4287976 ((_ is LongMap!4351) (v!41513 (underlying!8932 (cache!4397 cacheDown!1163))))) b!4287987))

(assert (= b!4287998 b!4287976))

(assert (= (and b!4287971 ((_ is HashMap!4257) (cache!4397 cacheDown!1163))) b!4287998))

(assert (= start!411846 b!4287971))

(assert (= (and b!4287972 condMapEmpty!19624) mapIsEmpty!19623))

(assert (= (and b!4287972 (not condMapEmpty!19624)) mapNonEmpty!19624))

(assert (= b!4287980 b!4287972))

(assert (= b!4287995 b!4287980))

(assert (= b!4287973 b!4287995))

(assert (= (and b!4287968 ((_ is LongMap!4350) (v!41511 (underlying!8930 (cache!4396 cacheUp!1044))))) b!4287973))

(assert (= b!4287991 b!4287968))

(assert (= (and b!4287996 ((_ is HashMap!4256) (cache!4396 cacheUp!1044))) b!4287991))

(assert (= start!411846 b!4287996))

(declare-fun m!4883041 () Bool)

(assert (=> b!4287994 m!4883041))

(declare-fun m!4883043 () Bool)

(assert (=> mapNonEmpty!19624 m!4883043))

(declare-fun m!4883045 () Bool)

(assert (=> b!4287999 m!4883045))

(declare-fun m!4883047 () Bool)

(assert (=> b!4287999 m!4883047))

(declare-fun m!4883049 () Bool)

(assert (=> b!4287985 m!4883049))

(declare-fun m!4883051 () Bool)

(assert (=> b!4287989 m!4883051))

(declare-fun m!4883053 () Bool)

(assert (=> b!4287982 m!4883053))

(declare-fun m!4883055 () Bool)

(assert (=> b!4287978 m!4883055))

(declare-fun m!4883057 () Bool)

(assert (=> b!4287978 m!4883057))

(assert (=> b!4287978 m!4883055))

(assert (=> b!4287978 m!4883057))

(declare-fun m!4883059 () Bool)

(assert (=> b!4287978 m!4883059))

(declare-fun m!4883061 () Bool)

(assert (=> b!4288000 m!4883061))

(declare-fun m!4883063 () Bool)

(assert (=> b!4287990 m!4883063))

(declare-fun m!4883065 () Bool)

(assert (=> mapNonEmpty!19625 m!4883065))

(declare-fun m!4883067 () Bool)

(assert (=> start!411846 m!4883067))

(declare-fun m!4883069 () Bool)

(assert (=> start!411846 m!4883069))

(declare-fun m!4883071 () Bool)

(assert (=> start!411846 m!4883071))

(declare-fun m!4883073 () Bool)

(assert (=> start!411846 m!4883073))

(declare-fun m!4883075 () Bool)

(assert (=> start!411846 m!4883075))

(declare-fun m!4883077 () Bool)

(assert (=> start!411846 m!4883077))

(declare-fun m!4883079 () Bool)

(assert (=> b!4287997 m!4883079))

(assert (=> b!4287997 m!4883079))

(declare-fun m!4883081 () Bool)

(assert (=> b!4287997 m!4883081))

(assert (=> b!4287997 m!4883081))

(declare-fun m!4883083 () Bool)

(assert (=> b!4287997 m!4883083))

(declare-fun m!4883085 () Bool)

(assert (=> b!4287988 m!4883085))

(declare-fun m!4883087 () Bool)

(assert (=> b!4288001 m!4883087))

(declare-fun m!4883089 () Bool)

(assert (=> b!4288001 m!4883089))

(declare-fun m!4883091 () Bool)

(assert (=> b!4287980 m!4883091))

(declare-fun m!4883093 () Bool)

(assert (=> b!4287980 m!4883093))

(declare-fun m!4883095 () Bool)

(assert (=> mapNonEmpty!19623 m!4883095))

(check-sat (not b!4287999) b_and!338447 (not b_next!127927) (not b!4287997) b_and!338449 (not b!4288001) (not b_next!127931) (not b!4287994) (not b!4287989) (not b!4287982) (not mapNonEmpty!19624) (not b!4287972) (not start!411846) (not b!4287974) (not b_next!127935) b_and!338443 b_and!338439 (not b!4287990) (not b!4287981) tp_is_empty!23101 (not b!4287978) (not b!4287983) (not b!4288000) (not b!4287993) (not b!4287985) (not b!4287992) (not b!4287980) (not mapNonEmpty!19625) (not b_next!127937) b_and!338441 (not b_next!127929) (not mapNonEmpty!19623) b_and!338445 (not b!4287988) (not b_next!127933))
(check-sat b_and!338447 (not b_next!127927) b_and!338449 (not b_next!127931) (not b_next!127937) b_and!338445 (not b_next!127933) (not b_next!127935) b_and!338443 b_and!338439 b_and!338441 (not b_next!127929))
(get-model)

(declare-fun d!1265329 () Bool)

(declare-fun validCacheMapFindLongestMatch!72 (MutableMap!4258 BalanceConc!28244) Bool)

(assert (=> d!1265329 (= (valid!3381 cacheFindLongestMatch!199) (validCacheMapFindLongestMatch!72 (cache!4398 cacheFindLongestMatch!199) (totalInput!4331 cacheFindLongestMatch!199)))))

(declare-fun bs!602866 () Bool)

(assert (= bs!602866 d!1265329))

(declare-fun m!4883097 () Bool)

(assert (=> bs!602866 m!4883097))

(assert (=> b!4287994 d!1265329))

(declare-fun d!1265331 () Bool)

(declare-fun validCacheMapDown!446 (MutableMap!4257) Bool)

(assert (=> d!1265331 (= (valid!3380 cacheDown!1163) (validCacheMapDown!446 (cache!4397 cacheDown!1163)))))

(declare-fun bs!602867 () Bool)

(assert (= bs!602867 d!1265331))

(declare-fun m!4883099 () Bool)

(assert (=> bs!602867 m!4883099))

(assert (=> b!4287985 d!1265331))

(declare-fun d!1265333 () Bool)

(declare-fun e!2663171 () Bool)

(assert (=> d!1265333 e!2663171))

(declare-fun res!1758957 () Bool)

(assert (=> d!1265333 (=> res!1758957 e!2663171)))

(declare-fun lt!1516388 () Bool)

(assert (=> d!1265333 (= res!1758957 (not lt!1516388))))

(declare-fun drop!2188 (List!47725 Int) List!47725)

(declare-fun size!34909 (List!47725) Int)

(assert (=> d!1265333 (= lt!1516388 (= (list!17342 input!6546) (drop!2188 (list!17342 totalInput!1189) (- (size!34909 (list!17342 totalInput!1189)) (size!34909 (list!17342 input!6546))))))))

(assert (=> d!1265333 (= (isSuffix!1026 (list!17342 input!6546) (list!17342 totalInput!1189)) lt!1516388)))

(declare-fun b!4288004 () Bool)

(assert (=> b!4288004 (= e!2663171 (>= (size!34909 (list!17342 totalInput!1189)) (size!34909 (list!17342 input!6546))))))

(assert (= (and d!1265333 (not res!1758957)) b!4288004))

(assert (=> d!1265333 m!4883057))

(declare-fun m!4883101 () Bool)

(assert (=> d!1265333 m!4883101))

(assert (=> d!1265333 m!4883055))

(declare-fun m!4883103 () Bool)

(assert (=> d!1265333 m!4883103))

(assert (=> d!1265333 m!4883057))

(declare-fun m!4883105 () Bool)

(assert (=> d!1265333 m!4883105))

(assert (=> b!4288004 m!4883057))

(assert (=> b!4288004 m!4883101))

(assert (=> b!4288004 m!4883055))

(assert (=> b!4288004 m!4883103))

(assert (=> b!4287978 d!1265333))

(declare-fun d!1265335 () Bool)

(declare-fun list!17343 (Conc!14377) List!47725)

(assert (=> d!1265335 (= (list!17342 input!6546) (list!17343 (c!730180 input!6546)))))

(declare-fun bs!602868 () Bool)

(assert (= bs!602868 d!1265335))

(declare-fun m!4883107 () Bool)

(assert (=> bs!602868 m!4883107))

(assert (=> b!4287978 d!1265335))

(declare-fun d!1265337 () Bool)

(assert (=> d!1265337 (= (list!17342 totalInput!1189) (list!17343 (c!730180 totalInput!1189)))))

(declare-fun bs!602869 () Bool)

(assert (= bs!602869 d!1265337))

(declare-fun m!4883109 () Bool)

(assert (=> bs!602869 m!4883109))

(assert (=> b!4287978 d!1265337))

(declare-fun d!1265339 () Bool)

(declare-fun res!1758960 () Bool)

(declare-fun e!2663174 () Bool)

(assert (=> d!1265339 (=> (not res!1758960) (not e!2663174))))

(assert (=> d!1265339 (= res!1758960 ((_ is HashMap!4258) (cache!4398 cacheFindLongestMatch!199)))))

(assert (=> d!1265339 (= (inv!63068 cacheFindLongestMatch!199) e!2663174)))

(declare-fun b!4288007 () Bool)

(assert (=> b!4288007 (= e!2663174 (validCacheMapFindLongestMatch!72 (cache!4398 cacheFindLongestMatch!199) (totalInput!4331 cacheFindLongestMatch!199)))))

(assert (= (and d!1265339 res!1758960) b!4288007))

(assert (=> b!4288007 m!4883097))

(assert (=> start!411846 d!1265339))

(declare-fun d!1265341 () Bool)

(declare-fun isBalanced!3879 (Conc!14377) Bool)

(assert (=> d!1265341 (= (inv!63067 totalInput!1189) (isBalanced!3879 (c!730180 totalInput!1189)))))

(declare-fun bs!602870 () Bool)

(assert (= bs!602870 d!1265341))

(declare-fun m!4883111 () Bool)

(assert (=> bs!602870 m!4883111))

(assert (=> start!411846 d!1265341))

(declare-fun d!1265343 () Bool)

(declare-fun res!1758963 () Bool)

(declare-fun e!2663177 () Bool)

(assert (=> d!1265343 (=> (not res!1758963) (not e!2663177))))

(assert (=> d!1265343 (= res!1758963 ((_ is HashMap!4257) (cache!4397 cacheDown!1163)))))

(assert (=> d!1265343 (= (inv!63069 cacheDown!1163) e!2663177)))

(declare-fun b!4288010 () Bool)

(assert (=> b!4288010 (= e!2663177 (validCacheMapDown!446 (cache!4397 cacheDown!1163)))))

(assert (= (and d!1265343 res!1758963) b!4288010))

(assert (=> b!4288010 m!4883099))

(assert (=> start!411846 d!1265343))

(declare-fun d!1265345 () Bool)

(assert (=> d!1265345 (= (inv!63067 input!6546) (isBalanced!3879 (c!730180 input!6546)))))

(declare-fun bs!602871 () Bool)

(assert (= bs!602871 d!1265345))

(declare-fun m!4883113 () Bool)

(assert (=> bs!602871 m!4883113))

(assert (=> start!411846 d!1265345))

(declare-fun b!4288029 () Bool)

(declare-fun e!2663195 () Bool)

(declare-fun e!2663198 () Bool)

(assert (=> b!4288029 (= e!2663195 e!2663198)))

(declare-fun res!1758974 () Bool)

(assert (=> b!4288029 (=> (not res!1758974) (not e!2663198))))

(declare-fun call!294503 () Bool)

(assert (=> b!4288029 (= res!1758974 call!294503)))

(declare-fun c!730186 () Bool)

(declare-fun c!730185 () Bool)

(declare-fun bm!294496 () Bool)

(declare-fun call!294502 () Bool)

(assert (=> bm!294496 (= call!294502 (validRegex!5855 (ite c!730185 (reg!13264 r!15285) (ite c!730186 (regOne!26383 r!15285) (regTwo!26382 r!15285)))))))

(declare-fun b!4288030 () Bool)

(declare-fun e!2663196 () Bool)

(assert (=> b!4288030 (= e!2663196 call!294503)))

(declare-fun bm!294497 () Bool)

(declare-fun call!294501 () Bool)

(assert (=> bm!294497 (= call!294501 call!294502)))

(declare-fun b!4288031 () Bool)

(assert (=> b!4288031 (= e!2663198 call!294501)))

(declare-fun d!1265347 () Bool)

(declare-fun res!1758977 () Bool)

(declare-fun e!2663197 () Bool)

(assert (=> d!1265347 (=> res!1758977 e!2663197)))

(assert (=> d!1265347 (= res!1758977 ((_ is ElementMatch!12935) r!15285))))

(assert (=> d!1265347 (= (validRegex!5855 r!15285) e!2663197)))

(declare-fun bm!294498 () Bool)

(assert (=> bm!294498 (= call!294503 (validRegex!5855 (ite c!730186 (regTwo!26383 r!15285) (regOne!26382 r!15285))))))

(declare-fun b!4288032 () Bool)

(declare-fun res!1758976 () Bool)

(assert (=> b!4288032 (=> (not res!1758976) (not e!2663196))))

(assert (=> b!4288032 (= res!1758976 call!294501)))

(declare-fun e!2663194 () Bool)

(assert (=> b!4288032 (= e!2663194 e!2663196)))

(declare-fun b!4288033 () Bool)

(declare-fun e!2663192 () Bool)

(declare-fun e!2663193 () Bool)

(assert (=> b!4288033 (= e!2663192 e!2663193)))

(declare-fun res!1758975 () Bool)

(declare-fun nullable!4534 (Regex!12935) Bool)

(assert (=> b!4288033 (= res!1758975 (not (nullable!4534 (reg!13264 r!15285))))))

(assert (=> b!4288033 (=> (not res!1758975) (not e!2663193))))

(declare-fun b!4288034 () Bool)

(assert (=> b!4288034 (= e!2663192 e!2663194)))

(assert (=> b!4288034 (= c!730186 ((_ is Union!12935) r!15285))))

(declare-fun b!4288035 () Bool)

(assert (=> b!4288035 (= e!2663193 call!294502)))

(declare-fun b!4288036 () Bool)

(declare-fun res!1758978 () Bool)

(assert (=> b!4288036 (=> res!1758978 e!2663195)))

(assert (=> b!4288036 (= res!1758978 (not ((_ is Concat!21254) r!15285)))))

(assert (=> b!4288036 (= e!2663194 e!2663195)))

(declare-fun b!4288037 () Bool)

(assert (=> b!4288037 (= e!2663197 e!2663192)))

(assert (=> b!4288037 (= c!730185 ((_ is Star!12935) r!15285))))

(assert (= (and d!1265347 (not res!1758977)) b!4288037))

(assert (= (and b!4288037 c!730185) b!4288033))

(assert (= (and b!4288037 (not c!730185)) b!4288034))

(assert (= (and b!4288033 res!1758975) b!4288035))

(assert (= (and b!4288034 c!730186) b!4288032))

(assert (= (and b!4288034 (not c!730186)) b!4288036))

(assert (= (and b!4288032 res!1758976) b!4288030))

(assert (= (and b!4288036 (not res!1758978)) b!4288029))

(assert (= (and b!4288029 res!1758974) b!4288031))

(assert (= (or b!4288032 b!4288031) bm!294497))

(assert (= (or b!4288030 b!4288029) bm!294498))

(assert (= (or b!4288035 bm!294497) bm!294496))

(declare-fun m!4883115 () Bool)

(assert (=> bm!294496 m!4883115))

(declare-fun m!4883117 () Bool)

(assert (=> bm!294498 m!4883117))

(declare-fun m!4883119 () Bool)

(assert (=> b!4288033 m!4883119))

(assert (=> start!411846 d!1265347))

(declare-fun d!1265349 () Bool)

(declare-fun res!1758981 () Bool)

(declare-fun e!2663201 () Bool)

(assert (=> d!1265349 (=> (not res!1758981) (not e!2663201))))

(assert (=> d!1265349 (= res!1758981 ((_ is HashMap!4256) (cache!4396 cacheUp!1044)))))

(assert (=> d!1265349 (= (inv!63070 cacheUp!1044) e!2663201)))

(declare-fun b!4288040 () Bool)

(declare-fun validCacheMapUp!415 (MutableMap!4256) Bool)

(assert (=> b!4288040 (= e!2663201 (validCacheMapUp!415 (cache!4396 cacheUp!1044)))))

(assert (= (and d!1265349 res!1758981) b!4288040))

(declare-fun m!4883121 () Bool)

(assert (=> b!4288040 m!4883121))

(assert (=> start!411846 d!1265349))

(declare-fun d!1265351 () Bool)

(declare-fun lt!1516391 () Regex!12935)

(assert (=> d!1265351 (validRegex!5855 lt!1516391)))

(declare-fun generalisedUnion!556 (List!47722) Regex!12935)

(declare-fun unfocusZipperList!69 (List!47727) List!47722)

(assert (=> d!1265351 (= lt!1516391 (generalisedUnion!556 (unfocusZipperList!69 (toList!2123 (focus!326 r!15285)))))))

(assert (=> d!1265351 (= (unfocusZipper!245 (toList!2123 (focus!326 r!15285))) lt!1516391)))

(declare-fun bs!602872 () Bool)

(assert (= bs!602872 d!1265351))

(declare-fun m!4883123 () Bool)

(assert (=> bs!602872 m!4883123))

(assert (=> bs!602872 m!4883081))

(declare-fun m!4883125 () Bool)

(assert (=> bs!602872 m!4883125))

(assert (=> bs!602872 m!4883125))

(declare-fun m!4883127 () Bool)

(assert (=> bs!602872 m!4883127))

(assert (=> b!4287997 d!1265351))

(declare-fun d!1265353 () Bool)

(declare-fun e!2663204 () Bool)

(assert (=> d!1265353 e!2663204))

(declare-fun res!1758984 () Bool)

(assert (=> d!1265353 (=> (not res!1758984) (not e!2663204))))

(declare-fun lt!1516394 () List!47727)

(declare-fun noDuplicate!584 (List!47727) Bool)

(assert (=> d!1265353 (= res!1758984 (noDuplicate!584 lt!1516394))))

(declare-fun choose!26138 ((InoxSet Context!5650)) List!47727)

(assert (=> d!1265353 (= lt!1516394 (choose!26138 (focus!326 r!15285)))))

(assert (=> d!1265353 (= (toList!2123 (focus!326 r!15285)) lt!1516394)))

(declare-fun b!4288043 () Bool)

(declare-fun content!7518 (List!47727) (InoxSet Context!5650))

(assert (=> b!4288043 (= e!2663204 (= (content!7518 lt!1516394) (focus!326 r!15285)))))

(assert (= (and d!1265353 res!1758984) b!4288043))

(declare-fun m!4883129 () Bool)

(assert (=> d!1265353 m!4883129))

(assert (=> d!1265353 m!4883079))

(declare-fun m!4883131 () Bool)

(assert (=> d!1265353 m!4883131))

(declare-fun m!4883133 () Bool)

(assert (=> b!4288043 m!4883133))

(assert (=> b!4287997 d!1265353))

(declare-fun d!1265355 () Bool)

(declare-fun e!2663207 () Bool)

(assert (=> d!1265355 e!2663207))

(declare-fun res!1758988 () Bool)

(assert (=> d!1265355 (=> (not res!1758988) (not e!2663207))))

(assert (=> d!1265355 (= res!1758988 (validRegex!5855 r!15285))))

(assert (=> d!1265355 (= (focus!326 r!15285) (store ((as const (Array Context!5650 Bool)) false) (Context!5651 (Cons!47598 r!15285 Nil!47598)) true))))

(declare-fun b!4288046 () Bool)

(assert (=> b!4288046 (= e!2663207 (= (unfocusZipper!245 (toList!2123 (store ((as const (Array Context!5650 Bool)) false) (Context!5651 (Cons!47598 r!15285 Nil!47598)) true))) r!15285))))

(assert (= (and d!1265355 res!1758988) b!4288046))

(assert (=> d!1265355 m!4883073))

(declare-fun m!4883135 () Bool)

(assert (=> d!1265355 m!4883135))

(assert (=> b!4288046 m!4883135))

(assert (=> b!4288046 m!4883135))

(declare-fun m!4883137 () Bool)

(assert (=> b!4288046 m!4883137))

(assert (=> b!4288046 m!4883137))

(declare-fun m!4883139 () Bool)

(assert (=> b!4288046 m!4883139))

(assert (=> b!4287997 d!1265355))

(declare-fun d!1265357 () Bool)

(declare-fun c!730189 () Bool)

(assert (=> d!1265357 (= c!730189 ((_ is Node!14377) (c!730180 input!6546)))))

(declare-fun e!2663212 () Bool)

(assert (=> d!1265357 (= (inv!63071 (c!730180 input!6546)) e!2663212)))

(declare-fun b!4288053 () Bool)

(declare-fun inv!63072 (Conc!14377) Bool)

(assert (=> b!4288053 (= e!2663212 (inv!63072 (c!730180 input!6546)))))

(declare-fun b!4288054 () Bool)

(declare-fun e!2663213 () Bool)

(assert (=> b!4288054 (= e!2663212 e!2663213)))

(declare-fun res!1758991 () Bool)

(assert (=> b!4288054 (= res!1758991 (not ((_ is Leaf!22246) (c!730180 input!6546))))))

(assert (=> b!4288054 (=> res!1758991 e!2663213)))

(declare-fun b!4288055 () Bool)

(declare-fun inv!63073 (Conc!14377) Bool)

(assert (=> b!4288055 (= e!2663213 (inv!63073 (c!730180 input!6546)))))

(assert (= (and d!1265357 c!730189) b!4288053))

(assert (= (and d!1265357 (not c!730189)) b!4288054))

(assert (= (and b!4288054 (not res!1758991)) b!4288055))

(declare-fun m!4883141 () Bool)

(assert (=> b!4288053 m!4883141))

(declare-fun m!4883143 () Bool)

(assert (=> b!4288055 m!4883143))

(assert (=> b!4287988 d!1265357))

(declare-fun d!1265359 () Bool)

(assert (=> d!1265359 (= (array_inv!4985 (_keys!4650 (v!41510 (underlying!8929 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044))))))) (bvsge (size!34906 (_keys!4650 (v!41510 (underlying!8929 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044))))))) #b00000000000000000000000000000000))))

(assert (=> b!4287980 d!1265359))

(declare-fun d!1265361 () Bool)

(assert (=> d!1265361 (= (array_inv!4986 (_values!4631 (v!41510 (underlying!8929 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044))))))) (bvsge (size!34905 (_values!4631 (v!41510 (underlying!8929 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044))))))) #b00000000000000000000000000000000))))

(assert (=> b!4287980 d!1265361))

(declare-fun d!1265363 () Bool)

(assert (=> d!1265363 (= (inv!63067 (totalInput!4331 cacheFindLongestMatch!199)) (isBalanced!3879 (c!730180 (totalInput!4331 cacheFindLongestMatch!199))))))

(declare-fun bs!602873 () Bool)

(assert (= bs!602873 d!1265363))

(declare-fun m!4883145 () Bool)

(assert (=> bs!602873 m!4883145))

(assert (=> b!4287989 d!1265363))

(declare-fun d!1265365 () Bool)

(assert (=> d!1265365 (= (array_inv!4985 (_keys!4652 (v!41514 (underlying!8933 (v!41515 (underlying!8934 (cache!4398 cacheFindLongestMatch!199))))))) (bvsge (size!34906 (_keys!4652 (v!41514 (underlying!8933 (v!41515 (underlying!8934 (cache!4398 cacheFindLongestMatch!199))))))) #b00000000000000000000000000000000))))

(assert (=> b!4287999 d!1265365))

(declare-fun d!1265367 () Bool)

(assert (=> d!1265367 (= (array_inv!4987 (_values!4633 (v!41514 (underlying!8933 (v!41515 (underlying!8934 (cache!4398 cacheFindLongestMatch!199))))))) (bvsge (size!34908 (_values!4633 (v!41514 (underlying!8933 (v!41515 (underlying!8934 (cache!4398 cacheFindLongestMatch!199))))))) #b00000000000000000000000000000000))))

(assert (=> b!4287999 d!1265367))

(declare-fun d!1265369 () Bool)

(declare-fun c!730190 () Bool)

(assert (=> d!1265369 (= c!730190 ((_ is Node!14377) (c!730180 (totalInput!4331 cacheFindLongestMatch!199))))))

(declare-fun e!2663214 () Bool)

(assert (=> d!1265369 (= (inv!63071 (c!730180 (totalInput!4331 cacheFindLongestMatch!199))) e!2663214)))

(declare-fun b!4288056 () Bool)

(assert (=> b!4288056 (= e!2663214 (inv!63072 (c!730180 (totalInput!4331 cacheFindLongestMatch!199))))))

(declare-fun b!4288057 () Bool)

(declare-fun e!2663215 () Bool)

(assert (=> b!4288057 (= e!2663214 e!2663215)))

(declare-fun res!1758992 () Bool)

(assert (=> b!4288057 (= res!1758992 (not ((_ is Leaf!22246) (c!730180 (totalInput!4331 cacheFindLongestMatch!199)))))))

(assert (=> b!4288057 (=> res!1758992 e!2663215)))

(declare-fun b!4288058 () Bool)

(assert (=> b!4288058 (= e!2663215 (inv!63073 (c!730180 (totalInput!4331 cacheFindLongestMatch!199))))))

(assert (= (and d!1265369 c!730190) b!4288056))

(assert (= (and d!1265369 (not c!730190)) b!4288057))

(assert (= (and b!4288057 (not res!1758992)) b!4288058))

(declare-fun m!4883147 () Bool)

(assert (=> b!4288056 m!4883147))

(declare-fun m!4883149 () Bool)

(assert (=> b!4288058 m!4883149))

(assert (=> b!4287990 d!1265369))

(declare-fun d!1265371 () Bool)

(assert (=> d!1265371 (= (valid!3382 cacheUp!1044) (validCacheMapUp!415 (cache!4396 cacheUp!1044)))))

(declare-fun bs!602874 () Bool)

(assert (= bs!602874 d!1265371))

(assert (=> bs!602874 m!4883121))

(assert (=> b!4288000 d!1265371))

(declare-fun d!1265373 () Bool)

(declare-fun c!730191 () Bool)

(assert (=> d!1265373 (= c!730191 ((_ is Node!14377) (c!730180 totalInput!1189)))))

(declare-fun e!2663216 () Bool)

(assert (=> d!1265373 (= (inv!63071 (c!730180 totalInput!1189)) e!2663216)))

(declare-fun b!4288059 () Bool)

(assert (=> b!4288059 (= e!2663216 (inv!63072 (c!730180 totalInput!1189)))))

(declare-fun b!4288060 () Bool)

(declare-fun e!2663217 () Bool)

(assert (=> b!4288060 (= e!2663216 e!2663217)))

(declare-fun res!1758993 () Bool)

(assert (=> b!4288060 (= res!1758993 (not ((_ is Leaf!22246) (c!730180 totalInput!1189))))))

(assert (=> b!4288060 (=> res!1758993 e!2663217)))

(declare-fun b!4288061 () Bool)

(assert (=> b!4288061 (= e!2663217 (inv!63073 (c!730180 totalInput!1189)))))

(assert (= (and d!1265373 c!730191) b!4288059))

(assert (= (and d!1265373 (not c!730191)) b!4288060))

(assert (= (and b!4288060 (not res!1758993)) b!4288061))

(declare-fun m!4883151 () Bool)

(assert (=> b!4288059 m!4883151))

(declare-fun m!4883153 () Bool)

(assert (=> b!4288061 m!4883153))

(assert (=> b!4287982 d!1265373))

(declare-fun d!1265375 () Bool)

(assert (=> d!1265375 (= (array_inv!4985 (_keys!4651 (v!41512 (underlying!8931 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163))))))) (bvsge (size!34906 (_keys!4651 (v!41512 (underlying!8931 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163))))))) #b00000000000000000000000000000000))))

(assert (=> b!4288001 d!1265375))

(declare-fun d!1265377 () Bool)

(assert (=> d!1265377 (= (array_inv!4988 (_values!4632 (v!41512 (underlying!8931 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163))))))) (bvsge (size!34907 (_values!4632 (v!41512 (underlying!8931 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163))))))) #b00000000000000000000000000000000))))

(assert (=> b!4288001 d!1265377))

(declare-fun condMapEmpty!19628 () Bool)

(declare-fun mapDefault!19628 () List!47723)

(assert (=> mapNonEmpty!19624 (= condMapEmpty!19628 (= mapRest!19624 ((as const (Array (_ BitVec 32) List!47723)) mapDefault!19628)))))

(declare-fun e!2663235 () Bool)

(declare-fun mapRes!19628 () Bool)

(assert (=> mapNonEmpty!19624 (= tp!1313813 (and e!2663235 mapRes!19628))))

(declare-fun b!4288076 () Bool)

(declare-fun e!2663230 () Bool)

(declare-fun tp!1313857 () Bool)

(assert (=> b!4288076 (= e!2663230 tp!1313857)))

(declare-fun setRes!26230 () Bool)

(declare-fun tp!1313864 () Bool)

(declare-fun b!4288077 () Bool)

(declare-fun inv!63074 (Context!5650) Bool)

(assert (=> b!4288077 (= e!2663235 (and (inv!63074 (_1!25760 (_1!25761 (h!53019 mapDefault!19628)))) e!2663230 tp_is_empty!23101 setRes!26230 tp!1313864))))

(declare-fun condSetEmpty!26231 () Bool)

(assert (=> b!4288077 (= condSetEmpty!26231 (= (_2!25761 (h!53019 mapDefault!19628)) ((as const (Array Context!5650 Bool)) false)))))

(declare-fun setIsEmpty!26230 () Bool)

(assert (=> setIsEmpty!26230 setRes!26230))

(declare-fun mapNonEmpty!19628 () Bool)

(declare-fun tp!1313858 () Bool)

(declare-fun e!2663233 () Bool)

(assert (=> mapNonEmpty!19628 (= mapRes!19628 (and tp!1313858 e!2663233))))

(declare-fun mapValue!19628 () List!47723)

(declare-fun mapRest!19628 () (Array (_ BitVec 32) List!47723))

(declare-fun mapKey!19628 () (_ BitVec 32))

(assert (=> mapNonEmpty!19628 (= mapRest!19624 (store mapRest!19628 mapKey!19628 mapValue!19628))))

(declare-fun setElem!26230 () Context!5650)

(declare-fun tp!1313863 () Bool)

(declare-fun e!2663232 () Bool)

(declare-fun setNonEmpty!26230 () Bool)

(assert (=> setNonEmpty!26230 (= setRes!26230 (and tp!1313863 (inv!63074 setElem!26230) e!2663232))))

(declare-fun setRest!26230 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26230 (= (_2!25761 (h!53019 mapDefault!19628)) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26230 true) setRest!26230))))

(declare-fun setNonEmpty!26231 () Bool)

(declare-fun tp!1313862 () Bool)

(declare-fun setRes!26231 () Bool)

(declare-fun setElem!26231 () Context!5650)

(declare-fun e!2663234 () Bool)

(assert (=> setNonEmpty!26231 (= setRes!26231 (and tp!1313862 (inv!63074 setElem!26231) e!2663234))))

(declare-fun setRest!26231 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26231 (= (_2!25761 (h!53019 mapValue!19628)) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26231 true) setRest!26231))))

(declare-fun b!4288078 () Bool)

(declare-fun tp!1313856 () Bool)

(assert (=> b!4288078 (= e!2663232 tp!1313856)))

(declare-fun setIsEmpty!26231 () Bool)

(assert (=> setIsEmpty!26231 setRes!26231))

(declare-fun tp!1313861 () Bool)

(declare-fun e!2663231 () Bool)

(declare-fun b!4288079 () Bool)

(assert (=> b!4288079 (= e!2663233 (and (inv!63074 (_1!25760 (_1!25761 (h!53019 mapValue!19628)))) e!2663231 tp_is_empty!23101 setRes!26231 tp!1313861))))

(declare-fun condSetEmpty!26230 () Bool)

(assert (=> b!4288079 (= condSetEmpty!26230 (= (_2!25761 (h!53019 mapValue!19628)) ((as const (Array Context!5650 Bool)) false)))))

(declare-fun b!4288080 () Bool)

(declare-fun tp!1313860 () Bool)

(assert (=> b!4288080 (= e!2663231 tp!1313860)))

(declare-fun b!4288081 () Bool)

(declare-fun tp!1313859 () Bool)

(assert (=> b!4288081 (= e!2663234 tp!1313859)))

(declare-fun mapIsEmpty!19628 () Bool)

(assert (=> mapIsEmpty!19628 mapRes!19628))

(assert (= (and mapNonEmpty!19624 condMapEmpty!19628) mapIsEmpty!19628))

(assert (= (and mapNonEmpty!19624 (not condMapEmpty!19628)) mapNonEmpty!19628))

(assert (= b!4288079 b!4288080))

(assert (= (and b!4288079 condSetEmpty!26230) setIsEmpty!26231))

(assert (= (and b!4288079 (not condSetEmpty!26230)) setNonEmpty!26231))

(assert (= setNonEmpty!26231 b!4288081))

(assert (= (and mapNonEmpty!19628 ((_ is Cons!47599) mapValue!19628)) b!4288079))

(assert (= b!4288077 b!4288076))

(assert (= (and b!4288077 condSetEmpty!26231) setIsEmpty!26230))

(assert (= (and b!4288077 (not condSetEmpty!26231)) setNonEmpty!26230))

(assert (= setNonEmpty!26230 b!4288078))

(assert (= (and mapNonEmpty!19624 ((_ is Cons!47599) mapDefault!19628)) b!4288077))

(declare-fun m!4883155 () Bool)

(assert (=> mapNonEmpty!19628 m!4883155))

(declare-fun m!4883157 () Bool)

(assert (=> b!4288079 m!4883157))

(declare-fun m!4883159 () Bool)

(assert (=> setNonEmpty!26230 m!4883159))

(declare-fun m!4883161 () Bool)

(assert (=> b!4288077 m!4883161))

(declare-fun m!4883163 () Bool)

(assert (=> setNonEmpty!26231 m!4883163))

(declare-fun e!2663242 () Bool)

(declare-fun b!4288090 () Bool)

(declare-fun setRes!26234 () Bool)

(declare-fun tp!1313874 () Bool)

(declare-fun e!2663244 () Bool)

(assert (=> b!4288090 (= e!2663242 (and (inv!63074 (_1!25760 (_1!25761 (h!53019 mapValue!19625)))) e!2663244 tp_is_empty!23101 setRes!26234 tp!1313874))))

(declare-fun condSetEmpty!26234 () Bool)

(assert (=> b!4288090 (= condSetEmpty!26234 (= (_2!25761 (h!53019 mapValue!19625)) ((as const (Array Context!5650 Bool)) false)))))

(assert (=> mapNonEmpty!19624 (= tp!1313811 e!2663242)))

(declare-fun b!4288091 () Bool)

(declare-fun e!2663243 () Bool)

(declare-fun tp!1313873 () Bool)

(assert (=> b!4288091 (= e!2663243 tp!1313873)))

(declare-fun setIsEmpty!26234 () Bool)

(assert (=> setIsEmpty!26234 setRes!26234))

(declare-fun b!4288092 () Bool)

(declare-fun tp!1313875 () Bool)

(assert (=> b!4288092 (= e!2663244 tp!1313875)))

(declare-fun setElem!26234 () Context!5650)

(declare-fun tp!1313876 () Bool)

(declare-fun setNonEmpty!26234 () Bool)

(assert (=> setNonEmpty!26234 (= setRes!26234 (and tp!1313876 (inv!63074 setElem!26234) e!2663243))))

(declare-fun setRest!26234 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26234 (= (_2!25761 (h!53019 mapValue!19625)) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26234 true) setRest!26234))))

(assert (= b!4288090 b!4288092))

(assert (= (and b!4288090 condSetEmpty!26234) setIsEmpty!26234))

(assert (= (and b!4288090 (not condSetEmpty!26234)) setNonEmpty!26234))

(assert (= setNonEmpty!26234 b!4288091))

(assert (= (and mapNonEmpty!19624 ((_ is Cons!47599) mapValue!19625)) b!4288090))

(declare-fun m!4883165 () Bool)

(assert (=> b!4288090 m!4883165))

(declare-fun m!4883167 () Bool)

(assert (=> setNonEmpty!26234 m!4883167))

(declare-fun setRes!26239 () Bool)

(declare-fun e!2663259 () Bool)

(declare-fun mapDefault!19631 () List!47724)

(declare-fun tp!1313904 () Bool)

(declare-fun e!2663260 () Bool)

(declare-fun b!4288107 () Bool)

(declare-fun tp!1313900 () Bool)

(assert (=> b!4288107 (= e!2663259 (and tp!1313900 (inv!63074 (_2!25762 (_1!25763 (h!53020 mapDefault!19631)))) e!2663260 tp_is_empty!23101 setRes!26239 tp!1313904))))

(declare-fun condSetEmpty!26239 () Bool)

(assert (=> b!4288107 (= condSetEmpty!26239 (= (_2!25763 (h!53020 mapDefault!19631)) ((as const (Array Context!5650 Bool)) false)))))

(declare-fun mapIsEmpty!19631 () Bool)

(declare-fun mapRes!19631 () Bool)

(assert (=> mapIsEmpty!19631 mapRes!19631))

(declare-fun mapNonEmpty!19631 () Bool)

(declare-fun tp!1313903 () Bool)

(declare-fun e!2663257 () Bool)

(assert (=> mapNonEmpty!19631 (= mapRes!19631 (and tp!1313903 e!2663257))))

(declare-fun mapValue!19631 () List!47724)

(declare-fun mapRest!19631 () (Array (_ BitVec 32) List!47724))

(declare-fun mapKey!19631 () (_ BitVec 32))

(assert (=> mapNonEmpty!19631 (= mapRest!19623 (store mapRest!19631 mapKey!19631 mapValue!19631))))

(declare-fun setElem!26239 () Context!5650)

(declare-fun setNonEmpty!26239 () Bool)

(declare-fun e!2663258 () Bool)

(declare-fun tp!1313906 () Bool)

(assert (=> setNonEmpty!26239 (= setRes!26239 (and tp!1313906 (inv!63074 setElem!26239) e!2663258))))

(declare-fun setRest!26239 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26239 (= (_2!25763 (h!53020 mapDefault!19631)) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26239 true) setRest!26239))))

(declare-fun b!4288108 () Bool)

(declare-fun e!2663261 () Bool)

(declare-fun tp!1313907 () Bool)

(assert (=> b!4288108 (= e!2663261 tp!1313907)))

(declare-fun setRes!26240 () Bool)

(declare-fun tp!1313902 () Bool)

(declare-fun setNonEmpty!26240 () Bool)

(declare-fun setElem!26240 () Context!5650)

(assert (=> setNonEmpty!26240 (= setRes!26240 (and tp!1313902 (inv!63074 setElem!26240) e!2663261))))

(declare-fun setRest!26240 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26240 (= (_2!25763 (h!53020 mapValue!19631)) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26240 true) setRest!26240))))

(declare-fun tp!1313905 () Bool)

(declare-fun tp!1313901 () Bool)

(declare-fun e!2663262 () Bool)

(declare-fun b!4288109 () Bool)

(assert (=> b!4288109 (= e!2663257 (and tp!1313901 (inv!63074 (_2!25762 (_1!25763 (h!53020 mapValue!19631)))) e!2663262 tp_is_empty!23101 setRes!26240 tp!1313905))))

(declare-fun condSetEmpty!26240 () Bool)

(assert (=> b!4288109 (= condSetEmpty!26240 (= (_2!25763 (h!53020 mapValue!19631)) ((as const (Array Context!5650 Bool)) false)))))

(declare-fun b!4288110 () Bool)

(declare-fun tp!1313899 () Bool)

(assert (=> b!4288110 (= e!2663258 tp!1313899)))

(declare-fun b!4288111 () Bool)

(declare-fun tp!1313908 () Bool)

(assert (=> b!4288111 (= e!2663260 tp!1313908)))

(declare-fun setIsEmpty!26239 () Bool)

(assert (=> setIsEmpty!26239 setRes!26240))

(declare-fun condMapEmpty!19631 () Bool)

(assert (=> mapNonEmpty!19623 (= condMapEmpty!19631 (= mapRest!19623 ((as const (Array (_ BitVec 32) List!47724)) mapDefault!19631)))))

(assert (=> mapNonEmpty!19623 (= tp!1313837 (and e!2663259 mapRes!19631))))

(declare-fun b!4288112 () Bool)

(declare-fun tp!1313909 () Bool)

(assert (=> b!4288112 (= e!2663262 tp!1313909)))

(declare-fun setIsEmpty!26240 () Bool)

(assert (=> setIsEmpty!26240 setRes!26239))

(assert (= (and mapNonEmpty!19623 condMapEmpty!19631) mapIsEmpty!19631))

(assert (= (and mapNonEmpty!19623 (not condMapEmpty!19631)) mapNonEmpty!19631))

(assert (= b!4288109 b!4288112))

(assert (= (and b!4288109 condSetEmpty!26240) setIsEmpty!26239))

(assert (= (and b!4288109 (not condSetEmpty!26240)) setNonEmpty!26240))

(assert (= setNonEmpty!26240 b!4288108))

(assert (= (and mapNonEmpty!19631 ((_ is Cons!47600) mapValue!19631)) b!4288109))

(assert (= b!4288107 b!4288111))

(assert (= (and b!4288107 condSetEmpty!26239) setIsEmpty!26240))

(assert (= (and b!4288107 (not condSetEmpty!26239)) setNonEmpty!26239))

(assert (= setNonEmpty!26239 b!4288110))

(assert (= (and mapNonEmpty!19623 ((_ is Cons!47600) mapDefault!19631)) b!4288107))

(declare-fun m!4883169 () Bool)

(assert (=> b!4288109 m!4883169))

(declare-fun m!4883171 () Bool)

(assert (=> mapNonEmpty!19631 m!4883171))

(declare-fun m!4883173 () Bool)

(assert (=> b!4288107 m!4883173))

(declare-fun m!4883175 () Bool)

(assert (=> setNonEmpty!26239 m!4883175))

(declare-fun m!4883177 () Bool)

(assert (=> setNonEmpty!26240 m!4883177))

(declare-fun e!2663270 () Bool)

(assert (=> mapNonEmpty!19623 (= tp!1313814 e!2663270)))

(declare-fun b!4288121 () Bool)

(declare-fun e!2663271 () Bool)

(declare-fun tp!1313924 () Bool)

(assert (=> b!4288121 (= e!2663271 tp!1313924)))

(declare-fun tp!1313920 () Bool)

(declare-fun e!2663269 () Bool)

(declare-fun b!4288122 () Bool)

(declare-fun setRes!26243 () Bool)

(declare-fun tp!1313921 () Bool)

(assert (=> b!4288122 (= e!2663270 (and tp!1313921 (inv!63074 (_2!25762 (_1!25763 (h!53020 mapValue!19623)))) e!2663269 tp_is_empty!23101 setRes!26243 tp!1313920))))

(declare-fun condSetEmpty!26243 () Bool)

(assert (=> b!4288122 (= condSetEmpty!26243 (= (_2!25763 (h!53020 mapValue!19623)) ((as const (Array Context!5650 Bool)) false)))))

(declare-fun setNonEmpty!26243 () Bool)

(declare-fun setElem!26243 () Context!5650)

(declare-fun tp!1313923 () Bool)

(assert (=> setNonEmpty!26243 (= setRes!26243 (and tp!1313923 (inv!63074 setElem!26243) e!2663271))))

(declare-fun setRest!26243 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26243 (= (_2!25763 (h!53020 mapValue!19623)) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26243 true) setRest!26243))))

(declare-fun setIsEmpty!26243 () Bool)

(assert (=> setIsEmpty!26243 setRes!26243))

(declare-fun b!4288123 () Bool)

(declare-fun tp!1313922 () Bool)

(assert (=> b!4288123 (= e!2663269 tp!1313922)))

(assert (= b!4288122 b!4288123))

(assert (= (and b!4288122 condSetEmpty!26243) setIsEmpty!26243))

(assert (= (and b!4288122 (not condSetEmpty!26243)) setNonEmpty!26243))

(assert (= setNonEmpty!26243 b!4288121))

(assert (= (and mapNonEmpty!19623 ((_ is Cons!47600) mapValue!19623)) b!4288122))

(declare-fun m!4883179 () Bool)

(assert (=> b!4288122 m!4883179))

(declare-fun m!4883181 () Bool)

(assert (=> setNonEmpty!26243 m!4883181))

(declare-fun e!2663276 () Bool)

(declare-fun b!4288132 () Bool)

(declare-fun tp!1313931 () Bool)

(declare-fun tp!1313933 () Bool)

(assert (=> b!4288132 (= e!2663276 (and (inv!63071 (left!35377 (c!730180 input!6546))) tp!1313933 (inv!63071 (right!35707 (c!730180 input!6546))) tp!1313931))))

(declare-fun b!4288134 () Bool)

(declare-fun e!2663277 () Bool)

(declare-fun tp!1313932 () Bool)

(assert (=> b!4288134 (= e!2663277 tp!1313932)))

(declare-fun b!4288133 () Bool)

(declare-fun inv!63075 (IArray!28815) Bool)

(assert (=> b!4288133 (= e!2663276 (and (inv!63075 (xs!17683 (c!730180 input!6546))) e!2663277))))

(assert (=> b!4287988 (= tp!1313828 (and (inv!63071 (c!730180 input!6546)) e!2663276))))

(assert (= (and b!4287988 ((_ is Node!14377) (c!730180 input!6546))) b!4288132))

(assert (= b!4288133 b!4288134))

(assert (= (and b!4287988 ((_ is Leaf!22246) (c!730180 input!6546))) b!4288133))

(declare-fun m!4883183 () Bool)

(assert (=> b!4288132 m!4883183))

(declare-fun m!4883185 () Bool)

(assert (=> b!4288132 m!4883185))

(declare-fun m!4883187 () Bool)

(assert (=> b!4288133 m!4883187))

(assert (=> b!4287988 m!4883085))

(declare-fun setRes!26244 () Bool)

(declare-fun b!4288135 () Bool)

(declare-fun e!2663280 () Bool)

(declare-fun tp!1313935 () Bool)

(declare-fun e!2663278 () Bool)

(assert (=> b!4288135 (= e!2663278 (and (inv!63074 (_1!25760 (_1!25761 (h!53019 (zeroValue!4609 (v!41510 (underlying!8929 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044)))))))))) e!2663280 tp_is_empty!23101 setRes!26244 tp!1313935))))

(declare-fun condSetEmpty!26244 () Bool)

(assert (=> b!4288135 (= condSetEmpty!26244 (= (_2!25761 (h!53019 (zeroValue!4609 (v!41510 (underlying!8929 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044)))))))) ((as const (Array Context!5650 Bool)) false)))))

(assert (=> b!4287980 (= tp!1313823 e!2663278)))

(declare-fun b!4288136 () Bool)

(declare-fun e!2663279 () Bool)

(declare-fun tp!1313934 () Bool)

(assert (=> b!4288136 (= e!2663279 tp!1313934)))

(declare-fun setIsEmpty!26244 () Bool)

(assert (=> setIsEmpty!26244 setRes!26244))

(declare-fun b!4288137 () Bool)

(declare-fun tp!1313936 () Bool)

(assert (=> b!4288137 (= e!2663280 tp!1313936)))

(declare-fun tp!1313937 () Bool)

(declare-fun setElem!26244 () Context!5650)

(declare-fun setNonEmpty!26244 () Bool)

(assert (=> setNonEmpty!26244 (= setRes!26244 (and tp!1313937 (inv!63074 setElem!26244) e!2663279))))

(declare-fun setRest!26244 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26244 (= (_2!25761 (h!53019 (zeroValue!4609 (v!41510 (underlying!8929 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044)))))))) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26244 true) setRest!26244))))

(assert (= b!4288135 b!4288137))

(assert (= (and b!4288135 condSetEmpty!26244) setIsEmpty!26244))

(assert (= (and b!4288135 (not condSetEmpty!26244)) setNonEmpty!26244))

(assert (= setNonEmpty!26244 b!4288136))

(assert (= (and b!4287980 ((_ is Cons!47599) (zeroValue!4609 (v!41510 (underlying!8929 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044)))))))) b!4288135))

(declare-fun m!4883189 () Bool)

(assert (=> b!4288135 m!4883189))

(declare-fun m!4883191 () Bool)

(assert (=> setNonEmpty!26244 m!4883191))

(declare-fun tp!1313939 () Bool)

(declare-fun e!2663281 () Bool)

(declare-fun setRes!26245 () Bool)

(declare-fun b!4288138 () Bool)

(declare-fun e!2663283 () Bool)

(assert (=> b!4288138 (= e!2663281 (and (inv!63074 (_1!25760 (_1!25761 (h!53019 (minValue!4609 (v!41510 (underlying!8929 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044)))))))))) e!2663283 tp_is_empty!23101 setRes!26245 tp!1313939))))

(declare-fun condSetEmpty!26245 () Bool)

(assert (=> b!4288138 (= condSetEmpty!26245 (= (_2!25761 (h!53019 (minValue!4609 (v!41510 (underlying!8929 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044)))))))) ((as const (Array Context!5650 Bool)) false)))))

(assert (=> b!4287980 (= tp!1313830 e!2663281)))

(declare-fun b!4288139 () Bool)

(declare-fun e!2663282 () Bool)

(declare-fun tp!1313938 () Bool)

(assert (=> b!4288139 (= e!2663282 tp!1313938)))

(declare-fun setIsEmpty!26245 () Bool)

(assert (=> setIsEmpty!26245 setRes!26245))

(declare-fun b!4288140 () Bool)

(declare-fun tp!1313940 () Bool)

(assert (=> b!4288140 (= e!2663283 tp!1313940)))

(declare-fun tp!1313941 () Bool)

(declare-fun setNonEmpty!26245 () Bool)

(declare-fun setElem!26245 () Context!5650)

(assert (=> setNonEmpty!26245 (= setRes!26245 (and tp!1313941 (inv!63074 setElem!26245) e!2663282))))

(declare-fun setRest!26245 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26245 (= (_2!25761 (h!53019 (minValue!4609 (v!41510 (underlying!8929 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044)))))))) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26245 true) setRest!26245))))

(assert (= b!4288138 b!4288140))

(assert (= (and b!4288138 condSetEmpty!26245) setIsEmpty!26245))

(assert (= (and b!4288138 (not condSetEmpty!26245)) setNonEmpty!26245))

(assert (= setNonEmpty!26245 b!4288139))

(assert (= (and b!4287980 ((_ is Cons!47599) (minValue!4609 (v!41510 (underlying!8929 (v!41511 (underlying!8930 (cache!4396 cacheUp!1044)))))))) b!4288138))

(declare-fun m!4883193 () Bool)

(assert (=> b!4288138 m!4883193))

(declare-fun m!4883195 () Bool)

(assert (=> setNonEmpty!26245 m!4883195))

(declare-fun b!4288148 () Bool)

(declare-fun e!2663288 () Bool)

(declare-fun tp!1313949 () Bool)

(assert (=> b!4288148 (= e!2663288 tp!1313949)))

(declare-fun e!2663289 () Bool)

(assert (=> b!4287999 (= tp!1313835 e!2663289)))

(declare-fun setIsEmpty!26248 () Bool)

(declare-fun setRes!26248 () Bool)

(assert (=> setIsEmpty!26248 setRes!26248))

(declare-fun b!4288147 () Bool)

(declare-fun tp!1313948 () Bool)

(assert (=> b!4288147 (= e!2663289 (and setRes!26248 tp!1313948))))

(declare-fun condSetEmpty!26248 () Bool)

(assert (=> b!4288147 (= condSetEmpty!26248 (= (_1!25764 (_1!25765 (h!53022 (zeroValue!4611 (v!41514 (underlying!8933 (v!41515 (underlying!8934 (cache!4398 cacheFindLongestMatch!199))))))))) ((as const (Array Context!5650 Bool)) false)))))

(declare-fun setNonEmpty!26248 () Bool)

(declare-fun setElem!26248 () Context!5650)

(declare-fun tp!1313950 () Bool)

(assert (=> setNonEmpty!26248 (= setRes!26248 (and tp!1313950 (inv!63074 setElem!26248) e!2663288))))

(declare-fun setRest!26248 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26248 (= (_1!25764 (_1!25765 (h!53022 (zeroValue!4611 (v!41514 (underlying!8933 (v!41515 (underlying!8934 (cache!4398 cacheFindLongestMatch!199))))))))) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26248 true) setRest!26248))))

(assert (= (and b!4288147 condSetEmpty!26248) setIsEmpty!26248))

(assert (= (and b!4288147 (not condSetEmpty!26248)) setNonEmpty!26248))

(assert (= setNonEmpty!26248 b!4288148))

(assert (= (and b!4287999 ((_ is Cons!47602) (zeroValue!4611 (v!41514 (underlying!8933 (v!41515 (underlying!8934 (cache!4398 cacheFindLongestMatch!199)))))))) b!4288147))

(declare-fun m!4883197 () Bool)

(assert (=> setNonEmpty!26248 m!4883197))

(declare-fun b!4288150 () Bool)

(declare-fun e!2663290 () Bool)

(declare-fun tp!1313952 () Bool)

(assert (=> b!4288150 (= e!2663290 tp!1313952)))

(declare-fun e!2663291 () Bool)

(assert (=> b!4287999 (= tp!1313815 e!2663291)))

(declare-fun setIsEmpty!26249 () Bool)

(declare-fun setRes!26249 () Bool)

(assert (=> setIsEmpty!26249 setRes!26249))

(declare-fun b!4288149 () Bool)

(declare-fun tp!1313951 () Bool)

(assert (=> b!4288149 (= e!2663291 (and setRes!26249 tp!1313951))))

(declare-fun condSetEmpty!26249 () Bool)

(assert (=> b!4288149 (= condSetEmpty!26249 (= (_1!25764 (_1!25765 (h!53022 (minValue!4611 (v!41514 (underlying!8933 (v!41515 (underlying!8934 (cache!4398 cacheFindLongestMatch!199))))))))) ((as const (Array Context!5650 Bool)) false)))))

(declare-fun setElem!26249 () Context!5650)

(declare-fun setNonEmpty!26249 () Bool)

(declare-fun tp!1313953 () Bool)

(assert (=> setNonEmpty!26249 (= setRes!26249 (and tp!1313953 (inv!63074 setElem!26249) e!2663290))))

(declare-fun setRest!26249 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26249 (= (_1!25764 (_1!25765 (h!53022 (minValue!4611 (v!41514 (underlying!8933 (v!41515 (underlying!8934 (cache!4398 cacheFindLongestMatch!199))))))))) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26249 true) setRest!26249))))

(assert (= (and b!4288149 condSetEmpty!26249) setIsEmpty!26249))

(assert (= (and b!4288149 (not condSetEmpty!26249)) setNonEmpty!26249))

(assert (= setNonEmpty!26249 b!4288150))

(assert (= (and b!4287999 ((_ is Cons!47602) (minValue!4611 (v!41514 (underlying!8933 (v!41515 (underlying!8934 (cache!4398 cacheFindLongestMatch!199)))))))) b!4288149))

(declare-fun m!4883199 () Bool)

(assert (=> setNonEmpty!26249 m!4883199))

(declare-fun b!4288162 () Bool)

(declare-fun e!2663294 () Bool)

(declare-fun tp!1313964 () Bool)

(declare-fun tp!1313966 () Bool)

(assert (=> b!4288162 (= e!2663294 (and tp!1313964 tp!1313966))))

(declare-fun b!4288163 () Bool)

(declare-fun tp!1313967 () Bool)

(assert (=> b!4288163 (= e!2663294 tp!1313967)))

(declare-fun b!4288164 () Bool)

(declare-fun tp!1313965 () Bool)

(declare-fun tp!1313968 () Bool)

(assert (=> b!4288164 (= e!2663294 (and tp!1313965 tp!1313968))))

(assert (=> b!4287981 (= tp!1313816 e!2663294)))

(declare-fun b!4288161 () Bool)

(assert (=> b!4288161 (= e!2663294 tp_is_empty!23101)))

(assert (= (and b!4287981 ((_ is ElementMatch!12935) (regOne!26383 r!15285))) b!4288161))

(assert (= (and b!4287981 ((_ is Concat!21254) (regOne!26383 r!15285))) b!4288162))

(assert (= (and b!4287981 ((_ is Star!12935) (regOne!26383 r!15285))) b!4288163))

(assert (= (and b!4287981 ((_ is Union!12935) (regOne!26383 r!15285))) b!4288164))

(declare-fun b!4288166 () Bool)

(declare-fun e!2663295 () Bool)

(declare-fun tp!1313969 () Bool)

(declare-fun tp!1313971 () Bool)

(assert (=> b!4288166 (= e!2663295 (and tp!1313969 tp!1313971))))

(declare-fun b!4288167 () Bool)

(declare-fun tp!1313972 () Bool)

(assert (=> b!4288167 (= e!2663295 tp!1313972)))

(declare-fun b!4288168 () Bool)

(declare-fun tp!1313970 () Bool)

(declare-fun tp!1313973 () Bool)

(assert (=> b!4288168 (= e!2663295 (and tp!1313970 tp!1313973))))

(assert (=> b!4287981 (= tp!1313818 e!2663295)))

(declare-fun b!4288165 () Bool)

(assert (=> b!4288165 (= e!2663295 tp_is_empty!23101)))

(assert (= (and b!4287981 ((_ is ElementMatch!12935) (regTwo!26383 r!15285))) b!4288165))

(assert (= (and b!4287981 ((_ is Concat!21254) (regTwo!26383 r!15285))) b!4288166))

(assert (= (and b!4287981 ((_ is Star!12935) (regTwo!26383 r!15285))) b!4288167))

(assert (= (and b!4287981 ((_ is Union!12935) (regTwo!26383 r!15285))) b!4288168))

(declare-fun e!2663296 () Bool)

(declare-fun tp!1313974 () Bool)

(declare-fun tp!1313976 () Bool)

(declare-fun b!4288169 () Bool)

(assert (=> b!4288169 (= e!2663296 (and (inv!63071 (left!35377 (c!730180 (totalInput!4331 cacheFindLongestMatch!199)))) tp!1313976 (inv!63071 (right!35707 (c!730180 (totalInput!4331 cacheFindLongestMatch!199)))) tp!1313974))))

(declare-fun b!4288171 () Bool)

(declare-fun e!2663297 () Bool)

(declare-fun tp!1313975 () Bool)

(assert (=> b!4288171 (= e!2663297 tp!1313975)))

(declare-fun b!4288170 () Bool)

(assert (=> b!4288170 (= e!2663296 (and (inv!63075 (xs!17683 (c!730180 (totalInput!4331 cacheFindLongestMatch!199)))) e!2663297))))

(assert (=> b!4287990 (= tp!1313827 (and (inv!63071 (c!730180 (totalInput!4331 cacheFindLongestMatch!199))) e!2663296))))

(assert (= (and b!4287990 ((_ is Node!14377) (c!730180 (totalInput!4331 cacheFindLongestMatch!199)))) b!4288169))

(assert (= b!4288170 b!4288171))

(assert (= (and b!4287990 ((_ is Leaf!22246) (c!730180 (totalInput!4331 cacheFindLongestMatch!199)))) b!4288170))

(declare-fun m!4883201 () Bool)

(assert (=> b!4288169 m!4883201))

(declare-fun m!4883203 () Bool)

(assert (=> b!4288169 m!4883203))

(declare-fun m!4883205 () Bool)

(assert (=> b!4288170 m!4883205))

(assert (=> b!4287990 m!4883063))

(declare-fun tp!1313978 () Bool)

(declare-fun e!2663300 () Bool)

(declare-fun setRes!26250 () Bool)

(declare-fun e!2663298 () Bool)

(declare-fun b!4288172 () Bool)

(assert (=> b!4288172 (= e!2663298 (and (inv!63074 (_1!25760 (_1!25761 (h!53019 mapDefault!19623)))) e!2663300 tp_is_empty!23101 setRes!26250 tp!1313978))))

(declare-fun condSetEmpty!26250 () Bool)

(assert (=> b!4288172 (= condSetEmpty!26250 (= (_2!25761 (h!53019 mapDefault!19623)) ((as const (Array Context!5650 Bool)) false)))))

(assert (=> b!4287972 (= tp!1313820 e!2663298)))

(declare-fun b!4288173 () Bool)

(declare-fun e!2663299 () Bool)

(declare-fun tp!1313977 () Bool)

(assert (=> b!4288173 (= e!2663299 tp!1313977)))

(declare-fun setIsEmpty!26250 () Bool)

(assert (=> setIsEmpty!26250 setRes!26250))

(declare-fun b!4288174 () Bool)

(declare-fun tp!1313979 () Bool)

(assert (=> b!4288174 (= e!2663300 tp!1313979)))

(declare-fun tp!1313980 () Bool)

(declare-fun setElem!26250 () Context!5650)

(declare-fun setNonEmpty!26250 () Bool)

(assert (=> setNonEmpty!26250 (= setRes!26250 (and tp!1313980 (inv!63074 setElem!26250) e!2663299))))

(declare-fun setRest!26250 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26250 (= (_2!25761 (h!53019 mapDefault!19623)) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26250 true) setRest!26250))))

(assert (= b!4288172 b!4288174))

(assert (= (and b!4288172 condSetEmpty!26250) setIsEmpty!26250))

(assert (= (and b!4288172 (not condSetEmpty!26250)) setNonEmpty!26250))

(assert (= setNonEmpty!26250 b!4288173))

(assert (= (and b!4287972 ((_ is Cons!47599) mapDefault!19623)) b!4288172))

(declare-fun m!4883207 () Bool)

(assert (=> b!4288172 m!4883207))

(declare-fun m!4883209 () Bool)

(assert (=> setNonEmpty!26250 m!4883209))

(declare-fun e!2663301 () Bool)

(declare-fun tp!1313983 () Bool)

(declare-fun b!4288175 () Bool)

(declare-fun tp!1313981 () Bool)

(assert (=> b!4288175 (= e!2663301 (and (inv!63071 (left!35377 (c!730180 totalInput!1189))) tp!1313983 (inv!63071 (right!35707 (c!730180 totalInput!1189))) tp!1313981))))

(declare-fun b!4288177 () Bool)

(declare-fun e!2663302 () Bool)

(declare-fun tp!1313982 () Bool)

(assert (=> b!4288177 (= e!2663302 tp!1313982)))

(declare-fun b!4288176 () Bool)

(assert (=> b!4288176 (= e!2663301 (and (inv!63075 (xs!17683 (c!730180 totalInput!1189))) e!2663302))))

(assert (=> b!4287982 (= tp!1313819 (and (inv!63071 (c!730180 totalInput!1189)) e!2663301))))

(assert (= (and b!4287982 ((_ is Node!14377) (c!730180 totalInput!1189))) b!4288175))

(assert (= b!4288176 b!4288177))

(assert (= (and b!4287982 ((_ is Leaf!22246) (c!730180 totalInput!1189))) b!4288176))

(declare-fun m!4883211 () Bool)

(assert (=> b!4288175 m!4883211))

(declare-fun m!4883213 () Bool)

(assert (=> b!4288175 m!4883213))

(declare-fun m!4883215 () Bool)

(assert (=> b!4288176 m!4883215))

(assert (=> b!4287982 m!4883053))

(declare-fun e!2663304 () Bool)

(assert (=> b!4288001 (= tp!1313810 e!2663304)))

(declare-fun b!4288178 () Bool)

(declare-fun e!2663305 () Bool)

(declare-fun tp!1313988 () Bool)

(assert (=> b!4288178 (= e!2663305 tp!1313988)))

(declare-fun b!4288179 () Bool)

(declare-fun setRes!26251 () Bool)

(declare-fun tp!1313985 () Bool)

(declare-fun tp!1313984 () Bool)

(declare-fun e!2663303 () Bool)

(assert (=> b!4288179 (= e!2663304 (and tp!1313985 (inv!63074 (_2!25762 (_1!25763 (h!53020 (zeroValue!4610 (v!41512 (underlying!8931 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163)))))))))) e!2663303 tp_is_empty!23101 setRes!26251 tp!1313984))))

(declare-fun condSetEmpty!26251 () Bool)

(assert (=> b!4288179 (= condSetEmpty!26251 (= (_2!25763 (h!53020 (zeroValue!4610 (v!41512 (underlying!8931 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163)))))))) ((as const (Array Context!5650 Bool)) false)))))

(declare-fun setNonEmpty!26251 () Bool)

(declare-fun tp!1313987 () Bool)

(declare-fun setElem!26251 () Context!5650)

(assert (=> setNonEmpty!26251 (= setRes!26251 (and tp!1313987 (inv!63074 setElem!26251) e!2663305))))

(declare-fun setRest!26251 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26251 (= (_2!25763 (h!53020 (zeroValue!4610 (v!41512 (underlying!8931 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163)))))))) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26251 true) setRest!26251))))

(declare-fun setIsEmpty!26251 () Bool)

(assert (=> setIsEmpty!26251 setRes!26251))

(declare-fun b!4288180 () Bool)

(declare-fun tp!1313986 () Bool)

(assert (=> b!4288180 (= e!2663303 tp!1313986)))

(assert (= b!4288179 b!4288180))

(assert (= (and b!4288179 condSetEmpty!26251) setIsEmpty!26251))

(assert (= (and b!4288179 (not condSetEmpty!26251)) setNonEmpty!26251))

(assert (= setNonEmpty!26251 b!4288178))

(assert (= (and b!4288001 ((_ is Cons!47600) (zeroValue!4610 (v!41512 (underlying!8931 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163)))))))) b!4288179))

(declare-fun m!4883217 () Bool)

(assert (=> b!4288179 m!4883217))

(declare-fun m!4883219 () Bool)

(assert (=> setNonEmpty!26251 m!4883219))

(declare-fun e!2663307 () Bool)

(assert (=> b!4288001 (= tp!1313825 e!2663307)))

(declare-fun b!4288181 () Bool)

(declare-fun e!2663308 () Bool)

(declare-fun tp!1313993 () Bool)

(assert (=> b!4288181 (= e!2663308 tp!1313993)))

(declare-fun tp!1313989 () Bool)

(declare-fun tp!1313990 () Bool)

(declare-fun b!4288182 () Bool)

(declare-fun e!2663306 () Bool)

(declare-fun setRes!26252 () Bool)

(assert (=> b!4288182 (= e!2663307 (and tp!1313990 (inv!63074 (_2!25762 (_1!25763 (h!53020 (minValue!4610 (v!41512 (underlying!8931 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163)))))))))) e!2663306 tp_is_empty!23101 setRes!26252 tp!1313989))))

(declare-fun condSetEmpty!26252 () Bool)

(assert (=> b!4288182 (= condSetEmpty!26252 (= (_2!25763 (h!53020 (minValue!4610 (v!41512 (underlying!8931 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163)))))))) ((as const (Array Context!5650 Bool)) false)))))

(declare-fun setNonEmpty!26252 () Bool)

(declare-fun setElem!26252 () Context!5650)

(declare-fun tp!1313992 () Bool)

(assert (=> setNonEmpty!26252 (= setRes!26252 (and tp!1313992 (inv!63074 setElem!26252) e!2663308))))

(declare-fun setRest!26252 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26252 (= (_2!25763 (h!53020 (minValue!4610 (v!41512 (underlying!8931 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163)))))))) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26252 true) setRest!26252))))

(declare-fun setIsEmpty!26252 () Bool)

(assert (=> setIsEmpty!26252 setRes!26252))

(declare-fun b!4288183 () Bool)

(declare-fun tp!1313991 () Bool)

(assert (=> b!4288183 (= e!2663306 tp!1313991)))

(assert (= b!4288182 b!4288183))

(assert (= (and b!4288182 condSetEmpty!26252) setIsEmpty!26252))

(assert (= (and b!4288182 (not condSetEmpty!26252)) setNonEmpty!26252))

(assert (= setNonEmpty!26252 b!4288181))

(assert (= (and b!4288001 ((_ is Cons!47600) (minValue!4610 (v!41512 (underlying!8931 (v!41513 (underlying!8932 (cache!4397 cacheDown!1163)))))))) b!4288182))

(declare-fun m!4883221 () Bool)

(assert (=> b!4288182 m!4883221))

(declare-fun m!4883223 () Bool)

(assert (=> setNonEmpty!26252 m!4883223))

(declare-fun b!4288185 () Bool)

(declare-fun e!2663309 () Bool)

(declare-fun tp!1313994 () Bool)

(declare-fun tp!1313996 () Bool)

(assert (=> b!4288185 (= e!2663309 (and tp!1313994 tp!1313996))))

(declare-fun b!4288186 () Bool)

(declare-fun tp!1313997 () Bool)

(assert (=> b!4288186 (= e!2663309 tp!1313997)))

(declare-fun b!4288187 () Bool)

(declare-fun tp!1313995 () Bool)

(declare-fun tp!1313998 () Bool)

(assert (=> b!4288187 (= e!2663309 (and tp!1313995 tp!1313998))))

(assert (=> b!4287983 (= tp!1313826 e!2663309)))

(declare-fun b!4288184 () Bool)

(assert (=> b!4288184 (= e!2663309 tp_is_empty!23101)))

(assert (= (and b!4287983 ((_ is ElementMatch!12935) (regOne!26382 r!15285))) b!4288184))

(assert (= (and b!4287983 ((_ is Concat!21254) (regOne!26382 r!15285))) b!4288185))

(assert (= (and b!4287983 ((_ is Star!12935) (regOne!26382 r!15285))) b!4288186))

(assert (= (and b!4287983 ((_ is Union!12935) (regOne!26382 r!15285))) b!4288187))

(declare-fun b!4288189 () Bool)

(declare-fun e!2663310 () Bool)

(declare-fun tp!1313999 () Bool)

(declare-fun tp!1314001 () Bool)

(assert (=> b!4288189 (= e!2663310 (and tp!1313999 tp!1314001))))

(declare-fun b!4288190 () Bool)

(declare-fun tp!1314002 () Bool)

(assert (=> b!4288190 (= e!2663310 tp!1314002)))

(declare-fun b!4288191 () Bool)

(declare-fun tp!1314000 () Bool)

(declare-fun tp!1314003 () Bool)

(assert (=> b!4288191 (= e!2663310 (and tp!1314000 tp!1314003))))

(assert (=> b!4287983 (= tp!1313834 e!2663310)))

(declare-fun b!4288188 () Bool)

(assert (=> b!4288188 (= e!2663310 tp_is_empty!23101)))

(assert (= (and b!4287983 ((_ is ElementMatch!12935) (regTwo!26382 r!15285))) b!4288188))

(assert (= (and b!4287983 ((_ is Concat!21254) (regTwo!26382 r!15285))) b!4288189))

(assert (= (and b!4287983 ((_ is Star!12935) (regTwo!26382 r!15285))) b!4288190))

(assert (= (and b!4287983 ((_ is Union!12935) (regTwo!26382 r!15285))) b!4288191))

(declare-fun e!2663312 () Bool)

(assert (=> b!4287992 (= tp!1313824 e!2663312)))

(declare-fun b!4288192 () Bool)

(declare-fun e!2663313 () Bool)

(declare-fun tp!1314008 () Bool)

(assert (=> b!4288192 (= e!2663313 tp!1314008)))

(declare-fun tp!1314004 () Bool)

(declare-fun b!4288193 () Bool)

(declare-fun setRes!26253 () Bool)

(declare-fun e!2663311 () Bool)

(declare-fun tp!1314005 () Bool)

(assert (=> b!4288193 (= e!2663312 (and tp!1314005 (inv!63074 (_2!25762 (_1!25763 (h!53020 mapDefault!19625)))) e!2663311 tp_is_empty!23101 setRes!26253 tp!1314004))))

(declare-fun condSetEmpty!26253 () Bool)

(assert (=> b!4288193 (= condSetEmpty!26253 (= (_2!25763 (h!53020 mapDefault!19625)) ((as const (Array Context!5650 Bool)) false)))))

(declare-fun setNonEmpty!26253 () Bool)

(declare-fun setElem!26253 () Context!5650)

(declare-fun tp!1314007 () Bool)

(assert (=> setNonEmpty!26253 (= setRes!26253 (and tp!1314007 (inv!63074 setElem!26253) e!2663313))))

(declare-fun setRest!26253 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26253 (= (_2!25763 (h!53020 mapDefault!19625)) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26253 true) setRest!26253))))

(declare-fun setIsEmpty!26253 () Bool)

(assert (=> setIsEmpty!26253 setRes!26253))

(declare-fun b!4288194 () Bool)

(declare-fun tp!1314006 () Bool)

(assert (=> b!4288194 (= e!2663311 tp!1314006)))

(assert (= b!4288193 b!4288194))

(assert (= (and b!4288193 condSetEmpty!26253) setIsEmpty!26253))

(assert (= (and b!4288193 (not condSetEmpty!26253)) setNonEmpty!26253))

(assert (= setNonEmpty!26253 b!4288192))

(assert (= (and b!4287992 ((_ is Cons!47600) mapDefault!19625)) b!4288193))

(declare-fun m!4883225 () Bool)

(assert (=> b!4288193 m!4883225))

(declare-fun m!4883227 () Bool)

(assert (=> setNonEmpty!26253 m!4883227))

(declare-fun b!4288196 () Bool)

(declare-fun e!2663314 () Bool)

(declare-fun tp!1314009 () Bool)

(declare-fun tp!1314011 () Bool)

(assert (=> b!4288196 (= e!2663314 (and tp!1314009 tp!1314011))))

(declare-fun b!4288197 () Bool)

(declare-fun tp!1314012 () Bool)

(assert (=> b!4288197 (= e!2663314 tp!1314012)))

(declare-fun b!4288198 () Bool)

(declare-fun tp!1314010 () Bool)

(declare-fun tp!1314013 () Bool)

(assert (=> b!4288198 (= e!2663314 (and tp!1314010 tp!1314013))))

(assert (=> b!4287974 (= tp!1313822 e!2663314)))

(declare-fun b!4288195 () Bool)

(assert (=> b!4288195 (= e!2663314 tp_is_empty!23101)))

(assert (= (and b!4287974 ((_ is ElementMatch!12935) (reg!13264 r!15285))) b!4288195))

(assert (= (and b!4287974 ((_ is Concat!21254) (reg!13264 r!15285))) b!4288196))

(assert (= (and b!4287974 ((_ is Star!12935) (reg!13264 r!15285))) b!4288197))

(assert (= (and b!4287974 ((_ is Union!12935) (reg!13264 r!15285))) b!4288198))

(declare-fun b!4288209 () Bool)

(declare-fun e!2663324 () Bool)

(declare-fun tp!1314031 () Bool)

(assert (=> b!4288209 (= e!2663324 tp!1314031)))

(declare-fun setNonEmpty!26258 () Bool)

(declare-fun setElem!26258 () Context!5650)

(declare-fun setRes!26259 () Bool)

(declare-fun e!2663325 () Bool)

(declare-fun tp!1314034 () Bool)

(assert (=> setNonEmpty!26258 (= setRes!26259 (and tp!1314034 (inv!63074 setElem!26258) e!2663325))))

(declare-fun mapDefault!19634 () List!47726)

(declare-fun setRest!26259 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26258 (= (_1!25764 (_1!25765 (h!53022 mapDefault!19634))) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26258 true) setRest!26259))))

(declare-fun setIsEmpty!26258 () Bool)

(declare-fun setRes!26258 () Bool)

(assert (=> setIsEmpty!26258 setRes!26258))

(declare-fun condMapEmpty!19634 () Bool)

(assert (=> mapNonEmpty!19625 (= condMapEmpty!19634 (= mapRest!19625 ((as const (Array (_ BitVec 32) List!47726)) mapDefault!19634)))))

(declare-fun e!2663323 () Bool)

(declare-fun mapRes!19634 () Bool)

(assert (=> mapNonEmpty!19625 (= tp!1313829 (and e!2663323 mapRes!19634))))

(declare-fun mapNonEmpty!19634 () Bool)

(declare-fun tp!1314033 () Bool)

(declare-fun e!2663326 () Bool)

(assert (=> mapNonEmpty!19634 (= mapRes!19634 (and tp!1314033 e!2663326))))

(declare-fun mapRest!19634 () (Array (_ BitVec 32) List!47726))

(declare-fun mapKey!19634 () (_ BitVec 32))

(declare-fun mapValue!19634 () List!47726)

(assert (=> mapNonEmpty!19634 (= mapRest!19625 (store mapRest!19634 mapKey!19634 mapValue!19634))))

(declare-fun b!4288210 () Bool)

(declare-fun tp!1314032 () Bool)

(assert (=> b!4288210 (= e!2663325 tp!1314032)))

(declare-fun setNonEmpty!26259 () Bool)

(declare-fun tp!1314030 () Bool)

(declare-fun setElem!26259 () Context!5650)

(assert (=> setNonEmpty!26259 (= setRes!26258 (and tp!1314030 (inv!63074 setElem!26259) e!2663324))))

(declare-fun setRest!26258 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26259 (= (_1!25764 (_1!25765 (h!53022 mapValue!19634))) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26259 true) setRest!26258))))

(declare-fun setIsEmpty!26259 () Bool)

(assert (=> setIsEmpty!26259 setRes!26259))

(declare-fun b!4288211 () Bool)

(declare-fun tp!1314029 () Bool)

(assert (=> b!4288211 (= e!2663323 (and setRes!26259 tp!1314029))))

(declare-fun condSetEmpty!26259 () Bool)

(assert (=> b!4288211 (= condSetEmpty!26259 (= (_1!25764 (_1!25765 (h!53022 mapDefault!19634))) ((as const (Array Context!5650 Bool)) false)))))

(declare-fun b!4288212 () Bool)

(declare-fun tp!1314028 () Bool)

(assert (=> b!4288212 (= e!2663326 (and setRes!26258 tp!1314028))))

(declare-fun condSetEmpty!26258 () Bool)

(assert (=> b!4288212 (= condSetEmpty!26258 (= (_1!25764 (_1!25765 (h!53022 mapValue!19634))) ((as const (Array Context!5650 Bool)) false)))))

(declare-fun mapIsEmpty!19634 () Bool)

(assert (=> mapIsEmpty!19634 mapRes!19634))

(assert (= (and mapNonEmpty!19625 condMapEmpty!19634) mapIsEmpty!19634))

(assert (= (and mapNonEmpty!19625 (not condMapEmpty!19634)) mapNonEmpty!19634))

(assert (= (and b!4288212 condSetEmpty!26258) setIsEmpty!26258))

(assert (= (and b!4288212 (not condSetEmpty!26258)) setNonEmpty!26259))

(assert (= setNonEmpty!26259 b!4288209))

(assert (= (and mapNonEmpty!19634 ((_ is Cons!47602) mapValue!19634)) b!4288212))

(assert (= (and b!4288211 condSetEmpty!26259) setIsEmpty!26259))

(assert (= (and b!4288211 (not condSetEmpty!26259)) setNonEmpty!26258))

(assert (= setNonEmpty!26258 b!4288210))

(assert (= (and mapNonEmpty!19625 ((_ is Cons!47602) mapDefault!19634)) b!4288211))

(declare-fun m!4883229 () Bool)

(assert (=> setNonEmpty!26258 m!4883229))

(declare-fun m!4883231 () Bool)

(assert (=> mapNonEmpty!19634 m!4883231))

(declare-fun m!4883233 () Bool)

(assert (=> setNonEmpty!26259 m!4883233))

(declare-fun b!4288214 () Bool)

(declare-fun e!2663327 () Bool)

(declare-fun tp!1314036 () Bool)

(assert (=> b!4288214 (= e!2663327 tp!1314036)))

(declare-fun e!2663328 () Bool)

(assert (=> mapNonEmpty!19625 (= tp!1313809 e!2663328)))

(declare-fun setIsEmpty!26260 () Bool)

(declare-fun setRes!26260 () Bool)

(assert (=> setIsEmpty!26260 setRes!26260))

(declare-fun b!4288213 () Bool)

(declare-fun tp!1314035 () Bool)

(assert (=> b!4288213 (= e!2663328 (and setRes!26260 tp!1314035))))

(declare-fun condSetEmpty!26260 () Bool)

(assert (=> b!4288213 (= condSetEmpty!26260 (= (_1!25764 (_1!25765 (h!53022 mapValue!19624))) ((as const (Array Context!5650 Bool)) false)))))

(declare-fun tp!1314037 () Bool)

(declare-fun setElem!26260 () Context!5650)

(declare-fun setNonEmpty!26260 () Bool)

(assert (=> setNonEmpty!26260 (= setRes!26260 (and tp!1314037 (inv!63074 setElem!26260) e!2663327))))

(declare-fun setRest!26260 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26260 (= (_1!25764 (_1!25765 (h!53022 mapValue!19624))) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26260 true) setRest!26260))))

(assert (= (and b!4288213 condSetEmpty!26260) setIsEmpty!26260))

(assert (= (and b!4288213 (not condSetEmpty!26260)) setNonEmpty!26260))

(assert (= setNonEmpty!26260 b!4288214))

(assert (= (and mapNonEmpty!19625 ((_ is Cons!47602) mapValue!19624)) b!4288213))

(declare-fun m!4883235 () Bool)

(assert (=> setNonEmpty!26260 m!4883235))

(declare-fun b!4288216 () Bool)

(declare-fun e!2663329 () Bool)

(declare-fun tp!1314039 () Bool)

(assert (=> b!4288216 (= e!2663329 tp!1314039)))

(declare-fun e!2663330 () Bool)

(assert (=> b!4287993 (= tp!1313812 e!2663330)))

(declare-fun setIsEmpty!26261 () Bool)

(declare-fun setRes!26261 () Bool)

(assert (=> setIsEmpty!26261 setRes!26261))

(declare-fun b!4288215 () Bool)

(declare-fun tp!1314038 () Bool)

(assert (=> b!4288215 (= e!2663330 (and setRes!26261 tp!1314038))))

(declare-fun condSetEmpty!26261 () Bool)

(assert (=> b!4288215 (= condSetEmpty!26261 (= (_1!25764 (_1!25765 (h!53022 mapDefault!19624))) ((as const (Array Context!5650 Bool)) false)))))

(declare-fun tp!1314040 () Bool)

(declare-fun setElem!26261 () Context!5650)

(declare-fun setNonEmpty!26261 () Bool)

(assert (=> setNonEmpty!26261 (= setRes!26261 (and tp!1314040 (inv!63074 setElem!26261) e!2663329))))

(declare-fun setRest!26261 () (InoxSet Context!5650))

(assert (=> setNonEmpty!26261 (= (_1!25764 (_1!25765 (h!53022 mapDefault!19624))) ((_ map or) (store ((as const (Array Context!5650 Bool)) false) setElem!26261 true) setRest!26261))))

(assert (= (and b!4288215 condSetEmpty!26261) setIsEmpty!26261))

(assert (= (and b!4288215 (not condSetEmpty!26261)) setNonEmpty!26261))

(assert (= setNonEmpty!26261 b!4288216))

(assert (= (and b!4287993 ((_ is Cons!47602) mapDefault!19624)) b!4288215))

(declare-fun m!4883237 () Bool)

(assert (=> setNonEmpty!26261 m!4883237))

(check-sat (not b!4288076) (not b!4288170) (not setNonEmpty!26261) (not b!4288187) (not b!4288175) (not b!4288216) (not mapNonEmpty!19628) (not b!4288123) (not b!4288148) (not b!4288162) (not d!1265337) (not b!4288077) (not mapNonEmpty!19631) (not b!4288183) (not b!4288056) (not b!4288133) (not b!4288181) (not mapNonEmpty!19634) (not d!1265363) (not b!4288059) (not setNonEmpty!26258) (not b!4288112) (not b!4288078) (not b!4288174) (not setNonEmpty!26231) (not setNonEmpty!26239) (not b!4288107) b_and!338447 (not b!4288109) (not b!4288090) (not b!4288178) (not b!4288198) (not b!4288058) (not b!4288139) (not b_next!127927) (not bm!294496) (not b_next!127935) b_and!338443 (not b!4288132) b_and!338439 (not b!4288185) (not setNonEmpty!26244) (not b!4288163) (not b!4287990) (not b!4288138) (not b!4288061) (not setNonEmpty!26252) (not b!4288164) (not b!4288167) (not d!1265371) (not b!4288110) (not d!1265345) (not b!4288108) tp_is_empty!23101 (not b!4288197) (not b!4288055) b_and!338449 (not b!4288136) (not b!4288137) (not d!1265353) (not b!4288079) (not b!4288166) (not b!4288215) (not setNonEmpty!26240) (not b!4288135) (not b!4288053) (not b!4288007) (not b!4288150) (not b!4288169) (not b!4288122) (not d!1265331) (not d!1265351) (not b!4288211) (not b!4288046) (not b!4288121) (not b!4288179) (not setNonEmpty!26259) (not setNonEmpty!26234) (not d!1265341) (not b_next!127931) (not b!4288186) (not b!4288171) (not bm!294498) (not b!4288196) (not b!4288040) (not b!4288168) (not b!4288140) (not b_next!127937) (not b!4288192) (not b!4288194) (not setNonEmpty!26249) b_and!338441 (not b!4288172) (not d!1265355) (not b_next!127929) (not b!4288180) (not setNonEmpty!26243) (not b!4288214) (not setNonEmpty!26248) (not b!4288033) (not setNonEmpty!26250) (not b!4288004) (not d!1265329) (not setNonEmpty!26230) (not b!4288193) (not b!4288111) (not b!4288182) (not b!4288212) (not b!4288080) (not b!4287982) (not b!4288010) (not b!4288210) (not d!1265333) (not d!1265335) (not b!4288176) (not b!4288149) (not b!4288191) (not b!4288213) (not b!4288092) (not setNonEmpty!26260) b_and!338445 (not b!4288173) (not b!4288189) (not b!4288190) (not b!4287988) (not b!4288147) (not b_next!127933) (not b!4288209) (not setNonEmpty!26245) (not b!4288177) (not b!4288134) (not b!4288081) (not b!4288043) (not setNonEmpty!26253) (not b!4288091) (not setNonEmpty!26251))
(check-sat b_and!338447 (not b_next!127927) b_and!338449 (not b_next!127931) (not b_next!127937) b_and!338445 (not b_next!127933) (not b_next!127935) b_and!338443 b_and!338439 b_and!338441 (not b_next!127929))
