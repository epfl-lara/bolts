; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228140 () Bool)

(assert start!228140)

(declare-fun b!2312797 () Bool)

(declare-fun b_free!70029 () Bool)

(declare-fun b_next!70733 () Bool)

(assert (=> b!2312797 (= b_free!70029 (not b_next!70733))))

(declare-fun tp!733901 () Bool)

(declare-fun b_and!184929 () Bool)

(assert (=> b!2312797 (= tp!733901 b_and!184929)))

(declare-fun b!2312802 () Bool)

(declare-fun b_free!70031 () Bool)

(declare-fun b_next!70735 () Bool)

(assert (=> b!2312802 (= b_free!70031 (not b_next!70735))))

(declare-fun tp!733904 () Bool)

(declare-fun b_and!184931 () Bool)

(assert (=> b!2312802 (= tp!733904 b_and!184931)))

(declare-fun b!2312809 () Bool)

(declare-fun b_free!70033 () Bool)

(declare-fun b_next!70737 () Bool)

(assert (=> b!2312809 (= b_free!70033 (not b_next!70737))))

(declare-fun tp!733907 () Bool)

(declare-fun b_and!184933 () Bool)

(assert (=> b!2312809 (= tp!733907 b_and!184933)))

(declare-fun b!2312807 () Bool)

(declare-fun b_free!70035 () Bool)

(declare-fun b_next!70739 () Bool)

(assert (=> b!2312807 (= b_free!70035 (not b_next!70739))))

(declare-fun tp!733909 () Bool)

(declare-fun b_and!184935 () Bool)

(assert (=> b!2312807 (= tp!733909 b_and!184935)))

(declare-fun b!2312793 () Bool)

(declare-fun e!1482362 () Bool)

(declare-fun e!1482367 () Bool)

(declare-datatypes ((array!11151 0))(
  ( (array!11152 (arr!4947 (Array (_ BitVec 32) (_ BitVec 64))) (size!21749 (_ BitVec 32))) )
))
(declare-datatypes ((C!13684 0))(
  ( (C!13685 (val!7898 Int)) )
))
(declare-datatypes ((Regex!6767 0))(
  ( (ElementMatch!6767 (c!366686 C!13684)) (Concat!11355 (regOne!14046 Regex!6767) (regTwo!14046 Regex!6767)) (EmptyExpr!6767) (Star!6767 (reg!7096 Regex!6767)) (EmptyLang!6767) (Union!6767 (regOne!14047 Regex!6767) (regTwo!14047 Regex!6767)) )
))
(declare-datatypes ((List!27636 0))(
  ( (Nil!27538) (Cons!27538 (h!32939 Regex!6767) (t!207229 List!27636)) )
))
(declare-datatypes ((Context!4178 0))(
  ( (Context!4179 (exprs!2589 List!27636)) )
))
(declare-datatypes ((tuple2!27468 0))(
  ( (tuple2!27469 (_1!16248 Context!4178) (_2!16248 C!13684)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!27470 0))(
  ( (tuple2!27471 (_1!16249 tuple2!27468) (_2!16249 (InoxSet Context!4178))) )
))
(declare-datatypes ((List!27637 0))(
  ( (Nil!27539) (Cons!27539 (h!32940 tuple2!27470) (t!207230 List!27637)) )
))
(declare-datatypes ((array!11153 0))(
  ( (array!11154 (arr!4948 (Array (_ BitVec 32) List!27637)) (size!21750 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6362 0))(
  ( (LongMapFixedSize!6363 (defaultEntry!3546 Int) (mask!7934 (_ BitVec 32)) (extraKeys!3429 (_ BitVec 32)) (zeroValue!3439 List!27637) (minValue!3439 List!27637) (_size!6409 (_ BitVec 32)) (_keys!3478 array!11151) (_values!3461 array!11153) (_vacant!3242 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12541 0))(
  ( (Cell!12542 (v!30601 LongMapFixedSize!6362)) )
))
(declare-datatypes ((MutLongMap!3181 0))(
  ( (LongMap!3181 (underlying!6567 Cell!12541)) (MutLongMapExt!3180 (__x!18245 Int)) )
))
(declare-fun lt!857742 () MutLongMap!3181)

(get-info :version)

(assert (=> b!2312793 (= e!1482362 (and e!1482367 ((_ is LongMap!3181) lt!857742)))))

(declare-datatypes ((Cell!12543 0))(
  ( (Cell!12544 (v!30602 MutLongMap!3181)) )
))
(declare-datatypes ((Hashable!3091 0))(
  ( (HashableExt!3090 (__x!18246 Int)) )
))
(declare-datatypes ((MutableMap!3091 0))(
  ( (MutableMapExt!3090 (__x!18247 Int)) (HashMap!3091 (underlying!6568 Cell!12543) (hashF!5014 Hashable!3091) (_size!6410 (_ BitVec 32)) (defaultValue!3253 Int)) )
))
(declare-datatypes ((CacheUp!2044 0))(
  ( (CacheUp!2045 (cache!3470 MutableMap!3091)) )
))
(declare-fun cacheUp!937 () CacheUp!2044)

(assert (=> b!2312793 (= lt!857742 (v!30602 (underlying!6568 (cache!3470 cacheUp!937))))))

(declare-fun b!2312794 () Bool)

(declare-fun e!1482368 () Bool)

(declare-fun tp!733895 () Bool)

(declare-fun mapRes!14897 () Bool)

(assert (=> b!2312794 (= e!1482368 (and tp!733895 mapRes!14897))))

(declare-fun condMapEmpty!14896 () Bool)

(declare-datatypes ((tuple3!4088 0))(
  ( (tuple3!4089 (_1!16250 Regex!6767) (_2!16250 Context!4178) (_3!2514 C!13684)) )
))
(declare-datatypes ((tuple2!27472 0))(
  ( (tuple2!27473 (_1!16251 tuple3!4088) (_2!16251 (InoxSet Context!4178))) )
))
(declare-datatypes ((List!27638 0))(
  ( (Nil!27540) (Cons!27540 (h!32941 tuple2!27472) (t!207231 List!27638)) )
))
(declare-datatypes ((array!11155 0))(
  ( (array!11156 (arr!4949 (Array (_ BitVec 32) List!27638)) (size!21751 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6364 0))(
  ( (LongMapFixedSize!6365 (defaultEntry!3547 Int) (mask!7935 (_ BitVec 32)) (extraKeys!3430 (_ BitVec 32)) (zeroValue!3440 List!27638) (minValue!3440 List!27638) (_size!6411 (_ BitVec 32)) (_keys!3479 array!11151) (_values!3462 array!11155) (_vacant!3243 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12545 0))(
  ( (Cell!12546 (v!30603 LongMapFixedSize!6364)) )
))
(declare-datatypes ((MutLongMap!3182 0))(
  ( (LongMap!3182 (underlying!6569 Cell!12545)) (MutLongMapExt!3181 (__x!18248 Int)) )
))
(declare-datatypes ((Cell!12547 0))(
  ( (Cell!12548 (v!30604 MutLongMap!3182)) )
))
(declare-datatypes ((Hashable!3092 0))(
  ( (HashableExt!3091 (__x!18249 Int)) )
))
(declare-datatypes ((MutableMap!3092 0))(
  ( (MutableMapExt!3091 (__x!18250 Int)) (HashMap!3092 (underlying!6570 Cell!12547) (hashF!5015 Hashable!3092) (_size!6412 (_ BitVec 32)) (defaultValue!3254 Int)) )
))
(declare-datatypes ((CacheDown!2154 0))(
  ( (CacheDown!2155 (cache!3471 MutableMap!3092)) )
))
(declare-fun cacheDown!1056 () CacheDown!2154)

(declare-fun mapDefault!14897 () List!27638)

(assert (=> b!2312794 (= condMapEmpty!14896 (= (arr!4949 (_values!3462 (v!30603 (underlying!6569 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056))))))) ((as const (Array (_ BitVec 32) List!27638)) mapDefault!14897)))))

(declare-fun b!2312795 () Bool)

(declare-fun e!1482365 () Bool)

(declare-fun e!1482357 () Bool)

(assert (=> b!2312795 (= e!1482365 (not e!1482357))))

(declare-fun res!988596 () Bool)

(assert (=> b!2312795 (=> res!988596 e!1482357)))

(declare-datatypes ((List!27639 0))(
  ( (Nil!27541) (Cons!27541 (h!32942 C!13684) (t!207232 List!27639)) )
))
(declare-datatypes ((IArray!17997 0))(
  ( (IArray!17998 (innerList!9056 List!27639)) )
))
(declare-datatypes ((Conc!8996 0))(
  ( (Node!8996 (left!20888 Conc!8996) (right!21218 Conc!8996) (csize!18222 Int) (cheight!9207 Int)) (Leaf!13201 (xs!11938 IArray!17997) (csize!18223 Int)) (Empty!8996) )
))
(declare-datatypes ((BalanceConc!17724 0))(
  ( (BalanceConc!17725 (c!366687 Conc!8996)) )
))
(declare-fun input!5503 () BalanceConc!17724)

(declare-fun isBalanced!2706 (Conc!8996) Bool)

(assert (=> b!2312795 (= res!988596 (not (isBalanced!2706 (c!366687 input!5503))))))

(declare-fun e!1482370 () Bool)

(assert (=> b!2312795 e!1482370))

(declare-fun res!988595 () Bool)

(assert (=> b!2312795 (=> (not res!988595) (not e!1482370))))

(declare-datatypes ((tuple3!4090 0))(
  ( (tuple3!4091 (_1!16252 Int) (_2!16252 CacheUp!2044) (_3!2515 CacheDown!2154)) )
))
(declare-fun lt!857740 () tuple3!4090)

(declare-fun lt!857744 () Int)

(declare-fun totalInput!803 () BalanceConc!17724)

(declare-fun lt!857745 () Int)

(declare-fun z!3756 () (InoxSet Context!4178))

(declare-fun findLongestMatchInnerZipperFastV2!9 ((InoxSet Context!4178) Int BalanceConc!17724 Int) Int)

(assert (=> b!2312795 (= res!988595 (= (_1!16252 lt!857740) (findLongestMatchInnerZipperFastV2!9 z!3756 lt!857744 totalInput!803 lt!857745)))))

(declare-fun findLongestMatchInnerZipperFastV2MemOnlyDeriv!6 ((InoxSet Context!4178) Int BalanceConc!17724 Int CacheUp!2044 CacheDown!2154) tuple3!4090)

(assert (=> b!2312795 (= lt!857740 (findLongestMatchInnerZipperFastV2MemOnlyDeriv!6 z!3756 lt!857744 totalInput!803 lt!857745 cacheUp!937 cacheDown!1056))))

(declare-fun lt!857741 () Int)

(assert (=> b!2312795 (= lt!857744 (- lt!857745 lt!857741))))

(declare-fun size!21752 (BalanceConc!17724) Int)

(assert (=> b!2312795 (= lt!857741 (size!21752 input!5503))))

(assert (=> b!2312795 (= lt!857745 (size!21752 totalInput!803))))

(declare-fun b!2312796 () Bool)

(declare-fun e!1482358 () Bool)

(declare-fun tp!733908 () Bool)

(assert (=> b!2312796 (= e!1482358 tp!733908)))

(declare-fun mapNonEmpty!14896 () Bool)

(declare-fun tp!733898 () Bool)

(declare-fun tp!733906 () Bool)

(assert (=> mapNonEmpty!14896 (= mapRes!14897 (and tp!733898 tp!733906))))

(declare-fun mapKey!14897 () (_ BitVec 32))

(declare-fun mapRest!14897 () (Array (_ BitVec 32) List!27638))

(declare-fun mapValue!14896 () List!27638)

(assert (=> mapNonEmpty!14896 (= (arr!4949 (_values!3462 (v!30603 (underlying!6569 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056))))))) (store mapRest!14897 mapKey!14897 mapValue!14896))))

(declare-fun tp!733905 () Bool)

(declare-fun e!1482374 () Bool)

(declare-fun tp!733900 () Bool)

(declare-fun e!1482361 () Bool)

(declare-fun array_inv!3553 (array!11151) Bool)

(declare-fun array_inv!3554 (array!11153) Bool)

(assert (=> b!2312797 (= e!1482374 (and tp!733901 tp!733900 tp!733905 (array_inv!3553 (_keys!3478 (v!30601 (underlying!6567 (v!30602 (underlying!6568 (cache!3470 cacheUp!937))))))) (array_inv!3554 (_values!3461 (v!30601 (underlying!6567 (v!30602 (underlying!6568 (cache!3470 cacheUp!937))))))) e!1482361))))

(declare-fun tp!733902 () Bool)

(declare-fun setRes!20722 () Bool)

(declare-fun setNonEmpty!20722 () Bool)

(declare-fun setElem!20722 () Context!4178)

(declare-fun inv!37268 (Context!4178) Bool)

(assert (=> setNonEmpty!20722 (= setRes!20722 (and tp!733902 (inv!37268 setElem!20722) e!1482358))))

(declare-fun setRest!20722 () (InoxSet Context!4178))

(assert (=> setNonEmpty!20722 (= z!3756 ((_ map or) (store ((as const (Array Context!4178 Bool)) false) setElem!20722 true) setRest!20722))))

(declare-fun mapIsEmpty!14896 () Bool)

(assert (=> mapIsEmpty!14896 mapRes!14897))

(declare-fun b!2312798 () Bool)

(assert (=> b!2312798 (= e!1482357 (and (<= 0 (_1!16252 lt!857740)) (<= (_1!16252 lt!857740) lt!857741)))))

(declare-fun b!2312799 () Bool)

(declare-fun e!1482356 () Bool)

(declare-fun e!1482371 () Bool)

(assert (=> b!2312799 (= e!1482356 e!1482371)))

(declare-fun b!2312800 () Bool)

(declare-fun e!1482360 () Bool)

(assert (=> b!2312800 (= e!1482367 e!1482360)))

(declare-fun b!2312801 () Bool)

(declare-fun e!1482375 () Bool)

(declare-fun e!1482364 () Bool)

(assert (=> b!2312801 (= e!1482375 e!1482364)))

(declare-fun setIsEmpty!20722 () Bool)

(assert (=> setIsEmpty!20722 setRes!20722))

(declare-fun e!1482363 () Bool)

(declare-fun e!1482376 () Bool)

(assert (=> b!2312802 (= e!1482363 (and e!1482376 tp!733904))))

(declare-fun b!2312803 () Bool)

(declare-fun valid!2389 (CacheDown!2154) Bool)

(assert (=> b!2312803 (= e!1482370 (valid!2389 (_3!2515 lt!857740)))))

(declare-fun res!988594 () Bool)

(assert (=> start!228140 (=> (not res!988594) (not e!1482365))))

(declare-fun isSuffix!796 (List!27639 List!27639) Bool)

(declare-fun list!10909 (BalanceConc!17724) List!27639)

(assert (=> start!228140 (= res!988594 (isSuffix!796 (list!10909 input!5503) (list!10909 totalInput!803)))))

(assert (=> start!228140 e!1482365))

(declare-fun e!1482372 () Bool)

(declare-fun inv!37269 (BalanceConc!17724) Bool)

(assert (=> start!228140 (and (inv!37269 input!5503) e!1482372)))

(declare-fun e!1482359 () Bool)

(declare-fun inv!37270 (CacheDown!2154) Bool)

(assert (=> start!228140 (and (inv!37270 cacheDown!1056) e!1482359)))

(declare-fun condSetEmpty!20722 () Bool)

(assert (=> start!228140 (= condSetEmpty!20722 (= z!3756 ((as const (Array Context!4178 Bool)) false)))))

(assert (=> start!228140 setRes!20722))

(declare-fun inv!37271 (CacheUp!2044) Bool)

(assert (=> start!228140 (and (inv!37271 cacheUp!937) e!1482375)))

(declare-fun e!1482369 () Bool)

(assert (=> start!228140 (and (inv!37269 totalInput!803) e!1482369)))

(declare-fun b!2312804 () Bool)

(declare-fun tp!733899 () Bool)

(declare-fun mapRes!14896 () Bool)

(assert (=> b!2312804 (= e!1482361 (and tp!733899 mapRes!14896))))

(declare-fun condMapEmpty!14897 () Bool)

(declare-fun mapDefault!14896 () List!27637)

(assert (=> b!2312804 (= condMapEmpty!14897 (= (arr!4948 (_values!3461 (v!30601 (underlying!6567 (v!30602 (underlying!6568 (cache!3470 cacheUp!937))))))) ((as const (Array (_ BitVec 32) List!27637)) mapDefault!14896)))))

(declare-fun b!2312805 () Bool)

(assert (=> b!2312805 (= e!1482360 e!1482374)))

(declare-fun b!2312806 () Bool)

(declare-fun e!1482377 () Bool)

(declare-fun lt!857743 () MutLongMap!3182)

(assert (=> b!2312806 (= e!1482376 (and e!1482377 ((_ is LongMap!3182) lt!857743)))))

(assert (=> b!2312806 (= lt!857743 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056))))))

