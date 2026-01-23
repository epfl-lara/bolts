; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266878 () Bool)

(assert start!266878)

(declare-fun b!2753051 () Bool)

(declare-fun b_free!77909 () Bool)

(declare-fun b_next!78613 () Bool)

(assert (=> b!2753051 (= b_free!77909 (not b_next!78613))))

(declare-fun tp!869911 () Bool)

(declare-fun b_and!202647 () Bool)

(assert (=> b!2753051 (= tp!869911 b_and!202647)))

(declare-fun b!2753072 () Bool)

(declare-fun b_free!77911 () Bool)

(declare-fun b_next!78615 () Bool)

(assert (=> b!2753072 (= b_free!77911 (not b_next!78615))))

(declare-fun tp!869913 () Bool)

(declare-fun b_and!202649 () Bool)

(assert (=> b!2753072 (= tp!869913 b_and!202649)))

(declare-fun b!2753056 () Bool)

(declare-fun b_free!77913 () Bool)

(declare-fun b_next!78617 () Bool)

(assert (=> b!2753056 (= b_free!77913 (not b_next!78617))))

(declare-fun tp!869912 () Bool)

(declare-fun b_and!202651 () Bool)

(assert (=> b!2753056 (= tp!869912 b_and!202651)))

(declare-fun b!2753055 () Bool)

(declare-fun b_free!77915 () Bool)

(declare-fun b_next!78619 () Bool)

(assert (=> b!2753055 (= b_free!77915 (not b_next!78619))))

(declare-fun tp!869899 () Bool)

(declare-fun b_and!202653 () Bool)

(assert (=> b!2753055 (= tp!869899 b_and!202653)))

(declare-fun b!2753049 () Bool)

(declare-datatypes ((C!16268 0))(
  ( (C!16269 (val!10068 Int)) )
))
(declare-datatypes ((List!31968 0))(
  ( (Nil!31868) (Cons!31868 (h!37288 C!16268) (t!228072 List!31968)) )
))
(declare-fun lt!974827 () List!31968)

