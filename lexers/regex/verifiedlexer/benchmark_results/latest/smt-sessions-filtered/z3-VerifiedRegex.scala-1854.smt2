; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92160 () Bool)

(assert start!92160)

(declare-fun b!1083995 () Bool)

(declare-fun b_free!26745 () Bool)

(declare-fun b_next!26809 () Bool)

(assert (=> b!1083995 (= b_free!26745 (not b_next!26809))))

(declare-fun tp!324156 () Bool)

(declare-fun b_and!79065 () Bool)

(assert (=> b!1083995 (= tp!324156 b_and!79065)))

(declare-fun b!1083991 () Bool)

(declare-fun b_free!26747 () Bool)

(declare-fun b_next!26811 () Bool)

(assert (=> b!1083991 (= b_free!26747 (not b_next!26811))))

(declare-fun tp!324159 () Bool)

(declare-fun b_and!79067 () Bool)

(assert (=> b!1083991 (= tp!324159 b_and!79067)))

(declare-fun e!685466 () Bool)

(declare-fun e!685468 () Bool)

(assert (=> b!1083991 (= e!685466 (and e!685468 tp!324159))))

(declare-fun mapIsEmpty!6090 () Bool)

(declare-fun mapRes!6090 () Bool)

(assert (=> mapIsEmpty!6090 mapRes!6090))

