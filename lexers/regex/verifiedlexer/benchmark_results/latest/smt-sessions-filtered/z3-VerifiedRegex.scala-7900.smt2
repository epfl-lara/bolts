; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412480 () Bool)

(assert start!412480)

(declare-fun b!4296552 () Bool)

(declare-fun b_free!127799 () Bool)

(declare-fun b_next!128503 () Bool)

(assert (=> b!4296552 (= b_free!127799 (not b_next!128503))))

(declare-fun tp!1319635 () Bool)

(declare-fun b_and!339015 () Bool)

(assert (=> b!4296552 (= tp!1319635 b_and!339015)))

(declare-fun b!4296546 () Bool)

(declare-fun b_free!127801 () Bool)

(declare-fun b_next!128505 () Bool)

(assert (=> b!4296546 (= b_free!127801 (not b_next!128505))))

(declare-fun tp!1319630 () Bool)

(declare-fun b_and!339017 () Bool)

(assert (=> b!4296546 (= tp!1319630 b_and!339017)))

(declare-fun e!2670194 () Bool)

(declare-fun e!2670191 () Bool)

(assert (=> b!4296546 (= e!2670194 (and e!2670191 tp!1319630))))

(declare-fun b!4296547 () Bool)

(declare-fun res!1761028 () Bool)

(declare-fun e!2670190 () Bool)

(assert (=> b!4296547 (=> (not res!1761028) (not e!2670190))))

(declare-fun res!14399 () Int)