(declare-datatypes ((Regex!8055 0))(
  ( (ElementMatch!8055 (c!445490 C!16268)) (Concat!13143 (regOne!16622 Regex!8055) (regTwo!16622 Regex!8055)) (EmptyExpr!8055) (Star!8055 (reg!8384 Regex!8055)) (EmptyLang!8055) (Union!8055 (regOne!16623 Regex!8055) (regTwo!16623 Regex!8055)) )
))
(declare-datatypes ((List!31969 0))(
  ( (Nil!31869) (Cons!31869 (h!37289 Regex!8055) (t!228073 List!31969)) )
))
(declare-datatypes ((Context!4546 0))(
  ( (Context!4547 (exprs!2773 List!31969)) )
))
(declare-datatypes ((tuple2!31868 0))(
  ( (tuple2!31869 (_1!18720 Context!4546) (_2!18720 C!16268)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31870 0))(
  ( (tuple2!31871 (_1!18721 tuple2!31868) (_2!18721 (InoxSet Context!4546))) )
))
(declare-datatypes ((List!31970 0))(
  ( (Nil!31870) (Cons!31870 (h!37290 tuple2!31870) (t!228074 List!31970)) )
))
(declare-datatypes ((Hashable!3634 0))(
  ( (HashableExt!3633 (__x!20804 Int)) )
))
(declare-datatypes ((array!13231 0))(
  ( (array!13232 (arr!5906 (Array (_ BitVec 32) List!31970)) (size!24632 (_ BitVec 32))) )
))
(declare-datatypes ((array!13233 0))(
  ( (array!13234 (arr!5907 (Array (_ BitVec 32) (_ BitVec 64))) (size!24633 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7436 0))(
  ( (LongMapFixedSize!7437 (defaultEntry!4103 Int) (mask!9482 (_ BitVec 32)) (extraKeys!3967 (_ BitVec 32)) (zeroValue!3977 List!31970) (minValue!3977 List!31970) (_size!7479 (_ BitVec 32)) (_keys!4018 array!13233) (_values!3999 array!13231) (_vacant!3779 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14681 0))(
  ( (Cell!14682 (v!33478 LongMapFixedSize!7436)) )
))
(declare-datatypes ((MutLongMap!3718 0))(
  ( (LongMap!3718 (underlying!7639 Cell!14681)) (MutLongMapExt!3717 (__x!20805 Int)) )
))
(declare-datatypes ((Cell!14683 0))(
  ( (Cell!14684 (v!33479 MutLongMap!3718)) )
))
(declare-datatypes ((MutableMap!3624 0))(
  ( (MutableMapExt!3623 (__x!20806 Int)) (HashMap!3624 (underlying!7640 Cell!14683) (hashF!5666 Hashable!3634) (_size!7480 (_ BitVec 32)) (defaultValue!3795 Int)) )
))
(declare-datatypes ((CacheUp!2330 0))(
  ( (CacheUp!2331 (cache!3767 MutableMap!3624)) )
))
(declare-datatypes ((tuple3!4632 0))(
  ( (tuple3!4633 (_1!18722 Regex!8055) (_2!18722 Context!4546) (_3!2786 C!16268)) )
))
(declare-datatypes ((tuple2!31872 0))(
  ( (tuple2!31873 (_1!18723 tuple3!4632) (_2!18723 (InoxSet Context!4546))) )
))
(declare-datatypes ((List!31971 0))(
  ( (Nil!31871) (Cons!31871 (h!37291 tuple2!31872) (t!228075 List!31971)) )
))
(declare-datatypes ((array!13235 0))(
  ( (array!13236 (arr!5908 (Array (_ BitVec 32) List!31971)) (size!24634 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7438 0))(
  ( (LongMapFixedSize!7439 (defaultEntry!4104 Int) (mask!9483 (_ BitVec 32)) (extraKeys!3968 (_ BitVec 32)) (zeroValue!3978 List!31971) (minValue!3978 List!31971) (_size!7481 (_ BitVec 32)) (_keys!4019 array!13233) (_values!4000 array!13235) (_vacant!3780 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14685 0))(
  ( (Cell!14686 (v!33480 LongMapFixedSize!7438)) )
))
(declare-datatypes ((MutLongMap!3719 0))(
  ( (LongMap!3719 (underlying!7641 Cell!14685)) (MutLongMapExt!3718 (__x!20807 Int)) )
))
(declare-datatypes ((Cell!14687 0))(
  ( (Cell!14688 (v!33481 MutLongMap!3719)) )
))
(declare-datatypes ((Hashable!3635 0))(
  ( (HashableExt!3634 (__x!20808 Int)) )
))
(declare-datatypes ((MutableMap!3625 0))(
  ( (MutableMapExt!3624 (__x!20809 Int)) (HashMap!3625 (underlying!7642 Cell!14687) (hashF!5667 Hashable!3635) (_size!7482 (_ BitVec 32)) (defaultValue!3796 Int)) )
))
(declare-datatypes ((CacheDown!2450 0))(
  ( (CacheDown!2451 (cache!3768 MutableMap!3625)) )
))
(declare-datatypes ((tuple3!4634 0))(
  ( (tuple3!4635 (_1!18724 Int) (_2!18724 CacheUp!2330) (_3!2787 CacheDown!2450)) )
))
(declare-fun lt!974810 () tuple3!4634)

(declare-datatypes ((IArray!19879 0))(
  ( (IArray!19880 (innerList!9997 List!31968)) )
))
(declare-datatypes ((Conc!9937 0))(
  ( (Node!9937 (left!24328 Conc!9937) (right!24658 Conc!9937) (csize!20104 Int) (cheight!10148 Int)) (Leaf!15133 (xs!13044 IArray!19879) (csize!20105 Int)) (Empty!9937) )
))
(declare-datatypes ((BalanceConc!19488 0))(
  ( (BalanceConc!19489 (c!445491 Conc!9937)) )
))
(declare-fun input!5495 () BalanceConc!19488)

(declare-fun lt!974836 () Int)

(declare-fun z!3597 () (InoxSet Context!4546))

(declare-fun e!1735810 () Bool)

(declare-fun findLongestMatchInnerZipperFast!13 ((InoxSet Context!4546) List!31968 Int List!31968 BalanceConc!19488 Int) Int)

(assert (=> b!2753049 (= e!1735810 (= (_1!18724 lt!974810) (findLongestMatchInnerZipperFast!13 z!3597 Nil!31868 0 lt!974827 input!5495 lt!974836)))))

(declare-fun mapIsEmpty!16903 () Bool)

(declare-fun mapRes!16903 () Bool)

(assert (=> mapIsEmpty!16903 mapRes!16903))

(declare-fun b!2753050 () Bool)

(declare-fun e!1735804 () Bool)

(declare-fun tp!869902 () Bool)

(declare-fun inv!43274 (Conc!9937) Bool)

(assert (=> b!2753050 (= e!1735804 (and (inv!43274 (c!445491 input!5495)) tp!869902))))

(declare-fun bm!177994 () Bool)

(declare-fun call!178008 () Bool)

(declare-fun nullableZipper!610 ((InoxSet Context!4546)) Bool)

(assert (=> bm!177994 (= call!178008 (nullableZipper!610 z!3597))))

(declare-fun e!1735797 () Bool)

(declare-fun e!1735791 () Bool)

(assert (=> b!2753051 (= e!1735797 (and e!1735791 tp!869911))))

(declare-fun b!2753052 () Bool)

(declare-fun c!445483 () Bool)

(declare-fun call!177999 () Bool)

(assert (=> b!2753052 (= c!445483 call!177999)))

(declare-fun lt!974822 () List!31968)

(declare-fun lt!974820 () List!31968)

(declare-fun ++!7891 (List!31968 List!31968) List!31968)

(assert (=> b!2753052 (= (++!7891 lt!974822 lt!974820) lt!974827)))

(declare-fun lt!974819 () C!16268)

(assert (=> b!2753052 (= lt!974822 (++!7891 Nil!31868 (Cons!31868 lt!974819 Nil!31868)))))

(declare-datatypes ((Unit!45648 0))(
  ( (Unit!45649) )
))
(declare-fun lt!974821 () Unit!45648)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!848 (List!31968 C!16268 List!31968 List!31968) Unit!45648)

(assert (=> b!2753052 (= lt!974821 (lemmaMoveElementToOtherListKeepsConcatEq!848 Nil!31868 lt!974819 lt!974820 lt!974827))))

(declare-fun tail!4365 (List!31968) List!31968)

(assert (=> b!2753052 (= lt!974820 (tail!4365 lt!974827))))

(declare-fun apply!7450 (BalanceConc!19488 Int) C!16268)

(assert (=> b!2753052 (= lt!974819 (apply!7450 input!5495 0))))

(declare-fun lt!974841 () List!31968)

(declare-fun isPrefix!2531 (List!31968 List!31968) Bool)

(declare-fun head!6127 (List!31968) C!16268)

(assert (=> b!2753052 (isPrefix!2531 (++!7891 Nil!31868 (Cons!31868 (head!6127 lt!974841) Nil!31868)) lt!974827)))

(declare-fun lt!974837 () Unit!45648)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!436 (List!31968 List!31968) Unit!45648)

(assert (=> b!2753052 (= lt!974837 (lemmaAddHeadSuffixToPrefixStillPrefix!436 Nil!31868 lt!974827))))

(declare-fun lt!974825 () Unit!45648)

(declare-fun e!1735806 () Unit!45648)

(assert (=> b!2753052 (= lt!974825 e!1735806)))

(declare-fun c!445485 () Bool)

(declare-fun lt!974792 () Int)

(assert (=> b!2753052 (= c!445485 (= lt!974792 lt!974836))))

(declare-fun size!24635 (List!31968) Int)

(assert (=> b!2753052 (<= lt!974792 (size!24635 lt!974827))))

(assert (=> b!2753052 (= lt!974792 (size!24635 Nil!31868))))

(declare-fun lt!974832 () Unit!45648)

(declare-fun lemmaIsPrefixThenSmallerEqSize!239 (List!31968 List!31968) Unit!45648)

(assert (=> b!2753052 (= lt!974832 (lemmaIsPrefixThenSmallerEqSize!239 Nil!31868 lt!974827))))

(declare-fun drop!1686 (List!31968 Int) List!31968)

(declare-fun apply!7451 (List!31968 Int) C!16268)

(assert (=> b!2753052 (= (head!6127 (drop!1686 lt!974827 0)) (apply!7451 lt!974827 0))))

(declare-fun lt!974842 () Unit!45648)

(declare-fun lemmaDropApply!892 (List!31968 Int) Unit!45648)

(assert (=> b!2753052 (= lt!974842 (lemmaDropApply!892 lt!974827 0))))

(declare-fun lt!974818 () List!31968)

(declare-fun lt!974823 () List!31968)

(assert (=> b!2753052 (and (= lt!974818 Nil!31868) (= lt!974823 lt!974827))))

(declare-fun lt!974812 () Unit!45648)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!318 (List!31968 List!31968 List!31968 List!31968) Unit!45648)

(assert (=> b!2753052 (= lt!974812 (lemmaConcatSameAndSameSizesThenSameLists!318 lt!974818 lt!974823 Nil!31868 lt!974827))))

(declare-datatypes ((tuple2!31874 0))(
  ( (tuple2!31875 (_1!18725 BalanceConc!19488) (_2!18725 BalanceConc!19488)) )
))
(declare-fun lt!974831 () tuple2!31874)

(declare-fun list!12039 (BalanceConc!19488) List!31968)

(assert (=> b!2753052 (= lt!974823 (list!12039 (_2!18725 lt!974831)))))

(assert (=> b!2753052 (= lt!974818 (list!12039 (_1!18725 lt!974831)))))

(declare-fun splitAt!84 (BalanceConc!19488 Int) tuple2!31874)

(assert (=> b!2753052 (= lt!974831 (splitAt!84 input!5495 0))))

(declare-datatypes ((tuple3!4636 0))(
  ( (tuple3!4637 (_1!18726 Int) (_2!18726 CacheDown!2450) (_3!2788 CacheUp!2330)) )
))
(declare-fun e!1735815 () tuple3!4636)

(declare-fun e!1735814 () tuple3!4636)

(assert (=> b!2753052 (= e!1735815 e!1735814)))

(declare-fun bm!177995 () Bool)

(declare-fun call!178006 () Bool)

(assert (=> bm!177995 (= call!178006 (isPrefix!2531 lt!974827 lt!974827))))

(declare-fun setElem!22041 () Context!4546)

(declare-fun e!1735816 () Bool)

(declare-fun tp!869908 () Bool)

(declare-fun setNonEmpty!22041 () Bool)

(declare-fun setRes!22041 () Bool)

(declare-fun inv!43275 (Context!4546) Bool)

(assert (=> setNonEmpty!22041 (= setRes!22041 (and tp!869908 (inv!43275 setElem!22041) e!1735816))))

(declare-fun setRest!22041 () (InoxSet Context!4546))

(assert (=> setNonEmpty!22041 (= z!3597 ((_ map or) (store ((as const (Array Context!4546 Bool)) false) setElem!22041 true) setRest!22041))))

(declare-fun b!2753053 () Bool)

(declare-fun lt!974824 () Bool)

(assert (=> b!2753053 (= lt!974824 call!177999)))

(assert (=> b!2753053 (= lt!974827 Nil!31868)))

(declare-fun lt!974801 () Unit!45648)

(declare-fun call!178007 () Unit!45648)

(assert (=> b!2753053 (= lt!974801 call!178007)))

(assert (=> b!2753053 call!178006))

(declare-fun lt!974795 () Unit!45648)

(declare-fun call!178012 () Unit!45648)

(assert (=> b!2753053 (= lt!974795 call!178012)))

(assert (=> b!2753053 (= e!1735815 (tuple3!4637 0 (_3!2787 lt!974810) (_2!18724 lt!974810)))))

(declare-fun b!2753054 () Bool)

(declare-fun e!1735818 () Int)

(declare-fun lt!974806 () Int)

(assert (=> b!2753054 (= e!1735818 (ite (= lt!974806 0) 0 lt!974806))))

(declare-fun call!178010 () Int)

(assert (=> b!2753054 (= lt!974806 call!178010)))

(declare-fun bm!177996 () Bool)

(declare-fun lemmaIsPrefixRefl!1657 (List!31968 List!31968) Unit!45648)

(assert (=> bm!177996 (= call!178012 (lemmaIsPrefixRefl!1657 lt!974827 lt!974827))))

(declare-fun cacheUp!820 () CacheUp!2330)

(declare-fun tp!869906 () Bool)

(declare-fun e!1735800 () Bool)

(declare-fun e!1735813 () Bool)

(declare-fun tp!869903 () Bool)

(declare-fun array_inv!4222 (array!13233) Bool)

(declare-fun array_inv!4223 (array!13231) Bool)

(assert (=> b!2753055 (= e!1735800 (and tp!869899 tp!869906 tp!869903 (array_inv!4222 (_keys!4018 (v!33478 (underlying!7639 (v!33479 (underlying!7640 (cache!3767 cacheUp!820))))))) (array_inv!4223 (_values!3999 (v!33478 (underlying!7639 (v!33479 (underlying!7640 (cache!3767 cacheUp!820))))))) e!1735813))))

(declare-fun tp!869907 () Bool)

(declare-fun e!1735808 () Bool)

(declare-fun tp!869909 () Bool)

(declare-fun cacheDown!939 () CacheDown!2450)

(declare-fun e!1735795 () Bool)

(declare-fun array_inv!4224 (array!13235) Bool)

(assert (=> b!2753056 (= e!1735795 (and tp!869912 tp!869909 tp!869907 (array_inv!4222 (_keys!4019 (v!33480 (underlying!7641 (v!33481 (underlying!7642 (cache!3768 cacheDown!939))))))) (array_inv!4224 (_values!4000 (v!33480 (underlying!7641 (v!33481 (underlying!7642 (cache!3768 cacheDown!939))))))) e!1735808))))

(declare-fun b!2753057 () Bool)

(declare-fun Unit!45650 () Unit!45648)

(assert (=> b!2753057 (= e!1735806 Unit!45650)))

(declare-fun bm!177997 () Bool)

(assert (=> bm!177997 (= call!177999 (nullableZipper!610 z!3597))))

(declare-fun b!2753058 () Bool)

(declare-fun tp!869910 () Bool)

(declare-fun mapRes!16904 () Bool)

(assert (=> b!2753058 (= e!1735808 (and tp!869910 mapRes!16904))))

(declare-fun condMapEmpty!16904 () Bool)

(declare-fun mapDefault!16903 () List!31971)

(assert (=> b!2753058 (= condMapEmpty!16904 (= (arr!5908 (_values!4000 (v!33480 (underlying!7641 (v!33481 (underlying!7642 (cache!3768 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!31971)) mapDefault!16903)))))

(declare-fun b!2753059 () Bool)

(declare-fun tp!869900 () Bool)

(assert (=> b!2753059 (= e!1735816 tp!869900)))

(declare-fun b!2753060 () Bool)

(declare-fun e!1735809 () Bool)

(declare-fun e!1735796 () Bool)

(assert (=> b!2753060 (= e!1735809 e!1735796)))

(declare-fun bm!177998 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!438 (List!31968 List!31968 List!31968) Unit!45648)

(assert (=> bm!177998 (= call!178007 (lemmaIsPrefixSameLengthThenSameList!438 lt!974827 Nil!31868 lt!974827))))

(declare-fun b!2753061 () Bool)

(declare-fun e!1735817 () tuple3!4636)

(assert (=> b!2753061 (= e!1735817 (tuple3!4637 0 (_3!2787 lt!974810) (_2!18724 lt!974810)))))

(declare-fun b!2753062 () Bool)

(declare-fun e!1735799 () Unit!45648)

(declare-fun Unit!45651 () Unit!45648)

(assert (=> b!2753062 (= e!1735799 Unit!45651)))

(declare-fun lt!974838 () Unit!45648)

(declare-fun call!178004 () Unit!45648)

(assert (=> b!2753062 (= lt!974838 call!178004)))

(declare-fun call!178003 () Bool)

(assert (=> b!2753062 call!178003))

(declare-fun lt!974817 () Unit!45648)

(declare-fun call!178011 () Unit!45648)

(assert (=> b!2753062 (= lt!974817 call!178011)))

(assert (=> b!2753062 false))

(declare-fun bm!177999 () Bool)

(assert (=> bm!177999 (= call!178003 (isPrefix!2531 lt!974827 lt!974827))))

(declare-fun b!2753063 () Bool)

(declare-fun Unit!45652 () Unit!45648)

(assert (=> b!2753063 (= e!1735806 Unit!45652)))

(declare-fun lt!974839 () Unit!45648)

(assert (=> b!2753063 (= lt!974839 call!178012)))

(assert (=> b!2753063 call!178006))

(declare-fun lt!974808 () Unit!45648)

(assert (=> b!2753063 (= lt!974808 call!178007)))

(assert (=> b!2753063 false))

(declare-datatypes ((tuple3!4638 0))(
  ( (tuple3!4639 (_1!18727 (InoxSet Context!4546)) (_2!18727 CacheUp!2330) (_3!2789 CacheDown!2450)) )
))
(declare-fun call!178009 () tuple3!4638)

(declare-fun bm!178000 () Bool)

(declare-fun derivationStepZipperMem!78 ((InoxSet Context!4546) C!16268 CacheUp!2330 CacheDown!2450) tuple3!4638)

(assert (=> bm!178000 (= call!178009 (derivationStepZipperMem!78 z!3597 lt!974819 (_2!18724 lt!974810) (_3!2787 lt!974810)))))

(declare-fun b!2753064 () Bool)

(assert (=> b!2753064 (= e!1735817 e!1735815)))

(declare-fun c!445487 () Bool)

(assert (=> b!2753064 (= c!445487 (= 0 lt!974836))))

(declare-fun bm!178001 () Bool)

(assert (=> bm!178001 (= call!178004 (lemmaIsPrefixRefl!1657 lt!974827 lt!974827))))

(declare-fun b!2753065 () Bool)

(declare-fun Unit!45653 () Unit!45648)

(assert (=> b!2753065 (= e!1735799 Unit!45653)))

(declare-fun b!2753066 () Bool)

(declare-fun e!1735812 () Bool)

(declare-fun e!1735792 () Bool)

(declare-fun lt!974834 () MutLongMap!3718)

(get-info :version)

(assert (=> b!2753066 (= e!1735812 (and e!1735792 ((_ is LongMap!3718) lt!974834)))))

(assert (=> b!2753066 (= lt!974834 (v!33479 (underlying!7640 (cache!3767 cacheUp!820))))))

(declare-fun bm!178002 () Bool)

(declare-fun call!178013 () (InoxSet Context!4546))

(declare-fun lt!974830 () C!16268)

(declare-fun derivationStepZipper!347 ((InoxSet Context!4546) C!16268) (InoxSet Context!4546))

(assert (=> bm!178002 (= call!178013 (derivationStepZipper!347 z!3597 lt!974830))))

(declare-fun b!2753067 () Bool)

(assert (=> b!2753067 (= e!1735818 call!178010)))

(declare-fun mapNonEmpty!16903 () Bool)

(declare-fun tp!869897 () Bool)

(declare-fun tp!869904 () Bool)

(assert (=> mapNonEmpty!16903 (= mapRes!16903 (and tp!869897 tp!869904))))

(declare-fun mapRest!16903 () (Array (_ BitVec 32) List!31970))

(declare-fun mapValue!16904 () List!31970)

(declare-fun mapKey!16903 () (_ BitVec 32))

(assert (=> mapNonEmpty!16903 (= (arr!5906 (_values!3999 (v!33478 (underlying!7639 (v!33479 (underlying!7640 (cache!3767 cacheUp!820))))))) (store mapRest!16903 mapKey!16903 mapValue!16904))))

(declare-fun lt!974809 () tuple3!4634)

(declare-fun e!1735802 () Bool)

(declare-fun b!2753068 () Bool)

(assert (=> b!2753068 (= e!1735802 (= (_1!18724 lt!974809) (findLongestMatchInnerZipperFast!13 z!3597 Nil!31868 0 lt!974827 input!5495 lt!974836)))))

(declare-fun lt!974805 () tuple3!4638)

(declare-fun call!178001 () tuple3!4634)

(declare-fun bm!178003 () Bool)

(declare-fun lt!974829 () tuple3!4638)

(declare-fun findLongestMatchInnerZipperFastMem!11 (CacheUp!2330 CacheDown!2450 (InoxSet Context!4546) List!31968 Int List!31968 BalanceConc!19488 Int) tuple3!4634)

(assert (=> bm!178003 (= call!178001 (findLongestMatchInnerZipperFastMem!11 (ite c!445483 (_2!18727 lt!974829) (_2!18727 lt!974805)) (ite c!445483 (_3!2789 lt!974829) (_3!2789 lt!974805)) (ite c!445483 (_1!18727 lt!974829) (_1!18727 lt!974805)) lt!974822 1 lt!974820 input!5495 lt!974836))))

(declare-fun b!2753069 () Bool)

(declare-fun lt!974833 () tuple3!4634)

(assert (=> b!2753069 (= e!1735814 (tuple3!4637 (_1!18724 lt!974833) (_3!2787 lt!974833) (_2!18724 lt!974833)))))

(assert (=> b!2753069 (= lt!974805 call!178009)))

(assert (=> b!2753069 (= lt!974833 call!178001)))

(declare-fun res!1154035 () Bool)

(declare-fun call!178005 () Bool)

(assert (=> b!2753069 (= res!1154035 call!178005)))

(declare-fun e!1735807 () Bool)

(assert (=> b!2753069 (=> (not res!1154035) (not e!1735807))))

(assert (=> b!2753069 e!1735807))

(declare-fun b!2753070 () Bool)

(assert (=> b!2753070 (= e!1735796 e!1735795)))

(declare-fun b!2753071 () Bool)

(declare-fun call!178002 () Int)

(assert (=> b!2753071 (= e!1735807 (= (_1!18724 lt!974833) call!178002))))

(declare-fun e!1735821 () Bool)

(assert (=> b!2753072 (= e!1735821 (and e!1735812 tp!869913))))

(declare-fun res!1154033 () Bool)

(declare-fun e!1735820 () Bool)

(assert (=> start!266878 (=> (not res!1154033) (not e!1735820))))

(declare-fun valid!2886 (CacheUp!2330) Bool)

(assert (=> start!266878 (= res!1154033 (valid!2886 cacheUp!820))))

(assert (=> start!266878 e!1735820))

(declare-fun e!1735819 () Bool)

(declare-fun inv!43276 (CacheUp!2330) Bool)

(assert (=> start!266878 (and (inv!43276 cacheUp!820) e!1735819)))

(declare-fun e!1735803 () Bool)

(declare-fun inv!43277 (CacheDown!2450) Bool)

(assert (=> start!266878 (and (inv!43277 cacheDown!939) e!1735803)))

(declare-fun condSetEmpty!22041 () Bool)

(assert (=> start!266878 (= condSetEmpty!22041 (= z!3597 ((as const (Array Context!4546 Bool)) false)))))

(assert (=> start!266878 setRes!22041))

(declare-fun inv!43278 (BalanceConc!19488) Bool)

(assert (=> start!266878 (and (inv!43278 input!5495) e!1735804)))

(declare-fun bm!178004 () Bool)

(assert (=> bm!178004 (= call!178002 (findLongestMatchInnerZipperFast!13 (ite c!445483 (_1!18727 lt!974829) (_1!18727 lt!974805)) lt!974822 1 lt!974820 input!5495 lt!974836))))

(declare-fun b!2753073 () Bool)

(declare-fun e!1735805 () Bool)

(assert (=> b!2753073 (= e!1735805 (= 0 (size!24635 Nil!31868)))))

(declare-fun lt!974816 () List!31968)

(declare-fun lt!974814 () List!31968)

(declare-fun bm!178005 () Bool)

(assert (=> bm!178005 (= call!178010 (findLongestMatchInnerZipperFast!13 call!178013 lt!974816 1 lt!974814 input!5495 lt!974836))))

(declare-fun mapIsEmpty!16904 () Bool)

(assert (=> mapIsEmpty!16904 mapRes!16904))

(declare-fun b!2753074 () Bool)

(declare-fun c!445486 () Bool)

(assert (=> b!2753074 (= c!445486 call!178008)))

(assert (=> b!2753074 (= (++!7891 lt!974816 lt!974814) lt!974827)))

(assert (=> b!2753074 (= lt!974816 (++!7891 Nil!31868 (Cons!31868 lt!974830 Nil!31868)))))

(declare-fun lt!974835 () Unit!45648)

(assert (=> b!2753074 (= lt!974835 (lemmaMoveElementToOtherListKeepsConcatEq!848 Nil!31868 lt!974830 lt!974814 lt!974827))))

(assert (=> b!2753074 (= lt!974814 (tail!4365 lt!974827))))

(assert (=> b!2753074 (= lt!974830 (apply!7450 input!5495 0))))

(assert (=> b!2753074 (isPrefix!2531 (++!7891 Nil!31868 (Cons!31868 (head!6127 lt!974841) Nil!31868)) lt!974827)))

(declare-fun lt!974800 () Unit!45648)

(assert (=> b!2753074 (= lt!974800 (lemmaAddHeadSuffixToPrefixStillPrefix!436 Nil!31868 lt!974827))))

(declare-fun lt!974813 () Unit!45648)

(assert (=> b!2753074 (= lt!974813 e!1735799)))

(declare-fun c!445484 () Bool)

(declare-fun lt!974807 () Int)

(assert (=> b!2753074 (= c!445484 (= lt!974807 lt!974836))))

(assert (=> b!2753074 (<= lt!974807 (size!24635 lt!974827))))

(assert (=> b!2753074 (= lt!974807 (size!24635 Nil!31868))))

(declare-fun lt!974828 () Unit!45648)

(assert (=> b!2753074 (= lt!974828 (lemmaIsPrefixThenSmallerEqSize!239 Nil!31868 lt!974827))))

(assert (=> b!2753074 (= (head!6127 (drop!1686 lt!974827 0)) (apply!7451 lt!974827 0))))

(declare-fun lt!974798 () Unit!45648)

(assert (=> b!2753074 (= lt!974798 (lemmaDropApply!892 lt!974827 0))))

(declare-fun lt!974802 () List!31968)

(declare-fun lt!974826 () List!31968)

(assert (=> b!2753074 (and (= lt!974802 Nil!31868) (= lt!974826 lt!974827))))

(declare-fun lt!974811 () Unit!45648)

(assert (=> b!2753074 (= lt!974811 (lemmaConcatSameAndSameSizesThenSameLists!318 lt!974802 lt!974826 Nil!31868 lt!974827))))

(declare-fun lt!974793 () tuple2!31874)

(assert (=> b!2753074 (= lt!974826 (list!12039 (_2!18725 lt!974793)))))

(assert (=> b!2753074 (= lt!974802 (list!12039 (_1!18725 lt!974793)))))

(assert (=> b!2753074 (= lt!974793 (splitAt!84 input!5495 0))))

(declare-fun e!1735801 () Int)

(assert (=> b!2753074 (= e!1735801 e!1735818)))

(declare-fun b!2753075 () Bool)

(assert (=> b!2753075 (= e!1735820 (not e!1735805))))

(declare-fun res!1154031 () Bool)

(assert (=> b!2753075 (=> res!1154031 e!1735805)))

(declare-fun lt!974844 () List!31968)

(assert (=> b!2753075 (= res!1154031 (not (= lt!974844 lt!974827)))))

(declare-fun e!1735822 () Bool)

(assert (=> b!2753075 e!1735822))

(declare-fun c!445482 () Bool)

(declare-fun lt!974803 () Bool)

(assert (=> b!2753075 (= c!445482 lt!974803)))

(declare-fun lt!974799 () Int)

(assert (=> b!2753075 (= lt!974799 (findLongestMatchInnerZipperFast!13 z!3597 Nil!31868 0 lt!974827 input!5495 lt!974836))))

(declare-fun lt!974796 () tuple3!4636)

(assert (=> b!2753075 (= lt!974809 (tuple3!4635 (_1!18726 lt!974796) (_3!2788 lt!974796) (_2!18726 lt!974796)))))

(assert (=> b!2753075 (= lt!974796 e!1735817)))

(declare-fun c!445489 () Bool)

(assert (=> b!2753075 (= c!445489 lt!974803)))

(declare-fun lostCauseZipper!421 ((InoxSet Context!4546)) Bool)

(assert (=> b!2753075 (= lt!974803 (lostCauseZipper!421 z!3597))))

(assert (=> b!2753075 (and (= lt!974827 lt!974841) (= lt!974841 lt!974827))))

(declare-fun lt!974840 () Unit!45648)

(declare-fun lemmaSamePrefixThenSameSuffix!1119 (List!31968 List!31968 List!31968 List!31968 List!31968) Unit!45648)

(assert (=> b!2753075 (= lt!974840 (lemmaSamePrefixThenSameSuffix!1119 Nil!31868 lt!974827 Nil!31868 lt!974841 lt!974827))))

(declare-fun getSuffix!1217 (List!31968 List!31968) List!31968)

(assert (=> b!2753075 (= lt!974841 (getSuffix!1217 lt!974827 Nil!31868))))

(assert (=> b!2753075 (isPrefix!2531 Nil!31868 lt!974844)))

(assert (=> b!2753075 (= lt!974844 (++!7891 Nil!31868 lt!974827))))

(declare-fun lt!974845 () Unit!45648)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1645 (List!31968 List!31968) Unit!45648)

(assert (=> b!2753075 (= lt!974845 (lemmaConcatTwoListThenFirstIsPrefix!1645 Nil!31868 lt!974827))))

(assert (=> b!2753075 e!1735802))

(declare-fun res!1154034 () Bool)

(assert (=> b!2753075 (=> (not res!1154034) (not e!1735802))))

(assert (=> b!2753075 (= res!1154034 (valid!2886 (_2!18724 lt!974809)))))

(assert (=> b!2753075 (= lt!974809 (findLongestMatchInnerZipperFastMem!11 (_2!18724 lt!974810) (_3!2787 lt!974810) z!3597 Nil!31868 0 lt!974827 input!5495 lt!974836))))

(assert (=> b!2753075 e!1735810))

(declare-fun res!1154032 () Bool)

(assert (=> b!2753075 (=> (not res!1154032) (not e!1735810))))

(assert (=> b!2753075 (= res!1154032 (valid!2886 (_2!18724 lt!974810)))))

(assert (=> b!2753075 (= lt!974810 (findLongestMatchInnerZipperFastMem!11 cacheUp!820 cacheDown!939 z!3597 Nil!31868 0 lt!974827 input!5495 lt!974836))))

(declare-fun size!24636 (BalanceConc!19488) Int)

(assert (=> b!2753075 (= lt!974836 (size!24636 input!5495))))

(assert (=> b!2753075 (= lt!974827 (list!12039 input!5495))))

(declare-fun b!2753076 () Bool)

(declare-fun res!1154036 () Bool)

(declare-fun call!178000 () Bool)

(assert (=> b!2753076 (= res!1154036 call!178000)))

(assert (=> b!2753076 (=> (not res!1154036) (not e!1735807))))

(declare-fun b!2753077 () Bool)

(declare-fun lt!974815 () Bool)

(assert (=> b!2753077 (= lt!974815 call!178008)))

(assert (=> b!2753077 (= lt!974827 Nil!31868)))

(declare-fun lt!974804 () Unit!45648)

(assert (=> b!2753077 (= lt!974804 call!178011)))

(assert (=> b!2753077 call!178003))

(declare-fun lt!974843 () Unit!45648)

(assert (=> b!2753077 (= lt!974843 call!178004)))

(assert (=> b!2753077 (= e!1735801 0)))

(declare-fun setIsEmpty!22041 () Bool)

(assert (=> setIsEmpty!22041 setRes!22041))

(declare-fun bm!178006 () Bool)

(assert (=> bm!178006 (= call!178011 (lemmaIsPrefixSameLengthThenSameList!438 lt!974827 Nil!31868 lt!974827))))

(declare-fun b!2753078 () Bool)

(assert (=> b!2753078 (= e!1735822 (= lt!974799 e!1735801))))

(declare-fun c!445488 () Bool)

(assert (=> b!2753078 (= c!445488 (= 0 lt!974836))))

(declare-fun b!2753079 () Bool)

(declare-fun res!1154038 () Bool)

(assert (=> b!2753079 (=> (not res!1154038) (not e!1735820))))

(declare-fun valid!2887 (CacheDown!2450) Bool)

(assert (=> b!2753079 (= res!1154038 (valid!2887 cacheDown!939))))

(declare-fun b!2753080 () Bool)

(declare-fun e!1735794 () Bool)

(assert (=> b!2753080 (= e!1735794 e!1735800)))

(declare-fun b!2753081 () Bool)

(declare-fun lt!974797 () tuple3!4634)

(assert (=> b!2753081 (= e!1735814 (tuple3!4637 (ite (= (_1!18724 lt!974797) 0) 0 (_1!18724 lt!974797)) (_3!2787 lt!974797) (_2!18724 lt!974797)))))

(assert (=> b!2753081 (= lt!974829 call!178009)))

(assert (=> b!2753081 (= lt!974797 call!178001)))

(declare-fun res!1154037 () Bool)

(assert (=> b!2753081 (= res!1154037 call!178005)))

(declare-fun e!1735798 () Bool)

(assert (=> b!2753081 (=> (not res!1154037) (not e!1735798))))

(assert (=> b!2753081 e!1735798))

(declare-fun b!2753082 () Bool)

(assert (=> b!2753082 (= e!1735792 e!1735794)))

(declare-fun b!2753083 () Bool)

(declare-fun lt!974794 () MutLongMap!3719)

(assert (=> b!2753083 (= e!1735791 (and e!1735809 ((_ is LongMap!3719) lt!974794)))))

(assert (=> b!2753083 (= lt!974794 (v!33481 (underlying!7642 (cache!3768 cacheDown!939))))))

(declare-fun b!2753084 () Bool)

(declare-fun res!1154030 () Bool)

(assert (=> b!2753084 (=> (not res!1154030) (not e!1735802))))

(assert (=> b!2753084 (= res!1154030 (valid!2887 (_3!2787 lt!974809)))))

(declare-fun bm!178007 () Bool)

(assert (=> bm!178007 (= call!178005 (valid!2886 (ite c!445483 (_2!18724 lt!974797) (_2!18724 lt!974833))))))

(declare-fun b!2753085 () Bool)

(assert (=> b!2753085 (= e!1735822 (= lt!974799 0))))

(declare-fun b!2753086 () Bool)

(assert (=> b!2753086 (= e!1735819 e!1735821)))

(declare-fun b!2753087 () Bool)

(declare-fun res!1154029 () Bool)

(assert (=> b!2753087 (= res!1154029 call!178000)))

(assert (=> b!2753087 (=> (not res!1154029) (not e!1735798))))

(declare-fun b!2753088 () Bool)

(assert (=> b!2753088 (= e!1735798 (= (_1!18724 lt!974797) call!178002))))

(declare-fun b!2753089 () Bool)

(declare-fun tp!869905 () Bool)

(assert (=> b!2753089 (= e!1735813 (and tp!869905 mapRes!16903))))

(declare-fun condMapEmpty!16903 () Bool)

(declare-fun mapDefault!16904 () List!31970)

(assert (=> b!2753089 (= condMapEmpty!16903 (= (arr!5906 (_values!3999 (v!33478 (underlying!7639 (v!33479 (underlying!7640 (cache!3767 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!31970)) mapDefault!16904)))))

(declare-fun mapNonEmpty!16904 () Bool)

(declare-fun tp!869898 () Bool)

(declare-fun tp!869901 () Bool)

(assert (=> mapNonEmpty!16904 (= mapRes!16904 (and tp!869898 tp!869901))))

(declare-fun mapValue!16903 () List!31971)

(declare-fun mapRest!16904 () (Array (_ BitVec 32) List!31971))

(declare-fun mapKey!16904 () (_ BitVec 32))

(assert (=> mapNonEmpty!16904 (= (arr!5908 (_values!4000 (v!33480 (underlying!7641 (v!33481 (underlying!7642 (cache!3768 cacheDown!939))))))) (store mapRest!16904 mapKey!16904 mapValue!16903))))

(declare-fun bm!178008 () Bool)

(assert (=> bm!178008 (= call!178000 (valid!2887 (ite c!445483 (_3!2787 lt!974797) (_3!2787 lt!974833))))))

(declare-fun b!2753090 () Bool)

(declare-fun res!1154028 () Bool)

(assert (=> b!2753090 (=> (not res!1154028) (not e!1735810))))

(assert (=> b!2753090 (= res!1154028 (valid!2887 (_3!2787 lt!974810)))))

(declare-fun b!2753091 () Bool)

(assert (=> b!2753091 (= e!1735803 e!1735797)))

(assert (= (and start!266878 res!1154033) b!2753079))

(assert (= (and b!2753079 res!1154038) b!2753075))

(assert (= (and b!2753075 res!1154032) b!2753090))

(assert (= (and b!2753090 res!1154028) b!2753049))

(assert (= (and b!2753075 res!1154034) b!2753084))

(assert (= (and b!2753084 res!1154030) b!2753068))

(assert (= (and b!2753075 c!445489) b!2753061))

(assert (= (and b!2753075 (not c!445489)) b!2753064))

(assert (= (and b!2753064 c!445487) b!2753053))

(assert (= (and b!2753064 (not c!445487)) b!2753052))

(assert (= (and b!2753052 c!445485) b!2753063))

(assert (= (and b!2753052 (not c!445485)) b!2753057))

(assert (= (and b!2753052 c!445483) b!2753081))

(assert (= (and b!2753052 (not c!445483)) b!2753069))

(assert (= (and b!2753081 res!1154037) b!2753087))

(assert (= (and b!2753087 res!1154029) b!2753088))

(assert (= (and b!2753069 res!1154035) b!2753076))

(assert (= (and b!2753076 res!1154036) b!2753071))

(assert (= (or b!2753081 b!2753069) bm!178000))

(assert (= (or b!2753088 b!2753071) bm!178004))

(assert (= (or b!2753081 b!2753069) bm!178007))

(assert (= (or b!2753087 b!2753076) bm!178008))

(assert (= (or b!2753081 b!2753069) bm!178003))

(assert (= (or b!2753053 b!2753052) bm!177997))

(assert (= (or b!2753053 b!2753063) bm!177996))

(assert (= (or b!2753053 b!2753063) bm!177998))

(assert (= (or b!2753053 b!2753063) bm!177995))

(assert (= (and b!2753075 c!445482) b!2753085))

(assert (= (and b!2753075 (not c!445482)) b!2753078))

(assert (= (and b!2753078 c!445488) b!2753077))

(assert (= (and b!2753078 (not c!445488)) b!2753074))

(assert (= (and b!2753074 c!445484) b!2753062))

(assert (= (and b!2753074 (not c!445484)) b!2753065))

(assert (= (and b!2753074 c!445486) b!2753054))

(assert (= (and b!2753074 (not c!445486)) b!2753067))

(assert (= (or b!2753054 b!2753067) bm!178002))

(assert (= (or b!2753054 b!2753067) bm!178005))

(assert (= (or b!2753077 b!2753074) bm!177994))

(assert (= (or b!2753077 b!2753062) bm!178001))

(assert (= (or b!2753077 b!2753062) bm!178006))

(assert (= (or b!2753077 b!2753062) bm!177999))

(assert (= (and b!2753075 (not res!1154031)) b!2753073))

(assert (= (and b!2753089 condMapEmpty!16903) mapIsEmpty!16903))

(assert (= (and b!2753089 (not condMapEmpty!16903)) mapNonEmpty!16903))

(assert (= b!2753055 b!2753089))

(assert (= b!2753080 b!2753055))

(assert (= b!2753082 b!2753080))

(assert (= (and b!2753066 ((_ is LongMap!3718) (v!33479 (underlying!7640 (cache!3767 cacheUp!820))))) b!2753082))

(assert (= b!2753072 b!2753066))

(assert (= (and b!2753086 ((_ is HashMap!3624) (cache!3767 cacheUp!820))) b!2753072))

(assert (= start!266878 b!2753086))

(assert (= (and b!2753058 condMapEmpty!16904) mapIsEmpty!16904))

(assert (= (and b!2753058 (not condMapEmpty!16904)) mapNonEmpty!16904))

(assert (= b!2753056 b!2753058))

(assert (= b!2753070 b!2753056))

(assert (= b!2753060 b!2753070))

(assert (= (and b!2753083 ((_ is LongMap!3719) (v!33481 (underlying!7642 (cache!3768 cacheDown!939))))) b!2753060))

(assert (= b!2753051 b!2753083))

(assert (= (and b!2753091 ((_ is HashMap!3625) (cache!3768 cacheDown!939))) b!2753051))

(assert (= start!266878 b!2753091))

(assert (= (and start!266878 condSetEmpty!22041) setIsEmpty!22041))

(assert (= (and start!266878 (not condSetEmpty!22041)) setNonEmpty!22041))

(assert (= setNonEmpty!22041 b!2753059))

(assert (= start!266878 b!2753050))

(declare-fun m!3168225 () Bool)

(assert (=> mapNonEmpty!16904 m!3168225))

(declare-fun m!3168227 () Bool)

(assert (=> b!2753075 m!3168227))

(declare-fun m!3168229 () Bool)

(assert (=> b!2753075 m!3168229))

(declare-fun m!3168231 () Bool)

(assert (=> b!2753075 m!3168231))

(declare-fun m!3168233 () Bool)

(assert (=> b!2753075 m!3168233))

(declare-fun m!3168235 () Bool)

(assert (=> b!2753075 m!3168235))

(declare-fun m!3168237 () Bool)

(assert (=> b!2753075 m!3168237))

(declare-fun m!3168239 () Bool)

(assert (=> b!2753075 m!3168239))

(declare-fun m!3168241 () Bool)

(assert (=> b!2753075 m!3168241))

(declare-fun m!3168243 () Bool)

(assert (=> b!2753075 m!3168243))

(declare-fun m!3168245 () Bool)

(assert (=> b!2753075 m!3168245))

(declare-fun m!3168247 () Bool)

(assert (=> b!2753075 m!3168247))

(declare-fun m!3168249 () Bool)

(assert (=> b!2753075 m!3168249))

(declare-fun m!3168251 () Bool)

(assert (=> b!2753075 m!3168251))

(declare-fun m!3168253 () Bool)

(assert (=> bm!178001 m!3168253))

(declare-fun m!3168255 () Bool)

(assert (=> b!2753050 m!3168255))

(declare-fun m!3168257 () Bool)

(assert (=> b!2753055 m!3168257))

(declare-fun m!3168259 () Bool)

(assert (=> b!2753055 m!3168259))

(declare-fun m!3168261 () Bool)

(assert (=> b!2753084 m!3168261))

(declare-fun m!3168263 () Bool)

(assert (=> bm!178002 m!3168263))

(declare-fun m!3168265 () Bool)

(assert (=> bm!178003 m!3168265))

(declare-fun m!3168267 () Bool)

(assert (=> bm!178004 m!3168267))

(declare-fun m!3168269 () Bool)

(assert (=> bm!178008 m!3168269))

(declare-fun m!3168271 () Bool)

(assert (=> b!2753056 m!3168271))

(declare-fun m!3168273 () Bool)

(assert (=> b!2753056 m!3168273))

(assert (=> bm!177996 m!3168253))

(assert (=> b!2753049 m!3168247))

(declare-fun m!3168275 () Bool)

(assert (=> bm!178007 m!3168275))

(declare-fun m!3168277 () Bool)

(assert (=> b!2753090 m!3168277))

(declare-fun m!3168279 () Bool)

(assert (=> bm!178006 m!3168279))

(declare-fun m!3168281 () Bool)

(assert (=> bm!177995 m!3168281))

(declare-fun m!3168283 () Bool)

(assert (=> b!2753073 m!3168283))

(declare-fun m!3168285 () Bool)

(assert (=> bm!177994 m!3168285))

(declare-fun m!3168287 () Bool)

(assert (=> b!2753079 m!3168287))

(assert (=> bm!177998 m!3168279))

(declare-fun m!3168289 () Bool)

(assert (=> bm!178000 m!3168289))

(declare-fun m!3168291 () Bool)

(assert (=> setNonEmpty!22041 m!3168291))

(declare-fun m!3168293 () Bool)

(assert (=> b!2753074 m!3168293))

(declare-fun m!3168295 () Bool)

(assert (=> b!2753074 m!3168295))

(declare-fun m!3168297 () Bool)

(assert (=> b!2753074 m!3168297))

(declare-fun m!3168299 () Bool)

(assert (=> b!2753074 m!3168299))

(declare-fun m!3168301 () Bool)

(assert (=> b!2753074 m!3168301))

(declare-fun m!3168303 () Bool)

(assert (=> b!2753074 m!3168303))

(declare-fun m!3168305 () Bool)

(assert (=> b!2753074 m!3168305))

(declare-fun m!3168307 () Bool)

(assert (=> b!2753074 m!3168307))

(declare-fun m!3168309 () Bool)

(assert (=> b!2753074 m!3168309))

(declare-fun m!3168311 () Bool)

(assert (=> b!2753074 m!3168311))

(assert (=> b!2753074 m!3168305))

(assert (=> b!2753074 m!3168297))

(declare-fun m!3168313 () Bool)

(assert (=> b!2753074 m!3168313))

(declare-fun m!3168315 () Bool)

(assert (=> b!2753074 m!3168315))

(declare-fun m!3168317 () Bool)

(assert (=> b!2753074 m!3168317))

(declare-fun m!3168319 () Bool)

(assert (=> b!2753074 m!3168319))

(declare-fun m!3168321 () Bool)

(assert (=> b!2753074 m!3168321))

(declare-fun m!3168323 () Bool)

(assert (=> b!2753074 m!3168323))

(declare-fun m!3168325 () Bool)

(assert (=> b!2753074 m!3168325))

(assert (=> b!2753074 m!3168283))

(declare-fun m!3168327 () Bool)

(assert (=> b!2753074 m!3168327))

(declare-fun m!3168329 () Bool)

(assert (=> b!2753074 m!3168329))

(assert (=> bm!177997 m!3168285))

(assert (=> b!2753052 m!3168297))

(assert (=> b!2753052 m!3168299))

(assert (=> b!2753052 m!3168303))

(assert (=> b!2753052 m!3168311))

(assert (=> b!2753052 m!3168321))

(assert (=> b!2753052 m!3168305))

(declare-fun m!3168331 () Bool)

(assert (=> b!2753052 m!3168331))

(assert (=> b!2753052 m!3168297))

(assert (=> b!2753052 m!3168313))

(assert (=> b!2753052 m!3168315))

(assert (=> b!2753052 m!3168301))

(declare-fun m!3168333 () Bool)

(assert (=> b!2753052 m!3168333))

(declare-fun m!3168335 () Bool)

(assert (=> b!2753052 m!3168335))

(declare-fun m!3168337 () Bool)

(assert (=> b!2753052 m!3168337))

(assert (=> b!2753052 m!3168305))

(assert (=> b!2753052 m!3168307))

(declare-fun m!3168339 () Bool)

(assert (=> b!2753052 m!3168339))

(assert (=> b!2753052 m!3168325))

(assert (=> b!2753052 m!3168283))

(assert (=> b!2753052 m!3168327))

(assert (=> b!2753052 m!3168329))

(declare-fun m!3168341 () Bool)

(assert (=> b!2753052 m!3168341))

(assert (=> bm!177999 m!3168281))

(assert (=> b!2753068 m!3168247))

(declare-fun m!3168343 () Bool)

(assert (=> bm!178005 m!3168343))

(declare-fun m!3168345 () Bool)

(assert (=> start!266878 m!3168345))

(declare-fun m!3168347 () Bool)

(assert (=> start!266878 m!3168347))

(declare-fun m!3168349 () Bool)

(assert (=> start!266878 m!3168349))

(declare-fun m!3168351 () Bool)

(assert (=> start!266878 m!3168351))

(declare-fun m!3168353 () Bool)

(assert (=> mapNonEmpty!16903 m!3168353))

(check-sat (not b!2753079) (not bm!178002) (not bm!178001) (not b!2753068) (not b!2753090) b_and!202651 (not b!2753052) (not bm!178008) b_and!202653 (not b_next!78617) (not start!266878) (not bm!177999) b_and!202647 (not bm!178003) (not b!2753089) (not bm!177997) (not b_next!78613) (not b_next!78615) (not bm!178000) b_and!202649 (not b!2753056) (not b!2753075) (not bm!177994) (not b!2753073) (not bm!178007) (not bm!178005) (not b_next!78619) (not b!2753055) (not b!2753074) (not mapNonEmpty!16903) (not b!2753049) (not b!2753050) (not b!2753059) (not mapNonEmpty!16904) (not bm!178006) (not setNonEmpty!22041) (not b!2753058) (not bm!178004) (not b!2753084) (not bm!177995) (not bm!177998) (not bm!177996))
(check-sat b_and!202647 b_and!202651 (not b_next!78619) b_and!202653 (not b_next!78617) (not b_next!78613) b_and!202649 (not b_next!78615))
(get-model)

(declare-fun bm!178029 () Bool)

(declare-fun call!178036 () C!16268)

(assert (=> bm!178029 (= call!178036 (apply!7450 input!5495 1))))

(declare-fun b!2753117 () Bool)

(declare-fun e!1735835 () Int)

(declare-fun call!178039 () Int)

(assert (=> b!2753117 (= e!1735835 call!178039)))

(declare-fun b!2753118 () Bool)

(declare-fun lt!974966 () Int)

(assert (=> b!2753118 (= e!1735835 (ite (= lt!974966 0) 1 lt!974966))))

(assert (=> b!2753118 (= lt!974966 call!178039)))

(declare-fun b!2753119 () Bool)

(declare-fun e!1735840 () Int)

(declare-fun e!1735838 () Int)

(assert (=> b!2753119 (= e!1735840 e!1735838)))

(declare-fun c!445509 () Bool)

(assert (=> b!2753119 (= c!445509 (= 1 lt!974836))))

(declare-fun lt!974956 () List!31968)

(declare-fun lt!974941 () List!31968)

(declare-fun bm!178030 () Bool)

(declare-fun call!178037 () Unit!45648)

(declare-fun lt!974931 () List!31968)

(declare-fun lt!974969 () List!31968)

(assert (=> bm!178030 (= call!178037 (lemmaIsPrefixRefl!1657 (ite c!445509 lt!974941 lt!974931) (ite c!445509 lt!974969 lt!974956)))))

(declare-fun bm!178031 () Bool)

(declare-fun call!178035 () List!31968)

(assert (=> bm!178031 (= call!178035 (tail!4365 lt!974820))))

(declare-fun bm!178032 () Bool)

(declare-fun c!445507 () Bool)

(assert (=> bm!178032 (= c!445507 c!445509)))

(declare-fun call!178040 () Unit!45648)

(declare-fun lt!974965 () List!31968)

(declare-fun lt!974955 () List!31968)

(declare-fun e!1735837 () List!31968)

(assert (=> bm!178032 (= call!178040 (lemmaIsPrefixSameLengthThenSameList!438 (ite c!445509 lt!974955 lt!974965) lt!974822 e!1735837))))

(declare-fun bm!178033 () Bool)

(declare-fun call!178043 () List!31968)

(assert (=> bm!178033 (= call!178043 (++!7891 lt!974822 (Cons!31868 call!178036 Nil!31868)))))

(declare-fun b!2753120 () Bool)

(assert (=> b!2753120 (= e!1735837 (list!12039 input!5495))))

(declare-fun call!178034 () Bool)

(declare-fun bm!178034 () Bool)

(assert (=> bm!178034 (= call!178034 (nullableZipper!610 (ite c!445483 (_1!18727 lt!974829) (_1!18727 lt!974805))))))

(declare-fun b!2753121 () Bool)

(declare-fun e!1735839 () Int)

(assert (=> b!2753121 (= e!1735839 1)))

(declare-fun b!2753122 () Bool)

(declare-fun e!1735836 () Unit!45648)

(declare-fun Unit!45654 () Unit!45648)

(assert (=> b!2753122 (= e!1735836 Unit!45654)))

(declare-fun b!2753123 () Bool)

(declare-fun c!445504 () Bool)

(assert (=> b!2753123 (= c!445504 call!178034)))

(declare-fun lt!974933 () Unit!45648)

(declare-fun lt!974967 () Unit!45648)

(assert (=> b!2753123 (= lt!974933 lt!974967)))

(assert (=> b!2753123 (= lt!974955 lt!974822)))

(assert (=> b!2753123 (= lt!974967 call!178040)))

(declare-fun call!178042 () List!31968)

(assert (=> b!2753123 (= lt!974955 call!178042)))

(declare-fun lt!974947 () Unit!45648)

(declare-fun lt!974954 () Unit!45648)

(assert (=> b!2753123 (= lt!974947 lt!974954)))

(declare-fun call!178038 () Bool)

(assert (=> b!2753123 call!178038))

(assert (=> b!2753123 (= lt!974954 call!178037)))

(assert (=> b!2753123 (= lt!974969 call!178042)))

(assert (=> b!2753123 (= lt!974941 call!178042)))

(assert (=> b!2753123 (= e!1735838 e!1735839)))

(declare-fun b!2753124 () Bool)

(assert (=> b!2753124 (= e!1735837 call!178042)))

(declare-fun lt!974963 () Int)

(declare-fun d!796808 () Bool)

(declare-datatypes ((tuple2!31876 0))(
  ( (tuple2!31877 (_1!18728 List!31968) (_2!18728 List!31968)) )
))
(declare-fun findLongestMatchInnerZipper!4 ((InoxSet Context!4546) List!31968 Int List!31968 List!31968 Int) tuple2!31876)

(assert (=> d!796808 (= (size!24635 (_1!18728 (findLongestMatchInnerZipper!4 (ite c!445483 (_1!18727 lt!974829) (_1!18727 lt!974805)) lt!974822 1 lt!974820 (list!12039 input!5495) lt!974836))) lt!974963)))

(assert (=> d!796808 (= lt!974963 e!1735840)))

(declare-fun c!445505 () Bool)

(assert (=> d!796808 (= c!445505 (lostCauseZipper!421 (ite c!445483 (_1!18727 lt!974829) (_1!18727 lt!974805))))))

(declare-fun lt!974939 () Unit!45648)

(declare-fun Unit!45655 () Unit!45648)

(assert (=> d!796808 (= lt!974939 Unit!45655)))

(assert (=> d!796808 (= (getSuffix!1217 (list!12039 input!5495) lt!974822) lt!974820)))

(declare-fun lt!974940 () Unit!45648)

(declare-fun lt!974952 () Unit!45648)

(assert (=> d!796808 (= lt!974940 lt!974952)))

(declare-fun lt!974949 () List!31968)

(assert (=> d!796808 (= lt!974820 lt!974949)))

(assert (=> d!796808 (= lt!974952 (lemmaSamePrefixThenSameSuffix!1119 lt!974822 lt!974820 lt!974822 lt!974949 (list!12039 input!5495)))))

(assert (=> d!796808 (= lt!974949 (getSuffix!1217 (list!12039 input!5495) lt!974822))))

(declare-fun lt!974930 () Unit!45648)

(declare-fun lt!974957 () Unit!45648)

(assert (=> d!796808 (= lt!974930 lt!974957)))

(assert (=> d!796808 (isPrefix!2531 lt!974822 (++!7891 lt!974822 lt!974820))))

(assert (=> d!796808 (= lt!974957 (lemmaConcatTwoListThenFirstIsPrefix!1645 lt!974822 lt!974820))))

(assert (=> d!796808 (= (++!7891 lt!974822 lt!974820) (list!12039 input!5495))))

(assert (=> d!796808 (= (findLongestMatchInnerZipperFast!13 (ite c!445483 (_1!18727 lt!974829) (_1!18727 lt!974805)) lt!974822 1 lt!974820 input!5495 lt!974836) lt!974963)))

(declare-fun b!2753116 () Bool)

(assert (=> b!2753116 (= e!1735839 0)))

(declare-fun b!2753125 () Bool)

(declare-fun Unit!45656 () Unit!45648)

(assert (=> b!2753125 (= e!1735836 Unit!45656)))

(assert (=> b!2753125 (= lt!974931 (list!12039 input!5495))))

(assert (=> b!2753125 (= lt!974956 (list!12039 input!5495))))

(declare-fun lt!974946 () Unit!45648)

(assert (=> b!2753125 (= lt!974946 call!178037)))

(assert (=> b!2753125 call!178038))

(declare-fun lt!974971 () Unit!45648)

(assert (=> b!2753125 (= lt!974971 lt!974946)))

(assert (=> b!2753125 (= lt!974965 (list!12039 input!5495))))

(declare-fun lt!974938 () Unit!45648)

(assert (=> b!2753125 (= lt!974938 call!178040)))

(assert (=> b!2753125 (= lt!974965 lt!974822)))

(declare-fun lt!974960 () Unit!45648)

(assert (=> b!2753125 (= lt!974960 lt!974938)))

(assert (=> b!2753125 false))

(declare-fun lt!974948 () tuple2!31874)

(declare-fun bm!178035 () Bool)

(assert (=> bm!178035 (= call!178042 (list!12039 (ite c!445509 input!5495 (_2!18725 lt!974948))))))

(declare-fun b!2753126 () Bool)

(declare-fun c!445508 () Bool)

(assert (=> b!2753126 (= c!445508 call!178034)))

(declare-fun lt!974970 () Unit!45648)

(declare-fun lt!974962 () Unit!45648)

(assert (=> b!2753126 (= lt!974970 lt!974962)))

(declare-fun lt!974936 () C!16268)

(declare-fun lt!974944 () List!31968)

(declare-fun lt!974968 () List!31968)

(assert (=> b!2753126 (= (++!7891 (++!7891 lt!974822 (Cons!31868 lt!974936 Nil!31868)) lt!974944) lt!974968)))

(assert (=> b!2753126 (= lt!974962 (lemmaMoveElementToOtherListKeepsConcatEq!848 lt!974822 lt!974936 lt!974944 lt!974968))))

(assert (=> b!2753126 (= lt!974968 (list!12039 input!5495))))

(assert (=> b!2753126 (= lt!974944 (tail!4365 lt!974820))))

(assert (=> b!2753126 (= lt!974936 (apply!7450 input!5495 1))))

(declare-fun lt!974932 () Unit!45648)

(declare-fun lt!974953 () Unit!45648)

(assert (=> b!2753126 (= lt!974932 lt!974953)))

(declare-fun lt!974937 () List!31968)

(assert (=> b!2753126 (isPrefix!2531 (++!7891 lt!974822 (Cons!31868 (head!6127 (getSuffix!1217 lt!974937 lt!974822)) Nil!31868)) lt!974937)))

(assert (=> b!2753126 (= lt!974953 (lemmaAddHeadSuffixToPrefixStillPrefix!436 lt!974822 lt!974937))))

(assert (=> b!2753126 (= lt!974937 (list!12039 input!5495))))

(declare-fun lt!974951 () Unit!45648)

(assert (=> b!2753126 (= lt!974951 e!1735836)))

(declare-fun c!445506 () Bool)

(assert (=> b!2753126 (= c!445506 (= (size!24635 lt!974822) (size!24636 input!5495)))))

(declare-fun lt!974935 () Unit!45648)

(declare-fun lt!974964 () Unit!45648)

(assert (=> b!2753126 (= lt!974935 lt!974964)))

(declare-fun lt!974959 () List!31968)

(assert (=> b!2753126 (<= (size!24635 lt!974822) (size!24635 lt!974959))))

(assert (=> b!2753126 (= lt!974964 (lemmaIsPrefixThenSmallerEqSize!239 lt!974822 lt!974959))))

(assert (=> b!2753126 (= lt!974959 (list!12039 input!5495))))

(declare-fun lt!974961 () Unit!45648)

(declare-fun lt!974958 () Unit!45648)

(assert (=> b!2753126 (= lt!974961 lt!974958)))

(declare-fun lt!974943 () List!31968)

(assert (=> b!2753126 (= (head!6127 (drop!1686 lt!974943 1)) (apply!7451 lt!974943 1))))

(assert (=> b!2753126 (= lt!974958 (lemmaDropApply!892 lt!974943 1))))

(assert (=> b!2753126 (= lt!974943 (list!12039 input!5495))))

(declare-fun lt!974934 () Unit!45648)

(declare-fun lt!974945 () Unit!45648)

(assert (=> b!2753126 (= lt!974934 lt!974945)))

(declare-fun lt!974942 () List!31968)

(declare-fun lt!974950 () List!31968)

(assert (=> b!2753126 (and (= lt!974950 lt!974822) (= lt!974942 lt!974820))))

(assert (=> b!2753126 (= lt!974945 (lemmaConcatSameAndSameSizesThenSameLists!318 lt!974950 lt!974942 lt!974822 lt!974820))))

(assert (=> b!2753126 (= lt!974942 call!178042)))

(assert (=> b!2753126 (= lt!974950 (list!12039 (_1!18725 lt!974948)))))

(assert (=> b!2753126 (= lt!974948 (splitAt!84 input!5495 1))))

(assert (=> b!2753126 (= e!1735838 e!1735835)))

(declare-fun b!2753127 () Bool)

(assert (=> b!2753127 (= e!1735840 0)))

(declare-fun call!178041 () (InoxSet Context!4546))

(declare-fun bm!178036 () Bool)

(assert (=> bm!178036 (= call!178041 (derivationStepZipper!347 (ite c!445483 (_1!18727 lt!974829) (_1!18727 lt!974805)) call!178036))))

(declare-fun bm!178037 () Bool)

(assert (=> bm!178037 (= call!178039 (findLongestMatchInnerZipperFast!13 call!178041 call!178043 (+ 1 1) call!178035 input!5495 lt!974836))))

(declare-fun bm!178038 () Bool)

(assert (=> bm!178038 (= call!178038 (isPrefix!2531 (ite c!445509 lt!974941 lt!974931) (ite c!445509 lt!974969 lt!974956)))))

(assert (= (and d!796808 c!445505) b!2753127))

(assert (= (and d!796808 (not c!445505)) b!2753119))

(assert (= (and b!2753119 c!445509) b!2753123))

(assert (= (and b!2753119 (not c!445509)) b!2753126))

(assert (= (and b!2753123 c!445504) b!2753121))

(assert (= (and b!2753123 (not c!445504)) b!2753116))

(assert (= (and b!2753126 c!445506) b!2753125))

(assert (= (and b!2753126 (not c!445506)) b!2753122))

(assert (= (and b!2753126 c!445508) b!2753118))

(assert (= (and b!2753126 (not c!445508)) b!2753117))

(assert (= (or b!2753118 b!2753117) bm!178031))

(assert (= (or b!2753118 b!2753117) bm!178029))

(assert (= (or b!2753118 b!2753117) bm!178033))

(assert (= (or b!2753118 b!2753117) bm!178036))

(assert (= (or b!2753118 b!2753117) bm!178037))

(assert (= (or b!2753123 b!2753126) bm!178034))

(assert (= (or b!2753123 b!2753126) bm!178035))

(assert (= (or b!2753123 b!2753125) bm!178030))

(assert (= (or b!2753123 b!2753125) bm!178038))

(assert (= (or b!2753123 b!2753125) bm!178032))

(assert (= (and bm!178032 c!445507) b!2753124))

(assert (= (and bm!178032 (not c!445507)) b!2753120))

(declare-fun m!3168355 () Bool)

(assert (=> bm!178036 m!3168355))

(declare-fun m!3168357 () Bool)

(assert (=> bm!178031 m!3168357))

(declare-fun m!3168359 () Bool)

(assert (=> bm!178030 m!3168359))

(declare-fun m!3168361 () Bool)

(assert (=> bm!178038 m!3168361))

(declare-fun m!3168363 () Bool)

(assert (=> bm!178032 m!3168363))

(declare-fun m!3168365 () Bool)

(assert (=> bm!178029 m!3168365))

(declare-fun m!3168367 () Bool)

(assert (=> bm!178035 m!3168367))

(assert (=> b!2753125 m!3168227))

(declare-fun m!3168369 () Bool)

(assert (=> d!796808 m!3168369))

(assert (=> d!796808 m!3168227))

(declare-fun m!3168371 () Bool)

(assert (=> d!796808 m!3168371))

(assert (=> d!796808 m!3168341))

(declare-fun m!3168373 () Bool)

(assert (=> d!796808 m!3168373))

(declare-fun m!3168375 () Bool)

(assert (=> d!796808 m!3168375))

(declare-fun m!3168377 () Bool)

(assert (=> d!796808 m!3168377))

(assert (=> d!796808 m!3168227))

(declare-fun m!3168379 () Bool)

(assert (=> d!796808 m!3168379))

(assert (=> d!796808 m!3168227))

(declare-fun m!3168381 () Bool)

(assert (=> d!796808 m!3168381))

(assert (=> d!796808 m!3168341))

(assert (=> d!796808 m!3168227))

(declare-fun m!3168383 () Bool)

(assert (=> bm!178034 m!3168383))

(declare-fun m!3168385 () Bool)

(assert (=> bm!178037 m!3168385))

(declare-fun m!3168387 () Bool)

(assert (=> bm!178033 m!3168387))

(assert (=> b!2753120 m!3168227))

(declare-fun m!3168389 () Bool)

(assert (=> b!2753126 m!3168389))

(assert (=> b!2753126 m!3168245))

(declare-fun m!3168391 () Bool)

(assert (=> b!2753126 m!3168391))

(declare-fun m!3168393 () Bool)

(assert (=> b!2753126 m!3168393))

(declare-fun m!3168395 () Bool)

(assert (=> b!2753126 m!3168395))

(declare-fun m!3168397 () Bool)

(assert (=> b!2753126 m!3168397))

(assert (=> b!2753126 m!3168357))

(declare-fun m!3168399 () Bool)

(assert (=> b!2753126 m!3168399))

(declare-fun m!3168401 () Bool)

(assert (=> b!2753126 m!3168401))

(assert (=> b!2753126 m!3168365))

(assert (=> b!2753126 m!3168399))

(declare-fun m!3168403 () Bool)

(assert (=> b!2753126 m!3168403))

(assert (=> b!2753126 m!3168227))

(declare-fun m!3168405 () Bool)

(assert (=> b!2753126 m!3168405))

(declare-fun m!3168407 () Bool)

(assert (=> b!2753126 m!3168407))

(declare-fun m!3168409 () Bool)

(assert (=> b!2753126 m!3168409))

(declare-fun m!3168411 () Bool)

(assert (=> b!2753126 m!3168411))

(assert (=> b!2753126 m!3168403))

(declare-fun m!3168413 () Bool)

(assert (=> b!2753126 m!3168413))

(declare-fun m!3168415 () Bool)

(assert (=> b!2753126 m!3168415))

(declare-fun m!3168417 () Bool)

(assert (=> b!2753126 m!3168417))

(assert (=> b!2753126 m!3168415))

(declare-fun m!3168419 () Bool)

(assert (=> b!2753126 m!3168419))

(declare-fun m!3168421 () Bool)

(assert (=> b!2753126 m!3168421))

(declare-fun m!3168423 () Bool)

(assert (=> b!2753126 m!3168423))

(assert (=> b!2753126 m!3168407))

(assert (=> bm!178004 d!796808))

(declare-fun d!796810 () Bool)

(declare-fun lt!974974 () Int)

(assert (=> d!796810 (>= lt!974974 0)))

(declare-fun e!1735843 () Int)

(assert (=> d!796810 (= lt!974974 e!1735843)))

(declare-fun c!445512 () Bool)

(assert (=> d!796810 (= c!445512 ((_ is Nil!31868) Nil!31868))))

(assert (=> d!796810 (= (size!24635 Nil!31868) lt!974974)))

(declare-fun b!2753132 () Bool)

(assert (=> b!2753132 (= e!1735843 0)))

(declare-fun b!2753133 () Bool)

(assert (=> b!2753133 (= e!1735843 (+ 1 (size!24635 (t!228072 Nil!31868))))))

(assert (= (and d!796810 c!445512) b!2753132))

(assert (= (and d!796810 (not c!445512)) b!2753133))

(declare-fun m!3168425 () Bool)

(assert (=> b!2753133 m!3168425))

(assert (=> b!2753073 d!796810))

(declare-fun bm!178039 () Bool)

(declare-fun call!178046 () C!16268)

(assert (=> bm!178039 (= call!178046 (apply!7450 input!5495 1))))

(declare-fun b!2753135 () Bool)

(declare-fun e!1735844 () Int)

(declare-fun call!178049 () Int)

(assert (=> b!2753135 (= e!1735844 call!178049)))

(declare-fun b!2753136 () Bool)

(declare-fun lt!975011 () Int)

(assert (=> b!2753136 (= e!1735844 (ite (= lt!975011 0) 1 lt!975011))))

(assert (=> b!2753136 (= lt!975011 call!178049)))

(declare-fun b!2753137 () Bool)

(declare-fun e!1735849 () Int)

(declare-fun e!1735847 () Int)

(assert (=> b!2753137 (= e!1735849 e!1735847)))

(declare-fun c!445518 () Bool)

(assert (=> b!2753137 (= c!445518 (= 1 lt!974836))))

(declare-fun lt!975001 () List!31968)

(declare-fun call!178047 () Unit!45648)

(declare-fun lt!974986 () List!31968)

(declare-fun lt!974976 () List!31968)

(declare-fun lt!975014 () List!31968)

(declare-fun bm!178040 () Bool)

(assert (=> bm!178040 (= call!178047 (lemmaIsPrefixRefl!1657 (ite c!445518 lt!974986 lt!974976) (ite c!445518 lt!975014 lt!975001)))))

(declare-fun bm!178041 () Bool)

(declare-fun call!178045 () List!31968)

(assert (=> bm!178041 (= call!178045 (tail!4365 lt!974814))))

(declare-fun bm!178042 () Bool)

(declare-fun c!445516 () Bool)

(assert (=> bm!178042 (= c!445516 c!445518)))

(declare-fun call!178050 () Unit!45648)

(declare-fun lt!975000 () List!31968)

(declare-fun e!1735846 () List!31968)

(declare-fun lt!975010 () List!31968)

(assert (=> bm!178042 (= call!178050 (lemmaIsPrefixSameLengthThenSameList!438 (ite c!445518 lt!975000 lt!975010) lt!974816 e!1735846))))

(declare-fun bm!178043 () Bool)

(declare-fun call!178053 () List!31968)

(assert (=> bm!178043 (= call!178053 (++!7891 lt!974816 (Cons!31868 call!178046 Nil!31868)))))

(declare-fun b!2753138 () Bool)

(assert (=> b!2753138 (= e!1735846 (list!12039 input!5495))))

(declare-fun bm!178044 () Bool)

(declare-fun call!178044 () Bool)

(assert (=> bm!178044 (= call!178044 (nullableZipper!610 call!178013))))

(declare-fun b!2753139 () Bool)

(declare-fun e!1735848 () Int)

(assert (=> b!2753139 (= e!1735848 1)))

(declare-fun b!2753140 () Bool)

(declare-fun e!1735845 () Unit!45648)

(declare-fun Unit!45657 () Unit!45648)

(assert (=> b!2753140 (= e!1735845 Unit!45657)))

(declare-fun b!2753141 () Bool)

(declare-fun c!445513 () Bool)

(assert (=> b!2753141 (= c!445513 call!178044)))

(declare-fun lt!974978 () Unit!45648)

(declare-fun lt!975012 () Unit!45648)

(assert (=> b!2753141 (= lt!974978 lt!975012)))

(assert (=> b!2753141 (= lt!975000 lt!974816)))

(assert (=> b!2753141 (= lt!975012 call!178050)))

(declare-fun call!178052 () List!31968)

(assert (=> b!2753141 (= lt!975000 call!178052)))

(declare-fun lt!974992 () Unit!45648)

(declare-fun lt!974999 () Unit!45648)

(assert (=> b!2753141 (= lt!974992 lt!974999)))

(declare-fun call!178048 () Bool)

(assert (=> b!2753141 call!178048))

(assert (=> b!2753141 (= lt!974999 call!178047)))

(assert (=> b!2753141 (= lt!975014 call!178052)))

(assert (=> b!2753141 (= lt!974986 call!178052)))

(assert (=> b!2753141 (= e!1735847 e!1735848)))

(declare-fun b!2753142 () Bool)

(assert (=> b!2753142 (= e!1735846 call!178052)))

(declare-fun d!796812 () Bool)

(declare-fun lt!975008 () Int)

(assert (=> d!796812 (= (size!24635 (_1!18728 (findLongestMatchInnerZipper!4 call!178013 lt!974816 1 lt!974814 (list!12039 input!5495) lt!974836))) lt!975008)))

(assert (=> d!796812 (= lt!975008 e!1735849)))

(declare-fun c!445514 () Bool)

(assert (=> d!796812 (= c!445514 (lostCauseZipper!421 call!178013))))

(declare-fun lt!974984 () Unit!45648)

(declare-fun Unit!45658 () Unit!45648)

(assert (=> d!796812 (= lt!974984 Unit!45658)))

(assert (=> d!796812 (= (getSuffix!1217 (list!12039 input!5495) lt!974816) lt!974814)))

(declare-fun lt!974985 () Unit!45648)

(declare-fun lt!974997 () Unit!45648)

(assert (=> d!796812 (= lt!974985 lt!974997)))

(declare-fun lt!974994 () List!31968)

(assert (=> d!796812 (= lt!974814 lt!974994)))

(assert (=> d!796812 (= lt!974997 (lemmaSamePrefixThenSameSuffix!1119 lt!974816 lt!974814 lt!974816 lt!974994 (list!12039 input!5495)))))

(assert (=> d!796812 (= lt!974994 (getSuffix!1217 (list!12039 input!5495) lt!974816))))

(declare-fun lt!974975 () Unit!45648)

(declare-fun lt!975002 () Unit!45648)

(assert (=> d!796812 (= lt!974975 lt!975002)))

(assert (=> d!796812 (isPrefix!2531 lt!974816 (++!7891 lt!974816 lt!974814))))

(assert (=> d!796812 (= lt!975002 (lemmaConcatTwoListThenFirstIsPrefix!1645 lt!974816 lt!974814))))

(assert (=> d!796812 (= (++!7891 lt!974816 lt!974814) (list!12039 input!5495))))

(assert (=> d!796812 (= (findLongestMatchInnerZipperFast!13 call!178013 lt!974816 1 lt!974814 input!5495 lt!974836) lt!975008)))

(declare-fun b!2753134 () Bool)

(assert (=> b!2753134 (= e!1735848 0)))

(declare-fun b!2753143 () Bool)

(declare-fun Unit!45659 () Unit!45648)

(assert (=> b!2753143 (= e!1735845 Unit!45659)))

(assert (=> b!2753143 (= lt!974976 (list!12039 input!5495))))

(assert (=> b!2753143 (= lt!975001 (list!12039 input!5495))))

(declare-fun lt!974991 () Unit!45648)

(assert (=> b!2753143 (= lt!974991 call!178047)))

(assert (=> b!2753143 call!178048))

(declare-fun lt!975016 () Unit!45648)

(assert (=> b!2753143 (= lt!975016 lt!974991)))

(assert (=> b!2753143 (= lt!975010 (list!12039 input!5495))))

(declare-fun lt!974983 () Unit!45648)

(assert (=> b!2753143 (= lt!974983 call!178050)))

(assert (=> b!2753143 (= lt!975010 lt!974816)))

(declare-fun lt!975005 () Unit!45648)

(assert (=> b!2753143 (= lt!975005 lt!974983)))

(assert (=> b!2753143 false))

(declare-fun bm!178045 () Bool)

(declare-fun lt!974993 () tuple2!31874)

(assert (=> bm!178045 (= call!178052 (list!12039 (ite c!445518 input!5495 (_2!18725 lt!974993))))))

(declare-fun b!2753144 () Bool)

(declare-fun c!445517 () Bool)

(assert (=> b!2753144 (= c!445517 call!178044)))

(declare-fun lt!975015 () Unit!45648)

(declare-fun lt!975007 () Unit!45648)

(assert (=> b!2753144 (= lt!975015 lt!975007)))

(declare-fun lt!974989 () List!31968)

(declare-fun lt!975013 () List!31968)

(declare-fun lt!974981 () C!16268)

(assert (=> b!2753144 (= (++!7891 (++!7891 lt!974816 (Cons!31868 lt!974981 Nil!31868)) lt!974989) lt!975013)))

(assert (=> b!2753144 (= lt!975007 (lemmaMoveElementToOtherListKeepsConcatEq!848 lt!974816 lt!974981 lt!974989 lt!975013))))

(assert (=> b!2753144 (= lt!975013 (list!12039 input!5495))))

(assert (=> b!2753144 (= lt!974989 (tail!4365 lt!974814))))

(assert (=> b!2753144 (= lt!974981 (apply!7450 input!5495 1))))

(declare-fun lt!974977 () Unit!45648)

(declare-fun lt!974998 () Unit!45648)

(assert (=> b!2753144 (= lt!974977 lt!974998)))

(declare-fun lt!974982 () List!31968)

(assert (=> b!2753144 (isPrefix!2531 (++!7891 lt!974816 (Cons!31868 (head!6127 (getSuffix!1217 lt!974982 lt!974816)) Nil!31868)) lt!974982)))

(assert (=> b!2753144 (= lt!974998 (lemmaAddHeadSuffixToPrefixStillPrefix!436 lt!974816 lt!974982))))

(assert (=> b!2753144 (= lt!974982 (list!12039 input!5495))))

(declare-fun lt!974996 () Unit!45648)

(assert (=> b!2753144 (= lt!974996 e!1735845)))

(declare-fun c!445515 () Bool)

(assert (=> b!2753144 (= c!445515 (= (size!24635 lt!974816) (size!24636 input!5495)))))

(declare-fun lt!974980 () Unit!45648)

(declare-fun lt!975009 () Unit!45648)

(assert (=> b!2753144 (= lt!974980 lt!975009)))

(declare-fun lt!975004 () List!31968)

(assert (=> b!2753144 (<= (size!24635 lt!974816) (size!24635 lt!975004))))

(assert (=> b!2753144 (= lt!975009 (lemmaIsPrefixThenSmallerEqSize!239 lt!974816 lt!975004))))

(assert (=> b!2753144 (= lt!975004 (list!12039 input!5495))))

(declare-fun lt!975006 () Unit!45648)

(declare-fun lt!975003 () Unit!45648)

(assert (=> b!2753144 (= lt!975006 lt!975003)))

(declare-fun lt!974988 () List!31968)

(assert (=> b!2753144 (= (head!6127 (drop!1686 lt!974988 1)) (apply!7451 lt!974988 1))))

(assert (=> b!2753144 (= lt!975003 (lemmaDropApply!892 lt!974988 1))))

(assert (=> b!2753144 (= lt!974988 (list!12039 input!5495))))

(declare-fun lt!974979 () Unit!45648)

(declare-fun lt!974990 () Unit!45648)

(assert (=> b!2753144 (= lt!974979 lt!974990)))

(declare-fun lt!974987 () List!31968)

(declare-fun lt!974995 () List!31968)

(assert (=> b!2753144 (and (= lt!974995 lt!974816) (= lt!974987 lt!974814))))

(assert (=> b!2753144 (= lt!974990 (lemmaConcatSameAndSameSizesThenSameLists!318 lt!974995 lt!974987 lt!974816 lt!974814))))

(assert (=> b!2753144 (= lt!974987 call!178052)))

(assert (=> b!2753144 (= lt!974995 (list!12039 (_1!18725 lt!974993)))))

(assert (=> b!2753144 (= lt!974993 (splitAt!84 input!5495 1))))

(assert (=> b!2753144 (= e!1735847 e!1735844)))

(declare-fun b!2753145 () Bool)

(assert (=> b!2753145 (= e!1735849 0)))

(declare-fun bm!178046 () Bool)

(declare-fun call!178051 () (InoxSet Context!4546))

(assert (=> bm!178046 (= call!178051 (derivationStepZipper!347 call!178013 call!178046))))

(declare-fun bm!178047 () Bool)

(assert (=> bm!178047 (= call!178049 (findLongestMatchInnerZipperFast!13 call!178051 call!178053 (+ 1 1) call!178045 input!5495 lt!974836))))

(declare-fun bm!178048 () Bool)

(assert (=> bm!178048 (= call!178048 (isPrefix!2531 (ite c!445518 lt!974986 lt!974976) (ite c!445518 lt!975014 lt!975001)))))

(assert (= (and d!796812 c!445514) b!2753145))

(assert (= (and d!796812 (not c!445514)) b!2753137))

(assert (= (and b!2753137 c!445518) b!2753141))

(assert (= (and b!2753137 (not c!445518)) b!2753144))

(assert (= (and b!2753141 c!445513) b!2753139))

(assert (= (and b!2753141 (not c!445513)) b!2753134))

(assert (= (and b!2753144 c!445515) b!2753143))

(assert (= (and b!2753144 (not c!445515)) b!2753140))

(assert (= (and b!2753144 c!445517) b!2753136))

(assert (= (and b!2753144 (not c!445517)) b!2753135))

(assert (= (or b!2753136 b!2753135) bm!178041))

(assert (= (or b!2753136 b!2753135) bm!178039))

(assert (= (or b!2753136 b!2753135) bm!178043))

(assert (= (or b!2753136 b!2753135) bm!178046))

(assert (= (or b!2753136 b!2753135) bm!178047))

(assert (= (or b!2753141 b!2753144) bm!178044))

(assert (= (or b!2753141 b!2753144) bm!178045))

(assert (= (or b!2753141 b!2753143) bm!178040))

(assert (= (or b!2753141 b!2753143) bm!178048))

(assert (= (or b!2753141 b!2753143) bm!178042))

(assert (= (and bm!178042 c!445516) b!2753142))

(assert (= (and bm!178042 (not c!445516)) b!2753138))

(declare-fun m!3168427 () Bool)

(assert (=> bm!178046 m!3168427))

(declare-fun m!3168429 () Bool)

(assert (=> bm!178041 m!3168429))

(declare-fun m!3168431 () Bool)

(assert (=> bm!178040 m!3168431))

(declare-fun m!3168433 () Bool)

(assert (=> bm!178048 m!3168433))

(declare-fun m!3168435 () Bool)

(assert (=> bm!178042 m!3168435))

(assert (=> bm!178039 m!3168365))

(declare-fun m!3168437 () Bool)

(assert (=> bm!178045 m!3168437))

(assert (=> b!2753143 m!3168227))

(declare-fun m!3168439 () Bool)

(assert (=> d!796812 m!3168439))

(assert (=> d!796812 m!3168227))

(declare-fun m!3168441 () Bool)

(assert (=> d!796812 m!3168441))

(assert (=> d!796812 m!3168323))

(declare-fun m!3168443 () Bool)

(assert (=> d!796812 m!3168443))

(declare-fun m!3168445 () Bool)

(assert (=> d!796812 m!3168445))

(declare-fun m!3168447 () Bool)

(assert (=> d!796812 m!3168447))

(assert (=> d!796812 m!3168227))

(declare-fun m!3168449 () Bool)

(assert (=> d!796812 m!3168449))

(assert (=> d!796812 m!3168227))

(declare-fun m!3168451 () Bool)

(assert (=> d!796812 m!3168451))

(assert (=> d!796812 m!3168323))

(assert (=> d!796812 m!3168227))

(declare-fun m!3168453 () Bool)

(assert (=> bm!178044 m!3168453))

(declare-fun m!3168455 () Bool)

(assert (=> bm!178047 m!3168455))

(declare-fun m!3168457 () Bool)

(assert (=> bm!178043 m!3168457))

(assert (=> b!2753138 m!3168227))

(declare-fun m!3168459 () Bool)

(assert (=> b!2753144 m!3168459))

(assert (=> b!2753144 m!3168245))

(declare-fun m!3168461 () Bool)

(assert (=> b!2753144 m!3168461))

(declare-fun m!3168463 () Bool)

(assert (=> b!2753144 m!3168463))

(declare-fun m!3168465 () Bool)

(assert (=> b!2753144 m!3168465))

(declare-fun m!3168467 () Bool)

(assert (=> b!2753144 m!3168467))

(assert (=> b!2753144 m!3168429))

(declare-fun m!3168469 () Bool)

(assert (=> b!2753144 m!3168469))

(declare-fun m!3168471 () Bool)

(assert (=> b!2753144 m!3168471))

(assert (=> b!2753144 m!3168365))

(assert (=> b!2753144 m!3168469))

(declare-fun m!3168473 () Bool)

(assert (=> b!2753144 m!3168473))

(assert (=> b!2753144 m!3168227))

(declare-fun m!3168475 () Bool)

(assert (=> b!2753144 m!3168475))

(declare-fun m!3168477 () Bool)

(assert (=> b!2753144 m!3168477))

(declare-fun m!3168479 () Bool)

(assert (=> b!2753144 m!3168479))

(declare-fun m!3168481 () Bool)

(assert (=> b!2753144 m!3168481))

(assert (=> b!2753144 m!3168473))

(declare-fun m!3168483 () Bool)

(assert (=> b!2753144 m!3168483))

(declare-fun m!3168485 () Bool)

(assert (=> b!2753144 m!3168485))

(declare-fun m!3168487 () Bool)

(assert (=> b!2753144 m!3168487))

(assert (=> b!2753144 m!3168485))

(assert (=> b!2753144 m!3168419))

(declare-fun m!3168489 () Bool)

(assert (=> b!2753144 m!3168489))

(declare-fun m!3168491 () Bool)

(assert (=> b!2753144 m!3168491))

(assert (=> b!2753144 m!3168477))

(assert (=> bm!178005 d!796812))

(declare-fun d!796814 () Bool)

(assert (=> d!796814 (= lt!974827 Nil!31868)))

(declare-fun lt!975019 () Unit!45648)

(declare-fun choose!16116 (List!31968 List!31968 List!31968) Unit!45648)

(assert (=> d!796814 (= lt!975019 (choose!16116 lt!974827 Nil!31868 lt!974827))))

(assert (=> d!796814 (isPrefix!2531 lt!974827 lt!974827)))

(assert (=> d!796814 (= (lemmaIsPrefixSameLengthThenSameList!438 lt!974827 Nil!31868 lt!974827) lt!975019)))

(declare-fun bs!490486 () Bool)

(assert (= bs!490486 d!796814))

(declare-fun m!3168493 () Bool)

(assert (=> bs!490486 m!3168493))

(assert (=> bs!490486 m!3168281))

(assert (=> bm!177998 d!796814))

(declare-fun d!796816 () Bool)

(declare-fun validCacheMapDown!383 (MutableMap!3625) Bool)

(assert (=> d!796816 (= (valid!2887 (ite c!445483 (_3!2787 lt!974797) (_3!2787 lt!974833))) (validCacheMapDown!383 (cache!3768 (ite c!445483 (_3!2787 lt!974797) (_3!2787 lt!974833)))))))

(declare-fun bs!490487 () Bool)

(assert (= bs!490487 d!796816))

(declare-fun m!3168495 () Bool)

(assert (=> bs!490487 m!3168495))

(assert (=> bm!178008 d!796816))

(declare-fun d!796818 () Bool)

(assert (=> d!796818 (= (valid!2887 (_3!2787 lt!974810)) (validCacheMapDown!383 (cache!3768 (_3!2787 lt!974810))))))

(declare-fun bs!490488 () Bool)

(assert (= bs!490488 d!796818))

(declare-fun m!3168497 () Bool)

(assert (=> bs!490488 m!3168497))

(assert (=> b!2753090 d!796818))

(declare-fun b!2753154 () Bool)

(declare-fun e!1735855 () List!31968)

(assert (=> b!2753154 (= e!1735855 (Cons!31868 (head!6127 lt!974841) Nil!31868))))

(declare-fun b!2753156 () Bool)

(declare-fun res!1154043 () Bool)

(declare-fun e!1735854 () Bool)

(assert (=> b!2753156 (=> (not res!1154043) (not e!1735854))))

(declare-fun lt!975022 () List!31968)

(assert (=> b!2753156 (= res!1154043 (= (size!24635 lt!975022) (+ (size!24635 Nil!31868) (size!24635 (Cons!31868 (head!6127 lt!974841) Nil!31868)))))))

(declare-fun b!2753155 () Bool)

(assert (=> b!2753155 (= e!1735855 (Cons!31868 (h!37288 Nil!31868) (++!7891 (t!228072 Nil!31868) (Cons!31868 (head!6127 lt!974841) Nil!31868))))))

(declare-fun d!796820 () Bool)

(assert (=> d!796820 e!1735854))

(declare-fun res!1154044 () Bool)

(assert (=> d!796820 (=> (not res!1154044) (not e!1735854))))

(declare-fun content!4488 (List!31968) (InoxSet C!16268))

(assert (=> d!796820 (= res!1154044 (= (content!4488 lt!975022) ((_ map or) (content!4488 Nil!31868) (content!4488 (Cons!31868 (head!6127 lt!974841) Nil!31868)))))))

(assert (=> d!796820 (= lt!975022 e!1735855)))

(declare-fun c!445521 () Bool)

(assert (=> d!796820 (= c!445521 ((_ is Nil!31868) Nil!31868))))

(assert (=> d!796820 (= (++!7891 Nil!31868 (Cons!31868 (head!6127 lt!974841) Nil!31868)) lt!975022)))

(declare-fun b!2753157 () Bool)

(assert (=> b!2753157 (= e!1735854 (or (not (= (Cons!31868 (head!6127 lt!974841) Nil!31868) Nil!31868)) (= lt!975022 Nil!31868)))))

(assert (= (and d!796820 c!445521) b!2753154))

(assert (= (and d!796820 (not c!445521)) b!2753155))

(assert (= (and d!796820 res!1154044) b!2753156))

(assert (= (and b!2753156 res!1154043) b!2753157))

(declare-fun m!3168499 () Bool)

(assert (=> b!2753156 m!3168499))

(assert (=> b!2753156 m!3168283))

(declare-fun m!3168501 () Bool)

(assert (=> b!2753156 m!3168501))

(declare-fun m!3168503 () Bool)

(assert (=> b!2753155 m!3168503))

(declare-fun m!3168505 () Bool)

(assert (=> d!796820 m!3168505))

(declare-fun m!3168507 () Bool)

(assert (=> d!796820 m!3168507))

(declare-fun m!3168509 () Bool)

(assert (=> d!796820 m!3168509))

(assert (=> b!2753074 d!796820))

(declare-fun d!796822 () Bool)

(assert (=> d!796822 (isPrefix!2531 (++!7891 Nil!31868 (Cons!31868 (head!6127 (getSuffix!1217 lt!974827 Nil!31868)) Nil!31868)) lt!974827)))

(declare-fun lt!975025 () Unit!45648)

(declare-fun choose!16117 (List!31968 List!31968) Unit!45648)

(assert (=> d!796822 (= lt!975025 (choose!16117 Nil!31868 lt!974827))))

(assert (=> d!796822 (isPrefix!2531 Nil!31868 lt!974827)))

(assert (=> d!796822 (= (lemmaAddHeadSuffixToPrefixStillPrefix!436 Nil!31868 lt!974827) lt!975025)))

(declare-fun bs!490489 () Bool)

(assert (= bs!490489 d!796822))

(declare-fun m!3168511 () Bool)

(assert (=> bs!490489 m!3168511))

(assert (=> bs!490489 m!3168511))

(declare-fun m!3168513 () Bool)

(assert (=> bs!490489 m!3168513))

(declare-fun m!3168515 () Bool)

(assert (=> bs!490489 m!3168515))

(declare-fun m!3168517 () Bool)

(assert (=> bs!490489 m!3168517))

(assert (=> bs!490489 m!3168235))

(assert (=> bs!490489 m!3168235))

(declare-fun m!3168519 () Bool)

(assert (=> bs!490489 m!3168519))

(assert (=> b!2753074 d!796822))

(declare-fun b!2753169 () Bool)

(declare-fun e!1735864 () Bool)

(assert (=> b!2753169 (= e!1735864 (>= (size!24635 lt!974827) (size!24635 (++!7891 Nil!31868 (Cons!31868 (head!6127 lt!974841) Nil!31868)))))))

(declare-fun b!2753166 () Bool)

(declare-fun e!1735862 () Bool)

(declare-fun e!1735863 () Bool)

(assert (=> b!2753166 (= e!1735862 e!1735863)))

(declare-fun res!1154055 () Bool)

(assert (=> b!2753166 (=> (not res!1154055) (not e!1735863))))

(assert (=> b!2753166 (= res!1154055 (not ((_ is Nil!31868) lt!974827)))))

(declare-fun b!2753168 () Bool)

(assert (=> b!2753168 (= e!1735863 (isPrefix!2531 (tail!4365 (++!7891 Nil!31868 (Cons!31868 (head!6127 lt!974841) Nil!31868))) (tail!4365 lt!974827)))))

(declare-fun b!2753167 () Bool)

(declare-fun res!1154054 () Bool)

(assert (=> b!2753167 (=> (not res!1154054) (not e!1735863))))

(assert (=> b!2753167 (= res!1154054 (= (head!6127 (++!7891 Nil!31868 (Cons!31868 (head!6127 lt!974841) Nil!31868))) (head!6127 lt!974827)))))

(declare-fun d!796824 () Bool)

(assert (=> d!796824 e!1735864))

(declare-fun res!1154056 () Bool)

(assert (=> d!796824 (=> res!1154056 e!1735864)))

(declare-fun lt!975028 () Bool)

(assert (=> d!796824 (= res!1154056 (not lt!975028))))

(assert (=> d!796824 (= lt!975028 e!1735862)))

(declare-fun res!1154053 () Bool)

(assert (=> d!796824 (=> res!1154053 e!1735862)))

(assert (=> d!796824 (= res!1154053 ((_ is Nil!31868) (++!7891 Nil!31868 (Cons!31868 (head!6127 lt!974841) Nil!31868))))))

(assert (=> d!796824 (= (isPrefix!2531 (++!7891 Nil!31868 (Cons!31868 (head!6127 lt!974841) Nil!31868)) lt!974827) lt!975028)))

(assert (= (and d!796824 (not res!1154053)) b!2753166))

(assert (= (and b!2753166 res!1154055) b!2753167))

(assert (= (and b!2753167 res!1154054) b!2753168))

(assert (= (and d!796824 (not res!1154056)) b!2753169))

(assert (=> b!2753169 m!3168329))

(assert (=> b!2753169 m!3168305))

(declare-fun m!3168521 () Bool)

(assert (=> b!2753169 m!3168521))

(assert (=> b!2753168 m!3168305))

(declare-fun m!3168523 () Bool)

(assert (=> b!2753168 m!3168523))

(assert (=> b!2753168 m!3168299))

(assert (=> b!2753168 m!3168523))

(assert (=> b!2753168 m!3168299))

(declare-fun m!3168525 () Bool)

(assert (=> b!2753168 m!3168525))

(assert (=> b!2753167 m!3168305))

(declare-fun m!3168527 () Bool)

(assert (=> b!2753167 m!3168527))

(declare-fun m!3168529 () Bool)

(assert (=> b!2753167 m!3168529))

(assert (=> b!2753074 d!796824))

(declare-fun b!2753170 () Bool)

(declare-fun e!1735866 () List!31968)

(assert (=> b!2753170 (= e!1735866 (Cons!31868 lt!974830 Nil!31868))))

(declare-fun b!2753172 () Bool)

(declare-fun res!1154057 () Bool)

(declare-fun e!1735865 () Bool)

(assert (=> b!2753172 (=> (not res!1154057) (not e!1735865))))

(declare-fun lt!975029 () List!31968)

(assert (=> b!2753172 (= res!1154057 (= (size!24635 lt!975029) (+ (size!24635 Nil!31868) (size!24635 (Cons!31868 lt!974830 Nil!31868)))))))

(declare-fun b!2753171 () Bool)

(assert (=> b!2753171 (= e!1735866 (Cons!31868 (h!37288 Nil!31868) (++!7891 (t!228072 Nil!31868) (Cons!31868 lt!974830 Nil!31868))))))

(declare-fun d!796826 () Bool)

(assert (=> d!796826 e!1735865))

(declare-fun res!1154058 () Bool)

(assert (=> d!796826 (=> (not res!1154058) (not e!1735865))))

(assert (=> d!796826 (= res!1154058 (= (content!4488 lt!975029) ((_ map or) (content!4488 Nil!31868) (content!4488 (Cons!31868 lt!974830 Nil!31868)))))))

(assert (=> d!796826 (= lt!975029 e!1735866)))

(declare-fun c!445522 () Bool)

(assert (=> d!796826 (= c!445522 ((_ is Nil!31868) Nil!31868))))

(assert (=> d!796826 (= (++!7891 Nil!31868 (Cons!31868 lt!974830 Nil!31868)) lt!975029)))

(declare-fun b!2753173 () Bool)

(assert (=> b!2753173 (= e!1735865 (or (not (= (Cons!31868 lt!974830 Nil!31868) Nil!31868)) (= lt!975029 Nil!31868)))))

(assert (= (and d!796826 c!445522) b!2753170))

(assert (= (and d!796826 (not c!445522)) b!2753171))

(assert (= (and d!796826 res!1154058) b!2753172))

(assert (= (and b!2753172 res!1154057) b!2753173))

(declare-fun m!3168531 () Bool)

(assert (=> b!2753172 m!3168531))

(assert (=> b!2753172 m!3168283))

(declare-fun m!3168533 () Bool)

(assert (=> b!2753172 m!3168533))

(declare-fun m!3168535 () Bool)

(assert (=> b!2753171 m!3168535))

(declare-fun m!3168537 () Bool)

(assert (=> d!796826 m!3168537))

(assert (=> d!796826 m!3168507))

(declare-fun m!3168539 () Bool)

(assert (=> d!796826 m!3168539))

(assert (=> b!2753074 d!796826))

(declare-fun b!2753174 () Bool)

(declare-fun e!1735868 () List!31968)

(assert (=> b!2753174 (= e!1735868 lt!974814)))

(declare-fun b!2753176 () Bool)

(declare-fun res!1154059 () Bool)

(declare-fun e!1735867 () Bool)

(assert (=> b!2753176 (=> (not res!1154059) (not e!1735867))))

(declare-fun lt!975030 () List!31968)

(assert (=> b!2753176 (= res!1154059 (= (size!24635 lt!975030) (+ (size!24635 lt!974816) (size!24635 lt!974814))))))

(declare-fun b!2753175 () Bool)

(assert (=> b!2753175 (= e!1735868 (Cons!31868 (h!37288 lt!974816) (++!7891 (t!228072 lt!974816) lt!974814)))))

(declare-fun d!796828 () Bool)

(assert (=> d!796828 e!1735867))

(declare-fun res!1154060 () Bool)

(assert (=> d!796828 (=> (not res!1154060) (not e!1735867))))

(assert (=> d!796828 (= res!1154060 (= (content!4488 lt!975030) ((_ map or) (content!4488 lt!974816) (content!4488 lt!974814))))))

(assert (=> d!796828 (= lt!975030 e!1735868)))

(declare-fun c!445523 () Bool)

(assert (=> d!796828 (= c!445523 ((_ is Nil!31868) lt!974816))))

(assert (=> d!796828 (= (++!7891 lt!974816 lt!974814) lt!975030)))

(declare-fun b!2753177 () Bool)

(assert (=> b!2753177 (= e!1735867 (or (not (= lt!974814 Nil!31868)) (= lt!975030 lt!974816)))))

(assert (= (and d!796828 c!445523) b!2753174))

(assert (= (and d!796828 (not c!445523)) b!2753175))

(assert (= (and d!796828 res!1154060) b!2753176))

(assert (= (and b!2753176 res!1154059) b!2753177))

(declare-fun m!3168541 () Bool)

(assert (=> b!2753176 m!3168541))

(assert (=> b!2753176 m!3168491))

(declare-fun m!3168543 () Bool)

(assert (=> b!2753176 m!3168543))

(declare-fun m!3168545 () Bool)

(assert (=> b!2753175 m!3168545))

(declare-fun m!3168547 () Bool)

(assert (=> d!796828 m!3168547))

(declare-fun m!3168549 () Bool)

(assert (=> d!796828 m!3168549))

(declare-fun m!3168551 () Bool)

(assert (=> d!796828 m!3168551))

(assert (=> b!2753074 d!796828))

(declare-fun d!796830 () Bool)

(assert (=> d!796830 (= (tail!4365 lt!974827) (t!228072 lt!974827))))

(assert (=> b!2753074 d!796830))

(declare-fun d!796832 () Bool)

(assert (=> d!796832 (and (= lt!974802 Nil!31868) (= lt!974826 lt!974827))))

(declare-fun lt!975033 () Unit!45648)

(declare-fun choose!16118 (List!31968 List!31968 List!31968 List!31968) Unit!45648)

(assert (=> d!796832 (= lt!975033 (choose!16118 lt!974802 lt!974826 Nil!31868 lt!974827))))

(assert (=> d!796832 (= (++!7891 lt!974802 lt!974826) (++!7891 Nil!31868 lt!974827))))

(assert (=> d!796832 (= (lemmaConcatSameAndSameSizesThenSameLists!318 lt!974802 lt!974826 Nil!31868 lt!974827) lt!975033)))

(declare-fun bs!490490 () Bool)

(assert (= bs!490490 d!796832))

(declare-fun m!3168553 () Bool)

(assert (=> bs!490490 m!3168553))

(declare-fun m!3168555 () Bool)

(assert (=> bs!490490 m!3168555))

(assert (=> bs!490490 m!3168251))

(assert (=> b!2753074 d!796832))

(declare-fun d!796834 () Bool)

(assert (=> d!796834 (= (head!6127 (drop!1686 lt!974827 0)) (apply!7451 lt!974827 0))))

(declare-fun lt!975036 () Unit!45648)

(declare-fun choose!16119 (List!31968 Int) Unit!45648)

(assert (=> d!796834 (= lt!975036 (choose!16119 lt!974827 0))))

(declare-fun e!1735871 () Bool)

(assert (=> d!796834 e!1735871))

(declare-fun res!1154063 () Bool)

(assert (=> d!796834 (=> (not res!1154063) (not e!1735871))))

(assert (=> d!796834 (= res!1154063 (>= 0 0))))

(assert (=> d!796834 (= (lemmaDropApply!892 lt!974827 0) lt!975036)))

(declare-fun b!2753180 () Bool)

(assert (=> b!2753180 (= e!1735871 (< 0 (size!24635 lt!974827)))))

(assert (= (and d!796834 res!1154063) b!2753180))

(assert (=> d!796834 m!3168297))

(assert (=> d!796834 m!3168297))

(assert (=> d!796834 m!3168313))

(assert (=> d!796834 m!3168315))

(declare-fun m!3168557 () Bool)

(assert (=> d!796834 m!3168557))

(assert (=> b!2753180 m!3168329))

(assert (=> b!2753074 d!796834))

(declare-fun d!796836 () Bool)

(declare-fun list!12040 (Conc!9937) List!31968)

(assert (=> d!796836 (= (list!12039 (_1!18725 lt!974793)) (list!12040 (c!445491 (_1!18725 lt!974793))))))

(declare-fun bs!490491 () Bool)

(assert (= bs!490491 d!796836))

(declare-fun m!3168559 () Bool)

(assert (=> bs!490491 m!3168559))

(assert (=> b!2753074 d!796836))

(declare-fun d!796838 () Bool)

(assert (=> d!796838 (= (++!7891 (++!7891 Nil!31868 (Cons!31868 lt!974830 Nil!31868)) lt!974814) lt!974827)))

(declare-fun lt!975039 () Unit!45648)

(declare-fun choose!16120 (List!31968 C!16268 List!31968 List!31968) Unit!45648)

(assert (=> d!796838 (= lt!975039 (choose!16120 Nil!31868 lt!974830 lt!974814 lt!974827))))

(assert (=> d!796838 (= (++!7891 Nil!31868 (Cons!31868 lt!974830 lt!974814)) lt!974827)))

(assert (=> d!796838 (= (lemmaMoveElementToOtherListKeepsConcatEq!848 Nil!31868 lt!974830 lt!974814 lt!974827) lt!975039)))

(declare-fun bs!490492 () Bool)

(assert (= bs!490492 d!796838))

(assert (=> bs!490492 m!3168319))

(assert (=> bs!490492 m!3168319))

(declare-fun m!3168561 () Bool)

(assert (=> bs!490492 m!3168561))

(declare-fun m!3168563 () Bool)

(assert (=> bs!490492 m!3168563))

(declare-fun m!3168565 () Bool)

(assert (=> bs!490492 m!3168565))

(assert (=> b!2753074 d!796838))

(declare-fun d!796840 () Bool)

(declare-fun e!1735874 () Bool)

(assert (=> d!796840 e!1735874))

(declare-fun res!1154068 () Bool)

(assert (=> d!796840 (=> (not res!1154068) (not e!1735874))))

(declare-fun lt!975044 () tuple2!31874)

(declare-fun isBalanced!3025 (Conc!9937) Bool)

(assert (=> d!796840 (= res!1154068 (isBalanced!3025 (c!445491 (_1!18725 lt!975044))))))

(declare-datatypes ((tuple2!31878 0))(
  ( (tuple2!31879 (_1!18729 Conc!9937) (_2!18729 Conc!9937)) )
))
(declare-fun lt!975045 () tuple2!31878)

(assert (=> d!796840 (= lt!975044 (tuple2!31875 (BalanceConc!19489 (_1!18729 lt!975045)) (BalanceConc!19489 (_2!18729 lt!975045))))))

(declare-fun splitAt!85 (Conc!9937 Int) tuple2!31878)

(assert (=> d!796840 (= lt!975045 (splitAt!85 (c!445491 input!5495) 0))))

(assert (=> d!796840 (isBalanced!3025 (c!445491 input!5495))))

(assert (=> d!796840 (= (splitAt!84 input!5495 0) lt!975044)))

(declare-fun b!2753185 () Bool)

(declare-fun res!1154069 () Bool)

(assert (=> b!2753185 (=> (not res!1154069) (not e!1735874))))

(assert (=> b!2753185 (= res!1154069 (isBalanced!3025 (c!445491 (_2!18725 lt!975044))))))

(declare-fun b!2753186 () Bool)

(declare-fun splitAtIndex!41 (List!31968 Int) tuple2!31876)

(assert (=> b!2753186 (= e!1735874 (= (tuple2!31877 (list!12039 (_1!18725 lt!975044)) (list!12039 (_2!18725 lt!975044))) (splitAtIndex!41 (list!12039 input!5495) 0)))))

(assert (= (and d!796840 res!1154068) b!2753185))

(assert (= (and b!2753185 res!1154069) b!2753186))

(declare-fun m!3168567 () Bool)

(assert (=> d!796840 m!3168567))

(declare-fun m!3168569 () Bool)

(assert (=> d!796840 m!3168569))

(declare-fun m!3168571 () Bool)

(assert (=> d!796840 m!3168571))

(declare-fun m!3168573 () Bool)

(assert (=> b!2753185 m!3168573))

(declare-fun m!3168575 () Bool)

(assert (=> b!2753186 m!3168575))

(declare-fun m!3168577 () Bool)

(assert (=> b!2753186 m!3168577))

(assert (=> b!2753186 m!3168227))

(assert (=> b!2753186 m!3168227))

(declare-fun m!3168579 () Bool)

(assert (=> b!2753186 m!3168579))

(assert (=> b!2753074 d!796840))

(declare-fun d!796842 () Bool)

(assert (=> d!796842 (= (list!12039 (_2!18725 lt!974793)) (list!12040 (c!445491 (_2!18725 lt!974793))))))

(declare-fun bs!490493 () Bool)

(assert (= bs!490493 d!796842))

(declare-fun m!3168581 () Bool)

(assert (=> bs!490493 m!3168581))

(assert (=> b!2753074 d!796842))

(declare-fun d!796844 () Bool)

(declare-fun lt!975048 () C!16268)

(declare-fun contains!5982 (List!31968 C!16268) Bool)

(assert (=> d!796844 (contains!5982 lt!974827 lt!975048)))

(declare-fun e!1735880 () C!16268)

(assert (=> d!796844 (= lt!975048 e!1735880)))

(declare-fun c!445526 () Bool)

(assert (=> d!796844 (= c!445526 (= 0 0))))

(declare-fun e!1735879 () Bool)

(assert (=> d!796844 e!1735879))

(declare-fun res!1154072 () Bool)

(assert (=> d!796844 (=> (not res!1154072) (not e!1735879))))

(assert (=> d!796844 (= res!1154072 (<= 0 0))))

(assert (=> d!796844 (= (apply!7451 lt!974827 0) lt!975048)))

(declare-fun b!2753193 () Bool)

(assert (=> b!2753193 (= e!1735879 (< 0 (size!24635 lt!974827)))))

(declare-fun b!2753194 () Bool)

(assert (=> b!2753194 (= e!1735880 (head!6127 lt!974827))))

(declare-fun b!2753195 () Bool)

(assert (=> b!2753195 (= e!1735880 (apply!7451 (tail!4365 lt!974827) (- 0 1)))))

(assert (= (and d!796844 res!1154072) b!2753193))

(assert (= (and d!796844 c!445526) b!2753194))

(assert (= (and d!796844 (not c!445526)) b!2753195))

(declare-fun m!3168583 () Bool)

(assert (=> d!796844 m!3168583))

(assert (=> b!2753193 m!3168329))

(assert (=> b!2753194 m!3168529))

(assert (=> b!2753195 m!3168299))

(assert (=> b!2753195 m!3168299))

(declare-fun m!3168585 () Bool)

(assert (=> b!2753195 m!3168585))

(assert (=> b!2753074 d!796844))

(declare-fun d!796846 () Bool)

(assert (=> d!796846 (= (head!6127 (drop!1686 lt!974827 0)) (h!37288 (drop!1686 lt!974827 0)))))

(assert (=> b!2753074 d!796846))

(declare-fun d!796848 () Bool)

(assert (=> d!796848 (= (head!6127 lt!974841) (h!37288 lt!974841))))

(assert (=> b!2753074 d!796848))

(declare-fun b!2753214 () Bool)

(declare-fun e!1735893 () Int)

(declare-fun call!178056 () Int)

(assert (=> b!2753214 (= e!1735893 call!178056)))

(declare-fun b!2753215 () Bool)

(declare-fun e!1735894 () List!31968)

(assert (=> b!2753215 (= e!1735894 Nil!31868)))

(declare-fun b!2753216 () Bool)

(declare-fun e!1735895 () List!31968)

(assert (=> b!2753216 (= e!1735895 (drop!1686 (t!228072 lt!974827) (- 0 1)))))

(declare-fun b!2753217 () Bool)

(assert (=> b!2753217 (= e!1735895 lt!974827)))

(declare-fun bm!178051 () Bool)

(assert (=> bm!178051 (= call!178056 (size!24635 lt!974827))))

(declare-fun b!2753218 () Bool)

(declare-fun e!1735891 () Int)

(assert (=> b!2753218 (= e!1735893 e!1735891)))

(declare-fun c!445536 () Bool)

(assert (=> b!2753218 (= c!445536 (>= 0 call!178056))))

(declare-fun b!2753219 () Bool)

(assert (=> b!2753219 (= e!1735891 (- call!178056 0))))

(declare-fun d!796850 () Bool)

(declare-fun e!1735892 () Bool)

(assert (=> d!796850 e!1735892))

(declare-fun res!1154075 () Bool)

(assert (=> d!796850 (=> (not res!1154075) (not e!1735892))))

(declare-fun lt!975051 () List!31968)

(assert (=> d!796850 (= res!1154075 (= ((_ map implies) (content!4488 lt!975051) (content!4488 lt!974827)) ((as const (InoxSet C!16268)) true)))))

(assert (=> d!796850 (= lt!975051 e!1735894)))

(declare-fun c!445535 () Bool)

(assert (=> d!796850 (= c!445535 ((_ is Nil!31868) lt!974827))))

(assert (=> d!796850 (= (drop!1686 lt!974827 0) lt!975051)))

(declare-fun b!2753220 () Bool)

(assert (=> b!2753220 (= e!1735894 e!1735895)))

(declare-fun c!445538 () Bool)

(assert (=> b!2753220 (= c!445538 (<= 0 0))))

(declare-fun b!2753221 () Bool)

(assert (=> b!2753221 (= e!1735892 (= (size!24635 lt!975051) e!1735893))))

(declare-fun c!445537 () Bool)

(assert (=> b!2753221 (= c!445537 (<= 0 0))))

(declare-fun b!2753222 () Bool)

(assert (=> b!2753222 (= e!1735891 0)))

(assert (= (and d!796850 c!445535) b!2753215))

(assert (= (and d!796850 (not c!445535)) b!2753220))

(assert (= (and b!2753220 c!445538) b!2753217))

(assert (= (and b!2753220 (not c!445538)) b!2753216))

(assert (= (and d!796850 res!1154075) b!2753221))

(assert (= (and b!2753221 c!445537) b!2753214))

(assert (= (and b!2753221 (not c!445537)) b!2753218))

(assert (= (and b!2753218 c!445536) b!2753222))

(assert (= (and b!2753218 (not c!445536)) b!2753219))

(assert (= (or b!2753214 b!2753218 b!2753219) bm!178051))

(declare-fun m!3168587 () Bool)

(assert (=> b!2753216 m!3168587))

(assert (=> bm!178051 m!3168329))

(declare-fun m!3168589 () Bool)

(assert (=> d!796850 m!3168589))

(declare-fun m!3168591 () Bool)

(assert (=> d!796850 m!3168591))

(declare-fun m!3168593 () Bool)

(assert (=> b!2753221 m!3168593))

(assert (=> b!2753074 d!796850))

(declare-fun d!796852 () Bool)

(declare-fun lt!975054 () C!16268)

(assert (=> d!796852 (= lt!975054 (apply!7451 (list!12039 input!5495) 0))))

(declare-fun apply!7452 (Conc!9937 Int) C!16268)

(assert (=> d!796852 (= lt!975054 (apply!7452 (c!445491 input!5495) 0))))

(declare-fun e!1735898 () Bool)

(assert (=> d!796852 e!1735898))

(declare-fun res!1154078 () Bool)

(assert (=> d!796852 (=> (not res!1154078) (not e!1735898))))

(assert (=> d!796852 (= res!1154078 (<= 0 0))))

(assert (=> d!796852 (= (apply!7450 input!5495 0) lt!975054)))

(declare-fun b!2753225 () Bool)

(assert (=> b!2753225 (= e!1735898 (< 0 (size!24636 input!5495)))))

(assert (= (and d!796852 res!1154078) b!2753225))

(assert (=> d!796852 m!3168227))

(assert (=> d!796852 m!3168227))

(declare-fun m!3168595 () Bool)

(assert (=> d!796852 m!3168595))

(declare-fun m!3168597 () Bool)

(assert (=> d!796852 m!3168597))

(assert (=> b!2753225 m!3168245))

(assert (=> b!2753074 d!796852))

(declare-fun d!796854 () Bool)

(declare-fun lt!975055 () Int)

(assert (=> d!796854 (>= lt!975055 0)))

(declare-fun e!1735899 () Int)

(assert (=> d!796854 (= lt!975055 e!1735899)))

(declare-fun c!445539 () Bool)

(assert (=> d!796854 (= c!445539 ((_ is Nil!31868) lt!974827))))

(assert (=> d!796854 (= (size!24635 lt!974827) lt!975055)))

(declare-fun b!2753226 () Bool)

(assert (=> b!2753226 (= e!1735899 0)))

(declare-fun b!2753227 () Bool)

(assert (=> b!2753227 (= e!1735899 (+ 1 (size!24635 (t!228072 lt!974827))))))

(assert (= (and d!796854 c!445539) b!2753226))

(assert (= (and d!796854 (not c!445539)) b!2753227))

(declare-fun m!3168599 () Bool)

(assert (=> b!2753227 m!3168599))

(assert (=> b!2753074 d!796854))

(declare-fun d!796856 () Bool)

(assert (=> d!796856 (<= (size!24635 Nil!31868) (size!24635 lt!974827))))

(declare-fun lt!975058 () Unit!45648)

(declare-fun choose!16121 (List!31968 List!31968) Unit!45648)

(assert (=> d!796856 (= lt!975058 (choose!16121 Nil!31868 lt!974827))))

(assert (=> d!796856 (isPrefix!2531 Nil!31868 lt!974827)))

(assert (=> d!796856 (= (lemmaIsPrefixThenSmallerEqSize!239 Nil!31868 lt!974827) lt!975058)))

(declare-fun bs!490494 () Bool)

(assert (= bs!490494 d!796856))

(assert (=> bs!490494 m!3168283))

(assert (=> bs!490494 m!3168329))

(declare-fun m!3168601 () Bool)

(assert (=> bs!490494 m!3168601))

(assert (=> bs!490494 m!3168515))

(assert (=> b!2753074 d!796856))

(assert (=> b!2753074 d!796810))

(declare-fun d!796858 () Bool)

(declare-fun e!1735902 () Bool)

(assert (=> d!796858 e!1735902))

(declare-fun res!1154083 () Bool)

(assert (=> d!796858 (=> (not res!1154083) (not e!1735902))))

(declare-fun lt!975061 () tuple3!4634)

(assert (=> d!796858 (= res!1154083 (valid!2886 (_2!18724 lt!975061)))))

(declare-fun choose!16122 (CacheUp!2330 CacheDown!2450 (InoxSet Context!4546) List!31968 Int List!31968 BalanceConc!19488 Int) tuple3!4634)

(assert (=> d!796858 (= lt!975061 (choose!16122 (_2!18724 lt!974810) (_3!2787 lt!974810) z!3597 Nil!31868 0 lt!974827 input!5495 lt!974836))))

(assert (=> d!796858 (= (++!7891 Nil!31868 lt!974827) (list!12039 input!5495))))

(assert (=> d!796858 (= (findLongestMatchInnerZipperFastMem!11 (_2!18724 lt!974810) (_3!2787 lt!974810) z!3597 Nil!31868 0 lt!974827 input!5495 lt!974836) lt!975061)))

(declare-fun b!2753232 () Bool)

(declare-fun res!1154084 () Bool)

(assert (=> b!2753232 (=> (not res!1154084) (not e!1735902))))

(assert (=> b!2753232 (= res!1154084 (valid!2887 (_3!2787 lt!975061)))))

(declare-fun b!2753233 () Bool)

(assert (=> b!2753233 (= e!1735902 (= (_1!18724 lt!975061) (findLongestMatchInnerZipperFast!13 z!3597 Nil!31868 0 lt!974827 input!5495 lt!974836)))))

(assert (= (and d!796858 res!1154083) b!2753232))

(assert (= (and b!2753232 res!1154084) b!2753233))

(declare-fun m!3168603 () Bool)

(assert (=> d!796858 m!3168603))

(declare-fun m!3168605 () Bool)

(assert (=> d!796858 m!3168605))

(assert (=> d!796858 m!3168251))

(assert (=> d!796858 m!3168227))

(declare-fun m!3168607 () Bool)

(assert (=> b!2753232 m!3168607))

(assert (=> b!2753233 m!3168247))

(assert (=> b!2753075 d!796858))

(declare-fun b!2753234 () Bool)

(declare-fun e!1735904 () List!31968)

(assert (=> b!2753234 (= e!1735904 lt!974827)))

(declare-fun b!2753236 () Bool)

(declare-fun res!1154085 () Bool)

(declare-fun e!1735903 () Bool)

(assert (=> b!2753236 (=> (not res!1154085) (not e!1735903))))

(declare-fun lt!975062 () List!31968)

(assert (=> b!2753236 (= res!1154085 (= (size!24635 lt!975062) (+ (size!24635 Nil!31868) (size!24635 lt!974827))))))

(declare-fun b!2753235 () Bool)

(assert (=> b!2753235 (= e!1735904 (Cons!31868 (h!37288 Nil!31868) (++!7891 (t!228072 Nil!31868) lt!974827)))))

(declare-fun d!796860 () Bool)

(assert (=> d!796860 e!1735903))

(declare-fun res!1154086 () Bool)

(assert (=> d!796860 (=> (not res!1154086) (not e!1735903))))

(assert (=> d!796860 (= res!1154086 (= (content!4488 lt!975062) ((_ map or) (content!4488 Nil!31868) (content!4488 lt!974827))))))

(assert (=> d!796860 (= lt!975062 e!1735904)))

(declare-fun c!445540 () Bool)

(assert (=> d!796860 (= c!445540 ((_ is Nil!31868) Nil!31868))))

(assert (=> d!796860 (= (++!7891 Nil!31868 lt!974827) lt!975062)))

(declare-fun b!2753237 () Bool)

(assert (=> b!2753237 (= e!1735903 (or (not (= lt!974827 Nil!31868)) (= lt!975062 Nil!31868)))))

(assert (= (and d!796860 c!445540) b!2753234))

(assert (= (and d!796860 (not c!445540)) b!2753235))

(assert (= (and d!796860 res!1154086) b!2753236))

(assert (= (and b!2753236 res!1154085) b!2753237))

(declare-fun m!3168609 () Bool)

(assert (=> b!2753236 m!3168609))

(assert (=> b!2753236 m!3168283))

(assert (=> b!2753236 m!3168329))

(declare-fun m!3168611 () Bool)

(assert (=> b!2753235 m!3168611))

(declare-fun m!3168613 () Bool)

(assert (=> d!796860 m!3168613))

(assert (=> d!796860 m!3168507))

(assert (=> d!796860 m!3168591))

(assert (=> b!2753075 d!796860))

(declare-fun d!796862 () Bool)

(declare-fun lt!975065 () List!31968)

(assert (=> d!796862 (= (++!7891 Nil!31868 lt!975065) lt!974827)))

(declare-fun e!1735907 () List!31968)

(assert (=> d!796862 (= lt!975065 e!1735907)))

(declare-fun c!445543 () Bool)

(assert (=> d!796862 (= c!445543 ((_ is Cons!31868) Nil!31868))))

(assert (=> d!796862 (>= (size!24635 lt!974827) (size!24635 Nil!31868))))

(assert (=> d!796862 (= (getSuffix!1217 lt!974827 Nil!31868) lt!975065)))

(declare-fun b!2753242 () Bool)

(assert (=> b!2753242 (= e!1735907 (getSuffix!1217 (tail!4365 lt!974827) (t!228072 Nil!31868)))))

(declare-fun b!2753243 () Bool)

(assert (=> b!2753243 (= e!1735907 lt!974827)))

(assert (= (and d!796862 c!445543) b!2753242))

(assert (= (and d!796862 (not c!445543)) b!2753243))

(declare-fun m!3168615 () Bool)

(assert (=> d!796862 m!3168615))

(assert (=> d!796862 m!3168329))

(assert (=> d!796862 m!3168283))

(assert (=> b!2753242 m!3168299))

(assert (=> b!2753242 m!3168299))

(declare-fun m!3168617 () Bool)

(assert (=> b!2753242 m!3168617))

(assert (=> b!2753075 d!796862))

(declare-fun bs!490495 () Bool)

(declare-fun b!2753248 () Bool)

(declare-fun d!796864 () Bool)

(assert (= bs!490495 (and b!2753248 d!796864)))

(declare-fun lambda!100958 () Int)

(declare-fun lambda!100957 () Int)

(assert (=> bs!490495 (not (= lambda!100958 lambda!100957))))

(declare-fun bs!490496 () Bool)

(declare-fun b!2753249 () Bool)

(assert (= bs!490496 (and b!2753249 d!796864)))

(declare-fun lambda!100959 () Int)

(assert (=> bs!490496 (not (= lambda!100959 lambda!100957))))

(declare-fun bs!490497 () Bool)

(assert (= bs!490497 (and b!2753249 b!2753248)))

(assert (=> bs!490497 (= lambda!100959 lambda!100958)))

(declare-fun e!1735914 () Unit!45648)

(declare-fun Unit!45660 () Unit!45648)

(assert (=> b!2753248 (= e!1735914 Unit!45660)))

(declare-datatypes ((List!31972 0))(
  ( (Nil!31872) (Cons!31872 (h!37292 Context!4546) (t!228076 List!31972)) )
))
(declare-fun lt!975087 () List!31972)

(declare-fun call!178061 () List!31972)

(assert (=> b!2753248 (= lt!975087 call!178061)))

(declare-fun lt!975085 () Unit!45648)

(declare-fun lemmaNotForallThenExists!73 (List!31972 Int) Unit!45648)

(assert (=> b!2753248 (= lt!975085 (lemmaNotForallThenExists!73 lt!975087 lambda!100957))))

(declare-fun call!178062 () Bool)

(assert (=> b!2753248 call!178062))

(declare-fun lt!975084 () Unit!45648)

(assert (=> b!2753248 (= lt!975084 lt!975085)))

(declare-fun bm!178057 () Bool)

(declare-fun toList!1818 ((InoxSet Context!4546)) List!31972)

(assert (=> bm!178057 (= call!178061 (toList!1818 z!3597))))

(declare-fun lt!975083 () Bool)

(declare-datatypes ((Option!6251 0))(
  ( (None!6250) (Some!6250 (v!33482 List!31968)) )
))
(declare-fun isEmpty!18066 (Option!6251) Bool)

(declare-fun getLanguageWitness!172 ((InoxSet Context!4546)) Option!6251)

(assert (=> d!796864 (= lt!975083 (isEmpty!18066 (getLanguageWitness!172 z!3597)))))

(declare-fun forall!6590 ((InoxSet Context!4546) Int) Bool)

(assert (=> d!796864 (= lt!975083 (forall!6590 z!3597 lambda!100957))))

(declare-fun lt!975088 () Unit!45648)

(assert (=> d!796864 (= lt!975088 e!1735914)))

(declare-fun c!445554 () Bool)

(assert (=> d!796864 (= c!445554 (not (forall!6590 z!3597 lambda!100957)))))

(assert (=> d!796864 (= (lostCauseZipper!421 z!3597) lt!975083)))

(declare-fun bm!178056 () Bool)

(declare-fun lt!975089 () List!31972)

(declare-fun exists!951 (List!31972 Int) Bool)

(assert (=> bm!178056 (= call!178062 (exists!951 (ite c!445554 lt!975087 lt!975089) (ite c!445554 lambda!100958 lambda!100959)))))

(declare-fun Unit!45661 () Unit!45648)

(assert (=> b!2753249 (= e!1735914 Unit!45661)))

(assert (=> b!2753249 (= lt!975089 call!178061)))

(declare-fun lt!975082 () Unit!45648)

(declare-fun lemmaForallThenNotExists!73 (List!31972 Int) Unit!45648)

(assert (=> b!2753249 (= lt!975082 (lemmaForallThenNotExists!73 lt!975089 lambda!100957))))

(assert (=> b!2753249 (not call!178062)))

(declare-fun lt!975086 () Unit!45648)

(assert (=> b!2753249 (= lt!975086 lt!975082)))

(assert (= (and d!796864 c!445554) b!2753248))

(assert (= (and d!796864 (not c!445554)) b!2753249))

(assert (= (or b!2753248 b!2753249) bm!178056))

(assert (= (or b!2753248 b!2753249) bm!178057))

(declare-fun m!3168619 () Bool)

(assert (=> b!2753249 m!3168619))

(declare-fun m!3168621 () Bool)

(assert (=> bm!178057 m!3168621))

(declare-fun m!3168623 () Bool)

(assert (=> b!2753248 m!3168623))

(declare-fun m!3168625 () Bool)

(assert (=> d!796864 m!3168625))

(assert (=> d!796864 m!3168625))

(declare-fun m!3168627 () Bool)

(assert (=> d!796864 m!3168627))

(declare-fun m!3168629 () Bool)

(assert (=> d!796864 m!3168629))

(assert (=> d!796864 m!3168629))

(declare-fun m!3168631 () Bool)

(assert (=> bm!178056 m!3168631))

(assert (=> b!2753075 d!796864))

(declare-fun d!796866 () Bool)

(assert (=> d!796866 (= (list!12039 input!5495) (list!12040 (c!445491 input!5495)))))

(declare-fun bs!490498 () Bool)

(assert (= bs!490498 d!796866))

(declare-fun m!3168633 () Bool)

(assert (=> bs!490498 m!3168633))

(assert (=> b!2753075 d!796866))

(declare-fun d!796868 () Bool)

(declare-fun lt!975092 () Int)

(assert (=> d!796868 (= lt!975092 (size!24635 (list!12039 input!5495)))))

(declare-fun size!24637 (Conc!9937) Int)

(assert (=> d!796868 (= lt!975092 (size!24637 (c!445491 input!5495)))))

(assert (=> d!796868 (= (size!24636 input!5495) lt!975092)))

(declare-fun bs!490499 () Bool)

(assert (= bs!490499 d!796868))

(assert (=> bs!490499 m!3168227))

(assert (=> bs!490499 m!3168227))

(declare-fun m!3168635 () Bool)

(assert (=> bs!490499 m!3168635))

(declare-fun m!3168637 () Bool)

(assert (=> bs!490499 m!3168637))

(assert (=> b!2753075 d!796868))

(declare-fun d!796870 () Bool)

(declare-fun e!1735915 () Bool)

(assert (=> d!796870 e!1735915))

(declare-fun res!1154087 () Bool)

(assert (=> d!796870 (=> (not res!1154087) (not e!1735915))))

(declare-fun lt!975093 () tuple3!4634)

(assert (=> d!796870 (= res!1154087 (valid!2886 (_2!18724 lt!975093)))))

(assert (=> d!796870 (= lt!975093 (choose!16122 cacheUp!820 cacheDown!939 z!3597 Nil!31868 0 lt!974827 input!5495 lt!974836))))

(assert (=> d!796870 (= (++!7891 Nil!31868 lt!974827) (list!12039 input!5495))))

(assert (=> d!796870 (= (findLongestMatchInnerZipperFastMem!11 cacheUp!820 cacheDown!939 z!3597 Nil!31868 0 lt!974827 input!5495 lt!974836) lt!975093)))

(declare-fun b!2753250 () Bool)

(declare-fun res!1154088 () Bool)

(assert (=> b!2753250 (=> (not res!1154088) (not e!1735915))))

(assert (=> b!2753250 (= res!1154088 (valid!2887 (_3!2787 lt!975093)))))

(declare-fun b!2753251 () Bool)

(assert (=> b!2753251 (= e!1735915 (= (_1!18724 lt!975093) (findLongestMatchInnerZipperFast!13 z!3597 Nil!31868 0 lt!974827 input!5495 lt!974836)))))

(assert (= (and d!796870 res!1154087) b!2753250))

(assert (= (and b!2753250 res!1154088) b!2753251))

(declare-fun m!3168639 () Bool)

(assert (=> d!796870 m!3168639))

(declare-fun m!3168641 () Bool)

(assert (=> d!796870 m!3168641))

(assert (=> d!796870 m!3168251))

(assert (=> d!796870 m!3168227))

(declare-fun m!3168643 () Bool)

(assert (=> b!2753250 m!3168643))

(assert (=> b!2753251 m!3168247))

(assert (=> b!2753075 d!796870))

(declare-fun b!2753255 () Bool)

(declare-fun e!1735918 () Bool)

(assert (=> b!2753255 (= e!1735918 (>= (size!24635 lt!974844) (size!24635 Nil!31868)))))

(declare-fun b!2753252 () Bool)

(declare-fun e!1735916 () Bool)

(declare-fun e!1735917 () Bool)

(assert (=> b!2753252 (= e!1735916 e!1735917)))

(declare-fun res!1154091 () Bool)

(assert (=> b!2753252 (=> (not res!1154091) (not e!1735917))))

(assert (=> b!2753252 (= res!1154091 (not ((_ is Nil!31868) lt!974844)))))

(declare-fun b!2753254 () Bool)

(assert (=> b!2753254 (= e!1735917 (isPrefix!2531 (tail!4365 Nil!31868) (tail!4365 lt!974844)))))

(declare-fun b!2753253 () Bool)

(declare-fun res!1154090 () Bool)

(assert (=> b!2753253 (=> (not res!1154090) (not e!1735917))))

(assert (=> b!2753253 (= res!1154090 (= (head!6127 Nil!31868) (head!6127 lt!974844)))))

(declare-fun d!796872 () Bool)

(assert (=> d!796872 e!1735918))

(declare-fun res!1154092 () Bool)

(assert (=> d!796872 (=> res!1154092 e!1735918)))

(declare-fun lt!975094 () Bool)

(assert (=> d!796872 (= res!1154092 (not lt!975094))))

(assert (=> d!796872 (= lt!975094 e!1735916)))

(declare-fun res!1154089 () Bool)

(assert (=> d!796872 (=> res!1154089 e!1735916)))

(assert (=> d!796872 (= res!1154089 ((_ is Nil!31868) Nil!31868))))

(assert (=> d!796872 (= (isPrefix!2531 Nil!31868 lt!974844) lt!975094)))

(assert (= (and d!796872 (not res!1154089)) b!2753252))

(assert (= (and b!2753252 res!1154091) b!2753253))

(assert (= (and b!2753253 res!1154090) b!2753254))

(assert (= (and d!796872 (not res!1154092)) b!2753255))

(declare-fun m!3168645 () Bool)

(assert (=> b!2753255 m!3168645))

(assert (=> b!2753255 m!3168283))

(declare-fun m!3168647 () Bool)

(assert (=> b!2753254 m!3168647))

(declare-fun m!3168649 () Bool)

(assert (=> b!2753254 m!3168649))

(assert (=> b!2753254 m!3168647))

(assert (=> b!2753254 m!3168649))

(declare-fun m!3168651 () Bool)

(assert (=> b!2753254 m!3168651))

(declare-fun m!3168653 () Bool)

(assert (=> b!2753253 m!3168653))

(declare-fun m!3168655 () Bool)

(assert (=> b!2753253 m!3168655))

(assert (=> b!2753075 d!796872))

(declare-fun bm!178058 () Bool)

(declare-fun call!178065 () C!16268)

(assert (=> bm!178058 (= call!178065 (apply!7450 input!5495 0))))

(declare-fun b!2753257 () Bool)

(declare-fun e!1735919 () Int)

(declare-fun call!178068 () Int)

(assert (=> b!2753257 (= e!1735919 call!178068)))

(declare-fun b!2753258 () Bool)

(declare-fun lt!975131 () Int)

(assert (=> b!2753258 (= e!1735919 (ite (= lt!975131 0) 0 lt!975131))))

(assert (=> b!2753258 (= lt!975131 call!178068)))

(declare-fun b!2753259 () Bool)

(declare-fun e!1735924 () Int)

(declare-fun e!1735922 () Int)

(assert (=> b!2753259 (= e!1735924 e!1735922)))

(declare-fun c!445560 () Bool)

(assert (=> b!2753259 (= c!445560 (= 0 lt!974836))))

(declare-fun bm!178059 () Bool)

(declare-fun lt!975096 () List!31968)

(declare-fun lt!975134 () List!31968)

(declare-fun call!178066 () Unit!45648)

(declare-fun lt!975106 () List!31968)

(declare-fun lt!975121 () List!31968)

(assert (=> bm!178059 (= call!178066 (lemmaIsPrefixRefl!1657 (ite c!445560 lt!975106 lt!975096) (ite c!445560 lt!975134 lt!975121)))))

(declare-fun bm!178060 () Bool)

(declare-fun call!178064 () List!31968)

(assert (=> bm!178060 (= call!178064 (tail!4365 lt!974827))))

(declare-fun bm!178061 () Bool)

(declare-fun c!445558 () Bool)

(assert (=> bm!178061 (= c!445558 c!445560)))

(declare-fun lt!975130 () List!31968)

(declare-fun lt!975120 () List!31968)

(declare-fun e!1735921 () List!31968)

(declare-fun call!178069 () Unit!45648)

(assert (=> bm!178061 (= call!178069 (lemmaIsPrefixSameLengthThenSameList!438 (ite c!445560 lt!975120 lt!975130) Nil!31868 e!1735921))))

(declare-fun bm!178062 () Bool)

(declare-fun call!178072 () List!31968)

(assert (=> bm!178062 (= call!178072 (++!7891 Nil!31868 (Cons!31868 call!178065 Nil!31868)))))

(declare-fun b!2753260 () Bool)

(assert (=> b!2753260 (= e!1735921 (list!12039 input!5495))))

(declare-fun bm!178063 () Bool)

(declare-fun call!178063 () Bool)

(assert (=> bm!178063 (= call!178063 (nullableZipper!610 z!3597))))

(declare-fun b!2753261 () Bool)

(declare-fun e!1735923 () Int)

(assert (=> b!2753261 (= e!1735923 0)))

(declare-fun b!2753262 () Bool)

(declare-fun e!1735920 () Unit!45648)

(declare-fun Unit!45662 () Unit!45648)

(assert (=> b!2753262 (= e!1735920 Unit!45662)))

(declare-fun b!2753263 () Bool)

(declare-fun c!445555 () Bool)

(assert (=> b!2753263 (= c!445555 call!178063)))

(declare-fun lt!975098 () Unit!45648)

(declare-fun lt!975132 () Unit!45648)

(assert (=> b!2753263 (= lt!975098 lt!975132)))

(assert (=> b!2753263 (= lt!975120 Nil!31868)))

(assert (=> b!2753263 (= lt!975132 call!178069)))

(declare-fun call!178071 () List!31968)

(assert (=> b!2753263 (= lt!975120 call!178071)))

(declare-fun lt!975112 () Unit!45648)

(declare-fun lt!975119 () Unit!45648)

(assert (=> b!2753263 (= lt!975112 lt!975119)))

(declare-fun call!178067 () Bool)

(assert (=> b!2753263 call!178067))

(assert (=> b!2753263 (= lt!975119 call!178066)))

(assert (=> b!2753263 (= lt!975134 call!178071)))

(assert (=> b!2753263 (= lt!975106 call!178071)))

(assert (=> b!2753263 (= e!1735922 e!1735923)))

(declare-fun b!2753264 () Bool)

(assert (=> b!2753264 (= e!1735921 call!178071)))

(declare-fun d!796874 () Bool)

(declare-fun lt!975128 () Int)

(assert (=> d!796874 (= (size!24635 (_1!18728 (findLongestMatchInnerZipper!4 z!3597 Nil!31868 0 lt!974827 (list!12039 input!5495) lt!974836))) lt!975128)))

(assert (=> d!796874 (= lt!975128 e!1735924)))

(declare-fun c!445556 () Bool)

(assert (=> d!796874 (= c!445556 (lostCauseZipper!421 z!3597))))

(declare-fun lt!975104 () Unit!45648)

(declare-fun Unit!45663 () Unit!45648)

(assert (=> d!796874 (= lt!975104 Unit!45663)))

(assert (=> d!796874 (= (getSuffix!1217 (list!12039 input!5495) Nil!31868) lt!974827)))

(declare-fun lt!975105 () Unit!45648)

(declare-fun lt!975117 () Unit!45648)

(assert (=> d!796874 (= lt!975105 lt!975117)))

(declare-fun lt!975114 () List!31968)

(assert (=> d!796874 (= lt!974827 lt!975114)))

(assert (=> d!796874 (= lt!975117 (lemmaSamePrefixThenSameSuffix!1119 Nil!31868 lt!974827 Nil!31868 lt!975114 (list!12039 input!5495)))))

(assert (=> d!796874 (= lt!975114 (getSuffix!1217 (list!12039 input!5495) Nil!31868))))

(declare-fun lt!975095 () Unit!45648)

(declare-fun lt!975122 () Unit!45648)

(assert (=> d!796874 (= lt!975095 lt!975122)))

(assert (=> d!796874 (isPrefix!2531 Nil!31868 (++!7891 Nil!31868 lt!974827))))

(assert (=> d!796874 (= lt!975122 (lemmaConcatTwoListThenFirstIsPrefix!1645 Nil!31868 lt!974827))))

(assert (=> d!796874 (= (++!7891 Nil!31868 lt!974827) (list!12039 input!5495))))

(assert (=> d!796874 (= (findLongestMatchInnerZipperFast!13 z!3597 Nil!31868 0 lt!974827 input!5495 lt!974836) lt!975128)))

(declare-fun b!2753256 () Bool)

(assert (=> b!2753256 (= e!1735923 0)))

(declare-fun b!2753265 () Bool)

(declare-fun Unit!45664 () Unit!45648)

(assert (=> b!2753265 (= e!1735920 Unit!45664)))

(assert (=> b!2753265 (= lt!975096 (list!12039 input!5495))))

(assert (=> b!2753265 (= lt!975121 (list!12039 input!5495))))

(declare-fun lt!975111 () Unit!45648)

(assert (=> b!2753265 (= lt!975111 call!178066)))

(assert (=> b!2753265 call!178067))

(declare-fun lt!975136 () Unit!45648)

(assert (=> b!2753265 (= lt!975136 lt!975111)))

(assert (=> b!2753265 (= lt!975130 (list!12039 input!5495))))

(declare-fun lt!975103 () Unit!45648)

(assert (=> b!2753265 (= lt!975103 call!178069)))

(assert (=> b!2753265 (= lt!975130 Nil!31868)))

(declare-fun lt!975125 () Unit!45648)

(assert (=> b!2753265 (= lt!975125 lt!975103)))

(assert (=> b!2753265 false))

(declare-fun lt!975113 () tuple2!31874)

(declare-fun bm!178064 () Bool)

(assert (=> bm!178064 (= call!178071 (list!12039 (ite c!445560 input!5495 (_2!18725 lt!975113))))))

(declare-fun b!2753266 () Bool)

(declare-fun c!445559 () Bool)

(assert (=> b!2753266 (= c!445559 call!178063)))

(declare-fun lt!975135 () Unit!45648)

(declare-fun lt!975127 () Unit!45648)

(assert (=> b!2753266 (= lt!975135 lt!975127)))

(declare-fun lt!975101 () C!16268)

(declare-fun lt!975109 () List!31968)

(declare-fun lt!975133 () List!31968)

(assert (=> b!2753266 (= (++!7891 (++!7891 Nil!31868 (Cons!31868 lt!975101 Nil!31868)) lt!975109) lt!975133)))

(assert (=> b!2753266 (= lt!975127 (lemmaMoveElementToOtherListKeepsConcatEq!848 Nil!31868 lt!975101 lt!975109 lt!975133))))

(assert (=> b!2753266 (= lt!975133 (list!12039 input!5495))))

(assert (=> b!2753266 (= lt!975109 (tail!4365 lt!974827))))

(assert (=> b!2753266 (= lt!975101 (apply!7450 input!5495 0))))

(declare-fun lt!975097 () Unit!45648)

(declare-fun lt!975118 () Unit!45648)

(assert (=> b!2753266 (= lt!975097 lt!975118)))

(declare-fun lt!975102 () List!31968)

(assert (=> b!2753266 (isPrefix!2531 (++!7891 Nil!31868 (Cons!31868 (head!6127 (getSuffix!1217 lt!975102 Nil!31868)) Nil!31868)) lt!975102)))

(assert (=> b!2753266 (= lt!975118 (lemmaAddHeadSuffixToPrefixStillPrefix!436 Nil!31868 lt!975102))))

(assert (=> b!2753266 (= lt!975102 (list!12039 input!5495))))

(declare-fun lt!975116 () Unit!45648)

(assert (=> b!2753266 (= lt!975116 e!1735920)))

(declare-fun c!445557 () Bool)

(assert (=> b!2753266 (= c!445557 (= (size!24635 Nil!31868) (size!24636 input!5495)))))

(declare-fun lt!975100 () Unit!45648)

(declare-fun lt!975129 () Unit!45648)

(assert (=> b!2753266 (= lt!975100 lt!975129)))

(declare-fun lt!975124 () List!31968)

(assert (=> b!2753266 (<= (size!24635 Nil!31868) (size!24635 lt!975124))))

(assert (=> b!2753266 (= lt!975129 (lemmaIsPrefixThenSmallerEqSize!239 Nil!31868 lt!975124))))

(assert (=> b!2753266 (= lt!975124 (list!12039 input!5495))))

(declare-fun lt!975126 () Unit!45648)

(declare-fun lt!975123 () Unit!45648)

(assert (=> b!2753266 (= lt!975126 lt!975123)))

(declare-fun lt!975108 () List!31968)

(assert (=> b!2753266 (= (head!6127 (drop!1686 lt!975108 0)) (apply!7451 lt!975108 0))))

(assert (=> b!2753266 (= lt!975123 (lemmaDropApply!892 lt!975108 0))))

(assert (=> b!2753266 (= lt!975108 (list!12039 input!5495))))

(declare-fun lt!975099 () Unit!45648)

(declare-fun lt!975110 () Unit!45648)

(assert (=> b!2753266 (= lt!975099 lt!975110)))

(declare-fun lt!975115 () List!31968)

(declare-fun lt!975107 () List!31968)

(assert (=> b!2753266 (and (= lt!975115 Nil!31868) (= lt!975107 lt!974827))))

(assert (=> b!2753266 (= lt!975110 (lemmaConcatSameAndSameSizesThenSameLists!318 lt!975115 lt!975107 Nil!31868 lt!974827))))

(assert (=> b!2753266 (= lt!975107 call!178071)))

(assert (=> b!2753266 (= lt!975115 (list!12039 (_1!18725 lt!975113)))))

(assert (=> b!2753266 (= lt!975113 (splitAt!84 input!5495 0))))

(assert (=> b!2753266 (= e!1735922 e!1735919)))

(declare-fun b!2753267 () Bool)

(assert (=> b!2753267 (= e!1735924 0)))

(declare-fun bm!178065 () Bool)

(declare-fun call!178070 () (InoxSet Context!4546))

(assert (=> bm!178065 (= call!178070 (derivationStepZipper!347 z!3597 call!178065))))

(declare-fun bm!178066 () Bool)

(assert (=> bm!178066 (= call!178068 (findLongestMatchInnerZipperFast!13 call!178070 call!178072 (+ 0 1) call!178064 input!5495 lt!974836))))

(declare-fun bm!178067 () Bool)

(assert (=> bm!178067 (= call!178067 (isPrefix!2531 (ite c!445560 lt!975106 lt!975096) (ite c!445560 lt!975134 lt!975121)))))

(assert (= (and d!796874 c!445556) b!2753267))

(assert (= (and d!796874 (not c!445556)) b!2753259))

(assert (= (and b!2753259 c!445560) b!2753263))

(assert (= (and b!2753259 (not c!445560)) b!2753266))

(assert (= (and b!2753263 c!445555) b!2753261))

(assert (= (and b!2753263 (not c!445555)) b!2753256))

(assert (= (and b!2753266 c!445557) b!2753265))

(assert (= (and b!2753266 (not c!445557)) b!2753262))

(assert (= (and b!2753266 c!445559) b!2753258))

(assert (= (and b!2753266 (not c!445559)) b!2753257))

(assert (= (or b!2753258 b!2753257) bm!178060))

(assert (= (or b!2753258 b!2753257) bm!178058))

(assert (= (or b!2753258 b!2753257) bm!178062))

(assert (= (or b!2753258 b!2753257) bm!178065))

(assert (= (or b!2753258 b!2753257) bm!178066))

(assert (= (or b!2753263 b!2753266) bm!178063))

(assert (= (or b!2753263 b!2753266) bm!178064))

(assert (= (or b!2753263 b!2753265) bm!178059))

(assert (= (or b!2753263 b!2753265) bm!178067))

(assert (= (or b!2753263 b!2753265) bm!178061))

(assert (= (and bm!178061 c!445558) b!2753264))

(assert (= (and bm!178061 (not c!445558)) b!2753260))

(declare-fun m!3168657 () Bool)

(assert (=> bm!178065 m!3168657))

(assert (=> bm!178060 m!3168299))

(declare-fun m!3168659 () Bool)

(assert (=> bm!178059 m!3168659))

(declare-fun m!3168661 () Bool)

(assert (=> bm!178067 m!3168661))

(declare-fun m!3168663 () Bool)

(assert (=> bm!178061 m!3168663))

(assert (=> bm!178058 m!3168321))

(declare-fun m!3168665 () Bool)

(assert (=> bm!178064 m!3168665))

(assert (=> b!2753265 m!3168227))

(assert (=> d!796874 m!3168249))

(assert (=> d!796874 m!3168227))

(declare-fun m!3168667 () Bool)

(assert (=> d!796874 m!3168667))

(assert (=> d!796874 m!3168251))

(declare-fun m!3168669 () Bool)

(assert (=> d!796874 m!3168669))

(assert (=> d!796874 m!3168243))

(declare-fun m!3168671 () Bool)

(assert (=> d!796874 m!3168671))

(assert (=> d!796874 m!3168227))

(declare-fun m!3168673 () Bool)

(assert (=> d!796874 m!3168673))

(assert (=> d!796874 m!3168227))

(declare-fun m!3168675 () Bool)

(assert (=> d!796874 m!3168675))

(assert (=> d!796874 m!3168251))

(assert (=> d!796874 m!3168227))

(assert (=> bm!178063 m!3168285))

(declare-fun m!3168677 () Bool)

(assert (=> bm!178066 m!3168677))

(declare-fun m!3168679 () Bool)

(assert (=> bm!178062 m!3168679))

(assert (=> b!2753260 m!3168227))

(declare-fun m!3168681 () Bool)

(assert (=> b!2753266 m!3168681))

(assert (=> b!2753266 m!3168245))

(declare-fun m!3168683 () Bool)

(assert (=> b!2753266 m!3168683))

(declare-fun m!3168685 () Bool)

(assert (=> b!2753266 m!3168685))

(declare-fun m!3168687 () Bool)

(assert (=> b!2753266 m!3168687))

(declare-fun m!3168689 () Bool)

(assert (=> b!2753266 m!3168689))

(assert (=> b!2753266 m!3168299))

(declare-fun m!3168691 () Bool)

(assert (=> b!2753266 m!3168691))

(declare-fun m!3168693 () Bool)

(assert (=> b!2753266 m!3168693))

(assert (=> b!2753266 m!3168321))

(assert (=> b!2753266 m!3168691))

(declare-fun m!3168695 () Bool)

(assert (=> b!2753266 m!3168695))

(assert (=> b!2753266 m!3168227))

(declare-fun m!3168697 () Bool)

(assert (=> b!2753266 m!3168697))

(declare-fun m!3168699 () Bool)

(assert (=> b!2753266 m!3168699))

(declare-fun m!3168701 () Bool)

(assert (=> b!2753266 m!3168701))

(declare-fun m!3168703 () Bool)

(assert (=> b!2753266 m!3168703))

(assert (=> b!2753266 m!3168695))

(declare-fun m!3168705 () Bool)

(assert (=> b!2753266 m!3168705))

(declare-fun m!3168707 () Bool)

(assert (=> b!2753266 m!3168707))

(declare-fun m!3168709 () Bool)

(assert (=> b!2753266 m!3168709))

(assert (=> b!2753266 m!3168707))

(assert (=> b!2753266 m!3168301))

(declare-fun m!3168711 () Bool)

(assert (=> b!2753266 m!3168711))

(assert (=> b!2753266 m!3168283))

(assert (=> b!2753266 m!3168699))

(assert (=> b!2753075 d!796874))

(declare-fun d!796876 () Bool)

(assert (=> d!796876 (isPrefix!2531 Nil!31868 (++!7891 Nil!31868 lt!974827))))

(declare-fun lt!975139 () Unit!45648)

(declare-fun choose!16123 (List!31968 List!31968) Unit!45648)

(assert (=> d!796876 (= lt!975139 (choose!16123 Nil!31868 lt!974827))))

(assert (=> d!796876 (= (lemmaConcatTwoListThenFirstIsPrefix!1645 Nil!31868 lt!974827) lt!975139)))

(declare-fun bs!490500 () Bool)

(assert (= bs!490500 d!796876))

(assert (=> bs!490500 m!3168251))

(assert (=> bs!490500 m!3168251))

(assert (=> bs!490500 m!3168669))

(declare-fun m!3168713 () Bool)

(assert (=> bs!490500 m!3168713))

(assert (=> b!2753075 d!796876))

(declare-fun d!796878 () Bool)

(assert (=> d!796878 (= lt!974827 lt!974841)))

(declare-fun lt!975142 () Unit!45648)

(declare-fun choose!16124 (List!31968 List!31968 List!31968 List!31968 List!31968) Unit!45648)

(assert (=> d!796878 (= lt!975142 (choose!16124 Nil!31868 lt!974827 Nil!31868 lt!974841 lt!974827))))

(assert (=> d!796878 (isPrefix!2531 Nil!31868 lt!974827)))

(assert (=> d!796878 (= (lemmaSamePrefixThenSameSuffix!1119 Nil!31868 lt!974827 Nil!31868 lt!974841 lt!974827) lt!975142)))

(declare-fun bs!490501 () Bool)

(assert (= bs!490501 d!796878))

(declare-fun m!3168715 () Bool)

(assert (=> bs!490501 m!3168715))

(assert (=> bs!490501 m!3168515))

(assert (=> b!2753075 d!796878))

(declare-fun d!796880 () Bool)

(declare-fun validCacheMapUp!352 (MutableMap!3624) Bool)

(assert (=> d!796880 (= (valid!2886 (_2!18724 lt!974810)) (validCacheMapUp!352 (cache!3767 (_2!18724 lt!974810))))))

(declare-fun bs!490502 () Bool)

(assert (= bs!490502 d!796880))

(declare-fun m!3168717 () Bool)

(assert (=> bs!490502 m!3168717))

(assert (=> b!2753075 d!796880))

(declare-fun d!796882 () Bool)

(assert (=> d!796882 (= (valid!2886 (_2!18724 lt!974809)) (validCacheMapUp!352 (cache!3767 (_2!18724 lt!974809))))))

(declare-fun bs!490503 () Bool)

(assert (= bs!490503 d!796882))

(declare-fun m!3168719 () Bool)

(assert (=> bs!490503 m!3168719))

(assert (=> b!2753075 d!796882))

(declare-fun b!2753271 () Bool)

(declare-fun e!1735927 () Bool)

(assert (=> b!2753271 (= e!1735927 (>= (size!24635 lt!974827) (size!24635 lt!974827)))))

(declare-fun b!2753268 () Bool)

(declare-fun e!1735925 () Bool)

(declare-fun e!1735926 () Bool)

(assert (=> b!2753268 (= e!1735925 e!1735926)))

(declare-fun res!1154095 () Bool)

(assert (=> b!2753268 (=> (not res!1154095) (not e!1735926))))

(assert (=> b!2753268 (= res!1154095 (not ((_ is Nil!31868) lt!974827)))))

(declare-fun b!2753270 () Bool)

(assert (=> b!2753270 (= e!1735926 (isPrefix!2531 (tail!4365 lt!974827) (tail!4365 lt!974827)))))

(declare-fun b!2753269 () Bool)

(declare-fun res!1154094 () Bool)

(assert (=> b!2753269 (=> (not res!1154094) (not e!1735926))))

(assert (=> b!2753269 (= res!1154094 (= (head!6127 lt!974827) (head!6127 lt!974827)))))

(declare-fun d!796884 () Bool)

(assert (=> d!796884 e!1735927))

(declare-fun res!1154096 () Bool)

(assert (=> d!796884 (=> res!1154096 e!1735927)))

(declare-fun lt!975143 () Bool)

(assert (=> d!796884 (= res!1154096 (not lt!975143))))

(assert (=> d!796884 (= lt!975143 e!1735925)))

(declare-fun res!1154093 () Bool)

(assert (=> d!796884 (=> res!1154093 e!1735925)))

(assert (=> d!796884 (= res!1154093 ((_ is Nil!31868) lt!974827))))

(assert (=> d!796884 (= (isPrefix!2531 lt!974827 lt!974827) lt!975143)))

(assert (= (and d!796884 (not res!1154093)) b!2753268))

(assert (= (and b!2753268 res!1154095) b!2753269))

(assert (= (and b!2753269 res!1154094) b!2753270))

(assert (= (and d!796884 (not res!1154096)) b!2753271))

(assert (=> b!2753271 m!3168329))

(assert (=> b!2753271 m!3168329))

(assert (=> b!2753270 m!3168299))

(assert (=> b!2753270 m!3168299))

(assert (=> b!2753270 m!3168299))

(assert (=> b!2753270 m!3168299))

(declare-fun m!3168721 () Bool)

(assert (=> b!2753270 m!3168721))

(assert (=> b!2753269 m!3168529))

(assert (=> b!2753269 m!3168529))

(assert (=> bm!177999 d!796884))

(assert (=> b!2753049 d!796874))

(declare-fun d!796886 () Bool)

(declare-fun e!1735930 () Bool)

(assert (=> d!796886 e!1735930))

(declare-fun res!1154101 () Bool)

(assert (=> d!796886 (=> (not res!1154101) (not e!1735930))))

(declare-fun lt!975146 () tuple3!4638)

(assert (=> d!796886 (= res!1154101 (= (_1!18727 lt!975146) (derivationStepZipper!347 z!3597 lt!974819)))))

(declare-fun choose!16125 ((InoxSet Context!4546) C!16268 CacheUp!2330 CacheDown!2450) tuple3!4638)

(assert (=> d!796886 (= lt!975146 (choose!16125 z!3597 lt!974819 (_2!18724 lt!974810) (_3!2787 lt!974810)))))

(assert (=> d!796886 (= (derivationStepZipperMem!78 z!3597 lt!974819 (_2!18724 lt!974810) (_3!2787 lt!974810)) lt!975146)))

(declare-fun b!2753276 () Bool)

(declare-fun res!1154102 () Bool)

(assert (=> b!2753276 (=> (not res!1154102) (not e!1735930))))

(assert (=> b!2753276 (= res!1154102 (valid!2886 (_2!18727 lt!975146)))))

(declare-fun b!2753277 () Bool)

(assert (=> b!2753277 (= e!1735930 (valid!2887 (_3!2789 lt!975146)))))

(assert (= (and d!796886 res!1154101) b!2753276))

(assert (= (and b!2753276 res!1154102) b!2753277))

(declare-fun m!3168723 () Bool)

(assert (=> d!796886 m!3168723))

(declare-fun m!3168725 () Bool)

(assert (=> d!796886 m!3168725))

(declare-fun m!3168727 () Bool)

(assert (=> b!2753276 m!3168727))

(declare-fun m!3168729 () Bool)

(assert (=> b!2753277 m!3168729))

(assert (=> bm!178000 d!796886))

(declare-fun d!796888 () Bool)

(declare-fun c!445563 () Bool)

(assert (=> d!796888 (= c!445563 ((_ is Node!9937) (c!445491 input!5495)))))

(declare-fun e!1735935 () Bool)

(assert (=> d!796888 (= (inv!43274 (c!445491 input!5495)) e!1735935)))

(declare-fun b!2753284 () Bool)

(declare-fun inv!43279 (Conc!9937) Bool)

(assert (=> b!2753284 (= e!1735935 (inv!43279 (c!445491 input!5495)))))

(declare-fun b!2753285 () Bool)

(declare-fun e!1735936 () Bool)

(assert (=> b!2753285 (= e!1735935 e!1735936)))

(declare-fun res!1154105 () Bool)

(assert (=> b!2753285 (= res!1154105 (not ((_ is Leaf!15133) (c!445491 input!5495))))))

(assert (=> b!2753285 (=> res!1154105 e!1735936)))

(declare-fun b!2753286 () Bool)

(declare-fun inv!43280 (Conc!9937) Bool)

(assert (=> b!2753286 (= e!1735936 (inv!43280 (c!445491 input!5495)))))

(assert (= (and d!796888 c!445563) b!2753284))

(assert (= (and d!796888 (not c!445563)) b!2753285))

(assert (= (and b!2753285 (not res!1154105)) b!2753286))

(declare-fun m!3168731 () Bool)

(assert (=> b!2753284 m!3168731))

(declare-fun m!3168733 () Bool)

(assert (=> b!2753286 m!3168733))

(assert (=> b!2753050 d!796888))

(declare-fun bs!490504 () Bool)

(declare-fun d!796890 () Bool)

(assert (= bs!490504 (and d!796890 d!796864)))

(declare-fun lambda!100962 () Int)

(assert (=> bs!490504 (not (= lambda!100962 lambda!100957))))

(declare-fun bs!490505 () Bool)

(assert (= bs!490505 (and d!796890 b!2753248)))

(assert (=> bs!490505 (not (= lambda!100962 lambda!100958))))

(declare-fun bs!490506 () Bool)

(assert (= bs!490506 (and d!796890 b!2753249)))

(assert (=> bs!490506 (not (= lambda!100962 lambda!100959))))

(declare-fun exists!952 ((InoxSet Context!4546) Int) Bool)

(assert (=> d!796890 (= (nullableZipper!610 z!3597) (exists!952 z!3597 lambda!100962))))

(declare-fun bs!490507 () Bool)

(assert (= bs!490507 d!796890))

(declare-fun m!3168735 () Bool)

(assert (=> bs!490507 m!3168735))

(assert (=> bm!177994 d!796890))

(assert (=> bm!178006 d!796814))

(declare-fun d!796892 () Bool)

(assert (=> d!796892 (isPrefix!2531 lt!974827 lt!974827)))

(declare-fun lt!975149 () Unit!45648)

(declare-fun choose!16126 (List!31968 List!31968) Unit!45648)

(assert (=> d!796892 (= lt!975149 (choose!16126 lt!974827 lt!974827))))

(assert (=> d!796892 (= (lemmaIsPrefixRefl!1657 lt!974827 lt!974827) lt!975149)))

(declare-fun bs!490508 () Bool)

(assert (= bs!490508 d!796892))

(assert (=> bs!490508 m!3168281))

(declare-fun m!3168737 () Bool)

(assert (=> bs!490508 m!3168737))

(assert (=> bm!178001 d!796892))

(assert (=> b!2753052 d!796820))

(assert (=> b!2753052 d!796822))

(declare-fun d!796894 () Bool)

(assert (=> d!796894 (= (list!12039 (_1!18725 lt!974831)) (list!12040 (c!445491 (_1!18725 lt!974831))))))

(declare-fun bs!490509 () Bool)

(assert (= bs!490509 d!796894))

(declare-fun m!3168739 () Bool)

(assert (=> bs!490509 m!3168739))

(assert (=> b!2753052 d!796894))

(assert (=> b!2753052 d!796824))

(assert (=> b!2753052 d!796830))

(assert (=> b!2753052 d!796834))

(declare-fun d!796896 () Bool)

(assert (=> d!796896 (= (++!7891 (++!7891 Nil!31868 (Cons!31868 lt!974819 Nil!31868)) lt!974820) lt!974827)))

(declare-fun lt!975150 () Unit!45648)

(assert (=> d!796896 (= lt!975150 (choose!16120 Nil!31868 lt!974819 lt!974820 lt!974827))))

(assert (=> d!796896 (= (++!7891 Nil!31868 (Cons!31868 lt!974819 lt!974820)) lt!974827)))

(assert (=> d!796896 (= (lemmaMoveElementToOtherListKeepsConcatEq!848 Nil!31868 lt!974819 lt!974820 lt!974827) lt!975150)))

(declare-fun bs!490510 () Bool)

(assert (= bs!490510 d!796896))

(assert (=> bs!490510 m!3168333))

(assert (=> bs!490510 m!3168333))

(declare-fun m!3168741 () Bool)

(assert (=> bs!490510 m!3168741))

(declare-fun m!3168743 () Bool)

(assert (=> bs!490510 m!3168743))

(declare-fun m!3168745 () Bool)

(assert (=> bs!490510 m!3168745))

(assert (=> b!2753052 d!796896))

(declare-fun d!796898 () Bool)

(assert (=> d!796898 (and (= lt!974818 Nil!31868) (= lt!974823 lt!974827))))

(declare-fun lt!975151 () Unit!45648)

(assert (=> d!796898 (= lt!975151 (choose!16118 lt!974818 lt!974823 Nil!31868 lt!974827))))

(assert (=> d!796898 (= (++!7891 lt!974818 lt!974823) (++!7891 Nil!31868 lt!974827))))

(assert (=> d!796898 (= (lemmaConcatSameAndSameSizesThenSameLists!318 lt!974818 lt!974823 Nil!31868 lt!974827) lt!975151)))

(declare-fun bs!490511 () Bool)

(assert (= bs!490511 d!796898))

(declare-fun m!3168747 () Bool)

(assert (=> bs!490511 m!3168747))

(declare-fun m!3168749 () Bool)

(assert (=> bs!490511 m!3168749))

(assert (=> bs!490511 m!3168251))

(assert (=> b!2753052 d!796898))

(declare-fun b!2753287 () Bool)

(declare-fun e!1735938 () List!31968)

(assert (=> b!2753287 (= e!1735938 (Cons!31868 lt!974819 Nil!31868))))

(declare-fun b!2753289 () Bool)

(declare-fun res!1154106 () Bool)

(declare-fun e!1735937 () Bool)

(assert (=> b!2753289 (=> (not res!1154106) (not e!1735937))))

(declare-fun lt!975152 () List!31968)

(assert (=> b!2753289 (= res!1154106 (= (size!24635 lt!975152) (+ (size!24635 Nil!31868) (size!24635 (Cons!31868 lt!974819 Nil!31868)))))))

(declare-fun b!2753288 () Bool)

(assert (=> b!2753288 (= e!1735938 (Cons!31868 (h!37288 Nil!31868) (++!7891 (t!228072 Nil!31868) (Cons!31868 lt!974819 Nil!31868))))))

(declare-fun d!796900 () Bool)

(assert (=> d!796900 e!1735937))

(declare-fun res!1154107 () Bool)

(assert (=> d!796900 (=> (not res!1154107) (not e!1735937))))

(assert (=> d!796900 (= res!1154107 (= (content!4488 lt!975152) ((_ map or) (content!4488 Nil!31868) (content!4488 (Cons!31868 lt!974819 Nil!31868)))))))

(assert (=> d!796900 (= lt!975152 e!1735938)))

(declare-fun c!445566 () Bool)

(assert (=> d!796900 (= c!445566 ((_ is Nil!31868) Nil!31868))))

(assert (=> d!796900 (= (++!7891 Nil!31868 (Cons!31868 lt!974819 Nil!31868)) lt!975152)))

(declare-fun b!2753290 () Bool)

(assert (=> b!2753290 (= e!1735937 (or (not (= (Cons!31868 lt!974819 Nil!31868) Nil!31868)) (= lt!975152 Nil!31868)))))

(assert (= (and d!796900 c!445566) b!2753287))

(assert (= (and d!796900 (not c!445566)) b!2753288))

(assert (= (and d!796900 res!1154107) b!2753289))

(assert (= (and b!2753289 res!1154106) b!2753290))

(declare-fun m!3168751 () Bool)

(assert (=> b!2753289 m!3168751))

(assert (=> b!2753289 m!3168283))

(declare-fun m!3168753 () Bool)

(assert (=> b!2753289 m!3168753))

(declare-fun m!3168755 () Bool)

(assert (=> b!2753288 m!3168755))

(declare-fun m!3168757 () Bool)

(assert (=> d!796900 m!3168757))

(assert (=> d!796900 m!3168507))

(declare-fun m!3168759 () Bool)

(assert (=> d!796900 m!3168759))

(assert (=> b!2753052 d!796900))

(assert (=> b!2753052 d!796840))

(declare-fun b!2753291 () Bool)

(declare-fun e!1735940 () List!31968)

(assert (=> b!2753291 (= e!1735940 lt!974820)))

(declare-fun b!2753293 () Bool)

(declare-fun res!1154108 () Bool)

(declare-fun e!1735939 () Bool)

(assert (=> b!2753293 (=> (not res!1154108) (not e!1735939))))

(declare-fun lt!975153 () List!31968)

(assert (=> b!2753293 (= res!1154108 (= (size!24635 lt!975153) (+ (size!24635 lt!974822) (size!24635 lt!974820))))))

(declare-fun b!2753292 () Bool)

(assert (=> b!2753292 (= e!1735940 (Cons!31868 (h!37288 lt!974822) (++!7891 (t!228072 lt!974822) lt!974820)))))

(declare-fun d!796902 () Bool)

(assert (=> d!796902 e!1735939))

(declare-fun res!1154109 () Bool)

(assert (=> d!796902 (=> (not res!1154109) (not e!1735939))))

(assert (=> d!796902 (= res!1154109 (= (content!4488 lt!975153) ((_ map or) (content!4488 lt!974822) (content!4488 lt!974820))))))

(assert (=> d!796902 (= lt!975153 e!1735940)))

(declare-fun c!445567 () Bool)

(assert (=> d!796902 (= c!445567 ((_ is Nil!31868) lt!974822))))

(assert (=> d!796902 (= (++!7891 lt!974822 lt!974820) lt!975153)))

(declare-fun b!2753294 () Bool)

(assert (=> b!2753294 (= e!1735939 (or (not (= lt!974820 Nil!31868)) (= lt!975153 lt!974822)))))

(assert (= (and d!796902 c!445567) b!2753291))

(assert (= (and d!796902 (not c!445567)) b!2753292))

(assert (= (and d!796902 res!1154109) b!2753293))

(assert (= (and b!2753293 res!1154108) b!2753294))

(declare-fun m!3168761 () Bool)

(assert (=> b!2753293 m!3168761))

(assert (=> b!2753293 m!3168423))

(declare-fun m!3168763 () Bool)

(assert (=> b!2753293 m!3168763))

(declare-fun m!3168765 () Bool)

(assert (=> b!2753292 m!3168765))

(declare-fun m!3168767 () Bool)

(assert (=> d!796902 m!3168767))

(declare-fun m!3168769 () Bool)

(assert (=> d!796902 m!3168769))

(declare-fun m!3168771 () Bool)

(assert (=> d!796902 m!3168771))

(assert (=> b!2753052 d!796902))

(assert (=> b!2753052 d!796844))

(assert (=> b!2753052 d!796846))

(assert (=> b!2753052 d!796848))

(assert (=> b!2753052 d!796850))

(assert (=> b!2753052 d!796852))

(assert (=> b!2753052 d!796854))

(declare-fun d!796904 () Bool)

(assert (=> d!796904 (= (list!12039 (_2!18725 lt!974831)) (list!12040 (c!445491 (_2!18725 lt!974831))))))

(declare-fun bs!490512 () Bool)

(assert (= bs!490512 d!796904))

(declare-fun m!3168773 () Bool)

(assert (=> bs!490512 m!3168773))

(assert (=> b!2753052 d!796904))

(assert (=> b!2753052 d!796856))

(assert (=> b!2753052 d!796810))

(declare-fun d!796906 () Bool)

(assert (=> d!796906 (= (valid!2887 cacheDown!939) (validCacheMapDown!383 (cache!3768 cacheDown!939)))))

(declare-fun bs!490513 () Bool)

(assert (= bs!490513 d!796906))

(declare-fun m!3168775 () Bool)

(assert (=> bs!490513 m!3168775))

(assert (=> b!2753079 d!796906))

(assert (=> bm!177995 d!796884))

(declare-fun d!796908 () Bool)

(assert (=> d!796908 true))

(declare-fun lambda!100965 () Int)

(declare-fun flatMap!175 ((InoxSet Context!4546) Int) (InoxSet Context!4546))

(assert (=> d!796908 (= (derivationStepZipper!347 z!3597 lt!974830) (flatMap!175 z!3597 lambda!100965))))

(declare-fun bs!490514 () Bool)

(assert (= bs!490514 d!796908))

(declare-fun m!3168777 () Bool)

(assert (=> bs!490514 m!3168777))

(assert (=> bm!178002 d!796908))

(declare-fun d!796910 () Bool)

(declare-fun lambda!100968 () Int)

(declare-fun forall!6591 (List!31969 Int) Bool)

(assert (=> d!796910 (= (inv!43275 setElem!22041) (forall!6591 (exprs!2773 setElem!22041) lambda!100968))))

(declare-fun bs!490515 () Bool)

(assert (= bs!490515 d!796910))

(declare-fun m!3168779 () Bool)

(assert (=> bs!490515 m!3168779))

(assert (=> setNonEmpty!22041 d!796910))

(declare-fun d!796912 () Bool)

(assert (=> d!796912 (= (valid!2886 cacheUp!820) (validCacheMapUp!352 (cache!3767 cacheUp!820)))))

(declare-fun bs!490516 () Bool)

(assert (= bs!490516 d!796912))

(declare-fun m!3168781 () Bool)

(assert (=> bs!490516 m!3168781))

(assert (=> start!266878 d!796912))

(declare-fun d!796914 () Bool)

(declare-fun res!1154112 () Bool)

(declare-fun e!1735943 () Bool)

(assert (=> d!796914 (=> (not res!1154112) (not e!1735943))))

(assert (=> d!796914 (= res!1154112 ((_ is HashMap!3624) (cache!3767 cacheUp!820)))))

(assert (=> d!796914 (= (inv!43276 cacheUp!820) e!1735943)))

(declare-fun b!2753299 () Bool)

(assert (=> b!2753299 (= e!1735943 (validCacheMapUp!352 (cache!3767 cacheUp!820)))))

(assert (= (and d!796914 res!1154112) b!2753299))

(assert (=> b!2753299 m!3168781))

(assert (=> start!266878 d!796914))

(declare-fun d!796916 () Bool)

(declare-fun res!1154115 () Bool)

(declare-fun e!1735946 () Bool)

(assert (=> d!796916 (=> (not res!1154115) (not e!1735946))))

(assert (=> d!796916 (= res!1154115 ((_ is HashMap!3625) (cache!3768 cacheDown!939)))))

(assert (=> d!796916 (= (inv!43277 cacheDown!939) e!1735946)))

(declare-fun b!2753302 () Bool)

(assert (=> b!2753302 (= e!1735946 (validCacheMapDown!383 (cache!3768 cacheDown!939)))))

(assert (= (and d!796916 res!1154115) b!2753302))

(assert (=> b!2753302 m!3168775))

(assert (=> start!266878 d!796916))

(declare-fun d!796918 () Bool)

(assert (=> d!796918 (= (inv!43278 input!5495) (isBalanced!3025 (c!445491 input!5495)))))

(declare-fun bs!490517 () Bool)

(assert (= bs!490517 d!796918))

(assert (=> bs!490517 m!3168571))

(assert (=> start!266878 d!796918))

(assert (=> b!2753068 d!796874))

(assert (=> bm!177996 d!796892))

(declare-fun d!796920 () Bool)

(assert (=> d!796920 (= (valid!2887 (_3!2787 lt!974809)) (validCacheMapDown!383 (cache!3768 (_3!2787 lt!974809))))))

(declare-fun bs!490518 () Bool)

(assert (= bs!490518 d!796920))

(declare-fun m!3168783 () Bool)

(assert (=> bs!490518 m!3168783))

(assert (=> b!2753084 d!796920))

(declare-fun d!796922 () Bool)

(declare-fun e!1735947 () Bool)

(assert (=> d!796922 e!1735947))

(declare-fun res!1154116 () Bool)

(assert (=> d!796922 (=> (not res!1154116) (not e!1735947))))

(declare-fun lt!975154 () tuple3!4634)

(assert (=> d!796922 (= res!1154116 (valid!2886 (_2!18724 lt!975154)))))

(assert (=> d!796922 (= lt!975154 (choose!16122 (ite c!445483 (_2!18727 lt!974829) (_2!18727 lt!974805)) (ite c!445483 (_3!2789 lt!974829) (_3!2789 lt!974805)) (ite c!445483 (_1!18727 lt!974829) (_1!18727 lt!974805)) lt!974822 1 lt!974820 input!5495 lt!974836))))

(assert (=> d!796922 (= (++!7891 lt!974822 lt!974820) (list!12039 input!5495))))

(assert (=> d!796922 (= (findLongestMatchInnerZipperFastMem!11 (ite c!445483 (_2!18727 lt!974829) (_2!18727 lt!974805)) (ite c!445483 (_3!2789 lt!974829) (_3!2789 lt!974805)) (ite c!445483 (_1!18727 lt!974829) (_1!18727 lt!974805)) lt!974822 1 lt!974820 input!5495 lt!974836) lt!975154)))

(declare-fun b!2753303 () Bool)

(declare-fun res!1154117 () Bool)

(assert (=> b!2753303 (=> (not res!1154117) (not e!1735947))))

(assert (=> b!2753303 (= res!1154117 (valid!2887 (_3!2787 lt!975154)))))

(declare-fun b!2753304 () Bool)

(assert (=> b!2753304 (= e!1735947 (= (_1!18724 lt!975154) (findLongestMatchInnerZipperFast!13 (ite c!445483 (_1!18727 lt!974829) (_1!18727 lt!974805)) lt!974822 1 lt!974820 input!5495 lt!974836)))))

(assert (= (and d!796922 res!1154116) b!2753303))

(assert (= (and b!2753303 res!1154117) b!2753304))

(declare-fun m!3168785 () Bool)

(assert (=> d!796922 m!3168785))

(declare-fun m!3168787 () Bool)

(assert (=> d!796922 m!3168787))

(assert (=> d!796922 m!3168341))

(assert (=> d!796922 m!3168227))

(declare-fun m!3168789 () Bool)

(assert (=> b!2753303 m!3168789))

(assert (=> b!2753304 m!3168267))

(assert (=> bm!178003 d!796922))

(declare-fun d!796924 () Bool)

(assert (=> d!796924 (= (array_inv!4222 (_keys!4018 (v!33478 (underlying!7639 (v!33479 (underlying!7640 (cache!3767 cacheUp!820))))))) (bvsge (size!24633 (_keys!4018 (v!33478 (underlying!7639 (v!33479 (underlying!7640 (cache!3767 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2753055 d!796924))

(declare-fun d!796926 () Bool)

(assert (=> d!796926 (= (array_inv!4223 (_values!3999 (v!33478 (underlying!7639 (v!33479 (underlying!7640 (cache!3767 cacheUp!820))))))) (bvsge (size!24632 (_values!3999 (v!33478 (underlying!7639 (v!33479 (underlying!7640 (cache!3767 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2753055 d!796926))

(declare-fun d!796928 () Bool)

(assert (=> d!796928 (= (valid!2886 (ite c!445483 (_2!18724 lt!974797) (_2!18724 lt!974833))) (validCacheMapUp!352 (cache!3767 (ite c!445483 (_2!18724 lt!974797) (_2!18724 lt!974833)))))))

(declare-fun bs!490519 () Bool)

(assert (= bs!490519 d!796928))

(declare-fun m!3168791 () Bool)

(assert (=> bs!490519 m!3168791))

(assert (=> bm!178007 d!796928))

(declare-fun d!796930 () Bool)

(assert (=> d!796930 (= (array_inv!4222 (_keys!4019 (v!33480 (underlying!7641 (v!33481 (underlying!7642 (cache!3768 cacheDown!939))))))) (bvsge (size!24633 (_keys!4019 (v!33480 (underlying!7641 (v!33481 (underlying!7642 (cache!3768 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2753056 d!796930))

(declare-fun d!796932 () Bool)

(assert (=> d!796932 (= (array_inv!4224 (_values!4000 (v!33480 (underlying!7641 (v!33481 (underlying!7642 (cache!3768 cacheDown!939))))))) (bvsge (size!24634 (_values!4000 (v!33480 (underlying!7641 (v!33481 (underlying!7642 (cache!3768 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2753056 d!796932))

(assert (=> bm!177997 d!796890))

(declare-fun b!2753309 () Bool)

(declare-fun e!1735950 () Bool)

(declare-fun tp!869918 () Bool)

(declare-fun tp!869919 () Bool)

(assert (=> b!2753309 (= e!1735950 (and tp!869918 tp!869919))))

(assert (=> b!2753059 (= tp!869900 e!1735950)))

(assert (= (and b!2753059 ((_ is Cons!31869) (exprs!2773 setElem!22041))) b!2753309))

(declare-fun b!2753318 () Bool)

(declare-fun e!1735958 () Bool)

(declare-fun tp!869929 () Bool)

(assert (=> b!2753318 (= e!1735958 tp!869929)))

(declare-fun setRes!22044 () Bool)

(declare-fun b!2753319 () Bool)

(declare-fun tp_is_empty!13989 () Bool)

(declare-fun tp!869931 () Bool)

(declare-fun e!1735959 () Bool)

(assert (=> b!2753319 (= e!1735959 (and (inv!43275 (_1!18720 (_1!18721 (h!37290 mapDefault!16904)))) e!1735958 tp_is_empty!13989 setRes!22044 tp!869931))))

(declare-fun condSetEmpty!22044 () Bool)

(assert (=> b!2753319 (= condSetEmpty!22044 (= (_2!18721 (h!37290 mapDefault!16904)) ((as const (Array Context!4546 Bool)) false)))))

(declare-fun setElem!22044 () Context!4546)

(declare-fun setNonEmpty!22044 () Bool)

(declare-fun e!1735957 () Bool)

(declare-fun tp!869928 () Bool)

(assert (=> setNonEmpty!22044 (= setRes!22044 (and tp!869928 (inv!43275 setElem!22044) e!1735957))))

(declare-fun setRest!22044 () (InoxSet Context!4546))

(assert (=> setNonEmpty!22044 (= (_2!18721 (h!37290 mapDefault!16904)) ((_ map or) (store ((as const (Array Context!4546 Bool)) false) setElem!22044 true) setRest!22044))))

(declare-fun b!2753320 () Bool)

(declare-fun tp!869930 () Bool)

(assert (=> b!2753320 (= e!1735957 tp!869930)))

(declare-fun setIsEmpty!22044 () Bool)

(assert (=> setIsEmpty!22044 setRes!22044))

(assert (=> b!2753089 (= tp!869905 e!1735959)))

(assert (= b!2753319 b!2753318))

(assert (= (and b!2753319 condSetEmpty!22044) setIsEmpty!22044))

(assert (= (and b!2753319 (not condSetEmpty!22044)) setNonEmpty!22044))

(assert (= setNonEmpty!22044 b!2753320))

(assert (= (and b!2753089 ((_ is Cons!31870) mapDefault!16904)) b!2753319))

(declare-fun m!3168793 () Bool)

(assert (=> b!2753319 m!3168793))

(declare-fun m!3168795 () Bool)

(assert (=> setNonEmpty!22044 m!3168795))

(declare-fun condMapEmpty!16907 () Bool)

(declare-fun mapDefault!16907 () List!31971)

(assert (=> mapNonEmpty!16904 (= condMapEmpty!16907 (= mapRest!16904 ((as const (Array (_ BitVec 32) List!31971)) mapDefault!16907)))))

(declare-fun e!1735974 () Bool)

(declare-fun mapRes!16907 () Bool)

(assert (=> mapNonEmpty!16904 (= tp!869898 (and e!1735974 mapRes!16907))))

(declare-fun b!2753335 () Bool)

(declare-fun e!1735972 () Bool)

(declare-fun tp!869962 () Bool)

(assert (=> b!2753335 (= e!1735972 tp!869962)))

(declare-fun mapNonEmpty!16907 () Bool)

(declare-fun tp!869961 () Bool)

(declare-fun e!1735977 () Bool)

(assert (=> mapNonEmpty!16907 (= mapRes!16907 (and tp!869961 e!1735977))))

(declare-fun mapValue!16907 () List!31971)

(declare-fun mapKey!16907 () (_ BitVec 32))

(declare-fun mapRest!16907 () (Array (_ BitVec 32) List!31971))

(assert (=> mapNonEmpty!16907 (= mapRest!16904 (store mapRest!16907 mapKey!16907 mapValue!16907))))

(declare-fun b!2753336 () Bool)

(declare-fun e!1735973 () Bool)

(declare-fun tp!869963 () Bool)

(assert (=> b!2753336 (= e!1735973 tp!869963)))

(declare-fun setRes!22050 () Bool)

(declare-fun e!1735975 () Bool)

(declare-fun setElem!22049 () Context!4546)

(declare-fun tp!869957 () Bool)

(declare-fun setNonEmpty!22049 () Bool)

(assert (=> setNonEmpty!22049 (= setRes!22050 (and tp!869957 (inv!43275 setElem!22049) e!1735975))))

(declare-fun setRest!22049 () (InoxSet Context!4546))

(assert (=> setNonEmpty!22049 (= (_2!18723 (h!37291 mapDefault!16907)) ((_ map or) (store ((as const (Array Context!4546 Bool)) false) setElem!22049 true) setRest!22049))))

(declare-fun b!2753337 () Bool)

(declare-fun e!1735976 () Bool)

(declare-fun tp!869958 () Bool)

(assert (=> b!2753337 (= e!1735976 tp!869958)))

(declare-fun tp!869955 () Bool)

(declare-fun setRes!22049 () Bool)

(declare-fun setElem!22050 () Context!4546)

(declare-fun setNonEmpty!22050 () Bool)

(assert (=> setNonEmpty!22050 (= setRes!22049 (and tp!869955 (inv!43275 setElem!22050) e!1735972))))

(declare-fun setRest!22050 () (InoxSet Context!4546))

(assert (=> setNonEmpty!22050 (= (_2!18723 (h!37291 mapValue!16907)) ((_ map or) (store ((as const (Array Context!4546 Bool)) false) setElem!22050 true) setRest!22050))))

(declare-fun setIsEmpty!22049 () Bool)

(assert (=> setIsEmpty!22049 setRes!22049))

(declare-fun setIsEmpty!22050 () Bool)

(assert (=> setIsEmpty!22050 setRes!22050))

(declare-fun b!2753338 () Bool)

(declare-fun tp!869956 () Bool)

(assert (=> b!2753338 (= e!1735975 tp!869956)))

(declare-fun tp!869960 () Bool)

(declare-fun b!2753339 () Bool)

(declare-fun tp!869954 () Bool)

(assert (=> b!2753339 (= e!1735977 (and tp!869954 (inv!43275 (_2!18722 (_1!18723 (h!37291 mapValue!16907)))) e!1735973 tp_is_empty!13989 setRes!22049 tp!869960))))

(declare-fun condSetEmpty!22049 () Bool)

(assert (=> b!2753339 (= condSetEmpty!22049 (= (_2!18723 (h!37291 mapValue!16907)) ((as const (Array Context!4546 Bool)) false)))))

(declare-fun tp!869964 () Bool)

(declare-fun tp!869959 () Bool)

(declare-fun b!2753340 () Bool)

(assert (=> b!2753340 (= e!1735974 (and tp!869959 (inv!43275 (_2!18722 (_1!18723 (h!37291 mapDefault!16907)))) e!1735976 tp_is_empty!13989 setRes!22050 tp!869964))))

(declare-fun condSetEmpty!22050 () Bool)

(assert (=> b!2753340 (= condSetEmpty!22050 (= (_2!18723 (h!37291 mapDefault!16907)) ((as const (Array Context!4546 Bool)) false)))))

(declare-fun mapIsEmpty!16907 () Bool)

(assert (=> mapIsEmpty!16907 mapRes!16907))

(assert (= (and mapNonEmpty!16904 condMapEmpty!16907) mapIsEmpty!16907))

(assert (= (and mapNonEmpty!16904 (not condMapEmpty!16907)) mapNonEmpty!16907))

(assert (= b!2753339 b!2753336))

(assert (= (and b!2753339 condSetEmpty!22049) setIsEmpty!22049))

(assert (= (and b!2753339 (not condSetEmpty!22049)) setNonEmpty!22050))

(assert (= setNonEmpty!22050 b!2753335))

(assert (= (and mapNonEmpty!16907 ((_ is Cons!31871) mapValue!16907)) b!2753339))

(assert (= b!2753340 b!2753337))

(assert (= (and b!2753340 condSetEmpty!22050) setIsEmpty!22050))

(assert (= (and b!2753340 (not condSetEmpty!22050)) setNonEmpty!22049))

(assert (= setNonEmpty!22049 b!2753338))

(assert (= (and mapNonEmpty!16904 ((_ is Cons!31871) mapDefault!16907)) b!2753340))

(declare-fun m!3168797 () Bool)

(assert (=> setNonEmpty!22050 m!3168797))

(declare-fun m!3168799 () Bool)

(assert (=> setNonEmpty!22049 m!3168799))

(declare-fun m!3168801 () Bool)

(assert (=> mapNonEmpty!16907 m!3168801))

(declare-fun m!3168803 () Bool)

(assert (=> b!2753340 m!3168803))

(declare-fun m!3168805 () Bool)

(assert (=> b!2753339 m!3168805))

(declare-fun setIsEmpty!22053 () Bool)

(declare-fun setRes!22053 () Bool)

(assert (=> setIsEmpty!22053 setRes!22053))

(declare-fun b!2753349 () Bool)

(declare-fun e!1735984 () Bool)

(declare-fun tp!869978 () Bool)

(assert (=> b!2753349 (= e!1735984 tp!869978)))

(declare-fun e!1735985 () Bool)

(assert (=> mapNonEmpty!16904 (= tp!869901 e!1735985)))

(declare-fun setNonEmpty!22053 () Bool)

(declare-fun tp!869977 () Bool)

(declare-fun setElem!22053 () Context!4546)

(assert (=> setNonEmpty!22053 (= setRes!22053 (and tp!869977 (inv!43275 setElem!22053) e!1735984))))

(declare-fun setRest!22053 () (InoxSet Context!4546))

(assert (=> setNonEmpty!22053 (= (_2!18723 (h!37291 mapValue!16903)) ((_ map or) (store ((as const (Array Context!4546 Bool)) false) setElem!22053 true) setRest!22053))))

(declare-fun b!2753350 () Bool)

(declare-fun e!1735986 () Bool)

(declare-fun tp!869976 () Bool)

(assert (=> b!2753350 (= e!1735986 tp!869976)))

(declare-fun tp!869975 () Bool)

(declare-fun b!2753351 () Bool)

(declare-fun tp!869979 () Bool)

(assert (=> b!2753351 (= e!1735985 (and tp!869975 (inv!43275 (_2!18722 (_1!18723 (h!37291 mapValue!16903)))) e!1735986 tp_is_empty!13989 setRes!22053 tp!869979))))

(declare-fun condSetEmpty!22053 () Bool)

(assert (=> b!2753351 (= condSetEmpty!22053 (= (_2!18723 (h!37291 mapValue!16903)) ((as const (Array Context!4546 Bool)) false)))))

(assert (= b!2753351 b!2753350))

(assert (= (and b!2753351 condSetEmpty!22053) setIsEmpty!22053))

(assert (= (and b!2753351 (not condSetEmpty!22053)) setNonEmpty!22053))

(assert (= setNonEmpty!22053 b!2753349))

(assert (= (and mapNonEmpty!16904 ((_ is Cons!31871) mapValue!16903)) b!2753351))

(declare-fun m!3168807 () Bool)

(assert (=> setNonEmpty!22053 m!3168807))

(declare-fun m!3168809 () Bool)

(assert (=> b!2753351 m!3168809))

(declare-fun condSetEmpty!22056 () Bool)

(assert (=> setNonEmpty!22041 (= condSetEmpty!22056 (= setRest!22041 ((as const (Array Context!4546 Bool)) false)))))

(declare-fun setRes!22056 () Bool)

(assert (=> setNonEmpty!22041 (= tp!869908 setRes!22056)))

(declare-fun setIsEmpty!22056 () Bool)

(assert (=> setIsEmpty!22056 setRes!22056))

(declare-fun setNonEmpty!22056 () Bool)

(declare-fun setElem!22056 () Context!4546)

(declare-fun tp!869984 () Bool)

(declare-fun e!1735989 () Bool)

(assert (=> setNonEmpty!22056 (= setRes!22056 (and tp!869984 (inv!43275 setElem!22056) e!1735989))))

(declare-fun setRest!22056 () (InoxSet Context!4546))

(assert (=> setNonEmpty!22056 (= setRest!22041 ((_ map or) (store ((as const (Array Context!4546 Bool)) false) setElem!22056 true) setRest!22056))))

(declare-fun b!2753356 () Bool)

(declare-fun tp!869985 () Bool)

(assert (=> b!2753356 (= e!1735989 tp!869985)))

(assert (= (and setNonEmpty!22041 condSetEmpty!22056) setIsEmpty!22056))

(assert (= (and setNonEmpty!22041 (not condSetEmpty!22056)) setNonEmpty!22056))

(assert (= setNonEmpty!22056 b!2753356))

(declare-fun m!3168811 () Bool)

(assert (=> setNonEmpty!22056 m!3168811))

(declare-fun setElem!22061 () Context!4546)

(declare-fun setRes!22061 () Bool)

(declare-fun e!1736003 () Bool)

(declare-fun setNonEmpty!22061 () Bool)

(declare-fun tp!870006 () Bool)

(assert (=> setNonEmpty!22061 (= setRes!22061 (and tp!870006 (inv!43275 setElem!22061) e!1736003))))

(declare-fun mapDefault!16910 () List!31970)

(declare-fun setRest!22062 () (InoxSet Context!4546))

(assert (=> setNonEmpty!22061 (= (_2!18721 (h!37290 mapDefault!16910)) ((_ map or) (store ((as const (Array Context!4546 Bool)) false) setElem!22061 true) setRest!22062))))

(declare-fun mapIsEmpty!16910 () Bool)

(declare-fun mapRes!16910 () Bool)

(assert (=> mapIsEmpty!16910 mapRes!16910))

(declare-fun tp!870010 () Bool)

(declare-fun e!1736007 () Bool)

(declare-fun e!1736004 () Bool)

(declare-fun b!2753371 () Bool)

(assert (=> b!2753371 (= e!1736007 (and (inv!43275 (_1!18720 (_1!18721 (h!37290 mapDefault!16910)))) e!1736004 tp_is_empty!13989 setRes!22061 tp!870010))))

(declare-fun condSetEmpty!22061 () Bool)

(assert (=> b!2753371 (= condSetEmpty!22061 (= (_2!18721 (h!37290 mapDefault!16910)) ((as const (Array Context!4546 Bool)) false)))))

(declare-fun mapNonEmpty!16910 () Bool)

(declare-fun tp!870005 () Bool)

(declare-fun e!1736006 () Bool)

(assert (=> mapNonEmpty!16910 (= mapRes!16910 (and tp!870005 e!1736006))))

(declare-fun mapKey!16910 () (_ BitVec 32))

(declare-fun mapValue!16910 () List!31970)

(declare-fun mapRest!16910 () (Array (_ BitVec 32) List!31970))

(assert (=> mapNonEmpty!16910 (= mapRest!16903 (store mapRest!16910 mapKey!16910 mapValue!16910))))

(declare-fun b!2753372 () Bool)

(declare-fun e!1736002 () Bool)

(declare-fun tp!870012 () Bool)

(assert (=> b!2753372 (= e!1736002 tp!870012)))

(declare-fun b!2753373 () Bool)

(declare-fun tp!870004 () Bool)

(assert (=> b!2753373 (= e!1736003 tp!870004)))

(declare-fun setElem!22062 () Context!4546)

(declare-fun setRes!22062 () Bool)

(declare-fun setNonEmpty!22062 () Bool)

(declare-fun tp!870007 () Bool)

(assert (=> setNonEmpty!22062 (= setRes!22062 (and tp!870007 (inv!43275 setElem!22062) e!1736002))))

(declare-fun setRest!22061 () (InoxSet Context!4546))

(assert (=> setNonEmpty!22062 (= (_2!18721 (h!37290 mapValue!16910)) ((_ map or) (store ((as const (Array Context!4546 Bool)) false) setElem!22062 true) setRest!22061))))

(declare-fun b!2753374 () Bool)

(declare-fun tp!870011 () Bool)

(declare-fun e!1736005 () Bool)

(assert (=> b!2753374 (= e!1736006 (and (inv!43275 (_1!18720 (_1!18721 (h!37290 mapValue!16910)))) e!1736005 tp_is_empty!13989 setRes!22062 tp!870011))))

(declare-fun condSetEmpty!22062 () Bool)

(assert (=> b!2753374 (= condSetEmpty!22062 (= (_2!18721 (h!37290 mapValue!16910)) ((as const (Array Context!4546 Bool)) false)))))

(declare-fun setIsEmpty!22061 () Bool)

(assert (=> setIsEmpty!22061 setRes!22061))

(declare-fun b!2753375 () Bool)

(declare-fun tp!870009 () Bool)

(assert (=> b!2753375 (= e!1736004 tp!870009)))

(declare-fun setIsEmpty!22062 () Bool)

(assert (=> setIsEmpty!22062 setRes!22062))

(declare-fun condMapEmpty!16910 () Bool)

(assert (=> mapNonEmpty!16903 (= condMapEmpty!16910 (= mapRest!16903 ((as const (Array (_ BitVec 32) List!31970)) mapDefault!16910)))))

(assert (=> mapNonEmpty!16903 (= tp!869897 (and e!1736007 mapRes!16910))))

(declare-fun b!2753376 () Bool)

(declare-fun tp!870008 () Bool)

(assert (=> b!2753376 (= e!1736005 tp!870008)))

(assert (= (and mapNonEmpty!16903 condMapEmpty!16910) mapIsEmpty!16910))

(assert (= (and mapNonEmpty!16903 (not condMapEmpty!16910)) mapNonEmpty!16910))

(assert (= b!2753374 b!2753376))

(assert (= (and b!2753374 condSetEmpty!22062) setIsEmpty!22062))

(assert (= (and b!2753374 (not condSetEmpty!22062)) setNonEmpty!22062))

(assert (= setNonEmpty!22062 b!2753372))

(assert (= (and mapNonEmpty!16910 ((_ is Cons!31870) mapValue!16910)) b!2753374))

(assert (= b!2753371 b!2753375))

(assert (= (and b!2753371 condSetEmpty!22061) setIsEmpty!22061))

(assert (= (and b!2753371 (not condSetEmpty!22061)) setNonEmpty!22061))

(assert (= setNonEmpty!22061 b!2753373))

(assert (= (and mapNonEmpty!16903 ((_ is Cons!31870) mapDefault!16910)) b!2753371))

(declare-fun m!3168813 () Bool)

(assert (=> b!2753374 m!3168813))

(declare-fun m!3168815 () Bool)

(assert (=> mapNonEmpty!16910 m!3168815))

(declare-fun m!3168817 () Bool)

(assert (=> b!2753371 m!3168817))

(declare-fun m!3168819 () Bool)

(assert (=> setNonEmpty!22062 m!3168819))

(declare-fun m!3168821 () Bool)

(assert (=> setNonEmpty!22061 m!3168821))

(declare-fun b!2753377 () Bool)

(declare-fun e!1736009 () Bool)

(declare-fun tp!870014 () Bool)

(assert (=> b!2753377 (= e!1736009 tp!870014)))

(declare-fun setRes!22063 () Bool)

(declare-fun e!1736010 () Bool)

(declare-fun tp!870016 () Bool)

(declare-fun b!2753378 () Bool)

(assert (=> b!2753378 (= e!1736010 (and (inv!43275 (_1!18720 (_1!18721 (h!37290 mapValue!16904)))) e!1736009 tp_is_empty!13989 setRes!22063 tp!870016))))

(declare-fun condSetEmpty!22063 () Bool)

(assert (=> b!2753378 (= condSetEmpty!22063 (= (_2!18721 (h!37290 mapValue!16904)) ((as const (Array Context!4546 Bool)) false)))))

(declare-fun tp!870013 () Bool)

(declare-fun setElem!22063 () Context!4546)

(declare-fun e!1736008 () Bool)

(declare-fun setNonEmpty!22063 () Bool)

(assert (=> setNonEmpty!22063 (= setRes!22063 (and tp!870013 (inv!43275 setElem!22063) e!1736008))))

(declare-fun setRest!22063 () (InoxSet Context!4546))

(assert (=> setNonEmpty!22063 (= (_2!18721 (h!37290 mapValue!16904)) ((_ map or) (store ((as const (Array Context!4546 Bool)) false) setElem!22063 true) setRest!22063))))

(declare-fun b!2753379 () Bool)

(declare-fun tp!870015 () Bool)

(assert (=> b!2753379 (= e!1736008 tp!870015)))

(declare-fun setIsEmpty!22063 () Bool)

(assert (=> setIsEmpty!22063 setRes!22063))

(assert (=> mapNonEmpty!16903 (= tp!869904 e!1736010)))

(assert (= b!2753378 b!2753377))

(assert (= (and b!2753378 condSetEmpty!22063) setIsEmpty!22063))

(assert (= (and b!2753378 (not condSetEmpty!22063)) setNonEmpty!22063))

(assert (= setNonEmpty!22063 b!2753379))

(assert (= (and mapNonEmpty!16903 ((_ is Cons!31870) mapValue!16904)) b!2753378))

(declare-fun m!3168823 () Bool)

(assert (=> b!2753378 m!3168823))

(declare-fun m!3168825 () Bool)

(assert (=> setNonEmpty!22063 m!3168825))

(declare-fun b!2753380 () Bool)

(declare-fun e!1736012 () Bool)

(declare-fun tp!870018 () Bool)

(assert (=> b!2753380 (= e!1736012 tp!870018)))

(declare-fun e!1736013 () Bool)

(declare-fun tp!870020 () Bool)

(declare-fun setRes!22064 () Bool)

(declare-fun b!2753381 () Bool)

(assert (=> b!2753381 (= e!1736013 (and (inv!43275 (_1!18720 (_1!18721 (h!37290 (zeroValue!3977 (v!33478 (underlying!7639 (v!33479 (underlying!7640 (cache!3767 cacheUp!820)))))))))) e!1736012 tp_is_empty!13989 setRes!22064 tp!870020))))

(declare-fun condSetEmpty!22064 () Bool)

(assert (=> b!2753381 (= condSetEmpty!22064 (= (_2!18721 (h!37290 (zeroValue!3977 (v!33478 (underlying!7639 (v!33479 (underlying!7640 (cache!3767 cacheUp!820)))))))) ((as const (Array Context!4546 Bool)) false)))))

(declare-fun setElem!22064 () Context!4546)

(declare-fun setNonEmpty!22064 () Bool)

(declare-fun tp!870017 () Bool)

(declare-fun e!1736011 () Bool)

(assert (=> setNonEmpty!22064 (= setRes!22064 (and tp!870017 (inv!43275 setElem!22064) e!1736011))))

(declare-fun setRest!22064 () (InoxSet Context!4546))

(assert (=> setNonEmpty!22064 (= (_2!18721 (h!37290 (zeroValue!3977 (v!33478 (underlying!7639 (v!33479 (underlying!7640 (cache!3767 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4546 Bool)) false) setElem!22064 true) setRest!22064))))

(declare-fun b!2753382 () Bool)

(declare-fun tp!870019 () Bool)

(assert (=> b!2753382 (= e!1736011 tp!870019)))

(declare-fun setIsEmpty!22064 () Bool)

(assert (=> setIsEmpty!22064 setRes!22064))

(assert (=> b!2753055 (= tp!869906 e!1736013)))

(assert (= b!2753381 b!2753380))

(assert (= (and b!2753381 condSetEmpty!22064) setIsEmpty!22064))

(assert (= (and b!2753381 (not condSetEmpty!22064)) setNonEmpty!22064))

(assert (= setNonEmpty!22064 b!2753382))

(assert (= (and b!2753055 ((_ is Cons!31870) (zeroValue!3977 (v!33478 (underlying!7639 (v!33479 (underlying!7640 (cache!3767 cacheUp!820)))))))) b!2753381))

(declare-fun m!3168827 () Bool)

(assert (=> b!2753381 m!3168827))

(declare-fun m!3168829 () Bool)

(assert (=> setNonEmpty!22064 m!3168829))

(declare-fun b!2753383 () Bool)

(declare-fun e!1736015 () Bool)

(declare-fun tp!870022 () Bool)

(assert (=> b!2753383 (= e!1736015 tp!870022)))

(declare-fun setRes!22065 () Bool)

(declare-fun e!1736016 () Bool)

(declare-fun b!2753384 () Bool)

(declare-fun tp!870024 () Bool)

(assert (=> b!2753384 (= e!1736016 (and (inv!43275 (_1!18720 (_1!18721 (h!37290 (minValue!3977 (v!33478 (underlying!7639 (v!33479 (underlying!7640 (cache!3767 cacheUp!820)))))))))) e!1736015 tp_is_empty!13989 setRes!22065 tp!870024))))

(declare-fun condSetEmpty!22065 () Bool)

(assert (=> b!2753384 (= condSetEmpty!22065 (= (_2!18721 (h!37290 (minValue!3977 (v!33478 (underlying!7639 (v!33479 (underlying!7640 (cache!3767 cacheUp!820)))))))) ((as const (Array Context!4546 Bool)) false)))))

(declare-fun setNonEmpty!22065 () Bool)

(declare-fun tp!870021 () Bool)

(declare-fun setElem!22065 () Context!4546)

(declare-fun e!1736014 () Bool)

(assert (=> setNonEmpty!22065 (= setRes!22065 (and tp!870021 (inv!43275 setElem!22065) e!1736014))))

(declare-fun setRest!22065 () (InoxSet Context!4546))

(assert (=> setNonEmpty!22065 (= (_2!18721 (h!37290 (minValue!3977 (v!33478 (underlying!7639 (v!33479 (underlying!7640 (cache!3767 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4546 Bool)) false) setElem!22065 true) setRest!22065))))

(declare-fun b!2753385 () Bool)

(declare-fun tp!870023 () Bool)

(assert (=> b!2753385 (= e!1736014 tp!870023)))

(declare-fun setIsEmpty!22065 () Bool)

(assert (=> setIsEmpty!22065 setRes!22065))

(assert (=> b!2753055 (= tp!869903 e!1736016)))

(assert (= b!2753384 b!2753383))

(assert (= (and b!2753384 condSetEmpty!22065) setIsEmpty!22065))

(assert (= (and b!2753384 (not condSetEmpty!22065)) setNonEmpty!22065))

(assert (= setNonEmpty!22065 b!2753385))

(assert (= (and b!2753055 ((_ is Cons!31870) (minValue!3977 (v!33478 (underlying!7639 (v!33479 (underlying!7640 (cache!3767 cacheUp!820)))))))) b!2753384))

(declare-fun m!3168831 () Bool)

(assert (=> b!2753384 m!3168831))

(declare-fun m!3168833 () Bool)

(assert (=> setNonEmpty!22065 m!3168833))

(declare-fun setIsEmpty!22066 () Bool)

(declare-fun setRes!22066 () Bool)

(assert (=> setIsEmpty!22066 setRes!22066))

(declare-fun b!2753386 () Bool)

(declare-fun e!1736017 () Bool)

(declare-fun tp!870028 () Bool)

(assert (=> b!2753386 (= e!1736017 tp!870028)))

(declare-fun e!1736018 () Bool)

(assert (=> b!2753056 (= tp!869909 e!1736018)))

(declare-fun setNonEmpty!22066 () Bool)

(declare-fun setElem!22066 () Context!4546)

(declare-fun tp!870027 () Bool)

(assert (=> setNonEmpty!22066 (= setRes!22066 (and tp!870027 (inv!43275 setElem!22066) e!1736017))))

(declare-fun setRest!22066 () (InoxSet Context!4546))

(assert (=> setNonEmpty!22066 (= (_2!18723 (h!37291 (zeroValue!3978 (v!33480 (underlying!7641 (v!33481 (underlying!7642 (cache!3768 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4546 Bool)) false) setElem!22066 true) setRest!22066))))

(declare-fun b!2753387 () Bool)

(declare-fun e!1736019 () Bool)

(declare-fun tp!870026 () Bool)

(assert (=> b!2753387 (= e!1736019 tp!870026)))

(declare-fun tp!870029 () Bool)

(declare-fun tp!870025 () Bool)

(declare-fun b!2753388 () Bool)

(assert (=> b!2753388 (= e!1736018 (and tp!870025 (inv!43275 (_2!18722 (_1!18723 (h!37291 (zeroValue!3978 (v!33480 (underlying!7641 (v!33481 (underlying!7642 (cache!3768 cacheDown!939)))))))))) e!1736019 tp_is_empty!13989 setRes!22066 tp!870029))))

(declare-fun condSetEmpty!22066 () Bool)

(assert (=> b!2753388 (= condSetEmpty!22066 (= (_2!18723 (h!37291 (zeroValue!3978 (v!33480 (underlying!7641 (v!33481 (underlying!7642 (cache!3768 cacheDown!939)))))))) ((as const (Array Context!4546 Bool)) false)))))

(assert (= b!2753388 b!2753387))

(assert (= (and b!2753388 condSetEmpty!22066) setIsEmpty!22066))

(assert (= (and b!2753388 (not condSetEmpty!22066)) setNonEmpty!22066))

(assert (= setNonEmpty!22066 b!2753386))

(assert (= (and b!2753056 ((_ is Cons!31871) (zeroValue!3978 (v!33480 (underlying!7641 (v!33481 (underlying!7642 (cache!3768 cacheDown!939)))))))) b!2753388))

(declare-fun m!3168835 () Bool)

(assert (=> setNonEmpty!22066 m!3168835))

(declare-fun m!3168837 () Bool)

(assert (=> b!2753388 m!3168837))

(declare-fun setIsEmpty!22067 () Bool)

(declare-fun setRes!22067 () Bool)

(assert (=> setIsEmpty!22067 setRes!22067))

(declare-fun b!2753389 () Bool)

(declare-fun e!1736020 () Bool)

(declare-fun tp!870033 () Bool)

(assert (=> b!2753389 (= e!1736020 tp!870033)))

(declare-fun e!1736021 () Bool)

(assert (=> b!2753056 (= tp!869907 e!1736021)))

(declare-fun setNonEmpty!22067 () Bool)

(declare-fun tp!870032 () Bool)

(declare-fun setElem!22067 () Context!4546)

(assert (=> setNonEmpty!22067 (= setRes!22067 (and tp!870032 (inv!43275 setElem!22067) e!1736020))))

(declare-fun setRest!22067 () (InoxSet Context!4546))

(assert (=> setNonEmpty!22067 (= (_2!18723 (h!37291 (minValue!3978 (v!33480 (underlying!7641 (v!33481 (underlying!7642 (cache!3768 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4546 Bool)) false) setElem!22067 true) setRest!22067))))

(declare-fun b!2753390 () Bool)

(declare-fun e!1736022 () Bool)

(declare-fun tp!870031 () Bool)

(assert (=> b!2753390 (= e!1736022 tp!870031)))

(declare-fun b!2753391 () Bool)

(declare-fun tp!870030 () Bool)

(declare-fun tp!870034 () Bool)

(assert (=> b!2753391 (= e!1736021 (and tp!870030 (inv!43275 (_2!18722 (_1!18723 (h!37291 (minValue!3978 (v!33480 (underlying!7641 (v!33481 (underlying!7642 (cache!3768 cacheDown!939)))))))))) e!1736022 tp_is_empty!13989 setRes!22067 tp!870034))))

(declare-fun condSetEmpty!22067 () Bool)

(assert (=> b!2753391 (= condSetEmpty!22067 (= (_2!18723 (h!37291 (minValue!3978 (v!33480 (underlying!7641 (v!33481 (underlying!7642 (cache!3768 cacheDown!939)))))))) ((as const (Array Context!4546 Bool)) false)))))

(assert (= b!2753391 b!2753390))

(assert (= (and b!2753391 condSetEmpty!22067) setIsEmpty!22067))

(assert (= (and b!2753391 (not condSetEmpty!22067)) setNonEmpty!22067))

(assert (= setNonEmpty!22067 b!2753389))

(assert (= (and b!2753056 ((_ is Cons!31871) (minValue!3978 (v!33480 (underlying!7641 (v!33481 (underlying!7642 (cache!3768 cacheDown!939)))))))) b!2753391))

(declare-fun m!3168839 () Bool)

(assert (=> setNonEmpty!22067 m!3168839))

(declare-fun m!3168841 () Bool)

(assert (=> b!2753391 m!3168841))

(declare-fun tp!870042 () Bool)

(declare-fun b!2753400 () Bool)

(declare-fun e!1736027 () Bool)

(declare-fun tp!870043 () Bool)

(assert (=> b!2753400 (= e!1736027 (and (inv!43274 (left!24328 (c!445491 input!5495))) tp!870043 (inv!43274 (right!24658 (c!445491 input!5495))) tp!870042))))

(declare-fun b!2753402 () Bool)

(declare-fun e!1736028 () Bool)

(declare-fun tp!870041 () Bool)

(assert (=> b!2753402 (= e!1736028 tp!870041)))

(declare-fun b!2753401 () Bool)

(declare-fun inv!43281 (IArray!19879) Bool)

(assert (=> b!2753401 (= e!1736027 (and (inv!43281 (xs!13044 (c!445491 input!5495))) e!1736028))))

(assert (=> b!2753050 (= tp!869902 (and (inv!43274 (c!445491 input!5495)) e!1736027))))

(assert (= (and b!2753050 ((_ is Node!9937) (c!445491 input!5495))) b!2753400))

(assert (= b!2753401 b!2753402))

(assert (= (and b!2753050 ((_ is Leaf!15133) (c!445491 input!5495))) b!2753401))

(declare-fun m!3168843 () Bool)

(assert (=> b!2753400 m!3168843))

(declare-fun m!3168845 () Bool)

(assert (=> b!2753400 m!3168845))

(declare-fun m!3168847 () Bool)

(assert (=> b!2753401 m!3168847))

(assert (=> b!2753050 m!3168255))

(declare-fun setIsEmpty!22068 () Bool)

(declare-fun setRes!22068 () Bool)

(assert (=> setIsEmpty!22068 setRes!22068))

(declare-fun b!2753403 () Bool)

(declare-fun e!1736029 () Bool)

(declare-fun tp!870047 () Bool)

(assert (=> b!2753403 (= e!1736029 tp!870047)))

(declare-fun e!1736030 () Bool)

(assert (=> b!2753058 (= tp!869910 e!1736030)))

(declare-fun setElem!22068 () Context!4546)

(declare-fun setNonEmpty!22068 () Bool)

(declare-fun tp!870046 () Bool)

(assert (=> setNonEmpty!22068 (= setRes!22068 (and tp!870046 (inv!43275 setElem!22068) e!1736029))))

(declare-fun setRest!22068 () (InoxSet Context!4546))

(assert (=> setNonEmpty!22068 (= (_2!18723 (h!37291 mapDefault!16903)) ((_ map or) (store ((as const (Array Context!4546 Bool)) false) setElem!22068 true) setRest!22068))))

(declare-fun b!2753404 () Bool)

(declare-fun e!1736031 () Bool)

(declare-fun tp!870045 () Bool)

(assert (=> b!2753404 (= e!1736031 tp!870045)))

(declare-fun tp!870048 () Bool)

(declare-fun tp!870044 () Bool)

(declare-fun b!2753405 () Bool)

(assert (=> b!2753405 (= e!1736030 (and tp!870044 (inv!43275 (_2!18722 (_1!18723 (h!37291 mapDefault!16903)))) e!1736031 tp_is_empty!13989 setRes!22068 tp!870048))))

(declare-fun condSetEmpty!22068 () Bool)

(assert (=> b!2753405 (= condSetEmpty!22068 (= (_2!18723 (h!37291 mapDefault!16903)) ((as const (Array Context!4546 Bool)) false)))))

(assert (= b!2753405 b!2753404))

(assert (= (and b!2753405 condSetEmpty!22068) setIsEmpty!22068))

(assert (= (and b!2753405 (not condSetEmpty!22068)) setNonEmpty!22068))

(assert (= setNonEmpty!22068 b!2753403))

(assert (= (and b!2753058 ((_ is Cons!31871) mapDefault!16903)) b!2753405))

(declare-fun m!3168849 () Bool)

(assert (=> setNonEmpty!22068 m!3168849))

(declare-fun m!3168851 () Bool)

(assert (=> b!2753405 m!3168851))

(check-sat (not b!2753374) (not d!796844) (not b!2753384) (not b!2753236) (not bm!178034) (not bm!178033) (not b!2753340) (not b!2753194) (not b!2753266) (not bm!178063) (not b!2753376) (not d!796892) (not b!2753299) (not b!2753186) (not b!2753356) (not b!2753405) (not d!796920) b_and!202647 (not b!2753284) (not b!2753339) (not b!2753385) (not b!2753335) (not b!2753402) (not b!2753289) (not bm!178042) (not b!2753143) (not bm!178057) (not b!2753167) (not mapNonEmpty!16907) (not b!2753265) (not d!796922) (not b!2753180) (not b!2753251) (not b!2753248) (not b!2753193) (not b!2753389) (not b!2753351) (not b!2753350) (not b!2753292) (not b!2753404) (not bm!178029) (not setNonEmpty!22062) (not d!796842) (not bm!178035) (not d!796852) (not b!2753309) (not b!2753401) (not bm!178039) (not bm!178032) (not b!2753386) (not setNonEmpty!22044) (not b!2753172) (not b!2753221) (not b!2753387) (not bm!178046) (not b!2753125) (not setNonEmpty!22065) (not b_next!78613) (not b!2753372) (not bm!178064) b_and!202649 (not b_next!78615) (not b!2753377) (not bm!178058) (not d!796882) (not setNonEmpty!22066) (not b!2753378) (not b!2753373) (not b!2753216) (not b!2753288) (not setNonEmpty!22050) (not bm!178043) (not b!2753381) (not d!796840) (not bm!178061) (not d!796900) (not b!2753390) (not d!796856) (not b!2753269) (not bm!178040) (not b!2753249) (not b!2753133) b_and!202651 (not setNonEmpty!22061) (not d!796812) (not b!2753168) (not d!796886) (not d!796866) (not b!2753156) (not bm!178037) (not bm!178045) (not b!2753171) (not d!796818) (not bm!178051) (not b!2753195) (not d!796896) (not d!796928) (not setNonEmpty!22064) (not d!796910) (not d!796828) (not d!796820) (not d!796876) (not d!796834) (not d!796906) (not bm!178059) (not mapNonEmpty!16910) (not bm!178041) (not d!796832) (not setNonEmpty!22056) (not setNonEmpty!22053) (not bm!178044) (not b!2753250) (not b!2753255) (not d!796912) (not b!2753254) (not b!2753176) (not d!796878) (not bm!178066) (not d!796862) (not d!796918) (not b!2753302) (not b!2753338) (not b_next!78619) (not d!796850) (not b!2753232) (not b!2753383) (not b!2753388) (not b!2753277) (not b!2753242) (not bm!178062) (not d!796858) (not d!796822) (not d!796874) (not d!796808) (not b!2753379) (not b!2753235) (not setNonEmpty!22063) (not setNonEmpty!22067) (not b!2753227) (not d!796838) (not d!796864) (not b!2753337) (not d!796816) (not d!796836) (not b!2753303) (not b!2753271) (not b!2753144) b_and!202653 (not b!2753320) (not b!2753380) (not b!2753391) (not b!2753050) (not d!796868) (not d!796826) (not bm!178038) (not b!2753336) (not setNonEmpty!22068) (not d!796894) (not b!2753120) (not b!2753293) (not b!2753126) (not d!796898) (not b!2753371) (not b!2753185) (not bm!178056) (not b!2753304) (not d!796860) (not b_next!78617) (not bm!178030) (not b!2753175) (not b!2753349) (not b!2753382) (not d!796902) (not d!796870) (not b!2753319) (not bm!178048) (not b!2753276) (not b!2753233) (not d!796880) (not bm!178031) (not d!796904) (not b!2753253) (not b!2753225) (not b!2753138) (not bm!178060) (not b!2753403) (not b!2753286) (not d!796890) (not b!2753270) (not b!2753260) (not b!2753318) (not setNonEmpty!22049) (not bm!178036) (not b!2753400) (not d!796814) (not b!2753169) (not b!2753375) (not b!2753155) (not bm!178065) (not bm!178047) tp_is_empty!13989 (not d!796908) (not bm!178067))
(check-sat b_and!202647 b_and!202651 (not b_next!78619) b_and!202653 (not b_next!78617) (not b_next!78613) b_and!202649 (not b_next!78615))