(declare-fun mapNonEmpty!14897 () Bool)

(declare-fun tp!733894 () Bool)

(declare-fun tp!733897 () Bool)

(assert (=> mapNonEmpty!14897 (= mapRes!14896 (and tp!733894 tp!733897))))

(declare-fun mapRest!14896 () (Array (_ BitVec 32) List!27637))

(declare-fun mapKey!14896 () (_ BitVec 32))

(declare-fun mapValue!14897 () List!27637)

(assert (=> mapNonEmpty!14897 (= (arr!4948 (_values!3461 (v!30601 (underlying!6567 (v!30602 (underlying!6568 (cache!3470 cacheUp!937))))))) (store mapRest!14896 mapKey!14896 mapValue!14897))))

(assert (=> b!2312807 (= e!1482364 (and e!1482362 tp!733909))))

(declare-fun b!2312808 () Bool)

(declare-fun tp!733892 () Bool)

(declare-fun inv!37272 (Conc!8996) Bool)

(assert (=> b!2312808 (= e!1482372 (and (inv!37272 (c!366687 input!5503)) tp!733892))))

(declare-fun tp!733896 () Bool)

(declare-fun tp!733903 () Bool)

(declare-fun array_inv!3555 (array!11155) Bool)

(assert (=> b!2312809 (= e!1482371 (and tp!733907 tp!733903 tp!733896 (array_inv!3553 (_keys!3479 (v!30603 (underlying!6569 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056))))))) (array_inv!3555 (_values!3462 (v!30603 (underlying!6569 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056))))))) e!1482368))))

(declare-fun b!2312810 () Bool)

(assert (=> b!2312810 (= e!1482377 e!1482356)))

(declare-fun b!2312811 () Bool)

(declare-fun res!988593 () Bool)

(assert (=> b!2312811 (=> (not res!988593) (not e!1482370))))

(declare-fun valid!2390 (CacheUp!2044) Bool)

(assert (=> b!2312811 (= res!988593 (valid!2390 (_2!16252 lt!857740)))))

(declare-fun b!2312812 () Bool)

(assert (=> b!2312812 (= e!1482359 e!1482363)))

(declare-fun mapIsEmpty!14897 () Bool)

(assert (=> mapIsEmpty!14897 mapRes!14896))

(declare-fun b!2312813 () Bool)

(declare-fun tp!733893 () Bool)

(assert (=> b!2312813 (= e!1482369 (and (inv!37272 (c!366687 totalInput!803)) tp!733893))))

(assert (= (and start!228140 res!988594) b!2312795))

(assert (= (and b!2312795 res!988595) b!2312811))

(assert (= (and b!2312811 res!988593) b!2312803))

(assert (= (and b!2312795 (not res!988596)) b!2312798))

(assert (= start!228140 b!2312808))

(assert (= (and b!2312794 condMapEmpty!14896) mapIsEmpty!14896))

(assert (= (and b!2312794 (not condMapEmpty!14896)) mapNonEmpty!14896))

(assert (= b!2312809 b!2312794))

(assert (= b!2312799 b!2312809))

(assert (= b!2312810 b!2312799))

(assert (= (and b!2312806 ((_ is LongMap!3182) (v!30604 (underlying!6570 (cache!3471 cacheDown!1056))))) b!2312810))

(assert (= b!2312802 b!2312806))

(assert (= (and b!2312812 ((_ is HashMap!3092) (cache!3471 cacheDown!1056))) b!2312802))

(assert (= start!228140 b!2312812))

(assert (= (and start!228140 condSetEmpty!20722) setIsEmpty!20722))

(assert (= (and start!228140 (not condSetEmpty!20722)) setNonEmpty!20722))

(assert (= setNonEmpty!20722 b!2312796))

(assert (= (and b!2312804 condMapEmpty!14897) mapIsEmpty!14897))

(assert (= (and b!2312804 (not condMapEmpty!14897)) mapNonEmpty!14897))

(assert (= b!2312797 b!2312804))

(assert (= b!2312805 b!2312797))

(assert (= b!2312800 b!2312805))

(assert (= (and b!2312793 ((_ is LongMap!3181) (v!30602 (underlying!6568 (cache!3470 cacheUp!937))))) b!2312800))

(assert (= b!2312807 b!2312793))

(assert (= (and b!2312801 ((_ is HashMap!3091) (cache!3470 cacheUp!937))) b!2312807))

(assert (= start!228140 b!2312801))

(assert (= start!228140 b!2312813))

(declare-fun m!2740159 () Bool)

(assert (=> mapNonEmpty!14897 m!2740159))

(declare-fun m!2740161 () Bool)

(assert (=> b!2312809 m!2740161))

(declare-fun m!2740163 () Bool)

(assert (=> b!2312809 m!2740163))

(declare-fun m!2740165 () Bool)

(assert (=> start!228140 m!2740165))

(declare-fun m!2740167 () Bool)

(assert (=> start!228140 m!2740167))