(declare-datatypes ((C!26196 0))(
  ( (C!26197 (val!15424 Int)) )
))
(declare-datatypes ((Regex!12999 0))(
  ( (ElementMatch!12999 (c!730979 C!26196)) (Concat!21318 (regOne!26510 Regex!12999) (regTwo!26510 Regex!12999)) (EmptyExpr!12999) (Star!12999 (reg!13328 Regex!12999)) (EmptyLang!12999) (Union!12999 (regOne!26511 Regex!12999) (regTwo!26511 Regex!12999)) )
))
(declare-datatypes ((List!47987 0))(
  ( (Nil!47863) (Cons!47863 (h!53283 Regex!12999) (t!354594 List!47987)) )
))
(declare-datatypes ((Context!5778 0))(
  ( (Context!5779 (exprs!3389 List!47987)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!45660 0))(
  ( (tuple2!45661 (_1!26109 (InoxSet Context!5778)) (_2!26109 Int)) )
))
(declare-datatypes ((tuple2!45662 0))(
  ( (tuple2!45663 (_1!26110 tuple2!45660) (_2!26110 Int)) )
))
(declare-datatypes ((List!47988 0))(
  ( (Nil!47864) (Cons!47864 (h!53284 tuple2!45662) (t!354595 List!47988)) )
))
(declare-datatypes ((array!15996 0))(
  ( (array!15997 (arr!7147 (Array (_ BitVec 32) (_ BitVec 64))) (size!35171 (_ BitVec 32))) )
))
(declare-datatypes ((array!15998 0))(
  ( (array!15999 (arr!7148 (Array (_ BitVec 32) List!47988)) (size!35172 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8962 0))(
  ( (LongMapFixedSize!8963 (defaultEntry!4866 Int) (mask!12950 (_ BitVec 32)) (extraKeys!4730 (_ BitVec 32)) (zeroValue!4740 List!47988) (minValue!4740 List!47988) (_size!9005 (_ BitVec 32)) (_keys!4781 array!15996) (_values!4762 array!15998) (_vacant!4542 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17733 0))(
  ( (Cell!17734 (v!41799 LongMapFixedSize!8962)) )
))
(declare-datatypes ((MutLongMap!4481 0))(
  ( (LongMap!4481 (underlying!9191 Cell!17733)) (MutLongMapExt!4480 (__x!29468 Int)) )
))
(declare-datatypes ((Cell!17735 0))(
  ( (Cell!17736 (v!41800 MutLongMap!4481)) )
))
(declare-datatypes ((Hashable!4397 0))(
  ( (HashableExt!4396 (__x!29469 Int)) )
))
(declare-datatypes ((MutableMap!4387 0))(
  ( (MutableMapExt!4386 (__x!29470 Int)) (HashMap!4387 (underlying!9192 Cell!17735) (hashF!6429 Hashable!4397) (_size!9006 (_ BitVec 32)) (defaultValue!4558 Int)) )
))
(declare-datatypes ((List!47989 0))(
  ( (Nil!47865) (Cons!47865 (h!53285 C!26196) (t!354596 List!47989)) )
))
(declare-datatypes ((IArray!28941 0))(
  ( (IArray!28942 (innerList!14528 List!47989)) )
))
(declare-datatypes ((Conc!14440 0))(
  ( (Node!14440 (left!35500 Conc!14440) (right!35830 Conc!14440) (csize!29110 Int) (cheight!14651 Int)) (Leaf!22341 (xs!17746 IArray!28941) (csize!29111 Int)) (Empty!14440) )
))
(declare-datatypes ((BalanceConc!28370 0))(
  ( (BalanceConc!28371 (c!730980 Conc!14440)) )
))
(declare-datatypes ((CacheFindLongestMatch!568 0))(
  ( (CacheFindLongestMatch!569 (cache!4527 MutableMap!4387) (totalInput!4420 BalanceConc!28370)) )
))
(declare-fun thiss!29019 () CacheFindLongestMatch!568)

(declare-fun from!940 () Int)

(declare-fun lt!1518633 () Int)

(declare-fun z!500 () (InoxSet Context!5778))

(declare-fun findLongestMatchInnerZipperFastV2!53 ((InoxSet Context!5778) Int BalanceConc!28370 Int) Int)

(assert (=> b!4296547 (= res!1761028 (= res!14399 (findLongestMatchInnerZipperFastV2!53 z!500 from!940 (totalInput!4420 thiss!29019) lt!1518633)))))

(declare-fun b!4296548 () Bool)

(declare-fun e!2670187 () Bool)

(declare-fun e!2670188 () Bool)

(assert (=> b!4296548 (= e!2670187 e!2670188)))

(declare-fun e!2670185 () Bool)

(declare-fun e!2670184 () Bool)

(declare-fun b!4296549 () Bool)

(declare-fun inv!63426 (BalanceConc!28370) Bool)

(assert (=> b!4296549 (= e!2670185 (and e!2670194 (inv!63426 (totalInput!4420 thiss!29019)) e!2670184))))

(declare-fun setIsEmpty!26797 () Bool)

(declare-fun setRes!26797 () Bool)

(assert (=> setIsEmpty!26797 setRes!26797))

(declare-fun res!1761026 () Bool)

(declare-fun e!2670189 () Bool)

(assert (=> start!412480 (=> (not res!1761026) (not e!2670189))))

(declare-fun localTotalInput!12 () BalanceConc!28370)

(assert (=> start!412480 (= res!1761026 (= localTotalInput!12 (totalInput!4420 thiss!29019)))))

(assert (=> start!412480 e!2670189))

(declare-fun condSetEmpty!26797 () Bool)

(assert (=> start!412480 (= condSetEmpty!26797 (= z!500 ((as const (Array Context!5778 Bool)) false)))))

(assert (=> start!412480 setRes!26797))

(assert (=> start!412480 true))

(declare-fun inv!63427 (CacheFindLongestMatch!568) Bool)

(assert (=> start!412480 (and (inv!63427 thiss!29019) e!2670185)))

(declare-fun e!2670183 () Bool)

(assert (=> start!412480 (and (inv!63426 localTotalInput!12) e!2670183)))

(declare-fun b!4296550 () Bool)

(declare-fun res!1761025 () Bool)

(assert (=> b!4296550 (=> (not res!1761025) (not e!2670189))))

(assert (=> b!4296550 (= res!1761025 (>= from!940 0))))

(declare-fun b!4296551 () Bool)

(declare-fun res!1761030 () Bool)

(assert (=> b!4296551 (=> (not res!1761030) (not e!2670190))))

(get-info :version)

(assert (=> b!4296551 (= res!1761030 ((_ is HashMap!4387) (cache!4527 thiss!29019)))))

(declare-fun e!2670193 () Bool)

(declare-fun e!2670182 () Bool)

(declare-fun tp!1319631 () Bool)

(declare-fun tp!1319627 () Bool)

(declare-fun array_inv!5123 (array!15996) Bool)

(declare-fun array_inv!5124 (array!15998) Bool)

(assert (=> b!4296552 (= e!2670193 (and tp!1319635 tp!1319627 tp!1319631 (array_inv!5123 (_keys!4781 (v!41799 (underlying!9191 (v!41800 (underlying!9192 (cache!4527 thiss!29019))))))) (array_inv!5124 (_values!4762 (v!41799 (underlying!9191 (v!41800 (underlying!9192 (cache!4527 thiss!29019))))))) e!2670182))))

(declare-fun b!4296553 () Bool)

(declare-fun lt!1518632 () MutLongMap!4481)

(assert (=> b!4296553 (= e!2670191 (and e!2670187 ((_ is LongMap!4481) lt!1518632)))))

(assert (=> b!4296553 (= lt!1518632 (v!41800 (underlying!9192 (cache!4527 thiss!29019))))))

(declare-fun b!4296554 () Bool)

(assert (=> b!4296554 (= e!2670189 e!2670190)))

(declare-fun res!1761029 () Bool)

(assert (=> b!4296554 (=> (not res!1761029) (not e!2670190))))

(assert (=> b!4296554 (= res!1761029 (<= from!940 lt!1518633))))

(declare-fun size!35173 (BalanceConc!28370) Int)

(assert (=> b!4296554 (= lt!1518633 (size!35173 (totalInput!4420 thiss!29019)))))

(declare-fun b!4296555 () Bool)

(declare-fun valid!3457 (MutableMap!4387) Bool)

(assert (=> b!4296555 (= e!2670190 (not (valid!3457 (cache!4527 thiss!29019))))))

(declare-fun b!4296556 () Bool)

(declare-fun tp!1319629 () Bool)

(declare-fun mapRes!20139 () Bool)

(assert (=> b!4296556 (= e!2670182 (and tp!1319629 mapRes!20139))))

(declare-fun condMapEmpty!20139 () Bool)

(declare-fun mapDefault!20139 () List!47988)

(assert (=> b!4296556 (= condMapEmpty!20139 (= (arr!7148 (_values!4762 (v!41799 (underlying!9191 (v!41800 (underlying!9192 (cache!4527 thiss!29019))))))) ((as const (Array (_ BitVec 32) List!47988)) mapDefault!20139)))))

(declare-fun mapIsEmpty!20139 () Bool)

(assert (=> mapIsEmpty!20139 mapRes!20139))

(declare-fun setElem!26797 () Context!5778)

(declare-fun e!2670192 () Bool)

(declare-fun setNonEmpty!26797 () Bool)

(declare-fun tp!1319628 () Bool)

(declare-fun inv!63428 (Context!5778) Bool)

(assert (=> setNonEmpty!26797 (= setRes!26797 (and tp!1319628 (inv!63428 setElem!26797) e!2670192))))

(declare-fun setRest!26797 () (InoxSet Context!5778))

(assert (=> setNonEmpty!26797 (= z!500 ((_ map or) (store ((as const (Array Context!5778 Bool)) false) setElem!26797 true) setRest!26797))))

(declare-fun b!4296557 () Bool)

(declare-fun tp!1319633 () Bool)

(assert (=> b!4296557 (= e!2670192 tp!1319633)))

(declare-fun mapNonEmpty!20139 () Bool)

(declare-fun tp!1319625 () Bool)

(declare-fun tp!1319632 () Bool)

(assert (=> mapNonEmpty!20139 (= mapRes!20139 (and tp!1319625 tp!1319632))))

(declare-fun mapKey!20139 () (_ BitVec 32))

(declare-fun mapValue!20139 () List!47988)

(declare-fun mapRest!20139 () (Array (_ BitVec 32) List!47988))

(assert (=> mapNonEmpty!20139 (= (arr!7148 (_values!4762 (v!41799 (underlying!9191 (v!41800 (underlying!9192 (cache!4527 thiss!29019))))))) (store mapRest!20139 mapKey!20139 mapValue!20139))))

(declare-fun b!4296558 () Bool)

(assert (=> b!4296558 (= e!2670188 e!2670193)))

(declare-fun b!4296559 () Bool)

(declare-fun res!1761027 () Bool)

(assert (=> b!4296559 (=> (not res!1761027) (not e!2670189))))

(declare-fun validCacheMapFindLongestMatch!92 (MutableMap!4387 BalanceConc!28370) Bool)

(assert (=> b!4296559 (= res!1761027 (validCacheMapFindLongestMatch!92 (cache!4527 thiss!29019) (totalInput!4420 thiss!29019)))))

(declare-fun b!4296560 () Bool)

(declare-fun tp!1319626 () Bool)

(declare-fun inv!63429 (Conc!14440) Bool)

(assert (=> b!4296560 (= e!2670184 (and (inv!63429 (c!730980 (totalInput!4420 thiss!29019))) tp!1319626))))

(declare-fun b!4296561 () Bool)

(declare-fun tp!1319634 () Bool)

(assert (=> b!4296561 (= e!2670183 (and (inv!63429 (c!730980 localTotalInput!12)) tp!1319634))))

(assert (= (and start!412480 res!1761026) b!4296559))

(assert (= (and b!4296559 res!1761027) b!4296550))

(assert (= (and b!4296550 res!1761025) b!4296554))

(assert (= (and b!4296554 res!1761029) b!4296547))

(assert (= (and b!4296547 res!1761028) b!4296551))

(assert (= (and b!4296551 res!1761030) b!4296555))

(assert (= (and start!412480 condSetEmpty!26797) setIsEmpty!26797))

(assert (= (and start!412480 (not condSetEmpty!26797)) setNonEmpty!26797))

(assert (= setNonEmpty!26797 b!4296557))

(assert (= (and b!4296556 condMapEmpty!20139) mapIsEmpty!20139))

(assert (= (and b!4296556 (not condMapEmpty!20139)) mapNonEmpty!20139))

(assert (= b!4296552 b!4296556))

(assert (= b!4296558 b!4296552))

(assert (= b!4296548 b!4296558))

(assert (= (and b!4296553 ((_ is LongMap!4481) (v!41800 (underlying!9192 (cache!4527 thiss!29019))))) b!4296548))

(assert (= b!4296546 b!4296553))

(assert (= (and b!4296549 ((_ is HashMap!4387) (cache!4527 thiss!29019))) b!4296546))

(assert (= b!4296549 b!4296560))

(assert (= start!412480 b!4296549))

(assert (= start!412480 b!4296561))

(declare-fun m!4888899 () Bool)

(assert (=> b!4296559 m!4888899))

(declare-fun m!4888901 () Bool)

(assert (=> b!4296555 m!4888901))

(declare-fun m!4888903 () Bool)

(assert (=> b!4296552 m!4888903))

(declare-fun m!4888905 () Bool)

(assert (=> b!4296552 m!4888905))

(declare-fun m!4888907 () Bool)

(assert (=> b!4296549 m!4888907))

(declare-fun m!4888909 () Bool)

(assert (=> b!4296554 m!4888909))

(declare-fun m!4888911 () Bool)

(assert (=> setNonEmpty!26797 m!4888911))

(declare-fun m!4888913 () Bool)

(assert (=> mapNonEmpty!20139 m!4888913))

(declare-fun m!4888915 () Bool)

(assert (=> b!4296561 m!4888915))

(declare-fun m!4888917 () Bool)

(assert (=> start!412480 m!4888917))

(declare-fun m!4888919 () Bool)

(assert (=> start!412480 m!4888919))

(declare-fun m!4888921 () Bool)

(assert (=> b!4296547 m!4888921))

(declare-fun m!4888923 () Bool)

(assert (=> b!4296560 m!4888923))

(check-sat (not start!412480) (not b!4296557) b_and!339017 (not b!4296554) b_and!339015 (not b!4296552) (not mapNonEmpty!20139) (not b!4296556) (not b_next!128503) (not b!4296561) (not b!4296559) (not b!4296549) (not b!4296560) (not setNonEmpty!26797) (not b!4296547) (not b!4296555) (not b_next!128505))
(check-sat b_and!339017 b_and!339015 (not b_next!128505) (not b_next!128503))
(get-model)

(declare-fun d!1266197 () Bool)

(declare-fun lt!1518636 () Int)

(declare-fun size!35174 (List!47989) Int)

(declare-fun list!17370 (BalanceConc!28370) List!47989)

(assert (=> d!1266197 (= lt!1518636 (size!35174 (list!17370 (totalInput!4420 thiss!29019))))))

(declare-fun size!35175 (Conc!14440) Int)

(assert (=> d!1266197 (= lt!1518636 (size!35175 (c!730980 (totalInput!4420 thiss!29019))))))

(assert (=> d!1266197 (= (size!35173 (totalInput!4420 thiss!29019)) lt!1518636)))

(declare-fun bs!603815 () Bool)

(assert (= bs!603815 d!1266197))

(declare-fun m!4888925 () Bool)

(assert (=> bs!603815 m!4888925))

(assert (=> bs!603815 m!4888925))

(declare-fun m!4888927 () Bool)

(assert (=> bs!603815 m!4888927))

(declare-fun m!4888929 () Bool)

(assert (=> bs!603815 m!4888929))

(assert (=> b!4296554 d!1266197))

(declare-fun d!1266199 () Bool)

(declare-fun res!1761033 () Bool)

(declare-fun e!2670197 () Bool)

(assert (=> d!1266199 (=> (not res!1761033) (not e!2670197))))

(assert (=> d!1266199 (= res!1761033 ((_ is HashMap!4387) (cache!4527 thiss!29019)))))

(assert (=> d!1266199 (= (inv!63427 thiss!29019) e!2670197)))

(declare-fun b!4296564 () Bool)

(assert (=> b!4296564 (= e!2670197 (validCacheMapFindLongestMatch!92 (cache!4527 thiss!29019) (totalInput!4420 thiss!29019)))))

(assert (= (and d!1266199 res!1761033) b!4296564))

(assert (=> b!4296564 m!4888899))

(assert (=> start!412480 d!1266199))

(declare-fun d!1266201 () Bool)

(declare-fun isBalanced!3893 (Conc!14440) Bool)

(assert (=> d!1266201 (= (inv!63426 localTotalInput!12) (isBalanced!3893 (c!730980 localTotalInput!12)))))

(declare-fun bs!603816 () Bool)

(assert (= bs!603816 d!1266201))

(declare-fun m!4888931 () Bool)

(assert (=> bs!603816 m!4888931))

(assert (=> start!412480 d!1266201))

(declare-fun d!1266203 () Bool)

(declare-fun res!1761038 () Bool)

(declare-fun e!2670200 () Bool)

(assert (=> d!1266203 (=> (not res!1761038) (not e!2670200))))

(declare-fun valid!3458 (MutLongMap!4481) Bool)

(assert (=> d!1266203 (= res!1761038 (valid!3458 (v!41800 (underlying!9192 (cache!4527 thiss!29019)))))))

(assert (=> d!1266203 (= (valid!3457 (cache!4527 thiss!29019)) e!2670200)))

(declare-fun b!4296569 () Bool)

(declare-fun res!1761039 () Bool)

(assert (=> b!4296569 (=> (not res!1761039) (not e!2670200))))

(declare-fun lambda!131744 () Int)

(declare-datatypes ((tuple2!45664 0))(
  ( (tuple2!45665 (_1!26111 (_ BitVec 64)) (_2!26111 List!47988)) )
))
(declare-datatypes ((List!47990 0))(
  ( (Nil!47866) (Cons!47866 (h!53286 tuple2!45664) (t!354597 List!47990)) )
))
(declare-fun forall!8578 (List!47990 Int) Bool)

(declare-datatypes ((ListLongMap!773 0))(
  ( (ListLongMap!774 (toList!2143 List!47990)) )
))
(declare-fun map!9829 (MutLongMap!4481) ListLongMap!773)

(assert (=> b!4296569 (= res!1761039 (forall!8578 (toList!2143 (map!9829 (v!41800 (underlying!9192 (cache!4527 thiss!29019))))) lambda!131744))))

(declare-fun b!4296570 () Bool)

(declare-fun allKeysSameHashInMap!255 (ListLongMap!773 Hashable!4397) Bool)

(assert (=> b!4296570 (= e!2670200 (allKeysSameHashInMap!255 (map!9829 (v!41800 (underlying!9192 (cache!4527 thiss!29019)))) (hashF!6429 (cache!4527 thiss!29019))))))

(assert (= (and d!1266203 res!1761038) b!4296569))

(assert (= (and b!4296569 res!1761039) b!4296570))

(declare-fun m!4888933 () Bool)

(assert (=> d!1266203 m!4888933))

(declare-fun m!4888935 () Bool)

(assert (=> b!4296569 m!4888935))

(declare-fun m!4888937 () Bool)

(assert (=> b!4296569 m!4888937))

(assert (=> b!4296570 m!4888935))

(assert (=> b!4296570 m!4888935))

(declare-fun m!4888939 () Bool)

(assert (=> b!4296570 m!4888939))

(assert (=> b!4296555 d!1266203))

(declare-fun b!4296576 () Bool)

(assert (=> b!4296576 true))

(declare-fun d!1266205 () Bool)

(declare-fun res!1761044 () Bool)

(declare-fun e!2670203 () Bool)

(assert (=> d!1266205 (=> (not res!1761044) (not e!2670203))))

(assert (=> d!1266205 (= res!1761044 (valid!3457 (cache!4527 thiss!29019)))))

(assert (=> d!1266205 (= (validCacheMapFindLongestMatch!92 (cache!4527 thiss!29019) (totalInput!4420 thiss!29019)) e!2670203)))

(declare-fun b!4296575 () Bool)

(declare-fun res!1761045 () Bool)

(assert (=> b!4296575 (=> (not res!1761045) (not e!2670203))))

(declare-fun invariantList!521 (List!47988) Bool)

(declare-datatypes ((ListMap!1407 0))(
  ( (ListMap!1408 (toList!2144 List!47988)) )
))
(declare-fun map!9830 (MutableMap!4387) ListMap!1407)

(assert (=> b!4296575 (= res!1761045 (invariantList!521 (toList!2144 (map!9830 (cache!4527 thiss!29019)))))))

(declare-fun lambda!131747 () Int)

(declare-fun forall!8579 (List!47988 Int) Bool)

(assert (=> b!4296576 (= e!2670203 (forall!8579 (toList!2144 (map!9830 (cache!4527 thiss!29019))) lambda!131747))))

(assert (= (and d!1266205 res!1761044) b!4296575))

(assert (= (and b!4296575 res!1761045) b!4296576))

(assert (=> d!1266205 m!4888901))

(declare-fun m!4888942 () Bool)

(assert (=> b!4296575 m!4888942))

(declare-fun m!4888944 () Bool)

(assert (=> b!4296575 m!4888944))

(assert (=> b!4296576 m!4888942))

(declare-fun m!4888946 () Bool)

(assert (=> b!4296576 m!4888946))

(assert (=> b!4296559 d!1266205))

(declare-fun b!4296595 () Bool)

(declare-fun e!2670217 () Int)

(assert (=> b!4296595 (= e!2670217 1)))

(declare-fun b!4296596 () Bool)

(declare-fun e!2670218 () Bool)

(assert (=> b!4296596 (= e!2670218 (<= from!940 (size!35173 (totalInput!4420 thiss!29019))))))

(declare-fun b!4296597 () Bool)

(declare-fun e!2670214 () Int)

(declare-fun lt!1518643 () Int)

(assert (=> b!4296597 (= e!2670214 (+ 1 lt!1518643))))

(declare-fun b!4296598 () Bool)

(declare-fun e!2670215 () Int)

(assert (=> b!4296598 (= e!2670215 0)))

(declare-fun b!4296599 () Bool)

(declare-fun c!730988 () Bool)

(declare-fun lt!1518644 () (InoxSet Context!5778))

(declare-fun nullableZipper!780 ((InoxSet Context!5778)) Bool)

(assert (=> b!4296599 (= c!730988 (nullableZipper!780 lt!1518644))))

(assert (=> b!4296599 (= e!2670214 e!2670217)))

(declare-fun b!4296600 () Bool)

(assert (=> b!4296600 (= e!2670215 e!2670214)))

(declare-fun derivationStepZipper!557 ((InoxSet Context!5778) C!26196) (InoxSet Context!5778))

(declare-fun apply!10859 (BalanceConc!28370 Int) C!26196)

(assert (=> b!4296600 (= lt!1518644 (derivationStepZipper!557 z!500 (apply!10859 (totalInput!4420 thiss!29019) from!940)))))

(assert (=> b!4296600 (= lt!1518643 (findLongestMatchInnerZipperFastV2!53 lt!1518644 (+ from!940 1) (totalInput!4420 thiss!29019) lt!1518633))))

(declare-fun c!730987 () Bool)

(assert (=> b!4296600 (= c!730987 (> lt!1518643 0))))

(declare-fun d!1266207 () Bool)

(declare-fun lt!1518645 () Int)

(assert (=> d!1266207 (and (>= lt!1518645 0) (<= lt!1518645 (- lt!1518633 from!940)))))

(assert (=> d!1266207 (= lt!1518645 e!2670215)))

(declare-fun c!730989 () Bool)

(declare-fun e!2670216 () Bool)

(assert (=> d!1266207 (= c!730989 e!2670216)))

(declare-fun res!1761051 () Bool)

(assert (=> d!1266207 (=> res!1761051 e!2670216)))

(assert (=> d!1266207 (= res!1761051 (= from!940 lt!1518633))))

(assert (=> d!1266207 e!2670218))

(declare-fun res!1761050 () Bool)

(assert (=> d!1266207 (=> (not res!1761050) (not e!2670218))))

(assert (=> d!1266207 (= res!1761050 (>= from!940 0))))

(assert (=> d!1266207 (= (findLongestMatchInnerZipperFastV2!53 z!500 from!940 (totalInput!4420 thiss!29019) lt!1518633) lt!1518645)))

(declare-fun b!4296601 () Bool)

(assert (=> b!4296601 (= e!2670217 0)))

(declare-fun b!4296602 () Bool)

(declare-fun lostCauseZipper!660 ((InoxSet Context!5778)) Bool)

(assert (=> b!4296602 (= e!2670216 (lostCauseZipper!660 z!500))))

(assert (= (and d!1266207 res!1761050) b!4296596))

(assert (= (and d!1266207 (not res!1761051)) b!4296602))

(assert (= (and d!1266207 c!730989) b!4296598))

(assert (= (and d!1266207 (not c!730989)) b!4296600))

(assert (= (and b!4296600 c!730987) b!4296597))

(assert (= (and b!4296600 (not c!730987)) b!4296599))

(assert (= (and b!4296599 c!730988) b!4296595))

(assert (= (and b!4296599 (not c!730988)) b!4296601))

(assert (=> b!4296596 m!4888909))

(declare-fun m!4888948 () Bool)

(assert (=> b!4296599 m!4888948))

(declare-fun m!4888950 () Bool)

(assert (=> b!4296600 m!4888950))

(assert (=> b!4296600 m!4888950))

(declare-fun m!4888952 () Bool)

(assert (=> b!4296600 m!4888952))

(declare-fun m!4888954 () Bool)

(assert (=> b!4296600 m!4888954))

(declare-fun m!4888956 () Bool)

(assert (=> b!4296602 m!4888956))

(assert (=> b!4296547 d!1266207))

(declare-fun d!1266209 () Bool)

(assert (=> d!1266209 (= (array_inv!5123 (_keys!4781 (v!41799 (underlying!9191 (v!41800 (underlying!9192 (cache!4527 thiss!29019))))))) (bvsge (size!35171 (_keys!4781 (v!41799 (underlying!9191 (v!41800 (underlying!9192 (cache!4527 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4296552 d!1266209))

(declare-fun d!1266211 () Bool)

(assert (=> d!1266211 (= (array_inv!5124 (_values!4762 (v!41799 (underlying!9191 (v!41800 (underlying!9192 (cache!4527 thiss!29019))))))) (bvsge (size!35172 (_values!4762 (v!41799 (underlying!9191 (v!41800 (underlying!9192 (cache!4527 thiss!29019))))))) #b00000000000000000000000000000000))))

(assert (=> b!4296552 d!1266211))

(declare-fun d!1266213 () Bool)

(declare-fun c!730992 () Bool)

(assert (=> d!1266213 (= c!730992 ((_ is Node!14440) (c!730980 (totalInput!4420 thiss!29019))))))

(declare-fun e!2670223 () Bool)

(assert (=> d!1266213 (= (inv!63429 (c!730980 (totalInput!4420 thiss!29019))) e!2670223)))

(declare-fun b!4296609 () Bool)

(declare-fun inv!63430 (Conc!14440) Bool)

(assert (=> b!4296609 (= e!2670223 (inv!63430 (c!730980 (totalInput!4420 thiss!29019))))))

(declare-fun b!4296610 () Bool)

(declare-fun e!2670224 () Bool)

(assert (=> b!4296610 (= e!2670223 e!2670224)))

(declare-fun res!1761054 () Bool)

(assert (=> b!4296610 (= res!1761054 (not ((_ is Leaf!22341) (c!730980 (totalInput!4420 thiss!29019)))))))

(assert (=> b!4296610 (=> res!1761054 e!2670224)))

(declare-fun b!4296611 () Bool)

(declare-fun inv!63431 (Conc!14440) Bool)

(assert (=> b!4296611 (= e!2670224 (inv!63431 (c!730980 (totalInput!4420 thiss!29019))))))

(assert (= (and d!1266213 c!730992) b!4296609))

(assert (= (and d!1266213 (not c!730992)) b!4296610))

(assert (= (and b!4296610 (not res!1761054)) b!4296611))

(declare-fun m!4888958 () Bool)

(assert (=> b!4296609 m!4888958))

(declare-fun m!4888960 () Bool)

(assert (=> b!4296611 m!4888960))

(assert (=> b!4296560 d!1266213))

(declare-fun d!1266215 () Bool)

(declare-fun lambda!131750 () Int)

(declare-fun forall!8580 (List!47987 Int) Bool)

(assert (=> d!1266215 (= (inv!63428 setElem!26797) (forall!8580 (exprs!3389 setElem!26797) lambda!131750))))

(declare-fun bs!603817 () Bool)

(assert (= bs!603817 d!1266215))

(declare-fun m!4888962 () Bool)

(assert (=> bs!603817 m!4888962))

(assert (=> setNonEmpty!26797 d!1266215))

(declare-fun d!1266217 () Bool)

(declare-fun c!730993 () Bool)

(assert (=> d!1266217 (= c!730993 ((_ is Node!14440) (c!730980 localTotalInput!12)))))

(declare-fun e!2670225 () Bool)

(assert (=> d!1266217 (= (inv!63429 (c!730980 localTotalInput!12)) e!2670225)))

(declare-fun b!4296612 () Bool)

(assert (=> b!4296612 (= e!2670225 (inv!63430 (c!730980 localTotalInput!12)))))

(declare-fun b!4296613 () Bool)

(declare-fun e!2670226 () Bool)

(assert (=> b!4296613 (= e!2670225 e!2670226)))

(declare-fun res!1761055 () Bool)

(assert (=> b!4296613 (= res!1761055 (not ((_ is Leaf!22341) (c!730980 localTotalInput!12))))))

(assert (=> b!4296613 (=> res!1761055 e!2670226)))

(declare-fun b!4296614 () Bool)

(assert (=> b!4296614 (= e!2670226 (inv!63431 (c!730980 localTotalInput!12)))))

(assert (= (and d!1266217 c!730993) b!4296612))

(assert (= (and d!1266217 (not c!730993)) b!4296613))

(assert (= (and b!4296613 (not res!1761055)) b!4296614))

(declare-fun m!4888964 () Bool)

(assert (=> b!4296612 m!4888964))

(declare-fun m!4888966 () Bool)

(assert (=> b!4296614 m!4888966))

(assert (=> b!4296561 d!1266217))

(declare-fun d!1266219 () Bool)

(assert (=> d!1266219 (= (inv!63426 (totalInput!4420 thiss!29019)) (isBalanced!3893 (c!730980 (totalInput!4420 thiss!29019))))))

(declare-fun bs!603818 () Bool)

(assert (= bs!603818 d!1266219))

(declare-fun m!4888968 () Bool)

(assert (=> bs!603818 m!4888968))

(assert (=> b!4296549 d!1266219))

(declare-fun b!4296619 () Bool)

(declare-fun e!2670229 () Bool)

(declare-fun tp!1319640 () Bool)

(declare-fun tp!1319641 () Bool)

(assert (=> b!4296619 (= e!2670229 (and tp!1319640 tp!1319641))))

(assert (=> b!4296557 (= tp!1319633 e!2670229)))

(assert (= (and b!4296557 ((_ is Cons!47863) (exprs!3389 setElem!26797))) b!4296619))

(declare-fun mapIsEmpty!20142 () Bool)

(declare-fun mapRes!20142 () Bool)

(assert (=> mapIsEmpty!20142 mapRes!20142))

(declare-fun condMapEmpty!20142 () Bool)

(declare-fun mapDefault!20142 () List!47988)

(assert (=> mapNonEmpty!20139 (= condMapEmpty!20142 (= mapRest!20139 ((as const (Array (_ BitVec 32) List!47988)) mapDefault!20142)))))

(declare-fun e!2670238 () Bool)

(assert (=> mapNonEmpty!20139 (= tp!1319625 (and e!2670238 mapRes!20142))))

(declare-fun setRes!26803 () Bool)

(declare-fun e!2670241 () Bool)

(declare-fun setElem!26803 () Context!5778)

(declare-fun tp!1319659 () Bool)

(declare-fun setNonEmpty!26802 () Bool)

(assert (=> setNonEmpty!26802 (= setRes!26803 (and tp!1319659 (inv!63428 setElem!26803) e!2670241))))

(declare-fun setRest!26803 () (InoxSet Context!5778))

(assert (=> setNonEmpty!26802 (= (_1!26109 (_1!26110 (h!53284 mapDefault!20142))) ((_ map or) (store ((as const (Array Context!5778 Bool)) false) setElem!26803 true) setRest!26803))))

(declare-fun b!4296630 () Bool)

(declare-fun tp!1319657 () Bool)

(assert (=> b!4296630 (= e!2670241 tp!1319657)))

(declare-fun mapNonEmpty!20142 () Bool)

(declare-fun tp!1319662 () Bool)

(declare-fun e!2670239 () Bool)

(assert (=> mapNonEmpty!20142 (= mapRes!20142 (and tp!1319662 e!2670239))))

(declare-fun mapRest!20142 () (Array (_ BitVec 32) List!47988))

(declare-fun mapValue!20142 () List!47988)

(declare-fun mapKey!20142 () (_ BitVec 32))

(assert (=> mapNonEmpty!20142 (= mapRest!20139 (store mapRest!20142 mapKey!20142 mapValue!20142))))

(declare-fun b!4296631 () Bool)

(declare-fun e!2670240 () Bool)

(declare-fun tp!1319656 () Bool)

(assert (=> b!4296631 (= e!2670240 tp!1319656)))

(declare-fun b!4296632 () Bool)

(declare-fun tp!1319661 () Bool)

(assert (=> b!4296632 (= e!2670238 (and setRes!26803 tp!1319661))))

(declare-fun condSetEmpty!26802 () Bool)

(assert (=> b!4296632 (= condSetEmpty!26802 (= (_1!26109 (_1!26110 (h!53284 mapDefault!20142))) ((as const (Array Context!5778 Bool)) false)))))

(declare-fun tp!1319658 () Bool)

(declare-fun setElem!26802 () Context!5778)

(declare-fun setRes!26802 () Bool)

(declare-fun setNonEmpty!26803 () Bool)

(assert (=> setNonEmpty!26803 (= setRes!26802 (and tp!1319658 (inv!63428 setElem!26802) e!2670240))))

(declare-fun setRest!26802 () (InoxSet Context!5778))

(assert (=> setNonEmpty!26803 (= (_1!26109 (_1!26110 (h!53284 mapValue!20142))) ((_ map or) (store ((as const (Array Context!5778 Bool)) false) setElem!26802 true) setRest!26802))))

(declare-fun setIsEmpty!26802 () Bool)

(assert (=> setIsEmpty!26802 setRes!26803))

(declare-fun b!4296633 () Bool)

(declare-fun tp!1319660 () Bool)

(assert (=> b!4296633 (= e!2670239 (and setRes!26802 tp!1319660))))

(declare-fun condSetEmpty!26803 () Bool)

(assert (=> b!4296633 (= condSetEmpty!26803 (= (_1!26109 (_1!26110 (h!53284 mapValue!20142))) ((as const (Array Context!5778 Bool)) false)))))

(declare-fun setIsEmpty!26803 () Bool)

(assert (=> setIsEmpty!26803 setRes!26802))

(assert (= (and mapNonEmpty!20139 condMapEmpty!20142) mapIsEmpty!20142))

(assert (= (and mapNonEmpty!20139 (not condMapEmpty!20142)) mapNonEmpty!20142))

(assert (= (and b!4296633 condSetEmpty!26803) setIsEmpty!26803))

(assert (= (and b!4296633 (not condSetEmpty!26803)) setNonEmpty!26803))

(assert (= setNonEmpty!26803 b!4296631))

(assert (= (and mapNonEmpty!20142 ((_ is Cons!47864) mapValue!20142)) b!4296633))

(assert (= (and b!4296632 condSetEmpty!26802) setIsEmpty!26802))

(assert (= (and b!4296632 (not condSetEmpty!26802)) setNonEmpty!26802))

(assert (= setNonEmpty!26802 b!4296630))

(assert (= (and mapNonEmpty!20139 ((_ is Cons!47864) mapDefault!20142)) b!4296632))

(declare-fun m!4888970 () Bool)

(assert (=> setNonEmpty!26802 m!4888970))

(declare-fun m!4888972 () Bool)

(assert (=> mapNonEmpty!20142 m!4888972))

(declare-fun m!4888974 () Bool)

(assert (=> setNonEmpty!26803 m!4888974))

(declare-fun setElem!26806 () Context!5778)

(declare-fun e!2670247 () Bool)

(declare-fun setRes!26806 () Bool)

(declare-fun tp!1319669 () Bool)

(declare-fun setNonEmpty!26806 () Bool)

(assert (=> setNonEmpty!26806 (= setRes!26806 (and tp!1319669 (inv!63428 setElem!26806) e!2670247))))

(declare-fun setRest!26806 () (InoxSet Context!5778))

(assert (=> setNonEmpty!26806 (= (_1!26109 (_1!26110 (h!53284 mapValue!20139))) ((_ map or) (store ((as const (Array Context!5778 Bool)) false) setElem!26806 true) setRest!26806))))

(declare-fun setIsEmpty!26806 () Bool)

(assert (=> setIsEmpty!26806 setRes!26806))

(declare-fun e!2670246 () Bool)

(assert (=> mapNonEmpty!20139 (= tp!1319632 e!2670246)))

(declare-fun b!4296640 () Bool)

(declare-fun tp!1319670 () Bool)

(assert (=> b!4296640 (= e!2670246 (and setRes!26806 tp!1319670))))

(declare-fun condSetEmpty!26806 () Bool)

(assert (=> b!4296640 (= condSetEmpty!26806 (= (_1!26109 (_1!26110 (h!53284 mapValue!20139))) ((as const (Array Context!5778 Bool)) false)))))

(declare-fun b!4296641 () Bool)

(declare-fun tp!1319671 () Bool)

(assert (=> b!4296641 (= e!2670247 tp!1319671)))

(assert (= (and b!4296640 condSetEmpty!26806) setIsEmpty!26806))

(assert (= (and b!4296640 (not condSetEmpty!26806)) setNonEmpty!26806))

(assert (= setNonEmpty!26806 b!4296641))

(assert (= (and mapNonEmpty!20139 ((_ is Cons!47864) mapValue!20139)) b!4296640))

(declare-fun m!4888976 () Bool)

(assert (=> setNonEmpty!26806 m!4888976))

(declare-fun setRes!26807 () Bool)

(declare-fun setElem!26807 () Context!5778)

(declare-fun tp!1319672 () Bool)

(declare-fun setNonEmpty!26807 () Bool)

(declare-fun e!2670249 () Bool)

(assert (=> setNonEmpty!26807 (= setRes!26807 (and tp!1319672 (inv!63428 setElem!26807) e!2670249))))

(declare-fun setRest!26807 () (InoxSet Context!5778))

(assert (=> setNonEmpty!26807 (= (_1!26109 (_1!26110 (h!53284 mapDefault!20139))) ((_ map or) (store ((as const (Array Context!5778 Bool)) false) setElem!26807 true) setRest!26807))))

(declare-fun setIsEmpty!26807 () Bool)

(assert (=> setIsEmpty!26807 setRes!26807))

(declare-fun e!2670248 () Bool)

(assert (=> b!4296556 (= tp!1319629 e!2670248)))

(declare-fun b!4296642 () Bool)

(declare-fun tp!1319673 () Bool)

(assert (=> b!4296642 (= e!2670248 (and setRes!26807 tp!1319673))))

(declare-fun condSetEmpty!26807 () Bool)

(assert (=> b!4296642 (= condSetEmpty!26807 (= (_1!26109 (_1!26110 (h!53284 mapDefault!20139))) ((as const (Array Context!5778 Bool)) false)))))

(declare-fun b!4296643 () Bool)

(declare-fun tp!1319674 () Bool)

(assert (=> b!4296643 (= e!2670249 tp!1319674)))

(assert (= (and b!4296642 condSetEmpty!26807) setIsEmpty!26807))

(assert (= (and b!4296642 (not condSetEmpty!26807)) setNonEmpty!26807))

(assert (= setNonEmpty!26807 b!4296643))

(assert (= (and b!4296556 ((_ is Cons!47864) mapDefault!20139)) b!4296642))

(declare-fun m!4888978 () Bool)

(assert (=> setNonEmpty!26807 m!4888978))

(declare-fun setNonEmpty!26808 () Bool)

(declare-fun setElem!26808 () Context!5778)

(declare-fun tp!1319675 () Bool)

(declare-fun setRes!26808 () Bool)

(declare-fun e!2670251 () Bool)

(assert (=> setNonEmpty!26808 (= setRes!26808 (and tp!1319675 (inv!63428 setElem!26808) e!2670251))))

(declare-fun setRest!26808 () (InoxSet Context!5778))

(assert (=> setNonEmpty!26808 (= (_1!26109 (_1!26110 (h!53284 (zeroValue!4740 (v!41799 (underlying!9191 (v!41800 (underlying!9192 (cache!4527 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5778 Bool)) false) setElem!26808 true) setRest!26808))))

(declare-fun setIsEmpty!26808 () Bool)

(assert (=> setIsEmpty!26808 setRes!26808))

(declare-fun e!2670250 () Bool)

(assert (=> b!4296552 (= tp!1319627 e!2670250)))

(declare-fun b!4296644 () Bool)

(declare-fun tp!1319676 () Bool)

(assert (=> b!4296644 (= e!2670250 (and setRes!26808 tp!1319676))))

(declare-fun condSetEmpty!26808 () Bool)

(assert (=> b!4296644 (= condSetEmpty!26808 (= (_1!26109 (_1!26110 (h!53284 (zeroValue!4740 (v!41799 (underlying!9191 (v!41800 (underlying!9192 (cache!4527 thiss!29019))))))))) ((as const (Array Context!5778 Bool)) false)))))

(declare-fun b!4296645 () Bool)

(declare-fun tp!1319677 () Bool)

(assert (=> b!4296645 (= e!2670251 tp!1319677)))

(assert (= (and b!4296644 condSetEmpty!26808) setIsEmpty!26808))

(assert (= (and b!4296644 (not condSetEmpty!26808)) setNonEmpty!26808))

(assert (= setNonEmpty!26808 b!4296645))

(assert (= (and b!4296552 ((_ is Cons!47864) (zeroValue!4740 (v!41799 (underlying!9191 (v!41800 (underlying!9192 (cache!4527 thiss!29019)))))))) b!4296644))

(declare-fun m!4888980 () Bool)

(assert (=> setNonEmpty!26808 m!4888980))

(declare-fun tp!1319678 () Bool)

(declare-fun setElem!26809 () Context!5778)

(declare-fun e!2670253 () Bool)

(declare-fun setRes!26809 () Bool)

(declare-fun setNonEmpty!26809 () Bool)

(assert (=> setNonEmpty!26809 (= setRes!26809 (and tp!1319678 (inv!63428 setElem!26809) e!2670253))))

(declare-fun setRest!26809 () (InoxSet Context!5778))

(assert (=> setNonEmpty!26809 (= (_1!26109 (_1!26110 (h!53284 (minValue!4740 (v!41799 (underlying!9191 (v!41800 (underlying!9192 (cache!4527 thiss!29019))))))))) ((_ map or) (store ((as const (Array Context!5778 Bool)) false) setElem!26809 true) setRest!26809))))

(declare-fun setIsEmpty!26809 () Bool)

(assert (=> setIsEmpty!26809 setRes!26809))

(declare-fun e!2670252 () Bool)

(assert (=> b!4296552 (= tp!1319631 e!2670252)))

(declare-fun b!4296646 () Bool)

(declare-fun tp!1319679 () Bool)

(assert (=> b!4296646 (= e!2670252 (and setRes!26809 tp!1319679))))

(declare-fun condSetEmpty!26809 () Bool)

(assert (=> b!4296646 (= condSetEmpty!26809 (= (_1!26109 (_1!26110 (h!53284 (minValue!4740 (v!41799 (underlying!9191 (v!41800 (underlying!9192 (cache!4527 thiss!29019))))))))) ((as const (Array Context!5778 Bool)) false)))))

(declare-fun b!4296647 () Bool)

(declare-fun tp!1319680 () Bool)

(assert (=> b!4296647 (= e!2670253 tp!1319680)))

(assert (= (and b!4296646 condSetEmpty!26809) setIsEmpty!26809))

(assert (= (and b!4296646 (not condSetEmpty!26809)) setNonEmpty!26809))

(assert (= setNonEmpty!26809 b!4296647))

(assert (= (and b!4296552 ((_ is Cons!47864) (minValue!4740 (v!41799 (underlying!9191 (v!41800 (underlying!9192 (cache!4527 thiss!29019)))))))) b!4296646))

(declare-fun m!4888982 () Bool)

(assert (=> setNonEmpty!26809 m!4888982))

(declare-fun e!2670258 () Bool)

(declare-fun b!4296656 () Bool)

(declare-fun tp!1319688 () Bool)

(declare-fun tp!1319689 () Bool)

(assert (=> b!4296656 (= e!2670258 (and (inv!63429 (left!35500 (c!730980 (totalInput!4420 thiss!29019)))) tp!1319688 (inv!63429 (right!35830 (c!730980 (totalInput!4420 thiss!29019)))) tp!1319689))))

(declare-fun b!4296658 () Bool)

(declare-fun e!2670259 () Bool)

(declare-fun tp!1319687 () Bool)

(assert (=> b!4296658 (= e!2670259 tp!1319687)))

(declare-fun b!4296657 () Bool)

(declare-fun inv!63432 (IArray!28941) Bool)

(assert (=> b!4296657 (= e!2670258 (and (inv!63432 (xs!17746 (c!730980 (totalInput!4420 thiss!29019)))) e!2670259))))

(assert (=> b!4296560 (= tp!1319626 (and (inv!63429 (c!730980 (totalInput!4420 thiss!29019))) e!2670258))))

(assert (= (and b!4296560 ((_ is Node!14440) (c!730980 (totalInput!4420 thiss!29019)))) b!4296656))

(assert (= b!4296657 b!4296658))

(assert (= (and b!4296560 ((_ is Leaf!22341) (c!730980 (totalInput!4420 thiss!29019)))) b!4296657))

(declare-fun m!4888984 () Bool)

(assert (=> b!4296656 m!4888984))

(declare-fun m!4888986 () Bool)

(assert (=> b!4296656 m!4888986))

(declare-fun m!4888988 () Bool)

(assert (=> b!4296657 m!4888988))

(assert (=> b!4296560 m!4888923))

(declare-fun condSetEmpty!26812 () Bool)

(assert (=> setNonEmpty!26797 (= condSetEmpty!26812 (= setRest!26797 ((as const (Array Context!5778 Bool)) false)))))

(declare-fun setRes!26812 () Bool)

(assert (=> setNonEmpty!26797 (= tp!1319628 setRes!26812)))

(declare-fun setIsEmpty!26812 () Bool)

(assert (=> setIsEmpty!26812 setRes!26812))

(declare-fun setElem!26812 () Context!5778)

(declare-fun tp!1319694 () Bool)

(declare-fun e!2670262 () Bool)

(declare-fun setNonEmpty!26812 () Bool)

(assert (=> setNonEmpty!26812 (= setRes!26812 (and tp!1319694 (inv!63428 setElem!26812) e!2670262))))

(declare-fun setRest!26812 () (InoxSet Context!5778))

(assert (=> setNonEmpty!26812 (= setRest!26797 ((_ map or) (store ((as const (Array Context!5778 Bool)) false) setElem!26812 true) setRest!26812))))

(declare-fun b!4296663 () Bool)

(declare-fun tp!1319695 () Bool)

(assert (=> b!4296663 (= e!2670262 tp!1319695)))

(assert (= (and setNonEmpty!26797 condSetEmpty!26812) setIsEmpty!26812))

(assert (= (and setNonEmpty!26797 (not condSetEmpty!26812)) setNonEmpty!26812))

(assert (= setNonEmpty!26812 b!4296663))

(declare-fun m!4888990 () Bool)

(assert (=> setNonEmpty!26812 m!4888990))

(declare-fun b!4296664 () Bool)

(declare-fun tp!1319698 () Bool)

(declare-fun tp!1319697 () Bool)

(declare-fun e!2670263 () Bool)

(assert (=> b!4296664 (= e!2670263 (and (inv!63429 (left!35500 (c!730980 localTotalInput!12))) tp!1319697 (inv!63429 (right!35830 (c!730980 localTotalInput!12))) tp!1319698))))

(declare-fun b!4296666 () Bool)

(declare-fun e!2670264 () Bool)

(declare-fun tp!1319696 () Bool)

(assert (=> b!4296666 (= e!2670264 tp!1319696)))

(declare-fun b!4296665 () Bool)

(assert (=> b!4296665 (= e!2670263 (and (inv!63432 (xs!17746 (c!730980 localTotalInput!12))) e!2670264))))

(assert (=> b!4296561 (= tp!1319634 (and (inv!63429 (c!730980 localTotalInput!12)) e!2670263))))

(assert (= (and b!4296561 ((_ is Node!14440) (c!730980 localTotalInput!12))) b!4296664))

(assert (= b!4296665 b!4296666))

(assert (= (and b!4296561 ((_ is Leaf!22341) (c!730980 localTotalInput!12))) b!4296665))

(declare-fun m!4888992 () Bool)

(assert (=> b!4296664 m!4888992))

(declare-fun m!4888994 () Bool)

(assert (=> b!4296664 m!4888994))

(declare-fun m!4888996 () Bool)

(assert (=> b!4296665 m!4888996))

(assert (=> b!4296561 m!4888915))

(check-sat (not d!1266203) b_and!339017 (not b!4296596) (not b_next!128503) (not b!4296609) (not b!4296619) (not b!4296561) (not b!4296611) (not b!4296640) (not b!4296569) (not b!4296560) (not d!1266205) (not b!4296570) (not b!4296663) (not setNonEmpty!26808) (not mapNonEmpty!20142) (not b!4296631) (not b!4296600) (not b!4296630) (not b!4296645) (not b!4296633) (not setNonEmpty!26812) (not setNonEmpty!26806) (not b!4296647) (not setNonEmpty!26807) (not b!4296614) (not b!4296644) (not b_next!128505) (not b!4296646) (not b!4296656) (not b!4296657) b_and!339015 (not b!4296599) (not setNonEmpty!26809) (not b!4296664) (not d!1266197) (not d!1266219) (not b!4296576) (not setNonEmpty!26802) (not b!4296575) (not b!4296612) (not b!4296658) (not b!4296641) (not b!4296564) (not d!1266215) (not b!4296643) (not b!4296632) (not b!4296602) (not setNonEmpty!26803) (not b!4296642) (not d!1266201) (not b!4296665) (not b!4296666))
(check-sat b_and!339017 b_and!339015 (not b_next!128505) (not b_next!128503))
