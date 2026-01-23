; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268324 () Bool)

(assert start!268324)

(declare-fun b!2773692 () Bool)

(declare-fun b_free!78309 () Bool)

(declare-fun b_next!79013 () Bool)

(assert (=> b!2773692 (= b_free!78309 (not b_next!79013))))

(declare-fun tp!877472 () Bool)

(declare-fun b_and!203047 () Bool)

(assert (=> b!2773692 (= tp!877472 b_and!203047)))

(declare-fun b!2773693 () Bool)

(declare-fun b_free!78311 () Bool)

(declare-fun b_next!79015 () Bool)

(assert (=> b!2773693 (= b_free!78311 (not b_next!79015))))

(declare-fun tp!877480 () Bool)

(declare-fun b_and!203049 () Bool)

(assert (=> b!2773693 (= tp!877480 b_and!203049)))

(declare-fun b!2773684 () Bool)

(declare-fun b_free!78313 () Bool)

(declare-fun b_next!79017 () Bool)

(assert (=> b!2773684 (= b_free!78313 (not b_next!79017))))

(declare-fun tp!877467 () Bool)

(declare-fun b_and!203051 () Bool)

(assert (=> b!2773684 (= tp!877467 b_and!203051)))

(declare-fun b!2773685 () Bool)

(declare-fun b_free!78315 () Bool)

(declare-fun b_next!79019 () Bool)

(assert (=> b!2773685 (= b_free!78315 (not b_next!79019))))

(declare-fun tp!877473 () Bool)

(declare-fun b_and!203053 () Bool)

(assert (=> b!2773685 (= tp!877473 b_and!203053)))

(declare-fun setRes!22944 () Bool)

(declare-fun e!1749228 () Bool)

(declare-fun setNonEmpty!22944 () Bool)

(declare-fun tp!877471 () Bool)

(declare-datatypes ((C!16344 0))(
  ( (C!16345 (val!10106 Int)) )
))
(declare-datatypes ((Regex!8093 0))(
  ( (ElementMatch!8093 (c!450346 C!16344)) (Concat!13181 (regOne!16698 Regex!8093) (regTwo!16698 Regex!8093)) (EmptyExpr!8093) (Star!8093 (reg!8422 Regex!8093)) (EmptyLang!8093) (Union!8093 (regOne!16699 Regex!8093) (regTwo!16699 Regex!8093)) )
))
(declare-datatypes ((List!32135 0))(
  ( (Nil!32035) (Cons!32035 (h!37455 Regex!8093) (t!228263 List!32135)) )
))
(declare-datatypes ((Context!4622 0))(
  ( (Context!4623 (exprs!2811 List!32135)) )
))
(declare-fun setElem!22944 () Context!4622)

(declare-fun inv!43507 (Context!4622) Bool)

