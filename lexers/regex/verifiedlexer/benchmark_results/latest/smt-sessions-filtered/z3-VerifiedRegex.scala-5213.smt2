; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268320 () Bool)

(assert start!268320)

(declare-fun b!2773555 () Bool)

(declare-fun b_free!78293 () Bool)

(declare-fun b_next!78997 () Bool)

(assert (=> b!2773555 (= b_free!78293 (not b_next!78997))))

(declare-fun tp!877367 () Bool)

(declare-fun b_and!203031 () Bool)

(assert (=> b!2773555 (= tp!877367 b_and!203031)))

(declare-fun b!2773563 () Bool)

(declare-fun b_free!78295 () Bool)

(declare-fun b_next!78999 () Bool)

(assert (=> b!2773563 (= b_free!78295 (not b_next!78999))))

(declare-fun tp!877372 () Bool)

(declare-fun b_and!203033 () Bool)

(assert (=> b!2773563 (= tp!877372 b_and!203033)))

(declare-fun b!2773561 () Bool)

(declare-fun b_free!78297 () Bool)

(declare-fun b_next!79001 () Bool)

(assert (=> b!2773561 (= b_free!78297 (not b_next!79001))))

(declare-fun tp!877378 () Bool)

(declare-fun b_and!203035 () Bool)

(assert (=> b!2773561 (= tp!877378 b_and!203035)))

(declare-fun b!2773547 () Bool)

(declare-fun b_free!78299 () Bool)

(declare-fun b_next!79003 () Bool)

(assert (=> b!2773547 (= b_free!78299 (not b_next!79003))))

(declare-fun tp!877376 () Bool)

(declare-fun b_and!203037 () Bool)

(assert (=> b!2773547 (= tp!877376 b_and!203037)))

(declare-fun b!2773544 () Bool)

(declare-fun e!1749096 () Bool)

(declare-fun e!1749093 () Bool)

(assert (=> b!2773544 (= e!1749096 (not e!1749093))))

(declare-fun res!1159271 () Bool)

(assert (=> b!2773544 (=> res!1159271 e!1749093)))

(declare-datatypes ((C!16340 0))(
  ( (C!16341 (val!10104 Int)) )
))
(declare-datatypes ((List!32127 0))(
  ( (Nil!32027) (Cons!32027 (h!37447 C!16340) (t!228255 List!32127)) )
))
(declare-fun lt!988654 () List!32127)

(declare-fun ++!7924 (List!32127 List!32127) List!32127)

(assert (=> b!2773544 (= res!1159271 (not (= (++!7924 Nil!32027 lt!988654) lt!988654)))))

(declare-fun e!1749088 () Bool)

(assert (=> b!2773544 e!1749088))

(declare-fun res!1159276 () Bool)

(assert (=> b!2773544 (=> (not res!1159276) (not e!1749088))))

(declare-fun lt!988656 () Bool)

(assert (=> b!2773544 (= res!1159276 (not lt!988656))))

