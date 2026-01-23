; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228328 () Bool)

(assert start!228328)

(declare-fun b!2314559 () Bool)

(declare-fun b_free!70141 () Bool)

(declare-fun b_next!70845 () Bool)

(assert (=> b!2314559 (= b_free!70141 (not b_next!70845))))

(declare-fun tp!735148 () Bool)

(declare-fun b_and!185041 () Bool)

(assert (=> b!2314559 (= tp!735148 b_and!185041)))

(declare-fun b!2314571 () Bool)

(declare-fun b_free!70143 () Bool)

(declare-fun b_next!70847 () Bool)

(assert (=> b!2314571 (= b_free!70143 (not b_next!70847))))

(declare-fun tp!735155 () Bool)

(declare-fun b_and!185043 () Bool)

(assert (=> b!2314571 (= tp!735155 b_and!185043)))

(declare-fun b!2314556 () Bool)

(declare-fun b_free!70145 () Bool)

(declare-fun b_next!70849 () Bool)

(assert (=> b!2314556 (= b_free!70145 (not b_next!70849))))

(declare-fun tp!735149 () Bool)

(declare-fun b_and!185045 () Bool)

(assert (=> b!2314556 (= tp!735149 b_and!185045)))

(declare-fun b!2314572 () Bool)

(declare-fun b_free!70147 () Bool)

(declare-fun b_next!70851 () Bool)

(assert (=> b!2314572 (= b_free!70147 (not b_next!70851))))

(declare-fun tp!735146 () Bool)

(declare-fun b_and!185047 () Bool)

(assert (=> b!2314572 (= tp!735146 b_and!185047)))

(declare-fun b!2314555 () Bool)

(declare-fun e!1483875 () Bool)

(declare-fun e!1483881 () Bool)

(assert (=> b!2314555 (= e!1483875 e!1483881)))

(declare-fun setIsEmpty!20857 () Bool)

(declare-fun setRes!20857 () Bool)

(assert (=> setIsEmpty!20857 setRes!20857))

(declare-fun e!1483887 () Bool)

(declare-fun e!1483880 () Bool)

(assert (=> b!2314556 (= e!1483887 (and e!1483880 tp!735149))))

(declare-fun b!2314557 () Bool)

(declare-fun e!1483885 () Bool)

(declare-fun e!1483888 () Bool)

(assert (=> b!2314557 (= e!1483885 e!1483888)))

(declare-fun res!989023 () Bool)

(assert (=> b!2314557 (=> (not res!989023) (not e!1483888))))

(declare-fun lt!858093 () Int)

(declare-fun totalInputSize!275 () Int)

(declare-fun from!1022 () Int)

(assert (=> b!2314557 (= res!989023 (and (<= from!1022 lt!858093) (= totalInputSize!275 lt!858093) (not (= from!1022 totalInputSize!275))))))

(declare-datatypes ((C!13728 0))(
  ( (C!13729 (val!7920 Int)) )
))
(declare-datatypes ((List!27697 0))(
  ( (Nil!27599) (Cons!27599 (h!33000 C!13728) (t!207297 List!27697)) )
))
(declare-datatypes ((IArray!18033 0))(
  ( (IArray!18034 (innerList!9074 List!27697)) )
))
(declare-datatypes ((Conc!9014 0))(
  ( (Node!9014 (left!20917 Conc!9014) (right!21247 Conc!9014) (csize!18258 Int) (cheight!9225 Int)) (Leaf!13230 (xs!11956 IArray!18033) (csize!18259 Int)) (Empty!9014) )
))
(declare-datatypes ((BalanceConc!17760 0))(
  ( (BalanceConc!17761 (c!366847 Conc!9014)) )
))
(declare-fun totalInput!830 () BalanceConc!17760)

(declare-fun size!21814 (BalanceConc!17760) Int)

(assert (=> b!2314557 (= lt!858093 (size!21814 totalInput!830))))

(declare-fun res!989022 () Bool)

(assert (=> start!228328 (=> (not res!989022) (not e!1483885))))

(assert (=> start!228328 (= res!989022 (>= from!1022 0))))

(assert (=> start!228328 e!1483885))

(declare-fun e!1483878 () Bool)

(declare-fun inv!37373 (BalanceConc!17760) Bool)

(assert (=> start!228328 (and (inv!37373 totalInput!830) e!1483878)))

(assert (=> start!228328 true))