(declare-fun m!2740169 () Bool)

(assert (=> start!228140 m!2740169))

(declare-fun m!2740171 () Bool)

(assert (=> start!228140 m!2740171))

(assert (=> start!228140 m!2740165))

(declare-fun m!2740173 () Bool)

(assert (=> start!228140 m!2740173))

(declare-fun m!2740175 () Bool)

(assert (=> start!228140 m!2740175))

(declare-fun m!2740177 () Bool)

(assert (=> start!228140 m!2740177))

(assert (=> start!228140 m!2740171))

(declare-fun m!2740179 () Bool)

(assert (=> b!2312811 m!2740179))

(declare-fun m!2740181 () Bool)

(assert (=> b!2312813 m!2740181))

(declare-fun m!2740183 () Bool)

(assert (=> setNonEmpty!20722 m!2740183))

(declare-fun m!2740185 () Bool)

(assert (=> b!2312808 m!2740185))

(declare-fun m!2740187 () Bool)

(assert (=> b!2312803 m!2740187))

(declare-fun m!2740189 () Bool)

(assert (=> b!2312795 m!2740189))

(declare-fun m!2740191 () Bool)

(assert (=> b!2312795 m!2740191))

(declare-fun m!2740193 () Bool)

(assert (=> b!2312795 m!2740193))

(declare-fun m!2740195 () Bool)

(assert (=> b!2312795 m!2740195))

(declare-fun m!2740197 () Bool)

(assert (=> b!2312795 m!2740197))

(declare-fun m!2740199 () Bool)

(assert (=> b!2312797 m!2740199))

(declare-fun m!2740201 () Bool)

(assert (=> b!2312797 m!2740201))

(declare-fun m!2740203 () Bool)

(assert (=> mapNonEmpty!14896 m!2740203))

(check-sat (not b!2312794) b_and!184935 b_and!184933 (not mapNonEmpty!14896) (not b!2312808) (not b!2312811) (not b!2312804) (not b!2312809) b_and!184931 (not b!2312795) (not b!2312813) (not start!228140) b_and!184929 (not b_next!70735) (not b!2312803) (not setNonEmpty!20722) (not b_next!70739) (not b_next!70737) (not mapNonEmpty!14897) (not b!2312797) (not b_next!70733) (not b!2312796))
(check-sat b_and!184935 b_and!184933 (not b_next!70733) b_and!184931 b_and!184929 (not b_next!70735) (not b_next!70739) (not b_next!70737))
(get-model)

(declare-fun d!684245 () Bool)

(declare-fun list!10910 (Conc!8996) List!27639)

(assert (=> d!684245 (= (list!10909 input!5503) (list!10910 (c!366687 input!5503)))))

(declare-fun bs!458691 () Bool)

(assert (= bs!458691 d!684245))

(declare-fun m!2740205 () Bool)

(assert (=> bs!458691 m!2740205))

(assert (=> start!228140 d!684245))

(declare-fun d!684247 () Bool)

(assert (=> d!684247 (= (inv!37269 totalInput!803) (isBalanced!2706 (c!366687 totalInput!803)))))

(declare-fun bs!458692 () Bool)

(assert (= bs!458692 d!684247))

(declare-fun m!2740207 () Bool)

(assert (=> bs!458692 m!2740207))

(assert (=> start!228140 d!684247))

(declare-fun d!684249 () Bool)

(declare-fun e!1482380 () Bool)

(assert (=> d!684249 e!1482380))

(declare-fun res!988599 () Bool)

(assert (=> d!684249 (=> res!988599 e!1482380)))

(declare-fun lt!857748 () Bool)

(assert (=> d!684249 (= res!988599 (not lt!857748))))

(declare-fun drop!1493 (List!27639 Int) List!27639)

(declare-fun size!21753 (List!27639) Int)

(assert (=> d!684249 (= lt!857748 (= (list!10909 input!5503) (drop!1493 (list!10909 totalInput!803) (- (size!21753 (list!10909 totalInput!803)) (size!21753 (list!10909 input!5503))))))))

(assert (=> d!684249 (= (isSuffix!796 (list!10909 input!5503) (list!10909 totalInput!803)) lt!857748)))

(declare-fun b!2312816 () Bool)

(assert (=> b!2312816 (= e!1482380 (>= (size!21753 (list!10909 totalInput!803)) (size!21753 (list!10909 input!5503))))))

(assert (= (and d!684249 (not res!988599)) b!2312816))

(assert (=> d!684249 m!2740165))

(declare-fun m!2740209 () Bool)

(assert (=> d!684249 m!2740209))

(assert (=> d!684249 m!2740171))

(declare-fun m!2740211 () Bool)

(assert (=> d!684249 m!2740211))

(assert (=> d!684249 m!2740165))

(declare-fun m!2740213 () Bool)

(assert (=> d!684249 m!2740213))

(assert (=> b!2312816 m!2740165))

(assert (=> b!2312816 m!2740209))

(assert (=> b!2312816 m!2740171))

(assert (=> b!2312816 m!2740211))

(assert (=> start!228140 d!684249))

(declare-fun d!684251 () Bool)

(assert (=> d!684251 (= (list!10909 totalInput!803) (list!10910 (c!366687 totalInput!803)))))

(declare-fun bs!458693 () Bool)

(assert (= bs!458693 d!684251))

(declare-fun m!2740215 () Bool)

(assert (=> bs!458693 m!2740215))

(assert (=> start!228140 d!684251))

(declare-fun d!684253 () Bool)

(declare-fun res!988602 () Bool)

(declare-fun e!1482383 () Bool)

(assert (=> d!684253 (=> (not res!988602) (not e!1482383))))

(assert (=> d!684253 (= res!988602 ((_ is HashMap!3091) (cache!3470 cacheUp!937)))))

(assert (=> d!684253 (= (inv!37271 cacheUp!937) e!1482383)))

(declare-fun b!2312819 () Bool)

(declare-fun validCacheMapUp!314 (MutableMap!3091) Bool)

(assert (=> b!2312819 (= e!1482383 (validCacheMapUp!314 (cache!3470 cacheUp!937)))))

(assert (= (and d!684253 res!988602) b!2312819))

(declare-fun m!2740217 () Bool)

(assert (=> b!2312819 m!2740217))

(assert (=> start!228140 d!684253))

(declare-fun d!684255 () Bool)

(declare-fun res!988605 () Bool)

(declare-fun e!1482386 () Bool)

(assert (=> d!684255 (=> (not res!988605) (not e!1482386))))

(assert (=> d!684255 (= res!988605 ((_ is HashMap!3092) (cache!3471 cacheDown!1056)))))

(assert (=> d!684255 (= (inv!37270 cacheDown!1056) e!1482386)))

(declare-fun b!2312822 () Bool)

(declare-fun validCacheMapDown!345 (MutableMap!3092) Bool)

(assert (=> b!2312822 (= e!1482386 (validCacheMapDown!345 (cache!3471 cacheDown!1056)))))

(assert (= (and d!684255 res!988605) b!2312822))

(declare-fun m!2740219 () Bool)

(assert (=> b!2312822 m!2740219))

(assert (=> start!228140 d!684255))

(declare-fun d!684257 () Bool)

(assert (=> d!684257 (= (inv!37269 input!5503) (isBalanced!2706 (c!366687 input!5503)))))

(declare-fun bs!458694 () Bool)

(assert (= bs!458694 d!684257))

(assert (=> bs!458694 m!2740193))

(assert (=> start!228140 d!684257))

(declare-fun d!684259 () Bool)

(assert (=> d!684259 (= (valid!2389 (_3!2515 lt!857740)) (validCacheMapDown!345 (cache!3471 (_3!2515 lt!857740))))))

(declare-fun bs!458695 () Bool)

(assert (= bs!458695 d!684259))

(declare-fun m!2740221 () Bool)

(assert (=> bs!458695 m!2740221))

(assert (=> b!2312803 d!684259))

(declare-fun d!684261 () Bool)

(declare-fun c!366690 () Bool)

(assert (=> d!684261 (= c!366690 ((_ is Node!8996) (c!366687 input!5503)))))

(declare-fun e!1482391 () Bool)

(assert (=> d!684261 (= (inv!37272 (c!366687 input!5503)) e!1482391)))

(declare-fun b!2312829 () Bool)

(declare-fun inv!37273 (Conc!8996) Bool)

(assert (=> b!2312829 (= e!1482391 (inv!37273 (c!366687 input!5503)))))

(declare-fun b!2312830 () Bool)

(declare-fun e!1482392 () Bool)

(assert (=> b!2312830 (= e!1482391 e!1482392)))

(declare-fun res!988608 () Bool)

(assert (=> b!2312830 (= res!988608 (not ((_ is Leaf!13201) (c!366687 input!5503))))))

(assert (=> b!2312830 (=> res!988608 e!1482392)))

(declare-fun b!2312831 () Bool)

(declare-fun inv!37274 (Conc!8996) Bool)

(assert (=> b!2312831 (= e!1482392 (inv!37274 (c!366687 input!5503)))))

(assert (= (and d!684261 c!366690) b!2312829))

(assert (= (and d!684261 (not c!366690)) b!2312830))

(assert (= (and b!2312830 (not res!988608)) b!2312831))

(declare-fun m!2740223 () Bool)

(assert (=> b!2312829 m!2740223))

(declare-fun m!2740225 () Bool)

(assert (=> b!2312831 m!2740225))

(assert (=> b!2312808 d!684261))

(declare-fun d!684263 () Bool)

(assert (=> d!684263 (= (valid!2390 (_2!16252 lt!857740)) (validCacheMapUp!314 (cache!3470 (_2!16252 lt!857740))))))

(declare-fun bs!458696 () Bool)

(assert (= bs!458696 d!684263))

(declare-fun m!2740227 () Bool)

(assert (=> bs!458696 m!2740227))

(assert (=> b!2312811 d!684263))

(declare-fun d!684265 () Bool)

(declare-fun lt!857751 () Int)

(assert (=> d!684265 (= lt!857751 (size!21753 (list!10909 input!5503)))))

(declare-fun size!21754 (Conc!8996) Int)

(assert (=> d!684265 (= lt!857751 (size!21754 (c!366687 input!5503)))))

(assert (=> d!684265 (= (size!21752 input!5503) lt!857751)))

(declare-fun bs!458697 () Bool)

(assert (= bs!458697 d!684265))

(assert (=> bs!458697 m!2740171))

(assert (=> bs!458697 m!2740171))

(assert (=> bs!458697 m!2740211))

(declare-fun m!2740229 () Bool)

(assert (=> bs!458697 m!2740229))

(assert (=> b!2312795 d!684265))

(declare-fun b!2312848 () Bool)

(declare-fun c!366699 () Bool)

(declare-fun lt!857760 () (InoxSet Context!4178))

(declare-fun nullableZipper!591 ((InoxSet Context!4178)) Bool)

(assert (=> b!2312848 (= c!366699 (nullableZipper!591 lt!857760))))

(declare-fun e!1482403 () Int)

