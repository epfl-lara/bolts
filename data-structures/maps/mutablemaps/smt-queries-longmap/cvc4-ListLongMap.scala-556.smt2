; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15078 () Bool)

(assert start!15078)

(declare-fun b!144906 () Bool)

(declare-fun b_free!3069 () Bool)

(declare-fun b_next!3069 () Bool)

(assert (=> b!144906 (= b_free!3069 (not b_next!3069))))

(declare-fun tp!11702 () Bool)

(declare-fun b_and!9053 () Bool)

(assert (=> b!144906 (= tp!11702 b_and!9053)))

(declare-fun b!144903 () Bool)

(declare-fun b_free!3071 () Bool)

(declare-fun b_next!3071 () Bool)

(assert (=> b!144903 (= b_free!3071 (not b_next!3071))))

(declare-fun tp!11699 () Bool)

(declare-fun b_and!9055 () Bool)

(assert (=> b!144903 (= tp!11699 b_and!9055)))

(declare-fun mapIsEmpty!4915 () Bool)

(declare-fun mapRes!4916 () Bool)

(assert (=> mapIsEmpty!4915 mapRes!4916))

(declare-fun b!144897 () Bool)

(declare-fun e!94434 () Bool)

(declare-fun e!94436 () Bool)

(assert (=> b!144897 (= e!94434 e!94436)))

(declare-fun res!69005 () Bool)

(assert (=> b!144897 (=> (not res!69005) (not e!94436))))

(declare-datatypes ((V!3581 0))(
  ( (V!3582 (val!1520 Int)) )
))
(declare-datatypes ((tuple2!2704 0))(
  ( (tuple2!2705 (_1!1362 (_ BitVec 64)) (_2!1362 V!3581)) )
))
(declare-datatypes ((List!1778 0))(
  ( (Nil!1775) (Cons!1774 (h!2382 tuple2!2704) (t!6435 List!1778)) )
))
(declare-datatypes ((ListLongMap!1759 0))(
  ( (ListLongMap!1760 (toList!895 List!1778)) )
))
(declare-fun lt!76119 () ListLongMap!1759)

