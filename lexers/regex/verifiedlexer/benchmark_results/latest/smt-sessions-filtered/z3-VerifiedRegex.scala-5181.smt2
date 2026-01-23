; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266576 () Bool)

(assert start!266576)

(declare-fun b!2749644 () Bool)

(declare-fun b_free!77685 () Bool)

(declare-fun b_next!78389 () Bool)

(assert (=> b!2749644 (= b_free!77685 (not b_next!78389))))

(declare-fun tp!867816 () Bool)

(declare-fun b_and!202423 () Bool)

(assert (=> b!2749644 (= tp!867816 b_and!202423)))

(declare-fun b!2749649 () Bool)

(declare-fun b_free!77687 () Bool)

(declare-fun b_next!78391 () Bool)

(assert (=> b!2749649 (= b_free!77687 (not b_next!78391))))

(declare-fun tp!867811 () Bool)

(declare-fun b_and!202425 () Bool)

(assert (=> b!2749649 (= tp!867811 b_and!202425)))

(declare-fun b!2749651 () Bool)

(declare-fun b_free!77689 () Bool)

(declare-fun b_next!78393 () Bool)

(assert (=> b!2749651 (= b_free!77689 (not b_next!78393))))

(declare-fun tp!867822 () Bool)

(declare-fun b_and!202427 () Bool)

(assert (=> b!2749651 (= tp!867822 b_and!202427)))

(declare-fun b!2749656 () Bool)

(declare-fun b_free!77691 () Bool)

(declare-fun b_next!78395 () Bool)

(assert (=> b!2749656 (= b_free!77691 (not b_next!78395))))

(declare-fun tp!867824 () Bool)

(declare-fun b_and!202429 () Bool)

(assert (=> b!2749656 (= tp!867824 b_and!202429)))

(declare-fun b!2749639 () Bool)

(declare-fun e!1733117 () Bool)

(assert (=> b!2749639 (= e!1733117 false)))

(declare-datatypes ((C!16212 0))(
  ( (C!16213 (val!10040 Int)) )
))
(declare-datatypes ((Regex!8027 0))(
  ( (ElementMatch!8027 (c!445047 C!16212)) (Concat!13115 (regOne!16566 Regex!8027) (regTwo!16566 Regex!8027)) (EmptyExpr!8027) (Star!8027 (reg!8356 Regex!8027)) (EmptyLang!8027) (Union!8027 (regOne!16567 Regex!8027) (regTwo!16567 Regex!8027)) )
))
(declare-fun lt!972399 () Regex!8027)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!31857 0))(
  ( (Nil!31757) (Cons!31757 (h!37177 Regex!8027) (t!227961 List!31857)) )
))
(declare-datatypes ((Context!4490 0))(
  ( (Context!4491 (exprs!2745 List!31857)) )
))
(declare-fun lt!972401 () (InoxSet Context!4490))

(declare-datatypes ((List!31858 0))(
  ( (Nil!31758) (Cons!31758 (h!37178 Context!4490) (t!227962 List!31858)) )
))
(declare-fun unfocusZipper!170 (List!31858) Regex!8027)

(declare-fun toList!1813 ((InoxSet Context!4490)) List!31858)

(assert (=> b!2749639 (= lt!972399 (unfocusZipper!170 (toList!1813 lt!972401)))))

(declare-datatypes ((List!31859 0))(
  ( (Nil!31759) (Cons!31759 (h!37179 C!16212) (t!227963 List!31859)) )
))
(declare-fun lt!972398 () List!31859)

(declare-datatypes ((IArray!19831 0))(
  ( (IArray!19832 (innerList!9973 List!31859)) )
))
(declare-datatypes ((Conc!9913 0))(
  ( (Node!9913 (left!24288 Conc!9913) (right!24618 Conc!9913) (csize!20056 Int) (cheight!10124 Int)) (Leaf!15095 (xs!13020 IArray!19831) (csize!20057 Int)) (Empty!9913) )
))
(declare-datatypes ((BalanceConc!19440 0))(
  ( (BalanceConc!19441 (c!445048 Conc!9913)) )
))
(declare-fun input!6491 () BalanceConc!19440)

(declare-fun list!12016 (BalanceConc!19440) List!31859)

(assert (=> b!2749639 (= lt!972398 (list!12016 input!6491))))

(declare-fun r!15227 () Regex!8027)

(declare-fun focus!285 (Regex!8027) (InoxSet Context!4490))

(assert (=> b!2749639 (= lt!972401 (focus!285 r!15227))))

(declare-fun b!2749640 () Bool)

