; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412224 () Bool)

(assert start!412224)

(declare-fun b!4293845 () Bool)

(declare-fun b_free!127647 () Bool)

(declare-fun b_next!128351 () Bool)

(assert (=> b!4293845 (= b_free!127647 (not b_next!128351))))

(declare-fun tp!1317873 () Bool)

(declare-fun b_and!338863 () Bool)

(assert (=> b!4293845 (= tp!1317873 b_and!338863)))

(declare-fun b!4293846 () Bool)

(declare-fun b_free!127649 () Bool)

(declare-fun b_next!128353 () Bool)

(assert (=> b!4293846 (= b_free!127649 (not b_next!128353))))

(declare-fun tp!1317867 () Bool)

(declare-fun b_and!338865 () Bool)

(assert (=> b!4293846 (= tp!1317867 b_and!338865)))

(declare-fun b!4293853 () Bool)

(declare-fun b_free!127651 () Bool)

(declare-fun b_next!128355 () Bool)

(assert (=> b!4293853 (= b_free!127651 (not b_next!128355))))

(declare-fun tp!1317865 () Bool)

(declare-fun b_and!338867 () Bool)

(assert (=> b!4293853 (= tp!1317865 b_and!338867)))

(declare-fun b!4293840 () Bool)

(declare-fun b_free!127653 () Bool)

(declare-fun b_next!128357 () Bool)

(assert (=> b!4293840 (= b_free!127653 (not b_next!128357))))

(declare-fun tp!1317883 () Bool)

(declare-fun b_and!338869 () Bool)

(assert (=> b!4293840 (= tp!1317883 b_and!338869)))

(declare-fun b!4293839 () Bool)

(declare-fun b_free!127655 () Bool)

(declare-fun b_next!128359 () Bool)

(assert (=> b!4293839 (= b_free!127655 (not b_next!128359))))

(declare-fun tp!1317872 () Bool)

(declare-fun b_and!338871 () Bool)

(assert (=> b!4293839 (= tp!1317872 b_and!338871)))

(declare-fun b!4293830 () Bool)

(declare-fun b_free!127657 () Bool)

(declare-fun b_next!128361 () Bool)

(assert (=> b!4293830 (= b_free!127657 (not b_next!128361))))

(declare-fun tp!1317864 () Bool)

(declare-fun b_and!338873 () Bool)

(assert (=> b!4293830 (= tp!1317864 b_and!338873)))

(declare-fun setRes!26586 () Bool)

(declare-fun e!2668025 () Bool)

(declare-fun tp!1317882 () Bool)

(declare-fun setNonEmpty!26586 () Bool)

(declare-datatypes ((C!26152 0))(
  ( (C!26153 (val!15402 Int)) )
))
(declare-datatypes ((Regex!12977 0))(
  ( (ElementMatch!12977 (c!730698 C!26152)) (Concat!21296 (regOne!26466 Regex!12977) (regTwo!26466 Regex!12977)) (EmptyExpr!12977) (Star!12977 (reg!13306 Regex!12977)) (EmptyLang!12977) (Union!12977 (regOne!26467 Regex!12977) (regTwo!26467 Regex!12977)) )
))
(declare-datatypes ((List!47908 0))(
  ( (Nil!47784) (Cons!47784 (h!53204 Regex!12977) (t!354512 List!47908)) )
))
(declare-datatypes ((Context!5734 0))(
  ( (Context!5735 (exprs!3367 List!47908)) )
))
(declare-fun setElem!26586 () Context!5734)

(declare-fun inv!63308 (Context!5734) Bool)

