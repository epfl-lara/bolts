; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216636 () Bool)

(assert start!216636)

(declare-fun b!2220199 () Bool)

(declare-fun b_free!64313 () Bool)

(declare-fun b_next!65017 () Bool)

(assert (=> b!2220199 (= b_free!64313 (not b_next!65017))))

(declare-fun tp!691609 () Bool)

(declare-fun b_and!174273 () Bool)

(assert (=> b!2220199 (= tp!691609 b_and!174273)))

(declare-fun b!2220198 () Bool)

(declare-fun b_free!64315 () Bool)

(declare-fun b_next!65019 () Bool)

(assert (=> b!2220198 (= b_free!64315 (not b_next!65019))))

(declare-fun tp!691614 () Bool)

(declare-fun b_and!174275 () Bool)

(assert (=> b!2220198 (= tp!691614 b_and!174275)))

(declare-fun mapNonEmpty!13986 () Bool)

(declare-fun mapRes!13986 () Bool)

(declare-fun tp!691611 () Bool)

(declare-fun tp!691608 () Bool)

(assert (=> mapNonEmpty!13986 (= mapRes!13986 (and tp!691611 tp!691608))))

(declare-datatypes ((C!12812 0))(
  ( (C!12813 (val!7454 Int)) )
))
(declare-datatypes ((Regex!6333 0))(
  ( (ElementMatch!6333 (c!354533 C!12812)) (Concat!10671 (regOne!13178 Regex!6333) (regTwo!13178 Regex!6333)) (EmptyExpr!6333) (Star!6333 (reg!6662 Regex!6333)) (EmptyLang!6333) (Union!6333 (regOne!13179 Regex!6333) (regTwo!13179 Regex!6333)) )
))
(declare-datatypes ((List!26117 0))(
  ( (Nil!26023) (Cons!26023 (h!31424 Regex!6333) (t!199513 List!26117)) )
))
(declare-datatypes ((Context!3762 0))(
  ( (Context!3763 (exprs!2381 List!26117)) )
))
(declare-datatypes ((array!10153 0))(
  ( (array!10154 (arr!4524 (Array (_ BitVec 32) (_ BitVec 64))) (size!20301 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!25158 0))(
  ( (tuple2!25159 (_1!14949 Context!3762) (_2!14949 C!12812)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25160 0))(
  ( (tuple2!25161 (_1!14950 tuple2!25158) (_2!14950 (InoxSet Context!3762))) )
))
(declare-datatypes ((List!26118 0))(
  ( (Nil!26024) (Cons!26024 (h!31425 tuple2!25160) (t!199514 List!26118)) )
))
(declare-datatypes ((array!10155 0))(
  ( (array!10156 (arr!4525 (Array (_ BitVec 32) List!26118)) (size!20302 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5928 0))(
  ( (LongMapFixedSize!5929 (defaultEntry!3329 Int) (mask!7484 (_ BitVec 32)) (extraKeys!3212 (_ BitVec 32)) (zeroValue!3222 List!26118) (minValue!3222 List!26118) (_size!5975 (_ BitVec 32)) (_keys!3261 array!10153) (_values!3244 array!10155) (_vacant!3025 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11673 0))(
  ( (Cell!11674 (v!29553 LongMapFixedSize!5928)) )
))
(declare-datatypes ((MutLongMap!2964 0))(
  ( (LongMap!2964 (underlying!6129 Cell!11673)) (MutLongMapExt!2963 (__x!17118 Int)) )
))
(declare-datatypes ((Cell!11675 0))(
  ( (Cell!11676 (v!29554 MutLongMap!2964)) )
))
(declare-datatypes ((Hashable!2874 0))(
  ( (HashableExt!2873 (__x!17119 Int)) )
))
(declare-datatypes ((MutableMap!2874 0))(
  ( (MutableMapExt!2873 (__x!17120 Int)) (HashMap!2874 (underlying!6130 Cell!11675) (hashF!4797 Hashable!2874) (_size!5976 (_ BitVec 32)) (defaultValue!3036 Int)) )
))
(declare-datatypes ((CacheUp!1888 0))(
  ( (CacheUp!1889 (cache!3255 MutableMap!2874)) )
))
(declare-fun cacheUp!790 () CacheUp!1888)

(declare-fun mapValue!13986 () List!26118)

(declare-fun mapKey!13986 () (_ BitVec 32))

(declare-fun mapRest!13986 () (Array (_ BitVec 32) List!26118))

(assert (=> mapNonEmpty!13986 (= (arr!4525 (_values!3244 (v!29553 (underlying!6129 (v!29554 (underlying!6130 (cache!3255 cacheUp!790))))))) (store mapRest!13986 mapKey!13986 mapValue!13986))))

(declare-fun b!2220197 () Bool)

(declare-fun e!1417898 () Bool)

(declare-fun e!1417895 () Bool)

(assert (=> b!2220197 (= e!1417898 e!1417895)))

(declare-fun mapIsEmpty!13986 () Bool)

(assert (=> mapIsEmpty!13986 mapRes!13986))

(declare-fun e!1417896 () Bool)

(declare-fun e!1417893 () Bool)

(assert (=> b!2220198 (= e!1417896 (and e!1417893 tp!691614))))

(declare-fun tp!691612 () Bool)

(declare-fun e!1417891 () Bool)

(declare-fun tp!691613 () Bool)

(declare-fun array_inv!3248 (array!10153) Bool)

(declare-fun array_inv!3249 (array!10155) Bool)

(assert (=> b!2220199 (= e!1417895 (and tp!691609 tp!691612 tp!691613 (array_inv!3248 (_keys!3261 (v!29553 (underlying!6129 (v!29554 (underlying!6130 (cache!3255 cacheUp!790))))))) (array_inv!3249 (_values!3244 (v!29553 (underlying!6129 (v!29554 (underlying!6130 (cache!3255 cacheUp!790))))))) e!1417891))))

(declare-fun validCacheMapUp!262 (MutableMap!2874) Bool)

(assert (=> start!216636 (not (validCacheMapUp!262 (cache!3255 cacheUp!790)))))

(declare-fun e!1417894 () Bool)

(declare-fun inv!35335 (CacheUp!1888) Bool)

(assert (=> start!216636 (and (inv!35335 cacheUp!790) e!1417894)))

(declare-fun b!2220200 () Bool)

(assert (=> b!2220200 (= e!1417894 e!1417896)))

(declare-fun b!2220201 () Bool)

(declare-fun e!1417897 () Bool)

(declare-fun lt!827381 () MutLongMap!2964)

(get-info :version)

(assert (=> b!2220201 (= e!1417893 (and e!1417897 ((_ is LongMap!2964) lt!827381)))))

(assert (=> b!2220201 (= lt!827381 (v!29554 (underlying!6130 (cache!3255 cacheUp!790))))))

(declare-fun b!2220202 () Bool)

(declare-fun tp!691610 () Bool)

(assert (=> b!2220202 (= e!1417891 (and tp!691610 mapRes!13986))))

(declare-fun condMapEmpty!13986 () Bool)

(declare-fun mapDefault!13986 () List!26118)

(assert (=> b!2220202 (= condMapEmpty!13986 (= (arr!4525 (_values!3244 (v!29553 (underlying!6129 (v!29554 (underlying!6130 (cache!3255 cacheUp!790))))))) ((as const (Array (_ BitVec 32) List!26118)) mapDefault!13986)))))

(declare-fun b!2220203 () Bool)

(assert (=> b!2220203 (= e!1417897 e!1417898)))

(assert (= (and b!2220202 condMapEmpty!13986) mapIsEmpty!13986))

(assert (= (and b!2220202 (not condMapEmpty!13986)) mapNonEmpty!13986))

(assert (= b!2220199 b!2220202))

(assert (= b!2220197 b!2220199))

(assert (= b!2220203 b!2220197))

(assert (= (and b!2220201 ((_ is LongMap!2964) (v!29554 (underlying!6130 (cache!3255 cacheUp!790))))) b!2220203))

(assert (= b!2220198 b!2220201))

(assert (= (and b!2220200 ((_ is HashMap!2874) (cache!3255 cacheUp!790))) b!2220198))

(assert (= start!216636 b!2220200))

(declare-fun m!2660935 () Bool)

(assert (=> mapNonEmpty!13986 m!2660935))

(declare-fun m!2660937 () Bool)

(assert (=> b!2220199 m!2660937))

(declare-fun m!2660939 () Bool)

(assert (=> b!2220199 m!2660939))

(declare-fun m!2660941 () Bool)

(assert (=> start!216636 m!2660941))

(declare-fun m!2660943 () Bool)

(assert (=> start!216636 m!2660943))

(check-sat (not mapNonEmpty!13986) (not b!2220199) (not start!216636) (not b!2220202) (not b_next!65019) b_and!174273 (not b_next!65017) b_and!174275)
(check-sat b_and!174275 b_and!174273 (not b_next!65019) (not b_next!65017))
(get-model)

(declare-fun d!663722 () Bool)

(declare-fun res!953356 () Bool)

(declare-fun e!1417901 () Bool)

(assert (=> d!663722 (=> (not res!953356) (not e!1417901))))

(declare-fun valid!2290 (MutableMap!2874) Bool)

(assert (=> d!663722 (= res!953356 (valid!2290 (cache!3255 cacheUp!790)))))

(assert (=> d!663722 (= (validCacheMapUp!262 (cache!3255 cacheUp!790)) e!1417901)))

(declare-fun b!2220208 () Bool)

(declare-fun res!953357 () Bool)

(assert (=> b!2220208 (=> (not res!953357) (not e!1417901))))

(declare-fun invariantList!339 (List!26118) Bool)

(declare-datatypes ((ListMap!741 0))(
  ( (ListMap!742 (toList!1285 List!26118)) )
))
(declare-fun map!5273 (MutableMap!2874) ListMap!741)

(assert (=> b!2220208 (= res!953357 (invariantList!339 (toList!1285 (map!5273 (cache!3255 cacheUp!790)))))))

(declare-fun b!2220209 () Bool)

(declare-fun lambda!83771 () Int)

(declare-fun forall!5293 (List!26118 Int) Bool)

(assert (=> b!2220209 (= e!1417901 (forall!5293 (toList!1285 (map!5273 (cache!3255 cacheUp!790))) lambda!83771))))

(assert (= (and d!663722 res!953356) b!2220208))

(assert (= (and b!2220208 res!953357) b!2220209))

(declare-fun m!2660946 () Bool)

(assert (=> d!663722 m!2660946))

(declare-fun m!2660948 () Bool)

(assert (=> b!2220208 m!2660948))

(declare-fun m!2660950 () Bool)

(assert (=> b!2220208 m!2660950))

(assert (=> b!2220209 m!2660948))

(declare-fun m!2660952 () Bool)

(assert (=> b!2220209 m!2660952))

(assert (=> start!216636 d!663722))

(declare-fun d!663724 () Bool)

(declare-fun res!953360 () Bool)

(declare-fun e!1417904 () Bool)

(assert (=> d!663724 (=> (not res!953360) (not e!1417904))))

(assert (=> d!663724 (= res!953360 ((_ is HashMap!2874) (cache!3255 cacheUp!790)))))

(assert (=> d!663724 (= (inv!35335 cacheUp!790) e!1417904)))

(declare-fun b!2220212 () Bool)

(assert (=> b!2220212 (= e!1417904 (validCacheMapUp!262 (cache!3255 cacheUp!790)))))

(assert (= (and d!663724 res!953360) b!2220212))

(assert (=> b!2220212 m!2660941))

(assert (=> start!216636 d!663724))

(declare-fun d!663726 () Bool)

(assert (=> d!663726 (= (array_inv!3248 (_keys!3261 (v!29553 (underlying!6129 (v!29554 (underlying!6130 (cache!3255 cacheUp!790))))))) (bvsge (size!20301 (_keys!3261 (v!29553 (underlying!6129 (v!29554 (underlying!6130 (cache!3255 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2220199 d!663726))

(declare-fun d!663728 () Bool)

(assert (=> d!663728 (= (array_inv!3249 (_values!3244 (v!29553 (underlying!6129 (v!29554 (underlying!6130 (cache!3255 cacheUp!790))))))) (bvsge (size!20302 (_values!3244 (v!29553 (underlying!6129 (v!29554 (underlying!6130 (cache!3255 cacheUp!790))))))) #b00000000000000000000000000000000))))

(assert (=> b!2220199 d!663728))

(declare-fun setRes!19359 () Bool)

(declare-fun tp!691623 () Bool)

(declare-fun e!1417911 () Bool)

(declare-fun e!1417913 () Bool)

(declare-fun tp_is_empty!9895 () Bool)

(declare-fun b!2220221 () Bool)

(declare-fun inv!35336 (Context!3762) Bool)

(assert (=> b!2220221 (= e!1417911 (and (inv!35336 (_1!14949 (_1!14950 (h!31425 mapDefault!13986)))) e!1417913 tp_is_empty!9895 setRes!19359 tp!691623))))

(declare-fun condSetEmpty!19359 () Bool)

(assert (=> b!2220221 (= condSetEmpty!19359 (= (_2!14950 (h!31425 mapDefault!13986)) ((as const (Array Context!3762 Bool)) false)))))

(assert (=> b!2220202 (= tp!691610 e!1417911)))

(declare-fun setElem!19359 () Context!3762)

(declare-fun tp!691625 () Bool)

(declare-fun e!1417912 () Bool)

(declare-fun setNonEmpty!19359 () Bool)

(assert (=> setNonEmpty!19359 (= setRes!19359 (and tp!691625 (inv!35336 setElem!19359) e!1417912))))

(declare-fun setRest!19359 () (InoxSet Context!3762))

(assert (=> setNonEmpty!19359 (= (_2!14950 (h!31425 mapDefault!13986)) ((_ map or) (store ((as const (Array Context!3762 Bool)) false) setElem!19359 true) setRest!19359))))

(declare-fun setIsEmpty!19359 () Bool)

(assert (=> setIsEmpty!19359 setRes!19359))

(declare-fun b!2220222 () Bool)

(declare-fun tp!691624 () Bool)

(assert (=> b!2220222 (= e!1417913 tp!691624)))

(declare-fun b!2220223 () Bool)

(declare-fun tp!691626 () Bool)

(assert (=> b!2220223 (= e!1417912 tp!691626)))

(assert (= b!2220221 b!2220222))

(assert (= (and b!2220221 condSetEmpty!19359) setIsEmpty!19359))

(assert (= (and b!2220221 (not condSetEmpty!19359)) setNonEmpty!19359))

(assert (= setNonEmpty!19359 b!2220223))

(assert (= (and b!2220202 ((_ is Cons!26024) mapDefault!13986)) b!2220221))

(declare-fun m!2660954 () Bool)

(assert (=> b!2220221 m!2660954))

(declare-fun m!2660956 () Bool)

(assert (=> setNonEmpty!19359 m!2660956))

(declare-fun setIsEmpty!19364 () Bool)

(declare-fun setRes!19364 () Bool)

(assert (=> setIsEmpty!19364 setRes!19364))

(declare-fun mapIsEmpty!13989 () Bool)

(declare-fun mapRes!13989 () Bool)

(assert (=> mapIsEmpty!13989 mapRes!13989))

(declare-fun setElem!19364 () Context!3762)

(declare-fun tp!691645 () Bool)

(declare-fun e!1417928 () Bool)

(declare-fun setNonEmpty!19364 () Bool)

(declare-fun setRes!19365 () Bool)

(assert (=> setNonEmpty!19364 (= setRes!19365 (and tp!691645 (inv!35336 setElem!19364) e!1417928))))

(declare-fun mapDefault!13989 () List!26118)

(declare-fun setRest!19365 () (InoxSet Context!3762))

(assert (=> setNonEmpty!19364 (= (_2!14950 (h!31425 mapDefault!13989)) ((_ map or) (store ((as const (Array Context!3762 Bool)) false) setElem!19364 true) setRest!19365))))

(declare-fun mapNonEmpty!13989 () Bool)

(declare-fun tp!691649 () Bool)

(declare-fun e!1417931 () Bool)

(assert (=> mapNonEmpty!13989 (= mapRes!13989 (and tp!691649 e!1417931))))

(declare-fun mapKey!13989 () (_ BitVec 32))

(declare-fun mapRest!13989 () (Array (_ BitVec 32) List!26118))

(declare-fun mapValue!13989 () List!26118)

(assert (=> mapNonEmpty!13989 (= mapRest!13986 (store mapRest!13989 mapKey!13989 mapValue!13989))))

(declare-fun tp!691652 () Bool)

(declare-fun b!2220239 () Bool)

(declare-fun e!1417927 () Bool)

(assert (=> b!2220239 (= e!1417931 (and (inv!35336 (_1!14949 (_1!14950 (h!31425 mapValue!13989)))) e!1417927 tp_is_empty!9895 setRes!19364 tp!691652))))

(declare-fun condSetEmpty!19365 () Bool)

(assert (=> b!2220239 (= condSetEmpty!19365 (= (_2!14950 (h!31425 mapValue!13989)) ((as const (Array Context!3762 Bool)) false)))))

(declare-fun setIsEmpty!19365 () Bool)

(assert (=> setIsEmpty!19365 setRes!19365))

(declare-fun e!1417926 () Bool)

(declare-fun tp!691647 () Bool)

(declare-fun setNonEmpty!19365 () Bool)

(declare-fun setElem!19365 () Context!3762)

(assert (=> setNonEmpty!19365 (= setRes!19364 (and tp!691647 (inv!35336 setElem!19365) e!1417926))))

(declare-fun setRest!19364 () (InoxSet Context!3762))

(assert (=> setNonEmpty!19365 (= (_2!14950 (h!31425 mapValue!13989)) ((_ map or) (store ((as const (Array Context!3762 Bool)) false) setElem!19365 true) setRest!19364))))

(declare-fun b!2220238 () Bool)

(declare-fun tp!691648 () Bool)

(assert (=> b!2220238 (= e!1417927 tp!691648)))

(declare-fun condMapEmpty!13989 () Bool)

(assert (=> mapNonEmpty!13986 (= condMapEmpty!13989 (= mapRest!13986 ((as const (Array (_ BitVec 32) List!26118)) mapDefault!13989)))))

(declare-fun e!1417930 () Bool)

(assert (=> mapNonEmpty!13986 (= tp!691611 (and e!1417930 mapRes!13989))))

(declare-fun b!2220240 () Bool)

(declare-fun e!1417929 () Bool)

(declare-fun tp!691646 () Bool)

(assert (=> b!2220240 (= e!1417929 tp!691646)))

(declare-fun tp!691653 () Bool)

(declare-fun b!2220241 () Bool)

(assert (=> b!2220241 (= e!1417930 (and (inv!35336 (_1!14949 (_1!14950 (h!31425 mapDefault!13989)))) e!1417929 tp_is_empty!9895 setRes!19365 tp!691653))))

(declare-fun condSetEmpty!19364 () Bool)

(assert (=> b!2220241 (= condSetEmpty!19364 (= (_2!14950 (h!31425 mapDefault!13989)) ((as const (Array Context!3762 Bool)) false)))))

(declare-fun b!2220242 () Bool)

(declare-fun tp!691651 () Bool)

(assert (=> b!2220242 (= e!1417928 tp!691651)))

(declare-fun b!2220243 () Bool)

(declare-fun tp!691650 () Bool)

(assert (=> b!2220243 (= e!1417926 tp!691650)))

(assert (= (and mapNonEmpty!13986 condMapEmpty!13989) mapIsEmpty!13989))

(assert (= (and mapNonEmpty!13986 (not condMapEmpty!13989)) mapNonEmpty!13989))

(assert (= b!2220239 b!2220238))

(assert (= (and b!2220239 condSetEmpty!19365) setIsEmpty!19364))

(assert (= (and b!2220239 (not condSetEmpty!19365)) setNonEmpty!19365))

(assert (= setNonEmpty!19365 b!2220243))

(assert (= (and mapNonEmpty!13989 ((_ is Cons!26024) mapValue!13989)) b!2220239))

(assert (= b!2220241 b!2220240))

(assert (= (and b!2220241 condSetEmpty!19364) setIsEmpty!19365))

(assert (= (and b!2220241 (not condSetEmpty!19364)) setNonEmpty!19364))

(assert (= setNonEmpty!19364 b!2220242))

(assert (= (and mapNonEmpty!13986 ((_ is Cons!26024) mapDefault!13989)) b!2220241))

(declare-fun m!2660958 () Bool)

(assert (=> setNonEmpty!19364 m!2660958))

(declare-fun m!2660960 () Bool)

(assert (=> b!2220239 m!2660960))

(declare-fun m!2660962 () Bool)

(assert (=> mapNonEmpty!13989 m!2660962))

(declare-fun m!2660964 () Bool)

(assert (=> b!2220241 m!2660964))

(declare-fun m!2660966 () Bool)

(assert (=> setNonEmpty!19365 m!2660966))

(declare-fun tp!691654 () Bool)

(declare-fun e!1417934 () Bool)

(declare-fun setRes!19366 () Bool)

(declare-fun e!1417932 () Bool)

(declare-fun b!2220244 () Bool)

(assert (=> b!2220244 (= e!1417932 (and (inv!35336 (_1!14949 (_1!14950 (h!31425 mapValue!13986)))) e!1417934 tp_is_empty!9895 setRes!19366 tp!691654))))

(declare-fun condSetEmpty!19366 () Bool)

(assert (=> b!2220244 (= condSetEmpty!19366 (= (_2!14950 (h!31425 mapValue!13986)) ((as const (Array Context!3762 Bool)) false)))))

(assert (=> mapNonEmpty!13986 (= tp!691608 e!1417932)))

(declare-fun setNonEmpty!19366 () Bool)

(declare-fun e!1417933 () Bool)

(declare-fun tp!691656 () Bool)

(declare-fun setElem!19366 () Context!3762)

(assert (=> setNonEmpty!19366 (= setRes!19366 (and tp!691656 (inv!35336 setElem!19366) e!1417933))))

(declare-fun setRest!19366 () (InoxSet Context!3762))

(assert (=> setNonEmpty!19366 (= (_2!14950 (h!31425 mapValue!13986)) ((_ map or) (store ((as const (Array Context!3762 Bool)) false) setElem!19366 true) setRest!19366))))

(declare-fun setIsEmpty!19366 () Bool)

(assert (=> setIsEmpty!19366 setRes!19366))

(declare-fun b!2220245 () Bool)

(declare-fun tp!691655 () Bool)

(assert (=> b!2220245 (= e!1417934 tp!691655)))

(declare-fun b!2220246 () Bool)

(declare-fun tp!691657 () Bool)

(assert (=> b!2220246 (= e!1417933 tp!691657)))

(assert (= b!2220244 b!2220245))

(assert (= (and b!2220244 condSetEmpty!19366) setIsEmpty!19366))

(assert (= (and b!2220244 (not condSetEmpty!19366)) setNonEmpty!19366))

(assert (= setNonEmpty!19366 b!2220246))

(assert (= (and mapNonEmpty!13986 ((_ is Cons!26024) mapValue!13986)) b!2220244))

(declare-fun m!2660968 () Bool)

(assert (=> b!2220244 m!2660968))

(declare-fun m!2660970 () Bool)

(assert (=> setNonEmpty!19366 m!2660970))

(declare-fun e!1417935 () Bool)

(declare-fun e!1417937 () Bool)

(declare-fun setRes!19367 () Bool)

(declare-fun tp!691658 () Bool)

(declare-fun b!2220247 () Bool)

(assert (=> b!2220247 (= e!1417935 (and (inv!35336 (_1!14949 (_1!14950 (h!31425 (zeroValue!3222 (v!29553 (underlying!6129 (v!29554 (underlying!6130 (cache!3255 cacheUp!790)))))))))) e!1417937 tp_is_empty!9895 setRes!19367 tp!691658))))

(declare-fun condSetEmpty!19367 () Bool)

(assert (=> b!2220247 (= condSetEmpty!19367 (= (_2!14950 (h!31425 (zeroValue!3222 (v!29553 (underlying!6129 (v!29554 (underlying!6130 (cache!3255 cacheUp!790)))))))) ((as const (Array Context!3762 Bool)) false)))))

(assert (=> b!2220199 (= tp!691612 e!1417935)))

(declare-fun setElem!19367 () Context!3762)

(declare-fun e!1417936 () Bool)

(declare-fun tp!691660 () Bool)

(declare-fun setNonEmpty!19367 () Bool)

(assert (=> setNonEmpty!19367 (= setRes!19367 (and tp!691660 (inv!35336 setElem!19367) e!1417936))))

(declare-fun setRest!19367 () (InoxSet Context!3762))

(assert (=> setNonEmpty!19367 (= (_2!14950 (h!31425 (zeroValue!3222 (v!29553 (underlying!6129 (v!29554 (underlying!6130 (cache!3255 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3762 Bool)) false) setElem!19367 true) setRest!19367))))

(declare-fun setIsEmpty!19367 () Bool)

(assert (=> setIsEmpty!19367 setRes!19367))

(declare-fun b!2220248 () Bool)

(declare-fun tp!691659 () Bool)

(assert (=> b!2220248 (= e!1417937 tp!691659)))

(declare-fun b!2220249 () Bool)

(declare-fun tp!691661 () Bool)

(assert (=> b!2220249 (= e!1417936 tp!691661)))

(assert (= b!2220247 b!2220248))

(assert (= (and b!2220247 condSetEmpty!19367) setIsEmpty!19367))

(assert (= (and b!2220247 (not condSetEmpty!19367)) setNonEmpty!19367))

(assert (= setNonEmpty!19367 b!2220249))

(assert (= (and b!2220199 ((_ is Cons!26024) (zeroValue!3222 (v!29553 (underlying!6129 (v!29554 (underlying!6130 (cache!3255 cacheUp!790)))))))) b!2220247))

(declare-fun m!2660972 () Bool)

(assert (=> b!2220247 m!2660972))

(declare-fun m!2660974 () Bool)

(assert (=> setNonEmpty!19367 m!2660974))

(declare-fun setRes!19368 () Bool)

(declare-fun e!1417940 () Bool)

(declare-fun b!2220250 () Bool)

(declare-fun e!1417938 () Bool)

(declare-fun tp!691662 () Bool)

(assert (=> b!2220250 (= e!1417938 (and (inv!35336 (_1!14949 (_1!14950 (h!31425 (minValue!3222 (v!29553 (underlying!6129 (v!29554 (underlying!6130 (cache!3255 cacheUp!790)))))))))) e!1417940 tp_is_empty!9895 setRes!19368 tp!691662))))

(declare-fun condSetEmpty!19368 () Bool)

(assert (=> b!2220250 (= condSetEmpty!19368 (= (_2!14950 (h!31425 (minValue!3222 (v!29553 (underlying!6129 (v!29554 (underlying!6130 (cache!3255 cacheUp!790)))))))) ((as const (Array Context!3762 Bool)) false)))))

(assert (=> b!2220199 (= tp!691613 e!1417938)))

(declare-fun e!1417939 () Bool)

(declare-fun setNonEmpty!19368 () Bool)

(declare-fun tp!691664 () Bool)

(declare-fun setElem!19368 () Context!3762)

(assert (=> setNonEmpty!19368 (= setRes!19368 (and tp!691664 (inv!35336 setElem!19368) e!1417939))))

(declare-fun setRest!19368 () (InoxSet Context!3762))

(assert (=> setNonEmpty!19368 (= (_2!14950 (h!31425 (minValue!3222 (v!29553 (underlying!6129 (v!29554 (underlying!6130 (cache!3255 cacheUp!790)))))))) ((_ map or) (store ((as const (Array Context!3762 Bool)) false) setElem!19368 true) setRest!19368))))

(declare-fun setIsEmpty!19368 () Bool)

(assert (=> setIsEmpty!19368 setRes!19368))

(declare-fun b!2220251 () Bool)

(declare-fun tp!691663 () Bool)

(assert (=> b!2220251 (= e!1417940 tp!691663)))

(declare-fun b!2220252 () Bool)

(declare-fun tp!691665 () Bool)

(assert (=> b!2220252 (= e!1417939 tp!691665)))

(assert (= b!2220250 b!2220251))

(assert (= (and b!2220250 condSetEmpty!19368) setIsEmpty!19368))

(assert (= (and b!2220250 (not condSetEmpty!19368)) setNonEmpty!19368))

(assert (= setNonEmpty!19368 b!2220252))

(assert (= (and b!2220199 ((_ is Cons!26024) (minValue!3222 (v!29553 (underlying!6129 (v!29554 (underlying!6130 (cache!3255 cacheUp!790)))))))) b!2220250))

(declare-fun m!2660976 () Bool)

(assert (=> b!2220250 m!2660976))

(declare-fun m!2660978 () Bool)

(assert (=> setNonEmpty!19368 m!2660978))

(check-sat (not b!2220244) (not b!2220240) (not b!2220221) (not b!2220223) (not b!2220208) (not b!2220238) (not b!2220251) (not b!2220209) (not setNonEmpty!19367) tp_is_empty!9895 (not b!2220243) (not b!2220245) (not setNonEmpty!19364) (not b!2220212) (not mapNonEmpty!13989) (not b!2220248) (not b!2220241) (not b!2220247) (not b_next!65019) b_and!174273 (not b!2220242) (not b!2220250) (not setNonEmpty!19365) (not b!2220239) (not b!2220249) (not b!2220252) (not setNonEmpty!19359) (not setNonEmpty!19368) (not b!2220222) (not b!2220246) (not b_next!65017) b_and!174275 (not d!663722) (not setNonEmpty!19366))
(check-sat b_and!174275 b_and!174273 (not b_next!65019) (not b_next!65017))