(declare-fun e!1482404 () Int)

(assert (=> b!2312848 (= e!1482403 e!1482404)))

(declare-fun b!2312849 () Bool)

(declare-fun e!1482406 () Int)

(assert (=> b!2312849 (= e!1482406 0)))

(declare-fun b!2312850 () Bool)

(declare-fun e!1482407 () Bool)

(assert (=> b!2312850 (= e!1482407 (<= lt!857744 (size!21752 totalInput!803)))))

(declare-fun b!2312851 () Bool)

(declare-fun lt!857759 () Int)

(assert (=> b!2312851 (= e!1482403 (+ 1 lt!857759))))

(declare-fun b!2312852 () Bool)

(declare-fun e!1482405 () Bool)

(declare-fun lostCauseZipper!397 ((InoxSet Context!4178)) Bool)

(assert (=> b!2312852 (= e!1482405 (lostCauseZipper!397 z!3756))))

(declare-fun b!2312853 () Bool)

(assert (=> b!2312853 (= e!1482406 e!1482403)))

(declare-fun derivationStepZipper!333 ((InoxSet Context!4178) C!13684) (InoxSet Context!4178))

(declare-fun apply!6677 (BalanceConc!17724 Int) C!13684)

(assert (=> b!2312853 (= lt!857760 (derivationStepZipper!333 z!3756 (apply!6677 totalInput!803 lt!857744)))))

(assert (=> b!2312853 (= lt!857759 (findLongestMatchInnerZipperFastV2!9 lt!857760 (+ lt!857744 1) totalInput!803 lt!857745))))

(declare-fun c!366697 () Bool)

(assert (=> b!2312853 (= c!366697 (> lt!857759 0))))

(declare-fun b!2312854 () Bool)

(assert (=> b!2312854 (= e!1482404 0)))

(declare-fun b!2312855 () Bool)

(assert (=> b!2312855 (= e!1482404 1)))

(declare-fun d!684267 () Bool)

(declare-fun lt!857758 () Int)

(assert (=> d!684267 (and (>= lt!857758 0) (<= lt!857758 (- lt!857745 lt!857744)))))

(assert (=> d!684267 (= lt!857758 e!1482406)))

(declare-fun c!366698 () Bool)

(assert (=> d!684267 (= c!366698 e!1482405)))

(declare-fun res!988614 () Bool)

(assert (=> d!684267 (=> res!988614 e!1482405)))

(assert (=> d!684267 (= res!988614 (= lt!857744 lt!857745))))

(assert (=> d!684267 e!1482407))

(declare-fun res!988613 () Bool)

(assert (=> d!684267 (=> (not res!988613) (not e!1482407))))

(assert (=> d!684267 (= res!988613 (>= lt!857744 0))))

(assert (=> d!684267 (= (findLongestMatchInnerZipperFastV2!9 z!3756 lt!857744 totalInput!803 lt!857745) lt!857758)))

(assert (= (and d!684267 res!988613) b!2312850))

(assert (= (and d!684267 (not res!988614)) b!2312852))

(assert (= (and d!684267 c!366698) b!2312849))

(assert (= (and d!684267 (not c!366698)) b!2312853))

(assert (= (and b!2312853 c!366697) b!2312851))

(assert (= (and b!2312853 (not c!366697)) b!2312848))

(assert (= (and b!2312848 c!366699) b!2312855))

(assert (= (and b!2312848 (not c!366699)) b!2312854))

(declare-fun m!2740231 () Bool)

(assert (=> b!2312848 m!2740231))

(assert (=> b!2312850 m!2740189))

(declare-fun m!2740233 () Bool)

(assert (=> b!2312852 m!2740233))

(declare-fun m!2740235 () Bool)

(assert (=> b!2312853 m!2740235))

(assert (=> b!2312853 m!2740235))

(declare-fun m!2740237 () Bool)

(assert (=> b!2312853 m!2740237))

(declare-fun m!2740239 () Bool)

(assert (=> b!2312853 m!2740239))

(assert (=> b!2312795 d!684267))

(declare-fun d!684269 () Bool)

(declare-fun res!988629 () Bool)

(declare-fun e!1482412 () Bool)

(assert (=> d!684269 (=> res!988629 e!1482412)))

(assert (=> d!684269 (= res!988629 (not ((_ is Node!8996) (c!366687 input!5503))))))

(assert (=> d!684269 (= (isBalanced!2706 (c!366687 input!5503)) e!1482412)))

(declare-fun b!2312868 () Bool)

(declare-fun e!1482413 () Bool)

(declare-fun isEmpty!15748 (Conc!8996) Bool)

(assert (=> b!2312868 (= e!1482413 (not (isEmpty!15748 (right!21218 (c!366687 input!5503)))))))

(declare-fun b!2312869 () Bool)

(assert (=> b!2312869 (= e!1482412 e!1482413)))

(declare-fun res!988627 () Bool)

(assert (=> b!2312869 (=> (not res!988627) (not e!1482413))))

(declare-fun height!1298 (Conc!8996) Int)

(assert (=> b!2312869 (= res!988627 (<= (- 1) (- (height!1298 (left!20888 (c!366687 input!5503))) (height!1298 (right!21218 (c!366687 input!5503))))))))

(declare-fun b!2312870 () Bool)

(declare-fun res!988630 () Bool)

(assert (=> b!2312870 (=> (not res!988630) (not e!1482413))))

(assert (=> b!2312870 (= res!988630 (isBalanced!2706 (right!21218 (c!366687 input!5503))))))

(declare-fun b!2312871 () Bool)

(declare-fun res!988631 () Bool)

(assert (=> b!2312871 (=> (not res!988631) (not e!1482413))))

(assert (=> b!2312871 (= res!988631 (<= (- (height!1298 (left!20888 (c!366687 input!5503))) (height!1298 (right!21218 (c!366687 input!5503)))) 1))))

(declare-fun b!2312872 () Bool)

(declare-fun res!988632 () Bool)

(assert (=> b!2312872 (=> (not res!988632) (not e!1482413))))

(assert (=> b!2312872 (= res!988632 (not (isEmpty!15748 (left!20888 (c!366687 input!5503)))))))

(declare-fun b!2312873 () Bool)

(declare-fun res!988628 () Bool)

(assert (=> b!2312873 (=> (not res!988628) (not e!1482413))))

(assert (=> b!2312873 (= res!988628 (isBalanced!2706 (left!20888 (c!366687 input!5503))))))

(assert (= (and d!684269 (not res!988629)) b!2312869))

(assert (= (and b!2312869 res!988627) b!2312871))

(assert (= (and b!2312871 res!988631) b!2312873))

(assert (= (and b!2312873 res!988628) b!2312870))

(assert (= (and b!2312870 res!988630) b!2312872))

(assert (= (and b!2312872 res!988632) b!2312868))

(declare-fun m!2740241 () Bool)

(assert (=> b!2312873 m!2740241))

(declare-fun m!2740243 () Bool)

(assert (=> b!2312869 m!2740243))

(declare-fun m!2740245 () Bool)

(assert (=> b!2312869 m!2740245))

(assert (=> b!2312871 m!2740243))

(assert (=> b!2312871 m!2740245))

(declare-fun m!2740247 () Bool)

(assert (=> b!2312872 m!2740247))

(declare-fun m!2740249 () Bool)

(assert (=> b!2312870 m!2740249))

(declare-fun m!2740251 () Bool)

(assert (=> b!2312868 m!2740251))

(assert (=> b!2312795 d!684269))

(declare-fun d!684271 () Bool)

(declare-fun lt!857761 () Int)

(assert (=> d!684271 (= lt!857761 (size!21753 (list!10909 totalInput!803)))))

(assert (=> d!684271 (= lt!857761 (size!21754 (c!366687 totalInput!803)))))

(assert (=> d!684271 (= (size!21752 totalInput!803) lt!857761)))

(declare-fun bs!458698 () Bool)

(assert (= bs!458698 d!684271))

(assert (=> bs!458698 m!2740165))

(assert (=> bs!458698 m!2740165))

(assert (=> bs!458698 m!2740209))

(declare-fun m!2740253 () Bool)

(assert (=> bs!458698 m!2740253))

(assert (=> b!2312795 d!684271))

(declare-fun d!684273 () Bool)

(declare-fun e!1482419 () Bool)

(assert (=> d!684273 e!1482419))

(declare-fun res!988639 () Bool)

(assert (=> d!684273 (=> (not res!988639) (not e!1482419))))

(declare-fun lt!857764 () tuple3!4090)

(assert (=> d!684273 (= res!988639 (= (_1!16252 lt!857764) (findLongestMatchInnerZipperFastV2!9 z!3756 lt!857744 totalInput!803 lt!857745)))))

(declare-fun choose!13531 ((InoxSet Context!4178) Int BalanceConc!17724 Int CacheUp!2044 CacheDown!2154) tuple3!4090)

(assert (=> d!684273 (= lt!857764 (choose!13531 z!3756 lt!857744 totalInput!803 lt!857745 cacheUp!937 cacheDown!1056))))

(declare-fun e!1482418 () Bool)

(assert (=> d!684273 e!1482418))

(declare-fun res!988640 () Bool)

(assert (=> d!684273 (=> (not res!988640) (not e!1482418))))

(assert (=> d!684273 (= res!988640 (>= lt!857744 0))))

(assert (=> d!684273 (= (findLongestMatchInnerZipperFastV2MemOnlyDeriv!6 z!3756 lt!857744 totalInput!803 lt!857745 cacheUp!937 cacheDown!1056) lt!857764)))

(declare-fun b!2312880 () Bool)

(assert (=> b!2312880 (= e!1482418 (<= lt!857744 (size!21752 totalInput!803)))))

(declare-fun b!2312881 () Bool)

(declare-fun res!988641 () Bool)

(assert (=> b!2312881 (=> (not res!988641) (not e!1482419))))

(assert (=> b!2312881 (= res!988641 (valid!2390 (_2!16252 lt!857764)))))

(declare-fun b!2312882 () Bool)

(assert (=> b!2312882 (= e!1482419 (valid!2389 (_3!2515 lt!857764)))))

(assert (= (and d!684273 res!988640) b!2312880))

(assert (= (and d!684273 res!988639) b!2312881))

(assert (= (and b!2312881 res!988641) b!2312882))

(assert (=> d!684273 m!2740191))

(declare-fun m!2740255 () Bool)

(assert (=> d!684273 m!2740255))

(assert (=> b!2312880 m!2740189))

(declare-fun m!2740257 () Bool)

(assert (=> b!2312881 m!2740257))

(declare-fun m!2740259 () Bool)

(assert (=> b!2312882 m!2740259))

(assert (=> b!2312795 d!684273))

(declare-fun d!684275 () Bool)

(declare-fun lambda!86321 () Int)

(declare-fun forall!5512 (List!27636 Int) Bool)

(assert (=> d!684275 (= (inv!37268 setElem!20722) (forall!5512 (exprs!2589 setElem!20722) lambda!86321))))

(declare-fun bs!458699 () Bool)