(declare-datatypes ((array!11236 0))(
  ( (array!11237 (arr!4985 (Array (_ BitVec 32) (_ BitVec 64))) (size!21815 (_ BitVec 32))) )
))
(declare-datatypes ((Regex!6785 0))(
  ( (ElementMatch!6785 (c!366848 C!13728)) (Concat!11373 (regOne!14082 Regex!6785) (regTwo!14082 Regex!6785)) (EmptyExpr!6785) (Star!6785 (reg!7114 Regex!6785)) (EmptyLang!6785) (Union!6785 (regOne!14083 Regex!6785) (regTwo!14083 Regex!6785)) )
))
(declare-datatypes ((List!27698 0))(
  ( (Nil!27600) (Cons!27600 (h!33001 Regex!6785) (t!207298 List!27698)) )
))
(declare-datatypes ((Context!4214 0))(
  ( (Context!4215 (exprs!2607 List!27698)) )
))
(declare-datatypes ((tuple3!4126 0))(
  ( (tuple3!4127 (_1!16310 Regex!6785) (_2!16310 Context!4214) (_3!2533 C!13728)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!27554 0))(
  ( (tuple2!27555 (_1!16311 tuple3!4126) (_2!16311 (InoxSet Context!4214))) )
))
(declare-datatypes ((List!27699 0))(
  ( (Nil!27601) (Cons!27601 (h!33002 tuple2!27554) (t!207299 List!27699)) )
))
(declare-datatypes ((array!11238 0))(
  ( (array!11239 (arr!4986 (Array (_ BitVec 32) List!27699)) (size!21816 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6410 0))(
  ( (LongMapFixedSize!6411 (defaultEntry!3570 Int) (mask!7969 (_ BitVec 32)) (extraKeys!3453 (_ BitVec 32)) (zeroValue!3463 List!27699) (minValue!3463 List!27699) (_size!6457 (_ BitVec 32)) (_keys!3502 array!11236) (_values!3485 array!11238) (_vacant!3266 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12637 0))(
  ( (Cell!12638 (v!30650 LongMapFixedSize!6410)) )
))
(declare-datatypes ((Hashable!3115 0))(
  ( (HashableExt!3114 (__x!18317 Int)) )
))
(declare-datatypes ((MutLongMap!3205 0))(
  ( (LongMap!3205 (underlying!6615 Cell!12637)) (MutLongMapExt!3204 (__x!18318 Int)) )
))
(declare-datatypes ((Cell!12639 0))(
  ( (Cell!12640 (v!30651 MutLongMap!3205)) )
))
(declare-datatypes ((MutableMap!3115 0))(
  ( (MutableMapExt!3114 (__x!18319 Int)) (HashMap!3115 (underlying!6616 Cell!12639) (hashF!5038 Hashable!3115) (_size!6458 (_ BitVec 32)) (defaultValue!3277 Int)) )
))
(declare-datatypes ((CacheDown!2174 0))(
  ( (CacheDown!2175 (cache!3494 MutableMap!3115)) )
))
(declare-fun cacheDown!1084 () CacheDown!2174)

(declare-fun inv!37374 (CacheDown!2174) Bool)

(assert (=> start!228328 (and (inv!37374 cacheDown!1084) e!1483875)))

(declare-datatypes ((tuple2!27556 0))(
  ( (tuple2!27557 (_1!16312 Context!4214) (_2!16312 C!13728)) )
))
(declare-datatypes ((tuple2!27558 0))(
  ( (tuple2!27559 (_1!16313 tuple2!27556) (_2!16313 (InoxSet Context!4214))) )
))
(declare-datatypes ((List!27700 0))(
  ( (Nil!27602) (Cons!27602 (h!33003 tuple2!27558) (t!207300 List!27700)) )
))
(declare-datatypes ((array!11240 0))(
  ( (array!11241 (arr!4987 (Array (_ BitVec 32) List!27700)) (size!21817 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6412 0))(
  ( (LongMapFixedSize!6413 (defaultEntry!3571 Int) (mask!7970 (_ BitVec 32)) (extraKeys!3454 (_ BitVec 32)) (zeroValue!3464 List!27700) (minValue!3464 List!27700) (_size!6459 (_ BitVec 32)) (_keys!3503 array!11236) (_values!3486 array!11240) (_vacant!3267 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12641 0))(
  ( (Cell!12642 (v!30652 LongMapFixedSize!6412)) )
))
(declare-datatypes ((Hashable!3116 0))(
  ( (HashableExt!3115 (__x!18320 Int)) )
))
(declare-datatypes ((MutLongMap!3206 0))(
  ( (LongMap!3206 (underlying!6617 Cell!12641)) (MutLongMapExt!3205 (__x!18321 Int)) )
))
(declare-datatypes ((Cell!12643 0))(
  ( (Cell!12644 (v!30653 MutLongMap!3206)) )
))
(declare-datatypes ((MutableMap!3116 0))(
  ( (MutableMapExt!3115 (__x!18322 Int)) (HashMap!3116 (underlying!6618 Cell!12643) (hashF!5039 Hashable!3116) (_size!6460 (_ BitVec 32)) (defaultValue!3278 Int)) )
))
(declare-datatypes ((CacheUp!2072 0))(
  ( (CacheUp!2073 (cache!3495 MutableMap!3116)) )
))
(declare-fun cacheUp!965 () CacheUp!2072)

(declare-fun e!1483877 () Bool)

(declare-fun inv!37375 (CacheUp!2072) Bool)

(assert (=> start!228328 (and (inv!37375 cacheUp!965) e!1483877)))

(declare-fun condSetEmpty!20857 () Bool)

(declare-fun z!3800 () (InoxSet Context!4214))

(assert (=> start!228328 (= condSetEmpty!20857 (= z!3800 ((as const (Array Context!4214 Bool)) false)))))

(assert (=> start!228328 setRes!20857))

(declare-fun setNonEmpty!20857 () Bool)

(declare-fun e!1483869 () Bool)

(declare-fun setElem!20857 () Context!4214)

(declare-fun tp!735141 () Bool)

(declare-fun inv!37376 (Context!4214) Bool)

(assert (=> setNonEmpty!20857 (= setRes!20857 (and tp!735141 (inv!37376 setElem!20857) e!1483869))))

(declare-fun setRest!20857 () (InoxSet Context!4214))

(assert (=> setNonEmpty!20857 (= z!3800 ((_ map or) (store ((as const (Array Context!4214 Bool)) false) setElem!20857 true) setRest!20857))))

(declare-fun b!2314558 () Bool)

(declare-fun res!989021 () Bool)

(assert (=> b!2314558 (=> (not res!989021) (not e!1483888))))

(declare-fun lostCauseZipper!407 ((InoxSet Context!4214)) Bool)

(assert (=> b!2314558 (= res!989021 (not (lostCauseZipper!407 z!3800)))))

(declare-fun e!1483886 () Bool)

(declare-fun e!1483874 () Bool)

(declare-fun tp!735156 () Bool)

(declare-fun tp!735152 () Bool)

(declare-fun array_inv!3583 (array!11236) Bool)

(declare-fun array_inv!3584 (array!11240) Bool)

(assert (=> b!2314559 (= e!1483886 (and tp!735148 tp!735152 tp!735156 (array_inv!3583 (_keys!3503 (v!30652 (underlying!6617 (v!30653 (underlying!6618 (cache!3495 cacheUp!965))))))) (array_inv!3584 (_values!3486 (v!30652 (underlying!6617 (v!30653 (underlying!6618 (cache!3495 cacheUp!965))))))) e!1483874))))

(declare-fun b!2314560 () Bool)

(declare-fun e!1483882 () Bool)

(declare-fun e!1483871 () Bool)

(assert (=> b!2314560 (= e!1483882 e!1483871)))

(declare-fun mapNonEmpty!14998 () Bool)

(declare-fun mapRes!14999 () Bool)

(declare-fun tp!735144 () Bool)

(declare-fun tp!735151 () Bool)

(assert (=> mapNonEmpty!14998 (= mapRes!14999 (and tp!735144 tp!735151))))

(declare-fun mapKey!14998 () (_ BitVec 32))

(declare-fun mapValue!14999 () List!27700)

(declare-fun mapRest!14999 () (Array (_ BitVec 32) List!27700))

(assert (=> mapNonEmpty!14998 (= (arr!4987 (_values!3486 (v!30652 (underlying!6617 (v!30653 (underlying!6618 (cache!3495 cacheUp!965))))))) (store mapRest!14999 mapKey!14998 mapValue!14999))))

(declare-fun b!2314561 () Bool)

(declare-fun tp!735153 () Bool)

(assert (=> b!2314561 (= e!1483874 (and tp!735153 mapRes!14999))))

(declare-fun condMapEmpty!14998 () Bool)

(declare-fun mapDefault!14998 () List!27700)

(assert (=> b!2314561 (= condMapEmpty!14998 (= (arr!4987 (_values!3486 (v!30652 (underlying!6617 (v!30653 (underlying!6618 (cache!3495 cacheUp!965))))))) ((as const (Array (_ BitVec 32) List!27700)) mapDefault!14998)))))

(declare-fun b!2314562 () Bool)

(declare-fun e!1483884 () Bool)

(assert (=> b!2314562 (= e!1483884 e!1483886)))

(declare-fun b!2314563 () Bool)

(assert (=> b!2314563 (= e!1483888 (and (>= (+ 1 from!1022) 0) (<= (+ 1 from!1022) lt!858093) (>= (- lt!858093 (+ 1 from!1022)) (- lt!858093 from!1022))))))

(declare-datatypes ((tuple3!4128 0))(
  ( (tuple3!4129 (_1!16314 (InoxSet Context!4214)) (_2!16314 CacheUp!2072) (_3!2534 CacheDown!2174)) )
))
(declare-fun lt!858094 () tuple3!4128)

(declare-fun derivationStepZipperMem!69 ((InoxSet Context!4214) C!13728 CacheUp!2072 CacheDown!2174) tuple3!4128)

(declare-fun apply!6684 (BalanceConc!17760 Int) C!13728)

(assert (=> b!2314563 (= lt!858094 (derivationStepZipperMem!69 z!3800 (apply!6684 totalInput!830 from!1022) cacheUp!965 cacheDown!1084))))

(declare-fun b!2314564 () Bool)

(declare-fun tp!735154 () Bool)

(assert (=> b!2314564 (= e!1483869 tp!735154)))

(declare-fun mapNonEmpty!14999 () Bool)

(declare-fun mapRes!14998 () Bool)

(declare-fun tp!735143 () Bool)

(declare-fun tp!735150 () Bool)

(assert (=> mapNonEmpty!14999 (= mapRes!14998 (and tp!735143 tp!735150))))

(declare-fun mapRest!14998 () (Array (_ BitVec 32) List!27699))

(declare-fun mapValue!14998 () List!27699)

(declare-fun mapKey!14999 () (_ BitVec 32))

(assert (=> mapNonEmpty!14999 (= (arr!4986 (_values!3485 (v!30650 (underlying!6615 (v!30651 (underlying!6616 (cache!3494 cacheDown!1084))))))) (store mapRest!14998 mapKey!14999 mapValue!14998))))

(declare-fun mapIsEmpty!14998 () Bool)

(assert (=> mapIsEmpty!14998 mapRes!14998))

(declare-fun b!2314565 () Bool)

(declare-fun e!1483872 () Bool)

(declare-fun e!1483870 () Bool)

(declare-fun lt!858095 () MutLongMap!3205)

(get-info :version)

(assert (=> b!2314565 (= e!1483872 (and e!1483870 ((_ is LongMap!3205) lt!858095)))))

(assert (=> b!2314565 (= lt!858095 (v!30651 (underlying!6616 (cache!3494 cacheDown!1084))))))

(declare-fun b!2314566 () Bool)

(declare-fun e!1483879 () Bool)

(declare-fun tp!735145 () Bool)

(assert (=> b!2314566 (= e!1483879 (and tp!735145 mapRes!14998))))

(declare-fun condMapEmpty!14999 () Bool)

(declare-fun mapDefault!14999 () List!27699)

(assert (=> b!2314566 (= condMapEmpty!14999 (= (arr!4986 (_values!3485 (v!30650 (underlying!6615 (v!30651 (underlying!6616 (cache!3494 cacheDown!1084))))))) ((as const (Array (_ BitVec 32) List!27699)) mapDefault!14999)))))

(declare-fun b!2314567 () Bool)

(assert (=> b!2314567 (= e!1483870 e!1483882)))

(declare-fun b!2314568 () Bool)

(declare-fun e!1483873 () Bool)

(declare-fun lt!858092 () MutLongMap!3206)

(assert (=> b!2314568 (= e!1483880 (and e!1483873 ((_ is LongMap!3206) lt!858092)))))

(assert (=> b!2314568 (= lt!858092 (v!30653 (underlying!6618 (cache!3495 cacheUp!965))))))

(declare-fun b!2314569 () Bool)

(assert (=> b!2314569 (= e!1483877 e!1483887)))

(declare-fun b!2314570 () Bool)

(assert (=> b!2314570 (= e!1483873 e!1483884)))

(declare-fun tp!735142 () Bool)

(declare-fun tp!735147 () Bool)

(declare-fun array_inv!3585 (array!11238) Bool)

(assert (=> b!2314571 (= e!1483871 (and tp!735155 tp!735147 tp!735142 (array_inv!3583 (_keys!3502 (v!30650 (underlying!6615 (v!30651 (underlying!6616 (cache!3494 cacheDown!1084))))))) (array_inv!3585 (_values!3485 (v!30650 (underlying!6615 (v!30651 (underlying!6616 (cache!3494 cacheDown!1084))))))) e!1483879))))

(assert (=> b!2314572 (= e!1483881 (and e!1483872 tp!735146))))

(declare-fun b!2314573 () Bool)

(declare-fun tp!735140 () Bool)

(declare-fun inv!37377 (Conc!9014) Bool)

(assert (=> b!2314573 (= e!1483878 (and (inv!37377 (c!366847 totalInput!830)) tp!735140))))

(declare-fun mapIsEmpty!14999 () Bool)

(assert (=> mapIsEmpty!14999 mapRes!14999))

(assert (= (and start!228328 res!989022) b!2314557))

(assert (= (and b!2314557 res!989023) b!2314558))

(assert (= (and b!2314558 res!989021) b!2314563))

(assert (= start!228328 b!2314573))

(assert (= (and b!2314566 condMapEmpty!14999) mapIsEmpty!14998))

(assert (= (and b!2314566 (not condMapEmpty!14999)) mapNonEmpty!14999))

(assert (= b!2314571 b!2314566))

(assert (= b!2314560 b!2314571))

(assert (= b!2314567 b!2314560))

(assert (= (and b!2314565 ((_ is LongMap!3205) (v!30651 (underlying!6616 (cache!3494 cacheDown!1084))))) b!2314567))

(assert (= b!2314572 b!2314565))

(assert (= (and b!2314555 ((_ is HashMap!3115) (cache!3494 cacheDown!1084))) b!2314572))

(assert (= start!228328 b!2314555))

(assert (= (and b!2314561 condMapEmpty!14998) mapIsEmpty!14999))

(assert (= (and b!2314561 (not condMapEmpty!14998)) mapNonEmpty!14998))

(assert (= b!2314559 b!2314561))

(assert (= b!2314562 b!2314559))

(assert (= b!2314570 b!2314562))

(assert (= (and b!2314568 ((_ is LongMap!3206) (v!30653 (underlying!6618 (cache!3495 cacheUp!965))))) b!2314570))

(assert (= b!2314556 b!2314568))

(assert (= (and b!2314569 ((_ is HashMap!3116) (cache!3495 cacheUp!965))) b!2314556))

(assert (= start!228328 b!2314569))

(assert (= (and start!228328 condSetEmpty!20857) setIsEmpty!20857))

(assert (= (and start!228328 (not condSetEmpty!20857)) setNonEmpty!20857))

(assert (= setNonEmpty!20857 b!2314564))

(declare-fun m!2741451 () Bool)

(assert (=> start!228328 m!2741451))

(declare-fun m!2741453 () Bool)

(assert (=> start!228328 m!2741453))

(declare-fun m!2741455 () Bool)

(assert (=> start!228328 m!2741455))

(declare-fun m!2741457 () Bool)

(assert (=> b!2314557 m!2741457))

(declare-fun m!2741459 () Bool)

(assert (=> b!2314559 m!2741459))

(declare-fun m!2741461 () Bool)

(assert (=> b!2314559 m!2741461))

(declare-fun m!2741463 () Bool)

(assert (=> b!2314571 m!2741463))

(declare-fun m!2741465 () Bool)

(assert (=> b!2314571 m!2741465))

(declare-fun m!2741467 () Bool)

(assert (=> mapNonEmpty!14998 m!2741467))

(declare-fun m!2741469 () Bool)

(assert (=> mapNonEmpty!14999 m!2741469))

(declare-fun m!2741471 () Bool)

(assert (=> b!2314563 m!2741471))

(assert (=> b!2314563 m!2741471))

(declare-fun m!2741473 () Bool)

(assert (=> b!2314563 m!2741473))

(declare-fun m!2741475 () Bool)

(assert (=> b!2314558 m!2741475))

(declare-fun m!2741477 () Bool)

(assert (=> b!2314573 m!2741477))

(declare-fun m!2741479 () Bool)

(assert (=> setNonEmpty!20857 m!2741479))

(check-sat b_and!185045 (not mapNonEmpty!14999) (not b!2314573) (not b!2314563) (not b!2314564) (not b!2314559) b_and!185043 (not start!228328) (not b!2314557) b_and!185047 (not b_next!70845) (not b!2314571) (not b!2314561) b_and!185041 (not b!2314558) (not setNonEmpty!20857) (not mapNonEmpty!14998) (not b_next!70847) (not b_next!70849) (not b!2314566) (not b_next!70851))
(check-sat b_and!185045 b_and!185043 b_and!185047 (not b_next!70845) b_and!185041 (not b_next!70851) (not b_next!70847) (not b_next!70849))