(assert (=> setNonEmpty!26586 (= setRes!26586 (and tp!1317882 (inv!63308 setElem!26586) e!2668025))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3765 () (InoxSet Context!5734))

(declare-fun setRest!26586 () (InoxSet Context!5734))

(assert (=> setNonEmpty!26586 (= z!3765 ((_ map or) (store ((as const (Array Context!5734 Bool)) false) setElem!26586 true) setRest!26586))))

(declare-fun b!4293827 () Bool)

(declare-fun e!2668033 () Bool)

(declare-datatypes ((List!47909 0))(
  ( (Nil!47785) (Cons!47785 (h!53205 C!26152) (t!354513 List!47909)) )
))
(declare-datatypes ((IArray!28897 0))(
  ( (IArray!28898 (innerList!14506 List!47909)) )
))
(declare-datatypes ((Conc!14418 0))(
  ( (Node!14418 (left!35447 Conc!14418) (right!35777 Conc!14418) (csize!29066 Int) (cheight!14629 Int)) (Leaf!22308 (xs!17724 IArray!28897) (csize!29067 Int)) (Empty!14418) )
))
(declare-datatypes ((BalanceConc!28326 0))(
  ( (BalanceConc!28327 (c!730699 Conc!14418)) )
))
(declare-fun totalInput!812 () BalanceConc!28326)

(declare-fun tp!1317885 () Bool)

(declare-fun inv!63309 (Conc!14418) Bool)

(assert (=> b!4293827 (= e!2668033 (and (inv!63309 (c!730699 totalInput!812)) tp!1317885))))

(declare-fun b!4293828 () Bool)

(declare-fun e!2668024 () Bool)

(declare-datatypes ((tuple2!45514 0))(
  ( (tuple2!45515 (_1!26024 (InoxSet Context!5734)) (_2!26024 Int)) )
))
(declare-datatypes ((Hashable!4366 0))(
  ( (HashableExt!4365 (__x!29375 Int)) )
))
(declare-datatypes ((array!15876 0))(
  ( (array!15877 (arr!7094 (Array (_ BitVec 32) (_ BitVec 64))) (size!35093 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!45516 0))(
  ( (tuple2!45517 (_1!26025 tuple2!45514) (_2!26025 Int)) )
))
(declare-datatypes ((List!47910 0))(
  ( (Nil!47786) (Cons!47786 (h!53206 tuple2!45516) (t!354514 List!47910)) )
))
(declare-datatypes ((array!15878 0))(
  ( (array!15879 (arr!7095 (Array (_ BitVec 32) List!47910)) (size!35094 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8900 0))(
  ( (LongMapFixedSize!8901 (defaultEntry!4835 Int) (mask!12908 (_ BitVec 32)) (extraKeys!4699 (_ BitVec 32)) (zeroValue!4709 List!47910) (minValue!4709 List!47910) (_size!8943 (_ BitVec 32)) (_keys!4750 array!15876) (_values!4731 array!15878) (_vacant!4511 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17609 0))(
  ( (Cell!17610 (v!41725 LongMapFixedSize!8900)) )
))
(declare-datatypes ((MutLongMap!4450 0))(
  ( (LongMap!4450 (underlying!9129 Cell!17609)) (MutLongMapExt!4449 (__x!29376 Int)) )
))
(declare-datatypes ((Cell!17611 0))(
  ( (Cell!17612 (v!41726 MutLongMap!4450)) )
))
(declare-datatypes ((MutableMap!4356 0))(
  ( (MutableMapExt!4355 (__x!29377 Int)) (HashMap!4356 (underlying!9130 Cell!17611) (hashF!6398 Hashable!4366) (_size!8944 (_ BitVec 32)) (defaultValue!4527 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!524 0))(
  ( (CacheFindLongestMatch!525 (cache!4496 MutableMap!4356) (totalInput!4386 BalanceConc!28326)) )
))
(declare-fun cacheFindLongestMatch!183 () CacheFindLongestMatch!524)

(declare-fun tp!1317862 () Bool)

(assert (=> b!4293828 (= e!2668024 (and (inv!63309 (c!730699 (totalInput!4386 cacheFindLongestMatch!183))) tp!1317862))))

(declare-fun b!4293829 () Bool)

(declare-fun e!2668034 () Bool)

(declare-fun e!2668015 () Bool)

(assert (=> b!4293829 (= e!2668034 e!2668015)))

(declare-fun tp!1317870 () Bool)

(declare-fun e!2668012 () Bool)

(declare-fun tp!1317874 () Bool)

(declare-fun e!2668016 () Bool)

(declare-datatypes ((tuple2!45518 0))(
  ( (tuple2!45519 (_1!26026 Context!5734) (_2!26026 C!26152)) )
))
(declare-datatypes ((tuple2!45520 0))(
  ( (tuple2!45521 (_1!26027 tuple2!45518) (_2!26027 (InoxSet Context!5734))) )
))
(declare-datatypes ((List!47911 0))(
  ( (Nil!47787) (Cons!47787 (h!53207 tuple2!45520) (t!354515 List!47911)) )
))
(declare-datatypes ((array!15880 0))(
  ( (array!15881 (arr!7096 (Array (_ BitVec 32) List!47911)) (size!35095 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8902 0))(
  ( (LongMapFixedSize!8903 (defaultEntry!4836 Int) (mask!12909 (_ BitVec 32)) (extraKeys!4700 (_ BitVec 32)) (zeroValue!4710 List!47911) (minValue!4710 List!47911) (_size!8945 (_ BitVec 32)) (_keys!4751 array!15876) (_values!4732 array!15880) (_vacant!4512 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17613 0))(
  ( (Cell!17614 (v!41727 LongMapFixedSize!8902)) )
))
(declare-datatypes ((MutLongMap!4451 0))(
  ( (LongMap!4451 (underlying!9131 Cell!17613)) (MutLongMapExt!4450 (__x!29378 Int)) )
))
(declare-datatypes ((Cell!17615 0))(
  ( (Cell!17616 (v!41728 MutLongMap!4451)) )
))
(declare-datatypes ((Hashable!4367 0))(
  ( (HashableExt!4366 (__x!29379 Int)) )
))
(declare-datatypes ((MutableMap!4357 0))(
  ( (MutableMapExt!4356 (__x!29380 Int)) (HashMap!4357 (underlying!9132 Cell!17615) (hashF!6399 Hashable!4367) (_size!8946 (_ BitVec 32)) (defaultValue!4528 Int)) )
))
(declare-datatypes ((CacheUp!2838 0))(
  ( (CacheUp!2839 (cache!4497 MutableMap!4357)) )
))
(declare-fun cacheUp!947 () CacheUp!2838)

(declare-fun array_inv!5085 (array!15876) Bool)

(declare-fun array_inv!5086 (array!15880) Bool)

(assert (=> b!4293830 (= e!2668012 (and tp!1317864 tp!1317874 tp!1317870 (array_inv!5085 (_keys!4751 (v!41727 (underlying!9131 (v!41728 (underlying!9132 (cache!4497 cacheUp!947))))))) (array_inv!5086 (_values!4732 (v!41727 (underlying!9131 (v!41728 (underlying!9132 (cache!4497 cacheUp!947))))))) e!2668016))))

(declare-fun e!2668006 () Bool)

(declare-fun b!4293831 () Bool)

(declare-fun e!2668032 () Bool)

(declare-fun inv!63310 (BalanceConc!28326) Bool)

(assert (=> b!4293831 (= e!2668032 (and e!2668006 (inv!63310 (totalInput!4386 cacheFindLongestMatch!183)) e!2668024))))

(declare-fun b!4293832 () Bool)

(declare-fun e!2668021 () Bool)

(declare-fun tp!1317881 () Bool)

(declare-fun mapRes!20004 () Bool)

(assert (=> b!4293832 (= e!2668021 (and tp!1317881 mapRes!20004))))

(declare-fun condMapEmpty!20003 () Bool)

(declare-datatypes ((tuple3!5476 0))(
  ( (tuple3!5477 (_1!26028 Regex!12977) (_2!26028 Context!5734) (_3!3267 C!26152)) )
))
(declare-datatypes ((tuple2!45522 0))(
  ( (tuple2!45523 (_1!26029 tuple3!5476) (_2!26029 (InoxSet Context!5734))) )
))
(declare-datatypes ((List!47912 0))(
  ( (Nil!47788) (Cons!47788 (h!53208 tuple2!45522) (t!354516 List!47912)) )
))
(declare-datatypes ((Hashable!4368 0))(
  ( (HashableExt!4367 (__x!29381 Int)) )
))
(declare-datatypes ((array!15882 0))(
  ( (array!15883 (arr!7097 (Array (_ BitVec 32) List!47912)) (size!35096 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8904 0))(
  ( (LongMapFixedSize!8905 (defaultEntry!4837 Int) (mask!12910 (_ BitVec 32)) (extraKeys!4701 (_ BitVec 32)) (zeroValue!4711 List!47912) (minValue!4711 List!47912) (_size!8947 (_ BitVec 32)) (_keys!4752 array!15876) (_values!4733 array!15882) (_vacant!4513 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17617 0))(
  ( (Cell!17618 (v!41729 LongMapFixedSize!8904)) )
))
(declare-datatypes ((MutLongMap!4452 0))(
  ( (LongMap!4452 (underlying!9133 Cell!17617)) (MutLongMapExt!4451 (__x!29382 Int)) )
))
(declare-datatypes ((Cell!17619 0))(
  ( (Cell!17620 (v!41730 MutLongMap!4452)) )
))
(declare-datatypes ((MutableMap!4358 0))(
  ( (MutableMapExt!4357 (__x!29383 Int)) (HashMap!4358 (underlying!9134 Cell!17619) (hashF!6400 Hashable!4368) (_size!8948 (_ BitVec 32)) (defaultValue!4529 Int)) )
))
(declare-datatypes ((CacheDown!2958 0))(
  ( (CacheDown!2959 (cache!4498 MutableMap!4358)) )
))
(declare-fun cacheDown!1066 () CacheDown!2958)

(declare-fun mapDefault!20004 () List!47912)

(assert (=> b!4293832 (= condMapEmpty!20003 (= (arr!7097 (_values!4733 (v!41729 (underlying!9133 (v!41730 (underlying!9134 (cache!4498 cacheDown!1066))))))) ((as const (Array (_ BitVec 32) List!47912)) mapDefault!20004)))))

(declare-fun b!4293833 () Bool)

(declare-fun e!2668010 () Bool)

(declare-fun e!2668014 () Bool)

(assert (=> b!4293833 (= e!2668010 e!2668014)))

(declare-fun mapIsEmpty!20002 () Bool)

(declare-fun mapRes!20002 () Bool)

(assert (=> mapIsEmpty!20002 mapRes!20002))

(declare-fun b!4293834 () Bool)

(declare-fun tp!1317877 () Bool)

(assert (=> b!4293834 (= e!2668025 tp!1317877)))

(declare-fun mapIsEmpty!20003 () Bool)

(assert (=> mapIsEmpty!20003 mapRes!20004))

(declare-fun mapNonEmpty!20002 () Bool)

(declare-fun tp!1317863 () Bool)

(declare-fun tp!1317866 () Bool)

(assert (=> mapNonEmpty!20002 (= mapRes!20004 (and tp!1317863 tp!1317866))))

(declare-fun mapKey!20002 () (_ BitVec 32))

(declare-fun mapValue!20003 () List!47912)

(declare-fun mapRest!20003 () (Array (_ BitVec 32) List!47912))

(assert (=> mapNonEmpty!20002 (= (arr!7097 (_values!4733 (v!41729 (underlying!9133 (v!41730 (underlying!9134 (cache!4498 cacheDown!1066))))))) (store mapRest!20003 mapKey!20002 mapValue!20003))))

(declare-fun b!4293836 () Bool)

(declare-fun e!2668020 () Bool)

(declare-fun e!2668026 () Bool)

(assert (=> b!4293836 (= e!2668020 e!2668026)))

(declare-fun b!4293837 () Bool)

(declare-fun e!2668030 () Bool)

(declare-fun e!2668029 () Bool)

(declare-fun lt!1517596 () MutLongMap!4451)

(get-info :version)

(assert (=> b!4293837 (= e!2668030 (and e!2668029 ((_ is LongMap!4451) lt!1517596)))))

(assert (=> b!4293837 (= lt!1517596 (v!41728 (underlying!9132 (cache!4497 cacheUp!947))))))

(declare-fun b!4293838 () Bool)

(declare-fun tp!1317868 () Bool)

(assert (=> b!4293838 (= e!2668016 (and tp!1317868 mapRes!20002))))

(declare-fun condMapEmpty!20004 () Bool)

(declare-fun mapDefault!20003 () List!47911)

(assert (=> b!4293838 (= condMapEmpty!20004 (= (arr!7096 (_values!4732 (v!41727 (underlying!9131 (v!41728 (underlying!9132 (cache!4497 cacheUp!947))))))) ((as const (Array (_ BitVec 32) List!47911)) mapDefault!20003)))))

(declare-fun e!2668017 () Bool)

(assert (=> b!4293839 (= e!2668026 (and e!2668017 tp!1317872))))

(declare-fun tp!1317878 () Bool)

(declare-fun e!2668011 () Bool)

(declare-fun tp!1317876 () Bool)

(declare-fun array_inv!5087 (array!15882) Bool)

(assert (=> b!4293840 (= e!2668011 (and tp!1317883 tp!1317878 tp!1317876 (array_inv!5085 (_keys!4752 (v!41729 (underlying!9133 (v!41730 (underlying!9134 (cache!4498 cacheDown!1066))))))) (array_inv!5087 (_values!4733 (v!41729 (underlying!9133 (v!41730 (underlying!9134 (cache!4498 cacheDown!1066))))))) e!2668021))))

(declare-fun b!4293841 () Bool)

(declare-fun e!2668023 () Bool)

(declare-fun e!2668028 () Bool)

(assert (=> b!4293841 (= e!2668023 e!2668028)))

(declare-fun b!4293842 () Bool)

(declare-fun e!2668022 () Bool)

(declare-fun tp!1317879 () Bool)

(declare-fun mapRes!20003 () Bool)

(assert (=> b!4293842 (= e!2668022 (and tp!1317879 mapRes!20003))))

(declare-fun condMapEmpty!20002 () Bool)

(declare-fun mapDefault!20002 () List!47910)

(assert (=> b!4293842 (= condMapEmpty!20002 (= (arr!7095 (_values!4731 (v!41725 (underlying!9129 (v!41726 (underlying!9130 (cache!4496 cacheFindLongestMatch!183))))))) ((as const (Array (_ BitVec 32) List!47910)) mapDefault!20002)))))

(declare-fun b!4293843 () Bool)

(declare-fun e!2668031 () Bool)

(assert (=> b!4293843 (= e!2668031 e!2668012)))

(declare-fun b!4293844 () Bool)

(assert (=> b!4293844 (= e!2668029 e!2668031)))

(declare-fun tp!1317871 () Bool)

(declare-fun tp!1317875 () Bool)

(declare-fun array_inv!5088 (array!15878) Bool)

(assert (=> b!4293845 (= e!2668014 (and tp!1317873 tp!1317875 tp!1317871 (array_inv!5085 (_keys!4750 (v!41725 (underlying!9129 (v!41726 (underlying!9130 (cache!4496 cacheFindLongestMatch!183))))))) (array_inv!5088 (_values!4731 (v!41725 (underlying!9129 (v!41726 (underlying!9130 (cache!4496 cacheFindLongestMatch!183))))))) e!2668022))))

(declare-fun e!2668009 () Bool)

(assert (=> b!4293846 (= e!2668006 (and e!2668009 tp!1317867))))

(declare-fun b!4293847 () Bool)

(declare-fun res!1760337 () Bool)

(declare-fun e!2668008 () Bool)

(assert (=> b!4293847 (=> (not res!1760337) (not e!2668008))))

(declare-fun lostCauseZipper!652 ((InoxSet Context!5734)) Bool)

(assert (=> b!4293847 (= res!1760337 (not (lostCauseZipper!652 z!3765)))))

(declare-fun b!4293848 () Bool)

(declare-fun e!2668018 () Bool)

(declare-fun lt!1517599 () MutLongMap!4450)

(assert (=> b!4293848 (= e!2668009 (and e!2668018 ((_ is LongMap!4450) lt!1517599)))))

(assert (=> b!4293848 (= lt!1517599 (v!41726 (underlying!9130 (cache!4496 cacheFindLongestMatch!183))))))

(declare-fun b!4293849 () Bool)

(declare-fun lt!1517598 () MutLongMap!4452)

(assert (=> b!4293849 (= e!2668017 (and e!2668034 ((_ is LongMap!4452) lt!1517598)))))

(assert (=> b!4293849 (= lt!1517598 (v!41730 (underlying!9134 (cache!4498 cacheDown!1066))))))

(declare-fun b!4293850 () Bool)

(declare-fun e!2668027 () Bool)

(assert (=> b!4293850 (= e!2668027 e!2668008)))

(declare-fun res!1760339 () Bool)

(assert (=> b!4293850 (=> (not res!1760339) (not e!2668008))))

(declare-fun from!999 () Int)

(declare-fun lt!1517597 () Int)

(declare-fun totalInputSize!257 () Int)

(assert (=> b!4293850 (= res!1760339 (and (<= from!999 lt!1517597) (= totalInputSize!257 lt!1517597) (= (totalInput!4386 cacheFindLongestMatch!183) totalInput!812)))))

(declare-fun size!35097 (BalanceConc!28326) Int)

(assert (=> b!4293850 (= lt!1517597 (size!35097 totalInput!812))))

(declare-fun b!4293851 () Bool)

(declare-fun res!1760336 () Bool)

(assert (=> b!4293851 (=> (not res!1760336) (not e!2668008))))

(declare-datatypes ((Option!10145 0))(
  ( (None!10144) (Some!10144 (v!41731 Int)) )
))
(declare-fun get!15465 (CacheFindLongestMatch!524 (InoxSet Context!5734) Int) Option!10145)

(assert (=> b!4293851 (= res!1760336 (not ((_ is Some!10144) (get!15465 cacheFindLongestMatch!183 z!3765 from!999))))))

(declare-fun setIsEmpty!26586 () Bool)

(assert (=> setIsEmpty!26586 setRes!26586))

(declare-fun b!4293852 () Bool)

(assert (=> b!4293852 (= e!2668018 e!2668010)))

(declare-fun mapIsEmpty!20004 () Bool)

(assert (=> mapIsEmpty!20004 mapRes!20003))

(assert (=> b!4293853 (= e!2668028 (and e!2668030 tp!1317865))))

(declare-fun b!4293854 () Bool)

(assert (=> b!4293854 (= e!2668015 e!2668011)))

(declare-fun b!4293855 () Bool)

(declare-fun res!1760338 () Bool)

(assert (=> b!4293855 (=> (not res!1760338) (not e!2668008))))

(assert (=> b!4293855 (= res!1760338 (not (= from!999 totalInputSize!257)))))

(declare-fun mapNonEmpty!20003 () Bool)

(declare-fun tp!1317861 () Bool)

(declare-fun tp!1317884 () Bool)

(assert (=> mapNonEmpty!20003 (= mapRes!20003 (and tp!1317861 tp!1317884))))

(declare-fun mapRest!20002 () (Array (_ BitVec 32) List!47910))

(declare-fun mapKey!20004 () (_ BitVec 32))

(declare-fun mapValue!20004 () List!47910)

(assert (=> mapNonEmpty!20003 (= (arr!7095 (_values!4731 (v!41725 (underlying!9129 (v!41726 (underlying!9130 (cache!4496 cacheFindLongestMatch!183))))))) (store mapRest!20002 mapKey!20004 mapValue!20004))))

(declare-fun mapNonEmpty!20004 () Bool)

(declare-fun tp!1317869 () Bool)

(declare-fun tp!1317880 () Bool)

(assert (=> mapNonEmpty!20004 (= mapRes!20002 (and tp!1317869 tp!1317880))))

(declare-fun mapRest!20004 () (Array (_ BitVec 32) List!47911))

(declare-fun mapKey!20003 () (_ BitVec 32))

(declare-fun mapValue!20002 () List!47911)

(assert (=> mapNonEmpty!20004 (= (arr!7096 (_values!4732 (v!41727 (underlying!9131 (v!41728 (underlying!9132 (cache!4497 cacheUp!947))))))) (store mapRest!20004 mapKey!20003 mapValue!20002))))

(declare-fun b!4293835 () Bool)

(assert (=> b!4293835 (= e!2668008 (or (< (+ 1 from!999) 0) (> (+ 1 from!999) lt!1517597)))))

(declare-datatypes ((tuple3!5478 0))(
  ( (tuple3!5479 (_1!26030 (InoxSet Context!5734)) (_2!26030 CacheUp!2838) (_3!3268 CacheDown!2958)) )
))
(declare-fun lt!1517600 () tuple3!5478)

(declare-fun derivationStepZipperMem!137 ((InoxSet Context!5734) C!26152 CacheUp!2838 CacheDown!2958) tuple3!5478)

(declare-fun apply!10846 (BalanceConc!28326 Int) C!26152)

(assert (=> b!4293835 (= lt!1517600 (derivationStepZipperMem!137 z!3765 (apply!10846 totalInput!812 from!999) cacheUp!947 cacheDown!1066))))

(declare-fun res!1760335 () Bool)

(assert (=> start!412224 (=> (not res!1760335) (not e!2668027))))

(assert (=> start!412224 (= res!1760335 (>= from!999 0))))

(assert (=> start!412224 e!2668027))

(declare-fun inv!63311 (CacheDown!2958) Bool)

(assert (=> start!412224 (and (inv!63311 cacheDown!1066) e!2668020)))

(declare-fun inv!63312 (CacheFindLongestMatch!524) Bool)

(assert (=> start!412224 (and (inv!63312 cacheFindLongestMatch!183) e!2668032)))

(declare-fun condSetEmpty!26586 () Bool)

(assert (=> start!412224 (= condSetEmpty!26586 (= z!3765 ((as const (Array Context!5734 Bool)) false)))))

(assert (=> start!412224 setRes!26586))

(assert (=> start!412224 true))

(assert (=> start!412224 (and (inv!63310 totalInput!812) e!2668033)))

(declare-fun inv!63313 (CacheUp!2838) Bool)

(assert (=> start!412224 (and (inv!63313 cacheUp!947) e!2668023)))

(assert (= (and start!412224 res!1760335) b!4293850))

(assert (= (and b!4293850 res!1760339) b!4293851))

(assert (= (and b!4293851 res!1760336) b!4293855))

(assert (= (and b!4293855 res!1760338) b!4293847))

(assert (= (and b!4293847 res!1760337) b!4293835))

(assert (= (and b!4293832 condMapEmpty!20003) mapIsEmpty!20003))

(assert (= (and b!4293832 (not condMapEmpty!20003)) mapNonEmpty!20002))

(assert (= b!4293840 b!4293832))

(assert (= b!4293854 b!4293840))

(assert (= b!4293829 b!4293854))

(assert (= (and b!4293849 ((_ is LongMap!4452) (v!41730 (underlying!9134 (cache!4498 cacheDown!1066))))) b!4293829))

(assert (= b!4293839 b!4293849))

(assert (= (and b!4293836 ((_ is HashMap!4358) (cache!4498 cacheDown!1066))) b!4293839))

(assert (= start!412224 b!4293836))

(assert (= (and b!4293842 condMapEmpty!20002) mapIsEmpty!20004))

(assert (= (and b!4293842 (not condMapEmpty!20002)) mapNonEmpty!20003))

(assert (= b!4293845 b!4293842))

(assert (= b!4293833 b!4293845))

(assert (= b!4293852 b!4293833))

(assert (= (and b!4293848 ((_ is LongMap!4450) (v!41726 (underlying!9130 (cache!4496 cacheFindLongestMatch!183))))) b!4293852))

(assert (= b!4293846 b!4293848))

(assert (= (and b!4293831 ((_ is HashMap!4356) (cache!4496 cacheFindLongestMatch!183))) b!4293846))

(assert (= b!4293831 b!4293828))

(assert (= start!412224 b!4293831))

(assert (= (and start!412224 condSetEmpty!26586) setIsEmpty!26586))

(assert (= (and start!412224 (not condSetEmpty!26586)) setNonEmpty!26586))

(assert (= setNonEmpty!26586 b!4293834))

(assert (= start!412224 b!4293827))

(assert (= (and b!4293838 condMapEmpty!20004) mapIsEmpty!20002))

(assert (= (and b!4293838 (not condMapEmpty!20004)) mapNonEmpty!20004))

(assert (= b!4293830 b!4293838))

(assert (= b!4293843 b!4293830))

(assert (= b!4293844 b!4293843))

(assert (= (and b!4293837 ((_ is LongMap!4451) (v!41728 (underlying!9132 (cache!4497 cacheUp!947))))) b!4293844))

(assert (= b!4293853 b!4293837))

(assert (= (and b!4293841 ((_ is HashMap!4357) (cache!4497 cacheUp!947))) b!4293853))

(assert (= start!412224 b!4293841))

(declare-fun m!4886744 () Bool)

(assert (=> b!4293845 m!4886744))

(declare-fun m!4886746 () Bool)

(assert (=> b!4293845 m!4886746))

(declare-fun m!4886748 () Bool)

(assert (=> b!4293830 m!4886748))

(declare-fun m!4886750 () Bool)

(assert (=> b!4293830 m!4886750))

(declare-fun m!4886752 () Bool)

(assert (=> start!412224 m!4886752))

(declare-fun m!4886754 () Bool)

(assert (=> start!412224 m!4886754))

(declare-fun m!4886756 () Bool)

(assert (=> start!412224 m!4886756))

(declare-fun m!4886758 () Bool)

(assert (=> start!412224 m!4886758))

(declare-fun m!4886760 () Bool)

(assert (=> b!4293828 m!4886760))

(declare-fun m!4886762 () Bool)

(assert (=> b!4293851 m!4886762))

(declare-fun m!4886764 () Bool)

(assert (=> b!4293835 m!4886764))

(assert (=> b!4293835 m!4886764))

(declare-fun m!4886766 () Bool)

(assert (=> b!4293835 m!4886766))

(declare-fun m!4886768 () Bool)

(assert (=> mapNonEmpty!20003 m!4886768))

(declare-fun m!4886770 () Bool)

(assert (=> b!4293827 m!4886770))

(declare-fun m!4886772 () Bool)

(assert (=> b!4293831 m!4886772))

(declare-fun m!4886774 () Bool)

(assert (=> b!4293847 m!4886774))

(declare-fun m!4886776 () Bool)

(assert (=> mapNonEmpty!20004 m!4886776))

(declare-fun m!4886778 () Bool)

(assert (=> b!4293840 m!4886778))

(declare-fun m!4886780 () Bool)

(assert (=> b!4293840 m!4886780))

(declare-fun m!4886782 () Bool)

(assert (=> mapNonEmpty!20002 m!4886782))

(declare-fun m!4886784 () Bool)

(assert (=> setNonEmpty!26586 m!4886784))

(declare-fun m!4886786 () Bool)

(assert (=> b!4293850 m!4886786))

(check-sat (not b!4293831) (not b!4293851) (not b!4293828) b_and!338865 b_and!338867 (not b!4293840) (not b!4293835) (not b!4293847) (not start!412224) (not b!4293832) (not b_next!128359) (not b!4293834) (not mapNonEmpty!20002) (not b_next!128361) (not b_next!128353) (not b_next!128351) (not b!4293827) (not b_next!128357) (not b!4293850) b_and!338863 (not b_next!128355) b_and!338873 (not b!4293842) b_and!338869 (not b!4293830) (not mapNonEmpty!20003) (not setNonEmpty!26586) (not b!4293838) (not b!4293845) (not mapNonEmpty!20004) b_and!338871)
(check-sat (not b_next!128357) b_and!338865 b_and!338867 (not b_next!128359) b_and!338873 (not b_next!128361) (not b_next!128353) b_and!338869 (not b_next!128351) b_and!338871 b_and!338863 (not b_next!128355))
