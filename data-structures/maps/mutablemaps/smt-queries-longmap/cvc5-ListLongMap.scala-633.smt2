; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16158 () Bool)

(assert start!16158)

(declare-fun b!160777 () Bool)

(declare-fun b_free!3607 () Bool)

(declare-fun b_next!3607 () Bool)

(assert (=> b!160777 (= b_free!3607 (not b_next!3607))))

(declare-fun tp!13391 () Bool)

(declare-fun b_and!10039 () Bool)

(assert (=> b!160777 (= tp!13391 b_and!10039)))

(declare-fun b!160771 () Bool)

(declare-fun res!76205 () Bool)

(declare-fun e!105093 () Bool)

(assert (=> b!160771 (=> (not res!76205) (not e!105093))))

(declare-datatypes ((V!4193 0))(
  ( (V!4194 (val!1749 Int)) )
))
(declare-datatypes ((ValueCell!1361 0))(
  ( (ValueCellFull!1361 (v!3610 V!4193)) (EmptyCell!1361) )
))
(declare-datatypes ((array!5896 0))(
  ( (array!5897 (arr!2792 (Array (_ BitVec 32) (_ BitVec 64))) (size!3076 (_ BitVec 32))) )
))
(declare-datatypes ((array!5898 0))(
  ( (array!5899 (arr!2793 (Array (_ BitVec 32) ValueCell!1361)) (size!3077 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1630 0))(
  ( (LongMapFixedSize!1631 (defaultEntry!3257 Int) (mask!7835 (_ BitVec 32)) (extraKeys!2998 (_ BitVec 32)) (zeroValue!3100 V!4193) (minValue!3100 V!4193) (_size!864 (_ BitVec 32)) (_keys!5058 array!5896) (_values!3240 array!5898) (_vacant!864 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1630)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2922 0))(
  ( (tuple2!2923 (_1!1471 (_ BitVec 64)) (_2!1471 V!4193)) )
))
(declare-datatypes ((List!1977 0))(
  ( (Nil!1974) (Cons!1973 (h!2586 tuple2!2922) (t!6787 List!1977)) )
))
(declare-datatypes ((ListLongMap!1931 0))(
  ( (ListLongMap!1932 (toList!981 List!1977)) )
))
(declare-fun contains!1011 (ListLongMap!1931 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!641 (array!5896 array!5898 (_ BitVec 32) (_ BitVec 32) V!4193 V!4193 (_ BitVec 32) Int) ListLongMap!1931)

(assert (=> b!160771 (= res!76205 (not (contains!1011 (getCurrentListMap!641 (_keys!5058 thiss!1248) (_values!3240 thiss!1248) (mask!7835 thiss!1248) (extraKeys!2998 thiss!1248) (zeroValue!3100 thiss!1248) (minValue!3100 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3257 thiss!1248)) key!828)))))

(declare-fun mapNonEmpty!5801 () Bool)

(declare-fun mapRes!5801 () Bool)

(declare-fun tp!13390 () Bool)

(declare-fun e!105095 () Bool)

(assert (=> mapNonEmpty!5801 (= mapRes!5801 (and tp!13390 e!105095))))

(declare-fun mapKey!5801 () (_ BitVec 32))

(declare-fun mapValue!5801 () ValueCell!1361)

(declare-fun mapRest!5801 () (Array (_ BitVec 32) ValueCell!1361))

(assert (=> mapNonEmpty!5801 (= (arr!2793 (_values!3240 thiss!1248)) (store mapRest!5801 mapKey!5801 mapValue!5801))))

(declare-fun b!160773 () Bool)

(declare-fun res!76204 () Bool)

(assert (=> b!160773 (=> (not res!76204) (not e!105093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5896 (_ BitVec 32)) Bool)

(assert (=> b!160773 (= res!76204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5058 thiss!1248) (mask!7835 thiss!1248)))))

(declare-fun b!160774 () Bool)

(declare-fun e!105091 () Bool)

(declare-fun e!105092 () Bool)

(assert (=> b!160774 (= e!105091 (and e!105092 mapRes!5801))))

(declare-fun condMapEmpty!5801 () Bool)

(declare-fun mapDefault!5801 () ValueCell!1361)

