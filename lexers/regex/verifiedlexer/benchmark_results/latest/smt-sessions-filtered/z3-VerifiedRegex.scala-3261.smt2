; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187886 () Bool)

(assert start!187886)

(declare-fun b!1874595 () Bool)

(declare-fun b_free!52093 () Bool)

(declare-fun b_next!52797 () Bool)

(assert (=> b!1874595 (= b_free!52093 (not b_next!52797))))

(declare-fun tp!534049 () Bool)

(declare-fun b_and!144379 () Bool)

(assert (=> b!1874595 (= tp!534049 b_and!144379)))

(declare-fun b!1874591 () Bool)

(declare-fun b_free!52095 () Bool)

(declare-fun b_next!52799 () Bool)

(assert (=> b!1874591 (= b_free!52095 (not b_next!52799))))

(declare-fun tp!534044 () Bool)

(declare-fun b_and!144381 () Bool)

(assert (=> b!1874591 (= tp!534044 b_and!144381)))

(declare-fun b!1874599 () Bool)

(declare-fun b_free!52097 () Bool)

(declare-fun b_next!52801 () Bool)

(assert (=> b!1874599 (= b_free!52097 (not b_next!52801))))

(declare-fun tp!534047 () Bool)

(declare-fun b_and!144383 () Bool)

(assert (=> b!1874599 (= tp!534047 b_and!144383)))

(declare-fun b!1874587 () Bool)

(declare-fun b_free!52099 () Bool)

(declare-fun b_next!52803 () Bool)

(assert (=> b!1874587 (= b_free!52099 (not b_next!52803))))

(declare-fun tp!534039 () Bool)

(declare-fun b_and!144385 () Bool)

(assert (=> b!1874587 (= tp!534039 b_and!144385)))

(declare-fun setIsEmpty!11581 () Bool)

(declare-fun setRes!11581 () Bool)

(assert (=> setIsEmpty!11581 setRes!11581))

(declare-fun b!1874585 () Bool)

(declare-fun e!1196159 () Bool)

(declare-fun tp_is_empty!8883 () Bool)

(declare-fun tp!534042 () Bool)

(assert (=> b!1874585 (= e!1196159 (and tp_is_empty!8883 tp!534042))))

(declare-fun b!1874586 () Bool)

(declare-fun e!1196169 () Bool)

(declare-fun e!1196161 () Bool)

(assert (=> b!1874586 (= e!1196169 e!1196161)))

(declare-fun e!1196155 () Bool)

(declare-fun e!1196164 () Bool)

(assert (=> b!1874587 (= e!1196155 (and e!1196164 tp!534039))))

(declare-fun b!1874588 () Bool)

(declare-fun e!1196160 () Bool)

(declare-fun e!1196165 () Bool)

(assert (=> b!1874588 (= e!1196160 e!1196165)))

(declare-datatypes ((C!10340 0))(
  ( (C!10341 (val!6058 Int)) )
))
(declare-datatypes ((Regex!5091 0))(
  ( (ElementMatch!5091 (c!305440 C!10340)) (Concat!8910 (regOne!10694 Regex!5091) (regTwo!10694 Regex!5091)) (EmptyExpr!5091) (Star!5091 (reg!5420 Regex!5091)) (EmptyLang!5091) (Union!5091 (regOne!10695 Regex!5091) (regTwo!10695 Regex!5091)) )
))
(declare-datatypes ((List!20912 0))(
  ( (Nil!20830) (Cons!20830 (h!26231 Regex!5091) (t!173129 List!20912)) )
))
(declare-datatypes ((Context!1958 0))(
  ( (Context!1959 (exprs!1479 List!20912)) )
))
(declare-fun setElem!11581 () Context!1958)

(declare-fun e!1196171 () Bool)

(declare-fun setNonEmpty!11581 () Bool)

(declare-fun tp!534045 () Bool)

(declare-fun inv!27647 (Context!1958) Bool)

