; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268276 () Bool)

(assert start!268276)

(declare-fun b!2772984 () Bool)

(declare-fun b_free!78245 () Bool)

(declare-fun b_next!78949 () Bool)

(assert (=> b!2772984 (= b_free!78245 (not b_next!78949))))

(declare-fun tp!876931 () Bool)

(declare-fun b_and!202983 () Bool)

(assert (=> b!2772984 (= tp!876931 b_and!202983)))

(declare-fun b!2772982 () Bool)

(declare-fun b_free!78247 () Bool)

(declare-fun b_next!78951 () Bool)

(assert (=> b!2772982 (= b_free!78247 (not b_next!78951))))

(declare-fun tp!876939 () Bool)

(declare-fun b_and!202985 () Bool)

(assert (=> b!2772982 (= tp!876939 b_and!202985)))

(declare-fun b!2772983 () Bool)

(declare-fun b_free!78249 () Bool)

(declare-fun b_next!78953 () Bool)

(assert (=> b!2772983 (= b_free!78249 (not b_next!78953))))

(declare-fun tp!876924 () Bool)

(declare-fun b_and!202987 () Bool)

(assert (=> b!2772983 (= tp!876924 b_and!202987)))

(declare-fun b!2772986 () Bool)

(declare-fun b_free!78251 () Bool)

(declare-fun b_next!78955 () Bool)

(assert (=> b!2772986 (= b_free!78251 (not b_next!78955))))

(declare-fun tp!876927 () Bool)

(declare-fun b_and!202989 () Bool)

(assert (=> b!2772986 (= tp!876927 b_and!202989)))

(declare-fun b!2772974 () Bool)

(declare-fun e!1748585 () Bool)

(declare-fun tp!876938 () Bool)

(declare-fun mapRes!17252 () Bool)

(assert (=> b!2772974 (= e!1748585 (and tp!876938 mapRes!17252))))

(declare-fun condMapEmpty!17252 () Bool)