(assert (= bs!458699 d!684275))

(declare-fun m!2740261 () Bool)

(assert (=> bs!458699 m!2740261))

(assert (=> setNonEmpty!20722 d!684275))

(declare-fun d!684277 () Bool)

(declare-fun c!366700 () Bool)

(assert (=> d!684277 (= c!366700 ((_ is Node!8996) (c!366687 totalInput!803)))))

(declare-fun e!1482420 () Bool)

(assert (=> d!684277 (= (inv!37272 (c!366687 totalInput!803)) e!1482420)))

(declare-fun b!2312883 () Bool)

(assert (=> b!2312883 (= e!1482420 (inv!37273 (c!366687 totalInput!803)))))

(declare-fun b!2312884 () Bool)

(declare-fun e!1482421 () Bool)

(assert (=> b!2312884 (= e!1482420 e!1482421)))

(declare-fun res!988642 () Bool)

(assert (=> b!2312884 (= res!988642 (not ((_ is Leaf!13201) (c!366687 totalInput!803))))))

(assert (=> b!2312884 (=> res!988642 e!1482421)))

(declare-fun b!2312885 () Bool)

(assert (=> b!2312885 (= e!1482421 (inv!37274 (c!366687 totalInput!803)))))

(assert (= (and d!684277 c!366700) b!2312883))

(assert (= (and d!684277 (not c!366700)) b!2312884))

(assert (= (and b!2312884 (not res!988642)) b!2312885))

(declare-fun m!2740263 () Bool)

(assert (=> b!2312883 m!2740263))

(declare-fun m!2740265 () Bool)

(assert (=> b!2312885 m!2740265))

(assert (=> b!2312813 d!684277))

(declare-fun d!684279 () Bool)