(assert (=> setNonEmpty!11581 (= setRes!11581 (and tp!534045 (inv!27647 setElem!11581) e!1196171))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!679 () (InoxSet Context!1958))

(declare-fun setRest!11581 () (InoxSet Context!1958))

(assert (=> setNonEmpty!11581 (= z!679 ((_ map or) (store ((as const (Array Context!1958 Bool)) false) setElem!11581 true) setRest!11581))))

(declare-fun b!1874589 () Bool)

(declare-fun e!1196163 () Bool)

(declare-fun tp!534043 () Bool)

(declare-fun mapRes!9020 () Bool)

(assert (=> b!1874589 (= e!1196163 (and tp!534043 mapRes!9020))))

(declare-fun condMapEmpty!9021 () Bool)

(declare-datatypes ((tuple3!1958 0))(
  ( (tuple3!1959 (_1!11427 Regex!5091) (_2!11427 Context!1958) (_3!1443 C!10340)) )
))
(declare-datatypes ((tuple2!19968 0))(
  ( (tuple2!19969 (_1!11428 tuple3!1958) (_2!11428 (InoxSet Context!1958))) )
))
(declare-datatypes ((List!20913 0))(
  ( (Nil!20831) (Cons!20831 (h!26232 tuple2!19968) (t!173130 List!20913)) )
))
(declare-datatypes ((array!6710 0))(
  ( (array!6711 (arr!2979 (Array (_ BitVec 32) List!20913)) (size!16526 (_ BitVec 32))) )
))
(declare-datatypes ((array!6712 0))(
  ( (array!6713 (arr!2980 (Array (_ BitVec 32) (_ BitVec 64))) (size!16527 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3890 0))(
  ( (LongMapFixedSize!3891 (defaultEntry!2310 Int) (mask!5755 (_ BitVec 32)) (extraKeys!2193 (_ BitVec 32)) (zeroValue!2203 List!20913) (minValue!2203 List!20913) (_size!3941 (_ BitVec 32)) (_keys!2242 array!6712) (_values!2225 array!6710) (_vacant!2006 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7605 0))(
  ( (Cell!7606 (v!26191 LongMapFixedSize!3890)) )
))
(declare-datatypes ((MutLongMap!1945 0))(
  ( (LongMap!1945 (underlying!4083 Cell!7605)) (MutLongMapExt!1944 (__x!13070 Int)) )
))
(declare-datatypes ((Hashable!1859 0))(
  ( (HashableExt!1858 (__x!13071 Int)) )
))
(declare-datatypes ((Cell!7607 0))(
  ( (Cell!7608 (v!26192 MutLongMap!1945)) )
))
(declare-datatypes ((MutableMap!1859 0))(
  ( (MutableMapExt!1858 (__x!13072 Int)) (HashMap!1859 (underlying!4084 Cell!7607) (hashF!3782 Hashable!1859) (_size!3942 (_ BitVec 32)) (defaultValue!2021 Int)) )
))
(declare-datatypes ((CacheDown!1154 0))(
  ( (CacheDown!1155 (cache!2240 MutableMap!1859)) )
))
(declare-fun cacheDown!927 () CacheDown!1154)

(declare-fun mapDefault!9021 () List!20913)

(assert (=> b!1874589 (= condMapEmpty!9021 (= (arr!2979 (_values!2225 (v!26191 (underlying!4083 (v!26192 (underlying!4084 (cache!2240 cacheDown!927))))))) ((as const (Array (_ BitVec 32) List!20913)) mapDefault!9021)))))

(declare-fun b!1874590 () Bool)

(declare-fun e!1196162 () Bool)

(declare-fun tp!534052 () Bool)

(declare-fun mapRes!9021 () Bool)

(assert (=> b!1874590 (= e!1196162 (and tp!534052 mapRes!9021))))

(declare-fun condMapEmpty!9020 () Bool)

(declare-datatypes ((tuple2!19970 0))(
  ( (tuple2!19971 (_1!11429 Context!1958) (_2!11429 C!10340)) )
))
(declare-datatypes ((tuple2!19972 0))(
  ( (tuple2!19973 (_1!11430 tuple2!19970) (_2!11430 (InoxSet Context!1958))) )
))
(declare-datatypes ((List!20914 0))(
  ( (Nil!20832) (Cons!20832 (h!26233 tuple2!19972) (t!173131 List!20914)) )
))
(declare-datatypes ((array!6714 0))(
  ( (array!6715 (arr!2981 (Array (_ BitVec 32) List!20914)) (size!16528 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3892 0))(
  ( (LongMapFixedSize!3893 (defaultEntry!2311 Int) (mask!5756 (_ BitVec 32)) (extraKeys!2194 (_ BitVec 32)) (zeroValue!2204 List!20914) (minValue!2204 List!20914) (_size!3943 (_ BitVec 32)) (_keys!2243 array!6712) (_values!2226 array!6714) (_vacant!2007 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7609 0))(
  ( (Cell!7610 (v!26193 LongMapFixedSize!3892)) )
))
(declare-datatypes ((MutLongMap!1946 0))(
  ( (LongMap!1946 (underlying!4085 Cell!7609)) (MutLongMapExt!1945 (__x!13073 Int)) )
))
(declare-datatypes ((Cell!7611 0))(
  ( (Cell!7612 (v!26194 MutLongMap!1946)) )
))
(declare-datatypes ((Hashable!1860 0))(
  ( (HashableExt!1859 (__x!13074 Int)) )
))
(declare-datatypes ((MutableMap!1860 0))(
  ( (MutableMapExt!1859 (__x!13075 Int)) (HashMap!1860 (underlying!4086 Cell!7611) (hashF!3783 Hashable!1860) (_size!3944 (_ BitVec 32)) (defaultValue!2022 Int)) )
))
(declare-datatypes ((CacheUp!1158 0))(
  ( (CacheUp!1159 (cache!2241 MutableMap!1860)) )
))
(declare-fun cacheUp!808 () CacheUp!1158)

(declare-fun mapDefault!9020 () List!20914)

(assert (=> b!1874590 (= condMapEmpty!9020 (= (arr!2981 (_values!2226 (v!26193 (underlying!4085 (v!26194 (underlying!4086 (cache!2241 cacheUp!808))))))) ((as const (Array (_ BitVec 32) List!20914)) mapDefault!9020)))))

(declare-fun e!1196167 () Bool)

(assert (=> b!1874591 (= e!1196165 (and e!1196167 tp!534044))))

(declare-fun b!1874584 () Bool)

(declare-fun e!1196156 () Bool)

(declare-fun e!1196170 () Bool)

(assert (=> b!1874584 (= e!1196156 e!1196170)))

(declare-fun res!838455 () Bool)

(declare-fun e!1196157 () Bool)

(assert (=> start!187886 (=> (not res!838455) (not e!1196157))))

(declare-datatypes ((List!20915 0))(
  ( (Nil!20833) (Cons!20833 (h!26234 C!10340) (t!173132 List!20915)) )
))
(declare-fun input!3792 () List!20915)

(declare-fun isEmpty!12968 (List!20915) Bool)

(assert (=> start!187886 (= res!838455 (not (isEmpty!12968 input!3792)))))

(assert (=> start!187886 e!1196157))

(assert (=> start!187886 e!1196159))

(declare-fun e!1196153 () Bool)

(declare-fun inv!27648 (CacheUp!1158) Bool)

(assert (=> start!187886 (and (inv!27648 cacheUp!808) e!1196153)))

(declare-fun condSetEmpty!11581 () Bool)

(assert (=> start!187886 (= condSetEmpty!11581 (= z!679 ((as const (Array Context!1958 Bool)) false)))))

(assert (=> start!187886 setRes!11581))

(declare-fun inv!27649 (CacheDown!1154) Bool)

(assert (=> start!187886 (and (inv!27649 cacheDown!927) e!1196160)))

(declare-datatypes ((tuple3!1960 0))(
  ( (tuple3!1961 (_1!11431 (InoxSet Context!1958)) (_2!11431 CacheUp!1158) (_3!1444 CacheDown!1154)) )
))
(declare-fun lt!720024 () tuple3!1960)

(declare-fun b!1874592 () Bool)

(declare-datatypes ((tuple3!1962 0))(
  ( (tuple3!1963 (_1!11432 Bool) (_2!11432 CacheUp!1158) (_3!1445 CacheDown!1154)) )
))
(declare-fun matchZipperMem!5 ((InoxSet Context!1958) List!20915 CacheUp!1158 CacheDown!1154) tuple3!1962)

(declare-fun tail!2884 (List!20915) List!20915)

(declare-fun matchZipper!91 ((InoxSet Context!1958) List!20915) Bool)

(assert (=> b!1874592 (= e!1196157 (not (= (_1!11432 (matchZipperMem!5 (_1!11431 lt!720024) (tail!2884 input!3792) (_2!11431 lt!720024) (_3!1444 lt!720024))) (matchZipper!91 z!679 input!3792))))))

(declare-fun derivationStepZipperMem!5 ((InoxSet Context!1958) C!10340 CacheUp!1158 CacheDown!1154) tuple3!1960)

(declare-fun head!4355 (List!20915) C!10340)

(assert (=> b!1874592 (= lt!720024 (derivationStepZipperMem!5 z!679 (head!4355 input!3792) cacheUp!808 cacheDown!927))))

(declare-fun mapIsEmpty!9020 () Bool)

(assert (=> mapIsEmpty!9020 mapRes!9021))

(declare-fun b!1874593 () Bool)

(declare-fun lt!720023 () MutLongMap!1945)

(get-info :version)

(assert (=> b!1874593 (= e!1196167 (and e!1196169 ((_ is LongMap!1945) lt!720023)))))

(assert (=> b!1874593 (= lt!720023 (v!26192 (underlying!4084 (cache!2240 cacheDown!927))))))

(declare-fun b!1874594 () Bool)

(declare-fun lt!720025 () MutLongMap!1946)

(assert (=> b!1874594 (= e!1196164 (and e!1196156 ((_ is LongMap!1946) lt!720025)))))

(assert (=> b!1874594 (= lt!720025 (v!26194 (underlying!4086 (cache!2241 cacheUp!808))))))

(declare-fun e!1196158 () Bool)

(declare-fun tp!534038 () Bool)

(declare-fun tp!534048 () Bool)

(declare-fun array_inv!2141 (array!6712) Bool)

(declare-fun array_inv!2142 (array!6714) Bool)

(assert (=> b!1874595 (= e!1196158 (and tp!534049 tp!534038 tp!534048 (array_inv!2141 (_keys!2243 (v!26193 (underlying!4085 (v!26194 (underlying!4086 (cache!2241 cacheUp!808))))))) (array_inv!2142 (_values!2226 (v!26193 (underlying!4085 (v!26194 (underlying!4086 (cache!2241 cacheUp!808))))))) e!1196162))))

(declare-fun b!1874596 () Bool)

(assert (=> b!1874596 (= e!1196153 e!1196155)))

(declare-fun mapIsEmpty!9021 () Bool)

(assert (=> mapIsEmpty!9021 mapRes!9020))

(declare-fun b!1874597 () Bool)

(assert (=> b!1874597 (= e!1196170 e!1196158)))

(declare-fun b!1874598 () Bool)

(declare-fun tp!534050 () Bool)

(assert (=> b!1874598 (= e!1196171 tp!534050)))

(declare-fun tp!534040 () Bool)

(declare-fun tp!534051 () Bool)

(declare-fun e!1196166 () Bool)

(declare-fun array_inv!2143 (array!6710) Bool)

(assert (=> b!1874599 (= e!1196166 (and tp!534047 tp!534051 tp!534040 (array_inv!2141 (_keys!2242 (v!26191 (underlying!4083 (v!26192 (underlying!4084 (cache!2240 cacheDown!927))))))) (array_inv!2143 (_values!2225 (v!26191 (underlying!4083 (v!26192 (underlying!4084 (cache!2240 cacheDown!927))))))) e!1196163))))

(declare-fun mapNonEmpty!9020 () Bool)

(declare-fun tp!534036 () Bool)

(declare-fun tp!534041 () Bool)

(assert (=> mapNonEmpty!9020 (= mapRes!9021 (and tp!534036 tp!534041))))

(declare-fun mapKey!9020 () (_ BitVec 32))

(declare-fun mapValue!9020 () List!20914)

(declare-fun mapRest!9020 () (Array (_ BitVec 32) List!20914))

(assert (=> mapNonEmpty!9020 (= (arr!2981 (_values!2226 (v!26193 (underlying!4085 (v!26194 (underlying!4086 (cache!2241 cacheUp!808))))))) (store mapRest!9020 mapKey!9020 mapValue!9020))))

(declare-fun b!1874600 () Bool)

(assert (=> b!1874600 (= e!1196161 e!1196166)))

(declare-fun mapNonEmpty!9021 () Bool)

(declare-fun tp!534046 () Bool)

(declare-fun tp!534037 () Bool)

(assert (=> mapNonEmpty!9021 (= mapRes!9020 (and tp!534046 tp!534037))))

(declare-fun mapKey!9021 () (_ BitVec 32))

(declare-fun mapValue!9021 () List!20913)

(declare-fun mapRest!9021 () (Array (_ BitVec 32) List!20913))

(assert (=> mapNonEmpty!9021 (= (arr!2979 (_values!2225 (v!26191 (underlying!4083 (v!26192 (underlying!4084 (cache!2240 cacheDown!927))))))) (store mapRest!9021 mapKey!9021 mapValue!9021))))

(assert (= (and start!187886 res!838455) b!1874592))

(assert (= (and start!187886 ((_ is Cons!20833) input!3792)) b!1874585))

(assert (= (and b!1874590 condMapEmpty!9020) mapIsEmpty!9020))

(assert (= (and b!1874590 (not condMapEmpty!9020)) mapNonEmpty!9020))

(assert (= b!1874595 b!1874590))

(assert (= b!1874597 b!1874595))

(assert (= b!1874584 b!1874597))

(assert (= (and b!1874594 ((_ is LongMap!1946) (v!26194 (underlying!4086 (cache!2241 cacheUp!808))))) b!1874584))

(assert (= b!1874587 b!1874594))

(assert (= (and b!1874596 ((_ is HashMap!1860) (cache!2241 cacheUp!808))) b!1874587))

(assert (= start!187886 b!1874596))

(assert (= (and start!187886 condSetEmpty!11581) setIsEmpty!11581))

(assert (= (and start!187886 (not condSetEmpty!11581)) setNonEmpty!11581))

(assert (= setNonEmpty!11581 b!1874598))

(assert (= (and b!1874589 condMapEmpty!9021) mapIsEmpty!9021))

(assert (= (and b!1874589 (not condMapEmpty!9021)) mapNonEmpty!9021))

(assert (= b!1874599 b!1874589))

(assert (= b!1874600 b!1874599))

(assert (= b!1874586 b!1874600))

(assert (= (and b!1874593 ((_ is LongMap!1945) (v!26192 (underlying!4084 (cache!2240 cacheDown!927))))) b!1874586))

(assert (= b!1874591 b!1874593))

(assert (= (and b!1874588 ((_ is HashMap!1859) (cache!2240 cacheDown!927))) b!1874591))

(assert (= start!187886 b!1874588))

(declare-fun m!2299471 () Bool)

(assert (=> b!1874592 m!2299471))

(declare-fun m!2299473 () Bool)

(assert (=> b!1874592 m!2299473))

(declare-fun m!2299475 () Bool)

(assert (=> b!1874592 m!2299475))

(declare-fun m!2299477 () Bool)

(assert (=> b!1874592 m!2299477))

(declare-fun m!2299479 () Bool)

(assert (=> b!1874592 m!2299479))

(assert (=> b!1874592 m!2299477))

(assert (=> b!1874592 m!2299473))

(declare-fun m!2299481 () Bool)

(assert (=> mapNonEmpty!9020 m!2299481))

(declare-fun m!2299483 () Bool)

(assert (=> setNonEmpty!11581 m!2299483))

(declare-fun m!2299485 () Bool)

(assert (=> mapNonEmpty!9021 m!2299485))

(declare-fun m!2299487 () Bool)

(assert (=> b!1874595 m!2299487))

(declare-fun m!2299489 () Bool)

(assert (=> b!1874595 m!2299489))

(declare-fun m!2299491 () Bool)

(assert (=> start!187886 m!2299491))

(declare-fun m!2299493 () Bool)

(assert (=> start!187886 m!2299493))

(declare-fun m!2299495 () Bool)

(assert (=> start!187886 m!2299495))

(declare-fun m!2299497 () Bool)

(assert (=> b!1874599 m!2299497))

(declare-fun m!2299499 () Bool)

(assert (=> b!1874599 m!2299499))

(check-sat (not setNonEmpty!11581) (not b!1874595) (not b!1874585) (not b_next!52803) b_and!144379 (not b!1874592) b_and!144385 b_and!144381 (not b_next!52799) (not b_next!52797) (not b_next!52801) (not b!1874598) (not mapNonEmpty!9021) tp_is_empty!8883 (not b!1874590) b_and!144383 (not b!1874589) (not b!1874599) (not start!187886) (not mapNonEmpty!9020))
(check-sat b_and!144383 (not b_next!52803) b_and!144379 b_and!144385 b_and!144381 (not b_next!52799) (not b_next!52797) (not b_next!52801))
(get-model)

(declare-fun d!572780 () Bool)

(assert (=> d!572780 (= (array_inv!2141 (_keys!2243 (v!26193 (underlying!4085 (v!26194 (underlying!4086 (cache!2241 cacheUp!808))))))) (bvsge (size!16527 (_keys!2243 (v!26193 (underlying!4085 (v!26194 (underlying!4086 (cache!2241 cacheUp!808))))))) #b00000000000000000000000000000000))))

(assert (=> b!1874595 d!572780))

(declare-fun d!572782 () Bool)

(assert (=> d!572782 (= (array_inv!2142 (_values!2226 (v!26193 (underlying!4085 (v!26194 (underlying!4086 (cache!2241 cacheUp!808))))))) (bvsge (size!16528 (_values!2226 (v!26193 (underlying!4085 (v!26194 (underlying!4086 (cache!2241 cacheUp!808))))))) #b00000000000000000000000000000000))))

(assert (=> b!1874595 d!572782))

(declare-fun d!572784 () Bool)

(assert (=> d!572784 (= (array_inv!2141 (_keys!2242 (v!26191 (underlying!4083 (v!26192 (underlying!4084 (cache!2240 cacheDown!927))))))) (bvsge (size!16527 (_keys!2242 (v!26191 (underlying!4083 (v!26192 (underlying!4084 (cache!2240 cacheDown!927))))))) #b00000000000000000000000000000000))))

(assert (=> b!1874599 d!572784))

(declare-fun d!572786 () Bool)

(assert (=> d!572786 (= (array_inv!2143 (_values!2225 (v!26191 (underlying!4083 (v!26192 (underlying!4084 (cache!2240 cacheDown!927))))))) (bvsge (size!16526 (_values!2225 (v!26191 (underlying!4083 (v!26192 (underlying!4084 (cache!2240 cacheDown!927))))))) #b00000000000000000000000000000000))))

(assert (=> b!1874599 d!572786))

(declare-fun d!572788 () Bool)

(declare-fun lt!720033 () tuple3!1962)

(assert (=> d!572788 (= (_1!11432 lt!720033) (matchZipper!91 (_1!11431 lt!720024) (tail!2884 input!3792)))))

(declare-fun e!1196174 () tuple3!1962)

(assert (=> d!572788 (= lt!720033 e!1196174)))

(declare-fun c!305443 () Bool)

(assert (=> d!572788 (= c!305443 (isEmpty!12968 (tail!2884 input!3792)))))

(assert (=> d!572788 (= (matchZipperMem!5 (_1!11431 lt!720024) (tail!2884 input!3792) (_2!11431 lt!720024) (_3!1444 lt!720024)) lt!720033)))

(declare-fun b!1874605 () Bool)

(declare-fun nullableZipper!41 ((InoxSet Context!1958)) Bool)

(assert (=> b!1874605 (= e!1196174 (tuple3!1963 (nullableZipper!41 (_1!11431 lt!720024)) (_2!11431 lt!720024) (_3!1444 lt!720024)))))

(declare-fun b!1874606 () Bool)

(declare-fun lt!720034 () tuple3!1962)

(assert (=> b!1874606 (= e!1196174 (tuple3!1963 (_1!11432 lt!720034) (_2!11432 lt!720034) (_3!1445 lt!720034)))))

(declare-fun lt!720032 () tuple3!1960)

(assert (=> b!1874606 (= lt!720032 (derivationStepZipperMem!5 (_1!11431 lt!720024) (head!4355 (tail!2884 input!3792)) (_2!11431 lt!720024) (_3!1444 lt!720024)))))

(assert (=> b!1874606 (= lt!720034 (matchZipperMem!5 (_1!11431 lt!720032) (tail!2884 (tail!2884 input!3792)) (_2!11431 lt!720032) (_3!1444 lt!720032)))))

(assert (= (and d!572788 c!305443) b!1874605))

(assert (= (and d!572788 (not c!305443)) b!1874606))

(assert (=> d!572788 m!2299473))

(declare-fun m!2299501 () Bool)

(assert (=> d!572788 m!2299501))

(assert (=> d!572788 m!2299473))

(declare-fun m!2299503 () Bool)

(assert (=> d!572788 m!2299503))

(declare-fun m!2299505 () Bool)

(assert (=> b!1874605 m!2299505))

(assert (=> b!1874606 m!2299473))

(declare-fun m!2299507 () Bool)

(assert (=> b!1874606 m!2299507))

(assert (=> b!1874606 m!2299507))

(declare-fun m!2299509 () Bool)

(assert (=> b!1874606 m!2299509))

(assert (=> b!1874606 m!2299473))

(declare-fun m!2299511 () Bool)

(assert (=> b!1874606 m!2299511))

(assert (=> b!1874606 m!2299511))

(declare-fun m!2299513 () Bool)

(assert (=> b!1874606 m!2299513))

(assert (=> b!1874592 d!572788))

(declare-fun d!572790 () Bool)

(declare-fun c!305446 () Bool)

(assert (=> d!572790 (= c!305446 (isEmpty!12968 input!3792))))

(declare-fun e!1196177 () Bool)

(assert (=> d!572790 (= (matchZipper!91 z!679 input!3792) e!1196177)))

(declare-fun b!1874611 () Bool)

(assert (=> b!1874611 (= e!1196177 (nullableZipper!41 z!679))))

(declare-fun b!1874612 () Bool)

(declare-fun derivationStepZipper!79 ((InoxSet Context!1958) C!10340) (InoxSet Context!1958))

(assert (=> b!1874612 (= e!1196177 (matchZipper!91 (derivationStepZipper!79 z!679 (head!4355 input!3792)) (tail!2884 input!3792)))))

(assert (= (and d!572790 c!305446) b!1874611))

(assert (= (and d!572790 (not c!305446)) b!1874612))

(assert (=> d!572790 m!2299491))

(declare-fun m!2299515 () Bool)

(assert (=> b!1874611 m!2299515))

(assert (=> b!1874612 m!2299477))

(assert (=> b!1874612 m!2299477))

(declare-fun m!2299517 () Bool)

(assert (=> b!1874612 m!2299517))

(assert (=> b!1874612 m!2299473))

(assert (=> b!1874612 m!2299517))

(assert (=> b!1874612 m!2299473))

(declare-fun m!2299519 () Bool)

(assert (=> b!1874612 m!2299519))

(assert (=> b!1874592 d!572790))

(declare-fun d!572792 () Bool)

(assert (=> d!572792 (= (head!4355 input!3792) (h!26234 input!3792))))

(assert (=> b!1874592 d!572792))

(declare-fun d!572794 () Bool)

(assert (=> d!572794 (= (tail!2884 input!3792) (t!173132 input!3792))))

(assert (=> b!1874592 d!572794))

(declare-fun d!572796 () Bool)

(declare-fun e!1196180 () Bool)

(assert (=> d!572796 e!1196180))

(declare-fun res!838460 () Bool)

(assert (=> d!572796 (=> (not res!838460) (not e!1196180))))

(declare-fun lt!720037 () tuple3!1960)

(assert (=> d!572796 (= res!838460 (= (_1!11431 lt!720037) (derivationStepZipper!79 z!679 (head!4355 input!3792))))))

(declare-fun choose!11768 ((InoxSet Context!1958) C!10340 CacheUp!1158 CacheDown!1154) tuple3!1960)

(assert (=> d!572796 (= lt!720037 (choose!11768 z!679 (head!4355 input!3792) cacheUp!808 cacheDown!927))))

(assert (=> d!572796 (= (derivationStepZipperMem!5 z!679 (head!4355 input!3792) cacheUp!808 cacheDown!927) lt!720037)))

(declare-fun b!1874617 () Bool)

(declare-fun res!838461 () Bool)

(assert (=> b!1874617 (=> (not res!838461) (not e!1196180))))

(declare-fun valid!1565 (CacheUp!1158) Bool)

(assert (=> b!1874617 (= res!838461 (valid!1565 (_2!11431 lt!720037)))))

(declare-fun b!1874618 () Bool)

(declare-fun valid!1566 (CacheDown!1154) Bool)

(assert (=> b!1874618 (= e!1196180 (valid!1566 (_3!1444 lt!720037)))))

(assert (= (and d!572796 res!838460) b!1874617))

(assert (= (and b!1874617 res!838461) b!1874618))

(assert (=> d!572796 m!2299477))

(assert (=> d!572796 m!2299517))

(assert (=> d!572796 m!2299477))

(declare-fun m!2299521 () Bool)

(assert (=> d!572796 m!2299521))

(declare-fun m!2299523 () Bool)

(assert (=> b!1874617 m!2299523))

(declare-fun m!2299525 () Bool)

(assert (=> b!1874618 m!2299525))

(assert (=> b!1874592 d!572796))

(declare-fun d!572798 () Bool)

(declare-fun lambda!73792 () Int)

(declare-fun forall!4421 (List!20912 Int) Bool)

(assert (=> d!572798 (= (inv!27647 setElem!11581) (forall!4421 (exprs!1479 setElem!11581) lambda!73792))))

(declare-fun bs!412157 () Bool)

(assert (= bs!412157 d!572798))

(declare-fun m!2299527 () Bool)

(assert (=> bs!412157 m!2299527))

(assert (=> setNonEmpty!11581 d!572798))

(declare-fun d!572800 () Bool)

(assert (=> d!572800 (= (isEmpty!12968 input!3792) ((_ is Nil!20833) input!3792))))

(assert (=> start!187886 d!572800))

(declare-fun d!572802 () Bool)

(declare-fun res!838464 () Bool)

(declare-fun e!1196183 () Bool)

(assert (=> d!572802 (=> (not res!838464) (not e!1196183))))

(assert (=> d!572802 (= res!838464 ((_ is HashMap!1860) (cache!2241 cacheUp!808)))))

(assert (=> d!572802 (= (inv!27648 cacheUp!808) e!1196183)))

(declare-fun b!1874621 () Bool)

(declare-fun validCacheMapUp!181 (MutableMap!1860) Bool)

(assert (=> b!1874621 (= e!1196183 (validCacheMapUp!181 (cache!2241 cacheUp!808)))))

(assert (= (and d!572802 res!838464) b!1874621))

(declare-fun m!2299529 () Bool)

(assert (=> b!1874621 m!2299529))

(assert (=> start!187886 d!572802))

(declare-fun d!572804 () Bool)

(declare-fun res!838467 () Bool)

(declare-fun e!1196186 () Bool)

(assert (=> d!572804 (=> (not res!838467) (not e!1196186))))

(assert (=> d!572804 (= res!838467 ((_ is HashMap!1859) (cache!2240 cacheDown!927)))))

(assert (=> d!572804 (= (inv!27649 cacheDown!927) e!1196186)))

(declare-fun b!1874624 () Bool)

(declare-fun validCacheMapDown!179 (MutableMap!1859) Bool)

(assert (=> b!1874624 (= e!1196186 (validCacheMapDown!179 (cache!2240 cacheDown!927)))))

(assert (= (and d!572804 res!838467) b!1874624))

(declare-fun m!2299531 () Bool)

(assert (=> b!1874624 m!2299531))

(assert (=> start!187886 d!572804))

(declare-fun b!1874633 () Bool)

(declare-fun e!1196194 () Bool)

(declare-fun tp!534063 () Bool)

(assert (=> b!1874633 (= e!1196194 tp!534063)))

(declare-fun e!1196195 () Bool)

(declare-fun setRes!11584 () Bool)

(declare-fun tp!534062 () Bool)

(declare-fun setNonEmpty!11584 () Bool)

(declare-fun setElem!11584 () Context!1958)

(assert (=> setNonEmpty!11584 (= setRes!11584 (and tp!534062 (inv!27647 setElem!11584) e!1196195))))

(declare-fun setRest!11584 () (InoxSet Context!1958))

(assert (=> setNonEmpty!11584 (= (_2!11430 (h!26233 (zeroValue!2204 (v!26193 (underlying!4085 (v!26194 (underlying!4086 (cache!2241 cacheUp!808)))))))) ((_ map or) (store ((as const (Array Context!1958 Bool)) false) setElem!11584 true) setRest!11584))))

(declare-fun setIsEmpty!11584 () Bool)

(assert (=> setIsEmpty!11584 setRes!11584))

(declare-fun tp!534064 () Bool)

(declare-fun e!1196193 () Bool)

(declare-fun b!1874634 () Bool)

(assert (=> b!1874634 (= e!1196193 (and (inv!27647 (_1!11429 (_1!11430 (h!26233 (zeroValue!2204 (v!26193 (underlying!4085 (v!26194 (underlying!4086 (cache!2241 cacheUp!808)))))))))) e!1196194 tp_is_empty!8883 setRes!11584 tp!534064))))

(declare-fun condSetEmpty!11584 () Bool)

(assert (=> b!1874634 (= condSetEmpty!11584 (= (_2!11430 (h!26233 (zeroValue!2204 (v!26193 (underlying!4085 (v!26194 (underlying!4086 (cache!2241 cacheUp!808)))))))) ((as const (Array Context!1958 Bool)) false)))))

(declare-fun b!1874635 () Bool)

(declare-fun tp!534061 () Bool)

(assert (=> b!1874635 (= e!1196195 tp!534061)))

(assert (=> b!1874595 (= tp!534038 e!1196193)))

(assert (= b!1874634 b!1874633))

(assert (= (and b!1874634 condSetEmpty!11584) setIsEmpty!11584))

(assert (= (and b!1874634 (not condSetEmpty!11584)) setNonEmpty!11584))

(assert (= setNonEmpty!11584 b!1874635))

(assert (= (and b!1874595 ((_ is Cons!20832) (zeroValue!2204 (v!26193 (underlying!4085 (v!26194 (underlying!4086 (cache!2241 cacheUp!808)))))))) b!1874634))

(declare-fun m!2299533 () Bool)

(assert (=> setNonEmpty!11584 m!2299533))

(declare-fun m!2299535 () Bool)

(assert (=> b!1874634 m!2299535))

(declare-fun b!1874636 () Bool)

(declare-fun e!1196197 () Bool)

(declare-fun tp!534067 () Bool)

(assert (=> b!1874636 (= e!1196197 tp!534067)))

(declare-fun tp!534066 () Bool)

(declare-fun setElem!11585 () Context!1958)

(declare-fun setNonEmpty!11585 () Bool)

(declare-fun setRes!11585 () Bool)

(declare-fun e!1196198 () Bool)

(assert (=> setNonEmpty!11585 (= setRes!11585 (and tp!534066 (inv!27647 setElem!11585) e!1196198))))

(declare-fun setRest!11585 () (InoxSet Context!1958))

(assert (=> setNonEmpty!11585 (= (_2!11430 (h!26233 (minValue!2204 (v!26193 (underlying!4085 (v!26194 (underlying!4086 (cache!2241 cacheUp!808)))))))) ((_ map or) (store ((as const (Array Context!1958 Bool)) false) setElem!11585 true) setRest!11585))))

(declare-fun setIsEmpty!11585 () Bool)

(assert (=> setIsEmpty!11585 setRes!11585))

(declare-fun b!1874637 () Bool)

(declare-fun tp!534068 () Bool)

(declare-fun e!1196196 () Bool)

(assert (=> b!1874637 (= e!1196196 (and (inv!27647 (_1!11429 (_1!11430 (h!26233 (minValue!2204 (v!26193 (underlying!4085 (v!26194 (underlying!4086 (cache!2241 cacheUp!808)))))))))) e!1196197 tp_is_empty!8883 setRes!11585 tp!534068))))

(declare-fun condSetEmpty!11585 () Bool)

(assert (=> b!1874637 (= condSetEmpty!11585 (= (_2!11430 (h!26233 (minValue!2204 (v!26193 (underlying!4085 (v!26194 (underlying!4086 (cache!2241 cacheUp!808)))))))) ((as const (Array Context!1958 Bool)) false)))))

(declare-fun b!1874638 () Bool)

(declare-fun tp!534065 () Bool)

(assert (=> b!1874638 (= e!1196198 tp!534065)))

(assert (=> b!1874595 (= tp!534048 e!1196196)))

(assert (= b!1874637 b!1874636))

(assert (= (and b!1874637 condSetEmpty!11585) setIsEmpty!11585))

(assert (= (and b!1874637 (not condSetEmpty!11585)) setNonEmpty!11585))

(assert (= setNonEmpty!11585 b!1874638))

(assert (= (and b!1874595 ((_ is Cons!20832) (minValue!2204 (v!26193 (underlying!4085 (v!26194 (underlying!4086 (cache!2241 cacheUp!808)))))))) b!1874637))

(declare-fun m!2299537 () Bool)

(assert (=> setNonEmpty!11585 m!2299537))

(declare-fun m!2299539 () Bool)

(assert (=> b!1874637 m!2299539))

(declare-fun b!1874639 () Bool)

(declare-fun e!1196200 () Bool)

(declare-fun tp!534071 () Bool)

(assert (=> b!1874639 (= e!1196200 tp!534071)))

(declare-fun setNonEmpty!11586 () Bool)

(declare-fun e!1196201 () Bool)

(declare-fun tp!534070 () Bool)

(declare-fun setRes!11586 () Bool)

(declare-fun setElem!11586 () Context!1958)

(assert (=> setNonEmpty!11586 (= setRes!11586 (and tp!534070 (inv!27647 setElem!11586) e!1196201))))

(declare-fun setRest!11586 () (InoxSet Context!1958))

(assert (=> setNonEmpty!11586 (= (_2!11430 (h!26233 mapDefault!9020)) ((_ map or) (store ((as const (Array Context!1958 Bool)) false) setElem!11586 true) setRest!11586))))

(declare-fun setIsEmpty!11586 () Bool)

(assert (=> setIsEmpty!11586 setRes!11586))

(declare-fun e!1196199 () Bool)

(declare-fun tp!534072 () Bool)

(declare-fun b!1874640 () Bool)

(assert (=> b!1874640 (= e!1196199 (and (inv!27647 (_1!11429 (_1!11430 (h!26233 mapDefault!9020)))) e!1196200 tp_is_empty!8883 setRes!11586 tp!534072))))

(declare-fun condSetEmpty!11586 () Bool)

(assert (=> b!1874640 (= condSetEmpty!11586 (= (_2!11430 (h!26233 mapDefault!9020)) ((as const (Array Context!1958 Bool)) false)))))

(declare-fun b!1874641 () Bool)

(declare-fun tp!534069 () Bool)

(assert (=> b!1874641 (= e!1196201 tp!534069)))

(assert (=> b!1874590 (= tp!534052 e!1196199)))

(assert (= b!1874640 b!1874639))

(assert (= (and b!1874640 condSetEmpty!11586) setIsEmpty!11586))

(assert (= (and b!1874640 (not condSetEmpty!11586)) setNonEmpty!11586))

(assert (= setNonEmpty!11586 b!1874641))

(assert (= (and b!1874590 ((_ is Cons!20832) mapDefault!9020)) b!1874640))

(declare-fun m!2299541 () Bool)

(assert (=> setNonEmpty!11586 m!2299541))

(declare-fun m!2299543 () Bool)

(assert (=> b!1874640 m!2299543))

(declare-fun tp!534084 () Bool)

(declare-fun setRes!11589 () Bool)

(declare-fun tp!534083 () Bool)

(declare-fun b!1874650 () Bool)

(declare-fun e!1196210 () Bool)

(declare-fun e!1196209 () Bool)

(assert (=> b!1874650 (= e!1196210 (and tp!534084 (inv!27647 (_2!11427 (_1!11428 (h!26232 (zeroValue!2203 (v!26191 (underlying!4083 (v!26192 (underlying!4084 (cache!2240 cacheDown!927)))))))))) e!1196209 tp_is_empty!8883 setRes!11589 tp!534083))))

(declare-fun condSetEmpty!11589 () Bool)

(assert (=> b!1874650 (= condSetEmpty!11589 (= (_2!11428 (h!26232 (zeroValue!2203 (v!26191 (underlying!4083 (v!26192 (underlying!4084 (cache!2240 cacheDown!927)))))))) ((as const (Array Context!1958 Bool)) false)))))

(declare-fun setIsEmpty!11589 () Bool)

(assert (=> setIsEmpty!11589 setRes!11589))

(declare-fun setElem!11589 () Context!1958)

(declare-fun tp!534086 () Bool)

(declare-fun e!1196208 () Bool)

(declare-fun setNonEmpty!11589 () Bool)

(assert (=> setNonEmpty!11589 (= setRes!11589 (and tp!534086 (inv!27647 setElem!11589) e!1196208))))

(declare-fun setRest!11589 () (InoxSet Context!1958))

(assert (=> setNonEmpty!11589 (= (_2!11428 (h!26232 (zeroValue!2203 (v!26191 (underlying!4083 (v!26192 (underlying!4084 (cache!2240 cacheDown!927)))))))) ((_ map or) (store ((as const (Array Context!1958 Bool)) false) setElem!11589 true) setRest!11589))))

(declare-fun b!1874652 () Bool)

(declare-fun tp!534087 () Bool)

(assert (=> b!1874652 (= e!1196208 tp!534087)))

(assert (=> b!1874599 (= tp!534051 e!1196210)))

(declare-fun b!1874651 () Bool)

(declare-fun tp!534085 () Bool)

(assert (=> b!1874651 (= e!1196209 tp!534085)))

(assert (= b!1874650 b!1874651))

(assert (= (and b!1874650 condSetEmpty!11589) setIsEmpty!11589))

(assert (= (and b!1874650 (not condSetEmpty!11589)) setNonEmpty!11589))

(assert (= setNonEmpty!11589 b!1874652))

(assert (= (and b!1874599 ((_ is Cons!20831) (zeroValue!2203 (v!26191 (underlying!4083 (v!26192 (underlying!4084 (cache!2240 cacheDown!927)))))))) b!1874650))

(declare-fun m!2299545 () Bool)

(assert (=> b!1874650 m!2299545))

(declare-fun m!2299547 () Bool)

(assert (=> setNonEmpty!11589 m!2299547))

(declare-fun tp!534089 () Bool)

(declare-fun b!1874653 () Bool)

(declare-fun tp!534088 () Bool)

(declare-fun setRes!11590 () Bool)

(declare-fun e!1196212 () Bool)

(declare-fun e!1196213 () Bool)

(assert (=> b!1874653 (= e!1196213 (and tp!534089 (inv!27647 (_2!11427 (_1!11428 (h!26232 (minValue!2203 (v!26191 (underlying!4083 (v!26192 (underlying!4084 (cache!2240 cacheDown!927)))))))))) e!1196212 tp_is_empty!8883 setRes!11590 tp!534088))))

(declare-fun condSetEmpty!11590 () Bool)

(assert (=> b!1874653 (= condSetEmpty!11590 (= (_2!11428 (h!26232 (minValue!2203 (v!26191 (underlying!4083 (v!26192 (underlying!4084 (cache!2240 cacheDown!927)))))))) ((as const (Array Context!1958 Bool)) false)))))

(declare-fun setIsEmpty!11590 () Bool)

(assert (=> setIsEmpty!11590 setRes!11590))

(declare-fun setElem!11590 () Context!1958)

(declare-fun e!1196211 () Bool)

(declare-fun tp!534091 () Bool)

(declare-fun setNonEmpty!11590 () Bool)

(assert (=> setNonEmpty!11590 (= setRes!11590 (and tp!534091 (inv!27647 setElem!11590) e!1196211))))

(declare-fun setRest!11590 () (InoxSet Context!1958))

(assert (=> setNonEmpty!11590 (= (_2!11428 (h!26232 (minValue!2203 (v!26191 (underlying!4083 (v!26192 (underlying!4084 (cache!2240 cacheDown!927)))))))) ((_ map or) (store ((as const (Array Context!1958 Bool)) false) setElem!11590 true) setRest!11590))))

(declare-fun b!1874655 () Bool)

(declare-fun tp!534092 () Bool)

(assert (=> b!1874655 (= e!1196211 tp!534092)))

(assert (=> b!1874599 (= tp!534040 e!1196213)))

(declare-fun b!1874654 () Bool)

(declare-fun tp!534090 () Bool)

(assert (=> b!1874654 (= e!1196212 tp!534090)))

(assert (= b!1874653 b!1874654))

(assert (= (and b!1874653 condSetEmpty!11590) setIsEmpty!11590))

(assert (= (and b!1874653 (not condSetEmpty!11590)) setNonEmpty!11590))

(assert (= setNonEmpty!11590 b!1874655))

(assert (= (and b!1874599 ((_ is Cons!20831) (minValue!2203 (v!26191 (underlying!4083 (v!26192 (underlying!4084 (cache!2240 cacheDown!927)))))))) b!1874653))

(declare-fun m!2299549 () Bool)

(assert (=> b!1874653 m!2299549))

(declare-fun m!2299551 () Bool)

(assert (=> setNonEmpty!11590 m!2299551))

(declare-fun e!1196230 () Bool)

(declare-fun tp!534117 () Bool)

(declare-fun setNonEmpty!11595 () Bool)

(declare-fun setRes!11596 () Bool)

(declare-fun setElem!11596 () Context!1958)

(assert (=> setNonEmpty!11595 (= setRes!11596 (and tp!534117 (inv!27647 setElem!11596) e!1196230))))

(declare-fun mapDefault!9024 () List!20914)

(declare-fun setRest!11596 () (InoxSet Context!1958))

(assert (=> setNonEmpty!11595 (= (_2!11430 (h!26233 mapDefault!9024)) ((_ map or) (store ((as const (Array Context!1958 Bool)) false) setElem!11596 true) setRest!11596))))

(declare-fun setRes!11595 () Bool)

(declare-fun mapValue!9024 () List!20914)

(declare-fun e!1196228 () Bool)

(declare-fun tp!534119 () Bool)

(declare-fun b!1874670 () Bool)

(declare-fun e!1196231 () Bool)

(assert (=> b!1874670 (= e!1196231 (and (inv!27647 (_1!11429 (_1!11430 (h!26233 mapValue!9024)))) e!1196228 tp_is_empty!8883 setRes!11595 tp!534119))))

(declare-fun condSetEmpty!11595 () Bool)

(assert (=> b!1874670 (= condSetEmpty!11595 (= (_2!11430 (h!26233 mapValue!9024)) ((as const (Array Context!1958 Bool)) false)))))

(declare-fun b!1874671 () Bool)

(declare-fun tp!534116 () Bool)

(assert (=> b!1874671 (= e!1196228 tp!534116)))

(declare-fun setNonEmpty!11596 () Bool)

(declare-fun setElem!11595 () Context!1958)

(declare-fun tp!534115 () Bool)

(declare-fun e!1196226 () Bool)

(assert (=> setNonEmpty!11596 (= setRes!11595 (and tp!534115 (inv!27647 setElem!11595) e!1196226))))

(declare-fun setRest!11595 () (InoxSet Context!1958))

(assert (=> setNonEmpty!11596 (= (_2!11430 (h!26233 mapValue!9024)) ((_ map or) (store ((as const (Array Context!1958 Bool)) false) setElem!11595 true) setRest!11595))))

(declare-fun e!1196227 () Bool)

(declare-fun e!1196229 () Bool)

(declare-fun tp!534118 () Bool)

(declare-fun b!1874672 () Bool)

(assert (=> b!1874672 (= e!1196227 (and (inv!27647 (_1!11429 (_1!11430 (h!26233 mapDefault!9024)))) e!1196229 tp_is_empty!8883 setRes!11596 tp!534118))))

(declare-fun condSetEmpty!11596 () Bool)

(assert (=> b!1874672 (= condSetEmpty!11596 (= (_2!11430 (h!26233 mapDefault!9024)) ((as const (Array Context!1958 Bool)) false)))))

(declare-fun mapNonEmpty!9024 () Bool)

(declare-fun mapRes!9024 () Bool)

(declare-fun tp!534111 () Bool)

(assert (=> mapNonEmpty!9024 (= mapRes!9024 (and tp!534111 e!1196231))))

(declare-fun mapRest!9024 () (Array (_ BitVec 32) List!20914))

(declare-fun mapKey!9024 () (_ BitVec 32))

(assert (=> mapNonEmpty!9024 (= mapRest!9020 (store mapRest!9024 mapKey!9024 mapValue!9024))))

(declare-fun setIsEmpty!11595 () Bool)

(assert (=> setIsEmpty!11595 setRes!11596))

(declare-fun b!1874673 () Bool)

(declare-fun tp!534112 () Bool)

(assert (=> b!1874673 (= e!1196230 tp!534112)))

(declare-fun setIsEmpty!11596 () Bool)

(assert (=> setIsEmpty!11596 setRes!11595))

(declare-fun b!1874674 () Bool)

(declare-fun tp!534114 () Bool)

(assert (=> b!1874674 (= e!1196226 tp!534114)))

(declare-fun b!1874675 () Bool)

(declare-fun tp!534113 () Bool)

(assert (=> b!1874675 (= e!1196229 tp!534113)))

(declare-fun condMapEmpty!9024 () Bool)

(assert (=> mapNonEmpty!9020 (= condMapEmpty!9024 (= mapRest!9020 ((as const (Array (_ BitVec 32) List!20914)) mapDefault!9024)))))

(assert (=> mapNonEmpty!9020 (= tp!534036 (and e!1196227 mapRes!9024))))

(declare-fun mapIsEmpty!9024 () Bool)

(assert (=> mapIsEmpty!9024 mapRes!9024))

(assert (= (and mapNonEmpty!9020 condMapEmpty!9024) mapIsEmpty!9024))

(assert (= (and mapNonEmpty!9020 (not condMapEmpty!9024)) mapNonEmpty!9024))

(assert (= b!1874670 b!1874671))

(assert (= (and b!1874670 condSetEmpty!11595) setIsEmpty!11596))

(assert (= (and b!1874670 (not condSetEmpty!11595)) setNonEmpty!11596))

(assert (= setNonEmpty!11596 b!1874674))

(assert (= (and mapNonEmpty!9024 ((_ is Cons!20832) mapValue!9024)) b!1874670))

(assert (= b!1874672 b!1874675))

(assert (= (and b!1874672 condSetEmpty!11596) setIsEmpty!11595))

(assert (= (and b!1874672 (not condSetEmpty!11596)) setNonEmpty!11595))

(assert (= setNonEmpty!11595 b!1874673))

(assert (= (and mapNonEmpty!9020 ((_ is Cons!20832) mapDefault!9024)) b!1874672))

(declare-fun m!2299553 () Bool)

(assert (=> setNonEmpty!11595 m!2299553))

(declare-fun m!2299555 () Bool)

(assert (=> mapNonEmpty!9024 m!2299555))

(declare-fun m!2299557 () Bool)

(assert (=> setNonEmpty!11596 m!2299557))

(declare-fun m!2299559 () Bool)

(assert (=> b!1874672 m!2299559))

(declare-fun m!2299561 () Bool)

(assert (=> b!1874670 m!2299561))

(declare-fun b!1874676 () Bool)

(declare-fun e!1196233 () Bool)

(declare-fun tp!534122 () Bool)

(assert (=> b!1874676 (= e!1196233 tp!534122)))

(declare-fun tp!534121 () Bool)

(declare-fun setElem!11597 () Context!1958)

(declare-fun setNonEmpty!11597 () Bool)

(declare-fun e!1196234 () Bool)

(declare-fun setRes!11597 () Bool)

(assert (=> setNonEmpty!11597 (= setRes!11597 (and tp!534121 (inv!27647 setElem!11597) e!1196234))))

(declare-fun setRest!11597 () (InoxSet Context!1958))

(assert (=> setNonEmpty!11597 (= (_2!11430 (h!26233 mapValue!9020)) ((_ map or) (store ((as const (Array Context!1958 Bool)) false) setElem!11597 true) setRest!11597))))

(declare-fun setIsEmpty!11597 () Bool)

(assert (=> setIsEmpty!11597 setRes!11597))

(declare-fun b!1874677 () Bool)

(declare-fun e!1196232 () Bool)

(declare-fun tp!534123 () Bool)

(assert (=> b!1874677 (= e!1196232 (and (inv!27647 (_1!11429 (_1!11430 (h!26233 mapValue!9020)))) e!1196233 tp_is_empty!8883 setRes!11597 tp!534123))))

(declare-fun condSetEmpty!11597 () Bool)

(assert (=> b!1874677 (= condSetEmpty!11597 (= (_2!11430 (h!26233 mapValue!9020)) ((as const (Array Context!1958 Bool)) false)))))

(declare-fun b!1874678 () Bool)

(declare-fun tp!534120 () Bool)

(assert (=> b!1874678 (= e!1196234 tp!534120)))

(assert (=> mapNonEmpty!9020 (= tp!534041 e!1196232)))

(assert (= b!1874677 b!1874676))

(assert (= (and b!1874677 condSetEmpty!11597) setIsEmpty!11597))

(assert (= (and b!1874677 (not condSetEmpty!11597)) setNonEmpty!11597))

(assert (= setNonEmpty!11597 b!1874678))

(assert (= (and mapNonEmpty!9020 ((_ is Cons!20832) mapValue!9020)) b!1874677))

(declare-fun m!2299563 () Bool)

(assert (=> setNonEmpty!11597 m!2299563))

(declare-fun m!2299565 () Bool)

(assert (=> b!1874677 m!2299565))

(declare-fun setIsEmpty!11602 () Bool)

(declare-fun setRes!11602 () Bool)

(assert (=> setIsEmpty!11602 setRes!11602))

(declare-fun tp!534149 () Bool)

(declare-fun e!1196252 () Bool)

(declare-fun e!1196247 () Bool)

(declare-fun setRes!11603 () Bool)

(declare-fun b!1874693 () Bool)

(declare-fun mapValue!9027 () List!20913)

(declare-fun tp!534150 () Bool)

(assert (=> b!1874693 (= e!1196247 (and tp!534149 (inv!27647 (_2!11427 (_1!11428 (h!26232 mapValue!9027)))) e!1196252 tp_is_empty!8883 setRes!11603 tp!534150))))

(declare-fun condSetEmpty!11603 () Bool)

(assert (=> b!1874693 (= condSetEmpty!11603 (= (_2!11428 (h!26232 mapValue!9027)) ((as const (Array Context!1958 Bool)) false)))))

(declare-fun mapNonEmpty!9027 () Bool)

(declare-fun mapRes!9027 () Bool)

(declare-fun tp!534146 () Bool)

(assert (=> mapNonEmpty!9027 (= mapRes!9027 (and tp!534146 e!1196247))))

(declare-fun mapRest!9027 () (Array (_ BitVec 32) List!20913))

(declare-fun mapKey!9027 () (_ BitVec 32))

(assert (=> mapNonEmpty!9027 (= mapRest!9021 (store mapRest!9027 mapKey!9027 mapValue!9027))))

(declare-fun b!1874694 () Bool)

(declare-fun e!1196249 () Bool)

(declare-fun tp!534154 () Bool)

(assert (=> b!1874694 (= e!1196249 tp!534154)))

(declare-fun mapIsEmpty!9027 () Bool)

(assert (=> mapIsEmpty!9027 mapRes!9027))

(declare-fun condMapEmpty!9027 () Bool)

(declare-fun mapDefault!9027 () List!20913)

(assert (=> mapNonEmpty!9021 (= condMapEmpty!9027 (= mapRest!9021 ((as const (Array (_ BitVec 32) List!20913)) mapDefault!9027)))))

(declare-fun e!1196248 () Bool)

(assert (=> mapNonEmpty!9021 (= tp!534046 (and e!1196248 mapRes!9027))))

(declare-fun b!1874695 () Bool)

(declare-fun e!1196251 () Bool)

(declare-fun tp!534147 () Bool)

(assert (=> b!1874695 (= e!1196251 tp!534147)))

(declare-fun e!1196250 () Bool)

(declare-fun tp!534155 () Bool)

(declare-fun tp!534152 () Bool)

(declare-fun b!1874696 () Bool)

(assert (=> b!1874696 (= e!1196248 (and tp!534152 (inv!27647 (_2!11427 (_1!11428 (h!26232 mapDefault!9027)))) e!1196250 tp_is_empty!8883 setRes!11602 tp!534155))))

(declare-fun condSetEmpty!11602 () Bool)

(assert (=> b!1874696 (= condSetEmpty!11602 (= (_2!11428 (h!26232 mapDefault!9027)) ((as const (Array Context!1958 Bool)) false)))))

(declare-fun b!1874697 () Bool)

(declare-fun tp!534151 () Bool)

(assert (=> b!1874697 (= e!1196252 tp!534151)))

(declare-fun b!1874698 () Bool)

(declare-fun tp!534153 () Bool)

(assert (=> b!1874698 (= e!1196250 tp!534153)))

(declare-fun setElem!11602 () Context!1958)

(declare-fun tp!534148 () Bool)

(declare-fun setNonEmpty!11602 () Bool)

(assert (=> setNonEmpty!11602 (= setRes!11602 (and tp!534148 (inv!27647 setElem!11602) e!1196249))))

(declare-fun setRest!11603 () (InoxSet Context!1958))

(assert (=> setNonEmpty!11602 (= (_2!11428 (h!26232 mapDefault!9027)) ((_ map or) (store ((as const (Array Context!1958 Bool)) false) setElem!11602 true) setRest!11603))))

(declare-fun setIsEmpty!11603 () Bool)

(assert (=> setIsEmpty!11603 setRes!11603))

(declare-fun setNonEmpty!11603 () Bool)

(declare-fun tp!534156 () Bool)

(declare-fun setElem!11603 () Context!1958)

(assert (=> setNonEmpty!11603 (= setRes!11603 (and tp!534156 (inv!27647 setElem!11603) e!1196251))))

(declare-fun setRest!11602 () (InoxSet Context!1958))

(assert (=> setNonEmpty!11603 (= (_2!11428 (h!26232 mapValue!9027)) ((_ map or) (store ((as const (Array Context!1958 Bool)) false) setElem!11603 true) setRest!11602))))

(assert (= (and mapNonEmpty!9021 condMapEmpty!9027) mapIsEmpty!9027))

(assert (= (and mapNonEmpty!9021 (not condMapEmpty!9027)) mapNonEmpty!9027))

(assert (= b!1874693 b!1874697))

(assert (= (and b!1874693 condSetEmpty!11603) setIsEmpty!11603))

(assert (= (and b!1874693 (not condSetEmpty!11603)) setNonEmpty!11603))

(assert (= setNonEmpty!11603 b!1874695))

(assert (= (and mapNonEmpty!9027 ((_ is Cons!20831) mapValue!9027)) b!1874693))

(assert (= b!1874696 b!1874698))

(assert (= (and b!1874696 condSetEmpty!11602) setIsEmpty!11602))

(assert (= (and b!1874696 (not condSetEmpty!11602)) setNonEmpty!11602))

(assert (= setNonEmpty!11602 b!1874694))

(assert (= (and mapNonEmpty!9021 ((_ is Cons!20831) mapDefault!9027)) b!1874696))

(declare-fun m!2299567 () Bool)

(assert (=> setNonEmpty!11603 m!2299567))

(declare-fun m!2299569 () Bool)

(assert (=> b!1874696 m!2299569))

(declare-fun m!2299571 () Bool)

(assert (=> mapNonEmpty!9027 m!2299571))

(declare-fun m!2299573 () Bool)

(assert (=> b!1874693 m!2299573))

(declare-fun m!2299575 () Bool)

(assert (=> setNonEmpty!11602 m!2299575))

(declare-fun e!1196254 () Bool)

(declare-fun e!1196255 () Bool)

(declare-fun setRes!11604 () Bool)

(declare-fun tp!534158 () Bool)

(declare-fun tp!534157 () Bool)

(declare-fun b!1874699 () Bool)

(assert (=> b!1874699 (= e!1196255 (and tp!534158 (inv!27647 (_2!11427 (_1!11428 (h!26232 mapValue!9021)))) e!1196254 tp_is_empty!8883 setRes!11604 tp!534157))))

(declare-fun condSetEmpty!11604 () Bool)

(assert (=> b!1874699 (= condSetEmpty!11604 (= (_2!11428 (h!26232 mapValue!9021)) ((as const (Array Context!1958 Bool)) false)))))

(declare-fun setIsEmpty!11604 () Bool)

(assert (=> setIsEmpty!11604 setRes!11604))

(declare-fun tp!534160 () Bool)

(declare-fun setNonEmpty!11604 () Bool)

(declare-fun setElem!11604 () Context!1958)

(declare-fun e!1196253 () Bool)

(assert (=> setNonEmpty!11604 (= setRes!11604 (and tp!534160 (inv!27647 setElem!11604) e!1196253))))

(declare-fun setRest!11604 () (InoxSet Context!1958))

(assert (=> setNonEmpty!11604 (= (_2!11428 (h!26232 mapValue!9021)) ((_ map or) (store ((as const (Array Context!1958 Bool)) false) setElem!11604 true) setRest!11604))))

(declare-fun b!1874701 () Bool)

(declare-fun tp!534161 () Bool)

(assert (=> b!1874701 (= e!1196253 tp!534161)))

(assert (=> mapNonEmpty!9021 (= tp!534037 e!1196255)))

(declare-fun b!1874700 () Bool)

(declare-fun tp!534159 () Bool)

(assert (=> b!1874700 (= e!1196254 tp!534159)))

(assert (= b!1874699 b!1874700))

(assert (= (and b!1874699 condSetEmpty!11604) setIsEmpty!11604))

(assert (= (and b!1874699 (not condSetEmpty!11604)) setNonEmpty!11604))

(assert (= setNonEmpty!11604 b!1874701))

(assert (= (and mapNonEmpty!9021 ((_ is Cons!20831) mapValue!9021)) b!1874699))

(declare-fun m!2299577 () Bool)

(assert (=> b!1874699 m!2299577))

(declare-fun m!2299579 () Bool)

(assert (=> setNonEmpty!11604 m!2299579))

(declare-fun condSetEmpty!11607 () Bool)

(assert (=> setNonEmpty!11581 (= condSetEmpty!11607 (= setRest!11581 ((as const (Array Context!1958 Bool)) false)))))

(declare-fun setRes!11607 () Bool)

(assert (=> setNonEmpty!11581 (= tp!534045 setRes!11607)))

(declare-fun setIsEmpty!11607 () Bool)

(assert (=> setIsEmpty!11607 setRes!11607))

(declare-fun e!1196258 () Bool)

(declare-fun setElem!11607 () Context!1958)

(declare-fun setNonEmpty!11607 () Bool)

(declare-fun tp!534166 () Bool)

(assert (=> setNonEmpty!11607 (= setRes!11607 (and tp!534166 (inv!27647 setElem!11607) e!1196258))))

(declare-fun setRest!11607 () (InoxSet Context!1958))

(assert (=> setNonEmpty!11607 (= setRest!11581 ((_ map or) (store ((as const (Array Context!1958 Bool)) false) setElem!11607 true) setRest!11607))))

(declare-fun b!1874706 () Bool)

(declare-fun tp!534167 () Bool)

(assert (=> b!1874706 (= e!1196258 tp!534167)))

(assert (= (and setNonEmpty!11581 condSetEmpty!11607) setIsEmpty!11607))

(assert (= (and setNonEmpty!11581 (not condSetEmpty!11607)) setNonEmpty!11607))

(assert (= setNonEmpty!11607 b!1874706))

(declare-fun m!2299581 () Bool)

(assert (=> setNonEmpty!11607 m!2299581))

(declare-fun b!1874711 () Bool)

(declare-fun e!1196261 () Bool)

(declare-fun tp!534170 () Bool)

(assert (=> b!1874711 (= e!1196261 (and tp_is_empty!8883 tp!534170))))

(assert (=> b!1874585 (= tp!534042 e!1196261)))

(assert (= (and b!1874585 ((_ is Cons!20833) (t!173132 input!3792))) b!1874711))

(declare-fun b!1874716 () Bool)

(declare-fun e!1196264 () Bool)

(declare-fun tp!534175 () Bool)

(declare-fun tp!534176 () Bool)

(assert (=> b!1874716 (= e!1196264 (and tp!534175 tp!534176))))

(assert (=> b!1874598 (= tp!534050 e!1196264)))

(assert (= (and b!1874598 ((_ is Cons!20830) (exprs!1479 setElem!11581))) b!1874716))

(declare-fun tp!534177 () Bool)

(declare-fun e!1196267 () Bool)

(declare-fun tp!534178 () Bool)

(declare-fun e!1196266 () Bool)

(declare-fun setRes!11608 () Bool)

(declare-fun b!1874717 () Bool)

(assert (=> b!1874717 (= e!1196267 (and tp!534178 (inv!27647 (_2!11427 (_1!11428 (h!26232 mapDefault!9021)))) e!1196266 tp_is_empty!8883 setRes!11608 tp!534177))))

(declare-fun condSetEmpty!11608 () Bool)

(assert (=> b!1874717 (= condSetEmpty!11608 (= (_2!11428 (h!26232 mapDefault!9021)) ((as const (Array Context!1958 Bool)) false)))))

(declare-fun setIsEmpty!11608 () Bool)

(assert (=> setIsEmpty!11608 setRes!11608))

(declare-fun tp!534180 () Bool)

(declare-fun setNonEmpty!11608 () Bool)

(declare-fun setElem!11608 () Context!1958)

(declare-fun e!1196265 () Bool)

(assert (=> setNonEmpty!11608 (= setRes!11608 (and tp!534180 (inv!27647 setElem!11608) e!1196265))))

(declare-fun setRest!11608 () (InoxSet Context!1958))

(assert (=> setNonEmpty!11608 (= (_2!11428 (h!26232 mapDefault!9021)) ((_ map or) (store ((as const (Array Context!1958 Bool)) false) setElem!11608 true) setRest!11608))))

(declare-fun b!1874719 () Bool)

(declare-fun tp!534181 () Bool)

(assert (=> b!1874719 (= e!1196265 tp!534181)))

(assert (=> b!1874589 (= tp!534043 e!1196267)))

(declare-fun b!1874718 () Bool)

(declare-fun tp!534179 () Bool)

(assert (=> b!1874718 (= e!1196266 tp!534179)))

(assert (= b!1874717 b!1874718))

(assert (= (and b!1874717 condSetEmpty!11608) setIsEmpty!11608))

(assert (= (and b!1874717 (not condSetEmpty!11608)) setNonEmpty!11608))

(assert (= setNonEmpty!11608 b!1874719))

(assert (= (and b!1874589 ((_ is Cons!20831) mapDefault!9021)) b!1874717))

(declare-fun m!2299583 () Bool)

(assert (=> b!1874717 m!2299583))

(declare-fun m!2299585 () Bool)

(assert (=> setNonEmpty!11608 m!2299585))

(check-sat (not b!1874651) (not b!1874617) (not b!1874621) (not b_next!52797) (not d!572798) (not b!1874640) (not b!1874624) (not setNonEmpty!11585) (not b!1874674) (not b!1874700) (not b!1874677) (not b!1874650) (not d!572790) (not setNonEmpty!11595) (not setNonEmpty!11602) (not b!1874673) tp_is_empty!8883 (not b!1874697) (not b!1874678) b_and!144383 (not b!1874635) (not b!1874653) (not b!1874718) (not setNonEmpty!11603) (not d!572788) (not b!1874671) (not b_next!52803) (not b!1874654) (not b!1874652) (not b!1874639) (not b!1874698) (not b!1874670) (not b!1874706) b_and!144379 (not setNonEmpty!11608) (not setNonEmpty!11607) (not b!1874694) (not b!1874605) (not b!1874719) b_and!144385 (not mapNonEmpty!9027) (not d!572796) (not b!1874695) (not setNonEmpty!11584) (not b!1874634) (not b!1874701) (not mapNonEmpty!9024) (not b!1874612) (not b!1874693) (not b!1874675) (not b!1874655) (not setNonEmpty!11590) (not b!1874711) (not b!1874676) (not setNonEmpty!11597) (not setNonEmpty!11604) b_and!144381 (not b!1874611) (not setNonEmpty!11586) (not b_next!52799) (not b!1874633) (not b!1874638) (not b!1874716) (not b!1874672) (not b!1874637) (not b_next!52801) (not b!1874696) (not b!1874636) (not b!1874641) (not b!1874699) (not b!1874618) (not setNonEmpty!11596) (not b!1874606) (not b!1874717) (not setNonEmpty!11589))
(check-sat b_and!144383 (not b_next!52803) b_and!144379 b_and!144385 b_and!144381 (not b_next!52799) (not b_next!52797) (not b_next!52801))