(declare-datatypes ((Regex!8091 0))(
  ( (ElementMatch!8091 (c!450342 C!16340)) (Concat!13179 (regOne!16694 Regex!8091) (regTwo!16694 Regex!8091)) (EmptyExpr!8091) (Star!8091 (reg!8420 Regex!8091)) (EmptyLang!8091) (Union!8091 (regOne!16695 Regex!8091) (regTwo!16695 Regex!8091)) )
))
(declare-datatypes ((List!32128 0))(
  ( (Nil!32028) (Cons!32028 (h!37448 Regex!8091) (t!228256 List!32128)) )
))
(declare-datatypes ((Context!4618 0))(
  ( (Context!4619 (exprs!2809 List!32128)) )
))
(declare-datatypes ((tuple2!32208 0))(
  ( (tuple2!32209 (_1!19001 Context!4618) (_2!19001 C!16340)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32210 0))(
  ( (tuple2!32211 (_1!19002 tuple2!32208) (_2!19002 (InoxSet Context!4618))) )
))
(declare-datatypes ((List!32129 0))(
  ( (Nil!32029) (Cons!32029 (h!37449 tuple2!32210) (t!228257 List!32129)) )
))
(declare-datatypes ((Hashable!3706 0))(
  ( (HashableExt!3705 (__x!21020 Int)) )
))
(declare-datatypes ((array!13492 0))(
  ( (array!13493 (arr!6014 (Array (_ BitVec 32) List!32129)) (size!24813 (_ BitVec 32))) )
))
(declare-datatypes ((array!13494 0))(
  ( (array!13495 (arr!6015 (Array (_ BitVec 32) (_ BitVec 64))) (size!24814 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7580 0))(
  ( (LongMapFixedSize!7581 (defaultEntry!4175 Int) (mask!9572 (_ BitVec 32)) (extraKeys!4039 (_ BitVec 32)) (zeroValue!4049 List!32129) (minValue!4049 List!32129) (_size!7623 (_ BitVec 32)) (_keys!4090 array!13494) (_values!4071 array!13492) (_vacant!3851 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14969 0))(
  ( (Cell!14970 (v!33636 LongMapFixedSize!7580)) )
))
(declare-datatypes ((MutLongMap!3790 0))(
  ( (LongMap!3790 (underlying!7783 Cell!14969)) (MutLongMapExt!3789 (__x!21021 Int)) )
))
(declare-datatypes ((Cell!14971 0))(
  ( (Cell!14972 (v!33637 MutLongMap!3790)) )
))
(declare-datatypes ((MutableMap!3696 0))(
  ( (MutableMapExt!3695 (__x!21022 Int)) (HashMap!3696 (underlying!7784 Cell!14971) (hashF!5738 Hashable!3706) (_size!7624 (_ BitVec 32)) (defaultValue!3867 Int)) )
))
(declare-datatypes ((CacheUp!2402 0))(
  ( (CacheUp!2403 (cache!3839 MutableMap!3696)) )
))
(declare-datatypes ((tuple3!4854 0))(
  ( (tuple3!4855 (_1!19003 Regex!8091) (_2!19003 Context!4618) (_3!2897 C!16340)) )
))
(declare-datatypes ((tuple2!32212 0))(
  ( (tuple2!32213 (_1!19004 tuple3!4854) (_2!19004 (InoxSet Context!4618))) )
))
(declare-datatypes ((List!32130 0))(
  ( (Nil!32030) (Cons!32030 (h!37450 tuple2!32212) (t!228258 List!32130)) )
))
(declare-datatypes ((array!13496 0))(
  ( (array!13497 (arr!6016 (Array (_ BitVec 32) List!32130)) (size!24815 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7582 0))(
  ( (LongMapFixedSize!7583 (defaultEntry!4176 Int) (mask!9573 (_ BitVec 32)) (extraKeys!4040 (_ BitVec 32)) (zeroValue!4050 List!32130) (minValue!4050 List!32130) (_size!7625 (_ BitVec 32)) (_keys!4091 array!13494) (_values!4072 array!13496) (_vacant!3852 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14973 0))(
  ( (Cell!14974 (v!33638 LongMapFixedSize!7582)) )
))
(declare-datatypes ((MutLongMap!3791 0))(
  ( (LongMap!3791 (underlying!7785 Cell!14973)) (MutLongMapExt!3790 (__x!21023 Int)) )
))
(declare-datatypes ((Cell!14975 0))(
  ( (Cell!14976 (v!33639 MutLongMap!3791)) )
))
(declare-datatypes ((Hashable!3707 0))(
  ( (HashableExt!3706 (__x!21024 Int)) )
))
(declare-datatypes ((MutableMap!3697 0))(
  ( (MutableMapExt!3696 (__x!21025 Int)) (HashMap!3697 (underlying!7786 Cell!14975) (hashF!5739 Hashable!3707) (_size!7626 (_ BitVec 32)) (defaultValue!3868 Int)) )
))
(declare-datatypes ((CacheDown!2522 0))(
  ( (CacheDown!2523 (cache!3840 MutableMap!3697)) )
))
(declare-datatypes ((tuple3!4856 0))(
  ( (tuple3!4857 (_1!19005 Int) (_2!19005 CacheUp!2402) (_3!2898 CacheDown!2522)) )
))
(declare-fun lt!988653 () tuple3!4856)

(declare-fun valid!2959 (CacheUp!2402) Bool)

(assert (=> b!2773544 (= lt!988656 (not (valid!2959 (_2!19005 lt!988653))))))

(declare-fun cacheDown!939 () CacheDown!2522)

(declare-fun z!3597 () (InoxSet Context!4618))

(declare-fun lt!988655 () Int)

(declare-datatypes ((IArray!19947 0))(
  ( (IArray!19948 (innerList!10031 List!32127)) )
))
(declare-datatypes ((Conc!9971 0))(
  ( (Node!9971 (left!24402 Conc!9971) (right!24732 Conc!9971) (csize!20172 Int) (cheight!10182 Int)) (Leaf!15185 (xs!13081 IArray!19947) (csize!20173 Int)) (Empty!9971) )
))
(declare-datatypes ((BalanceConc!19556 0))(
  ( (BalanceConc!19557 (c!450343 Conc!9971)) )
))
(declare-fun input!5495 () BalanceConc!19556)

(declare-fun cacheUp!820 () CacheUp!2402)

(declare-fun findLongestMatchInnerZipperFastMem!37 (CacheUp!2402 CacheDown!2522 (InoxSet Context!4618) List!32127 Int List!32127 BalanceConc!19556 Int) tuple3!4856)

(assert (=> b!2773544 (= lt!988653 (findLongestMatchInnerZipperFastMem!37 cacheUp!820 cacheDown!939 z!3597 Nil!32027 0 lt!988654 input!5495 lt!988655))))

(declare-fun size!24816 (BalanceConc!19556) Int)

(assert (=> b!2773544 (= lt!988655 (size!24816 input!5495))))

(declare-fun list!12086 (BalanceConc!19556) List!32127)

(assert (=> b!2773544 (= lt!988654 (list!12086 input!5495))))

(declare-fun b!2773545 () Bool)

(declare-fun e!1749097 () Bool)

(declare-fun e!1749103 () Bool)

(declare-fun lt!988651 () MutLongMap!3791)

(get-info :version)

(assert (=> b!2773545 (= e!1749097 (and e!1749103 ((_ is LongMap!3791) lt!988651)))))

(assert (=> b!2773545 (= lt!988651 (v!33639 (underlying!7786 (cache!3840 cacheDown!939))))))

(declare-fun b!2773546 () Bool)

(declare-fun e!1749090 () Bool)

(declare-fun e!1749091 () Bool)

(assert (=> b!2773546 (= e!1749090 e!1749091)))

(declare-fun res!1159273 () Bool)

(assert (=> start!268320 (=> (not res!1159273) (not e!1749096))))

(assert (=> start!268320 (= res!1159273 (valid!2959 cacheUp!820))))

(assert (=> start!268320 e!1749096))

(declare-fun e!1749102 () Bool)

(declare-fun inv!43498 (CacheUp!2402) Bool)

(assert (=> start!268320 (and (inv!43498 cacheUp!820) e!1749102)))

(declare-fun e!1749087 () Bool)

(declare-fun inv!43499 (CacheDown!2522) Bool)

(assert (=> start!268320 (and (inv!43499 cacheDown!939) e!1749087)))

(declare-fun condSetEmpty!22938 () Bool)

(assert (=> start!268320 (= condSetEmpty!22938 (= z!3597 ((as const (Array Context!4618 Bool)) false)))))

(declare-fun setRes!22938 () Bool)

(assert (=> start!268320 setRes!22938))

(declare-fun e!1749089 () Bool)

(declare-fun inv!43500 (BalanceConc!19556) Bool)

(assert (=> start!268320 (and (inv!43500 input!5495) e!1749089)))

(declare-fun e!1749086 () Bool)

(declare-fun e!1749085 () Bool)

(assert (=> b!2773547 (= e!1749086 (and e!1749085 tp!877376))))

(declare-fun b!2773548 () Bool)

(declare-fun e!1749095 () Bool)

(declare-fun e!1749100 () Bool)

(assert (=> b!2773548 (= e!1749095 e!1749100)))

(declare-fun b!2773549 () Bool)

(declare-fun e!1749094 () Bool)

(assert (=> b!2773549 (= e!1749087 e!1749094)))

(declare-fun mapIsEmpty!17293 () Bool)

(declare-fun mapRes!17294 () Bool)

(assert (=> mapIsEmpty!17293 mapRes!17294))

(declare-fun b!2773550 () Bool)

(declare-fun res!1159277 () Bool)

(assert (=> b!2773550 (=> (not res!1159277) (not e!1749096))))

(declare-fun valid!2960 (CacheDown!2522) Bool)

(assert (=> b!2773550 (= res!1159277 (valid!2960 cacheDown!939))))

(declare-fun b!2773551 () Bool)

(assert (=> b!2773551 (= e!1749102 e!1749086)))

(declare-fun b!2773552 () Bool)

(assert (=> b!2773552 (= e!1749103 e!1749090)))

(declare-fun mapNonEmpty!17293 () Bool)

(declare-fun mapRes!17293 () Bool)

(declare-fun tp!877369 () Bool)

(declare-fun tp!877366 () Bool)

(assert (=> mapNonEmpty!17293 (= mapRes!17293 (and tp!877369 tp!877366))))

(declare-fun mapKey!17293 () (_ BitVec 32))

(declare-fun mapValue!17293 () List!32129)

(declare-fun mapRest!17294 () (Array (_ BitVec 32) List!32129))

(assert (=> mapNonEmpty!17293 (= (arr!6014 (_values!4071 (v!33636 (underlying!7783 (v!33637 (underlying!7784 (cache!3839 cacheUp!820))))))) (store mapRest!17294 mapKey!17293 mapValue!17293))))

(declare-fun b!2773553 () Bool)

(declare-fun tp!877374 () Bool)

(declare-fun inv!43501 (Conc!9971) Bool)

(assert (=> b!2773553 (= e!1749089 (and (inv!43501 (c!450343 input!5495)) tp!877374))))

(declare-fun b!2773554 () Bool)

(declare-fun e!1749098 () Bool)

(assert (=> b!2773554 (= e!1749100 e!1749098)))

(declare-fun tp!877364 () Bool)

(declare-fun e!1749084 () Bool)

(declare-fun tp!877370 () Bool)

(declare-fun array_inv!4303 (array!13494) Bool)

(declare-fun array_inv!4304 (array!13492) Bool)

(assert (=> b!2773555 (= e!1749098 (and tp!877367 tp!877370 tp!877364 (array_inv!4303 (_keys!4090 (v!33636 (underlying!7783 (v!33637 (underlying!7784 (cache!3839 cacheUp!820))))))) (array_inv!4304 (_values!4071 (v!33636 (underlying!7783 (v!33637 (underlying!7784 (cache!3839 cacheUp!820))))))) e!1749084))))

(declare-fun b!2773556 () Bool)

(declare-fun lt!988652 () MutLongMap!3790)

(assert (=> b!2773556 (= e!1749085 (and e!1749095 ((_ is LongMap!3790) lt!988652)))))

(assert (=> b!2773556 (= lt!988652 (v!33637 (underlying!7784 (cache!3839 cacheUp!820))))))

(declare-fun b!2773557 () Bool)

(declare-fun e!1749101 () Bool)

(declare-fun tp!877371 () Bool)

(assert (=> b!2773557 (= e!1749101 (and tp!877371 mapRes!17294))))

(declare-fun condMapEmpty!17294 () Bool)

(declare-fun mapDefault!17293 () List!32130)

(assert (=> b!2773557 (= condMapEmpty!17294 (= (arr!6016 (_values!4072 (v!33638 (underlying!7785 (v!33639 (underlying!7786 (cache!3840 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32130)) mapDefault!17293)))))

(declare-fun b!2773558 () Bool)

(declare-fun res!1159274 () Bool)

(assert (=> b!2773558 (=> (not res!1159274) (not e!1749088))))

(assert (=> b!2773558 (= res!1159274 (valid!2960 (_3!2898 lt!988653)))))

(declare-fun setNonEmpty!22938 () Bool)

(declare-fun setElem!22938 () Context!4618)

(declare-fun tp!877380 () Bool)

(declare-fun e!1749092 () Bool)

(declare-fun inv!43502 (Context!4618) Bool)

(assert (=> setNonEmpty!22938 (= setRes!22938 (and tp!877380 (inv!43502 setElem!22938) e!1749092))))

(declare-fun setRest!22938 () (InoxSet Context!4618))

(assert (=> setNonEmpty!22938 (= z!3597 ((_ map or) (store ((as const (Array Context!4618 Bool)) false) setElem!22938 true) setRest!22938))))

(declare-fun b!2773559 () Bool)

(declare-fun tp!877373 () Bool)

(assert (=> b!2773559 (= e!1749084 (and tp!877373 mapRes!17293))))

(declare-fun condMapEmpty!17293 () Bool)

(declare-fun mapDefault!17294 () List!32129)

(assert (=> b!2773559 (= condMapEmpty!17293 (= (arr!6014 (_values!4071 (v!33636 (underlying!7783 (v!33637 (underlying!7784 (cache!3839 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32129)) mapDefault!17294)))))

(declare-fun b!2773560 () Bool)

(assert (=> b!2773560 (= e!1749093 (valid!2960 (_3!2898 lt!988653)))))

(declare-fun tp!877368 () Bool)

(declare-fun tp!877377 () Bool)

(declare-fun array_inv!4305 (array!13496) Bool)

(assert (=> b!2773561 (= e!1749091 (and tp!877378 tp!877368 tp!877377 (array_inv!4303 (_keys!4091 (v!33638 (underlying!7785 (v!33639 (underlying!7786 (cache!3840 cacheDown!939))))))) (array_inv!4305 (_values!4072 (v!33638 (underlying!7785 (v!33639 (underlying!7786 (cache!3840 cacheDown!939))))))) e!1749101))))

(declare-fun b!2773562 () Bool)

(declare-fun findLongestMatchInnerZipperFast!43 ((InoxSet Context!4618) List!32127 Int List!32127 BalanceConc!19556 Int) Int)

(assert (=> b!2773562 (= e!1749088 (= (_1!19005 lt!988653) (findLongestMatchInnerZipperFast!43 z!3597 Nil!32027 0 lt!988654 input!5495 lt!988655)))))

(assert (=> b!2773563 (= e!1749094 (and e!1749097 tp!877372))))

(declare-fun setIsEmpty!22938 () Bool)

(assert (=> setIsEmpty!22938 setRes!22938))

(declare-fun b!2773564 () Bool)

(declare-fun res!1159272 () Bool)

(assert (=> b!2773564 (=> res!1159272 e!1749093)))

(declare-fun size!24817 (List!32127) Int)

(assert (=> b!2773564 (= res!1159272 (not (= 0 (size!24817 Nil!32027))))))

(declare-fun mapNonEmpty!17294 () Bool)

(declare-fun tp!877365 () Bool)

(declare-fun tp!877375 () Bool)

(assert (=> mapNonEmpty!17294 (= mapRes!17294 (and tp!877365 tp!877375))))

(declare-fun mapKey!17294 () (_ BitVec 32))

(declare-fun mapValue!17294 () List!32130)

(declare-fun mapRest!17293 () (Array (_ BitVec 32) List!32130))

(assert (=> mapNonEmpty!17294 (= (arr!6016 (_values!4072 (v!33638 (underlying!7785 (v!33639 (underlying!7786 (cache!3840 cacheDown!939))))))) (store mapRest!17293 mapKey!17294 mapValue!17294))))

(declare-fun b!2773565 () Bool)

(declare-fun tp!877379 () Bool)

(assert (=> b!2773565 (= e!1749092 tp!877379)))

(declare-fun b!2773566 () Bool)

(declare-fun res!1159275 () Bool)

(assert (=> b!2773566 (=> res!1159275 e!1749093)))

(assert (=> b!2773566 (= res!1159275 lt!988656)))

(declare-fun mapIsEmpty!17294 () Bool)

(assert (=> mapIsEmpty!17294 mapRes!17293))

(assert (= (and start!268320 res!1159273) b!2773550))

(assert (= (and b!2773550 res!1159277) b!2773544))

(assert (= (and b!2773544 res!1159276) b!2773558))

(assert (= (and b!2773558 res!1159274) b!2773562))

(assert (= (and b!2773544 (not res!1159271)) b!2773564))

(assert (= (and b!2773564 (not res!1159272)) b!2773566))

(assert (= (and b!2773566 (not res!1159275)) b!2773560))

(assert (= (and b!2773559 condMapEmpty!17293) mapIsEmpty!17294))

(assert (= (and b!2773559 (not condMapEmpty!17293)) mapNonEmpty!17293))

(assert (= b!2773555 b!2773559))

(assert (= b!2773554 b!2773555))

(assert (= b!2773548 b!2773554))

(assert (= (and b!2773556 ((_ is LongMap!3790) (v!33637 (underlying!7784 (cache!3839 cacheUp!820))))) b!2773548))

(assert (= b!2773547 b!2773556))

(assert (= (and b!2773551 ((_ is HashMap!3696) (cache!3839 cacheUp!820))) b!2773547))

(assert (= start!268320 b!2773551))

(assert (= (and b!2773557 condMapEmpty!17294) mapIsEmpty!17293))

(assert (= (and b!2773557 (not condMapEmpty!17294)) mapNonEmpty!17294))

(assert (= b!2773561 b!2773557))

(assert (= b!2773546 b!2773561))

(assert (= b!2773552 b!2773546))

(assert (= (and b!2773545 ((_ is LongMap!3791) (v!33639 (underlying!7786 (cache!3840 cacheDown!939))))) b!2773552))

(assert (= b!2773563 b!2773545))

(assert (= (and b!2773549 ((_ is HashMap!3697) (cache!3840 cacheDown!939))) b!2773563))

(assert (= start!268320 b!2773549))

(assert (= (and start!268320 condSetEmpty!22938) setIsEmpty!22938))

(assert (= (and start!268320 (not condSetEmpty!22938)) setNonEmpty!22938))

(assert (= setNonEmpty!22938 b!2773565))

(assert (= start!268320 b!2773553))

(declare-fun m!3200275 () Bool)

(assert (=> setNonEmpty!22938 m!3200275))

(declare-fun m!3200277 () Bool)

(assert (=> b!2773562 m!3200277))

(declare-fun m!3200279 () Bool)

(assert (=> b!2773550 m!3200279))

(declare-fun m!3200281 () Bool)

(assert (=> b!2773558 m!3200281))

(assert (=> b!2773560 m!3200281))

(declare-fun m!3200283 () Bool)

(assert (=> b!2773553 m!3200283))

(declare-fun m!3200285 () Bool)

(assert (=> start!268320 m!3200285))

(declare-fun m!3200287 () Bool)

(assert (=> start!268320 m!3200287))

(declare-fun m!3200289 () Bool)

(assert (=> start!268320 m!3200289))

(declare-fun m!3200291 () Bool)

(assert (=> start!268320 m!3200291))

(declare-fun m!3200293 () Bool)

(assert (=> b!2773561 m!3200293))

(declare-fun m!3200295 () Bool)

(assert (=> b!2773561 m!3200295))

(declare-fun m!3200297 () Bool)

(assert (=> mapNonEmpty!17294 m!3200297))

(declare-fun m!3200299 () Bool)

(assert (=> b!2773555 m!3200299))

(declare-fun m!3200301 () Bool)

(assert (=> b!2773555 m!3200301))

(declare-fun m!3200303 () Bool)

(assert (=> mapNonEmpty!17293 m!3200303))

(declare-fun m!3200305 () Bool)

(assert (=> b!2773564 m!3200305))

(declare-fun m!3200307 () Bool)

(assert (=> b!2773544 m!3200307))

(declare-fun m!3200309 () Bool)

(assert (=> b!2773544 m!3200309))

(declare-fun m!3200311 () Bool)

(assert (=> b!2773544 m!3200311))

(declare-fun m!3200313 () Bool)

(assert (=> b!2773544 m!3200313))

(declare-fun m!3200315 () Bool)

(assert (=> b!2773544 m!3200315))

(check-sat (not b!2773550) (not b_next!79001) (not b!2773544) (not b!2773560) (not b_next!78997) (not b!2773555) (not b!2773562) b_and!203037 (not b!2773558) (not b_next!79003) b_and!203035 (not mapNonEmpty!17293) (not start!268320) (not setNonEmpty!22938) (not b_next!78999) b_and!203031 (not b!2773561) (not b!2773557) (not b!2773559) (not b!2773565) b_and!203033 (not b!2773553) (not b!2773564) (not mapNonEmpty!17294))
(check-sat (not b_next!79001) (not b_next!78999) b_and!203031 (not b_next!78997) b_and!203033 b_and!203037 (not b_next!79003) b_and!203035)