(declare-fun e!1733123 () Bool)

(declare-fun e!1733130 () Bool)

(assert (=> b!2749640 (= e!1733123 e!1733130)))

(declare-fun b!2749641 () Bool)

(declare-fun e!1733125 () Bool)

(declare-fun e!1733133 () Bool)

(declare-datatypes ((tuple3!4512 0))(
  ( (tuple3!4513 (_1!18558 Regex!8027) (_2!18558 Context!4490) (_3!2726 C!16212)) )
))
(declare-datatypes ((tuple2!31664 0))(
  ( (tuple2!31665 (_1!18559 tuple3!4512) (_2!18559 (InoxSet Context!4490))) )
))
(declare-datatypes ((List!31860 0))(
  ( (Nil!31760) (Cons!31760 (h!37180 tuple2!31664) (t!227964 List!31860)) )
))
(declare-datatypes ((array!13057 0))(
  ( (array!13058 (arr!5825 (Array (_ BitVec 32) List!31860)) (size!24520 (_ BitVec 32))) )
))
(declare-datatypes ((array!13059 0))(
  ( (array!13060 (arr!5826 (Array (_ BitVec 32) (_ BitVec 64))) (size!24521 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7330 0))(
  ( (LongMapFixedSize!7331 (defaultEntry!4050 Int) (mask!9415 (_ BitVec 32)) (extraKeys!3914 (_ BitVec 32)) (zeroValue!3924 List!31860) (minValue!3924 List!31860) (_size!7373 (_ BitVec 32)) (_keys!3965 array!13059) (_values!3946 array!13057) (_vacant!3726 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14469 0))(
  ( (Cell!14470 (v!33369 LongMapFixedSize!7330)) )
))
(declare-datatypes ((MutLongMap!3665 0))(
  ( (LongMap!3665 (underlying!7533 Cell!14469)) (MutLongMapExt!3664 (__x!20645 Int)) )
))
(declare-fun lt!972402 () MutLongMap!3665)

(get-info :version)

(assert (=> b!2749641 (= e!1733125 (and e!1733133 ((_ is LongMap!3665) lt!972402)))))

(declare-datatypes ((Cell!14471 0))(
  ( (Cell!14472 (v!33370 MutLongMap!3665)) )
))
(declare-datatypes ((Hashable!3581 0))(
  ( (HashableExt!3580 (__x!20646 Int)) )
))
(declare-datatypes ((MutableMap!3571 0))(
  ( (MutableMapExt!3570 (__x!20647 Int)) (HashMap!3571 (underlying!7534 Cell!14471) (hashF!5613 Hashable!3581) (_size!7374 (_ BitVec 32)) (defaultValue!3742 Int)) )
))
(declare-datatypes ((CacheDown!2398 0))(
  ( (CacheDown!2399 (cache!3714 MutableMap!3571)) )
))
(declare-fun cacheDown!1142 () CacheDown!2398)

(assert (=> b!2749641 (= lt!972402 (v!33370 (underlying!7534 (cache!3714 cacheDown!1142))))))

(declare-fun b!2749642 () Bool)

(declare-fun e!1733132 () Bool)

(declare-fun tp!867809 () Bool)

(assert (=> b!2749642 (= e!1733132 tp!867809)))

(declare-fun b!2749643 () Bool)

(declare-fun tp!867821 () Bool)

(declare-fun tp!867819 () Bool)

(assert (=> b!2749643 (= e!1733132 (and tp!867821 tp!867819))))

(declare-fun mapIsEmpty!16711 () Bool)

(declare-fun mapRes!16711 () Bool)

(assert (=> mapIsEmpty!16711 mapRes!16711))

(declare-fun e!1733120 () Bool)

(declare-fun tp!867818 () Bool)

(declare-datatypes ((tuple2!31666 0))(
  ( (tuple2!31667 (_1!18560 Context!4490) (_2!18560 C!16212)) )
))
(declare-datatypes ((tuple2!31668 0))(
  ( (tuple2!31669 (_1!18561 tuple2!31666) (_2!18561 (InoxSet Context!4490))) )
))
(declare-datatypes ((List!31861 0))(
  ( (Nil!31761) (Cons!31761 (h!37181 tuple2!31668) (t!227965 List!31861)) )
))
(declare-datatypes ((array!13061 0))(
  ( (array!13062 (arr!5827 (Array (_ BitVec 32) List!31861)) (size!24522 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7332 0))(
  ( (LongMapFixedSize!7333 (defaultEntry!4051 Int) (mask!9416 (_ BitVec 32)) (extraKeys!3915 (_ BitVec 32)) (zeroValue!3925 List!31861) (minValue!3925 List!31861) (_size!7375 (_ BitVec 32)) (_keys!3966 array!13059) (_values!3947 array!13061) (_vacant!3727 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14473 0))(
  ( (Cell!14474 (v!33371 LongMapFixedSize!7332)) )
))
(declare-datatypes ((MutLongMap!3666 0))(
  ( (LongMap!3666 (underlying!7535 Cell!14473)) (MutLongMapExt!3665 (__x!20648 Int)) )
))
(declare-datatypes ((Cell!14475 0))(
  ( (Cell!14476 (v!33372 MutLongMap!3666)) )
))
(declare-datatypes ((Hashable!3582 0))(
  ( (HashableExt!3581 (__x!20649 Int)) )
))
(declare-datatypes ((MutableMap!3572 0))(
  ( (MutableMapExt!3571 (__x!20650 Int)) (HashMap!3572 (underlying!7536 Cell!14475) (hashF!5614 Hashable!3582) (_size!7376 (_ BitVec 32)) (defaultValue!3743 Int)) )
))
(declare-datatypes ((CacheUp!2276 0))(
  ( (CacheUp!2277 (cache!3715 MutableMap!3572)) )
))
(declare-fun cacheUp!1023 () CacheUp!2276)

(declare-fun e!1733122 () Bool)

(declare-fun tp!867823 () Bool)

(declare-fun array_inv!4164 (array!13059) Bool)

(declare-fun array_inv!4165 (array!13061) Bool)

(assert (=> b!2749644 (= e!1733122 (and tp!867816 tp!867823 tp!867818 (array_inv!4164 (_keys!3966 (v!33371 (underlying!7535 (v!33372 (underlying!7536 (cache!3715 cacheUp!1023))))))) (array_inv!4165 (_values!3947 (v!33371 (underlying!7535 (v!33372 (underlying!7536 (cache!3715 cacheUp!1023))))))) e!1733120))))

(declare-fun b!2749645 () Bool)

(declare-fun res!1153195 () Bool)

(assert (=> b!2749645 (=> (not res!1153195) (not e!1733117))))

(declare-fun valid!2840 (CacheUp!2276) Bool)

(assert (=> b!2749645 (= res!1153195 (valid!2840 cacheUp!1023))))

(declare-fun b!2749646 () Bool)

(declare-fun e!1733119 () Bool)

(assert (=> b!2749646 (= e!1733133 e!1733119)))

(declare-fun b!2749647 () Bool)

(declare-fun e!1733126 () Bool)

(assert (=> b!2749647 (= e!1733126 e!1733122)))

(declare-fun res!1153196 () Bool)

(assert (=> start!266576 (=> (not res!1153196) (not e!1733117))))

(declare-fun validRegex!3326 (Regex!8027) Bool)

(assert (=> start!266576 (= res!1153196 (validRegex!3326 r!15227))))

(assert (=> start!266576 e!1733117))

(assert (=> start!266576 e!1733132))

(declare-fun inv!43138 (CacheUp!2276) Bool)

(assert (=> start!266576 (and (inv!43138 cacheUp!1023) e!1733123)))

(declare-fun e!1733134 () Bool)

(declare-fun inv!43139 (CacheDown!2398) Bool)

(assert (=> start!266576 (and (inv!43139 cacheDown!1142) e!1733134)))

(declare-fun e!1733135 () Bool)

(declare-fun inv!43140 (BalanceConc!19440) Bool)

(assert (=> start!266576 (and (inv!43140 input!6491) e!1733135)))

(declare-fun b!2749648 () Bool)

(declare-fun tp!867813 () Bool)

(assert (=> b!2749648 (= e!1733120 (and tp!867813 mapRes!16711))))

(declare-fun condMapEmpty!16711 () Bool)

(declare-fun mapDefault!16711 () List!31861)

(assert (=> b!2749648 (= condMapEmpty!16711 (= (arr!5827 (_values!3947 (v!33371 (underlying!7535 (v!33372 (underlying!7536 (cache!3715 cacheUp!1023))))))) ((as const (Array (_ BitVec 32) List!31861)) mapDefault!16711)))))

(declare-fun tp!867810 () Bool)

(declare-fun tp!867826 () Bool)

(declare-fun e!1733128 () Bool)

(declare-fun e!1733131 () Bool)

(declare-fun array_inv!4166 (array!13057) Bool)

(assert (=> b!2749649 (= e!1733128 (and tp!867811 tp!867826 tp!867810 (array_inv!4164 (_keys!3965 (v!33369 (underlying!7533 (v!33370 (underlying!7534 (cache!3714 cacheDown!1142))))))) (array_inv!4166 (_values!3946 (v!33369 (underlying!7533 (v!33370 (underlying!7534 (cache!3714 cacheDown!1142))))))) e!1733131))))

(declare-fun mapIsEmpty!16712 () Bool)

(declare-fun mapRes!16712 () Bool)

(assert (=> mapIsEmpty!16712 mapRes!16712))

(declare-fun b!2749650 () Bool)

(declare-fun e!1733121 () Bool)

(assert (=> b!2749650 (= e!1733134 e!1733121)))

(declare-fun e!1733124 () Bool)

(assert (=> b!2749651 (= e!1733130 (and e!1733124 tp!867822))))

(declare-fun mapNonEmpty!16711 () Bool)

(declare-fun tp!867812 () Bool)

(declare-fun tp!867815 () Bool)

(assert (=> mapNonEmpty!16711 (= mapRes!16711 (and tp!867812 tp!867815))))

(declare-fun mapKey!16711 () (_ BitVec 32))

(declare-fun mapRest!16711 () (Array (_ BitVec 32) List!31861))

(declare-fun mapValue!16711 () List!31861)

(assert (=> mapNonEmpty!16711 (= (arr!5827 (_values!3947 (v!33371 (underlying!7535 (v!33372 (underlying!7536 (cache!3715 cacheUp!1023))))))) (store mapRest!16711 mapKey!16711 mapValue!16711))))

(declare-fun b!2749652 () Bool)

(declare-fun tp!867807 () Bool)

(declare-fun tp!867825 () Bool)

(assert (=> b!2749652 (= e!1733132 (and tp!867807 tp!867825))))

(declare-fun b!2749653 () Bool)

(assert (=> b!2749653 (= e!1733119 e!1733128)))

(declare-fun b!2749654 () Bool)

(declare-fun e!1733129 () Bool)

(assert (=> b!2749654 (= e!1733129 e!1733126)))

(declare-fun b!2749655 () Bool)

(declare-fun tp!867808 () Bool)

(declare-fun inv!43141 (Conc!9913) Bool)

(assert (=> b!2749655 (= e!1733135 (and (inv!43141 (c!445048 input!6491)) tp!867808))))

(assert (=> b!2749656 (= e!1733121 (and e!1733125 tp!867824))))

(declare-fun b!2749657 () Bool)

(declare-fun res!1153194 () Bool)

(assert (=> b!2749657 (=> (not res!1153194) (not e!1733117))))

(declare-fun valid!2841 (CacheDown!2398) Bool)

(assert (=> b!2749657 (= res!1153194 (valid!2841 cacheDown!1142))))

(declare-fun b!2749658 () Bool)

(declare-fun tp!867820 () Bool)

(assert (=> b!2749658 (= e!1733131 (and tp!867820 mapRes!16712))))

(declare-fun condMapEmpty!16712 () Bool)

(declare-fun mapDefault!16712 () List!31860)

(assert (=> b!2749658 (= condMapEmpty!16712 (= (arr!5825 (_values!3946 (v!33369 (underlying!7533 (v!33370 (underlying!7534 (cache!3714 cacheDown!1142))))))) ((as const (Array (_ BitVec 32) List!31860)) mapDefault!16712)))))

(declare-fun mapNonEmpty!16712 () Bool)

(declare-fun tp!867817 () Bool)

(declare-fun tp!867814 () Bool)

(assert (=> mapNonEmpty!16712 (= mapRes!16712 (and tp!867817 tp!867814))))

(declare-fun mapKey!16712 () (_ BitVec 32))

(declare-fun mapRest!16712 () (Array (_ BitVec 32) List!31860))

(declare-fun mapValue!16712 () List!31860)

(assert (=> mapNonEmpty!16712 (= (arr!5825 (_values!3946 (v!33369 (underlying!7533 (v!33370 (underlying!7534 (cache!3714 cacheDown!1142))))))) (store mapRest!16712 mapKey!16712 mapValue!16712))))

(declare-fun b!2749659 () Bool)

(declare-fun tp_is_empty!13957 () Bool)

(assert (=> b!2749659 (= e!1733132 tp_is_empty!13957)))

(declare-fun b!2749660 () Bool)

(declare-fun lt!972400 () MutLongMap!3666)

(assert (=> b!2749660 (= e!1733124 (and e!1733129 ((_ is LongMap!3666) lt!972400)))))

(assert (=> b!2749660 (= lt!972400 (v!33372 (underlying!7536 (cache!3715 cacheUp!1023))))))

(assert (= (and start!266576 res!1153196) b!2749645))

(assert (= (and b!2749645 res!1153195) b!2749657))

(assert (= (and b!2749657 res!1153194) b!2749639))

(assert (= (and start!266576 ((_ is ElementMatch!8027) r!15227)) b!2749659))

(assert (= (and start!266576 ((_ is Concat!13115) r!15227)) b!2749652))

(assert (= (and start!266576 ((_ is Star!8027) r!15227)) b!2749642))

(assert (= (and start!266576 ((_ is Union!8027) r!15227)) b!2749643))

(assert (= (and b!2749648 condMapEmpty!16711) mapIsEmpty!16711))

(assert (= (and b!2749648 (not condMapEmpty!16711)) mapNonEmpty!16711))

(assert (= b!2749644 b!2749648))

(assert (= b!2749647 b!2749644))

(assert (= b!2749654 b!2749647))

(assert (= (and b!2749660 ((_ is LongMap!3666) (v!33372 (underlying!7536 (cache!3715 cacheUp!1023))))) b!2749654))

(assert (= b!2749651 b!2749660))

(assert (= (and b!2749640 ((_ is HashMap!3572) (cache!3715 cacheUp!1023))) b!2749651))

(assert (= start!266576 b!2749640))

(assert (= (and b!2749658 condMapEmpty!16712) mapIsEmpty!16712))

(assert (= (and b!2749658 (not condMapEmpty!16712)) mapNonEmpty!16712))

(assert (= b!2749649 b!2749658))

(assert (= b!2749653 b!2749649))

(assert (= b!2749646 b!2749653))

(assert (= (and b!2749641 ((_ is LongMap!3665) (v!33370 (underlying!7534 (cache!3714 cacheDown!1142))))) b!2749646))

(assert (= b!2749656 b!2749641))

(assert (= (and b!2749650 ((_ is HashMap!3571) (cache!3714 cacheDown!1142))) b!2749656))

(assert (= start!266576 b!2749650))

(assert (= start!266576 b!2749655))

(declare-fun m!3164981 () Bool)

(assert (=> b!2749649 m!3164981))

(declare-fun m!3164983 () Bool)

(assert (=> b!2749649 m!3164983))

(declare-fun m!3164985 () Bool)

(assert (=> b!2749645 m!3164985))

(declare-fun m!3164987 () Bool)

(assert (=> b!2749657 m!3164987))

(declare-fun m!3164989 () Bool)

(assert (=> mapNonEmpty!16711 m!3164989))

(declare-fun m!3164991 () Bool)

(assert (=> b!2749655 m!3164991))

(declare-fun m!3164993 () Bool)

(assert (=> b!2749639 m!3164993))

(assert (=> b!2749639 m!3164993))

(declare-fun m!3164995 () Bool)

(assert (=> b!2749639 m!3164995))

(declare-fun m!3164997 () Bool)

(assert (=> b!2749639 m!3164997))

(declare-fun m!3164999 () Bool)

(assert (=> b!2749639 m!3164999))

(declare-fun m!3165001 () Bool)

(assert (=> mapNonEmpty!16712 m!3165001))

(declare-fun m!3165003 () Bool)

(assert (=> start!266576 m!3165003))

(declare-fun m!3165005 () Bool)

(assert (=> start!266576 m!3165005))

(declare-fun m!3165007 () Bool)

(assert (=> start!266576 m!3165007))

(declare-fun m!3165009 () Bool)

(assert (=> start!266576 m!3165009))

(declare-fun m!3165011 () Bool)

(assert (=> b!2749644 m!3165011))

(declare-fun m!3165013 () Bool)

(assert (=> b!2749644 m!3165013))

(check-sat (not b_next!78395) b_and!202427 (not b!2749657) (not b!2749642) tp_is_empty!13957 (not b!2749645) (not mapNonEmpty!16712) b_and!202425 (not mapNonEmpty!16711) b_and!202423 (not b_next!78391) (not b!2749648) (not b!2749655) (not start!266576) b_and!202429 (not b!2749649) (not b!2749658) (not b_next!78389) (not b_next!78393) (not b!2749639) (not b!2749652) (not b!2749644) (not b!2749643))
(check-sat (not b_next!78395) (not b_next!78391) b_and!202429 b_and!202427 b_and!202425 b_and!202423 (not b_next!78389) (not b_next!78393))