(declare-datatypes ((C!16328 0))(
  ( (C!16329 (val!10098 Int)) )
))
(declare-datatypes ((Regex!8085 0))(
  ( (ElementMatch!8085 (c!450303 C!16328)) (Concat!13173 (regOne!16682 Regex!8085) (regTwo!16682 Regex!8085)) (EmptyExpr!8085) (Star!8085 (reg!8414 Regex!8085)) (EmptyLang!8085) (Union!8085 (regOne!16683 Regex!8085) (regTwo!16683 Regex!8085)) )
))
(declare-datatypes ((List!32103 0))(
  ( (Nil!32003) (Cons!32003 (h!37423 Regex!8085) (t!228231 List!32103)) )
))
(declare-datatypes ((Context!4606 0))(
  ( (Context!4607 (exprs!2803 List!32103)) )
))
(declare-datatypes ((array!13453 0))(
  ( (array!13454 (arr!5996 (Array (_ BitVec 32) (_ BitVec 64))) (size!24785 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!4830 0))(
  ( (tuple3!4831 (_1!18969 Regex!8085) (_2!18969 Context!4606) (_3!2885 C!16328)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32168 0))(
  ( (tuple2!32169 (_1!18970 tuple3!4830) (_2!18970 (InoxSet Context!4606))) )
))
(declare-datatypes ((List!32104 0))(
  ( (Nil!32004) (Cons!32004 (h!37424 tuple2!32168) (t!228232 List!32104)) )
))
(declare-datatypes ((array!13455 0))(
  ( (array!13456 (arr!5997 (Array (_ BitVec 32) List!32104)) (size!24786 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7556 0))(
  ( (LongMapFixedSize!7557 (defaultEntry!4163 Int) (mask!9557 (_ BitVec 32)) (extraKeys!4027 (_ BitVec 32)) (zeroValue!4037 List!32104) (minValue!4037 List!32104) (_size!7599 (_ BitVec 32)) (_keys!4078 array!13453) (_values!4059 array!13455) (_vacant!3839 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14921 0))(
  ( (Cell!14922 (v!33612 LongMapFixedSize!7556)) )
))
(declare-datatypes ((MutLongMap!3778 0))(
  ( (LongMap!3778 (underlying!7759 Cell!14921)) (MutLongMapExt!3777 (__x!20984 Int)) )
))
(declare-datatypes ((Cell!14923 0))(
  ( (Cell!14924 (v!33613 MutLongMap!3778)) )
))
(declare-datatypes ((Hashable!3694 0))(
  ( (HashableExt!3693 (__x!20985 Int)) )
))
(declare-datatypes ((MutableMap!3684 0))(
  ( (MutableMapExt!3683 (__x!20986 Int)) (HashMap!3684 (underlying!7760 Cell!14923) (hashF!5726 Hashable!3694) (_size!7600 (_ BitVec 32)) (defaultValue!3855 Int)) )
))
(declare-datatypes ((CacheDown!2510 0))(
  ( (CacheDown!2511 (cache!3827 MutableMap!3684)) )
))
(declare-fun cacheDown!939 () CacheDown!2510)

(declare-fun mapDefault!17251 () List!32104)

(assert (=> b!2772974 (= condMapEmpty!17252 (= (arr!5997 (_values!4059 (v!33612 (underlying!7759 (v!33613 (underlying!7760 (cache!3827 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32104)) mapDefault!17251)))))

(declare-fun b!2772975 () Bool)

(declare-fun e!1748595 () Bool)

(declare-fun e!1748594 () Bool)

(assert (=> b!2772975 (= e!1748595 e!1748594)))

(declare-fun b!2772976 () Bool)

(declare-fun e!1748596 () Bool)

(declare-datatypes ((List!32105 0))(
  ( (Nil!32005) (Cons!32005 (h!37425 C!16328) (t!228233 List!32105)) )
))
(declare-fun size!24787 (List!32105) Int)

(assert (=> b!2772976 (= e!1748596 (= 0 (size!24787 Nil!32005)))))

(declare-fun mapNonEmpty!17251 () Bool)

(declare-fun mapRes!17251 () Bool)

(declare-fun tp!876932 () Bool)

(declare-fun tp!876933 () Bool)

(assert (=> mapNonEmpty!17251 (= mapRes!17251 (and tp!876932 tp!876933))))

(declare-datatypes ((tuple2!32170 0))(
  ( (tuple2!32171 (_1!18971 Context!4606) (_2!18971 C!16328)) )
))
(declare-datatypes ((tuple2!32172 0))(
  ( (tuple2!32173 (_1!18972 tuple2!32170) (_2!18972 (InoxSet Context!4606))) )
))
(declare-datatypes ((List!32106 0))(
  ( (Nil!32006) (Cons!32006 (h!37426 tuple2!32172) (t!228234 List!32106)) )
))
(declare-fun mapValue!17251 () List!32106)

(declare-fun mapRest!17251 () (Array (_ BitVec 32) List!32106))

(declare-datatypes ((Hashable!3695 0))(
  ( (HashableExt!3694 (__x!20987 Int)) )
))
(declare-datatypes ((array!13457 0))(
  ( (array!13458 (arr!5998 (Array (_ BitVec 32) List!32106)) (size!24788 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7558 0))(
  ( (LongMapFixedSize!7559 (defaultEntry!4164 Int) (mask!9558 (_ BitVec 32)) (extraKeys!4028 (_ BitVec 32)) (zeroValue!4038 List!32106) (minValue!4038 List!32106) (_size!7601 (_ BitVec 32)) (_keys!4079 array!13453) (_values!4060 array!13457) (_vacant!3840 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14925 0))(
  ( (Cell!14926 (v!33614 LongMapFixedSize!7558)) )
))
(declare-datatypes ((MutLongMap!3779 0))(
  ( (LongMap!3779 (underlying!7761 Cell!14925)) (MutLongMapExt!3778 (__x!20988 Int)) )
))
(declare-datatypes ((Cell!14927 0))(
  ( (Cell!14928 (v!33615 MutLongMap!3779)) )
))
(declare-datatypes ((MutableMap!3685 0))(
  ( (MutableMapExt!3684 (__x!20989 Int)) (HashMap!3685 (underlying!7762 Cell!14927) (hashF!5727 Hashable!3695) (_size!7602 (_ BitVec 32)) (defaultValue!3856 Int)) )
))
(declare-datatypes ((CacheUp!2390 0))(
  ( (CacheUp!2391 (cache!3828 MutableMap!3685)) )
))
(declare-fun cacheUp!820 () CacheUp!2390)

(declare-fun mapKey!17251 () (_ BitVec 32))

(assert (=> mapNonEmpty!17251 (= (arr!5998 (_values!4060 (v!33614 (underlying!7761 (v!33615 (underlying!7762 (cache!3828 cacheUp!820))))))) (store mapRest!17251 mapKey!17251 mapValue!17251))))

(declare-fun b!2772977 () Bool)

(declare-fun e!1748592 () Bool)

(assert (=> b!2772977 (= e!1748592 (not e!1748596))))

(declare-fun res!1159148 () Bool)

(assert (=> b!2772977 (=> res!1159148 e!1748596)))

(declare-fun lt!988410 () List!32105)

(declare-fun ++!7919 (List!32105 List!32105) List!32105)

(assert (=> b!2772977 (= res!1159148 (not (= (++!7919 Nil!32005 lt!988410) lt!988410)))))

(declare-fun e!1748593 () Bool)

(assert (=> b!2772977 e!1748593))

(declare-fun res!1159146 () Bool)

(assert (=> b!2772977 (=> (not res!1159146) (not e!1748593))))

(declare-datatypes ((tuple3!4832 0))(
  ( (tuple3!4833 (_1!18973 Int) (_2!18973 CacheUp!2390) (_3!2886 CacheDown!2510)) )
))
(declare-fun lt!988409 () tuple3!4832)

(declare-fun valid!2948 (CacheUp!2390) Bool)

(assert (=> b!2772977 (= res!1159146 (valid!2948 (_2!18973 lt!988409)))))

(declare-fun z!3597 () (InoxSet Context!4606))

(declare-datatypes ((IArray!19935 0))(
  ( (IArray!19936 (innerList!10025 List!32105)) )
))
(declare-datatypes ((Conc!9965 0))(
  ( (Node!9965 (left!24393 Conc!9965) (right!24723 Conc!9965) (csize!20160 Int) (cheight!10176 Int)) (Leaf!15176 (xs!13075 IArray!19935) (csize!20161 Int)) (Empty!9965) )
))
(declare-datatypes ((BalanceConc!19544 0))(
  ( (BalanceConc!19545 (c!450304 Conc!9965)) )
))
(declare-fun input!5495 () BalanceConc!19544)

(declare-fun lt!988408 () Int)

(declare-fun findLongestMatchInnerZipperFastMem!32 (CacheUp!2390 CacheDown!2510 (InoxSet Context!4606) List!32105 Int List!32105 BalanceConc!19544 Int) tuple3!4832)

(assert (=> b!2772977 (= lt!988409 (findLongestMatchInnerZipperFastMem!32 cacheUp!820 cacheDown!939 z!3597 Nil!32005 0 lt!988410 input!5495 lt!988408))))

(declare-fun size!24789 (BalanceConc!19544) Int)

(assert (=> b!2772977 (= lt!988408 (size!24789 input!5495))))

(declare-fun list!12080 (BalanceConc!19544) List!32105)

(assert (=> b!2772977 (= lt!988410 (list!12080 input!5495))))

(declare-fun mapNonEmpty!17252 () Bool)

(declare-fun tp!876937 () Bool)

(declare-fun tp!876936 () Bool)

(assert (=> mapNonEmpty!17252 (= mapRes!17252 (and tp!876937 tp!876936))))

(declare-fun mapKey!17252 () (_ BitVec 32))

(declare-fun mapRest!17252 () (Array (_ BitVec 32) List!32104))

(declare-fun mapValue!17252 () List!32104)

(assert (=> mapNonEmpty!17252 (= (arr!5997 (_values!4059 (v!33612 (underlying!7759 (v!33613 (underlying!7760 (cache!3827 cacheDown!939))))))) (store mapRest!17252 mapKey!17252 mapValue!17252))))

(declare-fun res!1159144 () Bool)

(assert (=> start!268276 (=> (not res!1159144) (not e!1748592))))

(assert (=> start!268276 (= res!1159144 (valid!2948 cacheUp!820))))

(assert (=> start!268276 e!1748592))

(declare-fun inv!43465 (CacheUp!2390) Bool)

(assert (=> start!268276 (and (inv!43465 cacheUp!820) e!1748595)))

(declare-fun e!1748580 () Bool)

(declare-fun inv!43466 (CacheDown!2510) Bool)

(assert (=> start!268276 (and (inv!43466 cacheDown!939) e!1748580)))

(declare-fun condSetEmpty!22893 () Bool)

(assert (=> start!268276 (= condSetEmpty!22893 (= z!3597 ((as const (Array Context!4606 Bool)) false)))))

(declare-fun setRes!22893 () Bool)

(assert (=> start!268276 setRes!22893))

(declare-fun e!1748591 () Bool)

(declare-fun inv!43467 (BalanceConc!19544) Bool)

(assert (=> start!268276 (and (inv!43467 input!5495) e!1748591)))

(declare-fun b!2772978 () Bool)

(declare-fun e!1748599 () Bool)

(declare-fun e!1748584 () Bool)

(declare-fun lt!988407 () MutLongMap!3778)

(get-info :version)

(assert (=> b!2772978 (= e!1748599 (and e!1748584 ((_ is LongMap!3778) lt!988407)))))

(assert (=> b!2772978 (= lt!988407 (v!33613 (underlying!7760 (cache!3827 cacheDown!939))))))

(declare-fun mapIsEmpty!17251 () Bool)

(assert (=> mapIsEmpty!17251 mapRes!17251))

(declare-fun b!2772979 () Bool)

(declare-fun e!1748581 () Bool)

(declare-fun e!1748582 () Bool)

(assert (=> b!2772979 (= e!1748581 e!1748582)))

(declare-fun mapIsEmpty!17252 () Bool)

(assert (=> mapIsEmpty!17252 mapRes!17252))

(declare-fun b!2772980 () Bool)

(declare-fun tp!876934 () Bool)

(declare-fun inv!43468 (Conc!9965) Bool)

(assert (=> b!2772980 (= e!1748591 (and (inv!43468 (c!450304 input!5495)) tp!876934))))

(declare-fun b!2772981 () Bool)

(declare-fun e!1748583 () Bool)

(assert (=> b!2772981 (= e!1748580 e!1748583)))

(declare-fun e!1748588 () Bool)

(assert (=> b!2772982 (= e!1748594 (and e!1748588 tp!876939))))

(assert (=> b!2772983 (= e!1748583 (and e!1748599 tp!876924))))

(declare-fun tp!876923 () Bool)

(declare-fun e!1748586 () Bool)

(declare-fun tp!876930 () Bool)

(declare-fun e!1748600 () Bool)

(declare-fun array_inv!4290 (array!13453) Bool)

(declare-fun array_inv!4291 (array!13457) Bool)

(assert (=> b!2772984 (= e!1748586 (and tp!876931 tp!876930 tp!876923 (array_inv!4290 (_keys!4079 (v!33614 (underlying!7761 (v!33615 (underlying!7762 (cache!3828 cacheUp!820))))))) (array_inv!4291 (_values!4060 (v!33614 (underlying!7761 (v!33615 (underlying!7762 (cache!3828 cacheUp!820))))))) e!1748600))))

(declare-fun b!2772985 () Bool)

(declare-fun res!1159145 () Bool)

(assert (=> b!2772985 (=> (not res!1159145) (not e!1748593))))

(declare-fun valid!2949 (CacheDown!2510) Bool)

(assert (=> b!2772985 (= res!1159145 (valid!2949 (_3!2886 lt!988409)))))

(declare-fun setIsEmpty!22893 () Bool)

(assert (=> setIsEmpty!22893 setRes!22893))

(declare-fun tp!876928 () Bool)

(declare-fun tp!876935 () Bool)

(declare-fun e!1748587 () Bool)

(declare-fun array_inv!4292 (array!13455) Bool)

(assert (=> b!2772986 (= e!1748587 (and tp!876927 tp!876928 tp!876935 (array_inv!4290 (_keys!4078 (v!33612 (underlying!7759 (v!33613 (underlying!7760 (cache!3827 cacheDown!939))))))) (array_inv!4292 (_values!4059 (v!33612 (underlying!7759 (v!33613 (underlying!7760 (cache!3827 cacheDown!939))))))) e!1748585))))

(declare-fun b!2772987 () Bool)

(declare-fun tp!876929 () Bool)

(assert (=> b!2772987 (= e!1748600 (and tp!876929 mapRes!17251))))

(declare-fun condMapEmpty!17251 () Bool)

(declare-fun mapDefault!17252 () List!32106)

(assert (=> b!2772987 (= condMapEmpty!17251 (= (arr!5998 (_values!4060 (v!33614 (underlying!7761 (v!33615 (underlying!7762 (cache!3828 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32106)) mapDefault!17252)))))

(declare-fun b!2772988 () Bool)

(assert (=> b!2772988 (= e!1748582 e!1748586)))

(declare-fun b!2772989 () Bool)

(declare-fun findLongestMatchInnerZipperFast!38 ((InoxSet Context!4606) List!32105 Int List!32105 BalanceConc!19544 Int) Int)

(assert (=> b!2772989 (= e!1748593 (= (_1!18973 lt!988409) (findLongestMatchInnerZipperFast!38 z!3597 Nil!32005 0 lt!988410 input!5495 lt!988408)))))

(declare-fun b!2772990 () Bool)

(declare-fun res!1159147 () Bool)

(assert (=> b!2772990 (=> (not res!1159147) (not e!1748592))))

(assert (=> b!2772990 (= res!1159147 (valid!2949 cacheDown!939))))

(declare-fun b!2772991 () Bool)

(declare-fun e!1748590 () Bool)

(assert (=> b!2772991 (= e!1748590 e!1748587)))

(declare-fun setElem!22893 () Context!4606)

(declare-fun tp!876926 () Bool)

(declare-fun e!1748597 () Bool)

(declare-fun setNonEmpty!22893 () Bool)

(declare-fun inv!43469 (Context!4606) Bool)

(assert (=> setNonEmpty!22893 (= setRes!22893 (and tp!876926 (inv!43469 setElem!22893) e!1748597))))

(declare-fun setRest!22893 () (InoxSet Context!4606))

(assert (=> setNonEmpty!22893 (= z!3597 ((_ map or) (store ((as const (Array Context!4606 Bool)) false) setElem!22893 true) setRest!22893))))

(declare-fun b!2772992 () Bool)

(declare-fun tp!876925 () Bool)

(assert (=> b!2772992 (= e!1748597 tp!876925)))

(declare-fun b!2772993 () Bool)

(declare-fun lt!988406 () MutLongMap!3779)

(assert (=> b!2772993 (= e!1748588 (and e!1748581 ((_ is LongMap!3779) lt!988406)))))

(assert (=> b!2772993 (= lt!988406 (v!33615 (underlying!7762 (cache!3828 cacheUp!820))))))

(declare-fun b!2772994 () Bool)

(assert (=> b!2772994 (= e!1748584 e!1748590)))

(assert (= (and start!268276 res!1159144) b!2772990))

(assert (= (and b!2772990 res!1159147) b!2772977))

(assert (= (and b!2772977 res!1159146) b!2772985))

(assert (= (and b!2772985 res!1159145) b!2772989))

(assert (= (and b!2772977 (not res!1159148)) b!2772976))

(assert (= (and b!2772987 condMapEmpty!17251) mapIsEmpty!17251))

(assert (= (and b!2772987 (not condMapEmpty!17251)) mapNonEmpty!17251))

(assert (= b!2772984 b!2772987))

(assert (= b!2772988 b!2772984))

(assert (= b!2772979 b!2772988))

(assert (= (and b!2772993 ((_ is LongMap!3779) (v!33615 (underlying!7762 (cache!3828 cacheUp!820))))) b!2772979))

(assert (= b!2772982 b!2772993))

(assert (= (and b!2772975 ((_ is HashMap!3685) (cache!3828 cacheUp!820))) b!2772982))

(assert (= start!268276 b!2772975))

(assert (= (and b!2772974 condMapEmpty!17252) mapIsEmpty!17252))

(assert (= (and b!2772974 (not condMapEmpty!17252)) mapNonEmpty!17252))

(assert (= b!2772986 b!2772974))

(assert (= b!2772991 b!2772986))

(assert (= b!2772994 b!2772991))

(assert (= (and b!2772978 ((_ is LongMap!3778) (v!33613 (underlying!7760 (cache!3827 cacheDown!939))))) b!2772994))

(assert (= b!2772983 b!2772978))

(assert (= (and b!2772981 ((_ is HashMap!3684) (cache!3827 cacheDown!939))) b!2772983))

(assert (= start!268276 b!2772981))

(assert (= (and start!268276 condSetEmpty!22893) setIsEmpty!22893))

(assert (= (and start!268276 (not condSetEmpty!22893)) setNonEmpty!22893))

(assert (= setNonEmpty!22893 b!2772992))

(assert (= start!268276 b!2772980))

(declare-fun m!3199853 () Bool)

(assert (=> b!2772990 m!3199853))

(declare-fun m!3199855 () Bool)

(assert (=> b!2772977 m!3199855))

(declare-fun m!3199857 () Bool)

(assert (=> b!2772977 m!3199857))

(declare-fun m!3199859 () Bool)

(assert (=> b!2772977 m!3199859))

(declare-fun m!3199861 () Bool)

(assert (=> b!2772977 m!3199861))

(declare-fun m!3199863 () Bool)

(assert (=> b!2772977 m!3199863))

(declare-fun m!3199865 () Bool)

(assert (=> b!2772976 m!3199865))

(declare-fun m!3199867 () Bool)

(assert (=> start!268276 m!3199867))

(declare-fun m!3199869 () Bool)

(assert (=> start!268276 m!3199869))

(declare-fun m!3199871 () Bool)

(assert (=> start!268276 m!3199871))

(declare-fun m!3199873 () Bool)

(assert (=> start!268276 m!3199873))

(declare-fun m!3199875 () Bool)

(assert (=> b!2772980 m!3199875))

(declare-fun m!3199877 () Bool)

(assert (=> b!2772984 m!3199877))

(declare-fun m!3199879 () Bool)

(assert (=> b!2772984 m!3199879))

(declare-fun m!3199881 () Bool)

(assert (=> b!2772985 m!3199881))

(declare-fun m!3199883 () Bool)

(assert (=> mapNonEmpty!17251 m!3199883))

(declare-fun m!3199885 () Bool)

(assert (=> b!2772989 m!3199885))

(declare-fun m!3199887 () Bool)

(assert (=> b!2772986 m!3199887))

(declare-fun m!3199889 () Bool)

(assert (=> b!2772986 m!3199889))

(declare-fun m!3199891 () Bool)

(assert (=> mapNonEmpty!17252 m!3199891))

(declare-fun m!3199893 () Bool)

(assert (=> setNonEmpty!22893 m!3199893))

(check-sat (not b!2772974) (not b!2772985) (not mapNonEmpty!17252) (not setNonEmpty!22893) (not b!2772986) (not b!2772984) b_and!202985 (not b!2772976) (not b!2772987) (not b!2772990) b_and!202987 (not b_next!78949) (not b_next!78955) (not mapNonEmpty!17251) (not b_next!78953) b_and!202983 (not b!2772980) (not b!2772989) (not b_next!78951) (not start!268276) (not b!2772977) b_and!202989 (not b!2772992))
(check-sat b_and!202987 (not b_next!78953) b_and!202983 b_and!202985 (not b_next!78951) b_and!202989 (not b_next!78949) (not b_next!78955))
(get-model)

(declare-fun d!806325 () Bool)

(declare-fun lt!988413 () Int)

(assert (=> d!806325 (>= lt!988413 0)))

(declare-fun e!1748603 () Int)

(assert (=> d!806325 (= lt!988413 e!1748603)))

(declare-fun c!450307 () Bool)

(assert (=> d!806325 (= c!450307 ((_ is Nil!32005) Nil!32005))))

(assert (=> d!806325 (= (size!24787 Nil!32005) lt!988413)))

(declare-fun b!2772999 () Bool)

(assert (=> b!2772999 (= e!1748603 0)))

(declare-fun b!2773000 () Bool)

(assert (=> b!2773000 (= e!1748603 (+ 1 (size!24787 (t!228233 Nil!32005))))))

(assert (= (and d!806325 c!450307) b!2772999))

(assert (= (and d!806325 (not c!450307)) b!2773000))

(declare-fun m!3199895 () Bool)

(assert (=> b!2773000 m!3199895))

(assert (=> b!2772976 d!806325))

(declare-fun d!806327 () Bool)

(declare-fun lambda!101790 () Int)

(declare-fun forall!6628 (List!32103 Int) Bool)

(assert (=> d!806327 (= (inv!43469 setElem!22893) (forall!6628 (exprs!2803 setElem!22893) lambda!101790))))

(declare-fun bs!505222 () Bool)

(assert (= bs!505222 d!806327))

(declare-fun m!3199897 () Bool)

(assert (=> bs!505222 m!3199897))

(assert (=> setNonEmpty!22893 d!806327))

(declare-fun d!806329 () Bool)

(declare-fun validCacheMapUp!366 (MutableMap!3685) Bool)

(assert (=> d!806329 (= (valid!2948 cacheUp!820) (validCacheMapUp!366 (cache!3828 cacheUp!820)))))

(declare-fun bs!505223 () Bool)

(assert (= bs!505223 d!806329))

(declare-fun m!3199899 () Bool)

(assert (=> bs!505223 m!3199899))

(assert (=> start!268276 d!806329))

(declare-fun d!806331 () Bool)

(declare-fun res!1159151 () Bool)

(declare-fun e!1748606 () Bool)

(assert (=> d!806331 (=> (not res!1159151) (not e!1748606))))

(assert (=> d!806331 (= res!1159151 ((_ is HashMap!3685) (cache!3828 cacheUp!820)))))

(assert (=> d!806331 (= (inv!43465 cacheUp!820) e!1748606)))

(declare-fun b!2773003 () Bool)

(assert (=> b!2773003 (= e!1748606 (validCacheMapUp!366 (cache!3828 cacheUp!820)))))

(assert (= (and d!806331 res!1159151) b!2773003))

(assert (=> b!2773003 m!3199899))

(assert (=> start!268276 d!806331))

(declare-fun d!806333 () Bool)

(declare-fun res!1159154 () Bool)

(declare-fun e!1748609 () Bool)

(assert (=> d!806333 (=> (not res!1159154) (not e!1748609))))

(assert (=> d!806333 (= res!1159154 ((_ is HashMap!3684) (cache!3827 cacheDown!939)))))

(assert (=> d!806333 (= (inv!43466 cacheDown!939) e!1748609)))

(declare-fun b!2773006 () Bool)

(declare-fun validCacheMapDown!397 (MutableMap!3684) Bool)

(assert (=> b!2773006 (= e!1748609 (validCacheMapDown!397 (cache!3827 cacheDown!939)))))

(assert (= (and d!806333 res!1159154) b!2773006))

(declare-fun m!3199901 () Bool)

(assert (=> b!2773006 m!3199901))

(assert (=> start!268276 d!806333))

(declare-fun d!806335 () Bool)

(declare-fun isBalanced!3041 (Conc!9965) Bool)

(assert (=> d!806335 (= (inv!43467 input!5495) (isBalanced!3041 (c!450304 input!5495)))))

(declare-fun bs!505224 () Bool)

(assert (= bs!505224 d!806335))

(declare-fun m!3199903 () Bool)

(assert (=> bs!505224 m!3199903))

(assert (=> start!268276 d!806335))

(declare-fun d!806337 () Bool)

(assert (=> d!806337 (= (array_inv!4290 (_keys!4079 (v!33614 (underlying!7761 (v!33615 (underlying!7762 (cache!3828 cacheUp!820))))))) (bvsge (size!24785 (_keys!4079 (v!33614 (underlying!7761 (v!33615 (underlying!7762 (cache!3828 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2772984 d!806337))

(declare-fun d!806339 () Bool)

(assert (=> d!806339 (= (array_inv!4291 (_values!4060 (v!33614 (underlying!7761 (v!33615 (underlying!7762 (cache!3828 cacheUp!820))))))) (bvsge (size!24788 (_values!4060 (v!33614 (underlying!7761 (v!33615 (underlying!7762 (cache!3828 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2772984 d!806339))

(declare-fun d!806341 () Bool)

(assert (=> d!806341 (= (valid!2949 cacheDown!939) (validCacheMapDown!397 (cache!3827 cacheDown!939)))))

(declare-fun bs!505225 () Bool)

(assert (= bs!505225 d!806341))

(assert (=> bs!505225 m!3199901))

(assert (=> b!2772990 d!806341))

(declare-fun d!806343 () Bool)

(declare-fun c!450310 () Bool)

(assert (=> d!806343 (= c!450310 ((_ is Node!9965) (c!450304 input!5495)))))

(declare-fun e!1748614 () Bool)

(assert (=> d!806343 (= (inv!43468 (c!450304 input!5495)) e!1748614)))

(declare-fun b!2773013 () Bool)

(declare-fun inv!43470 (Conc!9965) Bool)

(assert (=> b!2773013 (= e!1748614 (inv!43470 (c!450304 input!5495)))))

(declare-fun b!2773014 () Bool)

(declare-fun e!1748615 () Bool)

(assert (=> b!2773014 (= e!1748614 e!1748615)))

(declare-fun res!1159157 () Bool)

(assert (=> b!2773014 (= res!1159157 (not ((_ is Leaf!15176) (c!450304 input!5495))))))

(assert (=> b!2773014 (=> res!1159157 e!1748615)))

(declare-fun b!2773015 () Bool)

(declare-fun inv!43471 (Conc!9965) Bool)

(assert (=> b!2773015 (= e!1748615 (inv!43471 (c!450304 input!5495)))))

(assert (= (and d!806343 c!450310) b!2773013))

(assert (= (and d!806343 (not c!450310)) b!2773014))

(assert (= (and b!2773014 (not res!1159157)) b!2773015))

(declare-fun m!3199905 () Bool)

(assert (=> b!2773013 m!3199905))

(declare-fun m!3199907 () Bool)

(assert (=> b!2773015 m!3199907))

(assert (=> b!2772980 d!806343))

(declare-fun d!806345 () Bool)

(assert (=> d!806345 (= (valid!2949 (_3!2886 lt!988409)) (validCacheMapDown!397 (cache!3827 (_3!2886 lt!988409))))))

(declare-fun bs!505226 () Bool)

(assert (= bs!505226 d!806345))

(declare-fun m!3199909 () Bool)

(assert (=> bs!505226 m!3199909))

(assert (=> b!2772985 d!806345))

(declare-fun d!806347 () Bool)

(declare-fun list!12081 (Conc!9965) List!32105)

(assert (=> d!806347 (= (list!12080 input!5495) (list!12081 (c!450304 input!5495)))))

(declare-fun bs!505227 () Bool)

(assert (= bs!505227 d!806347))

(declare-fun m!3199911 () Bool)

(assert (=> bs!505227 m!3199911))

(assert (=> b!2772977 d!806347))

(declare-fun d!806349 () Bool)

(declare-fun lt!988416 () Int)

(assert (=> d!806349 (= lt!988416 (size!24787 (list!12080 input!5495)))))

(declare-fun size!24790 (Conc!9965) Int)

(assert (=> d!806349 (= lt!988416 (size!24790 (c!450304 input!5495)))))

(assert (=> d!806349 (= (size!24789 input!5495) lt!988416)))

(declare-fun bs!505228 () Bool)

(assert (= bs!505228 d!806349))

(assert (=> bs!505228 m!3199855))

(assert (=> bs!505228 m!3199855))

(declare-fun m!3199913 () Bool)

(assert (=> bs!505228 m!3199913))

(declare-fun m!3199915 () Bool)

(assert (=> bs!505228 m!3199915))

(assert (=> b!2772977 d!806349))

(declare-fun d!806351 () Bool)

(declare-fun e!1748618 () Bool)

(assert (=> d!806351 e!1748618))

(declare-fun res!1159162 () Bool)

(assert (=> d!806351 (=> (not res!1159162) (not e!1748618))))

(declare-fun lt!988419 () tuple3!4832)

(assert (=> d!806351 (= res!1159162 (valid!2948 (_2!18973 lt!988419)))))

(declare-fun choose!16268 (CacheUp!2390 CacheDown!2510 (InoxSet Context!4606) List!32105 Int List!32105 BalanceConc!19544 Int) tuple3!4832)

(assert (=> d!806351 (= lt!988419 (choose!16268 cacheUp!820 cacheDown!939 z!3597 Nil!32005 0 lt!988410 input!5495 lt!988408))))

(assert (=> d!806351 (= (++!7919 Nil!32005 lt!988410) (list!12080 input!5495))))

(assert (=> d!806351 (= (findLongestMatchInnerZipperFastMem!32 cacheUp!820 cacheDown!939 z!3597 Nil!32005 0 lt!988410 input!5495 lt!988408) lt!988419)))

(declare-fun b!2773020 () Bool)

(declare-fun res!1159163 () Bool)

(assert (=> b!2773020 (=> (not res!1159163) (not e!1748618))))

(assert (=> b!2773020 (= res!1159163 (valid!2949 (_3!2886 lt!988419)))))

(declare-fun b!2773021 () Bool)

(assert (=> b!2773021 (= e!1748618 (= (_1!18973 lt!988419) (findLongestMatchInnerZipperFast!38 z!3597 Nil!32005 0 lt!988410 input!5495 lt!988408)))))

(assert (= (and d!806351 res!1159162) b!2773020))

(assert (= (and b!2773020 res!1159163) b!2773021))

(declare-fun m!3199917 () Bool)

(assert (=> d!806351 m!3199917))

(declare-fun m!3199919 () Bool)

(assert (=> d!806351 m!3199919))

(assert (=> d!806351 m!3199861))

(assert (=> d!806351 m!3199855))

(declare-fun m!3199921 () Bool)

(assert (=> b!2773020 m!3199921))

(assert (=> b!2773021 m!3199885))

(assert (=> b!2772977 d!806351))

(declare-fun d!806353 () Bool)

(assert (=> d!806353 (= (valid!2948 (_2!18973 lt!988409)) (validCacheMapUp!366 (cache!3828 (_2!18973 lt!988409))))))

(declare-fun bs!505229 () Bool)

(assert (= bs!505229 d!806353))

(declare-fun m!3199923 () Bool)

(assert (=> bs!505229 m!3199923))

(assert (=> b!2772977 d!806353))

(declare-fun b!2773032 () Bool)

(declare-fun res!1159169 () Bool)

(declare-fun e!1748624 () Bool)

(assert (=> b!2773032 (=> (not res!1159169) (not e!1748624))))

(declare-fun lt!988422 () List!32105)

(assert (=> b!2773032 (= res!1159169 (= (size!24787 lt!988422) (+ (size!24787 Nil!32005) (size!24787 lt!988410))))))

(declare-fun d!806355 () Bool)

(assert (=> d!806355 e!1748624))

(declare-fun res!1159168 () Bool)

(assert (=> d!806355 (=> (not res!1159168) (not e!1748624))))

(declare-fun content!4505 (List!32105) (InoxSet C!16328))

(assert (=> d!806355 (= res!1159168 (= (content!4505 lt!988422) ((_ map or) (content!4505 Nil!32005) (content!4505 lt!988410))))))

(declare-fun e!1748623 () List!32105)

(assert (=> d!806355 (= lt!988422 e!1748623)))

(declare-fun c!450313 () Bool)

(assert (=> d!806355 (= c!450313 ((_ is Nil!32005) Nil!32005))))

(assert (=> d!806355 (= (++!7919 Nil!32005 lt!988410) lt!988422)))

(declare-fun b!2773031 () Bool)

(assert (=> b!2773031 (= e!1748623 (Cons!32005 (h!37425 Nil!32005) (++!7919 (t!228233 Nil!32005) lt!988410)))))

(declare-fun b!2773030 () Bool)

(assert (=> b!2773030 (= e!1748623 lt!988410)))

(declare-fun b!2773033 () Bool)

(assert (=> b!2773033 (= e!1748624 (or (not (= lt!988410 Nil!32005)) (= lt!988422 Nil!32005)))))

(assert (= (and d!806355 c!450313) b!2773030))

(assert (= (and d!806355 (not c!450313)) b!2773031))

(assert (= (and d!806355 res!1159168) b!2773032))

(assert (= (and b!2773032 res!1159169) b!2773033))

(declare-fun m!3199925 () Bool)

(assert (=> b!2773032 m!3199925))

(assert (=> b!2773032 m!3199865))

(declare-fun m!3199927 () Bool)

(assert (=> b!2773032 m!3199927))

(declare-fun m!3199929 () Bool)

(assert (=> d!806355 m!3199929))

(declare-fun m!3199931 () Bool)

(assert (=> d!806355 m!3199931))

(declare-fun m!3199933 () Bool)

(assert (=> d!806355 m!3199933))

(declare-fun m!3199935 () Bool)

(assert (=> b!2773031 m!3199935))

(assert (=> b!2772977 d!806355))

(declare-fun bm!181292 () Bool)

(declare-fun call!181297 () C!16328)

(declare-fun apply!7504 (BalanceConc!19544 Int) C!16328)

(assert (=> bm!181292 (= call!181297 (apply!7504 input!5495 0))))

(declare-fun bm!181293 () Bool)

(declare-fun call!181302 () (InoxSet Context!4606))

(declare-fun derivationStepZipper!366 ((InoxSet Context!4606) C!16328) (InoxSet Context!4606))

(assert (=> bm!181293 (= call!181302 (derivationStepZipper!366 z!3597 call!181297))))

(declare-fun b!2773058 () Bool)

(declare-fun c!450327 () Bool)

(declare-fun call!181305 () Bool)

(assert (=> b!2773058 (= c!450327 call!181305)))

(declare-datatypes ((Unit!46184 0))(
  ( (Unit!46185) )
))
(declare-fun lt!988525 () Unit!46184)

(declare-fun lt!988546 () Unit!46184)

(assert (=> b!2773058 (= lt!988525 lt!988546)))

(declare-fun lt!988510 () C!16328)

(declare-fun lt!988524 () List!32105)

(declare-fun lt!988547 () List!32105)

(assert (=> b!2773058 (= (++!7919 (++!7919 Nil!32005 (Cons!32005 lt!988510 Nil!32005)) lt!988524) lt!988547)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!869 (List!32105 C!16328 List!32105 List!32105) Unit!46184)

(assert (=> b!2773058 (= lt!988546 (lemmaMoveElementToOtherListKeepsConcatEq!869 Nil!32005 lt!988510 lt!988524 lt!988547))))

(assert (=> b!2773058 (= lt!988547 (list!12080 input!5495))))

(declare-fun tail!4386 (List!32105) List!32105)

(assert (=> b!2773058 (= lt!988524 (tail!4386 lt!988410))))

(assert (=> b!2773058 (= lt!988510 (apply!7504 input!5495 0))))

(declare-fun lt!988521 () Unit!46184)

(declare-fun lt!988507 () Unit!46184)

(assert (=> b!2773058 (= lt!988521 lt!988507)))

(declare-fun lt!988511 () List!32105)

(declare-fun isPrefix!2553 (List!32105 List!32105) Bool)

(declare-fun head!6148 (List!32105) C!16328)

(declare-fun getSuffix!1235 (List!32105 List!32105) List!32105)

(assert (=> b!2773058 (isPrefix!2553 (++!7919 Nil!32005 (Cons!32005 (head!6148 (getSuffix!1235 lt!988511 Nil!32005)) Nil!32005)) lt!988511)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!457 (List!32105 List!32105) Unit!46184)

(assert (=> b!2773058 (= lt!988507 (lemmaAddHeadSuffixToPrefixStillPrefix!457 Nil!32005 lt!988511))))

(assert (=> b!2773058 (= lt!988511 (list!12080 input!5495))))

(declare-fun lt!988543 () Unit!46184)

(declare-fun e!1748642 () Unit!46184)

(assert (=> b!2773058 (= lt!988543 e!1748642)))

(declare-fun c!450326 () Bool)

(assert (=> b!2773058 (= c!450326 (= (size!24787 Nil!32005) (size!24789 input!5495)))))

(declare-fun lt!988531 () Unit!46184)

(declare-fun lt!988538 () Unit!46184)

(assert (=> b!2773058 (= lt!988531 lt!988538)))

(declare-fun lt!988522 () List!32105)

(assert (=> b!2773058 (<= (size!24787 Nil!32005) (size!24787 lt!988522))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!260 (List!32105 List!32105) Unit!46184)

(assert (=> b!2773058 (= lt!988538 (lemmaIsPrefixThenSmallerEqSize!260 Nil!32005 lt!988522))))

(assert (=> b!2773058 (= lt!988522 (list!12080 input!5495))))

(declare-fun lt!988545 () Unit!46184)

(declare-fun lt!988528 () Unit!46184)

(assert (=> b!2773058 (= lt!988545 lt!988528)))

(declare-fun lt!988527 () List!32105)

(declare-fun drop!1706 (List!32105 Int) List!32105)

(declare-fun apply!7505 (List!32105 Int) C!16328)

(assert (=> b!2773058 (= (head!6148 (drop!1706 lt!988527 0)) (apply!7505 lt!988527 0))))

(declare-fun lemmaDropApply!912 (List!32105 Int) Unit!46184)

(assert (=> b!2773058 (= lt!988528 (lemmaDropApply!912 lt!988527 0))))

(assert (=> b!2773058 (= lt!988527 (list!12080 input!5495))))

(declare-fun lt!988515 () Unit!46184)

(declare-fun lt!988520 () Unit!46184)

(assert (=> b!2773058 (= lt!988515 lt!988520)))

(declare-fun lt!988541 () List!32105)

(declare-fun lt!988509 () List!32105)

(assert (=> b!2773058 (and (= lt!988541 Nil!32005) (= lt!988509 lt!988410))))

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!338 (List!32105 List!32105 List!32105 List!32105) Unit!46184)

(assert (=> b!2773058 (= lt!988520 (lemmaConcatSameAndSameSizesThenSameLists!338 lt!988541 lt!988509 Nil!32005 lt!988410))))

(declare-datatypes ((tuple2!32174 0))(
  ( (tuple2!32175 (_1!18974 BalanceConc!19544) (_2!18974 BalanceConc!19544)) )
))
(declare-fun lt!988514 () tuple2!32174)

(assert (=> b!2773058 (= lt!988509 (list!12080 (_2!18974 lt!988514)))))

(declare-fun call!181301 () List!32105)

(assert (=> b!2773058 (= lt!988541 call!181301)))

(declare-fun splitAt!115 (BalanceConc!19544 Int) tuple2!32174)

(assert (=> b!2773058 (= lt!988514 (splitAt!115 input!5495 0))))

(declare-fun e!1748639 () Int)

(declare-fun e!1748640 () Int)

(assert (=> b!2773058 (= e!1748639 e!1748640)))

(declare-fun b!2773059 () Bool)

(declare-fun Unit!46186 () Unit!46184)

(assert (=> b!2773059 (= e!1748642 Unit!46186)))

(declare-fun d!806357 () Bool)

(declare-fun lt!988529 () Int)

(declare-datatypes ((tuple2!32176 0))(
  ( (tuple2!32177 (_1!18975 List!32105) (_2!18975 List!32105)) )
))
(declare-fun findLongestMatchInnerZipper!23 ((InoxSet Context!4606) List!32105 Int List!32105 List!32105 Int) tuple2!32176)

(assert (=> d!806357 (= (size!24787 (_1!18975 (findLongestMatchInnerZipper!23 z!3597 Nil!32005 0 lt!988410 (list!12080 input!5495) lt!988408))) lt!988529)))

(declare-fun e!1748637 () Int)

(assert (=> d!806357 (= lt!988529 e!1748637)))

(declare-fun c!450329 () Bool)

(declare-fun lostCauseZipper!439 ((InoxSet Context!4606)) Bool)

(assert (=> d!806357 (= c!450329 (lostCauseZipper!439 z!3597))))

(declare-fun lt!988508 () Unit!46184)

(declare-fun Unit!46187 () Unit!46184)

(assert (=> d!806357 (= lt!988508 Unit!46187)))

(assert (=> d!806357 (= (getSuffix!1235 (list!12080 input!5495) Nil!32005) lt!988410)))

(declare-fun lt!988537 () Unit!46184)

(declare-fun lt!988535 () Unit!46184)

(assert (=> d!806357 (= lt!988537 lt!988535)))

(declare-fun lt!988540 () List!32105)

(assert (=> d!806357 (= lt!988410 lt!988540)))

(declare-fun lemmaSamePrefixThenSameSuffix!1137 (List!32105 List!32105 List!32105 List!32105 List!32105) Unit!46184)

(assert (=> d!806357 (= lt!988535 (lemmaSamePrefixThenSameSuffix!1137 Nil!32005 lt!988410 Nil!32005 lt!988540 (list!12080 input!5495)))))

(assert (=> d!806357 (= lt!988540 (getSuffix!1235 (list!12080 input!5495) Nil!32005))))

(declare-fun lt!988512 () Unit!46184)

(declare-fun lt!988523 () Unit!46184)

(assert (=> d!806357 (= lt!988512 lt!988523)))

(assert (=> d!806357 (isPrefix!2553 Nil!32005 (++!7919 Nil!32005 lt!988410))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1663 (List!32105 List!32105) Unit!46184)

(assert (=> d!806357 (= lt!988523 (lemmaConcatTwoListThenFirstIsPrefix!1663 Nil!32005 lt!988410))))

(assert (=> d!806357 (= (++!7919 Nil!32005 lt!988410) (list!12080 input!5495))))

(assert (=> d!806357 (= (findLongestMatchInnerZipperFast!38 z!3597 Nil!32005 0 lt!988410 input!5495 lt!988408) lt!988529)))

(declare-fun bm!181294 () Bool)

(declare-fun c!450330 () Bool)

(declare-fun c!450328 () Bool)

(assert (=> bm!181294 (= c!450330 c!450328)))

(declare-fun call!181304 () Unit!46184)

(declare-fun lt!988518 () List!32105)

(declare-fun lt!988544 () List!32105)

(declare-fun e!1748638 () List!32105)

(declare-fun lemmaIsPrefixSameLengthThenSameList!459 (List!32105 List!32105 List!32105) Unit!46184)

(assert (=> bm!181294 (= call!181304 (lemmaIsPrefixSameLengthThenSameList!459 (ite c!450328 lt!988544 lt!988518) Nil!32005 e!1748638))))

(declare-fun bm!181295 () Bool)

(declare-fun call!181303 () List!32105)

(assert (=> bm!181295 (= call!181303 (tail!4386 lt!988410))))

(declare-fun b!2773060 () Bool)

(assert (=> b!2773060 (= e!1748637 0)))

(declare-fun lt!988530 () List!32105)

(declare-fun lt!988517 () List!32105)

(declare-fun call!181300 () Unit!46184)

(declare-fun lt!988548 () List!32105)

(declare-fun lt!988536 () List!32105)

(declare-fun bm!181296 () Bool)

(declare-fun lemmaIsPrefixRefl!1677 (List!32105 List!32105) Unit!46184)

(assert (=> bm!181296 (= call!181300 (lemmaIsPrefixRefl!1677 (ite c!450328 lt!988530 lt!988517) (ite c!450328 lt!988536 lt!988548)))))

(declare-fun b!2773061 () Bool)

(declare-fun e!1748641 () Int)

(assert (=> b!2773061 (= e!1748641 0)))

(declare-fun b!2773062 () Bool)

(assert (=> b!2773062 (= e!1748637 e!1748639)))

(assert (=> b!2773062 (= c!450328 (= 0 lt!988408))))

(declare-fun bm!181297 () Bool)

(assert (=> bm!181297 (= call!181301 (list!12080 (ite c!450328 input!5495 (_1!18974 lt!988514))))))

(declare-fun b!2773063 () Bool)

(declare-fun c!450331 () Bool)

(assert (=> b!2773063 (= c!450331 call!181305)))

(declare-fun lt!988519 () Unit!46184)

(declare-fun lt!988533 () Unit!46184)

(assert (=> b!2773063 (= lt!988519 lt!988533)))

(assert (=> b!2773063 (= lt!988544 Nil!32005)))

(assert (=> b!2773063 (= lt!988533 call!181304)))

(assert (=> b!2773063 (= lt!988544 call!181301)))

(declare-fun lt!988542 () Unit!46184)

(declare-fun lt!988526 () Unit!46184)

(assert (=> b!2773063 (= lt!988542 lt!988526)))

(declare-fun call!181306 () Bool)

(assert (=> b!2773063 call!181306))

(assert (=> b!2773063 (= lt!988526 call!181300)))

(assert (=> b!2773063 (= lt!988536 call!181301)))

(assert (=> b!2773063 (= lt!988530 call!181301)))

(assert (=> b!2773063 (= e!1748639 e!1748641)))

(declare-fun call!181299 () List!32105)

(declare-fun call!181298 () Int)

(declare-fun bm!181298 () Bool)

(assert (=> bm!181298 (= call!181298 (findLongestMatchInnerZipperFast!38 call!181302 call!181299 (+ 0 1) call!181303 input!5495 lt!988408))))

(declare-fun b!2773064 () Bool)

(assert (=> b!2773064 (= e!1748641 0)))

(declare-fun bm!181299 () Bool)

(assert (=> bm!181299 (= call!181299 (++!7919 Nil!32005 (Cons!32005 call!181297 Nil!32005)))))

(declare-fun b!2773065 () Bool)

(assert (=> b!2773065 (= e!1748638 call!181301)))

(declare-fun b!2773066 () Bool)

(declare-fun Unit!46188 () Unit!46184)

(assert (=> b!2773066 (= e!1748642 Unit!46188)))

(assert (=> b!2773066 (= lt!988517 (list!12080 input!5495))))

(assert (=> b!2773066 (= lt!988548 (list!12080 input!5495))))

(declare-fun lt!988516 () Unit!46184)

(assert (=> b!2773066 (= lt!988516 call!181300)))

(assert (=> b!2773066 call!181306))

(declare-fun lt!988513 () Unit!46184)

(assert (=> b!2773066 (= lt!988513 lt!988516)))

(assert (=> b!2773066 (= lt!988518 (list!12080 input!5495))))

(declare-fun lt!988534 () Unit!46184)

(assert (=> b!2773066 (= lt!988534 call!181304)))

(assert (=> b!2773066 (= lt!988518 Nil!32005)))

(declare-fun lt!988532 () Unit!46184)

(assert (=> b!2773066 (= lt!988532 lt!988534)))

(assert (=> b!2773066 false))

(declare-fun b!2773067 () Bool)

(assert (=> b!2773067 (= e!1748638 (list!12080 input!5495))))

(declare-fun bm!181300 () Bool)

(declare-fun nullableZipper!632 ((InoxSet Context!4606)) Bool)

(assert (=> bm!181300 (= call!181305 (nullableZipper!632 z!3597))))

(declare-fun b!2773068 () Bool)

(declare-fun lt!988539 () Int)

(assert (=> b!2773068 (= e!1748640 (ite (= lt!988539 0) 0 lt!988539))))

(assert (=> b!2773068 (= lt!988539 call!181298)))

(declare-fun bm!181301 () Bool)

(assert (=> bm!181301 (= call!181306 (isPrefix!2553 (ite c!450328 lt!988530 lt!988517) (ite c!450328 lt!988536 lt!988548)))))

(declare-fun b!2773069 () Bool)

(assert (=> b!2773069 (= e!1748640 call!181298)))

(assert (= (and d!806357 c!450329) b!2773060))

(assert (= (and d!806357 (not c!450329)) b!2773062))

(assert (= (and b!2773062 c!450328) b!2773063))

(assert (= (and b!2773062 (not c!450328)) b!2773058))

(assert (= (and b!2773063 c!450331) b!2773064))

(assert (= (and b!2773063 (not c!450331)) b!2773061))

(assert (= (and b!2773058 c!450326) b!2773066))

(assert (= (and b!2773058 (not c!450326)) b!2773059))

(assert (= (and b!2773058 c!450327) b!2773068))

(assert (= (and b!2773058 (not c!450327)) b!2773069))

(assert (= (or b!2773068 b!2773069) bm!181292))

(assert (= (or b!2773068 b!2773069) bm!181295))

(assert (= (or b!2773068 b!2773069) bm!181293))

(assert (= (or b!2773068 b!2773069) bm!181299))

(assert (= (or b!2773068 b!2773069) bm!181298))

(assert (= (or b!2773063 b!2773066) bm!181296))

(assert (= (or b!2773063 b!2773058) bm!181300))

(assert (= (or b!2773063 b!2773066) bm!181301))

(assert (= (or b!2773063 b!2773058) bm!181297))

(assert (= (or b!2773063 b!2773066) bm!181294))

(assert (= (and bm!181294 c!450330) b!2773065))

(assert (= (and bm!181294 (not c!450330)) b!2773067))

(declare-fun m!3199937 () Bool)

(assert (=> bm!181299 m!3199937))

(declare-fun m!3199939 () Bool)

(assert (=> bm!181294 m!3199939))

(declare-fun m!3199941 () Bool)

(assert (=> bm!181297 m!3199941))

(assert (=> d!806357 m!3199855))

(declare-fun m!3199943 () Bool)

(assert (=> d!806357 m!3199943))

(assert (=> d!806357 m!3199855))

(declare-fun m!3199945 () Bool)

(assert (=> d!806357 m!3199945))

(assert (=> d!806357 m!3199861))

(declare-fun m!3199947 () Bool)

(assert (=> d!806357 m!3199947))

(assert (=> d!806357 m!3199855))

(declare-fun m!3199949 () Bool)

(assert (=> d!806357 m!3199949))

(assert (=> d!806357 m!3199861))

(declare-fun m!3199951 () Bool)

(assert (=> d!806357 m!3199951))

(assert (=> d!806357 m!3199855))

(declare-fun m!3199953 () Bool)

(assert (=> d!806357 m!3199953))

(declare-fun m!3199955 () Bool)

(assert (=> d!806357 m!3199955))

(declare-fun m!3199957 () Bool)

(assert (=> bm!181295 m!3199957))

(declare-fun m!3199959 () Bool)

(assert (=> bm!181300 m!3199959))

(declare-fun m!3199961 () Bool)

(assert (=> bm!181296 m!3199961))

(assert (=> b!2773066 m!3199855))

(declare-fun m!3199963 () Bool)

(assert (=> bm!181293 m!3199963))

(declare-fun m!3199965 () Bool)

(assert (=> bm!181301 m!3199965))

(declare-fun m!3199967 () Bool)

(assert (=> bm!181292 m!3199967))

(assert (=> b!2773067 m!3199855))

(declare-fun m!3199969 () Bool)

(assert (=> bm!181298 m!3199969))

(declare-fun m!3199971 () Bool)

(assert (=> b!2773058 m!3199971))

(assert (=> b!2773058 m!3199967))

(declare-fun m!3199973 () Bool)

(assert (=> b!2773058 m!3199973))

(assert (=> b!2773058 m!3199865))

(assert (=> b!2773058 m!3199855))

(declare-fun m!3199975 () Bool)

(assert (=> b!2773058 m!3199975))

(declare-fun m!3199977 () Bool)

(assert (=> b!2773058 m!3199977))

(declare-fun m!3199979 () Bool)

(assert (=> b!2773058 m!3199979))

(assert (=> b!2773058 m!3199957))

(declare-fun m!3199981 () Bool)

(assert (=> b!2773058 m!3199981))

(assert (=> b!2773058 m!3199975))

(declare-fun m!3199983 () Bool)

(assert (=> b!2773058 m!3199983))

(declare-fun m!3199985 () Bool)

(assert (=> b!2773058 m!3199985))

(assert (=> b!2773058 m!3199983))

(declare-fun m!3199987 () Bool)

(assert (=> b!2773058 m!3199987))

(assert (=> b!2773058 m!3199857))

(declare-fun m!3199989 () Bool)

(assert (=> b!2773058 m!3199989))

(declare-fun m!3199991 () Bool)

(assert (=> b!2773058 m!3199991))

(declare-fun m!3199993 () Bool)

(assert (=> b!2773058 m!3199993))

(declare-fun m!3199995 () Bool)

(assert (=> b!2773058 m!3199995))

(assert (=> b!2773058 m!3199991))

(declare-fun m!3199997 () Bool)

(assert (=> b!2773058 m!3199997))

(declare-fun m!3199999 () Bool)

(assert (=> b!2773058 m!3199999))

(declare-fun m!3200001 () Bool)

(assert (=> b!2773058 m!3200001))

(assert (=> b!2773058 m!3199995))

(declare-fun m!3200003 () Bool)

(assert (=> b!2773058 m!3200003))

(assert (=> b!2772989 d!806357))

(declare-fun d!806359 () Bool)

(assert (=> d!806359 (= (array_inv!4290 (_keys!4078 (v!33612 (underlying!7759 (v!33613 (underlying!7760 (cache!3827 cacheDown!939))))))) (bvsge (size!24785 (_keys!4078 (v!33612 (underlying!7759 (v!33613 (underlying!7760 (cache!3827 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2772986 d!806359))

(declare-fun d!806361 () Bool)

(assert (=> d!806361 (= (array_inv!4292 (_values!4059 (v!33612 (underlying!7759 (v!33613 (underlying!7760 (cache!3827 cacheDown!939))))))) (bvsge (size!24786 (_values!4059 (v!33612 (underlying!7759 (v!33613 (underlying!7760 (cache!3827 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2772986 d!806361))

(declare-fun setIsEmpty!22896 () Bool)

(declare-fun setRes!22896 () Bool)

(assert (=> setIsEmpty!22896 setRes!22896))

(declare-fun setElem!22896 () Context!4606)

(declare-fun e!1748649 () Bool)

(declare-fun setNonEmpty!22896 () Bool)

(declare-fun tp!876950 () Bool)

(assert (=> setNonEmpty!22896 (= setRes!22896 (and tp!876950 (inv!43469 setElem!22896) e!1748649))))

(declare-fun setRest!22896 () (InoxSet Context!4606))

(assert (=> setNonEmpty!22896 (= (_2!18972 (h!37426 mapDefault!17252)) ((_ map or) (store ((as const (Array Context!4606 Bool)) false) setElem!22896 true) setRest!22896))))

(declare-fun e!1748650 () Bool)

(assert (=> b!2772987 (= tp!876929 e!1748650)))

(declare-fun tp_is_empty!14017 () Bool)

(declare-fun b!2773078 () Bool)

(declare-fun tp!876951 () Bool)

(declare-fun e!1748651 () Bool)

(assert (=> b!2773078 (= e!1748650 (and (inv!43469 (_1!18971 (_1!18972 (h!37426 mapDefault!17252)))) e!1748651 tp_is_empty!14017 setRes!22896 tp!876951))))

(declare-fun condSetEmpty!22896 () Bool)

(assert (=> b!2773078 (= condSetEmpty!22896 (= (_2!18972 (h!37426 mapDefault!17252)) ((as const (Array Context!4606 Bool)) false)))))

(declare-fun b!2773079 () Bool)

(declare-fun tp!876948 () Bool)

(assert (=> b!2773079 (= e!1748651 tp!876948)))

(declare-fun b!2773080 () Bool)

(declare-fun tp!876949 () Bool)

(assert (=> b!2773080 (= e!1748649 tp!876949)))

(assert (= b!2773078 b!2773079))

(assert (= (and b!2773078 condSetEmpty!22896) setIsEmpty!22896))

(assert (= (and b!2773078 (not condSetEmpty!22896)) setNonEmpty!22896))

(assert (= setNonEmpty!22896 b!2773080))

(assert (= (and b!2772987 ((_ is Cons!32006) mapDefault!17252)) b!2773078))

(declare-fun m!3200005 () Bool)

(assert (=> setNonEmpty!22896 m!3200005))

(declare-fun m!3200007 () Bool)

(assert (=> b!2773078 m!3200007))

(declare-fun condSetEmpty!22899 () Bool)

(assert (=> setNonEmpty!22893 (= condSetEmpty!22899 (= setRest!22893 ((as const (Array Context!4606 Bool)) false)))))

(declare-fun setRes!22899 () Bool)

(assert (=> setNonEmpty!22893 (= tp!876926 setRes!22899)))

(declare-fun setIsEmpty!22899 () Bool)

(assert (=> setIsEmpty!22899 setRes!22899))

(declare-fun e!1748654 () Bool)

(declare-fun tp!876957 () Bool)

(declare-fun setNonEmpty!22899 () Bool)

(declare-fun setElem!22899 () Context!4606)

(assert (=> setNonEmpty!22899 (= setRes!22899 (and tp!876957 (inv!43469 setElem!22899) e!1748654))))

(declare-fun setRest!22899 () (InoxSet Context!4606))

(assert (=> setNonEmpty!22899 (= setRest!22893 ((_ map or) (store ((as const (Array Context!4606 Bool)) false) setElem!22899 true) setRest!22899))))

(declare-fun b!2773085 () Bool)

(declare-fun tp!876956 () Bool)

(assert (=> b!2773085 (= e!1748654 tp!876956)))

(assert (= (and setNonEmpty!22893 condSetEmpty!22899) setIsEmpty!22899))

(assert (= (and setNonEmpty!22893 (not condSetEmpty!22899)) setNonEmpty!22899))

(assert (= setNonEmpty!22899 b!2773085))

(declare-fun m!3200009 () Bool)

(assert (=> setNonEmpty!22899 m!3200009))

(declare-fun setIsEmpty!22900 () Bool)

(declare-fun setRes!22900 () Bool)

(assert (=> setIsEmpty!22900 setRes!22900))

(declare-fun setNonEmpty!22900 () Bool)

(declare-fun tp!876960 () Bool)

(declare-fun e!1748655 () Bool)

(declare-fun setElem!22900 () Context!4606)

(assert (=> setNonEmpty!22900 (= setRes!22900 (and tp!876960 (inv!43469 setElem!22900) e!1748655))))

(declare-fun setRest!22900 () (InoxSet Context!4606))

(assert (=> setNonEmpty!22900 (= (_2!18972 (h!37426 (zeroValue!4038 (v!33614 (underlying!7761 (v!33615 (underlying!7762 (cache!3828 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4606 Bool)) false) setElem!22900 true) setRest!22900))))

(declare-fun e!1748656 () Bool)

(assert (=> b!2772984 (= tp!876930 e!1748656)))

(declare-fun tp!876961 () Bool)

(declare-fun b!2773086 () Bool)

(declare-fun e!1748657 () Bool)

(assert (=> b!2773086 (= e!1748656 (and (inv!43469 (_1!18971 (_1!18972 (h!37426 (zeroValue!4038 (v!33614 (underlying!7761 (v!33615 (underlying!7762 (cache!3828 cacheUp!820)))))))))) e!1748657 tp_is_empty!14017 setRes!22900 tp!876961))))

(declare-fun condSetEmpty!22900 () Bool)

(assert (=> b!2773086 (= condSetEmpty!22900 (= (_2!18972 (h!37426 (zeroValue!4038 (v!33614 (underlying!7761 (v!33615 (underlying!7762 (cache!3828 cacheUp!820)))))))) ((as const (Array Context!4606 Bool)) false)))))

(declare-fun b!2773087 () Bool)

(declare-fun tp!876958 () Bool)

(assert (=> b!2773087 (= e!1748657 tp!876958)))

(declare-fun b!2773088 () Bool)

(declare-fun tp!876959 () Bool)

(assert (=> b!2773088 (= e!1748655 tp!876959)))

(assert (= b!2773086 b!2773087))

(assert (= (and b!2773086 condSetEmpty!22900) setIsEmpty!22900))

(assert (= (and b!2773086 (not condSetEmpty!22900)) setNonEmpty!22900))

(assert (= setNonEmpty!22900 b!2773088))

(assert (= (and b!2772984 ((_ is Cons!32006) (zeroValue!4038 (v!33614 (underlying!7761 (v!33615 (underlying!7762 (cache!3828 cacheUp!820)))))))) b!2773086))

(declare-fun m!3200011 () Bool)

(assert (=> setNonEmpty!22900 m!3200011))

(declare-fun m!3200013 () Bool)

(assert (=> b!2773086 m!3200013))

(declare-fun setIsEmpty!22901 () Bool)

(declare-fun setRes!22901 () Bool)

(assert (=> setIsEmpty!22901 setRes!22901))

(declare-fun setElem!22901 () Context!4606)

(declare-fun tp!876964 () Bool)

(declare-fun setNonEmpty!22901 () Bool)

(declare-fun e!1748658 () Bool)

(assert (=> setNonEmpty!22901 (= setRes!22901 (and tp!876964 (inv!43469 setElem!22901) e!1748658))))

(declare-fun setRest!22901 () (InoxSet Context!4606))

(assert (=> setNonEmpty!22901 (= (_2!18972 (h!37426 (minValue!4038 (v!33614 (underlying!7761 (v!33615 (underlying!7762 (cache!3828 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4606 Bool)) false) setElem!22901 true) setRest!22901))))

(declare-fun e!1748659 () Bool)

(assert (=> b!2772984 (= tp!876923 e!1748659)))

(declare-fun tp!876965 () Bool)

(declare-fun b!2773089 () Bool)

(declare-fun e!1748660 () Bool)

(assert (=> b!2773089 (= e!1748659 (and (inv!43469 (_1!18971 (_1!18972 (h!37426 (minValue!4038 (v!33614 (underlying!7761 (v!33615 (underlying!7762 (cache!3828 cacheUp!820)))))))))) e!1748660 tp_is_empty!14017 setRes!22901 tp!876965))))

(declare-fun condSetEmpty!22901 () Bool)

(assert (=> b!2773089 (= condSetEmpty!22901 (= (_2!18972 (h!37426 (minValue!4038 (v!33614 (underlying!7761 (v!33615 (underlying!7762 (cache!3828 cacheUp!820)))))))) ((as const (Array Context!4606 Bool)) false)))))

(declare-fun b!2773090 () Bool)

(declare-fun tp!876962 () Bool)

(assert (=> b!2773090 (= e!1748660 tp!876962)))

(declare-fun b!2773091 () Bool)

(declare-fun tp!876963 () Bool)

(assert (=> b!2773091 (= e!1748658 tp!876963)))

(assert (= b!2773089 b!2773090))

(assert (= (and b!2773089 condSetEmpty!22901) setIsEmpty!22901))

(assert (= (and b!2773089 (not condSetEmpty!22901)) setNonEmpty!22901))

(assert (= setNonEmpty!22901 b!2773091))

(assert (= (and b!2772984 ((_ is Cons!32006) (minValue!4038 (v!33614 (underlying!7761 (v!33615 (underlying!7762 (cache!3828 cacheUp!820)))))))) b!2773089))

(declare-fun m!3200015 () Bool)

(assert (=> setNonEmpty!22901 m!3200015))

(declare-fun m!3200017 () Bool)

(assert (=> b!2773089 m!3200017))

(declare-fun setIsEmpty!22906 () Bool)

(declare-fun setRes!22906 () Bool)

(assert (=> setIsEmpty!22906 setRes!22906))

(declare-fun mapIsEmpty!17255 () Bool)

(declare-fun mapRes!17255 () Bool)

(assert (=> mapIsEmpty!17255 mapRes!17255))

(declare-fun mapNonEmpty!17255 () Bool)

(declare-fun tp!876986 () Bool)

(declare-fun e!1748674 () Bool)

(assert (=> mapNonEmpty!17255 (= mapRes!17255 (and tp!876986 e!1748674))))

(declare-fun mapValue!17255 () List!32106)

(declare-fun mapRest!17255 () (Array (_ BitVec 32) List!32106))

(declare-fun mapKey!17255 () (_ BitVec 32))

(assert (=> mapNonEmpty!17255 (= mapRest!17251 (store mapRest!17255 mapKey!17255 mapValue!17255))))

(declare-fun condMapEmpty!17255 () Bool)

(declare-fun mapDefault!17255 () List!32106)

(assert (=> mapNonEmpty!17251 (= condMapEmpty!17255 (= mapRest!17251 ((as const (Array (_ BitVec 32) List!32106)) mapDefault!17255)))))

(declare-fun e!1748673 () Bool)

(assert (=> mapNonEmpty!17251 (= tp!876932 (and e!1748673 mapRes!17255))))

(declare-fun setNonEmpty!22906 () Bool)

(declare-fun e!1748678 () Bool)

(declare-fun tp!876987 () Bool)

(declare-fun setRes!22907 () Bool)

(declare-fun setElem!22907 () Context!4606)

(assert (=> setNonEmpty!22906 (= setRes!22907 (and tp!876987 (inv!43469 setElem!22907) e!1748678))))

(declare-fun setRest!22907 () (InoxSet Context!4606))

(assert (=> setNonEmpty!22906 (= (_2!18972 (h!37426 mapDefault!17255)) ((_ map or) (store ((as const (Array Context!4606 Bool)) false) setElem!22907 true) setRest!22907))))

(declare-fun setNonEmpty!22907 () Bool)

(declare-fun setElem!22906 () Context!4606)

(declare-fun e!1748677 () Bool)

(declare-fun tp!876991 () Bool)

(assert (=> setNonEmpty!22907 (= setRes!22906 (and tp!876991 (inv!43469 setElem!22906) e!1748677))))

(declare-fun setRest!22906 () (InoxSet Context!4606))

(assert (=> setNonEmpty!22907 (= (_2!18972 (h!37426 mapValue!17255)) ((_ map or) (store ((as const (Array Context!4606 Bool)) false) setElem!22906 true) setRest!22906))))

(declare-fun b!2773106 () Bool)

(declare-fun tp!876992 () Bool)

(assert (=> b!2773106 (= e!1748678 tp!876992)))

(declare-fun b!2773107 () Bool)

(declare-fun e!1748675 () Bool)

(declare-fun tp!876984 () Bool)

(assert (=> b!2773107 (= e!1748675 tp!876984)))

(declare-fun b!2773108 () Bool)

(declare-fun e!1748676 () Bool)

(declare-fun tp!876989 () Bool)

(assert (=> b!2773108 (= e!1748676 tp!876989)))

(declare-fun setIsEmpty!22907 () Bool)

(assert (=> setIsEmpty!22907 setRes!22907))

(declare-fun tp!876990 () Bool)

(declare-fun b!2773109 () Bool)

(assert (=> b!2773109 (= e!1748673 (and (inv!43469 (_1!18971 (_1!18972 (h!37426 mapDefault!17255)))) e!1748676 tp_is_empty!14017 setRes!22907 tp!876990))))

(declare-fun condSetEmpty!22906 () Bool)

(assert (=> b!2773109 (= condSetEmpty!22906 (= (_2!18972 (h!37426 mapDefault!17255)) ((as const (Array Context!4606 Bool)) false)))))

(declare-fun b!2773110 () Bool)

(declare-fun tp!876988 () Bool)

(assert (=> b!2773110 (= e!1748677 tp!876988)))

(declare-fun tp!876985 () Bool)

(declare-fun b!2773111 () Bool)

(assert (=> b!2773111 (= e!1748674 (and (inv!43469 (_1!18971 (_1!18972 (h!37426 mapValue!17255)))) e!1748675 tp_is_empty!14017 setRes!22906 tp!876985))))

(declare-fun condSetEmpty!22907 () Bool)

(assert (=> b!2773111 (= condSetEmpty!22907 (= (_2!18972 (h!37426 mapValue!17255)) ((as const (Array Context!4606 Bool)) false)))))

(assert (= (and mapNonEmpty!17251 condMapEmpty!17255) mapIsEmpty!17255))

(assert (= (and mapNonEmpty!17251 (not condMapEmpty!17255)) mapNonEmpty!17255))

(assert (= b!2773111 b!2773107))

(assert (= (and b!2773111 condSetEmpty!22907) setIsEmpty!22906))

(assert (= (and b!2773111 (not condSetEmpty!22907)) setNonEmpty!22907))

(assert (= setNonEmpty!22907 b!2773110))

(assert (= (and mapNonEmpty!17255 ((_ is Cons!32006) mapValue!17255)) b!2773111))

(assert (= b!2773109 b!2773108))

(assert (= (and b!2773109 condSetEmpty!22906) setIsEmpty!22907))

(assert (= (and b!2773109 (not condSetEmpty!22906)) setNonEmpty!22906))

(assert (= setNonEmpty!22906 b!2773106))

(assert (= (and mapNonEmpty!17251 ((_ is Cons!32006) mapDefault!17255)) b!2773109))

(declare-fun m!3200019 () Bool)

(assert (=> setNonEmpty!22907 m!3200019))

(declare-fun m!3200021 () Bool)

(assert (=> setNonEmpty!22906 m!3200021))

(declare-fun m!3200023 () Bool)

(assert (=> b!2773111 m!3200023))

(declare-fun m!3200025 () Bool)

(assert (=> mapNonEmpty!17255 m!3200025))

(declare-fun m!3200027 () Bool)

(assert (=> b!2773109 m!3200027))

(declare-fun setIsEmpty!22908 () Bool)

(declare-fun setRes!22908 () Bool)

(assert (=> setIsEmpty!22908 setRes!22908))

(declare-fun setNonEmpty!22908 () Bool)

(declare-fun e!1748679 () Bool)

(declare-fun setElem!22908 () Context!4606)

(declare-fun tp!876995 () Bool)

(assert (=> setNonEmpty!22908 (= setRes!22908 (and tp!876995 (inv!43469 setElem!22908) e!1748679))))

(declare-fun setRest!22908 () (InoxSet Context!4606))

(assert (=> setNonEmpty!22908 (= (_2!18972 (h!37426 mapValue!17251)) ((_ map or) (store ((as const (Array Context!4606 Bool)) false) setElem!22908 true) setRest!22908))))

(declare-fun e!1748680 () Bool)

(assert (=> mapNonEmpty!17251 (= tp!876933 e!1748680)))

(declare-fun e!1748681 () Bool)

(declare-fun tp!876996 () Bool)

(declare-fun b!2773112 () Bool)

(assert (=> b!2773112 (= e!1748680 (and (inv!43469 (_1!18971 (_1!18972 (h!37426 mapValue!17251)))) e!1748681 tp_is_empty!14017 setRes!22908 tp!876996))))

(declare-fun condSetEmpty!22908 () Bool)

(assert (=> b!2773112 (= condSetEmpty!22908 (= (_2!18972 (h!37426 mapValue!17251)) ((as const (Array Context!4606 Bool)) false)))))

(declare-fun b!2773113 () Bool)

(declare-fun tp!876993 () Bool)

(assert (=> b!2773113 (= e!1748681 tp!876993)))

(declare-fun b!2773114 () Bool)

(declare-fun tp!876994 () Bool)

(assert (=> b!2773114 (= e!1748679 tp!876994)))

(assert (= b!2773112 b!2773113))

(assert (= (and b!2773112 condSetEmpty!22908) setIsEmpty!22908))

(assert (= (and b!2773112 (not condSetEmpty!22908)) setNonEmpty!22908))

(assert (= setNonEmpty!22908 b!2773114))

(assert (= (and mapNonEmpty!17251 ((_ is Cons!32006) mapValue!17251)) b!2773112))

(declare-fun m!3200029 () Bool)

(assert (=> setNonEmpty!22908 m!3200029))

(declare-fun m!3200031 () Bool)

(assert (=> b!2773112 m!3200031))

(declare-fun b!2773119 () Bool)

(declare-fun e!1748684 () Bool)

(declare-fun tp!877001 () Bool)

(declare-fun tp!877002 () Bool)

(assert (=> b!2773119 (= e!1748684 (and tp!877001 tp!877002))))

(assert (=> b!2772992 (= tp!876925 e!1748684)))

(assert (= (and b!2772992 ((_ is Cons!32003) (exprs!2803 setElem!22893))) b!2773119))

(declare-fun setElem!22913 () Context!4606)

(declare-fun e!1748697 () Bool)

(declare-fun setNonEmpty!22913 () Bool)

(declare-fun tp!877035 () Bool)

(declare-fun setRes!22913 () Bool)

(assert (=> setNonEmpty!22913 (= setRes!22913 (and tp!877035 (inv!43469 setElem!22913) e!1748697))))

(declare-fun mapValue!17258 () List!32104)

(declare-fun setRest!22913 () (InoxSet Context!4606))

(assert (=> setNonEmpty!22913 (= (_2!18970 (h!37424 mapValue!17258)) ((_ map or) (store ((as const (Array Context!4606 Bool)) false) setElem!22913 true) setRest!22913))))

(declare-fun tp!877031 () Bool)

(declare-fun setRes!22914 () Bool)

(declare-fun setElem!22914 () Context!4606)

(declare-fun e!1748701 () Bool)

(declare-fun setNonEmpty!22914 () Bool)

(assert (=> setNonEmpty!22914 (= setRes!22914 (and tp!877031 (inv!43469 setElem!22914) e!1748701))))

(declare-fun mapDefault!17258 () List!32104)

(declare-fun setRest!22914 () (InoxSet Context!4606))

(assert (=> setNonEmpty!22914 (= (_2!18970 (h!37424 mapDefault!17258)) ((_ map or) (store ((as const (Array Context!4606 Bool)) false) setElem!22914 true) setRest!22914))))

(declare-fun b!2773134 () Bool)

(declare-fun tp!877027 () Bool)

(declare-fun tp!877029 () Bool)

(declare-fun e!1748702 () Bool)

(declare-fun e!1748700 () Bool)

(assert (=> b!2773134 (= e!1748700 (and tp!877027 (inv!43469 (_2!18969 (_1!18970 (h!37424 mapValue!17258)))) e!1748702 tp_is_empty!14017 setRes!22913 tp!877029))))

(declare-fun condSetEmpty!22913 () Bool)

(assert (=> b!2773134 (= condSetEmpty!22913 (= (_2!18970 (h!37424 mapValue!17258)) ((as const (Array Context!4606 Bool)) false)))))

(declare-fun setIsEmpty!22913 () Bool)

(assert (=> setIsEmpty!22913 setRes!22914))

(declare-fun e!1748698 () Bool)

(declare-fun e!1748699 () Bool)

(declare-fun tp!877034 () Bool)

(declare-fun tp!877028 () Bool)

(declare-fun b!2773135 () Bool)

(assert (=> b!2773135 (= e!1748698 (and tp!877034 (inv!43469 (_2!18969 (_1!18970 (h!37424 mapDefault!17258)))) e!1748699 tp_is_empty!14017 setRes!22914 tp!877028))))

(declare-fun condSetEmpty!22914 () Bool)

(assert (=> b!2773135 (= condSetEmpty!22914 (= (_2!18970 (h!37424 mapDefault!17258)) ((as const (Array Context!4606 Bool)) false)))))

(declare-fun b!2773136 () Bool)

(declare-fun tp!877030 () Bool)

(assert (=> b!2773136 (= e!1748699 tp!877030)))

(declare-fun mapNonEmpty!17258 () Bool)

(declare-fun mapRes!17258 () Bool)

(declare-fun tp!877032 () Bool)

(assert (=> mapNonEmpty!17258 (= mapRes!17258 (and tp!877032 e!1748700))))

(declare-fun mapKey!17258 () (_ BitVec 32))

(declare-fun mapRest!17258 () (Array (_ BitVec 32) List!32104))

(assert (=> mapNonEmpty!17258 (= mapRest!17252 (store mapRest!17258 mapKey!17258 mapValue!17258))))

(declare-fun b!2773137 () Bool)

(declare-fun tp!877026 () Bool)

(assert (=> b!2773137 (= e!1748702 tp!877026)))

(declare-fun condMapEmpty!17258 () Bool)

(assert (=> mapNonEmpty!17252 (= condMapEmpty!17258 (= mapRest!17252 ((as const (Array (_ BitVec 32) List!32104)) mapDefault!17258)))))

(assert (=> mapNonEmpty!17252 (= tp!876937 (and e!1748698 mapRes!17258))))

(declare-fun b!2773138 () Bool)

(declare-fun tp!877033 () Bool)

(assert (=> b!2773138 (= e!1748697 tp!877033)))

(declare-fun b!2773139 () Bool)

(declare-fun tp!877025 () Bool)

(assert (=> b!2773139 (= e!1748701 tp!877025)))

(declare-fun setIsEmpty!22914 () Bool)

(assert (=> setIsEmpty!22914 setRes!22913))

(declare-fun mapIsEmpty!17258 () Bool)

(assert (=> mapIsEmpty!17258 mapRes!17258))

(assert (= (and mapNonEmpty!17252 condMapEmpty!17258) mapIsEmpty!17258))

(assert (= (and mapNonEmpty!17252 (not condMapEmpty!17258)) mapNonEmpty!17258))

(assert (= b!2773134 b!2773137))

(assert (= (and b!2773134 condSetEmpty!22913) setIsEmpty!22914))

(assert (= (and b!2773134 (not condSetEmpty!22913)) setNonEmpty!22913))

(assert (= setNonEmpty!22913 b!2773138))

(assert (= (and mapNonEmpty!17258 ((_ is Cons!32004) mapValue!17258)) b!2773134))

(assert (= b!2773135 b!2773136))

(assert (= (and b!2773135 condSetEmpty!22914) setIsEmpty!22913))

(assert (= (and b!2773135 (not condSetEmpty!22914)) setNonEmpty!22914))

(assert (= setNonEmpty!22914 b!2773139))

(assert (= (and mapNonEmpty!17252 ((_ is Cons!32004) mapDefault!17258)) b!2773135))

(declare-fun m!3200033 () Bool)

(assert (=> setNonEmpty!22914 m!3200033))

(declare-fun m!3200035 () Bool)

(assert (=> b!2773135 m!3200035))

(declare-fun m!3200037 () Bool)

(assert (=> setNonEmpty!22913 m!3200037))

(declare-fun m!3200039 () Bool)

(assert (=> b!2773134 m!3200039))

(declare-fun m!3200041 () Bool)

(assert (=> mapNonEmpty!17258 m!3200041))

(declare-fun setIsEmpty!22917 () Bool)

(declare-fun setRes!22917 () Bool)

(assert (=> setIsEmpty!22917 setRes!22917))

(declare-fun e!1748709 () Bool)

(assert (=> mapNonEmpty!17252 (= tp!876936 e!1748709)))

(declare-fun b!2773148 () Bool)

(declare-fun e!1748710 () Bool)

(declare-fun tp!877046 () Bool)

(assert (=> b!2773148 (= e!1748710 tp!877046)))

(declare-fun setElem!22917 () Context!4606)

(declare-fun setNonEmpty!22917 () Bool)

(declare-fun tp!877049 () Bool)

(assert (=> setNonEmpty!22917 (= setRes!22917 (and tp!877049 (inv!43469 setElem!22917) e!1748710))))

(declare-fun setRest!22917 () (InoxSet Context!4606))

(assert (=> setNonEmpty!22917 (= (_2!18970 (h!37424 mapValue!17252)) ((_ map or) (store ((as const (Array Context!4606 Bool)) false) setElem!22917 true) setRest!22917))))

(declare-fun tp!877047 () Bool)

(declare-fun b!2773149 () Bool)

(declare-fun tp!877048 () Bool)

(declare-fun e!1748711 () Bool)

(assert (=> b!2773149 (= e!1748709 (and tp!877048 (inv!43469 (_2!18969 (_1!18970 (h!37424 mapValue!17252)))) e!1748711 tp_is_empty!14017 setRes!22917 tp!877047))))

(declare-fun condSetEmpty!22917 () Bool)

(assert (=> b!2773149 (= condSetEmpty!22917 (= (_2!18970 (h!37424 mapValue!17252)) ((as const (Array Context!4606 Bool)) false)))))

(declare-fun b!2773150 () Bool)

(declare-fun tp!877050 () Bool)

(assert (=> b!2773150 (= e!1748711 tp!877050)))

(assert (= b!2773149 b!2773150))

(assert (= (and b!2773149 condSetEmpty!22917) setIsEmpty!22917))

(assert (= (and b!2773149 (not condSetEmpty!22917)) setNonEmpty!22917))

(assert (= setNonEmpty!22917 b!2773148))

(assert (= (and mapNonEmpty!17252 ((_ is Cons!32004) mapValue!17252)) b!2773149))

(declare-fun m!3200043 () Bool)

(assert (=> setNonEmpty!22917 m!3200043))

(declare-fun m!3200045 () Bool)

(assert (=> b!2773149 m!3200045))

(declare-fun b!2773159 () Bool)

(declare-fun tp!877057 () Bool)

(declare-fun tp!877059 () Bool)

(declare-fun e!1748717 () Bool)

(assert (=> b!2773159 (= e!1748717 (and (inv!43468 (left!24393 (c!450304 input!5495))) tp!877059 (inv!43468 (right!24723 (c!450304 input!5495))) tp!877057))))

(declare-fun b!2773161 () Bool)

(declare-fun e!1748716 () Bool)

(declare-fun tp!877058 () Bool)

(assert (=> b!2773161 (= e!1748716 tp!877058)))

(declare-fun b!2773160 () Bool)

(declare-fun inv!43472 (IArray!19935) Bool)

(assert (=> b!2773160 (= e!1748717 (and (inv!43472 (xs!13075 (c!450304 input!5495))) e!1748716))))

(assert (=> b!2772980 (= tp!876934 (and (inv!43468 (c!450304 input!5495)) e!1748717))))

(assert (= (and b!2772980 ((_ is Node!9965) (c!450304 input!5495))) b!2773159))

(assert (= b!2773160 b!2773161))

(assert (= (and b!2772980 ((_ is Leaf!15176) (c!450304 input!5495))) b!2773160))

(declare-fun m!3200047 () Bool)

(assert (=> b!2773159 m!3200047))

(declare-fun m!3200049 () Bool)

(assert (=> b!2773159 m!3200049))

(declare-fun m!3200051 () Bool)

(assert (=> b!2773160 m!3200051))

(assert (=> b!2772980 m!3199875))

(declare-fun setIsEmpty!22918 () Bool)

(declare-fun setRes!22918 () Bool)

(assert (=> setIsEmpty!22918 setRes!22918))

(declare-fun e!1748718 () Bool)

(assert (=> b!2772986 (= tp!876928 e!1748718)))

(declare-fun b!2773162 () Bool)

(declare-fun e!1748719 () Bool)

(declare-fun tp!877060 () Bool)

(assert (=> b!2773162 (= e!1748719 tp!877060)))

(declare-fun setElem!22918 () Context!4606)

(declare-fun setNonEmpty!22918 () Bool)

(declare-fun tp!877063 () Bool)

(assert (=> setNonEmpty!22918 (= setRes!22918 (and tp!877063 (inv!43469 setElem!22918) e!1748719))))

(declare-fun setRest!22918 () (InoxSet Context!4606))

(assert (=> setNonEmpty!22918 (= (_2!18970 (h!37424 (zeroValue!4037 (v!33612 (underlying!7759 (v!33613 (underlying!7760 (cache!3827 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4606 Bool)) false) setElem!22918 true) setRest!22918))))

(declare-fun tp!877062 () Bool)

(declare-fun e!1748720 () Bool)

(declare-fun b!2773163 () Bool)

(declare-fun tp!877061 () Bool)

(assert (=> b!2773163 (= e!1748718 (and tp!877062 (inv!43469 (_2!18969 (_1!18970 (h!37424 (zeroValue!4037 (v!33612 (underlying!7759 (v!33613 (underlying!7760 (cache!3827 cacheDown!939)))))))))) e!1748720 tp_is_empty!14017 setRes!22918 tp!877061))))

(declare-fun condSetEmpty!22918 () Bool)

(assert (=> b!2773163 (= condSetEmpty!22918 (= (_2!18970 (h!37424 (zeroValue!4037 (v!33612 (underlying!7759 (v!33613 (underlying!7760 (cache!3827 cacheDown!939)))))))) ((as const (Array Context!4606 Bool)) false)))))

(declare-fun b!2773164 () Bool)

(declare-fun tp!877064 () Bool)

(assert (=> b!2773164 (= e!1748720 tp!877064)))

(assert (= b!2773163 b!2773164))

(assert (= (and b!2773163 condSetEmpty!22918) setIsEmpty!22918))

(assert (= (and b!2773163 (not condSetEmpty!22918)) setNonEmpty!22918))

(assert (= setNonEmpty!22918 b!2773162))

(assert (= (and b!2772986 ((_ is Cons!32004) (zeroValue!4037 (v!33612 (underlying!7759 (v!33613 (underlying!7760 (cache!3827 cacheDown!939)))))))) b!2773163))

(declare-fun m!3200053 () Bool)

(assert (=> setNonEmpty!22918 m!3200053))

(declare-fun m!3200055 () Bool)

(assert (=> b!2773163 m!3200055))

(declare-fun setIsEmpty!22919 () Bool)

(declare-fun setRes!22919 () Bool)

(assert (=> setIsEmpty!22919 setRes!22919))

(declare-fun e!1748721 () Bool)

(assert (=> b!2772986 (= tp!876935 e!1748721)))

(declare-fun b!2773165 () Bool)

(declare-fun e!1748722 () Bool)

(declare-fun tp!877065 () Bool)

(assert (=> b!2773165 (= e!1748722 tp!877065)))

(declare-fun setElem!22919 () Context!4606)

(declare-fun tp!877068 () Bool)

(declare-fun setNonEmpty!22919 () Bool)

(assert (=> setNonEmpty!22919 (= setRes!22919 (and tp!877068 (inv!43469 setElem!22919) e!1748722))))

(declare-fun setRest!22919 () (InoxSet Context!4606))

(assert (=> setNonEmpty!22919 (= (_2!18970 (h!37424 (minValue!4037 (v!33612 (underlying!7759 (v!33613 (underlying!7760 (cache!3827 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4606 Bool)) false) setElem!22919 true) setRest!22919))))

(declare-fun tp!877067 () Bool)

(declare-fun b!2773166 () Bool)

(declare-fun e!1748723 () Bool)

(declare-fun tp!877066 () Bool)

(assert (=> b!2773166 (= e!1748721 (and tp!877067 (inv!43469 (_2!18969 (_1!18970 (h!37424 (minValue!4037 (v!33612 (underlying!7759 (v!33613 (underlying!7760 (cache!3827 cacheDown!939)))))))))) e!1748723 tp_is_empty!14017 setRes!22919 tp!877066))))

(declare-fun condSetEmpty!22919 () Bool)

(assert (=> b!2773166 (= condSetEmpty!22919 (= (_2!18970 (h!37424 (minValue!4037 (v!33612 (underlying!7759 (v!33613 (underlying!7760 (cache!3827 cacheDown!939)))))))) ((as const (Array Context!4606 Bool)) false)))))

(declare-fun b!2773167 () Bool)

(declare-fun tp!877069 () Bool)

(assert (=> b!2773167 (= e!1748723 tp!877069)))

(assert (= b!2773166 b!2773167))

(assert (= (and b!2773166 condSetEmpty!22919) setIsEmpty!22919))

(assert (= (and b!2773166 (not condSetEmpty!22919)) setNonEmpty!22919))

(assert (= setNonEmpty!22919 b!2773165))

(assert (= (and b!2772986 ((_ is Cons!32004) (minValue!4037 (v!33612 (underlying!7759 (v!33613 (underlying!7760 (cache!3827 cacheDown!939)))))))) b!2773166))

(declare-fun m!3200057 () Bool)

(assert (=> setNonEmpty!22919 m!3200057))

(declare-fun m!3200059 () Bool)

(assert (=> b!2773166 m!3200059))

(declare-fun setIsEmpty!22920 () Bool)

(declare-fun setRes!22920 () Bool)

(assert (=> setIsEmpty!22920 setRes!22920))

(declare-fun e!1748724 () Bool)

(assert (=> b!2772974 (= tp!876938 e!1748724)))

(declare-fun b!2773168 () Bool)

(declare-fun e!1748725 () Bool)

(declare-fun tp!877070 () Bool)

(assert (=> b!2773168 (= e!1748725 tp!877070)))

(declare-fun tp!877073 () Bool)

(declare-fun setNonEmpty!22920 () Bool)

(declare-fun setElem!22920 () Context!4606)

(assert (=> setNonEmpty!22920 (= setRes!22920 (and tp!877073 (inv!43469 setElem!22920) e!1748725))))

(declare-fun setRest!22920 () (InoxSet Context!4606))

(assert (=> setNonEmpty!22920 (= (_2!18970 (h!37424 mapDefault!17251)) ((_ map or) (store ((as const (Array Context!4606 Bool)) false) setElem!22920 true) setRest!22920))))

(declare-fun b!2773169 () Bool)

(declare-fun tp!877071 () Bool)

(declare-fun tp!877072 () Bool)

(declare-fun e!1748726 () Bool)

(assert (=> b!2773169 (= e!1748724 (and tp!877072 (inv!43469 (_2!18969 (_1!18970 (h!37424 mapDefault!17251)))) e!1748726 tp_is_empty!14017 setRes!22920 tp!877071))))

(declare-fun condSetEmpty!22920 () Bool)

(assert (=> b!2773169 (= condSetEmpty!22920 (= (_2!18970 (h!37424 mapDefault!17251)) ((as const (Array Context!4606 Bool)) false)))))

(declare-fun b!2773170 () Bool)

(declare-fun tp!877074 () Bool)

(assert (=> b!2773170 (= e!1748726 tp!877074)))

(assert (= b!2773169 b!2773170))

(assert (= (and b!2773169 condSetEmpty!22920) setIsEmpty!22920))

(assert (= (and b!2773169 (not condSetEmpty!22920)) setNonEmpty!22920))

(assert (= setNonEmpty!22920 b!2773168))

(assert (= (and b!2772974 ((_ is Cons!32004) mapDefault!17251)) b!2773169))

(declare-fun m!3200061 () Bool)

(assert (=> setNonEmpty!22920 m!3200061))

(declare-fun m!3200063 () Bool)

(assert (=> b!2773169 m!3200063))

(check-sat (not b_next!78953) (not b!2773015) (not b!2773088) (not b!2773134) (not setNonEmpty!22906) (not setNonEmpty!22913) b_and!202987 (not b!2773079) (not b!2773159) (not d!806355) (not d!806335) (not setNonEmpty!22918) (not b!2773135) (not b!2773066) (not d!806329) (not b_next!78949) (not d!806347) (not b!2773107) (not bm!181292) (not b_next!78955) (not b!2773000) (not b!2773078) tp_is_empty!14017 (not b!2773106) (not bm!181300) (not b!2773165) (not b!2773136) (not d!806353) (not b!2773149) (not b!2773006) (not b!2773169) (not b!2773161) (not d!806345) (not bm!181301) (not b!2773170) (not b!2773109) (not b!2773167) (not b!2773090) (not setNonEmpty!22919) (not b!2773091) (not d!806341) (not setNonEmpty!22907) (not b!2773058) (not d!806349) (not b!2773111) (not d!806327) (not setNonEmpty!22900) (not setNonEmpty!22908) (not b!2772980) (not b!2773020) b_and!202983 (not bm!181293) (not setNonEmpty!22901) (not bm!181296) (not mapNonEmpty!17258) (not b!2773168) b_and!202985 (not setNonEmpty!22917) (not b!2773089) (not b!2773021) (not b!2773013) (not b!2773112) (not b!2773119) (not b_next!78951) (not d!806351) (not b!2773114) (not b!2773110) (not bm!181297) (not setNonEmpty!22896) (not b!2773162) (not b!2773137) (not bm!181294) (not b!2773031) (not b!2773148) (not mapNonEmpty!17255) (not b!2773160) (not setNonEmpty!22920) (not b!2773067) (not setNonEmpty!22899) (not b!2773138) (not b!2773080) (not b!2773032) (not b!2773163) (not bm!181295) (not b!2773003) (not b!2773164) (not b!2773108) (not b!2773150) (not d!806357) (not b!2773087) (not b!2773139) b_and!202989 (not b!2773085) (not bm!181299) (not b!2773166) (not setNonEmpty!22914) (not bm!181298) (not b!2773113) (not b!2773086))
(check-sat b_and!202987 (not b_next!78953) b_and!202983 b_and!202985 (not b_next!78951) b_and!202989 (not b_next!78949) (not b_next!78955))
