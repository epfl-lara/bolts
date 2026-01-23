; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268312 () Bool)

(assert start!268312)

(declare-fun b!2773280 () Bool)

(declare-fun b_free!78261 () Bool)

(declare-fun b_next!78965 () Bool)

(assert (=> b!2773280 (= b_free!78261 (not b_next!78965))))

(declare-fun tp!877175 () Bool)

(declare-fun b_and!202999 () Bool)

(assert (=> b!2773280 (= tp!877175 b_and!202999)))

(declare-fun b!2773289 () Bool)

(declare-fun b_free!78263 () Bool)

(declare-fun b_next!78967 () Bool)

(assert (=> b!2773289 (= b_free!78263 (not b_next!78967))))

(declare-fun tp!877172 () Bool)

(declare-fun b_and!203001 () Bool)

(assert (=> b!2773289 (= tp!877172 b_and!203001)))

(declare-fun b!2773291 () Bool)

(declare-fun b_free!78265 () Bool)

(declare-fun b_next!78969 () Bool)

(assert (=> b!2773291 (= b_free!78265 (not b_next!78969))))

(declare-fun tp!877160 () Bool)

(declare-fun b_and!203003 () Bool)

(assert (=> b!2773291 (= tp!877160 b_and!203003)))

(declare-fun b!2773296 () Bool)

(declare-fun b_free!78267 () Bool)

(declare-fun b_next!78971 () Bool)

(assert (=> b!2773296 (= b_free!78267 (not b_next!78971))))

(declare-fun tp!877166 () Bool)

(declare-fun b_and!203005 () Bool)

(assert (=> b!2773296 (= tp!877166 b_and!203005)))

(declare-fun b!2773276 () Bool)

(declare-fun e!1748845 () Bool)

(declare-fun e!1748840 () Bool)

(assert (=> b!2773276 (= e!1748845 e!1748840)))

(declare-fun b!2773277 () Bool)

(declare-fun e!1748851 () Bool)

