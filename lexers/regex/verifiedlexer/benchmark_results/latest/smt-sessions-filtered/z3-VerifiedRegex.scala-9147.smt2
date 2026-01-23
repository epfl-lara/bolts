; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488180 () Bool)

(assert start!488180)

(declare-fun b!4769607 () Bool)

(declare-fun b_free!129755 () Bool)

(declare-fun b_next!130545 () Bool)

(assert (=> b!4769607 (= b_free!129755 (not b_next!130545))))

(declare-fun tp!1356194 () Bool)

(declare-fun b_and!341493 () Bool)

(assert (=> b!4769607 (= tp!1356194 b_and!341493)))

(declare-fun b!4769605 () Bool)

(declare-fun b_free!129757 () Bool)

(declare-fun b_next!130547 () Bool)

(assert (=> b!4769605 (= b_free!129757 (not b_next!130547))))

(declare-fun tp!1356195 () Bool)

(declare-fun b_and!341495 () Bool)

(assert (=> b!4769605 (= tp!1356195 b_and!341495)))

(declare-fun e!2977319 () Bool)

(declare-fun e!2977320 () Bool)

(assert (=> b!4769605 (= e!2977319 (and e!2977320 tp!1356195))))

(declare-fun b!4769606 () Bool)

(declare-fun e!2977325 () Bool)

(assert (=> b!4769606 (= e!2977325 (not true))))

(assert (=> b!4769606 false))

(declare-datatypes ((K!15024 0))(
  ( (K!15025 (val!20325 Int)) )
))
(declare-datatypes ((V!15270 0))(
  ( (V!15271 (val!20326 Int)) )
))
(declare-datatypes ((tuple2!55628 0))(
  ( (tuple2!55629 (_1!31108 K!15024) (_2!31108 V!15270)) )
))
(declare-datatypes ((List!53660 0))(
  ( (Nil!53536) (Cons!53536 (h!59948 tuple2!55628) (t!361100 List!53660)) )
))
(declare-fun lt!1932278 () List!53660)

(declare-datatypes ((tuple2!55630 0))(
  ( (tuple2!55631 (_1!31109 (_ BitVec 64)) (_2!31109 List!53660)) )
))
(declare-datatypes ((List!53661 0))(
  ( (Nil!53537) (Cons!53537 (h!59949 tuple2!55630) (t!361101 List!53661)) )
))
(declare-datatypes ((ListLongMap!4733 0))(
  ( (ListLongMap!4734 (toList!6327 List!53661)) )
))
(declare-fun lt!1932273 () ListLongMap!4733)

(declare-datatypes ((Unit!138377 0))(
  ( (Unit!138378) )
))
(declare-fun lt!1932275 () Unit!138377)

(declare-fun lt!1932276 () (_ BitVec 64))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!945 (List!53661 (_ BitVec 64) List!53660) Unit!138377)

(assert (=> b!4769606 (= lt!1932275 (lemmaGetValueByKeyImpliesContainsTuple!945 (toList!6327 lt!1932273) lt!1932276 lt!1932278))))

(declare-datatypes ((Option!12718 0))(
  ( (None!12717) (Some!12717 (v!47798 List!53660)) )
))
(declare-fun isDefined!9868 (Option!12718) Bool)

(declare-fun getValueByKey!2210 (List!53661 (_ BitVec 64)) Option!12718)

(assert (=> b!4769606 (isDefined!9868 (getValueByKey!2210 (toList!6327 lt!1932273) lt!1932276))))

(declare-fun lt!1932277 () Unit!138377)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2006 (List!53661 (_ BitVec 64)) Unit!138377)

(assert (=> b!4769606 (= lt!1932277 (lemmaContainsKeyImpliesGetValueByKeyDefined!2006 (toList!6327 lt!1932273) lt!1932276))))