(declare-datatypes ((C!6504 0))(
  ( (C!6505 (val!3500 Int)) )
))
(declare-datatypes ((List!10207 0))(
  ( (Nil!10191) (Cons!10191 (h!15592 C!6504) (t!101253 List!10207)) )
))
(declare-datatypes ((IArray!6259 0))(
  ( (IArray!6260 (innerList!3187 List!10207)) )
))
(declare-datatypes ((Conc!3127 0))(
  ( (Node!3127 (left!8725 Conc!3127) (right!9055 Conc!3127) (csize!6484 Int) (cheight!3338 Int)) (Leaf!4982 (xs!5820 IArray!6259) (csize!6485 Int)) (Empty!3127) )
))
(declare-datatypes ((Hashable!1233 0))(
  ( (HashableExt!1232 (__x!7412 Int)) )
))
(declare-datatypes ((Regex!2967 0))(
  ( (ElementMatch!2967 (c!182988 C!6504)) (Concat!4800 (regOne!6446 Regex!2967) (regTwo!6446 Regex!2967)) (EmptyExpr!2967) (Star!2967 (reg!3296 Regex!2967)) (EmptyLang!2967) (Union!2967 (regOne!6447 Regex!2967) (regTwo!6447 Regex!2967)) )
))
(declare-datatypes ((List!10208 0))(
  ( (Nil!10192) (Cons!10192 (h!15593 Regex!2967) (t!101254 List!10208)) )
))
(declare-datatypes ((Context!898 0))(
  ( (Context!899 (exprs!949 List!10208)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!11654 0))(
  ( (tuple2!11655 (_1!6653 (InoxSet Context!898)) (_2!6653 Int)) )
))
(declare-datatypes ((tuple2!11656 0))(
  ( (tuple2!11657 (_1!6654 tuple2!11654) (_2!6654 Int)) )
))
(declare-datatypes ((List!10209 0))(
  ( (Nil!10193) (Cons!10193 (h!15594 tuple2!11656) (t!101255 List!10209)) )
))
(declare-datatypes ((array!4449 0))(
  ( (array!4450 (arr!1986 (Array (_ BitVec 32) List!10209)) (size!8027 (_ BitVec 32))) )
))
(declare-datatypes ((array!4451 0))(
  ( (array!4452 (arr!1987 (Array (_ BitVec 32) (_ BitVec 64))) (size!8028 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2522 0))(
  ( (LongMapFixedSize!2523 (defaultEntry!1621 Int) (mask!3659 (_ BitVec 32)) (extraKeys!1508 (_ BitVec 32)) (zeroValue!1518 List!10209) (minValue!1518 List!10209) (_size!2631 (_ BitVec 32)) (_keys!1555 array!4451) (_values!1540 array!4449) (_vacant!1322 (_ BitVec 32))) )
))
(declare-datatypes ((BalanceConc!6268 0))(
  ( (BalanceConc!6269 (c!182989 Conc!3127)) )
))
(declare-datatypes ((Cell!4985 0))(
  ( (Cell!4986 (v!19885 LongMapFixedSize!2522)) )
))
(declare-datatypes ((MutLongMap!1261 0))(
  ( (LongMap!1261 (underlying!2707 Cell!4985)) (MutLongMapExt!1260 (__x!7413 Int)) )
))
(declare-datatypes ((Cell!4987 0))(
  ( (Cell!4988 (v!19886 MutLongMap!1261)) )
))
(declare-datatypes ((MutableMap!1233 0))(
  ( (MutableMapExt!1232 (__x!7414 Int)) (HashMap!1233 (underlying!2708 Cell!4987) (hashF!3152 Hashable!1233) (_size!2632 (_ BitVec 32)) (defaultValue!1393 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!362 0))(
  ( (CacheFindLongestMatch!363 (cache!1614 MutableMap!1233) (totalInput!2169 BalanceConc!6268)) )
))
(declare-fun thiss!28967 () CacheFindLongestMatch!362)

(declare-fun b!1083992 () Bool)

(declare-fun e!685464 () Bool)

(declare-fun e!685459 () Bool)

(declare-fun inv!13126 (BalanceConc!6268) Bool)

(assert (=> b!1083992 (= e!685459 (and e!685466 (inv!13126 (totalInput!2169 thiss!28967)) e!685464))))

(declare-fun b!1083993 () Bool)

(declare-fun e!685461 () Bool)

(declare-fun tp!324154 () Bool)

(assert (=> b!1083993 (= e!685461 (and tp!324154 mapRes!6090))))

(declare-fun condMapEmpty!6090 () Bool)

(declare-fun mapDefault!6090 () List!10209)

(assert (=> b!1083993 (= condMapEmpty!6090 (= (arr!1986 (_values!1540 (v!19885 (underlying!2707 (v!19886 (underlying!2708 (cache!1614 thiss!28967))))))) ((as const (Array (_ BitVec 32) List!10209)) mapDefault!6090)))))

(declare-fun b!1083994 () Bool)

(declare-fun e!685462 () Bool)

(declare-fun lt!362645 () MutLongMap!1261)

(get-info :version)

(assert (=> b!1083994 (= e!685468 (and e!685462 ((_ is LongMap!1261) lt!362645)))))

(assert (=> b!1083994 (= lt!362645 (v!19886 (underlying!2708 (cache!1614 thiss!28967))))))

(declare-fun tp!324160 () Bool)

(declare-fun tp!324155 () Bool)

(declare-fun e!685463 () Bool)

(declare-fun array_inv!1429 (array!4451) Bool)

(declare-fun array_inv!1430 (array!4449) Bool)

(assert (=> b!1083995 (= e!685463 (and tp!324156 tp!324160 tp!324155 (array_inv!1429 (_keys!1555 (v!19885 (underlying!2707 (v!19886 (underlying!2708 (cache!1614 thiss!28967))))))) (array_inv!1430 (_values!1540 (v!19885 (underlying!2707 (v!19886 (underlying!2708 (cache!1614 thiss!28967))))))) e!685461))))

(declare-fun b!1083996 () Bool)

(declare-fun res!482237 () Bool)

(declare-fun e!685467 () Bool)

(assert (=> b!1083996 (=> (not res!482237) (not e!685467))))

(assert (=> b!1083996 (= res!482237 ((_ is HashMap!1233) (cache!1614 thiss!28967)))))

(declare-fun b!1083997 () Bool)

(declare-fun e!685465 () Bool)

(assert (=> b!1083997 (= e!685465 e!685463)))

(declare-fun res!482236 () Bool)

(assert (=> start!92160 (=> (not res!482236) (not e!685467))))

(declare-fun validCacheMapFindLongestMatch!57 (MutableMap!1233 BalanceConc!6268) Bool)

(assert (=> start!92160 (= res!482236 (validCacheMapFindLongestMatch!57 (cache!1614 thiss!28967) (totalInput!2169 thiss!28967)))))

(assert (=> start!92160 e!685467))

(declare-fun inv!13127 (CacheFindLongestMatch!362) Bool)

(assert (=> start!92160 (and (inv!13127 thiss!28967) e!685459)))

(declare-fun mapNonEmpty!6090 () Bool)

(declare-fun tp!324157 () Bool)

(declare-fun tp!324158 () Bool)

(assert (=> mapNonEmpty!6090 (= mapRes!6090 (and tp!324157 tp!324158))))

(declare-fun mapKey!6090 () (_ BitVec 32))

(declare-fun mapValue!6090 () List!10209)

(declare-fun mapRest!6090 () (Array (_ BitVec 32) List!10209))

(assert (=> mapNonEmpty!6090 (= (arr!1986 (_values!1540 (v!19885 (underlying!2707 (v!19886 (underlying!2708 (cache!1614 thiss!28967))))))) (store mapRest!6090 mapKey!6090 mapValue!6090))))

(declare-fun b!1083998 () Bool)

(assert (=> b!1083998 (= e!685462 e!685465)))

(declare-fun b!1083999 () Bool)

(declare-fun valid!1014 (MutableMap!1233) Bool)

(assert (=> b!1083999 (= e!685467 (not (valid!1014 (cache!1614 thiss!28967))))))

(declare-fun b!1084000 () Bool)

(declare-fun tp!324153 () Bool)

(declare-fun inv!13128 (Conc!3127) Bool)

(assert (=> b!1084000 (= e!685464 (and (inv!13128 (c!182989 (totalInput!2169 thiss!28967))) tp!324153))))

(assert (= (and start!92160 res!482236) b!1083996))

(assert (= (and b!1083996 res!482237) b!1083999))

(assert (= (and b!1083993 condMapEmpty!6090) mapIsEmpty!6090))

(assert (= (and b!1083993 (not condMapEmpty!6090)) mapNonEmpty!6090))

(assert (= b!1083995 b!1083993))

(assert (= b!1083997 b!1083995))

(assert (= b!1083998 b!1083997))

(assert (= (and b!1083994 ((_ is LongMap!1261) (v!19886 (underlying!2708 (cache!1614 thiss!28967))))) b!1083998))

(assert (= b!1083991 b!1083994))

(assert (= (and b!1083992 ((_ is HashMap!1233) (cache!1614 thiss!28967))) b!1083991))

(assert (= b!1083992 b!1084000))

(assert (= start!92160 b!1083992))

(declare-fun m!1233944 () Bool)

(assert (=> start!92160 m!1233944))

(declare-fun m!1233946 () Bool)

(assert (=> start!92160 m!1233946))

(declare-fun m!1233948 () Bool)

(assert (=> b!1083999 m!1233948))

(declare-fun m!1233950 () Bool)

(assert (=> b!1083992 m!1233950))

(declare-fun m!1233952 () Bool)

(assert (=> b!1083995 m!1233952))

(declare-fun m!1233954 () Bool)

(assert (=> b!1083995 m!1233954))

(declare-fun m!1233956 () Bool)

(assert (=> b!1084000 m!1233956))

(declare-fun m!1233958 () Bool)

(assert (=> mapNonEmpty!6090 m!1233958))

(check-sat (not b!1084000) (not b_next!26811) (not mapNonEmpty!6090) b_and!79065 (not b!1083992) (not b!1083995) (not b!1083999) (not b!1083993) (not start!92160) (not b_next!26809) b_and!79067)
(check-sat b_and!79067 b_and!79065 (not b_next!26809) (not b_next!26811))
(get-model)

(declare-fun d!304729 () Bool)

(assert (=> d!304729 (= (array_inv!1429 (_keys!1555 (v!19885 (underlying!2707 (v!19886 (underlying!2708 (cache!1614 thiss!28967))))))) (bvsge (size!8028 (_keys!1555 (v!19885 (underlying!2707 (v!19886 (underlying!2708 (cache!1614 thiss!28967))))))) #b00000000000000000000000000000000))))

(assert (=> b!1083995 d!304729))

(declare-fun d!304731 () Bool)

(assert (=> d!304731 (= (array_inv!1430 (_values!1540 (v!19885 (underlying!2707 (v!19886 (underlying!2708 (cache!1614 thiss!28967))))))) (bvsge (size!8027 (_values!1540 (v!19885 (underlying!2707 (v!19886 (underlying!2708 (cache!1614 thiss!28967))))))) #b00000000000000000000000000000000))))

(assert (=> b!1083995 d!304731))

(declare-fun d!304733 () Bool)

(declare-fun res!482242 () Bool)

(declare-fun e!685471 () Bool)

(assert (=> d!304733 (=> (not res!482242) (not e!685471))))

(declare-fun valid!1015 (MutLongMap!1261) Bool)

(assert (=> d!304733 (= res!482242 (valid!1015 (v!19886 (underlying!2708 (cache!1614 thiss!28967)))))))

(assert (=> d!304733 (= (valid!1014 (cache!1614 thiss!28967)) e!685471)))

(declare-fun b!1084005 () Bool)

(declare-fun res!482243 () Bool)

(assert (=> b!1084005 (=> (not res!482243) (not e!685471))))

(declare-fun lambda!39402 () Int)

(declare-datatypes ((tuple2!11658 0))(
  ( (tuple2!11659 (_1!6655 (_ BitVec 64)) (_2!6655 List!10209)) )
))
(declare-datatypes ((List!10210 0))(
  ( (Nil!10194) (Cons!10194 (h!15595 tuple2!11658) (t!101256 List!10210)) )
))
(declare-fun forall!2243 (List!10210 Int) Bool)

(declare-datatypes ((ListLongMap!123 0))(
  ( (ListLongMap!124 (toList!586 List!10210)) )
))
(declare-fun map!2321 (MutLongMap!1261) ListLongMap!123)

(assert (=> b!1084005 (= res!482243 (forall!2243 (toList!586 (map!2321 (v!19886 (underlying!2708 (cache!1614 thiss!28967))))) lambda!39402))))

(declare-fun b!1084006 () Bool)

(declare-fun allKeysSameHashInMap!50 (ListLongMap!123 Hashable!1233) Bool)

(assert (=> b!1084006 (= e!685471 (allKeysSameHashInMap!50 (map!2321 (v!19886 (underlying!2708 (cache!1614 thiss!28967)))) (hashF!3152 (cache!1614 thiss!28967))))))

(assert (= (and d!304733 res!482242) b!1084005))

(assert (= (and b!1084005 res!482243) b!1084006))

(declare-fun m!1233960 () Bool)

(assert (=> d!304733 m!1233960))

(declare-fun m!1233962 () Bool)

(assert (=> b!1084005 m!1233962))

(declare-fun m!1233964 () Bool)

(assert (=> b!1084005 m!1233964))

(assert (=> b!1084006 m!1233962))

(assert (=> b!1084006 m!1233962))

(declare-fun m!1233966 () Bool)

(assert (=> b!1084006 m!1233966))

(assert (=> b!1083999 d!304733))

(declare-fun d!304735 () Bool)

(declare-fun isBalanced!872 (Conc!3127) Bool)

(assert (=> d!304735 (= (inv!13126 (totalInput!2169 thiss!28967)) (isBalanced!872 (c!182989 (totalInput!2169 thiss!28967))))))

(declare-fun bs!256429 () Bool)

(assert (= bs!256429 d!304735))

(declare-fun m!1233968 () Bool)

(assert (=> bs!256429 m!1233968))

(assert (=> b!1083992 d!304735))

(declare-fun b!1084012 () Bool)

(assert (=> b!1084012 true))

(declare-fun d!304737 () Bool)

(declare-fun res!482248 () Bool)

(declare-fun e!685474 () Bool)

(assert (=> d!304737 (=> (not res!482248) (not e!685474))))

(assert (=> d!304737 (= res!482248 (valid!1014 (cache!1614 thiss!28967)))))

(assert (=> d!304737 (= (validCacheMapFindLongestMatch!57 (cache!1614 thiss!28967) (totalInput!2169 thiss!28967)) e!685474)))

(declare-fun b!1084011 () Bool)

(declare-fun res!482249 () Bool)

(assert (=> b!1084011 (=> (not res!482249) (not e!685474))))

(declare-fun invariantList!198 (List!10209) Bool)

(declare-datatypes ((ListMap!445 0))(
  ( (ListMap!446 (toList!587 List!10209)) )
))
(declare-fun map!2322 (MutableMap!1233) ListMap!445)

(assert (=> b!1084011 (= res!482249 (invariantList!198 (toList!587 (map!2322 (cache!1614 thiss!28967)))))))

(declare-fun lambda!39405 () Int)

(declare-fun forall!2244 (List!10209 Int) Bool)

(assert (=> b!1084012 (= e!685474 (forall!2244 (toList!587 (map!2322 (cache!1614 thiss!28967))) lambda!39405))))

(assert (= (and d!304737 res!482248) b!1084011))

(assert (= (and b!1084011 res!482249) b!1084012))

(assert (=> d!304737 m!1233948))

(declare-fun m!1233971 () Bool)

(assert (=> b!1084011 m!1233971))

(declare-fun m!1233973 () Bool)

(assert (=> b!1084011 m!1233973))

(assert (=> b!1084012 m!1233971))

(declare-fun m!1233975 () Bool)

(assert (=> b!1084012 m!1233975))

(assert (=> start!92160 d!304737))

(declare-fun d!304739 () Bool)

(declare-fun res!482252 () Bool)

(declare-fun e!685477 () Bool)

(assert (=> d!304739 (=> (not res!482252) (not e!685477))))

(assert (=> d!304739 (= res!482252 ((_ is HashMap!1233) (cache!1614 thiss!28967)))))

(assert (=> d!304739 (= (inv!13127 thiss!28967) e!685477)))

(declare-fun b!1084017 () Bool)

(assert (=> b!1084017 (= e!685477 (validCacheMapFindLongestMatch!57 (cache!1614 thiss!28967) (totalInput!2169 thiss!28967)))))

(assert (= (and d!304739 res!482252) b!1084017))

(assert (=> b!1084017 m!1233944))

(assert (=> start!92160 d!304739))

(declare-fun d!304741 () Bool)

(declare-fun c!182992 () Bool)

(assert (=> d!304741 (= c!182992 ((_ is Node!3127) (c!182989 (totalInput!2169 thiss!28967))))))

(declare-fun e!685482 () Bool)

(assert (=> d!304741 (= (inv!13128 (c!182989 (totalInput!2169 thiss!28967))) e!685482)))

(declare-fun b!1084024 () Bool)

(declare-fun inv!13129 (Conc!3127) Bool)

(assert (=> b!1084024 (= e!685482 (inv!13129 (c!182989 (totalInput!2169 thiss!28967))))))

(declare-fun b!1084025 () Bool)

(declare-fun e!685483 () Bool)

(assert (=> b!1084025 (= e!685482 e!685483)))

(declare-fun res!482255 () Bool)

(assert (=> b!1084025 (= res!482255 (not ((_ is Leaf!4982) (c!182989 (totalInput!2169 thiss!28967)))))))

(assert (=> b!1084025 (=> res!482255 e!685483)))

(declare-fun b!1084026 () Bool)

(declare-fun inv!13130 (Conc!3127) Bool)

(assert (=> b!1084026 (= e!685483 (inv!13130 (c!182989 (totalInput!2169 thiss!28967))))))

(assert (= (and d!304741 c!182992) b!1084024))

(assert (= (and d!304741 (not c!182992)) b!1084025))

(assert (= (and b!1084025 (not res!482255)) b!1084026))

(declare-fun m!1233977 () Bool)

(assert (=> b!1084024 m!1233977))

(declare-fun m!1233979 () Bool)

(assert (=> b!1084026 m!1233979))

(assert (=> b!1084000 d!304741))

(declare-fun b!1084033 () Bool)

(declare-fun e!685488 () Bool)

(declare-fun setRes!7413 () Bool)

(declare-fun tp!324167 () Bool)

(assert (=> b!1084033 (= e!685488 (and setRes!7413 tp!324167))))

(declare-fun condSetEmpty!7413 () Bool)

(assert (=> b!1084033 (= condSetEmpty!7413 (= (_1!6653 (_1!6654 (h!15594 (zeroValue!1518 (v!19885 (underlying!2707 (v!19886 (underlying!2708 (cache!1614 thiss!28967))))))))) ((as const (Array Context!898 Bool)) false)))))

(declare-fun b!1084034 () Bool)

(declare-fun e!685489 () Bool)

(declare-fun tp!324169 () Bool)

(assert (=> b!1084034 (= e!685489 tp!324169)))

(assert (=> b!1083995 (= tp!324160 e!685488)))

(declare-fun setElem!7413 () Context!898)

(declare-fun tp!324168 () Bool)

(declare-fun setNonEmpty!7413 () Bool)

(declare-fun inv!13131 (Context!898) Bool)

(assert (=> setNonEmpty!7413 (= setRes!7413 (and tp!324168 (inv!13131 setElem!7413) e!685489))))

(declare-fun setRest!7413 () (InoxSet Context!898))

(assert (=> setNonEmpty!7413 (= (_1!6653 (_1!6654 (h!15594 (zeroValue!1518 (v!19885 (underlying!2707 (v!19886 (underlying!2708 (cache!1614 thiss!28967))))))))) ((_ map or) (store ((as const (Array Context!898 Bool)) false) setElem!7413 true) setRest!7413))))

(declare-fun setIsEmpty!7413 () Bool)

(assert (=> setIsEmpty!7413 setRes!7413))

(assert (= (and b!1084033 condSetEmpty!7413) setIsEmpty!7413))

(assert (= (and b!1084033 (not condSetEmpty!7413)) setNonEmpty!7413))

(assert (= setNonEmpty!7413 b!1084034))

(assert (= (and b!1083995 ((_ is Cons!10193) (zeroValue!1518 (v!19885 (underlying!2707 (v!19886 (underlying!2708 (cache!1614 thiss!28967)))))))) b!1084033))

(declare-fun m!1233981 () Bool)

(assert (=> setNonEmpty!7413 m!1233981))

(declare-fun b!1084035 () Bool)

(declare-fun e!685490 () Bool)

(declare-fun setRes!7414 () Bool)

(declare-fun tp!324170 () Bool)

(assert (=> b!1084035 (= e!685490 (and setRes!7414 tp!324170))))

(declare-fun condSetEmpty!7414 () Bool)

(assert (=> b!1084035 (= condSetEmpty!7414 (= (_1!6653 (_1!6654 (h!15594 (minValue!1518 (v!19885 (underlying!2707 (v!19886 (underlying!2708 (cache!1614 thiss!28967))))))))) ((as const (Array Context!898 Bool)) false)))))

(declare-fun b!1084036 () Bool)

(declare-fun e!685491 () Bool)

(declare-fun tp!324172 () Bool)

(assert (=> b!1084036 (= e!685491 tp!324172)))

(assert (=> b!1083995 (= tp!324155 e!685490)))

(declare-fun tp!324171 () Bool)

(declare-fun setElem!7414 () Context!898)

(declare-fun setNonEmpty!7414 () Bool)

(assert (=> setNonEmpty!7414 (= setRes!7414 (and tp!324171 (inv!13131 setElem!7414) e!685491))))

(declare-fun setRest!7414 () (InoxSet Context!898))

(assert (=> setNonEmpty!7414 (= (_1!6653 (_1!6654 (h!15594 (minValue!1518 (v!19885 (underlying!2707 (v!19886 (underlying!2708 (cache!1614 thiss!28967))))))))) ((_ map or) (store ((as const (Array Context!898 Bool)) false) setElem!7414 true) setRest!7414))))

(declare-fun setIsEmpty!7414 () Bool)

(assert (=> setIsEmpty!7414 setRes!7414))

(assert (= (and b!1084035 condSetEmpty!7414) setIsEmpty!7414))

(assert (= (and b!1084035 (not condSetEmpty!7414)) setNonEmpty!7414))

(assert (= setNonEmpty!7414 b!1084036))

(assert (= (and b!1083995 ((_ is Cons!10193) (minValue!1518 (v!19885 (underlying!2707 (v!19886 (underlying!2708 (cache!1614 thiss!28967)))))))) b!1084035))

(declare-fun m!1233983 () Bool)

(assert (=> setNonEmpty!7414 m!1233983))

(declare-fun b!1084037 () Bool)

(declare-fun e!685492 () Bool)

(declare-fun setRes!7415 () Bool)

(declare-fun tp!324173 () Bool)

(assert (=> b!1084037 (= e!685492 (and setRes!7415 tp!324173))))

(declare-fun condSetEmpty!7415 () Bool)

(assert (=> b!1084037 (= condSetEmpty!7415 (= (_1!6653 (_1!6654 (h!15594 mapDefault!6090))) ((as const (Array Context!898 Bool)) false)))))

(declare-fun b!1084038 () Bool)

(declare-fun e!685493 () Bool)

(declare-fun tp!324175 () Bool)

(assert (=> b!1084038 (= e!685493 tp!324175)))

(assert (=> b!1083993 (= tp!324154 e!685492)))

(declare-fun setElem!7415 () Context!898)

(declare-fun setNonEmpty!7415 () Bool)

(declare-fun tp!324174 () Bool)

(assert (=> setNonEmpty!7415 (= setRes!7415 (and tp!324174 (inv!13131 setElem!7415) e!685493))))

(declare-fun setRest!7415 () (InoxSet Context!898))

(assert (=> setNonEmpty!7415 (= (_1!6653 (_1!6654 (h!15594 mapDefault!6090))) ((_ map or) (store ((as const (Array Context!898 Bool)) false) setElem!7415 true) setRest!7415))))

(declare-fun setIsEmpty!7415 () Bool)

(assert (=> setIsEmpty!7415 setRes!7415))

(assert (= (and b!1084037 condSetEmpty!7415) setIsEmpty!7415))

(assert (= (and b!1084037 (not condSetEmpty!7415)) setNonEmpty!7415))

(assert (= setNonEmpty!7415 b!1084038))

(assert (= (and b!1083993 ((_ is Cons!10193) mapDefault!6090)) b!1084037))

(declare-fun m!1233985 () Bool)

(assert (=> setNonEmpty!7415 m!1233985))

(declare-fun b!1084049 () Bool)

(declare-fun e!685502 () Bool)

(declare-fun setRes!7420 () Bool)

(declare-fun tp!324193 () Bool)

(assert (=> b!1084049 (= e!685502 (and setRes!7420 tp!324193))))

(declare-fun condSetEmpty!7420 () Bool)

(declare-fun mapValue!6093 () List!10209)

(assert (=> b!1084049 (= condSetEmpty!7420 (= (_1!6653 (_1!6654 (h!15594 mapValue!6093))) ((as const (Array Context!898 Bool)) false)))))

(declare-fun setElem!7421 () Context!898)

(declare-fun e!685504 () Bool)

(declare-fun tp!324192 () Bool)

(declare-fun setNonEmpty!7420 () Bool)

(assert (=> setNonEmpty!7420 (= setRes!7420 (and tp!324192 (inv!13131 setElem!7421) e!685504))))

(declare-fun setRest!7421 () (InoxSet Context!898))

(assert (=> setNonEmpty!7420 (= (_1!6653 (_1!6654 (h!15594 mapValue!6093))) ((_ map or) (store ((as const (Array Context!898 Bool)) false) setElem!7421 true) setRest!7421))))

(declare-fun setRes!7421 () Bool)

(declare-fun setElem!7420 () Context!898)

(declare-fun setNonEmpty!7421 () Bool)

(declare-fun e!685505 () Bool)

(declare-fun tp!324191 () Bool)

(assert (=> setNonEmpty!7421 (= setRes!7421 (and tp!324191 (inv!13131 setElem!7420) e!685505))))

(declare-fun mapDefault!6093 () List!10209)

(declare-fun setRest!7420 () (InoxSet Context!898))

(assert (=> setNonEmpty!7421 (= (_1!6653 (_1!6654 (h!15594 mapDefault!6093))) ((_ map or) (store ((as const (Array Context!898 Bool)) false) setElem!7420 true) setRest!7420))))

(declare-fun setIsEmpty!7420 () Bool)

(assert (=> setIsEmpty!7420 setRes!7420))

(declare-fun b!1084050 () Bool)

(declare-fun e!685503 () Bool)

(declare-fun tp!324194 () Bool)

(assert (=> b!1084050 (= e!685503 (and setRes!7421 tp!324194))))

(declare-fun condSetEmpty!7421 () Bool)

(assert (=> b!1084050 (= condSetEmpty!7421 (= (_1!6653 (_1!6654 (h!15594 mapDefault!6093))) ((as const (Array Context!898 Bool)) false)))))

(declare-fun b!1084051 () Bool)

(declare-fun tp!324196 () Bool)

(assert (=> b!1084051 (= e!685504 tp!324196)))

(declare-fun setIsEmpty!7421 () Bool)

(assert (=> setIsEmpty!7421 setRes!7421))

(declare-fun mapNonEmpty!6093 () Bool)

(declare-fun mapRes!6093 () Bool)

(declare-fun tp!324195 () Bool)

(assert (=> mapNonEmpty!6093 (= mapRes!6093 (and tp!324195 e!685502))))

(declare-fun mapRest!6093 () (Array (_ BitVec 32) List!10209))

(declare-fun mapKey!6093 () (_ BitVec 32))

(assert (=> mapNonEmpty!6093 (= mapRest!6090 (store mapRest!6093 mapKey!6093 mapValue!6093))))

(declare-fun b!1084052 () Bool)

(declare-fun tp!324190 () Bool)

(assert (=> b!1084052 (= e!685505 tp!324190)))

(declare-fun mapIsEmpty!6093 () Bool)

(assert (=> mapIsEmpty!6093 mapRes!6093))

(declare-fun condMapEmpty!6093 () Bool)

(assert (=> mapNonEmpty!6090 (= condMapEmpty!6093 (= mapRest!6090 ((as const (Array (_ BitVec 32) List!10209)) mapDefault!6093)))))

(assert (=> mapNonEmpty!6090 (= tp!324157 (and e!685503 mapRes!6093))))

(assert (= (and mapNonEmpty!6090 condMapEmpty!6093) mapIsEmpty!6093))

(assert (= (and mapNonEmpty!6090 (not condMapEmpty!6093)) mapNonEmpty!6093))

(assert (= (and b!1084049 condSetEmpty!7420) setIsEmpty!7420))

(assert (= (and b!1084049 (not condSetEmpty!7420)) setNonEmpty!7420))

(assert (= setNonEmpty!7420 b!1084051))

(assert (= (and mapNonEmpty!6093 ((_ is Cons!10193) mapValue!6093)) b!1084049))

(assert (= (and b!1084050 condSetEmpty!7421) setIsEmpty!7421))

(assert (= (and b!1084050 (not condSetEmpty!7421)) setNonEmpty!7421))

(assert (= setNonEmpty!7421 b!1084052))

(assert (= (and mapNonEmpty!6090 ((_ is Cons!10193) mapDefault!6093)) b!1084050))

(declare-fun m!1233987 () Bool)

(assert (=> setNonEmpty!7420 m!1233987))

(declare-fun m!1233989 () Bool)

(assert (=> setNonEmpty!7421 m!1233989))

(declare-fun m!1233991 () Bool)

(assert (=> mapNonEmpty!6093 m!1233991))

(declare-fun b!1084053 () Bool)

(declare-fun e!685506 () Bool)

(declare-fun setRes!7422 () Bool)

(declare-fun tp!324197 () Bool)

(assert (=> b!1084053 (= e!685506 (and setRes!7422 tp!324197))))

(declare-fun condSetEmpty!7422 () Bool)

(assert (=> b!1084053 (= condSetEmpty!7422 (= (_1!6653 (_1!6654 (h!15594 mapValue!6090))) ((as const (Array Context!898 Bool)) false)))))

(declare-fun b!1084054 () Bool)

(declare-fun e!685507 () Bool)

(declare-fun tp!324199 () Bool)

(assert (=> b!1084054 (= e!685507 tp!324199)))

(assert (=> mapNonEmpty!6090 (= tp!324158 e!685506)))

(declare-fun tp!324198 () Bool)

(declare-fun setElem!7422 () Context!898)

(declare-fun setNonEmpty!7422 () Bool)

(assert (=> setNonEmpty!7422 (= setRes!7422 (and tp!324198 (inv!13131 setElem!7422) e!685507))))

(declare-fun setRest!7422 () (InoxSet Context!898))

(assert (=> setNonEmpty!7422 (= (_1!6653 (_1!6654 (h!15594 mapValue!6090))) ((_ map or) (store ((as const (Array Context!898 Bool)) false) setElem!7422 true) setRest!7422))))

(declare-fun setIsEmpty!7422 () Bool)

(assert (=> setIsEmpty!7422 setRes!7422))

(assert (= (and b!1084053 condSetEmpty!7422) setIsEmpty!7422))

(assert (= (and b!1084053 (not condSetEmpty!7422)) setNonEmpty!7422))

(assert (= setNonEmpty!7422 b!1084054))

(assert (= (and mapNonEmpty!6090 ((_ is Cons!10193) mapValue!6090)) b!1084053))

(declare-fun m!1233993 () Bool)

(assert (=> setNonEmpty!7422 m!1233993))

(declare-fun e!685512 () Bool)

(declare-fun tp!324207 () Bool)

(declare-fun b!1084063 () Bool)

(declare-fun tp!324206 () Bool)

(assert (=> b!1084063 (= e!685512 (and (inv!13128 (left!8725 (c!182989 (totalInput!2169 thiss!28967)))) tp!324207 (inv!13128 (right!9055 (c!182989 (totalInput!2169 thiss!28967)))) tp!324206))))

(declare-fun b!1084065 () Bool)

(declare-fun e!685513 () Bool)

(declare-fun tp!324208 () Bool)

(assert (=> b!1084065 (= e!685513 tp!324208)))

(declare-fun b!1084064 () Bool)

(declare-fun inv!13132 (IArray!6259) Bool)

(assert (=> b!1084064 (= e!685512 (and (inv!13132 (xs!5820 (c!182989 (totalInput!2169 thiss!28967)))) e!685513))))

(assert (=> b!1084000 (= tp!324153 (and (inv!13128 (c!182989 (totalInput!2169 thiss!28967))) e!685512))))

(assert (= (and b!1084000 ((_ is Node!3127) (c!182989 (totalInput!2169 thiss!28967)))) b!1084063))

(assert (= b!1084064 b!1084065))

(assert (= (and b!1084000 ((_ is Leaf!4982) (c!182989 (totalInput!2169 thiss!28967)))) b!1084064))

(declare-fun m!1233995 () Bool)

(assert (=> b!1084063 m!1233995))

(declare-fun m!1233997 () Bool)

(assert (=> b!1084063 m!1233997))

(declare-fun m!1233999 () Bool)

(assert (=> b!1084064 m!1233999))

(assert (=> b!1084000 m!1233956))

(check-sat (not b!1084000) (not b_next!26811) (not b!1084034) (not b!1084035) (not b!1084036) (not b!1084052) (not b!1084024) (not b!1084005) (not setNonEmpty!7421) (not b!1084026) (not b!1084033) (not b!1084038) (not b!1084011) (not b!1084054) (not d!304733) (not setNonEmpty!7420) (not setNonEmpty!7414) (not d!304735) (not setNonEmpty!7415) (not b!1084063) (not b!1084053) (not d!304737) (not b!1084017) b_and!79065 (not b_next!26809) b_and!79067 (not b!1084037) (not b!1084006) (not b!1084050) (not b!1084051) (not b!1084064) (not mapNonEmpty!6093) (not setNonEmpty!7413) (not b!1084049) (not setNonEmpty!7422) (not b!1084012) (not b!1084065))
(check-sat b_and!79067 b_and!79065 (not b_next!26809) (not b_next!26811))