(assert (=> d!684279 (= (array_inv!3553 (_keys!3478 (v!30601 (underlying!6567 (v!30602 (underlying!6568 (cache!3470 cacheUp!937))))))) (bvsge (size!21749 (_keys!3478 (v!30601 (underlying!6567 (v!30602 (underlying!6568 (cache!3470 cacheUp!937))))))) #b00000000000000000000000000000000))))

(assert (=> b!2312797 d!684279))

(declare-fun d!684281 () Bool)

(assert (=> d!684281 (= (array_inv!3554 (_values!3461 (v!30601 (underlying!6567 (v!30602 (underlying!6568 (cache!3470 cacheUp!937))))))) (bvsge (size!21750 (_values!3461 (v!30601 (underlying!6567 (v!30602 (underlying!6568 (cache!3470 cacheUp!937))))))) #b00000000000000000000000000000000))))

(assert (=> b!2312797 d!684281))

(declare-fun d!684283 () Bool)

(assert (=> d!684283 (= (array_inv!3553 (_keys!3479 (v!30603 (underlying!6569 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056))))))) (bvsge (size!21749 (_keys!3479 (v!30603 (underlying!6569 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056))))))) #b00000000000000000000000000000000))))

(assert (=> b!2312809 d!684283))

(declare-fun d!684285 () Bool)

(assert (=> d!684285 (= (array_inv!3555 (_values!3462 (v!30603 (underlying!6569 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056))))))) (bvsge (size!21751 (_values!3462 (v!30603 (underlying!6569 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056))))))) #b00000000000000000000000000000000))))

(assert (=> b!2312809 d!684285))

(declare-fun b!2312890 () Bool)

(declare-fun e!1482424 () Bool)

(declare-fun tp!733914 () Bool)

(declare-fun tp!733915 () Bool)

(assert (=> b!2312890 (= e!1482424 (and tp!733914 tp!733915))))

(assert (=> b!2312796 (= tp!733908 e!1482424)))

(assert (= (and b!2312796 ((_ is Cons!27538) (exprs!2589 setElem!20722))) b!2312890))

(declare-fun setIsEmpty!20727 () Bool)

(declare-fun setRes!20728 () Bool)

(assert (=> setIsEmpty!20727 setRes!20728))

(declare-fun tp!733943 () Bool)

(declare-fun setElem!20727 () Context!4178)

(declare-fun e!1482437 () Bool)

(declare-fun setNonEmpty!20727 () Bool)

(assert (=> setNonEmpty!20727 (= setRes!20728 (and tp!733943 (inv!37268 setElem!20727) e!1482437))))

(declare-fun mapDefault!14900 () List!27638)

(declare-fun setRest!20728 () (InoxSet Context!4178))

(assert (=> setNonEmpty!20727 (= (_2!16251 (h!32941 mapDefault!14900)) ((_ map or) (store ((as const (Array Context!4178 Bool)) false) setElem!20727 true) setRest!20728))))

(declare-fun setIsEmpty!20728 () Bool)

(declare-fun setRes!20727 () Bool)

(assert (=> setIsEmpty!20728 setRes!20727))

(declare-fun b!2312905 () Bool)

(declare-fun e!1482440 () Bool)

(declare-fun tp!733940 () Bool)

(assert (=> b!2312905 (= e!1482440 tp!733940)))

(declare-fun mapIsEmpty!14900 () Bool)

(declare-fun mapRes!14900 () Bool)

(assert (=> mapIsEmpty!14900 mapRes!14900))

(declare-fun b!2312906 () Bool)

(declare-fun e!1482441 () Bool)

(declare-fun tp!733939 () Bool)

(assert (=> b!2312906 (= e!1482441 tp!733939)))

(declare-fun b!2312907 () Bool)

(declare-fun tp_is_empty!10755 () Bool)

(declare-fun mapValue!14900 () List!27638)

(declare-fun tp!733948 () Bool)

(declare-fun tp!733944 () Bool)

(declare-fun e!1482439 () Bool)

(assert (=> b!2312907 (= e!1482439 (and tp!733948 (inv!37268 (_2!16250 (_1!16251 (h!32941 mapValue!14900)))) e!1482441 tp_is_empty!10755 setRes!20727 tp!733944))))

(declare-fun condSetEmpty!20727 () Bool)

(assert (=> b!2312907 (= condSetEmpty!20727 (= (_2!16251 (h!32941 mapValue!14900)) ((as const (Array Context!4178 Bool)) false)))))

(declare-fun setElem!20728 () Context!4178)

(declare-fun setNonEmpty!20728 () Bool)

(declare-fun e!1482442 () Bool)

(declare-fun tp!733946 () Bool)

(assert (=> setNonEmpty!20728 (= setRes!20727 (and tp!733946 (inv!37268 setElem!20728) e!1482442))))

(declare-fun setRest!20727 () (InoxSet Context!4178))

(assert (=> setNonEmpty!20728 (= (_2!16251 (h!32941 mapValue!14900)) ((_ map or) (store ((as const (Array Context!4178 Bool)) false) setElem!20728 true) setRest!20727))))

(declare-fun b!2312908 () Bool)

(declare-fun tp!733941 () Bool)

(assert (=> b!2312908 (= e!1482437 tp!733941)))

(declare-fun b!2312909 () Bool)

(declare-fun tp!733945 () Bool)

(assert (=> b!2312909 (= e!1482442 tp!733945)))

(declare-fun condMapEmpty!14900 () Bool)

(assert (=> mapNonEmpty!14896 (= condMapEmpty!14900 (= mapRest!14897 ((as const (Array (_ BitVec 32) List!27638)) mapDefault!14900)))))

(declare-fun e!1482438 () Bool)

(assert (=> mapNonEmpty!14896 (= tp!733898 (and e!1482438 mapRes!14900))))

(declare-fun tp!733942 () Bool)

(declare-fun b!2312910 () Bool)

(declare-fun tp!733938 () Bool)

(assert (=> b!2312910 (= e!1482438 (and tp!733942 (inv!37268 (_2!16250 (_1!16251 (h!32941 mapDefault!14900)))) e!1482440 tp_is_empty!10755 setRes!20728 tp!733938))))

(declare-fun condSetEmpty!20728 () Bool)

(assert (=> b!2312910 (= condSetEmpty!20728 (= (_2!16251 (h!32941 mapDefault!14900)) ((as const (Array Context!4178 Bool)) false)))))

(declare-fun mapNonEmpty!14900 () Bool)

(declare-fun tp!733947 () Bool)

(assert (=> mapNonEmpty!14900 (= mapRes!14900 (and tp!733947 e!1482439))))

(declare-fun mapRest!14900 () (Array (_ BitVec 32) List!27638))

(declare-fun mapKey!14900 () (_ BitVec 32))

(assert (=> mapNonEmpty!14900 (= mapRest!14897 (store mapRest!14900 mapKey!14900 mapValue!14900))))

(assert (= (and mapNonEmpty!14896 condMapEmpty!14900) mapIsEmpty!14900))

(assert (= (and mapNonEmpty!14896 (not condMapEmpty!14900)) mapNonEmpty!14900))

(assert (= b!2312907 b!2312906))

(assert (= (and b!2312907 condSetEmpty!20727) setIsEmpty!20728))

(assert (= (and b!2312907 (not condSetEmpty!20727)) setNonEmpty!20728))

(assert (= setNonEmpty!20728 b!2312909))

(assert (= (and mapNonEmpty!14900 ((_ is Cons!27540) mapValue!14900)) b!2312907))

(assert (= b!2312910 b!2312905))

(assert (= (and b!2312910 condSetEmpty!20728) setIsEmpty!20727))

(assert (= (and b!2312910 (not condSetEmpty!20728)) setNonEmpty!20727))

(assert (= setNonEmpty!20727 b!2312908))

(assert (= (and mapNonEmpty!14896 ((_ is Cons!27540) mapDefault!14900)) b!2312910))

(declare-fun m!2740267 () Bool)

(assert (=> b!2312910 m!2740267))

(declare-fun m!2740269 () Bool)

(assert (=> setNonEmpty!20727 m!2740269))

(declare-fun m!2740271 () Bool)

(assert (=> setNonEmpty!20728 m!2740271))

(declare-fun m!2740273 () Bool)

(assert (=> b!2312907 m!2740273))

(declare-fun m!2740275 () Bool)

(assert (=> mapNonEmpty!14900 m!2740275))

(declare-fun b!2312919 () Bool)

(declare-fun e!1482451 () Bool)

(declare-fun tp!733963 () Bool)

(assert (=> b!2312919 (= e!1482451 tp!733963)))

(declare-fun b!2312920 () Bool)

(declare-fun e!1482450 () Bool)

(declare-fun tp!733962 () Bool)

(declare-fun e!1482449 () Bool)

(declare-fun setRes!20731 () Bool)

(declare-fun tp!733961 () Bool)

(assert (=> b!2312920 (= e!1482450 (and tp!733962 (inv!37268 (_2!16250 (_1!16251 (h!32941 mapValue!14896)))) e!1482449 tp_is_empty!10755 setRes!20731 tp!733961))))

(declare-fun condSetEmpty!20731 () Bool)

(assert (=> b!2312920 (= condSetEmpty!20731 (= (_2!16251 (h!32941 mapValue!14896)) ((as const (Array Context!4178 Bool)) false)))))

(declare-fun setElem!20731 () Context!4178)

(declare-fun setNonEmpty!20731 () Bool)

(declare-fun tp!733959 () Bool)

(assert (=> setNonEmpty!20731 (= setRes!20731 (and tp!733959 (inv!37268 setElem!20731) e!1482451))))

(declare-fun setRest!20731 () (InoxSet Context!4178))

(assert (=> setNonEmpty!20731 (= (_2!16251 (h!32941 mapValue!14896)) ((_ map or) (store ((as const (Array Context!4178 Bool)) false) setElem!20731 true) setRest!20731))))

(declare-fun setIsEmpty!20731 () Bool)

(assert (=> setIsEmpty!20731 setRes!20731))

(declare-fun b!2312921 () Bool)

(declare-fun tp!733960 () Bool)

(assert (=> b!2312921 (= e!1482449 tp!733960)))

(assert (=> mapNonEmpty!14896 (= tp!733906 e!1482450)))

(assert (= b!2312920 b!2312921))

(assert (= (and b!2312920 condSetEmpty!20731) setIsEmpty!20731))

(assert (= (and b!2312920 (not condSetEmpty!20731)) setNonEmpty!20731))

(assert (= setNonEmpty!20731 b!2312919))

(assert (= (and mapNonEmpty!14896 ((_ is Cons!27540) mapValue!14896)) b!2312920))

(declare-fun m!2740277 () Bool)

(assert (=> b!2312920 m!2740277))

(declare-fun m!2740279 () Bool)

(assert (=> setNonEmpty!20731 m!2740279))

(declare-fun e!1482457 () Bool)

(declare-fun tp!733972 () Bool)

(declare-fun b!2312930 () Bool)

(declare-fun tp!733971 () Bool)

(assert (=> b!2312930 (= e!1482457 (and (inv!37272 (left!20888 (c!366687 input!5503))) tp!733971 (inv!37272 (right!21218 (c!366687 input!5503))) tp!733972))))

(declare-fun b!2312932 () Bool)

(declare-fun e!1482456 () Bool)

(declare-fun tp!733970 () Bool)

(assert (=> b!2312932 (= e!1482456 tp!733970)))

(declare-fun b!2312931 () Bool)

(declare-fun inv!37275 (IArray!17997) Bool)

(assert (=> b!2312931 (= e!1482457 (and (inv!37275 (xs!11938 (c!366687 input!5503))) e!1482456))))

(assert (=> b!2312808 (= tp!733892 (and (inv!37272 (c!366687 input!5503)) e!1482457))))

(assert (= (and b!2312808 ((_ is Node!8996) (c!366687 input!5503))) b!2312930))

(assert (= b!2312931 b!2312932))

(assert (= (and b!2312808 ((_ is Leaf!13201) (c!366687 input!5503))) b!2312931))

(declare-fun m!2740281 () Bool)

(assert (=> b!2312930 m!2740281))

(declare-fun m!2740283 () Bool)

(assert (=> b!2312930 m!2740283))

(declare-fun m!2740285 () Bool)

(assert (=> b!2312931 m!2740285))

(assert (=> b!2312808 m!2740185))

(declare-fun b!2312947 () Bool)

(declare-fun e!1482473 () Bool)

(declare-fun tp!733995 () Bool)

(assert (=> b!2312947 (= e!1482473 tp!733995)))

(declare-fun b!2312948 () Bool)

(declare-fun e!1482471 () Bool)

(declare-fun tp!733993 () Bool)

(assert (=> b!2312948 (= e!1482471 tp!733993)))

(declare-fun setIsEmpty!20736 () Bool)

(declare-fun setRes!20737 () Bool)

(assert (=> setIsEmpty!20736 setRes!20737))

(declare-fun condMapEmpty!14903 () Bool)

(declare-fun mapDefault!14903 () List!27637)

(assert (=> mapNonEmpty!14897 (= condMapEmpty!14903 (= mapRest!14896 ((as const (Array (_ BitVec 32) List!27637)) mapDefault!14903)))))

(declare-fun e!1482474 () Bool)

(declare-fun mapRes!14903 () Bool)

(assert (=> mapNonEmpty!14897 (= tp!733894 (and e!1482474 mapRes!14903))))

(declare-fun mapNonEmpty!14903 () Bool)

(declare-fun tp!733996 () Bool)

(declare-fun e!1482472 () Bool)

(assert (=> mapNonEmpty!14903 (= mapRes!14903 (and tp!733996 e!1482472))))

(declare-fun mapRest!14903 () (Array (_ BitVec 32) List!27637))

(declare-fun mapValue!14903 () List!27637)

(declare-fun mapKey!14903 () (_ BitVec 32))

(assert (=> mapNonEmpty!14903 (= mapRest!14896 (store mapRest!14903 mapKey!14903 mapValue!14903))))

(declare-fun mapIsEmpty!14903 () Bool)

(assert (=> mapIsEmpty!14903 mapRes!14903))

(declare-fun tp!733994 () Bool)

(declare-fun setRes!20736 () Bool)

(declare-fun setNonEmpty!20736 () Bool)

(declare-fun setElem!20737 () Context!4178)

(assert (=> setNonEmpty!20736 (= setRes!20736 (and tp!733994 (inv!37268 setElem!20737) e!1482473))))

(declare-fun setRest!20737 () (InoxSet Context!4178))

(assert (=> setNonEmpty!20736 (= (_2!16249 (h!32940 mapDefault!14903)) ((_ map or) (store ((as const (Array Context!4178 Bool)) false) setElem!20737 true) setRest!20737))))

(declare-fun setIsEmpty!20737 () Bool)

(assert (=> setIsEmpty!20737 setRes!20736))

(declare-fun b!2312949 () Bool)

(declare-fun e!1482470 () Bool)

(declare-fun tp!733998 () Bool)

(assert (=> b!2312949 (= e!1482470 tp!733998)))

(declare-fun tp!733991 () Bool)

(declare-fun b!2312950 () Bool)

(assert (=> b!2312950 (= e!1482474 (and (inv!37268 (_1!16248 (_1!16249 (h!32940 mapDefault!14903)))) e!1482471 tp_is_empty!10755 setRes!20736 tp!733991))))

(declare-fun condSetEmpty!20736 () Bool)

(assert (=> b!2312950 (= condSetEmpty!20736 (= (_2!16249 (h!32940 mapDefault!14903)) ((as const (Array Context!4178 Bool)) false)))))

(declare-fun b!2312951 () Bool)

(declare-fun e!1482475 () Bool)

(declare-fun tp!733992 () Bool)

(assert (=> b!2312951 (= e!1482475 tp!733992)))

(declare-fun tp!733999 () Bool)

(declare-fun setElem!20736 () Context!4178)

(declare-fun setNonEmpty!20737 () Bool)

(assert (=> setNonEmpty!20737 (= setRes!20737 (and tp!733999 (inv!37268 setElem!20736) e!1482470))))

(declare-fun setRest!20736 () (InoxSet Context!4178))

(assert (=> setNonEmpty!20737 (= (_2!16249 (h!32940 mapValue!14903)) ((_ map or) (store ((as const (Array Context!4178 Bool)) false) setElem!20736 true) setRest!20736))))

(declare-fun tp!733997 () Bool)

(declare-fun b!2312952 () Bool)

(assert (=> b!2312952 (= e!1482472 (and (inv!37268 (_1!16248 (_1!16249 (h!32940 mapValue!14903)))) e!1482475 tp_is_empty!10755 setRes!20737 tp!733997))))

(declare-fun condSetEmpty!20737 () Bool)

(assert (=> b!2312952 (= condSetEmpty!20737 (= (_2!16249 (h!32940 mapValue!14903)) ((as const (Array Context!4178 Bool)) false)))))

(assert (= (and mapNonEmpty!14897 condMapEmpty!14903) mapIsEmpty!14903))

(assert (= (and mapNonEmpty!14897 (not condMapEmpty!14903)) mapNonEmpty!14903))

(assert (= b!2312952 b!2312951))

(assert (= (and b!2312952 condSetEmpty!20737) setIsEmpty!20736))

(assert (= (and b!2312952 (not condSetEmpty!20737)) setNonEmpty!20737))

(assert (= setNonEmpty!20737 b!2312949))

(assert (= (and mapNonEmpty!14903 ((_ is Cons!27539) mapValue!14903)) b!2312952))

(assert (= b!2312950 b!2312948))

(assert (= (and b!2312950 condSetEmpty!20736) setIsEmpty!20737))

(assert (= (and b!2312950 (not condSetEmpty!20736)) setNonEmpty!20736))

(assert (= setNonEmpty!20736 b!2312947))

(assert (= (and mapNonEmpty!14897 ((_ is Cons!27539) mapDefault!14903)) b!2312950))

(declare-fun m!2740287 () Bool)

(assert (=> b!2312952 m!2740287))

(declare-fun m!2740289 () Bool)

(assert (=> setNonEmpty!20737 m!2740289))

(declare-fun m!2740291 () Bool)

(assert (=> mapNonEmpty!14903 m!2740291))

(declare-fun m!2740293 () Bool)

(assert (=> b!2312950 m!2740293))

(declare-fun m!2740295 () Bool)

(assert (=> setNonEmpty!20736 m!2740295))

(declare-fun setNonEmpty!20740 () Bool)

(declare-fun e!1482482 () Bool)

(declare-fun setRes!20740 () Bool)

(declare-fun tp!734011 () Bool)

(declare-fun setElem!20740 () Context!4178)

(assert (=> setNonEmpty!20740 (= setRes!20740 (and tp!734011 (inv!37268 setElem!20740) e!1482482))))

(declare-fun setRest!20740 () (InoxSet Context!4178))

(assert (=> setNonEmpty!20740 (= (_2!16249 (h!32940 mapValue!14897)) ((_ map or) (store ((as const (Array Context!4178 Bool)) false) setElem!20740 true) setRest!20740))))

(declare-fun b!2312961 () Bool)

(declare-fun tp!734010 () Bool)

(assert (=> b!2312961 (= e!1482482 tp!734010)))

(declare-fun e!1482484 () Bool)

(assert (=> mapNonEmpty!14897 (= tp!733897 e!1482484)))

(declare-fun b!2312962 () Bool)

(declare-fun e!1482483 () Bool)

(declare-fun tp!734008 () Bool)

(assert (=> b!2312962 (= e!1482484 (and (inv!37268 (_1!16248 (_1!16249 (h!32940 mapValue!14897)))) e!1482483 tp_is_empty!10755 setRes!20740 tp!734008))))

(declare-fun condSetEmpty!20740 () Bool)

(assert (=> b!2312962 (= condSetEmpty!20740 (= (_2!16249 (h!32940 mapValue!14897)) ((as const (Array Context!4178 Bool)) false)))))

(declare-fun setIsEmpty!20740 () Bool)

(assert (=> setIsEmpty!20740 setRes!20740))

(declare-fun b!2312963 () Bool)

(declare-fun tp!734009 () Bool)

(assert (=> b!2312963 (= e!1482483 tp!734009)))

(assert (= b!2312962 b!2312963))

(assert (= (and b!2312962 condSetEmpty!20740) setIsEmpty!20740))

(assert (= (and b!2312962 (not condSetEmpty!20740)) setNonEmpty!20740))

(assert (= setNonEmpty!20740 b!2312961))

(assert (= (and mapNonEmpty!14897 ((_ is Cons!27539) mapValue!14897)) b!2312962))

(declare-fun m!2740297 () Bool)

(assert (=> setNonEmpty!20740 m!2740297))

(declare-fun m!2740299 () Bool)

(assert (=> b!2312962 m!2740299))

(declare-fun condSetEmpty!20743 () Bool)

(assert (=> setNonEmpty!20722 (= condSetEmpty!20743 (= setRest!20722 ((as const (Array Context!4178 Bool)) false)))))

(declare-fun setRes!20743 () Bool)

(assert (=> setNonEmpty!20722 (= tp!733902 setRes!20743)))

(declare-fun setIsEmpty!20743 () Bool)

(assert (=> setIsEmpty!20743 setRes!20743))

(declare-fun setNonEmpty!20743 () Bool)

(declare-fun e!1482487 () Bool)

(declare-fun tp!734017 () Bool)

(declare-fun setElem!20743 () Context!4178)

(assert (=> setNonEmpty!20743 (= setRes!20743 (and tp!734017 (inv!37268 setElem!20743) e!1482487))))

(declare-fun setRest!20743 () (InoxSet Context!4178))

(assert (=> setNonEmpty!20743 (= setRest!20722 ((_ map or) (store ((as const (Array Context!4178 Bool)) false) setElem!20743 true) setRest!20743))))

(declare-fun b!2312968 () Bool)

(declare-fun tp!734016 () Bool)

(assert (=> b!2312968 (= e!1482487 tp!734016)))

(assert (= (and setNonEmpty!20722 condSetEmpty!20743) setIsEmpty!20743))

(assert (= (and setNonEmpty!20722 (not condSetEmpty!20743)) setNonEmpty!20743))

(assert (= setNonEmpty!20743 b!2312968))

(declare-fun m!2740301 () Bool)

(assert (=> setNonEmpty!20743 m!2740301))

(declare-fun b!2312969 () Bool)

(declare-fun e!1482490 () Bool)

(declare-fun tp!734022 () Bool)

(assert (=> b!2312969 (= e!1482490 tp!734022)))

(declare-fun b!2312970 () Bool)

(declare-fun tp!734020 () Bool)

(declare-fun setRes!20744 () Bool)

(declare-fun tp!734021 () Bool)

(declare-fun e!1482488 () Bool)

(declare-fun e!1482489 () Bool)

(assert (=> b!2312970 (= e!1482489 (and tp!734021 (inv!37268 (_2!16250 (_1!16251 (h!32941 mapDefault!14897)))) e!1482488 tp_is_empty!10755 setRes!20744 tp!734020))))

(declare-fun condSetEmpty!20744 () Bool)

(assert (=> b!2312970 (= condSetEmpty!20744 (= (_2!16251 (h!32941 mapDefault!14897)) ((as const (Array Context!4178 Bool)) false)))))

(declare-fun setNonEmpty!20744 () Bool)

(declare-fun setElem!20744 () Context!4178)

(declare-fun tp!734018 () Bool)

(assert (=> setNonEmpty!20744 (= setRes!20744 (and tp!734018 (inv!37268 setElem!20744) e!1482490))))

(declare-fun setRest!20744 () (InoxSet Context!4178))

(assert (=> setNonEmpty!20744 (= (_2!16251 (h!32941 mapDefault!14897)) ((_ map or) (store ((as const (Array Context!4178 Bool)) false) setElem!20744 true) setRest!20744))))

(declare-fun setIsEmpty!20744 () Bool)

(assert (=> setIsEmpty!20744 setRes!20744))

(declare-fun b!2312971 () Bool)

(declare-fun tp!734019 () Bool)

(assert (=> b!2312971 (= e!1482488 tp!734019)))

(assert (=> b!2312794 (= tp!733895 e!1482489)))

(assert (= b!2312970 b!2312971))

(assert (= (and b!2312970 condSetEmpty!20744) setIsEmpty!20744))

(assert (= (and b!2312970 (not condSetEmpty!20744)) setNonEmpty!20744))

(assert (= setNonEmpty!20744 b!2312969))

(assert (= (and b!2312794 ((_ is Cons!27540) mapDefault!14897)) b!2312970))

(declare-fun m!2740303 () Bool)

(assert (=> b!2312970 m!2740303))

(declare-fun m!2740305 () Bool)

(assert (=> setNonEmpty!20744 m!2740305))

(declare-fun setElem!20745 () Context!4178)

(declare-fun tp!734026 () Bool)

(declare-fun setRes!20745 () Bool)

(declare-fun e!1482491 () Bool)

(declare-fun setNonEmpty!20745 () Bool)

(assert (=> setNonEmpty!20745 (= setRes!20745 (and tp!734026 (inv!37268 setElem!20745) e!1482491))))

(declare-fun setRest!20745 () (InoxSet Context!4178))

(assert (=> setNonEmpty!20745 (= (_2!16249 (h!32940 mapDefault!14896)) ((_ map or) (store ((as const (Array Context!4178 Bool)) false) setElem!20745 true) setRest!20745))))

(declare-fun b!2312972 () Bool)

(declare-fun tp!734025 () Bool)

(assert (=> b!2312972 (= e!1482491 tp!734025)))

(declare-fun e!1482493 () Bool)

(assert (=> b!2312804 (= tp!733899 e!1482493)))

(declare-fun e!1482492 () Bool)

(declare-fun tp!734023 () Bool)

(declare-fun b!2312973 () Bool)

(assert (=> b!2312973 (= e!1482493 (and (inv!37268 (_1!16248 (_1!16249 (h!32940 mapDefault!14896)))) e!1482492 tp_is_empty!10755 setRes!20745 tp!734023))))

(declare-fun condSetEmpty!20745 () Bool)

(assert (=> b!2312973 (= condSetEmpty!20745 (= (_2!16249 (h!32940 mapDefault!14896)) ((as const (Array Context!4178 Bool)) false)))))

(declare-fun setIsEmpty!20745 () Bool)

(assert (=> setIsEmpty!20745 setRes!20745))

(declare-fun b!2312974 () Bool)

(declare-fun tp!734024 () Bool)

(assert (=> b!2312974 (= e!1482492 tp!734024)))

(assert (= b!2312973 b!2312974))

(assert (= (and b!2312973 condSetEmpty!20745) setIsEmpty!20745))

(assert (= (and b!2312973 (not condSetEmpty!20745)) setNonEmpty!20745))

(assert (= setNonEmpty!20745 b!2312972))

(assert (= (and b!2312804 ((_ is Cons!27539) mapDefault!14896)) b!2312973))

(declare-fun m!2740307 () Bool)

(assert (=> setNonEmpty!20745 m!2740307))

(declare-fun m!2740309 () Bool)

(assert (=> b!2312973 m!2740309))

(declare-fun tp!734028 () Bool)

(declare-fun tp!734029 () Bool)

(declare-fun b!2312975 () Bool)

(declare-fun e!1482495 () Bool)

(assert (=> b!2312975 (= e!1482495 (and (inv!37272 (left!20888 (c!366687 totalInput!803))) tp!734028 (inv!37272 (right!21218 (c!366687 totalInput!803))) tp!734029))))

(declare-fun b!2312977 () Bool)

(declare-fun e!1482494 () Bool)

(declare-fun tp!734027 () Bool)

(assert (=> b!2312977 (= e!1482494 tp!734027)))

(declare-fun b!2312976 () Bool)

(assert (=> b!2312976 (= e!1482495 (and (inv!37275 (xs!11938 (c!366687 totalInput!803))) e!1482494))))

(assert (=> b!2312813 (= tp!733893 (and (inv!37272 (c!366687 totalInput!803)) e!1482495))))

(assert (= (and b!2312813 ((_ is Node!8996) (c!366687 totalInput!803))) b!2312975))

(assert (= b!2312976 b!2312977))

(assert (= (and b!2312813 ((_ is Leaf!13201) (c!366687 totalInput!803))) b!2312976))

(declare-fun m!2740311 () Bool)

(assert (=> b!2312975 m!2740311))

(declare-fun m!2740313 () Bool)

(assert (=> b!2312975 m!2740313))

(declare-fun m!2740315 () Bool)

(assert (=> b!2312976 m!2740315))

(assert (=> b!2312813 m!2740181))

(declare-fun setElem!20746 () Context!4178)

(declare-fun tp!734033 () Bool)

(declare-fun setNonEmpty!20746 () Bool)

(declare-fun e!1482496 () Bool)

(declare-fun setRes!20746 () Bool)

(assert (=> setNonEmpty!20746 (= setRes!20746 (and tp!734033 (inv!37268 setElem!20746) e!1482496))))

(declare-fun setRest!20746 () (InoxSet Context!4178))

(assert (=> setNonEmpty!20746 (= (_2!16249 (h!32940 (zeroValue!3439 (v!30601 (underlying!6567 (v!30602 (underlying!6568 (cache!3470 cacheUp!937)))))))) ((_ map or) (store ((as const (Array Context!4178 Bool)) false) setElem!20746 true) setRest!20746))))

(declare-fun b!2312978 () Bool)

(declare-fun tp!734032 () Bool)

(assert (=> b!2312978 (= e!1482496 tp!734032)))

(declare-fun e!1482498 () Bool)

(assert (=> b!2312797 (= tp!733900 e!1482498)))

(declare-fun e!1482497 () Bool)

(declare-fun b!2312979 () Bool)

(declare-fun tp!734030 () Bool)

(assert (=> b!2312979 (= e!1482498 (and (inv!37268 (_1!16248 (_1!16249 (h!32940 (zeroValue!3439 (v!30601 (underlying!6567 (v!30602 (underlying!6568 (cache!3470 cacheUp!937)))))))))) e!1482497 tp_is_empty!10755 setRes!20746 tp!734030))))

(declare-fun condSetEmpty!20746 () Bool)

(assert (=> b!2312979 (= condSetEmpty!20746 (= (_2!16249 (h!32940 (zeroValue!3439 (v!30601 (underlying!6567 (v!30602 (underlying!6568 (cache!3470 cacheUp!937)))))))) ((as const (Array Context!4178 Bool)) false)))))

(declare-fun setIsEmpty!20746 () Bool)

(assert (=> setIsEmpty!20746 setRes!20746))

(declare-fun b!2312980 () Bool)

(declare-fun tp!734031 () Bool)

(assert (=> b!2312980 (= e!1482497 tp!734031)))

(assert (= b!2312979 b!2312980))

(assert (= (and b!2312979 condSetEmpty!20746) setIsEmpty!20746))

(assert (= (and b!2312979 (not condSetEmpty!20746)) setNonEmpty!20746))

(assert (= setNonEmpty!20746 b!2312978))

(assert (= (and b!2312797 ((_ is Cons!27539) (zeroValue!3439 (v!30601 (underlying!6567 (v!30602 (underlying!6568 (cache!3470 cacheUp!937)))))))) b!2312979))

(declare-fun m!2740317 () Bool)

(assert (=> setNonEmpty!20746 m!2740317))

(declare-fun m!2740319 () Bool)

(assert (=> b!2312979 m!2740319))

(declare-fun setElem!20747 () Context!4178)

(declare-fun setNonEmpty!20747 () Bool)

(declare-fun setRes!20747 () Bool)

(declare-fun tp!734037 () Bool)

(declare-fun e!1482499 () Bool)

(assert (=> setNonEmpty!20747 (= setRes!20747 (and tp!734037 (inv!37268 setElem!20747) e!1482499))))

(declare-fun setRest!20747 () (InoxSet Context!4178))

(assert (=> setNonEmpty!20747 (= (_2!16249 (h!32940 (minValue!3439 (v!30601 (underlying!6567 (v!30602 (underlying!6568 (cache!3470 cacheUp!937)))))))) ((_ map or) (store ((as const (Array Context!4178 Bool)) false) setElem!20747 true) setRest!20747))))

(declare-fun b!2312981 () Bool)

(declare-fun tp!734036 () Bool)

(assert (=> b!2312981 (= e!1482499 tp!734036)))

(declare-fun e!1482501 () Bool)

(assert (=> b!2312797 (= tp!733905 e!1482501)))

(declare-fun tp!734034 () Bool)

(declare-fun b!2312982 () Bool)

(declare-fun e!1482500 () Bool)

(assert (=> b!2312982 (= e!1482501 (and (inv!37268 (_1!16248 (_1!16249 (h!32940 (minValue!3439 (v!30601 (underlying!6567 (v!30602 (underlying!6568 (cache!3470 cacheUp!937)))))))))) e!1482500 tp_is_empty!10755 setRes!20747 tp!734034))))

(declare-fun condSetEmpty!20747 () Bool)

(assert (=> b!2312982 (= condSetEmpty!20747 (= (_2!16249 (h!32940 (minValue!3439 (v!30601 (underlying!6567 (v!30602 (underlying!6568 (cache!3470 cacheUp!937)))))))) ((as const (Array Context!4178 Bool)) false)))))

(declare-fun setIsEmpty!20747 () Bool)

(assert (=> setIsEmpty!20747 setRes!20747))

(declare-fun b!2312983 () Bool)

(declare-fun tp!734035 () Bool)

(assert (=> b!2312983 (= e!1482500 tp!734035)))

(assert (= b!2312982 b!2312983))

(assert (= (and b!2312982 condSetEmpty!20747) setIsEmpty!20747))

(assert (= (and b!2312982 (not condSetEmpty!20747)) setNonEmpty!20747))

(assert (= setNonEmpty!20747 b!2312981))

(assert (= (and b!2312797 ((_ is Cons!27539) (minValue!3439 (v!30601 (underlying!6567 (v!30602 (underlying!6568 (cache!3470 cacheUp!937)))))))) b!2312982))

(declare-fun m!2740321 () Bool)

(assert (=> setNonEmpty!20747 m!2740321))

(declare-fun m!2740323 () Bool)

(assert (=> b!2312982 m!2740323))

(declare-fun b!2312984 () Bool)

(declare-fun e!1482504 () Bool)

(declare-fun tp!734042 () Bool)

(assert (=> b!2312984 (= e!1482504 tp!734042)))

(declare-fun setRes!20748 () Bool)

(declare-fun e!1482503 () Bool)

(declare-fun b!2312985 () Bool)

(declare-fun e!1482502 () Bool)

(declare-fun tp!734041 () Bool)

(declare-fun tp!734040 () Bool)

(assert (=> b!2312985 (= e!1482503 (and tp!734041 (inv!37268 (_2!16250 (_1!16251 (h!32941 (zeroValue!3440 (v!30603 (underlying!6569 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056)))))))))) e!1482502 tp_is_empty!10755 setRes!20748 tp!734040))))

(declare-fun condSetEmpty!20748 () Bool)

(assert (=> b!2312985 (= condSetEmpty!20748 (= (_2!16251 (h!32941 (zeroValue!3440 (v!30603 (underlying!6569 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056)))))))) ((as const (Array Context!4178 Bool)) false)))))