(declare-datatypes ((array!18144 0))(
  ( (array!18145 (arr!8091 (Array (_ BitVec 32) (_ BitVec 64))) (size!36321 (_ BitVec 32))) )
))
(declare-datatypes ((array!18146 0))(
  ( (array!18147 (arr!8092 (Array (_ BitVec 32) List!53660)) (size!36322 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6614 0))(
  ( (HashableExt!6613 (__x!32607 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9906 0))(
  ( (LongMapFixedSize!9907 (defaultEntry!5371 Int) (mask!14725 (_ BitVec 32)) (extraKeys!5228 (_ BitVec 32)) (zeroValue!5241 List!53660) (minValue!5241 List!53660) (_size!9931 (_ BitVec 32)) (_keys!5295 array!18144) (_values!5266 array!18146) (_vacant!5018 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19577 0))(
  ( (Cell!19578 (v!47799 LongMapFixedSize!9906)) )
))
(declare-datatypes ((MutLongMap!4953 0))(
  ( (LongMap!4953 (underlying!10113 Cell!19577)) (MutLongMapExt!4952 (__x!32608 Int)) )
))
(declare-datatypes ((Cell!19579 0))(
  ( (Cell!19580 (v!47800 MutLongMap!4953)) )
))
(declare-datatypes ((MutableMap!4837 0))(
  ( (MutableMapExt!4836 (__x!32609 Int)) (HashMap!4837 (underlying!10114 Cell!19579) (hashF!12505 Hashable!6614) (_size!9932 (_ BitVec 32)) (defaultValue!5008 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4837)

(declare-fun tp!1356197 () Bool)

(declare-fun e!2977323 () Bool)

(declare-fun e!2977322 () Bool)

(declare-fun tp!1356198 () Bool)

(declare-fun array_inv!5831 (array!18144) Bool)

(declare-fun array_inv!5832 (array!18146) Bool)

(assert (=> b!4769607 (= e!2977323 (and tp!1356194 tp!1356197 tp!1356198 (array_inv!5831 (_keys!5295 (v!47799 (underlying!10113 (v!47800 (underlying!10114 thiss!42052)))))) (array_inv!5832 (_values!5266 (v!47799 (underlying!10113 (v!47800 (underlying!10114 thiss!42052)))))) e!2977322))))

(declare-fun b!4769608 () Bool)

(declare-fun tp!1356199 () Bool)

(declare-fun mapRes!21964 () Bool)

(assert (=> b!4769608 (= e!2977322 (and tp!1356199 mapRes!21964))))

(declare-fun condMapEmpty!21964 () Bool)

(declare-fun mapDefault!21964 () List!53660)

(assert (=> b!4769608 (= condMapEmpty!21964 (= (arr!8092 (_values!5266 (v!47799 (underlying!10113 (v!47800 (underlying!10114 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53660)) mapDefault!21964)))))

(declare-fun b!4769609 () Bool)

(declare-fun res!2022923 () Bool)

(declare-fun e!2977318 () Bool)

(assert (=> b!4769609 (=> (not res!2022923) (not e!2977318))))

(declare-fun key!1776 () K!15024)

(declare-fun contains!16901 (MutableMap!4837 K!15024) Bool)

(assert (=> b!4769609 (= res!2022923 (contains!16901 thiss!42052 key!1776))))

(declare-fun b!4769610 () Bool)

(declare-fun res!2022921 () Bool)

(assert (=> b!4769610 (=> (not res!2022921) (not e!2977318))))

(declare-fun valid!3962 (MutableMap!4837) Bool)

(assert (=> b!4769610 (= res!2022921 (valid!3962 thiss!42052))))

(declare-fun b!4769611 () Bool)

(declare-fun e!2977317 () Bool)

(declare-fun lt!1932274 () MutLongMap!4953)

(get-info :version)

(assert (=> b!4769611 (= e!2977320 (and e!2977317 ((_ is LongMap!4953) lt!1932274)))))

(assert (=> b!4769611 (= lt!1932274 (v!47800 (underlying!10114 thiss!42052)))))

(declare-fun res!2022922 () Bool)

(assert (=> start!488180 (=> (not res!2022922) (not e!2977318))))

(assert (=> start!488180 (= res!2022922 ((_ is HashMap!4837) thiss!42052))))

(assert (=> start!488180 e!2977318))

(assert (=> start!488180 e!2977319))

(declare-fun tp_is_empty!32515 () Bool)

(assert (=> start!488180 tp_is_empty!32515))

(declare-fun mapIsEmpty!21964 () Bool)

(assert (=> mapIsEmpty!21964 mapRes!21964))

(declare-fun b!4769612 () Bool)

(declare-fun e!2977324 () Bool)

(assert (=> b!4769612 (= e!2977317 e!2977324)))

(declare-fun b!4769613 () Bool)

(assert (=> b!4769613 (= e!2977324 e!2977323)))

(declare-fun b!4769614 () Bool)

(assert (=> b!4769614 (= e!2977318 e!2977325)))

(declare-fun res!2022924 () Bool)

(assert (=> b!4769614 (=> (not res!2022924) (not e!2977325))))

(declare-fun contains!16902 (List!53661 tuple2!55630) Bool)

(assert (=> b!4769614 (= res!2022924 (not (contains!16902 (toList!6327 lt!1932273) (tuple2!55631 lt!1932276 lt!1932278))))))

(declare-fun apply!12660 (MutLongMap!4953 (_ BitVec 64)) List!53660)

(assert (=> b!4769614 (= lt!1932278 (apply!12660 (v!47800 (underlying!10114 thiss!42052)) lt!1932276))))

(declare-fun map!12034 (MutLongMap!4953) ListLongMap!4733)

(assert (=> b!4769614 (= lt!1932273 (map!12034 (v!47800 (underlying!10114 thiss!42052))))))

(declare-fun hash!4592 (Hashable!6614 K!15024) (_ BitVec 64))

(assert (=> b!4769614 (= lt!1932276 (hash!4592 (hashF!12505 thiss!42052) key!1776))))

(declare-fun mapNonEmpty!21964 () Bool)

(declare-fun tp!1356200 () Bool)

(declare-fun tp!1356196 () Bool)

(assert (=> mapNonEmpty!21964 (= mapRes!21964 (and tp!1356200 tp!1356196))))

(declare-fun mapKey!21964 () (_ BitVec 32))

(declare-fun mapValue!21964 () List!53660)

(declare-fun mapRest!21964 () (Array (_ BitVec 32) List!53660))

(assert (=> mapNonEmpty!21964 (= (arr!8092 (_values!5266 (v!47799 (underlying!10113 (v!47800 (underlying!10114 thiss!42052)))))) (store mapRest!21964 mapKey!21964 mapValue!21964))))

(assert (= (and start!488180 res!2022922) b!4769610))

(assert (= (and b!4769610 res!2022921) b!4769609))

(assert (= (and b!4769609 res!2022923) b!4769614))

(assert (= (and b!4769614 res!2022924) b!4769606))

(assert (= (and b!4769608 condMapEmpty!21964) mapIsEmpty!21964))

(assert (= (and b!4769608 (not condMapEmpty!21964)) mapNonEmpty!21964))

(assert (= b!4769607 b!4769608))

(assert (= b!4769613 b!4769607))

(assert (= b!4769612 b!4769613))

(assert (= (and b!4769611 ((_ is LongMap!4953) (v!47800 (underlying!10114 thiss!42052)))) b!4769612))

(assert (= b!4769605 b!4769611))

(assert (= (and start!488180 ((_ is HashMap!4837) thiss!42052)) b!4769605))

(declare-fun m!5741256 () Bool)

(assert (=> b!4769610 m!5741256))

(declare-fun m!5741258 () Bool)

(assert (=> b!4769606 m!5741258))

(declare-fun m!5741260 () Bool)

(assert (=> b!4769606 m!5741260))

(assert (=> b!4769606 m!5741260))

(declare-fun m!5741262 () Bool)

(assert (=> b!4769606 m!5741262))

(declare-fun m!5741264 () Bool)

(assert (=> b!4769606 m!5741264))

(declare-fun m!5741266 () Bool)

(assert (=> mapNonEmpty!21964 m!5741266))

(declare-fun m!5741268 () Bool)

(assert (=> b!4769609 m!5741268))

(declare-fun m!5741270 () Bool)

(assert (=> b!4769607 m!5741270))

(declare-fun m!5741272 () Bool)

(assert (=> b!4769607 m!5741272))

(declare-fun m!5741274 () Bool)

(assert (=> b!4769614 m!5741274))

(declare-fun m!5741276 () Bool)

(assert (=> b!4769614 m!5741276))

(declare-fun m!5741278 () Bool)

(assert (=> b!4769614 m!5741278))

(declare-fun m!5741280 () Bool)

(assert (=> b!4769614 m!5741280))

(check-sat (not b!4769607) b_and!341495 b_and!341493 (not b!4769606) (not mapNonEmpty!21964) (not b!4769610) (not b!4769609) tp_is_empty!32515 (not b!4769608) (not b_next!130545) (not b_next!130547) (not b!4769614))
(check-sat b_and!341495 b_and!341493 (not b_next!130547) (not b_next!130545))