(declare-datatypes ((C!16332 0))(
  ( (C!16333 (val!10100 Int)) )
))
(declare-datatypes ((Regex!8087 0))(
  ( (ElementMatch!8087 (c!450334 C!16332)) (Concat!13175 (regOne!16686 Regex!8087) (regTwo!16686 Regex!8087)) (EmptyExpr!8087) (Star!8087 (reg!8416 Regex!8087)) (EmptyLang!8087) (Union!8087 (regOne!16687 Regex!8087) (regTwo!16687 Regex!8087)) )
))
(declare-datatypes ((List!32111 0))(
  ( (Nil!32011) (Cons!32011 (h!37431 Regex!8087) (t!228239 List!32111)) )
))
(declare-datatypes ((Context!4610 0))(
  ( (Context!4611 (exprs!2805 List!32111)) )
))
(declare-datatypes ((tuple3!4838 0))(
  ( (tuple3!4839 (_1!18981 Regex!8087) (_2!18981 Context!4610) (_3!2889 C!16332)) )
))
(declare-datatypes ((array!13468 0))(
  ( (array!13469 (arr!6002 (Array (_ BitVec 32) (_ BitVec 64))) (size!24794 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32184 0))(
  ( (tuple2!32185 (_1!18982 tuple3!4838) (_2!18982 (InoxSet Context!4610))) )
))
(declare-datatypes ((List!32112 0))(
  ( (Nil!32012) (Cons!32012 (h!37432 tuple2!32184) (t!228240 List!32112)) )
))
(declare-datatypes ((array!13470 0))(
  ( (array!13471 (arr!6003 (Array (_ BitVec 32) List!32112)) (size!24795 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7564 0))(
  ( (LongMapFixedSize!7565 (defaultEntry!4167 Int) (mask!9562 (_ BitVec 32)) (extraKeys!4031 (_ BitVec 32)) (zeroValue!4041 List!32112) (minValue!4041 List!32112) (_size!7607 (_ BitVec 32)) (_keys!4082 array!13468) (_values!4063 array!13470) (_vacant!3843 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14937 0))(
  ( (Cell!14938 (v!33620 LongMapFixedSize!7564)) )
))
(declare-datatypes ((MutLongMap!3782 0))(
  ( (LongMap!3782 (underlying!7767 Cell!14937)) (MutLongMapExt!3781 (__x!20996 Int)) )
))
(declare-fun lt!988582 () MutLongMap!3782)

(get-info :version)

(assert (=> b!2773277 (= e!1748851 (and e!1748845 ((_ is LongMap!3782) lt!988582)))))

(declare-datatypes ((Cell!14939 0))(
  ( (Cell!14940 (v!33621 MutLongMap!3782)) )
))
(declare-datatypes ((Hashable!3698 0))(
  ( (HashableExt!3697 (__x!20997 Int)) )
))
(declare-datatypes ((MutableMap!3688 0))(
  ( (MutableMapExt!3687 (__x!20998 Int)) (HashMap!3688 (underlying!7768 Cell!14939) (hashF!5730 Hashable!3698) (_size!7608 (_ BitVec 32)) (defaultValue!3859 Int)) )
))
(declare-datatypes ((CacheDown!2514 0))(
  ( (CacheDown!2515 (cache!3831 MutableMap!3688)) )
))
(declare-fun cacheDown!939 () CacheDown!2514)

(assert (=> b!2773277 (= lt!988582 (v!33621 (underlying!7768 (cache!3831 cacheDown!939))))))

(declare-fun lt!988584 () Int)

(declare-fun e!1748841 () Bool)

(declare-fun b!2773278 () Bool)

(declare-datatypes ((List!32113 0))(
  ( (Nil!32013) (Cons!32013 (h!37433 C!16332) (t!228241 List!32113)) )
))
(declare-datatypes ((IArray!19939 0))(
  ( (IArray!19940 (innerList!10027 List!32113)) )
))
(declare-datatypes ((Conc!9967 0))(
  ( (Node!9967 (left!24396 Conc!9967) (right!24726 Conc!9967) (csize!20164 Int) (cheight!10178 Int)) (Leaf!15179 (xs!13077 IArray!19939) (csize!20165 Int)) (Empty!9967) )
))
(declare-datatypes ((BalanceConc!19548 0))(
  ( (BalanceConc!19549 (c!450335 Conc!9967)) )
))
(declare-fun input!5495 () BalanceConc!19548)

(declare-fun lt!988581 () List!32113)

(declare-fun z!3597 () (InoxSet Context!4610))

(declare-datatypes ((tuple2!32186 0))(
  ( (tuple2!32187 (_1!18983 Context!4610) (_2!18983 C!16332)) )
))
(declare-datatypes ((tuple2!32188 0))(
  ( (tuple2!32189 (_1!18984 tuple2!32186) (_2!18984 (InoxSet Context!4610))) )
))
(declare-datatypes ((List!32114 0))(
  ( (Nil!32014) (Cons!32014 (h!37434 tuple2!32188) (t!228242 List!32114)) )
))
(declare-datatypes ((Hashable!3699 0))(
  ( (HashableExt!3698 (__x!20999 Int)) )
))
(declare-datatypes ((array!13472 0))(
  ( (array!13473 (arr!6004 (Array (_ BitVec 32) List!32114)) (size!24796 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7566 0))(
  ( (LongMapFixedSize!7567 (defaultEntry!4168 Int) (mask!9563 (_ BitVec 32)) (extraKeys!4032 (_ BitVec 32)) (zeroValue!4042 List!32114) (minValue!4042 List!32114) (_size!7609 (_ BitVec 32)) (_keys!4083 array!13468) (_values!4064 array!13472) (_vacant!3844 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14941 0))(
  ( (Cell!14942 (v!33622 LongMapFixedSize!7566)) )
))
(declare-datatypes ((MutLongMap!3783 0))(
  ( (LongMap!3783 (underlying!7769 Cell!14941)) (MutLongMapExt!3782 (__x!21000 Int)) )
))
(declare-datatypes ((Cell!14943 0))(
  ( (Cell!14944 (v!33623 MutLongMap!3783)) )
))
(declare-datatypes ((MutableMap!3689 0))(
  ( (MutableMapExt!3688 (__x!21001 Int)) (HashMap!3689 (underlying!7770 Cell!14943) (hashF!5731 Hashable!3699) (_size!7610 (_ BitVec 32)) (defaultValue!3860 Int)) )
))
(declare-datatypes ((CacheUp!2394 0))(
  ( (CacheUp!2395 (cache!3832 MutableMap!3689)) )
))
(declare-datatypes ((tuple3!4840 0))(
  ( (tuple3!4841 (_1!18985 Int) (_2!18985 CacheUp!2394) (_3!2890 CacheDown!2514)) )
))
(declare-fun lt!988579 () tuple3!4840)

(declare-fun findLongestMatchInnerZipperFast!40 ((InoxSet Context!4610) List!32113 Int List!32113 BalanceConc!19548 Int) Int)

(assert (=> b!2773278 (= e!1748841 (= (_1!18985 lt!988579) (findLongestMatchInnerZipperFast!40 z!3597 Nil!32013 0 lt!988581 input!5495 lt!988584)))))

(declare-fun b!2773279 () Bool)

(declare-fun res!1159196 () Bool)

(assert (=> b!2773279 (=> (not res!1159196) (not e!1748841))))

(declare-fun valid!2951 (CacheDown!2514) Bool)

(assert (=> b!2773279 (= res!1159196 (valid!2951 (_3!2890 lt!988579)))))

(declare-fun tp!877176 () Bool)

(declare-fun e!1748850 () Bool)

(declare-fun cacheUp!820 () CacheUp!2394)

(declare-fun e!1748839 () Bool)

(declare-fun tp!877165 () Bool)

(declare-fun array_inv!4295 (array!13468) Bool)

(declare-fun array_inv!4296 (array!13472) Bool)

(assert (=> b!2773280 (= e!1748850 (and tp!877175 tp!877176 tp!877165 (array_inv!4295 (_keys!4083 (v!33622 (underlying!7769 (v!33623 (underlying!7770 (cache!3832 cacheUp!820))))))) (array_inv!4296 (_values!4064 (v!33622 (underlying!7769 (v!33623 (underlying!7770 (cache!3832 cacheUp!820))))))) e!1748839))))

(declare-fun mapNonEmpty!17269 () Bool)

(declare-fun mapRes!17270 () Bool)

(declare-fun tp!877167 () Bool)

(declare-fun tp!877161 () Bool)

(assert (=> mapNonEmpty!17269 (= mapRes!17270 (and tp!877167 tp!877161))))

(declare-fun mapValue!17269 () List!32114)

(declare-fun mapRest!17270 () (Array (_ BitVec 32) List!32114))

(declare-fun mapKey!17269 () (_ BitVec 32))

(assert (=> mapNonEmpty!17269 (= (arr!6004 (_values!4064 (v!33622 (underlying!7769 (v!33623 (underlying!7770 (cache!3832 cacheUp!820))))))) (store mapRest!17270 mapKey!17269 mapValue!17269))))

(declare-fun mapIsEmpty!17269 () Bool)

(assert (=> mapIsEmpty!17269 mapRes!17270))

(declare-fun setElem!22926 () Context!4610)

(declare-fun setNonEmpty!22926 () Bool)

(declare-fun e!1748843 () Bool)

(declare-fun tp!877164 () Bool)

(declare-fun setRes!22926 () Bool)

(declare-fun inv!43476 (Context!4610) Bool)

(assert (=> setNonEmpty!22926 (= setRes!22926 (and tp!877164 (inv!43476 setElem!22926) e!1748843))))

(declare-fun setRest!22926 () (InoxSet Context!4610))

(assert (=> setNonEmpty!22926 (= z!3597 ((_ map or) (store ((as const (Array Context!4610 Bool)) false) setElem!22926 true) setRest!22926))))

(declare-fun b!2773281 () Bool)

(declare-fun e!1748835 () Bool)

(assert (=> b!2773281 (= e!1748835 true)))

(declare-fun lt!988580 () Int)

(declare-fun size!24797 (List!32113) Int)

(assert (=> b!2773281 (= lt!988580 (size!24797 Nil!32013))))

(declare-fun b!2773282 () Bool)

(declare-fun tp!877173 () Bool)

(assert (=> b!2773282 (= e!1748839 (and tp!877173 mapRes!17270))))

(declare-fun condMapEmpty!17270 () Bool)

(declare-fun mapDefault!17270 () List!32114)

(assert (=> b!2773282 (= condMapEmpty!17270 (= (arr!6004 (_values!4064 (v!33622 (underlying!7769 (v!33623 (underlying!7770 (cache!3832 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32114)) mapDefault!17270)))))

(declare-fun b!2773283 () Bool)

(declare-fun tp!877162 () Bool)

(assert (=> b!2773283 (= e!1748843 tp!877162)))

(declare-fun b!2773284 () Bool)

(declare-fun e!1748849 () Bool)

(assert (=> b!2773284 (= e!1748840 e!1748849)))

(declare-fun mapNonEmpty!17270 () Bool)

(declare-fun mapRes!17269 () Bool)

(declare-fun tp!877169 () Bool)

(declare-fun tp!877171 () Bool)

(assert (=> mapNonEmpty!17270 (= mapRes!17269 (and tp!877169 tp!877171))))

(declare-fun mapKey!17270 () (_ BitVec 32))

(declare-fun mapRest!17269 () (Array (_ BitVec 32) List!32112))

(declare-fun mapValue!17270 () List!32112)

(assert (=> mapNonEmpty!17270 (= (arr!6003 (_values!4063 (v!33620 (underlying!7767 (v!33621 (underlying!7768 (cache!3831 cacheDown!939))))))) (store mapRest!17269 mapKey!17270 mapValue!17270))))

(declare-fun b!2773285 () Bool)

(declare-fun e!1748846 () Bool)

(declare-fun e!1748837 () Bool)

(declare-fun lt!988583 () MutLongMap!3783)

(assert (=> b!2773285 (= e!1748846 (and e!1748837 ((_ is LongMap!3783) lt!988583)))))

(assert (=> b!2773285 (= lt!988583 (v!33623 (underlying!7770 (cache!3832 cacheUp!820))))))

(declare-fun b!2773286 () Bool)

(declare-fun e!1748852 () Bool)

(declare-fun e!1748838 () Bool)

(assert (=> b!2773286 (= e!1748852 e!1748838)))

(declare-fun b!2773287 () Bool)

(declare-fun res!1159195 () Bool)

(declare-fun e!1748832 () Bool)

(assert (=> b!2773287 (=> (not res!1159195) (not e!1748832))))

(assert (=> b!2773287 (= res!1159195 (valid!2951 cacheDown!939))))

(declare-fun b!2773288 () Bool)

(declare-fun e!1748833 () Bool)

(declare-fun tp!877170 () Bool)

(declare-fun inv!43477 (Conc!9967) Bool)

(assert (=> b!2773288 (= e!1748833 (and (inv!43477 (c!450335 input!5495)) tp!877170))))

(assert (=> b!2773289 (= e!1748838 (and e!1748851 tp!877172))))

(declare-fun b!2773290 () Bool)

(assert (=> b!2773290 (= e!1748832 (not e!1748835))))

(declare-fun res!1159197 () Bool)

(assert (=> b!2773290 (=> res!1159197 e!1748835)))

(declare-fun ++!7920 (List!32113 List!32113) List!32113)

(assert (=> b!2773290 (= res!1159197 (not (= (++!7920 Nil!32013 lt!988581) lt!988581)))))

(assert (=> b!2773290 e!1748841))

(declare-fun res!1159199 () Bool)

(assert (=> b!2773290 (=> (not res!1159199) (not e!1748841))))

(declare-fun valid!2952 (CacheUp!2394) Bool)

(assert (=> b!2773290 (= res!1159199 (valid!2952 (_2!18985 lt!988579)))))

(declare-fun findLongestMatchInnerZipperFastMem!33 (CacheUp!2394 CacheDown!2514 (InoxSet Context!4610) List!32113 Int List!32113 BalanceConc!19548 Int) tuple3!4840)

(assert (=> b!2773290 (= lt!988579 (findLongestMatchInnerZipperFastMem!33 cacheUp!820 cacheDown!939 z!3597 Nil!32013 0 lt!988581 input!5495 lt!988584))))

(declare-fun size!24798 (BalanceConc!19548) Int)

(assert (=> b!2773290 (= lt!988584 (size!24798 input!5495))))

(declare-fun list!12082 (BalanceConc!19548) List!32113)

(assert (=> b!2773290 (= lt!988581 (list!12082 input!5495))))

(declare-fun res!1159198 () Bool)

(assert (=> start!268312 (=> (not res!1159198) (not e!1748832))))

(assert (=> start!268312 (= res!1159198 (valid!2952 cacheUp!820))))

(assert (=> start!268312 e!1748832))

(declare-fun e!1748844 () Bool)

(declare-fun inv!43478 (CacheUp!2394) Bool)

(assert (=> start!268312 (and (inv!43478 cacheUp!820) e!1748844)))

(declare-fun inv!43479 (CacheDown!2514) Bool)

(assert (=> start!268312 (and (inv!43479 cacheDown!939) e!1748852)))

(declare-fun condSetEmpty!22926 () Bool)

(assert (=> start!268312 (= condSetEmpty!22926 (= z!3597 ((as const (Array Context!4610 Bool)) false)))))

(assert (=> start!268312 setRes!22926))

(declare-fun inv!43480 (BalanceConc!19548) Bool)

(assert (=> start!268312 (and (inv!43480 input!5495) e!1748833)))

(declare-fun e!1748848 () Bool)

(assert (=> b!2773291 (= e!1748848 (and e!1748846 tp!877160))))

(declare-fun b!2773292 () Bool)

(declare-fun e!1748847 () Bool)

(declare-fun tp!877163 () Bool)

(assert (=> b!2773292 (= e!1748847 (and tp!877163 mapRes!17269))))

(declare-fun condMapEmpty!17269 () Bool)

(declare-fun mapDefault!17269 () List!32112)

(assert (=> b!2773292 (= condMapEmpty!17269 (= (arr!6003 (_values!4063 (v!33620 (underlying!7767 (v!33621 (underlying!7768 (cache!3831 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32112)) mapDefault!17269)))))

(declare-fun b!2773293 () Bool)

(declare-fun e!1748836 () Bool)

(assert (=> b!2773293 (= e!1748836 e!1748850)))

(declare-fun b!2773294 () Bool)

(assert (=> b!2773294 (= e!1748844 e!1748848)))

(declare-fun b!2773295 () Bool)

(assert (=> b!2773295 (= e!1748837 e!1748836)))

(declare-fun tp!877168 () Bool)

(declare-fun tp!877174 () Bool)

(declare-fun array_inv!4297 (array!13470) Bool)

(assert (=> b!2773296 (= e!1748849 (and tp!877166 tp!877168 tp!877174 (array_inv!4295 (_keys!4082 (v!33620 (underlying!7767 (v!33621 (underlying!7768 (cache!3831 cacheDown!939))))))) (array_inv!4297 (_values!4063 (v!33620 (underlying!7767 (v!33621 (underlying!7768 (cache!3831 cacheDown!939))))))) e!1748847))))

(declare-fun setIsEmpty!22926 () Bool)

(assert (=> setIsEmpty!22926 setRes!22926))

(declare-fun mapIsEmpty!17270 () Bool)

(assert (=> mapIsEmpty!17270 mapRes!17269))

(assert (= (and start!268312 res!1159198) b!2773287))

(assert (= (and b!2773287 res!1159195) b!2773290))

(assert (= (and b!2773290 res!1159199) b!2773279))

(assert (= (and b!2773279 res!1159196) b!2773278))

(assert (= (and b!2773290 (not res!1159197)) b!2773281))

(assert (= (and b!2773282 condMapEmpty!17270) mapIsEmpty!17269))

(assert (= (and b!2773282 (not condMapEmpty!17270)) mapNonEmpty!17269))

(assert (= b!2773280 b!2773282))

(assert (= b!2773293 b!2773280))

(assert (= b!2773295 b!2773293))

(assert (= (and b!2773285 ((_ is LongMap!3783) (v!33623 (underlying!7770 (cache!3832 cacheUp!820))))) b!2773295))

(assert (= b!2773291 b!2773285))

(assert (= (and b!2773294 ((_ is HashMap!3689) (cache!3832 cacheUp!820))) b!2773291))

(assert (= start!268312 b!2773294))

(assert (= (and b!2773292 condMapEmpty!17269) mapIsEmpty!17270))

(assert (= (and b!2773292 (not condMapEmpty!17269)) mapNonEmpty!17270))

(assert (= b!2773296 b!2773292))

(assert (= b!2773284 b!2773296))

(assert (= b!2773276 b!2773284))

(assert (= (and b!2773277 ((_ is LongMap!3782) (v!33621 (underlying!7768 (cache!3831 cacheDown!939))))) b!2773276))

(assert (= b!2773289 b!2773277))

(assert (= (and b!2773286 ((_ is HashMap!3688) (cache!3831 cacheDown!939))) b!2773289))

(assert (= start!268312 b!2773286))

(assert (= (and start!268312 condSetEmpty!22926) setIsEmpty!22926))

(assert (= (and start!268312 (not condSetEmpty!22926)) setNonEmpty!22926))

(assert (= setNonEmpty!22926 b!2773283))

(assert (= start!268312 b!2773288))

(declare-fun m!3200107 () Bool)

(assert (=> b!2773278 m!3200107))

(declare-fun m!3200109 () Bool)

(assert (=> b!2773290 m!3200109))

(declare-fun m!3200111 () Bool)

(assert (=> b!2773290 m!3200111))

(declare-fun m!3200113 () Bool)

(assert (=> b!2773290 m!3200113))

(declare-fun m!3200115 () Bool)

(assert (=> b!2773290 m!3200115))

(declare-fun m!3200117 () Bool)

(assert (=> b!2773290 m!3200117))

(declare-fun m!3200119 () Bool)

(assert (=> setNonEmpty!22926 m!3200119))

(declare-fun m!3200121 () Bool)

(assert (=> b!2773296 m!3200121))

(declare-fun m!3200123 () Bool)

(assert (=> b!2773296 m!3200123))

(declare-fun m!3200125 () Bool)

(assert (=> b!2773280 m!3200125))

(declare-fun m!3200127 () Bool)

(assert (=> b!2773280 m!3200127))

(declare-fun m!3200129 () Bool)

(assert (=> mapNonEmpty!17269 m!3200129))

(declare-fun m!3200131 () Bool)

(assert (=> mapNonEmpty!17270 m!3200131))

(declare-fun m!3200133 () Bool)

(assert (=> b!2773288 m!3200133))

(declare-fun m!3200135 () Bool)

(assert (=> b!2773279 m!3200135))

(declare-fun m!3200137 () Bool)

(assert (=> start!268312 m!3200137))

(declare-fun m!3200139 () Bool)

(assert (=> start!268312 m!3200139))

(declare-fun m!3200141 () Bool)

(assert (=> start!268312 m!3200141))

(declare-fun m!3200143 () Bool)

(assert (=> start!268312 m!3200143))

(declare-fun m!3200145 () Bool)

(assert (=> b!2773281 m!3200145))

(declare-fun m!3200147 () Bool)

(assert (=> b!2773287 m!3200147))

(check-sat (not b_next!78971) (not b_next!78967) (not b!2773290) (not b_next!78969) (not b!2773296) b_and!203005 b_and!202999 (not b!2773280) (not b!2773282) (not start!268312) (not b!2773278) (not b!2773288) (not b!2773292) (not b!2773287) (not mapNonEmpty!17270) (not b!2773281) b_and!203003 (not b_next!78965) (not setNonEmpty!22926) (not b!2773279) b_and!203001 (not mapNonEmpty!17269) (not b!2773283))
(check-sat (not b_next!78971) (not b_next!78967) b_and!203003 (not b_next!78965) (not b_next!78969) b_and!203001 b_and!203005 b_and!202999)