(declare-fun tp!734038 () Bool)

(declare-fun setNonEmpty!20748 () Bool)

(declare-fun setElem!20748 () Context!4178)

(assert (=> setNonEmpty!20748 (= setRes!20748 (and tp!734038 (inv!37268 setElem!20748) e!1482504))))

(declare-fun setRest!20748 () (InoxSet Context!4178))

(assert (=> setNonEmpty!20748 (= (_2!16251 (h!32941 (zeroValue!3440 (v!30603 (underlying!6569 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056)))))))) ((_ map or) (store ((as const (Array Context!4178 Bool)) false) setElem!20748 true) setRest!20748))))

(declare-fun setIsEmpty!20748 () Bool)

(assert (=> setIsEmpty!20748 setRes!20748))

(declare-fun b!2312986 () Bool)

(declare-fun tp!734039 () Bool)

(assert (=> b!2312986 (= e!1482502 tp!734039)))

(assert (=> b!2312809 (= tp!733903 e!1482503)))

(assert (= b!2312985 b!2312986))

(assert (= (and b!2312985 condSetEmpty!20748) setIsEmpty!20748))

(assert (= (and b!2312985 (not condSetEmpty!20748)) setNonEmpty!20748))

(assert (= setNonEmpty!20748 b!2312984))

(assert (= (and b!2312809 ((_ is Cons!27540) (zeroValue!3440 (v!30603 (underlying!6569 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056)))))))) b!2312985))