(assert (=> setNonEmpty!22944 (= setRes!22944 (and tp!877471 (inv!43507 setElem!22944) e!1749228))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3597 () (InoxSet Context!4622))

(declare-fun setRest!22944 () (InoxSet Context!4622))

(assert (=> setNonEmpty!22944 (= z!3597 ((_ map or) (store ((as const (Array Context!4622 Bool)) false) setElem!22944 true) setRest!22944))))

(declare-fun b!2773677 () Bool)

(declare-fun res!1159312 () Bool)

(declare-fun e!1749229 () Bool)

(assert (=> b!2773677 (=> (not res!1159312) (not e!1749229))))

(declare-datatypes ((tuple2!32220 0))(
  ( (tuple2!32221 (_1!19011 Context!4622) (_2!19011 C!16344)) )
))
(declare-datatypes ((tuple2!32222 0))(
  ( (tuple2!32223 (_1!19012 tuple2!32220) (_2!19012 (InoxSet Context!4622))) )
))
(declare-datatypes ((List!32136 0))(
  ( (Nil!32036) (Cons!32036 (h!37456 tuple2!32222) (t!228264 List!32136)) )
))
(declare-datatypes ((Hashable!3710 0))(
  ( (HashableExt!3709 (__x!21032 Int)) )
))
(declare-datatypes ((array!13504 0))(
  ( (array!13505 (arr!6020 (Array (_ BitVec 32) List!32136)) (size!24822 (_ BitVec 32))) )
))
(declare-datatypes ((array!13506 0))(
  ( (array!13507 (arr!6021 (Array (_ BitVec 32) (_ BitVec 64))) (size!24823 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7588 0))(
  ( (LongMapFixedSize!7589 (defaultEntry!4179 Int) (mask!9577 (_ BitVec 32)) (extraKeys!4043 (_ BitVec 32)) (zeroValue!4053 List!32136) (minValue!4053 List!32136) (_size!7631 (_ BitVec 32)) (_keys!4094 array!13506) (_values!4075 array!13504) (_vacant!3855 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14985 0))(
  ( (Cell!14986 (v!33644 LongMapFixedSize!7588)) )
))
(declare-datatypes ((MutLongMap!3794 0))(
  ( (LongMap!3794 (underlying!7791 Cell!14985)) (MutLongMapExt!3793 (__x!21033 Int)) )
))
(declare-datatypes ((Cell!14987 0))(
  ( (Cell!14988 (v!33645 MutLongMap!3794)) )
))
(declare-datatypes ((MutableMap!3700 0))(
  ( (MutableMapExt!3699 (__x!21034 Int)) (HashMap!3700 (underlying!7792 Cell!14987) (hashF!5742 Hashable!3710) (_size!7632 (_ BitVec 32)) (defaultValue!3871 Int)) )
))
(declare-datatypes ((CacheUp!2406 0))(
  ( (CacheUp!2407 (cache!3843 MutableMap!3700)) )
))
(declare-datatypes ((tuple3!4862 0))(
  ( (tuple3!4863 (_1!19013 Regex!8093) (_2!19013 Context!4622) (_3!2901 C!16344)) )
))
(declare-datatypes ((tuple2!32224 0))(
  ( (tuple2!32225 (_1!19014 tuple3!4862) (_2!19014 (InoxSet Context!4622))) )
))
(declare-datatypes ((List!32137 0))(
  ( (Nil!32037) (Cons!32037 (h!37457 tuple2!32224) (t!228265 List!32137)) )
))
(declare-datatypes ((array!13508 0))(
  ( (array!13509 (arr!6022 (Array (_ BitVec 32) List!32137)) (size!24824 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7590 0))(
  ( (LongMapFixedSize!7591 (defaultEntry!4180 Int) (mask!9578 (_ BitVec 32)) (extraKeys!4044 (_ BitVec 32)) (zeroValue!4054 List!32137) (minValue!4054 List!32137) (_size!7633 (_ BitVec 32)) (_keys!4095 array!13506) (_values!4076 array!13508) (_vacant!3856 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14989 0))(
  ( (Cell!14990 (v!33646 LongMapFixedSize!7590)) )
))
(declare-datatypes ((MutLongMap!3795 0))(
  ( (LongMap!3795 (underlying!7793 Cell!14989)) (MutLongMapExt!3794 (__x!21035 Int)) )
))
(declare-datatypes ((Cell!14991 0))(
  ( (Cell!14992 (v!33647 MutLongMap!3795)) )
))
(declare-datatypes ((Hashable!3711 0))(
  ( (HashableExt!3710 (__x!21036 Int)) )
))
(declare-datatypes ((MutableMap!3701 0))(
  ( (MutableMapExt!3700 (__x!21037 Int)) (HashMap!3701 (underlying!7794 Cell!14991) (hashF!5743 Hashable!3711) (_size!7634 (_ BitVec 32)) (defaultValue!3872 Int)) )
))
(declare-datatypes ((CacheDown!2526 0))(
  ( (CacheDown!2527 (cache!3844 MutableMap!3701)) )
))
(declare-datatypes ((tuple3!4864 0))(
  ( (tuple3!4865 (_1!19015 Int) (_2!19015 CacheUp!2406) (_3!2902 CacheDown!2526)) )
))
(declare-fun lt!988692 () tuple3!4864)

(declare-fun valid!2963 (CacheDown!2526) Bool)

(assert (=> b!2773677 (= res!1159312 (valid!2963 (_3!2902 lt!988692)))))

(declare-fun b!2773678 () Bool)

(declare-fun res!1159309 () Bool)

(declare-fun e!1749226 () Bool)

(assert (=> b!2773678 (=> (not res!1159309) (not e!1749226))))

(declare-fun cacheDown!939 () CacheDown!2526)

(assert (=> b!2773678 (= res!1159309 (valid!2963 cacheDown!939))))

(declare-fun lt!988687 () tuple3!4864)

(declare-fun lt!988690 () Int)

(declare-fun e!1749221 () Bool)

(declare-datatypes ((List!32138 0))(
  ( (Nil!32038) (Cons!32038 (h!37458 C!16344) (t!228266 List!32138)) )
))
(declare-datatypes ((IArray!19951 0))(
  ( (IArray!19952 (innerList!10033 List!32138)) )
))
(declare-datatypes ((Conc!9973 0))(
  ( (Node!9973 (left!24405 Conc!9973) (right!24735 Conc!9973) (csize!20176 Int) (cheight!10184 Int)) (Leaf!15188 (xs!13083 IArray!19951) (csize!20177 Int)) (Empty!9973) )
))
(declare-datatypes ((BalanceConc!19560 0))(
  ( (BalanceConc!19561 (c!450347 Conc!9973)) )
))
(declare-fun input!5495 () BalanceConc!19560)

(declare-fun b!2773679 () Bool)

(declare-fun lt!988688 () List!32138)

(declare-fun findLongestMatchInnerZipperFast!45 ((InoxSet Context!4622) List!32138 Int List!32138 BalanceConc!19560 Int) Int)

(assert (=> b!2773679 (= e!1749221 (= (_1!19015 lt!988687) (findLongestMatchInnerZipperFast!45 z!3597 Nil!32038 0 lt!988688 input!5495 lt!988690)))))

(declare-fun b!2773680 () Bool)

(assert (=> b!2773680 (= e!1749229 (= (_1!19015 lt!988692) (findLongestMatchInnerZipperFast!45 z!3597 Nil!32038 0 lt!988688 input!5495 lt!988690)))))

(declare-fun mapIsEmpty!17305 () Bool)

(declare-fun mapRes!17306 () Bool)

(assert (=> mapIsEmpty!17305 mapRes!17306))

(declare-fun b!2773682 () Bool)

(declare-fun e!1749216 () Bool)

(declare-fun e!1749210 () Bool)

(assert (=> b!2773682 (= e!1749216 e!1749210)))

(declare-fun b!2773683 () Bool)

(declare-fun e!1749211 () Bool)

(declare-fun e!1749217 () Bool)

(assert (=> b!2773683 (= e!1749211 e!1749217)))

(declare-fun tp!877474 () Bool)

(declare-fun e!1749215 () Bool)

(declare-fun tp!877476 () Bool)

(declare-fun e!1749213 () Bool)

(declare-fun array_inv!4308 (array!13506) Bool)

(declare-fun array_inv!4309 (array!13508) Bool)

(assert (=> b!2773684 (= e!1749213 (and tp!877467 tp!877474 tp!877476 (array_inv!4308 (_keys!4095 (v!33646 (underlying!7793 (v!33647 (underlying!7794 (cache!3844 cacheDown!939))))))) (array_inv!4309 (_values!4076 (v!33646 (underlying!7793 (v!33647 (underlying!7794 (cache!3844 cacheDown!939))))))) e!1749215))))

(declare-fun e!1749224 () Bool)

(declare-fun e!1749214 () Bool)

(assert (=> b!2773685 (= e!1749224 (and e!1749214 tp!877473))))

(declare-fun b!2773686 () Bool)

(declare-fun e!1749227 () Bool)

(assert (=> b!2773686 (= e!1749217 e!1749227)))

(declare-fun b!2773687 () Bool)

(declare-fun ++!7926 (List!32138 List!32138) List!32138)

(assert (=> b!2773687 (= e!1749226 (not (= (++!7926 Nil!32038 lt!988688) lt!988688)))))

(assert (=> b!2773687 e!1749229))

(declare-fun res!1159308 () Bool)

(assert (=> b!2773687 (=> (not res!1159308) (not e!1749229))))

(declare-fun valid!2964 (CacheUp!2406) Bool)

(assert (=> b!2773687 (= res!1159308 (valid!2964 (_2!19015 lt!988692)))))

(declare-fun findLongestMatchInnerZipperFastMem!39 (CacheUp!2406 CacheDown!2526 (InoxSet Context!4622) List!32138 Int List!32138 BalanceConc!19560 Int) tuple3!4864)

(assert (=> b!2773687 (= lt!988692 (findLongestMatchInnerZipperFastMem!39 (_2!19015 lt!988687) (_3!2902 lt!988687) z!3597 Nil!32038 0 lt!988688 input!5495 lt!988690))))

(assert (=> b!2773687 e!1749221))

(declare-fun res!1159311 () Bool)

(assert (=> b!2773687 (=> (not res!1159311) (not e!1749221))))

(assert (=> b!2773687 (= res!1159311 (valid!2964 (_2!19015 lt!988687)))))

(declare-fun cacheUp!820 () CacheUp!2406)

(assert (=> b!2773687 (= lt!988687 (findLongestMatchInnerZipperFastMem!39 cacheUp!820 cacheDown!939 z!3597 Nil!32038 0 lt!988688 input!5495 lt!988690))))

(declare-fun size!24825 (BalanceConc!19560) Int)

(assert (=> b!2773687 (= lt!988690 (size!24825 input!5495))))

(declare-fun list!12088 (BalanceConc!19560) List!32138)

(assert (=> b!2773687 (= lt!988688 (list!12088 input!5495))))

(declare-fun b!2773688 () Bool)

(declare-fun res!1159310 () Bool)

(assert (=> b!2773688 (=> (not res!1159310) (not e!1749221))))

(assert (=> b!2773688 (= res!1159310 (valid!2963 (_3!2902 lt!988687)))))

(declare-fun b!2773689 () Bool)

(declare-fun e!1749212 () Bool)

(declare-fun tp!877478 () Bool)

(declare-fun mapRes!17305 () Bool)

(assert (=> b!2773689 (= e!1749212 (and tp!877478 mapRes!17305))))

(declare-fun condMapEmpty!17305 () Bool)

(declare-fun mapDefault!17306 () List!32136)

(assert (=> b!2773689 (= condMapEmpty!17305 (= (arr!6020 (_values!4075 (v!33644 (underlying!7791 (v!33645 (underlying!7792 (cache!3843 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32136)) mapDefault!17306)))))

(declare-fun mapNonEmpty!17305 () Bool)

(declare-fun tp!877470 () Bool)

(declare-fun tp!877469 () Bool)

(assert (=> mapNonEmpty!17305 (= mapRes!17305 (and tp!877470 tp!877469))))

(declare-fun mapKey!17305 () (_ BitVec 32))

(declare-fun mapRest!17305 () (Array (_ BitVec 32) List!32136))

(declare-fun mapValue!17306 () List!32136)

(assert (=> mapNonEmpty!17305 (= (arr!6020 (_values!4075 (v!33644 (underlying!7791 (v!33645 (underlying!7792 (cache!3843 cacheUp!820))))))) (store mapRest!17305 mapKey!17305 mapValue!17306))))

(declare-fun b!2773690 () Bool)

(declare-fun tp!877482 () Bool)

(assert (=> b!2773690 (= e!1749228 tp!877482)))

(declare-fun b!2773691 () Bool)

(declare-fun lt!988689 () MutLongMap!3794)

(get-info :version)

(assert (=> b!2773691 (= e!1749214 (and e!1749211 ((_ is LongMap!3794) lt!988689)))))

(assert (=> b!2773691 (= lt!988689 (v!33645 (underlying!7792 (cache!3843 cacheUp!820))))))

(declare-fun b!2773681 () Bool)

(declare-fun e!1749220 () Bool)

(declare-fun tp!877475 () Bool)

(declare-fun inv!43508 (Conc!9973) Bool)

(assert (=> b!2773681 (= e!1749220 (and (inv!43508 (c!450347 input!5495)) tp!877475))))

(declare-fun res!1159313 () Bool)

(assert (=> start!268324 (=> (not res!1159313) (not e!1749226))))

(assert (=> start!268324 (= res!1159313 (valid!2964 cacheUp!820))))

(assert (=> start!268324 e!1749226))

(declare-fun e!1749219 () Bool)

(declare-fun inv!43509 (CacheUp!2406) Bool)

(assert (=> start!268324 (and (inv!43509 cacheUp!820) e!1749219)))

(declare-fun inv!43510 (CacheDown!2526) Bool)

(assert (=> start!268324 (and (inv!43510 cacheDown!939) e!1749216)))

(declare-fun condSetEmpty!22944 () Bool)

(assert (=> start!268324 (= condSetEmpty!22944 (= z!3597 ((as const (Array Context!4622 Bool)) false)))))

(assert (=> start!268324 setRes!22944))

(declare-fun inv!43511 (BalanceConc!19560) Bool)

(assert (=> start!268324 (and (inv!43511 input!5495) e!1749220)))

(declare-fun setIsEmpty!22944 () Bool)

(assert (=> setIsEmpty!22944 setRes!22944))

(declare-fun tp!877477 () Bool)

(declare-fun tp!877466 () Bool)

(declare-fun array_inv!4310 (array!13504) Bool)

(assert (=> b!2773692 (= e!1749227 (and tp!877472 tp!877477 tp!877466 (array_inv!4308 (_keys!4094 (v!33644 (underlying!7791 (v!33645 (underlying!7792 (cache!3843 cacheUp!820))))))) (array_inv!4310 (_values!4075 (v!33644 (underlying!7791 (v!33645 (underlying!7792 (cache!3843 cacheUp!820))))))) e!1749212))))

(declare-fun e!1749223 () Bool)

(assert (=> b!2773693 (= e!1749210 (and e!1749223 tp!877480))))

(declare-fun mapIsEmpty!17306 () Bool)

(assert (=> mapIsEmpty!17306 mapRes!17305))

(declare-fun b!2773694 () Bool)

(declare-fun tp!877468 () Bool)

(assert (=> b!2773694 (= e!1749215 (and tp!877468 mapRes!17306))))

(declare-fun condMapEmpty!17306 () Bool)

(declare-fun mapDefault!17305 () List!32137)

(assert (=> b!2773694 (= condMapEmpty!17306 (= (arr!6022 (_values!4076 (v!33646 (underlying!7793 (v!33647 (underlying!7794 (cache!3844 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32137)) mapDefault!17305)))))

(declare-fun b!2773695 () Bool)

(declare-fun e!1749225 () Bool)

(declare-fun lt!988691 () MutLongMap!3795)

(assert (=> b!2773695 (= e!1749223 (and e!1749225 ((_ is LongMap!3795) lt!988691)))))

(assert (=> b!2773695 (= lt!988691 (v!33647 (underlying!7794 (cache!3844 cacheDown!939))))))

(declare-fun b!2773696 () Bool)

(declare-fun e!1749218 () Bool)

(assert (=> b!2773696 (= e!1749218 e!1749213)))

(declare-fun b!2773697 () Bool)

(assert (=> b!2773697 (= e!1749219 e!1749224)))

(declare-fun b!2773698 () Bool)

(assert (=> b!2773698 (= e!1749225 e!1749218)))

(declare-fun mapNonEmpty!17306 () Bool)

(declare-fun tp!877481 () Bool)

(declare-fun tp!877479 () Bool)

(assert (=> mapNonEmpty!17306 (= mapRes!17306 (and tp!877481 tp!877479))))

(declare-fun mapValue!17305 () List!32137)

(declare-fun mapRest!17306 () (Array (_ BitVec 32) List!32137))

(declare-fun mapKey!17306 () (_ BitVec 32))

(assert (=> mapNonEmpty!17306 (= (arr!6022 (_values!4076 (v!33646 (underlying!7793 (v!33647 (underlying!7794 (cache!3844 cacheDown!939))))))) (store mapRest!17306 mapKey!17306 mapValue!17305))))

(assert (= (and start!268324 res!1159313) b!2773678))

(assert (= (and b!2773678 res!1159309) b!2773687))

(assert (= (and b!2773687 res!1159311) b!2773688))

(assert (= (and b!2773688 res!1159310) b!2773679))

(assert (= (and b!2773687 res!1159308) b!2773677))

(assert (= (and b!2773677 res!1159312) b!2773680))

(assert (= (and b!2773689 condMapEmpty!17305) mapIsEmpty!17306))

(assert (= (and b!2773689 (not condMapEmpty!17305)) mapNonEmpty!17305))

(assert (= b!2773692 b!2773689))

(assert (= b!2773686 b!2773692))

(assert (= b!2773683 b!2773686))

(assert (= (and b!2773691 ((_ is LongMap!3794) (v!33645 (underlying!7792 (cache!3843 cacheUp!820))))) b!2773683))

(assert (= b!2773685 b!2773691))

(assert (= (and b!2773697 ((_ is HashMap!3700) (cache!3843 cacheUp!820))) b!2773685))

(assert (= start!268324 b!2773697))

(assert (= (and b!2773694 condMapEmpty!17306) mapIsEmpty!17305))

(assert (= (and b!2773694 (not condMapEmpty!17306)) mapNonEmpty!17306))

(assert (= b!2773684 b!2773694))

(assert (= b!2773696 b!2773684))

(assert (= b!2773698 b!2773696))

(assert (= (and b!2773695 ((_ is LongMap!3795) (v!33647 (underlying!7794 (cache!3844 cacheDown!939))))) b!2773698))

(assert (= b!2773693 b!2773695))

(assert (= (and b!2773682 ((_ is HashMap!3701) (cache!3844 cacheDown!939))) b!2773693))

(assert (= start!268324 b!2773682))

(assert (= (and start!268324 condSetEmpty!22944) setIsEmpty!22944))

(assert (= (and start!268324 (not condSetEmpty!22944)) setNonEmpty!22944))

(assert (= setNonEmpty!22944 b!2773690))

(assert (= start!268324 b!2773681))

(declare-fun m!3200363 () Bool)

(assert (=> b!2773687 m!3200363))

(declare-fun m!3200365 () Bool)

(assert (=> b!2773687 m!3200365))

(declare-fun m!3200367 () Bool)

(assert (=> b!2773687 m!3200367))

(declare-fun m!3200369 () Bool)

(assert (=> b!2773687 m!3200369))

(declare-fun m!3200371 () Bool)

(assert (=> b!2773687 m!3200371))

(declare-fun m!3200373 () Bool)

(assert (=> b!2773687 m!3200373))

(declare-fun m!3200375 () Bool)

(assert (=> b!2773687 m!3200375))

(declare-fun m!3200377 () Bool)

(assert (=> setNonEmpty!22944 m!3200377))

(declare-fun m!3200379 () Bool)

(assert (=> b!2773681 m!3200379))

(declare-fun m!3200381 () Bool)

(assert (=> b!2773688 m!3200381))

(declare-fun m!3200383 () Bool)

(assert (=> b!2773677 m!3200383))

(declare-fun m!3200385 () Bool)

(assert (=> b!2773680 m!3200385))

(declare-fun m!3200387 () Bool)

(assert (=> b!2773678 m!3200387))

(declare-fun m!3200389 () Bool)

(assert (=> mapNonEmpty!17306 m!3200389))

(declare-fun m!3200391 () Bool)

(assert (=> start!268324 m!3200391))

(declare-fun m!3200393 () Bool)

(assert (=> start!268324 m!3200393))

(declare-fun m!3200395 () Bool)

(assert (=> start!268324 m!3200395))

(declare-fun m!3200397 () Bool)

(assert (=> start!268324 m!3200397))

(declare-fun m!3200399 () Bool)

(assert (=> mapNonEmpty!17305 m!3200399))

(declare-fun m!3200401 () Bool)

(assert (=> b!2773684 m!3200401))

(declare-fun m!3200403 () Bool)

(assert (=> b!2773684 m!3200403))

(assert (=> b!2773679 m!3200385))

(declare-fun m!3200405 () Bool)

(assert (=> b!2773692 m!3200405))

(declare-fun m!3200407 () Bool)

(assert (=> b!2773692 m!3200407))

(check-sat (not b_next!79013) (not mapNonEmpty!17306) (not b!2773694) (not b!2773679) (not b!2773678) (not b!2773692) (not b!2773680) (not start!268324) (not setNonEmpty!22944) (not b!2773684) (not b_next!79019) (not b!2773689) b_and!203053 (not b!2773681) b_and!203047 (not b_next!79017) b_and!203049 (not mapNonEmpty!17305) b_and!203051 (not b!2773690) (not b!2773687) (not b!2773677) (not b_next!79015) (not b!2773688))
(check-sat (not b_next!79019) b_and!203053 (not b_next!79013) b_and!203047 b_and!203051 (not b_next!79015) (not b_next!79017) b_and!203049)
(get-model)

(declare-fun d!806367 () Bool)

(declare-fun lambda!101793 () Int)

(declare-fun forall!6629 (List!32135 Int) Bool)

(assert (=> d!806367 (= (inv!43507 setElem!22944) (forall!6629 (exprs!2811 setElem!22944) lambda!101793))))

(declare-fun bs!505238 () Bool)

(assert (= bs!505238 d!806367))

(declare-fun m!3200409 () Bool)

(assert (=> bs!505238 m!3200409))

(assert (=> setNonEmpty!22944 d!806367))

(declare-fun d!806369 () Bool)

(assert (=> d!806369 (= (array_inv!4308 (_keys!4095 (v!33646 (underlying!7793 (v!33647 (underlying!7794 (cache!3844 cacheDown!939))))))) (bvsge (size!24823 (_keys!4095 (v!33646 (underlying!7793 (v!33647 (underlying!7794 (cache!3844 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2773684 d!806369))

(declare-fun d!806371 () Bool)

(assert (=> d!806371 (= (array_inv!4309 (_values!4076 (v!33646 (underlying!7793 (v!33647 (underlying!7794 (cache!3844 cacheDown!939))))))) (bvsge (size!24824 (_values!4076 (v!33646 (underlying!7793 (v!33647 (underlying!7794 (cache!3844 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2773684 d!806371))

(declare-fun d!806373 () Bool)

(assert (=> d!806373 (= (array_inv!4308 (_keys!4094 (v!33644 (underlying!7791 (v!33645 (underlying!7792 (cache!3843 cacheUp!820))))))) (bvsge (size!24823 (_keys!4094 (v!33644 (underlying!7791 (v!33645 (underlying!7792 (cache!3843 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2773692 d!806373))

(declare-fun d!806375 () Bool)

(assert (=> d!806375 (= (array_inv!4310 (_values!4075 (v!33644 (underlying!7791 (v!33645 (underlying!7792 (cache!3843 cacheUp!820))))))) (bvsge (size!24822 (_values!4075 (v!33644 (underlying!7791 (v!33645 (underlying!7792 (cache!3843 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2773692 d!806375))

(declare-fun d!806377 () Bool)

(declare-fun c!450350 () Bool)

(assert (=> d!806377 (= c!450350 ((_ is Node!9973) (c!450347 input!5495)))))

(declare-fun e!1749235 () Bool)

(assert (=> d!806377 (= (inv!43508 (c!450347 input!5495)) e!1749235)))

(declare-fun b!2773705 () Bool)

(declare-fun inv!43512 (Conc!9973) Bool)

(assert (=> b!2773705 (= e!1749235 (inv!43512 (c!450347 input!5495)))))

(declare-fun b!2773706 () Bool)

(declare-fun e!1749236 () Bool)

(assert (=> b!2773706 (= e!1749235 e!1749236)))

(declare-fun res!1159316 () Bool)

(assert (=> b!2773706 (= res!1159316 (not ((_ is Leaf!15188) (c!450347 input!5495))))))

(assert (=> b!2773706 (=> res!1159316 e!1749236)))

(declare-fun b!2773707 () Bool)

(declare-fun inv!43513 (Conc!9973) Bool)

(assert (=> b!2773707 (= e!1749236 (inv!43513 (c!450347 input!5495)))))

(assert (= (and d!806377 c!450350) b!2773705))

(assert (= (and d!806377 (not c!450350)) b!2773706))

(assert (= (and b!2773706 (not res!1159316)) b!2773707))

(declare-fun m!3200411 () Bool)

(assert (=> b!2773705 m!3200411))

(declare-fun m!3200413 () Bool)

(assert (=> b!2773707 m!3200413))

(assert (=> b!2773681 d!806377))

(declare-fun d!806379 () Bool)

(declare-fun lt!988777 () Int)

(declare-fun size!24826 (List!32138) Int)

(declare-datatypes ((tuple2!32226 0))(
  ( (tuple2!32227 (_1!19016 List!32138) (_2!19016 List!32138)) )
))
(declare-fun findLongestMatchInnerZipper!24 ((InoxSet Context!4622) List!32138 Int List!32138 List!32138 Int) tuple2!32226)

(assert (=> d!806379 (= (size!24826 (_1!19016 (findLongestMatchInnerZipper!24 z!3597 Nil!32038 0 lt!988688 (list!12088 input!5495) lt!988690))) lt!988777)))

(declare-fun e!1749253 () Int)

(assert (=> d!806379 (= lt!988777 e!1749253)))

(declare-fun c!450367 () Bool)

(declare-fun lostCauseZipper!440 ((InoxSet Context!4622)) Bool)

(assert (=> d!806379 (= c!450367 (lostCauseZipper!440 z!3597))))

(declare-datatypes ((Unit!46189 0))(
  ( (Unit!46190) )
))
(declare-fun lt!988796 () Unit!46189)

(declare-fun Unit!46191 () Unit!46189)

(assert (=> d!806379 (= lt!988796 Unit!46191)))

(declare-fun getSuffix!1236 (List!32138 List!32138) List!32138)

(assert (=> d!806379 (= (getSuffix!1236 (list!12088 input!5495) Nil!32038) lt!988688)))

(declare-fun lt!988813 () Unit!46189)

(declare-fun lt!988786 () Unit!46189)

(assert (=> d!806379 (= lt!988813 lt!988786)))

(declare-fun lt!988794 () List!32138)

(assert (=> d!806379 (= lt!988688 lt!988794)))

(declare-fun lemmaSamePrefixThenSameSuffix!1138 (List!32138 List!32138 List!32138 List!32138 List!32138) Unit!46189)

(assert (=> d!806379 (= lt!988786 (lemmaSamePrefixThenSameSuffix!1138 Nil!32038 lt!988688 Nil!32038 lt!988794 (list!12088 input!5495)))))

(assert (=> d!806379 (= lt!988794 (getSuffix!1236 (list!12088 input!5495) Nil!32038))))

(declare-fun lt!988814 () Unit!46189)

(declare-fun lt!988817 () Unit!46189)

(assert (=> d!806379 (= lt!988814 lt!988817)))

(declare-fun isPrefix!2554 (List!32138 List!32138) Bool)

(assert (=> d!806379 (isPrefix!2554 Nil!32038 (++!7926 Nil!32038 lt!988688))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1664 (List!32138 List!32138) Unit!46189)

(assert (=> d!806379 (= lt!988817 (lemmaConcatTwoListThenFirstIsPrefix!1664 Nil!32038 lt!988688))))

(assert (=> d!806379 (= (++!7926 Nil!32038 lt!988688) (list!12088 input!5495))))

(assert (=> d!806379 (= (findLongestMatchInnerZipperFast!45 z!3597 Nil!32038 0 lt!988688 input!5495 lt!988690) lt!988777)))

(declare-fun b!2773732 () Bool)

(declare-fun c!450363 () Bool)

(declare-fun call!181329 () Bool)

(assert (=> b!2773732 (= c!450363 call!181329)))

(declare-fun lt!988798 () Unit!46189)

(declare-fun lt!988807 () Unit!46189)

(assert (=> b!2773732 (= lt!988798 lt!988807)))

(declare-fun lt!988795 () List!32138)

(assert (=> b!2773732 (= lt!988795 Nil!32038)))

(declare-fun call!181328 () Unit!46189)

(assert (=> b!2773732 (= lt!988807 call!181328)))

(declare-fun call!181332 () List!32138)

(assert (=> b!2773732 (= lt!988795 call!181332)))

(declare-fun lt!988809 () Unit!46189)

(declare-fun lt!988791 () Unit!46189)

(assert (=> b!2773732 (= lt!988809 lt!988791)))

(declare-fun call!181334 () Bool)

(assert (=> b!2773732 call!181334))

(declare-fun call!181335 () Unit!46189)

(assert (=> b!2773732 (= lt!988791 call!181335)))

(declare-fun lt!988792 () List!32138)

(assert (=> b!2773732 (= lt!988792 call!181332)))

(declare-fun lt!988803 () List!32138)

(assert (=> b!2773732 (= lt!988803 call!181332)))

(declare-fun e!1749249 () Int)

(declare-fun e!1749252 () Int)

(assert (=> b!2773732 (= e!1749249 e!1749252)))

(declare-fun lt!988806 () List!32138)

(declare-fun lt!988816 () List!32138)

(declare-fun c!450368 () Bool)

(declare-fun bm!181322 () Bool)

(declare-fun lemmaIsPrefixRefl!1678 (List!32138 List!32138) Unit!46189)

(assert (=> bm!181322 (= call!181335 (lemmaIsPrefixRefl!1678 (ite c!450368 lt!988803 lt!988816) (ite c!450368 lt!988792 lt!988806)))))

(declare-fun bm!181323 () Bool)

(declare-fun call!181330 () C!16344)

(declare-fun apply!7506 (BalanceConc!19560 Int) C!16344)

(assert (=> bm!181323 (= call!181330 (apply!7506 input!5495 0))))

(declare-fun b!2773733 () Bool)

(declare-fun e!1749254 () Unit!46189)

(declare-fun Unit!46192 () Unit!46189)

(assert (=> b!2773733 (= e!1749254 Unit!46192)))

(assert (=> b!2773733 (= lt!988816 (list!12088 input!5495))))

(assert (=> b!2773733 (= lt!988806 (list!12088 input!5495))))

(declare-fun lt!988780 () Unit!46189)

(assert (=> b!2773733 (= lt!988780 call!181335)))

(assert (=> b!2773733 call!181334))

(declare-fun lt!988804 () Unit!46189)

(assert (=> b!2773733 (= lt!988804 lt!988780)))

(declare-fun lt!988799 () List!32138)

(assert (=> b!2773733 (= lt!988799 (list!12088 input!5495))))

(declare-fun lt!988800 () Unit!46189)

(assert (=> b!2773733 (= lt!988800 call!181328)))

(assert (=> b!2773733 (= lt!988799 Nil!32038)))

(declare-fun lt!988818 () Unit!46189)

(assert (=> b!2773733 (= lt!988818 lt!988800)))

(assert (=> b!2773733 false))

(declare-fun bm!181324 () Bool)

(declare-datatypes ((tuple2!32228 0))(
  ( (tuple2!32229 (_1!19017 BalanceConc!19560) (_2!19017 BalanceConc!19560)) )
))
(declare-fun lt!988811 () tuple2!32228)

(assert (=> bm!181324 (= call!181332 (list!12088 (ite c!450368 input!5495 (_1!19017 lt!988811))))))

(declare-fun b!2773734 () Bool)

(declare-fun e!1749251 () Int)

(declare-fun call!181327 () Int)

(assert (=> b!2773734 (= e!1749251 call!181327)))

(declare-fun bm!181325 () Bool)

(assert (=> bm!181325 (= call!181334 (isPrefix!2554 (ite c!450368 lt!988803 lt!988816) (ite c!450368 lt!988792 lt!988806)))))

(declare-fun b!2773735 () Bool)

(assert (=> b!2773735 (= e!1749252 0)))

(declare-fun b!2773736 () Bool)

(assert (=> b!2773736 (= e!1749253 0)))

(declare-fun bm!181326 () Bool)

(declare-fun call!181336 () List!32138)

(assert (=> bm!181326 (= call!181336 (++!7926 Nil!32038 (Cons!32038 call!181330 Nil!32038)))))

(declare-fun b!2773737 () Bool)

(declare-fun e!1749250 () List!32138)

(assert (=> b!2773737 (= e!1749250 call!181332)))

(declare-fun b!2773738 () Bool)

(assert (=> b!2773738 (= e!1749253 e!1749249)))

(assert (=> b!2773738 (= c!450368 (= 0 lt!988690))))

(declare-fun bm!181327 () Bool)

(declare-fun nullableZipper!633 ((InoxSet Context!4622)) Bool)

(assert (=> bm!181327 (= call!181329 (nullableZipper!633 z!3597))))

(declare-fun call!181333 () (InoxSet Context!4622))

(declare-fun call!181331 () List!32138)

(declare-fun bm!181328 () Bool)

(assert (=> bm!181328 (= call!181327 (findLongestMatchInnerZipperFast!45 call!181333 call!181336 (+ 0 1) call!181331 input!5495 lt!988690))))

(declare-fun bm!181329 () Bool)

(declare-fun c!450365 () Bool)

(assert (=> bm!181329 (= c!450365 c!450368)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!460 (List!32138 List!32138 List!32138) Unit!46189)

(assert (=> bm!181329 (= call!181328 (lemmaIsPrefixSameLengthThenSameList!460 (ite c!450368 lt!988795 lt!988799) Nil!32038 e!1749250))))

(declare-fun bm!181330 () Bool)

(declare-fun tail!4387 (List!32138) List!32138)

(assert (=> bm!181330 (= call!181331 (tail!4387 lt!988688))))

(declare-fun b!2773739 () Bool)

(declare-fun Unit!46193 () Unit!46189)

(assert (=> b!2773739 (= e!1749254 Unit!46193)))

(declare-fun bm!181331 () Bool)

(declare-fun derivationStepZipper!367 ((InoxSet Context!4622) C!16344) (InoxSet Context!4622))

(assert (=> bm!181331 (= call!181333 (derivationStepZipper!367 z!3597 call!181330))))

(declare-fun b!2773740 () Bool)

(assert (=> b!2773740 (= e!1749252 0)))

(declare-fun b!2773741 () Bool)

(declare-fun c!450366 () Bool)

(assert (=> b!2773741 (= c!450366 call!181329)))

(declare-fun lt!988782 () Unit!46189)

(declare-fun lt!988784 () Unit!46189)

(assert (=> b!2773741 (= lt!988782 lt!988784)))

(declare-fun lt!988789 () C!16344)

(declare-fun lt!988787 () List!32138)

(declare-fun lt!988779 () List!32138)

(assert (=> b!2773741 (= (++!7926 (++!7926 Nil!32038 (Cons!32038 lt!988789 Nil!32038)) lt!988787) lt!988779)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!870 (List!32138 C!16344 List!32138 List!32138) Unit!46189)

(assert (=> b!2773741 (= lt!988784 (lemmaMoveElementToOtherListKeepsConcatEq!870 Nil!32038 lt!988789 lt!988787 lt!988779))))

(assert (=> b!2773741 (= lt!988779 (list!12088 input!5495))))

(assert (=> b!2773741 (= lt!988787 (tail!4387 lt!988688))))

(assert (=> b!2773741 (= lt!988789 (apply!7506 input!5495 0))))

(declare-fun lt!988808 () Unit!46189)

(declare-fun lt!988810 () Unit!46189)

(assert (=> b!2773741 (= lt!988808 lt!988810)))

(declare-fun lt!988815 () List!32138)

(declare-fun head!6149 (List!32138) C!16344)

(assert (=> b!2773741 (isPrefix!2554 (++!7926 Nil!32038 (Cons!32038 (head!6149 (getSuffix!1236 lt!988815 Nil!32038)) Nil!32038)) lt!988815)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!458 (List!32138 List!32138) Unit!46189)

(assert (=> b!2773741 (= lt!988810 (lemmaAddHeadSuffixToPrefixStillPrefix!458 Nil!32038 lt!988815))))

(assert (=> b!2773741 (= lt!988815 (list!12088 input!5495))))

(declare-fun lt!988790 () Unit!46189)

(assert (=> b!2773741 (= lt!988790 e!1749254)))

(declare-fun c!450364 () Bool)

(assert (=> b!2773741 (= c!450364 (= (size!24826 Nil!32038) (size!24825 input!5495)))))

(declare-fun lt!988812 () Unit!46189)

(declare-fun lt!988788 () Unit!46189)

(assert (=> b!2773741 (= lt!988812 lt!988788)))

(declare-fun lt!988778 () List!32138)

(assert (=> b!2773741 (<= (size!24826 Nil!32038) (size!24826 lt!988778))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!261 (List!32138 List!32138) Unit!46189)

(assert (=> b!2773741 (= lt!988788 (lemmaIsPrefixThenSmallerEqSize!261 Nil!32038 lt!988778))))

(assert (=> b!2773741 (= lt!988778 (list!12088 input!5495))))

(declare-fun lt!988781 () Unit!46189)

(declare-fun lt!988801 () Unit!46189)

(assert (=> b!2773741 (= lt!988781 lt!988801)))

(declare-fun lt!988805 () List!32138)

(declare-fun drop!1707 (List!32138 Int) List!32138)

(declare-fun apply!7507 (List!32138 Int) C!16344)

(assert (=> b!2773741 (= (head!6149 (drop!1707 lt!988805 0)) (apply!7507 lt!988805 0))))

(declare-fun lemmaDropApply!913 (List!32138 Int) Unit!46189)

(assert (=> b!2773741 (= lt!988801 (lemmaDropApply!913 lt!988805 0))))

(assert (=> b!2773741 (= lt!988805 (list!12088 input!5495))))

(declare-fun lt!988785 () Unit!46189)

(declare-fun lt!988793 () Unit!46189)

(assert (=> b!2773741 (= lt!988785 lt!988793)))

(declare-fun lt!988797 () List!32138)

(declare-fun lt!988802 () List!32138)

(assert (=> b!2773741 (and (= lt!988797 Nil!32038) (= lt!988802 lt!988688))))

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!339 (List!32138 List!32138 List!32138 List!32138) Unit!46189)

(assert (=> b!2773741 (= lt!988793 (lemmaConcatSameAndSameSizesThenSameLists!339 lt!988797 lt!988802 Nil!32038 lt!988688))))

(assert (=> b!2773741 (= lt!988802 (list!12088 (_2!19017 lt!988811)))))

(assert (=> b!2773741 (= lt!988797 call!181332)))

(declare-fun splitAt!116 (BalanceConc!19560 Int) tuple2!32228)

(assert (=> b!2773741 (= lt!988811 (splitAt!116 input!5495 0))))

(assert (=> b!2773741 (= e!1749249 e!1749251)))

(declare-fun b!2773742 () Bool)

(assert (=> b!2773742 (= e!1749250 (list!12088 input!5495))))

(declare-fun b!2773743 () Bool)

(declare-fun lt!988783 () Int)

(assert (=> b!2773743 (= e!1749251 (ite (= lt!988783 0) 0 lt!988783))))

(assert (=> b!2773743 (= lt!988783 call!181327)))

(assert (= (and d!806379 c!450367) b!2773736))

(assert (= (and d!806379 (not c!450367)) b!2773738))

(assert (= (and b!2773738 c!450368) b!2773732))

(assert (= (and b!2773738 (not c!450368)) b!2773741))

(assert (= (and b!2773732 c!450363) b!2773740))

(assert (= (and b!2773732 (not c!450363)) b!2773735))

(assert (= (and b!2773741 c!450364) b!2773733))

(assert (= (and b!2773741 (not c!450364)) b!2773739))

(assert (= (and b!2773741 c!450366) b!2773743))

(assert (= (and b!2773741 (not c!450366)) b!2773734))

(assert (= (or b!2773743 b!2773734) bm!181323))

(assert (= (or b!2773743 b!2773734) bm!181330))

(assert (= (or b!2773743 b!2773734) bm!181331))

(assert (= (or b!2773743 b!2773734) bm!181326))

(assert (= (or b!2773743 b!2773734) bm!181328))

(assert (= (or b!2773732 b!2773741) bm!181327))

(assert (= (or b!2773732 b!2773733) bm!181322))

(assert (= (or b!2773732 b!2773733) bm!181325))

(assert (= (or b!2773732 b!2773741) bm!181324))

(assert (= (or b!2773732 b!2773733) bm!181329))

(assert (= (and bm!181329 c!450365) b!2773737))

(assert (= (and bm!181329 (not c!450365)) b!2773742))

(declare-fun m!3200415 () Bool)

(assert (=> bm!181330 m!3200415))

(assert (=> b!2773742 m!3200365))

(declare-fun m!3200417 () Bool)

(assert (=> bm!181323 m!3200417))

(declare-fun m!3200419 () Bool)

(assert (=> bm!181331 m!3200419))

(declare-fun m!3200421 () Bool)

(assert (=> bm!181322 m!3200421))

(declare-fun m!3200423 () Bool)

(assert (=> b!2773741 m!3200423))

(declare-fun m!3200425 () Bool)

(assert (=> b!2773741 m!3200425))

(declare-fun m!3200427 () Bool)

(assert (=> b!2773741 m!3200427))

(declare-fun m!3200429 () Bool)

(assert (=> b!2773741 m!3200429))

(declare-fun m!3200431 () Bool)

(assert (=> b!2773741 m!3200431))

(declare-fun m!3200433 () Bool)

(assert (=> b!2773741 m!3200433))

(assert (=> b!2773741 m!3200431))

(declare-fun m!3200435 () Bool)

(assert (=> b!2773741 m!3200435))

(declare-fun m!3200437 () Bool)

(assert (=> b!2773741 m!3200437))

(assert (=> b!2773741 m!3200367))

(assert (=> b!2773741 m!3200423))

(declare-fun m!3200439 () Bool)

(assert (=> b!2773741 m!3200439))

(assert (=> b!2773741 m!3200365))

(declare-fun m!3200441 () Bool)

(assert (=> b!2773741 m!3200441))

(declare-fun m!3200443 () Bool)

(assert (=> b!2773741 m!3200443))

(assert (=> b!2773741 m!3200441))

(declare-fun m!3200445 () Bool)

(assert (=> b!2773741 m!3200445))

(declare-fun m!3200447 () Bool)

(assert (=> b!2773741 m!3200447))

(declare-fun m!3200449 () Bool)

(assert (=> b!2773741 m!3200449))

(declare-fun m!3200451 () Bool)

(assert (=> b!2773741 m!3200451))

(assert (=> b!2773741 m!3200433))

(declare-fun m!3200453 () Bool)

(assert (=> b!2773741 m!3200453))

(assert (=> b!2773741 m!3200417))

(assert (=> b!2773741 m!3200415))

(declare-fun m!3200455 () Bool)

(assert (=> b!2773741 m!3200455))

(declare-fun m!3200457 () Bool)

(assert (=> b!2773741 m!3200457))

(declare-fun m!3200459 () Bool)

(assert (=> bm!181326 m!3200459))

(declare-fun m!3200461 () Bool)

(assert (=> bm!181327 m!3200461))

(assert (=> b!2773733 m!3200365))

(declare-fun m!3200463 () Bool)

(assert (=> bm!181328 m!3200463))

(assert (=> d!806379 m!3200365))

(declare-fun m!3200465 () Bool)

(assert (=> d!806379 m!3200465))

(assert (=> d!806379 m!3200365))

(declare-fun m!3200467 () Bool)

(assert (=> d!806379 m!3200467))

(declare-fun m!3200469 () Bool)

(assert (=> d!806379 m!3200469))

(declare-fun m!3200471 () Bool)

(assert (=> d!806379 m!3200471))

(declare-fun m!3200473 () Bool)

(assert (=> d!806379 m!3200473))

(assert (=> d!806379 m!3200375))

(declare-fun m!3200475 () Bool)

(assert (=> d!806379 m!3200475))

(assert (=> d!806379 m!3200365))

(declare-fun m!3200477 () Bool)

(assert (=> d!806379 m!3200477))

(assert (=> d!806379 m!3200375))

(assert (=> d!806379 m!3200365))

(declare-fun m!3200479 () Bool)

(assert (=> bm!181324 m!3200479))

(declare-fun m!3200481 () Bool)

(assert (=> bm!181325 m!3200481))

(declare-fun m!3200483 () Bool)

(assert (=> bm!181329 m!3200483))

(assert (=> b!2773680 d!806379))

(declare-fun d!806381 () Bool)

(declare-fun validCacheMapDown!398 (MutableMap!3701) Bool)

(assert (=> d!806381 (= (valid!2963 (_3!2902 lt!988687)) (validCacheMapDown!398 (cache!3844 (_3!2902 lt!988687))))))

(declare-fun bs!505239 () Bool)

(assert (= bs!505239 d!806381))

(declare-fun m!3200485 () Bool)

(assert (=> bs!505239 m!3200485))

(assert (=> b!2773688 d!806381))

(declare-fun d!806383 () Bool)

(assert (=> d!806383 (= (valid!2963 cacheDown!939) (validCacheMapDown!398 (cache!3844 cacheDown!939)))))

(declare-fun bs!505240 () Bool)

(assert (= bs!505240 d!806383))

(declare-fun m!3200487 () Bool)

(assert (=> bs!505240 m!3200487))

(assert (=> b!2773678 d!806383))

(assert (=> b!2773679 d!806379))

(declare-fun d!806385 () Bool)

(assert (=> d!806385 (= (valid!2963 (_3!2902 lt!988692)) (validCacheMapDown!398 (cache!3844 (_3!2902 lt!988692))))))

(declare-fun bs!505241 () Bool)

(assert (= bs!505241 d!806385))

(declare-fun m!3200489 () Bool)

(assert (=> bs!505241 m!3200489))

(assert (=> b!2773677 d!806385))

(declare-fun d!806387 () Bool)

(declare-fun validCacheMapUp!367 (MutableMap!3700) Bool)

(assert (=> d!806387 (= (valid!2964 cacheUp!820) (validCacheMapUp!367 (cache!3843 cacheUp!820)))))

(declare-fun bs!505242 () Bool)

(assert (= bs!505242 d!806387))

(declare-fun m!3200491 () Bool)

(assert (=> bs!505242 m!3200491))

(assert (=> start!268324 d!806387))

(declare-fun d!806389 () Bool)

(declare-fun res!1159319 () Bool)

(declare-fun e!1749257 () Bool)

(assert (=> d!806389 (=> (not res!1159319) (not e!1749257))))

(assert (=> d!806389 (= res!1159319 ((_ is HashMap!3700) (cache!3843 cacheUp!820)))))

(assert (=> d!806389 (= (inv!43509 cacheUp!820) e!1749257)))

(declare-fun b!2773746 () Bool)

(assert (=> b!2773746 (= e!1749257 (validCacheMapUp!367 (cache!3843 cacheUp!820)))))

(assert (= (and d!806389 res!1159319) b!2773746))

(assert (=> b!2773746 m!3200491))

(assert (=> start!268324 d!806389))

(declare-fun d!806391 () Bool)

(declare-fun res!1159322 () Bool)

(declare-fun e!1749260 () Bool)

(assert (=> d!806391 (=> (not res!1159322) (not e!1749260))))

(assert (=> d!806391 (= res!1159322 ((_ is HashMap!3701) (cache!3844 cacheDown!939)))))

(assert (=> d!806391 (= (inv!43510 cacheDown!939) e!1749260)))

(declare-fun b!2773749 () Bool)

(assert (=> b!2773749 (= e!1749260 (validCacheMapDown!398 (cache!3844 cacheDown!939)))))

(assert (= (and d!806391 res!1159322) b!2773749))

(assert (=> b!2773749 m!3200487))

(assert (=> start!268324 d!806391))

(declare-fun d!806393 () Bool)

(declare-fun isBalanced!3042 (Conc!9973) Bool)

(assert (=> d!806393 (= (inv!43511 input!5495) (isBalanced!3042 (c!450347 input!5495)))))

(declare-fun bs!505243 () Bool)

(assert (= bs!505243 d!806393))

(declare-fun m!3200493 () Bool)

(assert (=> bs!505243 m!3200493))

(assert (=> start!268324 d!806393))

(declare-fun d!806395 () Bool)

(assert (=> d!806395 (= (valid!2964 (_2!19015 lt!988687)) (validCacheMapUp!367 (cache!3843 (_2!19015 lt!988687))))))

(declare-fun bs!505244 () Bool)

(assert (= bs!505244 d!806395))

(declare-fun m!3200495 () Bool)

(assert (=> bs!505244 m!3200495))

(assert (=> b!2773687 d!806395))

(declare-fun b!2773758 () Bool)

(declare-fun e!1749266 () List!32138)

(assert (=> b!2773758 (= e!1749266 lt!988688)))

(declare-fun b!2773760 () Bool)

(declare-fun res!1159327 () Bool)

(declare-fun e!1749265 () Bool)

(assert (=> b!2773760 (=> (not res!1159327) (not e!1749265))))

(declare-fun lt!988821 () List!32138)

(assert (=> b!2773760 (= res!1159327 (= (size!24826 lt!988821) (+ (size!24826 Nil!32038) (size!24826 lt!988688))))))

(declare-fun b!2773759 () Bool)

(assert (=> b!2773759 (= e!1749266 (Cons!32038 (h!37458 Nil!32038) (++!7926 (t!228266 Nil!32038) lt!988688)))))

(declare-fun d!806397 () Bool)

(assert (=> d!806397 e!1749265))

(declare-fun res!1159328 () Bool)

(assert (=> d!806397 (=> (not res!1159328) (not e!1749265))))

(declare-fun content!4506 (List!32138) (InoxSet C!16344))

(assert (=> d!806397 (= res!1159328 (= (content!4506 lt!988821) ((_ map or) (content!4506 Nil!32038) (content!4506 lt!988688))))))

(assert (=> d!806397 (= lt!988821 e!1749266)))

(declare-fun c!450371 () Bool)

(assert (=> d!806397 (= c!450371 ((_ is Nil!32038) Nil!32038))))

(assert (=> d!806397 (= (++!7926 Nil!32038 lt!988688) lt!988821)))

(declare-fun b!2773761 () Bool)

(assert (=> b!2773761 (= e!1749265 (or (not (= lt!988688 Nil!32038)) (= lt!988821 Nil!32038)))))

(assert (= (and d!806397 c!450371) b!2773758))

(assert (= (and d!806397 (not c!450371)) b!2773759))

(assert (= (and d!806397 res!1159328) b!2773760))

(assert (= (and b!2773760 res!1159327) b!2773761))

(declare-fun m!3200497 () Bool)

(assert (=> b!2773760 m!3200497))

(assert (=> b!2773760 m!3200443))

(declare-fun m!3200499 () Bool)

(assert (=> b!2773760 m!3200499))

(declare-fun m!3200501 () Bool)

(assert (=> b!2773759 m!3200501))

(declare-fun m!3200503 () Bool)

(assert (=> d!806397 m!3200503))

(declare-fun m!3200505 () Bool)

(assert (=> d!806397 m!3200505))

(declare-fun m!3200507 () Bool)

(assert (=> d!806397 m!3200507))

(assert (=> b!2773687 d!806397))

(declare-fun d!806399 () Bool)

(declare-fun list!12089 (Conc!9973) List!32138)

(assert (=> d!806399 (= (list!12088 input!5495) (list!12089 (c!450347 input!5495)))))

(declare-fun bs!505245 () Bool)

(assert (= bs!505245 d!806399))

(declare-fun m!3200509 () Bool)

(assert (=> bs!505245 m!3200509))

(assert (=> b!2773687 d!806399))

(declare-fun d!806401 () Bool)

(declare-fun lt!988824 () Int)

(assert (=> d!806401 (= lt!988824 (size!24826 (list!12088 input!5495)))))

(declare-fun size!24827 (Conc!9973) Int)

(assert (=> d!806401 (= lt!988824 (size!24827 (c!450347 input!5495)))))

(assert (=> d!806401 (= (size!24825 input!5495) lt!988824)))

(declare-fun bs!505246 () Bool)

(assert (= bs!505246 d!806401))

(assert (=> bs!505246 m!3200365))

(assert (=> bs!505246 m!3200365))

(declare-fun m!3200511 () Bool)

(assert (=> bs!505246 m!3200511))

(declare-fun m!3200513 () Bool)

(assert (=> bs!505246 m!3200513))

(assert (=> b!2773687 d!806401))

(declare-fun d!806403 () Bool)

(declare-fun e!1749269 () Bool)

(assert (=> d!806403 e!1749269))

(declare-fun res!1159333 () Bool)

(assert (=> d!806403 (=> (not res!1159333) (not e!1749269))))

(declare-fun lt!988827 () tuple3!4864)

(assert (=> d!806403 (= res!1159333 (valid!2964 (_2!19015 lt!988827)))))

(declare-fun choose!16269 (CacheUp!2406 CacheDown!2526 (InoxSet Context!4622) List!32138 Int List!32138 BalanceConc!19560 Int) tuple3!4864)

(assert (=> d!806403 (= lt!988827 (choose!16269 (_2!19015 lt!988687) (_3!2902 lt!988687) z!3597 Nil!32038 0 lt!988688 input!5495 lt!988690))))

(assert (=> d!806403 (= (++!7926 Nil!32038 lt!988688) (list!12088 input!5495))))

(assert (=> d!806403 (= (findLongestMatchInnerZipperFastMem!39 (_2!19015 lt!988687) (_3!2902 lt!988687) z!3597 Nil!32038 0 lt!988688 input!5495 lt!988690) lt!988827)))

(declare-fun b!2773766 () Bool)

(declare-fun res!1159334 () Bool)

(assert (=> b!2773766 (=> (not res!1159334) (not e!1749269))))

(assert (=> b!2773766 (= res!1159334 (valid!2963 (_3!2902 lt!988827)))))

(declare-fun b!2773767 () Bool)

(assert (=> b!2773767 (= e!1749269 (= (_1!19015 lt!988827) (findLongestMatchInnerZipperFast!45 z!3597 Nil!32038 0 lt!988688 input!5495 lt!988690)))))

(assert (= (and d!806403 res!1159333) b!2773766))

(assert (= (and b!2773766 res!1159334) b!2773767))

(declare-fun m!3200515 () Bool)

(assert (=> d!806403 m!3200515))

(declare-fun m!3200517 () Bool)

(assert (=> d!806403 m!3200517))

(assert (=> d!806403 m!3200375))

(assert (=> d!806403 m!3200365))

(declare-fun m!3200519 () Bool)

(assert (=> b!2773766 m!3200519))

(assert (=> b!2773767 m!3200385))

(assert (=> b!2773687 d!806403))

(declare-fun d!806405 () Bool)

(declare-fun e!1749270 () Bool)

(assert (=> d!806405 e!1749270))

(declare-fun res!1159335 () Bool)

(assert (=> d!806405 (=> (not res!1159335) (not e!1749270))))

(declare-fun lt!988828 () tuple3!4864)

(assert (=> d!806405 (= res!1159335 (valid!2964 (_2!19015 lt!988828)))))

(assert (=> d!806405 (= lt!988828 (choose!16269 cacheUp!820 cacheDown!939 z!3597 Nil!32038 0 lt!988688 input!5495 lt!988690))))

(assert (=> d!806405 (= (++!7926 Nil!32038 lt!988688) (list!12088 input!5495))))

(assert (=> d!806405 (= (findLongestMatchInnerZipperFastMem!39 cacheUp!820 cacheDown!939 z!3597 Nil!32038 0 lt!988688 input!5495 lt!988690) lt!988828)))

(declare-fun b!2773768 () Bool)

(declare-fun res!1159336 () Bool)

(assert (=> b!2773768 (=> (not res!1159336) (not e!1749270))))

(assert (=> b!2773768 (= res!1159336 (valid!2963 (_3!2902 lt!988828)))))

(declare-fun b!2773769 () Bool)

(assert (=> b!2773769 (= e!1749270 (= (_1!19015 lt!988828) (findLongestMatchInnerZipperFast!45 z!3597 Nil!32038 0 lt!988688 input!5495 lt!988690)))))

(assert (= (and d!806405 res!1159335) b!2773768))

(assert (= (and b!2773768 res!1159336) b!2773769))

(declare-fun m!3200521 () Bool)

(assert (=> d!806405 m!3200521))

(declare-fun m!3200523 () Bool)

(assert (=> d!806405 m!3200523))

(assert (=> d!806405 m!3200375))

(assert (=> d!806405 m!3200365))

(declare-fun m!3200525 () Bool)

(assert (=> b!2773768 m!3200525))

(assert (=> b!2773769 m!3200385))

(assert (=> b!2773687 d!806405))

(declare-fun d!806407 () Bool)

(assert (=> d!806407 (= (valid!2964 (_2!19015 lt!988692)) (validCacheMapUp!367 (cache!3843 (_2!19015 lt!988692))))))

(declare-fun bs!505247 () Bool)

(assert (= bs!505247 d!806407))

(declare-fun m!3200527 () Bool)

(assert (=> bs!505247 m!3200527))

(assert (=> b!2773687 d!806407))

(declare-fun b!2773784 () Bool)

(declare-fun e!1749284 () Bool)

(declare-fun tp!877508 () Bool)

(assert (=> b!2773784 (= e!1749284 tp!877508)))

(declare-fun setIsEmpty!22949 () Bool)

(declare-fun setRes!22949 () Bool)

(assert (=> setIsEmpty!22949 setRes!22949))

(declare-fun mapNonEmpty!17309 () Bool)

(declare-fun mapRes!17309 () Bool)

(declare-fun tp!877509 () Bool)

(declare-fun e!1749283 () Bool)

(assert (=> mapNonEmpty!17309 (= mapRes!17309 (and tp!877509 e!1749283))))

(declare-fun mapValue!17309 () List!32137)

(declare-fun mapRest!17309 () (Array (_ BitVec 32) List!32137))

(declare-fun mapKey!17309 () (_ BitVec 32))

(assert (=> mapNonEmpty!17309 (= mapRest!17306 (store mapRest!17309 mapKey!17309 mapValue!17309))))

(declare-fun setIsEmpty!22950 () Bool)

(declare-fun setRes!22950 () Bool)

(assert (=> setIsEmpty!22950 setRes!22950))

(declare-fun condMapEmpty!17309 () Bool)

(declare-fun mapDefault!17309 () List!32137)

(assert (=> mapNonEmpty!17306 (= condMapEmpty!17309 (= mapRest!17306 ((as const (Array (_ BitVec 32) List!32137)) mapDefault!17309)))))

(declare-fun e!1749288 () Bool)

(assert (=> mapNonEmpty!17306 (= tp!877481 (and e!1749288 mapRes!17309))))

(declare-fun tp!877505 () Bool)

(declare-fun tp_is_empty!14019 () Bool)

(declare-fun b!2773785 () Bool)

(declare-fun e!1749287 () Bool)

(declare-fun tp!877510 () Bool)

(assert (=> b!2773785 (= e!1749288 (and tp!877505 (inv!43507 (_2!19013 (_1!19014 (h!37457 mapDefault!17309)))) e!1749287 tp_is_empty!14019 setRes!22950 tp!877510))))

(declare-fun condSetEmpty!22950 () Bool)

(assert (=> b!2773785 (= condSetEmpty!22950 (= (_2!19014 (h!37457 mapDefault!17309)) ((as const (Array Context!4622 Bool)) false)))))

(declare-fun b!2773786 () Bool)

(declare-fun tp!877507 () Bool)

(assert (=> b!2773786 (= e!1749287 tp!877507)))

(declare-fun mapIsEmpty!17309 () Bool)

(assert (=> mapIsEmpty!17309 mapRes!17309))

(declare-fun e!1749285 () Bool)

(declare-fun tp!877512 () Bool)

(declare-fun setElem!22950 () Context!4622)

(declare-fun setNonEmpty!22949 () Bool)

(assert (=> setNonEmpty!22949 (= setRes!22950 (and tp!877512 (inv!43507 setElem!22950) e!1749285))))

(declare-fun setRest!22950 () (InoxSet Context!4622))

(assert (=> setNonEmpty!22949 (= (_2!19014 (h!37457 mapDefault!17309)) ((_ map or) (store ((as const (Array Context!4622 Bool)) false) setElem!22950 true) setRest!22950))))

(declare-fun setElem!22949 () Context!4622)

(declare-fun tp!877511 () Bool)

(declare-fun setNonEmpty!22950 () Bool)

(declare-fun e!1749286 () Bool)

(assert (=> setNonEmpty!22950 (= setRes!22949 (and tp!877511 (inv!43507 setElem!22949) e!1749286))))

(declare-fun setRest!22949 () (InoxSet Context!4622))

(assert (=> setNonEmpty!22950 (= (_2!19014 (h!37457 mapValue!17309)) ((_ map or) (store ((as const (Array Context!4622 Bool)) false) setElem!22949 true) setRest!22949))))

(declare-fun b!2773787 () Bool)

(declare-fun tp!877513 () Bool)

(assert (=> b!2773787 (= e!1749286 tp!877513)))

(declare-fun b!2773788 () Bool)

(declare-fun tp!877514 () Bool)

(assert (=> b!2773788 (= e!1749285 tp!877514)))

(declare-fun tp!877515 () Bool)

(declare-fun b!2773789 () Bool)

(declare-fun tp!877506 () Bool)

(assert (=> b!2773789 (= e!1749283 (and tp!877515 (inv!43507 (_2!19013 (_1!19014 (h!37457 mapValue!17309)))) e!1749284 tp_is_empty!14019 setRes!22949 tp!877506))))

(declare-fun condSetEmpty!22949 () Bool)

(assert (=> b!2773789 (= condSetEmpty!22949 (= (_2!19014 (h!37457 mapValue!17309)) ((as const (Array Context!4622 Bool)) false)))))

(assert (= (and mapNonEmpty!17306 condMapEmpty!17309) mapIsEmpty!17309))

(assert (= (and mapNonEmpty!17306 (not condMapEmpty!17309)) mapNonEmpty!17309))

(assert (= b!2773789 b!2773784))

(assert (= (and b!2773789 condSetEmpty!22949) setIsEmpty!22949))

(assert (= (and b!2773789 (not condSetEmpty!22949)) setNonEmpty!22950))

(assert (= setNonEmpty!22950 b!2773787))

(assert (= (and mapNonEmpty!17309 ((_ is Cons!32037) mapValue!17309)) b!2773789))

(assert (= b!2773785 b!2773786))

(assert (= (and b!2773785 condSetEmpty!22950) setIsEmpty!22950))

(assert (= (and b!2773785 (not condSetEmpty!22950)) setNonEmpty!22949))

(assert (= setNonEmpty!22949 b!2773788))

(assert (= (and mapNonEmpty!17306 ((_ is Cons!32037) mapDefault!17309)) b!2773785))

(declare-fun m!3200529 () Bool)

(assert (=> b!2773789 m!3200529))

(declare-fun m!3200531 () Bool)

(assert (=> mapNonEmpty!17309 m!3200531))

(declare-fun m!3200533 () Bool)

(assert (=> setNonEmpty!22949 m!3200533))

(declare-fun m!3200535 () Bool)

(assert (=> setNonEmpty!22950 m!3200535))

(declare-fun m!3200537 () Bool)

(assert (=> b!2773785 m!3200537))

(declare-fun e!1749296 () Bool)

(declare-fun b!2773798 () Bool)

(declare-fun tp!877529 () Bool)

(declare-fun tp!877530 () Bool)

(declare-fun e!1749295 () Bool)

(declare-fun setRes!22953 () Bool)

(assert (=> b!2773798 (= e!1749295 (and tp!877530 (inv!43507 (_2!19013 (_1!19014 (h!37457 mapValue!17305)))) e!1749296 tp_is_empty!14019 setRes!22953 tp!877529))))

(declare-fun condSetEmpty!22953 () Bool)

(assert (=> b!2773798 (= condSetEmpty!22953 (= (_2!19014 (h!37457 mapValue!17305)) ((as const (Array Context!4622 Bool)) false)))))

(declare-fun b!2773799 () Bool)

(declare-fun tp!877528 () Bool)

(assert (=> b!2773799 (= e!1749296 tp!877528)))

(declare-fun setIsEmpty!22953 () Bool)

(assert (=> setIsEmpty!22953 setRes!22953))

(assert (=> mapNonEmpty!17306 (= tp!877479 e!1749295)))

(declare-fun b!2773800 () Bool)

(declare-fun e!1749297 () Bool)

(declare-fun tp!877526 () Bool)

(assert (=> b!2773800 (= e!1749297 tp!877526)))

(declare-fun setElem!22953 () Context!4622)

(declare-fun setNonEmpty!22953 () Bool)

(declare-fun tp!877527 () Bool)

(assert (=> setNonEmpty!22953 (= setRes!22953 (and tp!877527 (inv!43507 setElem!22953) e!1749297))))

(declare-fun setRest!22953 () (InoxSet Context!4622))

(assert (=> setNonEmpty!22953 (= (_2!19014 (h!37457 mapValue!17305)) ((_ map or) (store ((as const (Array Context!4622 Bool)) false) setElem!22953 true) setRest!22953))))

(assert (= b!2773798 b!2773799))

(assert (= (and b!2773798 condSetEmpty!22953) setIsEmpty!22953))

(assert (= (and b!2773798 (not condSetEmpty!22953)) setNonEmpty!22953))

(assert (= setNonEmpty!22953 b!2773800))

(assert (= (and mapNonEmpty!17306 ((_ is Cons!32037) mapValue!17305)) b!2773798))

(declare-fun m!3200539 () Bool)

(assert (=> b!2773798 m!3200539))

(declare-fun m!3200541 () Bool)

(assert (=> setNonEmpty!22953 m!3200541))

(declare-fun condSetEmpty!22956 () Bool)

(assert (=> setNonEmpty!22944 (= condSetEmpty!22956 (= setRest!22944 ((as const (Array Context!4622 Bool)) false)))))

(declare-fun setRes!22956 () Bool)

(assert (=> setNonEmpty!22944 (= tp!877471 setRes!22956)))

(declare-fun setIsEmpty!22956 () Bool)

(assert (=> setIsEmpty!22956 setRes!22956))

(declare-fun tp!877536 () Bool)

(declare-fun setElem!22956 () Context!4622)

(declare-fun e!1749300 () Bool)

(declare-fun setNonEmpty!22956 () Bool)

(assert (=> setNonEmpty!22956 (= setRes!22956 (and tp!877536 (inv!43507 setElem!22956) e!1749300))))

(declare-fun setRest!22956 () (InoxSet Context!4622))

(assert (=> setNonEmpty!22956 (= setRest!22944 ((_ map or) (store ((as const (Array Context!4622 Bool)) false) setElem!22956 true) setRest!22956))))

(declare-fun b!2773805 () Bool)

(declare-fun tp!877535 () Bool)

(assert (=> b!2773805 (= e!1749300 tp!877535)))

(assert (= (and setNonEmpty!22944 condSetEmpty!22956) setIsEmpty!22956))

(assert (= (and setNonEmpty!22944 (not condSetEmpty!22956)) setNonEmpty!22956))

(assert (= setNonEmpty!22956 b!2773805))

(declare-fun m!3200543 () Bool)

(assert (=> setNonEmpty!22956 m!3200543))

(declare-fun b!2773810 () Bool)

(declare-fun e!1749303 () Bool)

(declare-fun tp!877541 () Bool)

(declare-fun tp!877542 () Bool)

(assert (=> b!2773810 (= e!1749303 (and tp!877541 tp!877542))))

(assert (=> b!2773690 (= tp!877482 e!1749303)))

(assert (= (and b!2773690 ((_ is Cons!32035) (exprs!2811 setElem!22944))) b!2773810))

(declare-fun e!1749304 () Bool)

(declare-fun setRes!22957 () Bool)

(declare-fun tp!877547 () Bool)

(declare-fun e!1749305 () Bool)

(declare-fun b!2773811 () Bool)

(declare-fun tp!877546 () Bool)

(assert (=> b!2773811 (= e!1749304 (and tp!877547 (inv!43507 (_2!19013 (_1!19014 (h!37457 (zeroValue!4054 (v!33646 (underlying!7793 (v!33647 (underlying!7794 (cache!3844 cacheDown!939)))))))))) e!1749305 tp_is_empty!14019 setRes!22957 tp!877546))))

(declare-fun condSetEmpty!22957 () Bool)

(assert (=> b!2773811 (= condSetEmpty!22957 (= (_2!19014 (h!37457 (zeroValue!4054 (v!33646 (underlying!7793 (v!33647 (underlying!7794 (cache!3844 cacheDown!939)))))))) ((as const (Array Context!4622 Bool)) false)))))

(declare-fun b!2773812 () Bool)

(declare-fun tp!877545 () Bool)

(assert (=> b!2773812 (= e!1749305 tp!877545)))

(declare-fun setIsEmpty!22957 () Bool)

(assert (=> setIsEmpty!22957 setRes!22957))

(assert (=> b!2773684 (= tp!877474 e!1749304)))

(declare-fun b!2773813 () Bool)

(declare-fun e!1749306 () Bool)

(declare-fun tp!877543 () Bool)

(assert (=> b!2773813 (= e!1749306 tp!877543)))

(declare-fun setElem!22957 () Context!4622)

(declare-fun setNonEmpty!22957 () Bool)

(declare-fun tp!877544 () Bool)

(assert (=> setNonEmpty!22957 (= setRes!22957 (and tp!877544 (inv!43507 setElem!22957) e!1749306))))

(declare-fun setRest!22957 () (InoxSet Context!4622))

(assert (=> setNonEmpty!22957 (= (_2!19014 (h!37457 (zeroValue!4054 (v!33646 (underlying!7793 (v!33647 (underlying!7794 (cache!3844 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4622 Bool)) false) setElem!22957 true) setRest!22957))))

(assert (= b!2773811 b!2773812))

(assert (= (and b!2773811 condSetEmpty!22957) setIsEmpty!22957))

(assert (= (and b!2773811 (not condSetEmpty!22957)) setNonEmpty!22957))

(assert (= setNonEmpty!22957 b!2773813))

(assert (= (and b!2773684 ((_ is Cons!32037) (zeroValue!4054 (v!33646 (underlying!7793 (v!33647 (underlying!7794 (cache!3844 cacheDown!939)))))))) b!2773811))

(declare-fun m!3200545 () Bool)

(assert (=> b!2773811 m!3200545))

(declare-fun m!3200547 () Bool)

(assert (=> setNonEmpty!22957 m!3200547))

(declare-fun e!1749308 () Bool)

(declare-fun b!2773814 () Bool)

(declare-fun tp!877551 () Bool)

(declare-fun setRes!22958 () Bool)

(declare-fun tp!877552 () Bool)

(declare-fun e!1749307 () Bool)

(assert (=> b!2773814 (= e!1749307 (and tp!877552 (inv!43507 (_2!19013 (_1!19014 (h!37457 (minValue!4054 (v!33646 (underlying!7793 (v!33647 (underlying!7794 (cache!3844 cacheDown!939)))))))))) e!1749308 tp_is_empty!14019 setRes!22958 tp!877551))))

(declare-fun condSetEmpty!22958 () Bool)

(assert (=> b!2773814 (= condSetEmpty!22958 (= (_2!19014 (h!37457 (minValue!4054 (v!33646 (underlying!7793 (v!33647 (underlying!7794 (cache!3844 cacheDown!939)))))))) ((as const (Array Context!4622 Bool)) false)))))

(declare-fun b!2773815 () Bool)

(declare-fun tp!877550 () Bool)

(assert (=> b!2773815 (= e!1749308 tp!877550)))

(declare-fun setIsEmpty!22958 () Bool)

(assert (=> setIsEmpty!22958 setRes!22958))

(assert (=> b!2773684 (= tp!877476 e!1749307)))

(declare-fun b!2773816 () Bool)

(declare-fun e!1749309 () Bool)

(declare-fun tp!877548 () Bool)

(assert (=> b!2773816 (= e!1749309 tp!877548)))

(declare-fun setNonEmpty!22958 () Bool)

(declare-fun tp!877549 () Bool)

(declare-fun setElem!22958 () Context!4622)

(assert (=> setNonEmpty!22958 (= setRes!22958 (and tp!877549 (inv!43507 setElem!22958) e!1749309))))

(declare-fun setRest!22958 () (InoxSet Context!4622))

(assert (=> setNonEmpty!22958 (= (_2!19014 (h!37457 (minValue!4054 (v!33646 (underlying!7793 (v!33647 (underlying!7794 (cache!3844 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4622 Bool)) false) setElem!22958 true) setRest!22958))))

(assert (= b!2773814 b!2773815))

(assert (= (and b!2773814 condSetEmpty!22958) setIsEmpty!22958))

(assert (= (and b!2773814 (not condSetEmpty!22958)) setNonEmpty!22958))

(assert (= setNonEmpty!22958 b!2773816))

(assert (= (and b!2773684 ((_ is Cons!32037) (minValue!4054 (v!33646 (underlying!7793 (v!33647 (underlying!7794 (cache!3844 cacheDown!939)))))))) b!2773814))

(declare-fun m!3200549 () Bool)

(assert (=> b!2773814 m!3200549))

(declare-fun m!3200551 () Bool)

(assert (=> setNonEmpty!22958 m!3200551))

(declare-fun b!2773825 () Bool)

(declare-fun e!1749317 () Bool)

(declare-fun tp!877564 () Bool)

(assert (=> b!2773825 (= e!1749317 tp!877564)))

(declare-fun setRes!22961 () Bool)

(declare-fun e!1749316 () Bool)

(declare-fun tp!877563 () Bool)

(declare-fun b!2773826 () Bool)

(declare-fun e!1749318 () Bool)

(assert (=> b!2773826 (= e!1749318 (and (inv!43507 (_1!19011 (_1!19012 (h!37456 mapDefault!17306)))) e!1749316 tp_is_empty!14019 setRes!22961 tp!877563))))

(declare-fun condSetEmpty!22961 () Bool)

(assert (=> b!2773826 (= condSetEmpty!22961 (= (_2!19012 (h!37456 mapDefault!17306)) ((as const (Array Context!4622 Bool)) false)))))

(declare-fun b!2773827 () Bool)

(declare-fun tp!877561 () Bool)

(assert (=> b!2773827 (= e!1749316 tp!877561)))

(declare-fun setIsEmpty!22961 () Bool)

(assert (=> setIsEmpty!22961 setRes!22961))

(assert (=> b!2773689 (= tp!877478 e!1749318)))

(declare-fun setElem!22961 () Context!4622)

(declare-fun setNonEmpty!22961 () Bool)

(declare-fun tp!877562 () Bool)

(assert (=> setNonEmpty!22961 (= setRes!22961 (and tp!877562 (inv!43507 setElem!22961) e!1749317))))

(declare-fun setRest!22961 () (InoxSet Context!4622))

(assert (=> setNonEmpty!22961 (= (_2!19012 (h!37456 mapDefault!17306)) ((_ map or) (store ((as const (Array Context!4622 Bool)) false) setElem!22961 true) setRest!22961))))

(assert (= b!2773826 b!2773827))

(assert (= (and b!2773826 condSetEmpty!22961) setIsEmpty!22961))

(assert (= (and b!2773826 (not condSetEmpty!22961)) setNonEmpty!22961))

(assert (= setNonEmpty!22961 b!2773825))

(assert (= (and b!2773689 ((_ is Cons!32036) mapDefault!17306)) b!2773826))

(declare-fun m!3200553 () Bool)

(assert (=> b!2773826 m!3200553))

(declare-fun m!3200555 () Bool)

(assert (=> setNonEmpty!22961 m!3200555))

(declare-fun e!1749333 () Bool)

(declare-fun setElem!22966 () Context!4622)

(declare-fun tp!877591 () Bool)

(declare-fun setNonEmpty!22966 () Bool)

(declare-fun setRes!22967 () Bool)

(assert (=> setNonEmpty!22966 (= setRes!22967 (and tp!877591 (inv!43507 setElem!22966) e!1749333))))

(declare-fun mapValue!17312 () List!32136)

(declare-fun setRest!22967 () (InoxSet Context!4622))

(assert (=> setNonEmpty!22966 (= (_2!19012 (h!37456 mapValue!17312)) ((_ map or) (store ((as const (Array Context!4622 Bool)) false) setElem!22966 true) setRest!22967))))

(declare-fun mapNonEmpty!17312 () Bool)

(declare-fun mapRes!17312 () Bool)

(declare-fun tp!877583 () Bool)

(declare-fun e!1749334 () Bool)

(assert (=> mapNonEmpty!17312 (= mapRes!17312 (and tp!877583 e!1749334))))

(declare-fun mapKey!17312 () (_ BitVec 32))

(declare-fun mapRest!17312 () (Array (_ BitVec 32) List!32136))

(assert (=> mapNonEmpty!17312 (= mapRest!17305 (store mapRest!17312 mapKey!17312 mapValue!17312))))

(declare-fun condMapEmpty!17312 () Bool)

(declare-fun mapDefault!17312 () List!32136)

(assert (=> mapNonEmpty!17305 (= condMapEmpty!17312 (= mapRest!17305 ((as const (Array (_ BitVec 32) List!32136)) mapDefault!17312)))))

(declare-fun e!1749335 () Bool)

(assert (=> mapNonEmpty!17305 (= tp!877470 (and e!1749335 mapRes!17312))))

(declare-fun setRes!22966 () Bool)

(declare-fun tp!877589 () Bool)

(declare-fun e!1749332 () Bool)

(declare-fun b!2773842 () Bool)

(assert (=> b!2773842 (= e!1749335 (and (inv!43507 (_1!19011 (_1!19012 (h!37456 mapDefault!17312)))) e!1749332 tp_is_empty!14019 setRes!22966 tp!877589))))

(declare-fun condSetEmpty!22966 () Bool)

(assert (=> b!2773842 (= condSetEmpty!22966 (= (_2!19012 (h!37456 mapDefault!17312)) ((as const (Array Context!4622 Bool)) false)))))

(declare-fun b!2773843 () Bool)

(declare-fun tp!877584 () Bool)

(assert (=> b!2773843 (= e!1749332 tp!877584)))

(declare-fun b!2773844 () Bool)

(declare-fun tp!877587 () Bool)

(assert (=> b!2773844 (= e!1749333 tp!877587)))

(declare-fun b!2773845 () Bool)

(declare-fun e!1749331 () Bool)

(declare-fun tp!877586 () Bool)

(assert (=> b!2773845 (= e!1749331 tp!877586)))

(declare-fun setElem!22967 () Context!4622)

(declare-fun tp!877588 () Bool)

(declare-fun setNonEmpty!22967 () Bool)

(assert (=> setNonEmpty!22967 (= setRes!22966 (and tp!877588 (inv!43507 setElem!22967) e!1749331))))

(declare-fun setRest!22966 () (InoxSet Context!4622))

(assert (=> setNonEmpty!22967 (= (_2!19012 (h!37456 mapDefault!17312)) ((_ map or) (store ((as const (Array Context!4622 Bool)) false) setElem!22967 true) setRest!22966))))

(declare-fun setIsEmpty!22966 () Bool)

(assert (=> setIsEmpty!22966 setRes!22966))

(declare-fun mapIsEmpty!17312 () Bool)

(assert (=> mapIsEmpty!17312 mapRes!17312))

(declare-fun setIsEmpty!22967 () Bool)

(assert (=> setIsEmpty!22967 setRes!22967))

(declare-fun e!1749336 () Bool)

(declare-fun tp!877590 () Bool)

(declare-fun b!2773846 () Bool)

(assert (=> b!2773846 (= e!1749334 (and (inv!43507 (_1!19011 (_1!19012 (h!37456 mapValue!17312)))) e!1749336 tp_is_empty!14019 setRes!22967 tp!877590))))

(declare-fun condSetEmpty!22967 () Bool)

(assert (=> b!2773846 (= condSetEmpty!22967 (= (_2!19012 (h!37456 mapValue!17312)) ((as const (Array Context!4622 Bool)) false)))))

(declare-fun b!2773847 () Bool)

(declare-fun tp!877585 () Bool)

(assert (=> b!2773847 (= e!1749336 tp!877585)))

(assert (= (and mapNonEmpty!17305 condMapEmpty!17312) mapIsEmpty!17312))

(assert (= (and mapNonEmpty!17305 (not condMapEmpty!17312)) mapNonEmpty!17312))

(assert (= b!2773846 b!2773847))

(assert (= (and b!2773846 condSetEmpty!22967) setIsEmpty!22967))

(assert (= (and b!2773846 (not condSetEmpty!22967)) setNonEmpty!22966))

(assert (= setNonEmpty!22966 b!2773844))

(assert (= (and mapNonEmpty!17312 ((_ is Cons!32036) mapValue!17312)) b!2773846))

(assert (= b!2773842 b!2773843))

(assert (= (and b!2773842 condSetEmpty!22966) setIsEmpty!22966))

(assert (= (and b!2773842 (not condSetEmpty!22966)) setNonEmpty!22967))

(assert (= setNonEmpty!22967 b!2773845))

(assert (= (and mapNonEmpty!17305 ((_ is Cons!32036) mapDefault!17312)) b!2773842))

(declare-fun m!3200557 () Bool)

(assert (=> b!2773842 m!3200557))

(declare-fun m!3200559 () Bool)

(assert (=> setNonEmpty!22967 m!3200559))

(declare-fun m!3200561 () Bool)

(assert (=> setNonEmpty!22966 m!3200561))

(declare-fun m!3200563 () Bool)

(assert (=> mapNonEmpty!17312 m!3200563))

(declare-fun m!3200565 () Bool)

(assert (=> b!2773846 m!3200565))

(declare-fun b!2773848 () Bool)

(declare-fun e!1749338 () Bool)

(declare-fun tp!877595 () Bool)

(assert (=> b!2773848 (= e!1749338 tp!877595)))

(declare-fun tp!877594 () Bool)

(declare-fun e!1749339 () Bool)

(declare-fun setRes!22968 () Bool)

(declare-fun e!1749337 () Bool)

(declare-fun b!2773849 () Bool)

(assert (=> b!2773849 (= e!1749339 (and (inv!43507 (_1!19011 (_1!19012 (h!37456 mapValue!17306)))) e!1749337 tp_is_empty!14019 setRes!22968 tp!877594))))

(declare-fun condSetEmpty!22968 () Bool)

(assert (=> b!2773849 (= condSetEmpty!22968 (= (_2!19012 (h!37456 mapValue!17306)) ((as const (Array Context!4622 Bool)) false)))))

(declare-fun b!2773850 () Bool)

(declare-fun tp!877592 () Bool)

(assert (=> b!2773850 (= e!1749337 tp!877592)))

(declare-fun setIsEmpty!22968 () Bool)

(assert (=> setIsEmpty!22968 setRes!22968))

(assert (=> mapNonEmpty!17305 (= tp!877469 e!1749339)))

(declare-fun tp!877593 () Bool)

(declare-fun setNonEmpty!22968 () Bool)

(declare-fun setElem!22968 () Context!4622)

(assert (=> setNonEmpty!22968 (= setRes!22968 (and tp!877593 (inv!43507 setElem!22968) e!1749338))))

(declare-fun setRest!22968 () (InoxSet Context!4622))

(assert (=> setNonEmpty!22968 (= (_2!19012 (h!37456 mapValue!17306)) ((_ map or) (store ((as const (Array Context!4622 Bool)) false) setElem!22968 true) setRest!22968))))

(assert (= b!2773849 b!2773850))

(assert (= (and b!2773849 condSetEmpty!22968) setIsEmpty!22968))

(assert (= (and b!2773849 (not condSetEmpty!22968)) setNonEmpty!22968))

(assert (= setNonEmpty!22968 b!2773848))

(assert (= (and mapNonEmpty!17305 ((_ is Cons!32036) mapValue!17306)) b!2773849))

(declare-fun m!3200567 () Bool)

(assert (=> b!2773849 m!3200567))

(declare-fun m!3200569 () Bool)

(assert (=> setNonEmpty!22968 m!3200569))

(declare-fun b!2773851 () Bool)

(declare-fun e!1749341 () Bool)

(declare-fun tp!877599 () Bool)

(assert (=> b!2773851 (= e!1749341 tp!877599)))

(declare-fun e!1749340 () Bool)

(declare-fun tp!877598 () Bool)

(declare-fun setRes!22969 () Bool)

(declare-fun e!1749342 () Bool)

(declare-fun b!2773852 () Bool)

(assert (=> b!2773852 (= e!1749342 (and (inv!43507 (_1!19011 (_1!19012 (h!37456 (zeroValue!4053 (v!33644 (underlying!7791 (v!33645 (underlying!7792 (cache!3843 cacheUp!820)))))))))) e!1749340 tp_is_empty!14019 setRes!22969 tp!877598))))

(declare-fun condSetEmpty!22969 () Bool)

(assert (=> b!2773852 (= condSetEmpty!22969 (= (_2!19012 (h!37456 (zeroValue!4053 (v!33644 (underlying!7791 (v!33645 (underlying!7792 (cache!3843 cacheUp!820)))))))) ((as const (Array Context!4622 Bool)) false)))))

(declare-fun b!2773853 () Bool)

(declare-fun tp!877596 () Bool)

(assert (=> b!2773853 (= e!1749340 tp!877596)))

(declare-fun setIsEmpty!22969 () Bool)

(assert (=> setIsEmpty!22969 setRes!22969))

(assert (=> b!2773692 (= tp!877477 e!1749342)))

(declare-fun setElem!22969 () Context!4622)

(declare-fun setNonEmpty!22969 () Bool)

(declare-fun tp!877597 () Bool)

(assert (=> setNonEmpty!22969 (= setRes!22969 (and tp!877597 (inv!43507 setElem!22969) e!1749341))))

(declare-fun setRest!22969 () (InoxSet Context!4622))

(assert (=> setNonEmpty!22969 (= (_2!19012 (h!37456 (zeroValue!4053 (v!33644 (underlying!7791 (v!33645 (underlying!7792 (cache!3843 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4622 Bool)) false) setElem!22969 true) setRest!22969))))

(assert (= b!2773852 b!2773853))

(assert (= (and b!2773852 condSetEmpty!22969) setIsEmpty!22969))

(assert (= (and b!2773852 (not condSetEmpty!22969)) setNonEmpty!22969))

(assert (= setNonEmpty!22969 b!2773851))

(assert (= (and b!2773692 ((_ is Cons!32036) (zeroValue!4053 (v!33644 (underlying!7791 (v!33645 (underlying!7792 (cache!3843 cacheUp!820)))))))) b!2773852))

(declare-fun m!3200571 () Bool)

(assert (=> b!2773852 m!3200571))

(declare-fun m!3200573 () Bool)

(assert (=> setNonEmpty!22969 m!3200573))

(declare-fun b!2773854 () Bool)

(declare-fun e!1749344 () Bool)

(declare-fun tp!877603 () Bool)

(assert (=> b!2773854 (= e!1749344 tp!877603)))

(declare-fun b!2773855 () Bool)

(declare-fun tp!877602 () Bool)

(declare-fun setRes!22970 () Bool)

(declare-fun e!1749343 () Bool)

(declare-fun e!1749345 () Bool)

(assert (=> b!2773855 (= e!1749345 (and (inv!43507 (_1!19011 (_1!19012 (h!37456 (minValue!4053 (v!33644 (underlying!7791 (v!33645 (underlying!7792 (cache!3843 cacheUp!820)))))))))) e!1749343 tp_is_empty!14019 setRes!22970 tp!877602))))

(declare-fun condSetEmpty!22970 () Bool)

(assert (=> b!2773855 (= condSetEmpty!22970 (= (_2!19012 (h!37456 (minValue!4053 (v!33644 (underlying!7791 (v!33645 (underlying!7792 (cache!3843 cacheUp!820)))))))) ((as const (Array Context!4622 Bool)) false)))))

(declare-fun b!2773856 () Bool)

(declare-fun tp!877600 () Bool)

(assert (=> b!2773856 (= e!1749343 tp!877600)))

(declare-fun setIsEmpty!22970 () Bool)

(assert (=> setIsEmpty!22970 setRes!22970))

(assert (=> b!2773692 (= tp!877466 e!1749345)))

(declare-fun setNonEmpty!22970 () Bool)

(declare-fun setElem!22970 () Context!4622)

(declare-fun tp!877601 () Bool)

(assert (=> setNonEmpty!22970 (= setRes!22970 (and tp!877601 (inv!43507 setElem!22970) e!1749344))))

(declare-fun setRest!22970 () (InoxSet Context!4622))

(assert (=> setNonEmpty!22970 (= (_2!19012 (h!37456 (minValue!4053 (v!33644 (underlying!7791 (v!33645 (underlying!7792 (cache!3843 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4622 Bool)) false) setElem!22970 true) setRest!22970))))

(assert (= b!2773855 b!2773856))

(assert (= (and b!2773855 condSetEmpty!22970) setIsEmpty!22970))

(assert (= (and b!2773855 (not condSetEmpty!22970)) setNonEmpty!22970))

(assert (= setNonEmpty!22970 b!2773854))

(assert (= (and b!2773692 ((_ is Cons!32036) (minValue!4053 (v!33644 (underlying!7791 (v!33645 (underlying!7792 (cache!3843 cacheUp!820)))))))) b!2773855))

(declare-fun m!3200575 () Bool)

(assert (=> b!2773855 m!3200575))

(declare-fun m!3200577 () Bool)

(assert (=> setNonEmpty!22970 m!3200577))

(declare-fun tp!877612 () Bool)

(declare-fun e!1749350 () Bool)

(declare-fun tp!877610 () Bool)

(declare-fun b!2773865 () Bool)

(assert (=> b!2773865 (= e!1749350 (and (inv!43508 (left!24405 (c!450347 input!5495))) tp!877610 (inv!43508 (right!24735 (c!450347 input!5495))) tp!877612))))

(declare-fun b!2773867 () Bool)

(declare-fun e!1749351 () Bool)

(declare-fun tp!877611 () Bool)

(assert (=> b!2773867 (= e!1749351 tp!877611)))

(declare-fun b!2773866 () Bool)

(declare-fun inv!43514 (IArray!19951) Bool)

(assert (=> b!2773866 (= e!1749350 (and (inv!43514 (xs!13083 (c!450347 input!5495))) e!1749351))))

(assert (=> b!2773681 (= tp!877475 (and (inv!43508 (c!450347 input!5495)) e!1749350))))

(assert (= (and b!2773681 ((_ is Node!9973) (c!450347 input!5495))) b!2773865))

(assert (= b!2773866 b!2773867))

(assert (= (and b!2773681 ((_ is Leaf!15188) (c!450347 input!5495))) b!2773866))

(declare-fun m!3200579 () Bool)

(assert (=> b!2773865 m!3200579))

(declare-fun m!3200581 () Bool)

(assert (=> b!2773865 m!3200581))

(declare-fun m!3200583 () Bool)

(assert (=> b!2773866 m!3200583))

(assert (=> b!2773681 m!3200379))

(declare-fun tp!877617 () Bool)

(declare-fun setRes!22971 () Bool)

(declare-fun tp!877616 () Bool)

(declare-fun e!1749353 () Bool)

(declare-fun b!2773868 () Bool)

(declare-fun e!1749352 () Bool)

(assert (=> b!2773868 (= e!1749352 (and tp!877617 (inv!43507 (_2!19013 (_1!19014 (h!37457 mapDefault!17305)))) e!1749353 tp_is_empty!14019 setRes!22971 tp!877616))))

(declare-fun condSetEmpty!22971 () Bool)

(assert (=> b!2773868 (= condSetEmpty!22971 (= (_2!19014 (h!37457 mapDefault!17305)) ((as const (Array Context!4622 Bool)) false)))))

(declare-fun b!2773869 () Bool)

(declare-fun tp!877615 () Bool)

(assert (=> b!2773869 (= e!1749353 tp!877615)))

(declare-fun setIsEmpty!22971 () Bool)

(assert (=> setIsEmpty!22971 setRes!22971))

(assert (=> b!2773694 (= tp!877468 e!1749352)))

(declare-fun b!2773870 () Bool)

(declare-fun e!1749354 () Bool)

(declare-fun tp!877613 () Bool)

(assert (=> b!2773870 (= e!1749354 tp!877613)))

(declare-fun setElem!22971 () Context!4622)

(declare-fun setNonEmpty!22971 () Bool)

(declare-fun tp!877614 () Bool)

(assert (=> setNonEmpty!22971 (= setRes!22971 (and tp!877614 (inv!43507 setElem!22971) e!1749354))))

(declare-fun setRest!22971 () (InoxSet Context!4622))

(assert (=> setNonEmpty!22971 (= (_2!19014 (h!37457 mapDefault!17305)) ((_ map or) (store ((as const (Array Context!4622 Bool)) false) setElem!22971 true) setRest!22971))))

(assert (= b!2773868 b!2773869))

(assert (= (and b!2773868 condSetEmpty!22971) setIsEmpty!22971))

(assert (= (and b!2773868 (not condSetEmpty!22971)) setNonEmpty!22971))

(assert (= setNonEmpty!22971 b!2773870))

(assert (= (and b!2773694 ((_ is Cons!32037) mapDefault!17305)) b!2773868))

(declare-fun m!3200585 () Bool)

(assert (=> b!2773868 m!3200585))

(declare-fun m!3200587 () Bool)

(assert (=> setNonEmpty!22971 m!3200587))

(check-sat (not b!2773816) (not b_next!79019) (not b!2773767) (not b!2773852) (not b_next!79015) (not d!806385) (not setNonEmpty!22971) (not b!2773854) (not b!2773827) (not b!2773784) (not setNonEmpty!22961) (not b!2773866) (not b!2773746) (not b!2773846) (not bm!181323) (not bm!181322) (not d!806379) (not bm!181328) (not b!2773842) (not d!806387) (not b!2773867) (not b!2773733) (not b!2773845) (not bm!181329) (not b!2773786) (not setNonEmpty!22957) (not b!2773848) (not b!2773849) (not setNonEmpty!22969) (not d!806367) (not mapNonEmpty!17312) (not b!2773799) (not setNonEmpty!22967) b_and!203053 (not d!806395) (not b!2773798) (not b_next!79013) (not b!2773856) (not d!806383) (not d!806399) (not b!2773788) (not b!2773826) (not b!2773787) (not d!806397) (not b!2773868) (not b!2773850) (not b!2773844) (not d!806405) (not d!806403) (not setNonEmpty!22953) (not b!2773789) (not d!806401) (not b!2773707) (not b!2773843) (not b!2773805) (not b!2773681) (not setNonEmpty!22958) (not setNonEmpty!22956) b_and!203047 (not b!2773814) (not b!2773800) (not b!2773847) (not b!2773760) (not b_next!79017) (not b!2773870) (not b!2773865) (not b!2773741) (not b!2773812) (not b!2773768) b_and!203049 (not b!2773705) (not d!806381) b_and!203051 (not bm!181327) (not bm!181326) (not b!2773855) (not setNonEmpty!22950) tp_is_empty!14019 (not b!2773769) (not d!806407) (not setNonEmpty!22949) (not b!2773853) (not b!2773851) (not b!2773815) (not mapNonEmpty!17309) (not b!2773810) (not b!2773811) (not b!2773825) (not b!2773749) (not setNonEmpty!22970) (not bm!181324) (not b!2773869) (not setNonEmpty!22966) (not bm!181330) (not b!2773766) (not b!2773813) (not d!806393) (not bm!181331) (not b!2773785) (not bm!181325) (not b!2773759) (not b!2773742) (not setNonEmpty!22968))
(check-sat (not b_next!79019) b_and!203053 (not b_next!79013) b_and!203047 b_and!203051 (not b_next!79015) (not b_next!79017) b_and!203049)
