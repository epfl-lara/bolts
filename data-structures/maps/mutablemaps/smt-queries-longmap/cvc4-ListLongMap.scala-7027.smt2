; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89214 () Bool)

(assert start!89214)

(declare-fun b!1022422 () Bool)

(declare-fun b_free!20219 () Bool)

(declare-fun b_next!20219 () Bool)

(assert (=> b!1022422 (= b_free!20219 (not b_next!20219))))

(declare-fun tp!71693 () Bool)

(declare-fun b_and!32439 () Bool)

(assert (=> b!1022422 (= tp!71693 b_and!32439)))

(declare-fun mapIsEmpty!37326 () Bool)

(declare-fun mapRes!37326 () Bool)

(assert (=> mapIsEmpty!37326 mapRes!37326))

(declare-fun e!576015 () Bool)

(declare-fun tp_is_empty!23939 () Bool)

(declare-fun e!576016 () Bool)

(declare-datatypes ((V!36791 0))(
  ( (V!36792 (val!12020 Int)) )
))
(declare-datatypes ((ValueCell!11266 0))(
  ( (ValueCellFull!11266 (v!14590 V!36791)) (EmptyCell!11266) )
))
(declare-datatypes ((array!63906 0))(
  ( (array!63907 (arr!30761 (Array (_ BitVec 32) (_ BitVec 64))) (size!31273 (_ BitVec 32))) )
))
(declare-datatypes ((array!63908 0))(
  ( (array!63909 (arr!30762 (Array (_ BitVec 32) ValueCell!11266)) (size!31274 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5126 0))(
  ( (LongMapFixedSize!5127 (defaultEntry!5915 Int) (mask!29505 (_ BitVec 32)) (extraKeys!5647 (_ BitVec 32)) (zeroValue!5751 V!36791) (minValue!5751 V!36791) (_size!2618 (_ BitVec 32)) (_keys!11057 array!63906) (_values!5938 array!63908) (_vacant!2618 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5126)

(declare-fun array_inv!23711 (array!63906) Bool)

(declare-fun array_inv!23712 (array!63908) Bool)

(assert (=> b!1022422 (= e!576016 (and tp!71693 tp_is_empty!23939 (array_inv!23711 (_keys!11057 thiss!1427)) (array_inv!23712 (_values!5938 thiss!1427)) e!576015))))

(declare-fun mapNonEmpty!37326 () Bool)

(declare-fun tp!71692 () Bool)

(declare-fun e!576019 () Bool)

(assert (=> mapNonEmpty!37326 (= mapRes!37326 (and tp!71692 e!576019))))

(declare-fun mapValue!37326 () ValueCell!11266)

(declare-fun mapRest!37326 () (Array (_ BitVec 32) ValueCell!11266))

(declare-fun mapKey!37326 () (_ BitVec 32))

(assert (=> mapNonEmpty!37326 (= (arr!30762 (_values!5938 thiss!1427)) (store mapRest!37326 mapKey!37326 mapValue!37326))))

(declare-fun b!1022423 () Bool)

(declare-fun e!576017 () Bool)

(assert (=> b!1022423 (= e!576017 (not true))))

(declare-fun lt!450216 () Bool)

(declare-fun lt!450217 () V!36791)

(declare-fun valid!1917 (LongMapFixedSize!5126) Bool)

(assert (=> b!1022423 (= lt!450216 (valid!1917 (LongMapFixedSize!5127 (defaultEntry!5915 thiss!1427) (mask!29505 thiss!1427) (bvand (extraKeys!5647 thiss!1427) #b00000000000000000000000000000010) lt!450217 (minValue!5751 thiss!1427) (_size!2618 thiss!1427) (_keys!11057 thiss!1427) (_values!5938 thiss!1427) (_vacant!2618 thiss!1427))))))

(declare-datatypes ((tuple2!15584 0))(
  ( (tuple2!15585 (_1!7802 (_ BitVec 64)) (_2!7802 V!36791)) )
))
(declare-datatypes ((List!21792 0))(
  ( (Nil!21789) (Cons!21788 (h!22986 tuple2!15584) (t!30819 List!21792)) )
))
(declare-datatypes ((ListLongMap!13743 0))(
  ( (ListLongMap!13744 (toList!6887 List!21792)) )
))
(declare-fun -!463 (ListLongMap!13743 (_ BitVec 64)) ListLongMap!13743)

(declare-fun getCurrentListMap!3894 (array!63906 array!63908 (_ BitVec 32) (_ BitVec 32) V!36791 V!36791 (_ BitVec 32) Int) ListLongMap!13743)

(assert (=> b!1022423 (= (-!463 (getCurrentListMap!3894 (_keys!11057 thiss!1427) (_values!5938 thiss!1427) (mask!29505 thiss!1427) (extraKeys!5647 thiss!1427) (zeroValue!5751 thiss!1427) (minValue!5751 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5915 thiss!1427)) #b0000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3894 (_keys!11057 thiss!1427) (_values!5938 thiss!1427) (mask!29505 thiss!1427) (bvand (extraKeys!5647 thiss!1427) #b00000000000000000000000000000010) lt!450217 (minValue!5751 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5915 thiss!1427)))))

(declare-datatypes ((Unit!33278 0))(
  ( (Unit!33279) )
))
(declare-fun lt!450215 () Unit!33278)

(declare-fun lemmaRemoveZeroKeyThenRemoveKeyFromListMap!3 (array!63906 array!63908 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36791 V!36791 V!36791 Int) Unit!33278)

(assert (=> b!1022423 (= lt!450215 (lemmaRemoveZeroKeyThenRemoveKeyFromListMap!3 (_keys!11057 thiss!1427) (_values!5938 thiss!1427) (mask!29505 thiss!1427) (extraKeys!5647 thiss!1427) (bvand (extraKeys!5647 thiss!1427) #b00000000000000000000000000000010) (zeroValue!5751 thiss!1427) lt!450217 (minValue!5751 thiss!1427) (defaultEntry!5915 thiss!1427)))))

(declare-fun dynLambda!1938 (Int (_ BitVec 64)) V!36791)

(assert (=> b!1022423 (= lt!450217 (dynLambda!1938 (defaultEntry!5915 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!684998 () Bool)

(assert (=> start!89214 (=> (not res!684998) (not e!576017))))

(assert (=> start!89214 (= res!684998 (valid!1917 thiss!1427))))

(assert (=> start!89214 e!576017))

(assert (=> start!89214 e!576016))

(assert (=> start!89214 true))

(declare-fun b!1022421 () Bool)

(assert (=> b!1022421 (= e!576019 tp_is_empty!23939)))

(declare-fun b!1022424 () Bool)

(declare-fun e!576018 () Bool)

(assert (=> b!1022424 (= e!576015 (and e!576018 mapRes!37326))))

(declare-fun condMapEmpty!37326 () Bool)

(declare-fun mapDefault!37326 () ValueCell!11266)