(declare-datatypes ((array!4942 0))(
  ( (array!4943 (arr!2334 (Array (_ BitVec 32) (_ BitVec 64))) (size!2609 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1132 0))(
  ( (ValueCellFull!1132 (v!3321 V!3581)) (EmptyCell!1132) )
))
(declare-datatypes ((array!4944 0))(
  ( (array!4945 (arr!2335 (Array (_ BitVec 32) ValueCell!1132)) (size!2610 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1172 0))(
  ( (LongMapFixedSize!1173 (defaultEntry!2990 Int) (mask!7354 (_ BitVec 32)) (extraKeys!2737 (_ BitVec 32)) (zeroValue!2836 V!3581) (minValue!2836 V!3581) (_size!635 (_ BitVec 32)) (_keys!4757 array!4942) (_values!2973 array!4944) (_vacant!635 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!958 0))(
  ( (Cell!959 (v!3322 LongMapFixedSize!1172)) )
))
(declare-datatypes ((LongMap!958 0))(
  ( (LongMap!959 (underlying!490 Cell!958)) )
))
(declare-fun thiss!992 () LongMap!958)

(declare-fun lt!76117 () ListLongMap!1759)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!144897 (= res!69005 (and (= lt!76119 lt!76117) (not (= (select (arr!2334 (_keys!4757 (v!3322 (underlying!490 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2334 (_keys!4757 (v!3322 (underlying!490 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun newMap!16 () LongMapFixedSize!1172)

(declare-fun map!1450 (LongMapFixedSize!1172) ListLongMap!1759)

(assert (=> b!144897 (= lt!76117 (map!1450 newMap!16))))

(declare-fun getCurrentListMap!561 (array!4942 array!4944 (_ BitVec 32) (_ BitVec 32) V!3581 V!3581 (_ BitVec 32) Int) ListLongMap!1759)

(assert (=> b!144897 (= lt!76119 (getCurrentListMap!561 (_keys!4757 (v!3322 (underlying!490 thiss!992))) (_values!2973 (v!3322 (underlying!490 thiss!992))) (mask!7354 (v!3322 (underlying!490 thiss!992))) (extraKeys!2737 (v!3322 (underlying!490 thiss!992))) (zeroValue!2836 (v!3322 (underlying!490 thiss!992))) (minValue!2836 (v!3322 (underlying!490 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2990 (v!3322 (underlying!490 thiss!992)))))))

(declare-fun b!144898 () Bool)

(declare-fun e!94437 () Bool)

(assert (=> b!144898 (= e!94436 e!94437)))

(declare-fun res!68998 () Bool)

(assert (=> b!144898 (=> (not res!68998) (not e!94437))))

(declare-fun contains!934 (ListLongMap!1759 (_ BitVec 64)) Bool)

(assert (=> b!144898 (= res!68998 (contains!934 lt!76117 (select (arr!2334 (_keys!4757 (v!3322 (underlying!490 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2706 0))(
  ( (tuple2!2707 (_1!1363 Bool) (_2!1363 LongMapFixedSize!1172)) )
))
(declare-fun lt!76118 () tuple2!2706)

(declare-fun update!214 (LongMapFixedSize!1172 (_ BitVec 64) V!3581) tuple2!2706)

(declare-fun get!1554 (ValueCell!1132 V!3581) V!3581)

(declare-fun dynLambda!447 (Int (_ BitVec 64)) V!3581)

(assert (=> b!144898 (= lt!76118 (update!214 newMap!16 (select (arr!2334 (_keys!4757 (v!3322 (underlying!490 thiss!992)))) from!355) (get!1554 (select (arr!2335 (_values!2973 (v!3322 (underlying!490 thiss!992)))) from!355) (dynLambda!447 (defaultEntry!2990 (v!3322 (underlying!490 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!144899 () Bool)

(declare-datatypes ((List!1779 0))(
  ( (Nil!1776) (Cons!1775 (h!2383 (_ BitVec 64)) (t!6436 List!1779)) )
))
(declare-fun lt!76116 () List!1779)

(declare-fun e!94446 () Bool)

(declare-fun arrayNoDuplicates!0 (array!4942 (_ BitVec 32) List!1779) Bool)

(assert (=> b!144899 (= e!94446 (arrayNoDuplicates!0 (_keys!4757 (v!3322 (underlying!490 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) lt!76116))))

(declare-fun b!144900 () Bool)

(declare-fun res!69003 () Bool)

(assert (=> b!144900 (=> (not res!69003) (not e!94434))))

(assert (=> b!144900 (= res!69003 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7354 newMap!16)) (_size!635 (v!3322 (underlying!490 thiss!992)))))))

(declare-fun b!144901 () Bool)

(declare-fun res!69002 () Bool)

(assert (=> b!144901 (=> (not res!69002) (not e!94434))))

(assert (=> b!144901 (= res!69002 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2609 (_keys!4757 (v!3322 (underlying!490 thiss!992)))))))))

(declare-fun res!69001 () Bool)

(assert (=> start!15078 (=> (not res!69001) (not e!94434))))

(declare-fun valid!569 (LongMap!958) Bool)

(assert (=> start!15078 (= res!69001 (valid!569 thiss!992))))

(assert (=> start!15078 e!94434))

(declare-fun e!94440 () Bool)

(assert (=> start!15078 e!94440))

(assert (=> start!15078 true))

(declare-fun e!94439 () Bool)

(assert (=> start!15078 e!94439))

(declare-fun b!144902 () Bool)

(declare-fun res!69006 () Bool)

(assert (=> b!144902 (=> res!69006 e!94446)))

(declare-fun contains!935 (List!1779 (_ BitVec 64)) Bool)

(assert (=> b!144902 (= res!69006 (contains!935 lt!76116 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun tp_is_empty!2951 () Bool)

(declare-fun e!94442 () Bool)

(declare-fun array_inv!1447 (array!4942) Bool)

(declare-fun array_inv!1448 (array!4944) Bool)

(assert (=> b!144903 (= e!94439 (and tp!11699 tp_is_empty!2951 (array_inv!1447 (_keys!4757 newMap!16)) (array_inv!1448 (_values!2973 newMap!16)) e!94442))))

(declare-fun b!144904 () Bool)

(declare-fun e!94447 () Bool)

(assert (=> b!144904 (= e!94447 tp_is_empty!2951)))

(declare-fun b!144905 () Bool)

(declare-fun e!94443 () Bool)

(declare-fun mapRes!4915 () Bool)

(assert (=> b!144905 (= e!94442 (and e!94443 mapRes!4915))))

(declare-fun condMapEmpty!4916 () Bool)

(declare-fun mapDefault!4915 () ValueCell!1132)

