; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208426 () Bool)

(assert start!208426)

(declare-fun b!2148854 () Bool)

(declare-fun b_free!63445 () Bool)

(declare-fun b_next!64149 () Bool)

(assert (=> b!2148854 (= b_free!63445 (not b_next!64149))))

(declare-fun tp!667188 () Bool)

(declare-fun b_and!173041 () Bool)

(assert (=> b!2148854 (= tp!667188 b_and!173041)))

(declare-fun b!2148857 () Bool)

(declare-fun b_free!63447 () Bool)

(declare-fun b_next!64151 () Bool)

(assert (=> b!2148857 (= b_free!63447 (not b_next!64151))))

(declare-fun tp!667191 () Bool)

(declare-fun b_and!173043 () Bool)

(assert (=> b!2148857 (= tp!667191 b_and!173043)))

(declare-fun b!2148851 () Bool)

(assert (=> b!2148851 true))

(declare-fun b!2148850 () Bool)

(declare-fun e!1373921 () Bool)

(declare-datatypes ((C!11824 0))(
  ( (C!11825 (val!6898 Int)) )
))
(declare-datatypes ((List!24676 0))(
  ( (Nil!24592) (Cons!24592 (h!29993 C!11824) (t!197214 List!24676)) )
))
(declare-datatypes ((Regex!5839 0))(
  ( (ElementMatch!5839 (c!341006 C!11824)) (Concat!10141 (regOne!12190 Regex!5839) (regTwo!12190 Regex!5839)) (EmptyExpr!5839) (Star!5839 (reg!6168 Regex!5839)) (EmptyLang!5839) (Union!5839 (regOne!12191 Regex!5839) (regTwo!12191 Regex!5839)) )
))
(declare-datatypes ((List!24677 0))(
  ( (Nil!24593) (Cons!24593 (h!29994 Regex!5839) (t!197215 List!24677)) )
))
(declare-datatypes ((Context!2818 0))(
  ( (Context!2819 (exprs!1909 List!24677)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3610 0))(
  ( (tuple3!3611 (_1!14493 (InoxSet Context!2818)) (_2!14493 Int) (_3!2275 Int)) )
))
(declare-datatypes ((tuple2!24436 0))(
  ( (tuple2!24437 (_1!14494 tuple3!3610) (_2!14494 Int)) )
))
(declare-datatypes ((List!24678 0))(
  ( (Nil!24594) (Cons!24594 (h!29995 tuple2!24436) (t!197216 List!24678)) )
))
(declare-datatypes ((array!9681 0))(
  ( (array!9682 (arr!4324 (Array (_ BitVec 32) (_ BitVec 64))) (size!19260 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!2778 0))(
  ( (HashableExt!2777 (__x!16768 Int)) )
))
(declare-datatypes ((array!9683 0))(
  ( (array!9684 (arr!4325 (Array (_ BitVec 32) List!24678)) (size!19261 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5728 0))(
  ( (LongMapFixedSize!5729 (defaultEntry!3229 Int) (mask!7099 (_ BitVec 32)) (extraKeys!3112 (_ BitVec 32)) (zeroValue!3122 List!24678) (minValue!3122 List!24678) (_size!5779 (_ BitVec 32)) (_keys!3161 array!9681) (_values!3144 array!9683) (_vacant!2925 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11281 0))(
  ( (Cell!11282 (v!29166 LongMapFixedSize!5728)) )
))
(declare-datatypes ((MutLongMap!2864 0))(
  ( (LongMap!2864 (underlying!5923 Cell!11281)) (MutLongMapExt!2863 (__x!16769 Int)) )
))
(declare-datatypes ((Cell!11283 0))(
  ( (Cell!11284 (v!29167 MutLongMap!2864)) )
))
(declare-datatypes ((MutableMap!2778 0))(
  ( (MutableMapExt!2777 (__x!16770 Int)) (HashMap!2778 (underlying!5924 Cell!11283) (hashF!4701 Hashable!2778) (_size!5780 (_ BitVec 32)) (defaultValue!2940 Int)) )
))
(declare-datatypes ((IArray!15955 0))(
  ( (IArray!15956 (innerList!8035 List!24676)) )
))
(declare-datatypes ((Conc!7975 0))(
  ( (Node!7975 (left!18877 Conc!7975) (right!19207 Conc!7975) (csize!16180 Int) (cheight!8186 Int)) (Leaf!11662 (xs!10917 IArray!15955) (csize!16181 Int)) (Empty!7975) )
))
(declare-datatypes ((BalanceConc!15712 0))(
  ( (BalanceConc!15713 (c!341007 Conc!7975)) )
))
(declare-datatypes ((CacheFurthestNullable!914 0))(
  ( (CacheFurthestNullable!915 (cache!3159 MutableMap!2778) (totalInput!3224 BalanceConc!15712)) )
))
(declare-fun thiss!29110 () CacheFurthestNullable!914)

(declare-fun tp!667187 () Bool)

(declare-fun inv!32383 (Conc!7975) Bool)

(assert (=> b!2148850 (= e!1373921 (and (inv!32383 (c!341007 (totalInput!3224 thiss!29110))) tp!667187))))

(declare-fun e!1373924 () Bool)

(assert (=> b!2148851 (= e!1373924 true)))

(declare-fun lt!799903 () Bool)

(declare-fun lambda!80720 () Int)

(declare-fun forall!5016 (List!24678 Int) Bool)

(declare-datatypes ((ListMap!687 0))(
  ( (ListMap!688 (toList!1097 List!24678)) )
))
(declare-fun map!4943 (MutableMap!2778) ListMap!687)

(assert (=> b!2148851 (= lt!799903 (forall!5016 (toList!1097 (map!4943 (cache!3159 thiss!29110))) lambda!80720))))

(declare-fun b!2148852 () Bool)

(declare-fun e!1373920 () Bool)

(declare-fun tp!667193 () Bool)

(assert (=> b!2148852 (= e!1373920 tp!667193)))

(declare-fun b!2148853 () Bool)

(declare-fun e!1373922 () Bool)

(assert (=> b!2148853 (= e!1373922 (not e!1373924))))

(declare-fun res!926871 () Bool)

(assert (=> b!2148853 (=> res!926871 e!1373924)))

(declare-fun z!514 () (InoxSet Context!2818))

(declare-fun lastNullablePos!91 () Int)

(declare-fun from!952 () Int)

(declare-fun contains!4191 (MutableMap!2778 tuple3!3610) Bool)

(assert (=> b!2148853 (= res!926871 (not (contains!4191 (cache!3159 thiss!29110) (tuple3!3611 z!514 from!952 lastNullablePos!91))))))

(declare-fun localTotalInput!13 () BalanceConc!15712)

(declare-fun validCacheMapFurthestNullable!137 (MutableMap!2778 BalanceConc!15712) Bool)

(assert (=> b!2148853 (validCacheMapFurthestNullable!137 (cache!3159 thiss!29110) localTotalInput!13)))

(declare-fun e!1373914 () Bool)

(declare-fun tp!667192 () Bool)

(declare-fun tp!667185 () Bool)

(declare-fun e!1373917 () Bool)

(declare-fun array_inv!3100 (array!9681) Bool)

(declare-fun array_inv!3101 (array!9683) Bool)

(assert (=> b!2148854 (= e!1373917 (and tp!667188 tp!667185 tp!667192 (array_inv!3100 (_keys!3161 (v!29166 (underlying!5923 (v!29167 (underlying!5924 (cache!3159 thiss!29110))))))) (array_inv!3101 (_values!3144 (v!29166 (underlying!5923 (v!29167 (underlying!5924 (cache!3159 thiss!29110))))))) e!1373914))))

(declare-fun b!2148855 () Bool)

(declare-fun e!1373918 () Bool)

(declare-fun e!1373919 () Bool)

(declare-fun lt!799904 () MutLongMap!2864)

(get-info :version)

(assert (=> b!2148855 (= e!1373918 (and e!1373919 ((_ is LongMap!2864) lt!799904)))))

(assert (=> b!2148855 (= lt!799904 (v!29167 (underlying!5924 (cache!3159 thiss!29110))))))

(declare-fun res!926869 () Bool)

(assert (=> start!208426 (=> (not res!926869) (not e!1373922))))

(assert (=> start!208426 (= res!926869 (and (= localTotalInput!13 (totalInput!3224 thiss!29110)) (>= lastNullablePos!91 (- 1)) (< lastNullablePos!91 from!952)))))

(assert (=> start!208426 e!1373922))

(declare-fun condSetEmpty!17026 () Bool)

(assert (=> start!208426 (= condSetEmpty!17026 (= z!514 ((as const (Array Context!2818 Bool)) false)))))

(declare-fun setRes!17026 () Bool)

(assert (=> start!208426 setRes!17026))

(assert (=> start!208426 true))

(declare-fun e!1373915 () Bool)

(declare-fun inv!32384 (CacheFurthestNullable!914) Bool)

(assert (=> start!208426 (and (inv!32384 thiss!29110) e!1373915)))

(declare-fun e!1373912 () Bool)

(declare-fun inv!32385 (BalanceConc!15712) Bool)

(assert (=> start!208426 (and (inv!32385 localTotalInput!13) e!1373912)))

(declare-fun b!2148856 () Bool)

(declare-fun res!926870 () Bool)

(assert (=> b!2148856 (=> (not res!926870) (not e!1373922))))

(assert (=> b!2148856 (= res!926870 (validCacheMapFurthestNullable!137 (cache!3159 thiss!29110) (totalInput!3224 thiss!29110)))))

(declare-fun e!1373925 () Bool)

(assert (=> b!2148857 (= e!1373925 (and e!1373918 tp!667191))))

(declare-fun b!2148858 () Bool)

(declare-fun tp!667183 () Bool)

(declare-fun mapRes!13577 () Bool)

(assert (=> b!2148858 (= e!1373914 (and tp!667183 mapRes!13577))))

(declare-fun condMapEmpty!13577 () Bool)

(declare-fun mapDefault!13577 () List!24678)

(assert (=> b!2148858 (= condMapEmpty!13577 (= (arr!4325 (_values!3144 (v!29166 (underlying!5923 (v!29167 (underlying!5924 (cache!3159 thiss!29110))))))) ((as const (Array (_ BitVec 32) List!24678)) mapDefault!13577)))))

(declare-fun setNonEmpty!17026 () Bool)

(declare-fun setElem!17026 () Context!2818)

(declare-fun tp!667189 () Bool)

(declare-fun inv!32386 (Context!2818) Bool)

(assert (=> setNonEmpty!17026 (= setRes!17026 (and tp!667189 (inv!32386 setElem!17026) e!1373920))))

(declare-fun setRest!17026 () (InoxSet Context!2818))

(assert (=> setNonEmpty!17026 (= z!514 ((_ map or) (store ((as const (Array Context!2818 Bool)) false) setElem!17026 true) setRest!17026))))

(declare-fun b!2148859 () Bool)

(declare-fun res!926873 () Bool)

(assert (=> b!2148859 (=> (not res!926873) (not e!1373922))))

(declare-fun e!1373923 () Bool)

(assert (=> b!2148859 (= res!926873 e!1373923)))

(declare-fun res!926868 () Bool)

(assert (=> b!2148859 (=> res!926868 e!1373923)))

(declare-fun nullableZipper!180 ((InoxSet Context!2818)) Bool)

(assert (=> b!2148859 (= res!926868 (not (nullableZipper!180 z!514)))))

(declare-fun setIsEmpty!17026 () Bool)

(assert (=> setIsEmpty!17026 setRes!17026))

(declare-fun b!2148860 () Bool)

(declare-fun tp!667184 () Bool)

(assert (=> b!2148860 (= e!1373912 (and (inv!32383 (c!341007 localTotalInput!13)) tp!667184))))

(declare-fun b!2148861 () Bool)

(declare-fun res!926872 () Bool)

(assert (=> b!2148861 (=> res!926872 e!1373924)))

(declare-fun valid!2215 (MutableMap!2778) Bool)

(assert (=> b!2148861 (= res!926872 (not (valid!2215 (cache!3159 thiss!29110))))))

(declare-fun b!2148862 () Bool)

(declare-fun res!926874 () Bool)

(assert (=> b!2148862 (=> res!926874 e!1373924)))

(assert (=> b!2148862 (= res!926874 (not ((_ is HashMap!2778) (cache!3159 thiss!29110))))))

(declare-fun mapNonEmpty!13577 () Bool)

(declare-fun tp!667186 () Bool)

(declare-fun tp!667190 () Bool)

(assert (=> mapNonEmpty!13577 (= mapRes!13577 (and tp!667186 tp!667190))))

(declare-fun mapValue!13577 () List!24678)

(declare-fun mapKey!13577 () (_ BitVec 32))

(declare-fun mapRest!13577 () (Array (_ BitVec 32) List!24678))

(assert (=> mapNonEmpty!13577 (= (arr!4325 (_values!3144 (v!29166 (underlying!5923 (v!29167 (underlying!5924 (cache!3159 thiss!29110))))))) (store mapRest!13577 mapKey!13577 mapValue!13577))))

(declare-fun mapIsEmpty!13577 () Bool)

(assert (=> mapIsEmpty!13577 mapRes!13577))

(declare-fun b!2148863 () Bool)

(declare-fun e!1373913 () Bool)

(assert (=> b!2148863 (= e!1373919 e!1373913)))

(declare-fun b!2148864 () Bool)

(assert (=> b!2148864 (= e!1373923 (= lastNullablePos!91 (- from!952 1)))))

(declare-fun b!2148865 () Bool)

(assert (=> b!2148865 (= e!1373915 (and e!1373925 (inv!32385 (totalInput!3224 thiss!29110)) e!1373921))))

(declare-fun b!2148866 () Bool)

(assert (=> b!2148866 (= e!1373913 e!1373917)))

(assert (= (and start!208426 res!926869) b!2148859))

(assert (= (and b!2148859 (not res!926868)) b!2148864))

(assert (= (and b!2148859 res!926873) b!2148856))

(assert (= (and b!2148856 res!926870) b!2148853))

(assert (= (and b!2148853 (not res!926871)) b!2148862))

(assert (= (and b!2148862 (not res!926874)) b!2148861))

(assert (= (and b!2148861 (not res!926872)) b!2148851))

(assert (= (and start!208426 condSetEmpty!17026) setIsEmpty!17026))

(assert (= (and start!208426 (not condSetEmpty!17026)) setNonEmpty!17026))

(assert (= setNonEmpty!17026 b!2148852))

(assert (= (and b!2148858 condMapEmpty!13577) mapIsEmpty!13577))

(assert (= (and b!2148858 (not condMapEmpty!13577)) mapNonEmpty!13577))

(assert (= b!2148854 b!2148858))

(assert (= b!2148866 b!2148854))

(assert (= b!2148863 b!2148866))

(assert (= (and b!2148855 ((_ is LongMap!2864) (v!29167 (underlying!5924 (cache!3159 thiss!29110))))) b!2148863))

(assert (= b!2148857 b!2148855))

(assert (= (and b!2148865 ((_ is HashMap!2778) (cache!3159 thiss!29110))) b!2148857))

(assert (= b!2148865 b!2148850))

(assert (= start!208426 b!2148865))

(assert (= start!208426 b!2148860))

(declare-fun m!2591768 () Bool)

(assert (=> b!2148856 m!2591768))

(declare-fun m!2591770 () Bool)

(assert (=> start!208426 m!2591770))

(declare-fun m!2591772 () Bool)

(assert (=> start!208426 m!2591772))

(declare-fun m!2591774 () Bool)

(assert (=> mapNonEmpty!13577 m!2591774))

(declare-fun m!2591776 () Bool)

(assert (=> b!2148865 m!2591776))

(declare-fun m!2591778 () Bool)

(assert (=> b!2148854 m!2591778))

(declare-fun m!2591780 () Bool)

(assert (=> b!2148854 m!2591780))

(declare-fun m!2591782 () Bool)

(assert (=> setNonEmpty!17026 m!2591782))

(declare-fun m!2591784 () Bool)

(assert (=> b!2148850 m!2591784))

(declare-fun m!2591786 () Bool)

(assert (=> b!2148860 m!2591786))

(declare-fun m!2591788 () Bool)

(assert (=> b!2148859 m!2591788))

(declare-fun m!2591790 () Bool)

(assert (=> b!2148861 m!2591790))

(declare-fun m!2591792 () Bool)

(assert (=> b!2148853 m!2591792))

(declare-fun m!2591794 () Bool)

(assert (=> b!2148853 m!2591794))

(declare-fun m!2591796 () Bool)

(assert (=> b!2148851 m!2591796))

(declare-fun m!2591798 () Bool)

(assert (=> b!2148851 m!2591798))

(check-sat (not b_next!64149) (not b!2148856) b_and!173041 (not setNonEmpty!17026) (not b!2148850) (not b!2148860) (not b!2148853) (not start!208426) (not b!2148865) b_and!173043 (not b!2148851) (not b!2148852) (not b!2148854) (not mapNonEmpty!13577) (not b!2148858) (not b!2148859) (not b_next!64151) (not b!2148861))
(check-sat b_and!173043 b_and!173041 (not b_next!64149) (not b_next!64151))
