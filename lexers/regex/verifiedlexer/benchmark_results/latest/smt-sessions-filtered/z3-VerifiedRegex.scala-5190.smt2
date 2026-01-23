; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!266640 () Bool)

(assert start!266640)

(declare-fun b!2751041 () Bool)

(declare-fun b_free!77829 () Bool)

(declare-fun b_next!78533 () Bool)

(assert (=> b!2751041 (= b_free!77829 (not b_next!78533))))

(declare-fun tp!868984 () Bool)

(declare-fun b_and!202567 () Bool)

(assert (=> b!2751041 (= tp!868984 b_and!202567)))

(declare-fun b!2751039 () Bool)

(declare-fun b_free!77831 () Bool)

(declare-fun b_next!78535 () Bool)

(assert (=> b!2751039 (= b_free!77831 (not b_next!78535))))

(declare-fun tp!868983 () Bool)

(declare-fun b_and!202569 () Bool)

(assert (=> b!2751039 (= tp!868983 b_and!202569)))

(declare-fun b!2751052 () Bool)

(declare-fun b_free!77833 () Bool)

(declare-fun b_next!78537 () Bool)

(assert (=> b!2751052 (= b_free!77833 (not b_next!78537))))

(declare-fun tp!868990 () Bool)

(declare-fun b_and!202571 () Bool)

(assert (=> b!2751052 (= tp!868990 b_and!202571)))

(declare-fun b!2751045 () Bool)

(declare-fun b_free!77835 () Bool)

(declare-fun b_next!78539 () Bool)

(assert (=> b!2751045 (= b_free!77835 (not b_next!78539))))

(declare-fun tp!868982 () Bool)

(declare-fun b_and!202573 () Bool)

(assert (=> b!2751045 (= tp!868982 b_and!202573)))

(declare-fun b!2751035 () Bool)

(declare-fun e!1734332 () Bool)

(declare-fun e!1734328 () Bool)

(assert (=> b!2751035 (= e!1734332 e!1734328)))

(declare-fun mapNonEmpty!16825 () Bool)

(declare-fun mapRes!16825 () Bool)

(declare-fun tp!868993 () Bool)

(declare-fun tp!868991 () Bool)

(assert (=> mapNonEmpty!16825 (= mapRes!16825 (and tp!868993 tp!868991))))