(declare-fun m!2740325 () Bool)

(assert (=> b!2312985 m!2740325))

(declare-fun m!2740327 () Bool)

(assert (=> setNonEmpty!20748 m!2740327))

(declare-fun b!2312987 () Bool)

(declare-fun e!1482507 () Bool)

(declare-fun tp!734047 () Bool)

(assert (=> b!2312987 (= e!1482507 tp!734047)))

(declare-fun b!2312988 () Bool)

(declare-fun tp!734046 () Bool)

(declare-fun setRes!20749 () Bool)

(declare-fun tp!734045 () Bool)

(declare-fun e!1482506 () Bool)

(declare-fun e!1482505 () Bool)

(assert (=> b!2312988 (= e!1482506 (and tp!734046 (inv!37268 (_2!16250 (_1!16251 (h!32941 (minValue!3440 (v!30603 (underlying!6569 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056)))))))))) e!1482505 tp_is_empty!10755 setRes!20749 tp!734045))))

(declare-fun condSetEmpty!20749 () Bool)

(assert (=> b!2312988 (= condSetEmpty!20749 (= (_2!16251 (h!32941 (minValue!3440 (v!30603 (underlying!6569 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056)))))))) ((as const (Array Context!4178 Bool)) false)))))

(declare-fun setNonEmpty!20749 () Bool)

(declare-fun setElem!20749 () Context!4178)

(declare-fun tp!734043 () Bool)

(assert (=> setNonEmpty!20749 (= setRes!20749 (and tp!734043 (inv!37268 setElem!20749) e!1482507))))

(declare-fun setRest!20749 () (InoxSet Context!4178))

(assert (=> setNonEmpty!20749 (= (_2!16251 (h!32941 (minValue!3440 (v!30603 (underlying!6569 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056)))))))) ((_ map or) (store ((as const (Array Context!4178 Bool)) false) setElem!20749 true) setRest!20749))))

(declare-fun setIsEmpty!20749 () Bool)

(assert (=> setIsEmpty!20749 setRes!20749))

(declare-fun b!2312989 () Bool)

(declare-fun tp!734044 () Bool)

(assert (=> b!2312989 (= e!1482505 tp!734044)))

(assert (=> b!2312809 (= tp!733896 e!1482506)))

(assert (= b!2312988 b!2312989))

(assert (= (and b!2312988 condSetEmpty!20749) setIsEmpty!20749))

(assert (= (and b!2312988 (not condSetEmpty!20749)) setNonEmpty!20749))

(assert (= setNonEmpty!20749 b!2312987))

(assert (= (and b!2312809 ((_ is Cons!27540) (minValue!3440 (v!30603 (underlying!6569 (v!30604 (underlying!6570 (cache!3471 cacheDown!1056)))))))) b!2312988))

(declare-fun m!2740329 () Bool)

(assert (=> b!2312988 m!2740329))

(declare-fun m!2740331 () Bool)

(assert (=> setNonEmpty!20749 m!2740331))

(check-sat (not b!2312979) (not b!2312987) (not b!2312868) (not b!2312988) (not b!2312852) (not b!2312975) (not setNonEmpty!20727) (not b!2312819) (not setNonEmpty!20748) (not b!2312932) (not b!2312952) (not setNonEmpty!20743) (not setNonEmpty!20744) (not b!2312962) (not b_next!70739) (not b!2312976) (not setNonEmpty!20731) (not b_next!70737) (not b!2312816) (not b!2312984) (not setNonEmpty!20736) (not d!684245) (not b!2312974) b_and!184935 (not b!2312931) (not d!684251) (not b!2312972) (not b!2312951) (not b!2312982) b_and!184933 (not d!684257) (not d!684273) (not b!2312981) (not d!684249) (not b!2312961) (not b_next!70733) (not b!2312905) (not b!2312872) (not b!2312908) (not b!2312983) (not b!2312881) (not setNonEmpty!20740) (not b!2312890) (not b!2312808) (not d!684259) (not b!2312920) (not b!2312969) (not b!2312919) (not d!684271) (not b!2312963) (not b!2312968) (not b!2312949) (not b!2312973) (not b!2312909) (not b!2312880) (not b!2312930) (not b!2312971) (not b!2312980) (not b!2312871) (not b!2312869) (not b!2312873) (not setNonEmpty!20745) (not setNonEmpty!20746) (not b!2312882) (not mapNonEmpty!14903) (not b!2312977) b_and!184931 (not b!2312870) (not b!2312822) (not b!2312848) (not b!2312850) (not b!2312885) (not mapNonEmpty!14900) tp_is_empty!10755 (not b!2312947) (not b!2312978) (not d!684263) (not setNonEmpty!20747) (not b!2312813) (not b!2312853) (not b!2312883) (not b!2312970) (not b!2312910) (not b!2312985) (not b!2312831) (not b!2312921) b_and!184929 (not b_next!70735) (not setNonEmpty!20749) (not b!2312948) (not b!2312829) (not d!684247) (not b!2312906) (not b!2312989) (not d!684265) (not b!2312950) (not setNonEmpty!20737) (not b!2312907) (not b!2312986) (not setNonEmpty!20728) (not d!684275))
(check-sat b_and!184935 b_and!184933 (not b_next!70733) b_and!184931 b_and!184929 (not b_next!70735) (not b_next!70739) (not b_next!70737))