(declare-datatypes ((C!16248 0))(
  ( (C!16249 (val!10058 Int)) )
))
(declare-datatypes ((Regex!8045 0))(
  ( (ElementMatch!8045 (c!445088 C!16248)) (Concat!13133 (regOne!16602 Regex!8045) (regTwo!16602 Regex!8045)) (EmptyExpr!8045) (Star!8045 (reg!8374 Regex!8045)) (EmptyLang!8045) (Union!8045 (regOne!16603 Regex!8045) (regTwo!16603 Regex!8045)) )
))
(declare-datatypes ((List!31925 0))(
  ( (Nil!31825) (Cons!31825 (h!37245 Regex!8045) (t!228029 List!31925)) )
))
(declare-datatypes ((Context!4526 0))(
  ( (Context!4527 (exprs!2763 List!31925)) )
))
(declare-datatypes ((tuple3!4556 0))(
  ( (tuple3!4557 (_1!18639 Regex!8045) (_2!18639 Context!4526) (_3!2748 C!16248)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!31782 0))(
  ( (tuple2!31783 (_1!18640 tuple3!4556) (_2!18640 (InoxSet Context!4526))) )
))
(declare-datatypes ((List!31926 0))(
  ( (Nil!31826) (Cons!31826 (h!37246 tuple2!31782) (t!228030 List!31926)) )
))
(declare-fun mapValue!16825 () List!31926)

(declare-datatypes ((array!13162 0))(
  ( (array!13163 (arr!5876 (Array (_ BitVec 32) (_ BitVec 64))) (size!24582 (_ BitVec 32))) )
))
(declare-datatypes ((array!13164 0))(
  ( (array!13165 (arr!5877 (Array (_ BitVec 32) List!31926)) (size!24583 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7396 0))(
  ( (LongMapFixedSize!7397 (defaultEntry!4083 Int) (mask!9457 (_ BitVec 32)) (extraKeys!3947 (_ BitVec 32)) (zeroValue!3957 List!31926) (minValue!3957 List!31926) (_size!7439 (_ BitVec 32)) (_keys!3998 array!13162) (_values!3979 array!13164) (_vacant!3759 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14601 0))(
  ( (Cell!14602 (v!33435 LongMapFixedSize!7396)) )
))
(declare-datatypes ((MutLongMap!3698 0))(
  ( (LongMap!3698 (underlying!7599 Cell!14601)) (MutLongMapExt!3697 (__x!20744 Int)) )
))
(declare-datatypes ((Cell!14603 0))(
  ( (Cell!14604 (v!33436 MutLongMap!3698)) )
))
(declare-datatypes ((Hashable!3614 0))(
  ( (HashableExt!3613 (__x!20745 Int)) )
))
(declare-datatypes ((MutableMap!3604 0))(
  ( (MutableMapExt!3603 (__x!20746 Int)) (HashMap!3604 (underlying!7600 Cell!14603) (hashF!5646 Hashable!3614) (_size!7440 (_ BitVec 32)) (defaultValue!3775 Int)) )
))
(declare-datatypes ((CacheDown!2430 0))(
  ( (CacheDown!2431 (cache!3747 MutableMap!3604)) )
))
(declare-fun cacheDown!939 () CacheDown!2430)

(declare-fun mapKey!16826 () (_ BitVec 32))

(declare-fun mapRest!16826 () (Array (_ BitVec 32) List!31926))

(assert (=> mapNonEmpty!16825 (= (arr!5877 (_values!3979 (v!33435 (underlying!7599 (v!33436 (underlying!7600 (cache!3747 cacheDown!939))))))) (store mapRest!16826 mapKey!16826 mapValue!16825))))

(declare-fun tp!868996 () Bool)

(declare-fun setElem!21930 () Context!4526)

(declare-fun setRes!21930 () Bool)

(declare-fun e!1734323 () Bool)

(declare-fun setNonEmpty!21930 () Bool)

(declare-fun inv!43211 (Context!4526) Bool)

(assert (=> setNonEmpty!21930 (= setRes!21930 (and tp!868996 (inv!43211 setElem!21930) e!1734323))))

(declare-fun z!3597 () (InoxSet Context!4526))

(declare-fun setRest!21930 () (InoxSet Context!4526))

(assert (=> setNonEmpty!21930 (= z!3597 ((_ map or) (store ((as const (Array Context!4526 Bool)) false) setElem!21930 true) setRest!21930))))

(declare-fun b!2751036 () Bool)

(declare-fun e!1734330 () Bool)

(declare-fun e!1734338 () Bool)

(assert (=> b!2751036 (= e!1734330 e!1734338)))

(declare-fun b!2751037 () Bool)

(declare-datatypes ((tuple2!31784 0))(
  ( (tuple2!31785 (_1!18641 Context!4526) (_2!18641 C!16248)) )
))
(declare-datatypes ((tuple2!31786 0))(
  ( (tuple2!31787 (_1!18642 tuple2!31784) (_2!18642 (InoxSet Context!4526))) )
))
(declare-datatypes ((List!31927 0))(
  ( (Nil!31827) (Cons!31827 (h!37247 tuple2!31786) (t!228031 List!31927)) )
))
(declare-datatypes ((Hashable!3615 0))(
  ( (HashableExt!3614 (__x!20747 Int)) )
))
(declare-datatypes ((array!13166 0))(
  ( (array!13167 (arr!5878 (Array (_ BitVec 32) List!31927)) (size!24584 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7398 0))(
  ( (LongMapFixedSize!7399 (defaultEntry!4084 Int) (mask!9458 (_ BitVec 32)) (extraKeys!3948 (_ BitVec 32)) (zeroValue!3958 List!31927) (minValue!3958 List!31927) (_size!7441 (_ BitVec 32)) (_keys!3999 array!13162) (_values!3980 array!13166) (_vacant!3760 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14605 0))(
  ( (Cell!14606 (v!33437 LongMapFixedSize!7398)) )
))
(declare-datatypes ((MutLongMap!3699 0))(
  ( (LongMap!3699 (underlying!7601 Cell!14605)) (MutLongMapExt!3698 (__x!20748 Int)) )
))
(declare-datatypes ((Cell!14607 0))(
  ( (Cell!14608 (v!33438 MutLongMap!3699)) )
))
(declare-datatypes ((MutableMap!3605 0))(
  ( (MutableMapExt!3604 (__x!20749 Int)) (HashMap!3605 (underlying!7602 Cell!14607) (hashF!5647 Hashable!3615) (_size!7442 (_ BitVec 32)) (defaultValue!3776 Int)) )
))
(declare-datatypes ((CacheUp!2310 0))(
  ( (CacheUp!2311 (cache!3748 MutableMap!3605)) )
))
(declare-datatypes ((tuple3!4558 0))(
  ( (tuple3!4559 (_1!18643 Int) (_2!18643 CacheUp!2310) (_3!2749 CacheDown!2430)) )
))
(declare-fun lt!972762 () tuple3!4558)

(declare-datatypes ((List!31928 0))(
  ( (Nil!31828) (Cons!31828 (h!37248 C!16248) (t!228032 List!31928)) )
))
(declare-datatypes ((IArray!19859 0))(
  ( (IArray!19860 (innerList!9987 List!31928)) )
))
(declare-datatypes ((Conc!9927 0))(
  ( (Node!9927 (left!24311 Conc!9927) (right!24641 Conc!9927) (csize!20084 Int) (cheight!10138 Int)) (Leaf!15118 (xs!13034 IArray!19859) (csize!20085 Int)) (Empty!9927) )
))
(declare-datatypes ((BalanceConc!19468 0))(
  ( (BalanceConc!19469 (c!445089 Conc!9927)) )
))
(declare-fun input!5495 () BalanceConc!19468)

(declare-fun lt!972755 () List!31928)

(declare-fun e!1734336 () Bool)

(declare-fun lt!972757 () Int)

(declare-fun findLongestMatchInnerZipperFast!3 ((InoxSet Context!4526) List!31928 Int List!31928 BalanceConc!19468 Int) Int)

(assert (=> b!2751037 (= e!1734336 (= (_1!18643 lt!972762) (findLongestMatchInnerZipperFast!3 z!3597 Nil!31828 0 lt!972755 input!5495 lt!972757)))))

(declare-fun b!2751038 () Bool)

(declare-fun e!1734319 () Bool)

(declare-fun e!1734320 () Bool)

(assert (=> b!2751038 (= e!1734319 e!1734320)))

(declare-fun tp!868986 () Bool)

(declare-fun tp!868988 () Bool)

(declare-fun e!1734327 () Bool)

(declare-fun e!1734335 () Bool)

(declare-fun cacheUp!820 () CacheUp!2310)

(declare-fun array_inv!4199 (array!13162) Bool)

(declare-fun array_inv!4200 (array!13166) Bool)

(assert (=> b!2751039 (= e!1734327 (and tp!868983 tp!868986 tp!868988 (array_inv!4199 (_keys!3999 (v!33437 (underlying!7601 (v!33438 (underlying!7602 (cache!3748 cacheUp!820))))))) (array_inv!4200 (_values!3980 (v!33437 (underlying!7601 (v!33438 (underlying!7602 (cache!3748 cacheUp!820))))))) e!1734335))))

(declare-fun lt!972761 () tuple3!4558)

(declare-fun b!2751040 () Bool)

(declare-fun e!1734331 () Bool)

(assert (=> b!2751040 (= e!1734331 (= (_1!18643 lt!972761) (findLongestMatchInnerZipperFast!3 z!3597 Nil!31828 0 lt!972755 input!5495 lt!972757)))))

(declare-fun res!1153491 () Bool)

(declare-fun e!1734333 () Bool)

(assert (=> start!266640 (=> (not res!1153491) (not e!1734333))))

(declare-fun valid!2868 (CacheUp!2310) Bool)

(assert (=> start!266640 (= res!1153491 (valid!2868 cacheUp!820))))

(assert (=> start!266640 e!1734333))

(declare-fun inv!43212 (CacheUp!2310) Bool)

(assert (=> start!266640 (and (inv!43212 cacheUp!820) e!1734332)))

(declare-fun e!1734337 () Bool)

(declare-fun inv!43213 (CacheDown!2430) Bool)

(assert (=> start!266640 (and (inv!43213 cacheDown!939) e!1734337)))

(declare-fun condSetEmpty!21930 () Bool)

(assert (=> start!266640 (= condSetEmpty!21930 (= z!3597 ((as const (Array Context!4526 Bool)) false)))))

(assert (=> start!266640 setRes!21930))

(declare-fun e!1734326 () Bool)

(declare-fun inv!43214 (BalanceConc!19468) Bool)

(assert (=> start!266640 (and (inv!43214 input!5495) e!1734326)))

(declare-fun e!1734325 () Bool)

(declare-fun e!1734329 () Bool)

(assert (=> b!2751041 (= e!1734325 (and e!1734329 tp!868984))))

(declare-fun b!2751042 () Bool)

(declare-fun tp!868987 () Bool)

(declare-fun mapRes!16826 () Bool)

(assert (=> b!2751042 (= e!1734335 (and tp!868987 mapRes!16826))))

(declare-fun condMapEmpty!16825 () Bool)

(declare-fun mapDefault!16826 () List!31927)

(assert (=> b!2751042 (= condMapEmpty!16825 (= (arr!5878 (_values!3980 (v!33437 (underlying!7601 (v!33438 (underlying!7602 (cache!3748 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!31927)) mapDefault!16826)))))

(declare-fun b!2751043 () Bool)

(declare-fun res!1153487 () Bool)

(assert (=> b!2751043 (=> (not res!1153487) (not e!1734331))))

(declare-fun valid!2869 (CacheDown!2430) Bool)

(assert (=> b!2751043 (= res!1153487 (valid!2869 (_3!2749 lt!972761)))))

(declare-fun b!2751044 () Bool)

(assert (=> b!2751044 (= e!1734337 e!1734325)))

(declare-fun e!1734322 () Bool)

(assert (=> b!2751045 (= e!1734328 (and e!1734322 tp!868982))))

(declare-fun b!2751046 () Bool)

(assert (=> b!2751046 (= e!1734338 e!1734327)))

(declare-fun b!2751047 () Bool)

(declare-fun tp!868995 () Bool)

(declare-fun inv!43215 (Conc!9927) Bool)

(assert (=> b!2751047 (= e!1734326 (and (inv!43215 (c!445089 input!5495)) tp!868995))))

(declare-fun mapNonEmpty!16826 () Bool)

(declare-fun tp!868994 () Bool)

(declare-fun tp!868989 () Bool)

(assert (=> mapNonEmpty!16826 (= mapRes!16826 (and tp!868994 tp!868989))))

(declare-fun mapValue!16826 () List!31927)

(declare-fun mapRest!16825 () (Array (_ BitVec 32) List!31927))

(declare-fun mapKey!16825 () (_ BitVec 32))

(assert (=> mapNonEmpty!16826 (= (arr!5878 (_values!3980 (v!33437 (underlying!7601 (v!33438 (underlying!7602 (cache!3748 cacheUp!820))))))) (store mapRest!16825 mapKey!16825 mapValue!16826))))

(declare-fun b!2751048 () Bool)

(declare-fun e!1734318 () Bool)

(declare-fun tp!868997 () Bool)

(assert (=> b!2751048 (= e!1734318 (and tp!868997 mapRes!16825))))

(declare-fun condMapEmpty!16826 () Bool)

(declare-fun mapDefault!16825 () List!31926)

(assert (=> b!2751048 (= condMapEmpty!16826 (= (arr!5877 (_values!3979 (v!33435 (underlying!7599 (v!33436 (underlying!7600 (cache!3747 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!31926)) mapDefault!16825)))))

(declare-fun setIsEmpty!21930 () Bool)

(assert (=> setIsEmpty!21930 setRes!21930))

(declare-fun b!2751049 () Bool)

(declare-fun e!1734324 () Bool)

(assert (=> b!2751049 (= e!1734324 true)))

(declare-fun lt!972759 () Bool)

(assert (=> b!2751049 (= lt!972759 (valid!2869 (_3!2749 lt!972762)))))

(declare-fun b!2751050 () Bool)

(declare-fun e!1734334 () Bool)

(assert (=> b!2751050 (= e!1734320 e!1734334)))

(declare-fun mapIsEmpty!16825 () Bool)

(assert (=> mapIsEmpty!16825 mapRes!16825))

(declare-fun b!2751051 () Bool)

(declare-fun res!1153488 () Bool)

(assert (=> b!2751051 (=> (not res!1153488) (not e!1734336))))

(assert (=> b!2751051 (= res!1153488 (valid!2869 (_3!2749 lt!972762)))))

(declare-fun tp!868998 () Bool)

(declare-fun tp!868985 () Bool)

(declare-fun array_inv!4201 (array!13164) Bool)

(assert (=> b!2751052 (= e!1734334 (and tp!868990 tp!868985 tp!868998 (array_inv!4199 (_keys!3998 (v!33435 (underlying!7599 (v!33436 (underlying!7600 (cache!3747 cacheDown!939))))))) (array_inv!4201 (_values!3979 (v!33435 (underlying!7599 (v!33436 (underlying!7600 (cache!3747 cacheDown!939))))))) e!1734318))))

(declare-fun b!2751053 () Bool)

(declare-fun res!1153489 () Bool)

(assert (=> b!2751053 (=> res!1153489 e!1734324)))

(declare-fun lt!972758 () Bool)

(assert (=> b!2751053 (= res!1153489 lt!972758)))

(declare-fun mapIsEmpty!16826 () Bool)

(assert (=> mapIsEmpty!16826 mapRes!16826))

(declare-fun b!2751054 () Bool)

(declare-fun lt!972756 () MutLongMap!3699)

(get-info :version)

(assert (=> b!2751054 (= e!1734322 (and e!1734330 ((_ is LongMap!3699) lt!972756)))))

(assert (=> b!2751054 (= lt!972756 (v!33438 (underlying!7602 (cache!3748 cacheUp!820))))))

(declare-fun b!2751055 () Bool)

(assert (=> b!2751055 (= e!1734333 (not e!1734324))))

(declare-fun res!1153484 () Bool)

(assert (=> b!2751055 (=> res!1153484 e!1734324)))

(declare-fun ++!7883 (List!31928 List!31928) List!31928)

(assert (=> b!2751055 (= res!1153484 (not (= (++!7883 Nil!31828 lt!972755) lt!972755)))))

(assert (=> b!2751055 e!1734331))

(declare-fun res!1153485 () Bool)

(assert (=> b!2751055 (=> (not res!1153485) (not e!1734331))))

(assert (=> b!2751055 (= res!1153485 (valid!2868 (_2!18643 lt!972761)))))

(declare-fun findLongestMatchInnerZipperFastMem!3 (CacheUp!2310 CacheDown!2430 (InoxSet Context!4526) List!31928 Int List!31928 BalanceConc!19468 Int) tuple3!4558)

(assert (=> b!2751055 (= lt!972761 (findLongestMatchInnerZipperFastMem!3 (_2!18643 lt!972762) (_3!2749 lt!972762) z!3597 Nil!31828 0 lt!972755 input!5495 lt!972757))))

(assert (=> b!2751055 e!1734336))

(declare-fun res!1153486 () Bool)

(assert (=> b!2751055 (=> (not res!1153486) (not e!1734336))))

(assert (=> b!2751055 (= res!1153486 (not lt!972758))))

(assert (=> b!2751055 (= lt!972758 (not (valid!2868 (_2!18643 lt!972762))))))

(assert (=> b!2751055 (= lt!972762 (findLongestMatchInnerZipperFastMem!3 cacheUp!820 cacheDown!939 z!3597 Nil!31828 0 lt!972755 input!5495 lt!972757))))

(declare-fun size!24585 (BalanceConc!19468) Int)

(assert (=> b!2751055 (= lt!972757 (size!24585 input!5495))))

(declare-fun list!12028 (BalanceConc!19468) List!31928)

(assert (=> b!2751055 (= lt!972755 (list!12028 input!5495))))

(declare-fun b!2751056 () Bool)

(declare-fun res!1153490 () Bool)

(assert (=> b!2751056 (=> res!1153490 e!1734324)))

(declare-fun size!24586 (List!31928) Int)

(assert (=> b!2751056 (= res!1153490 (not (= 0 (size!24586 Nil!31828))))))

(declare-fun b!2751057 () Bool)

(declare-fun res!1153483 () Bool)

(assert (=> b!2751057 (=> (not res!1153483) (not e!1734333))))

(assert (=> b!2751057 (= res!1153483 (valid!2869 cacheDown!939))))

(declare-fun b!2751058 () Bool)

(declare-fun lt!972760 () MutLongMap!3698)

(assert (=> b!2751058 (= e!1734329 (and e!1734319 ((_ is LongMap!3698) lt!972760)))))

(assert (=> b!2751058 (= lt!972760 (v!33436 (underlying!7600 (cache!3747 cacheDown!939))))))

(declare-fun b!2751059 () Bool)

(declare-fun tp!868992 () Bool)

(assert (=> b!2751059 (= e!1734323 tp!868992)))

(assert (= (and start!266640 res!1153491) b!2751057))

(assert (= (and b!2751057 res!1153483) b!2751055))

(assert (= (and b!2751055 res!1153486) b!2751051))

(assert (= (and b!2751051 res!1153488) b!2751037))

(assert (= (and b!2751055 res!1153485) b!2751043))

(assert (= (and b!2751043 res!1153487) b!2751040))

(assert (= (and b!2751055 (not res!1153484)) b!2751056))

(assert (= (and b!2751056 (not res!1153490)) b!2751053))

(assert (= (and b!2751053 (not res!1153489)) b!2751049))

(assert (= (and b!2751042 condMapEmpty!16825) mapIsEmpty!16826))

(assert (= (and b!2751042 (not condMapEmpty!16825)) mapNonEmpty!16826))

(assert (= b!2751039 b!2751042))

(assert (= b!2751046 b!2751039))

(assert (= b!2751036 b!2751046))

(assert (= (and b!2751054 ((_ is LongMap!3699) (v!33438 (underlying!7602 (cache!3748 cacheUp!820))))) b!2751036))

(assert (= b!2751045 b!2751054))

(assert (= (and b!2751035 ((_ is HashMap!3605) (cache!3748 cacheUp!820))) b!2751045))

(assert (= start!266640 b!2751035))

(assert (= (and b!2751048 condMapEmpty!16826) mapIsEmpty!16825))

(assert (= (and b!2751048 (not condMapEmpty!16826)) mapNonEmpty!16825))

(assert (= b!2751052 b!2751048))

(assert (= b!2751050 b!2751052))

(assert (= b!2751038 b!2751050))

(assert (= (and b!2751058 ((_ is LongMap!3698) (v!33436 (underlying!7600 (cache!3747 cacheDown!939))))) b!2751038))

(assert (= b!2751041 b!2751058))

(assert (= (and b!2751044 ((_ is HashMap!3604) (cache!3747 cacheDown!939))) b!2751041))

(assert (= start!266640 b!2751044))

(assert (= (and start!266640 condSetEmpty!21930) setIsEmpty!21930))

(assert (= (and start!266640 (not condSetEmpty!21930)) setNonEmpty!21930))

(assert (= setNonEmpty!21930 b!2751059))

(assert (= start!266640 b!2751047))

(declare-fun m!3165817 () Bool)

(assert (=> b!2751043 m!3165817))

(declare-fun m!3165819 () Bool)

(assert (=> b!2751052 m!3165819))

(declare-fun m!3165821 () Bool)

(assert (=> b!2751052 m!3165821))

(declare-fun m!3165823 () Bool)

(assert (=> b!2751039 m!3165823))

(declare-fun m!3165825 () Bool)

(assert (=> b!2751039 m!3165825))

(declare-fun m!3165827 () Bool)

(assert (=> start!266640 m!3165827))

(declare-fun m!3165829 () Bool)

(assert (=> start!266640 m!3165829))

(declare-fun m!3165831 () Bool)

(assert (=> start!266640 m!3165831))

(declare-fun m!3165833 () Bool)

(assert (=> start!266640 m!3165833))

(declare-fun m!3165835 () Bool)

(assert (=> b!2751051 m!3165835))

(declare-fun m!3165837 () Bool)

(assert (=> b!2751040 m!3165837))

(declare-fun m!3165839 () Bool)

(assert (=> b!2751056 m!3165839))

(assert (=> b!2751037 m!3165837))

(assert (=> b!2751049 m!3165835))

(declare-fun m!3165841 () Bool)

(assert (=> b!2751057 m!3165841))

(declare-fun m!3165843 () Bool)

(assert (=> b!2751055 m!3165843))

(declare-fun m!3165845 () Bool)

(assert (=> b!2751055 m!3165845))

(declare-fun m!3165847 () Bool)

(assert (=> b!2751055 m!3165847))

(declare-fun m!3165849 () Bool)

(assert (=> b!2751055 m!3165849))

(declare-fun m!3165851 () Bool)

(assert (=> b!2751055 m!3165851))

(declare-fun m!3165853 () Bool)

(assert (=> b!2751055 m!3165853))

(declare-fun m!3165855 () Bool)

(assert (=> b!2751055 m!3165855))

(declare-fun m!3165857 () Bool)

(assert (=> mapNonEmpty!16826 m!3165857))

(declare-fun m!3165859 () Bool)

(assert (=> setNonEmpty!21930 m!3165859))

(declare-fun m!3165861 () Bool)

(assert (=> mapNonEmpty!16825 m!3165861))

(declare-fun m!3165863 () Bool)

(assert (=> b!2751047 m!3165863))

(check-sat (not b!2751056) (not b!2751040) b_and!202567 (not b_next!78535) (not b!2751048) b_and!202573 (not b_next!78539) (not b!2751037) b_and!202569 (not mapNonEmpty!16825) (not b!2751042) (not start!266640) (not mapNonEmpty!16826) (not b_next!78537) (not b!2751039) (not b!2751052) (not b!2751057) (not b_next!78533) (not b!2751059) (not setNonEmpty!21930) (not b!2751047) (not b!2751049) (not b!2751051) (not b!2751055) (not b!2751043) b_and!202571)
(check-sat b_and!202567 (not b_next!78535) (not b_next!78537) b_and!202573 (not b_next!78533) (not b_next!78539) b_and!202571 b_and!202569)
