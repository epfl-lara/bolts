; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75578 () Bool)

(assert start!75578)

(declare-fun b!888565 () Bool)

(declare-fun b_free!15577 () Bool)

(declare-fun b_next!15577 () Bool)

(assert (=> b!888565 (= b_free!15577 (not b_next!15577))))

(declare-fun tp!54687 () Bool)

(declare-fun b_and!25835 () Bool)

(assert (=> b!888565 (= tp!54687 b_and!25835)))

(declare-fun lt!401853 () Bool)

(declare-datatypes ((array!51768 0))(
  ( (array!51769 (arr!24890 (Array (_ BitVec 32) (_ BitVec 64))) (size!25333 (_ BitVec 32))) )
))
(declare-datatypes ((V!28839 0))(
  ( (V!28840 (val!9003 Int)) )
))
(declare-datatypes ((ValueCell!8471 0))(
  ( (ValueCellFull!8471 (v!11473 V!28839)) (EmptyCell!8471) )
))
(declare-datatypes ((array!51770 0))(
  ( (array!51771 (arr!24891 (Array (_ BitVec 32) ValueCell!8471)) (size!25334 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3958 0))(
  ( (LongMapFixedSize!3959 (defaultEntry!5176 Int) (mask!25597 (_ BitVec 32)) (extraKeys!4870 (_ BitVec 32)) (zeroValue!4974 V!28839) (minValue!4974 V!28839) (_size!2034 (_ BitVec 32)) (_keys!9853 array!51768) (_values!5161 array!51770) (_vacant!2034 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3958)

(declare-fun valid!1531 (LongMapFixedSize!3958) Bool)

(assert (=> start!75578 (= lt!401853 (valid!1531 thiss!1181))))

(assert (=> start!75578 false))

(declare-fun e!495171 () Bool)

(assert (=> start!75578 e!495171))

(declare-fun mapNonEmpty!28398 () Bool)

(declare-fun mapRes!28398 () Bool)

(declare-fun tp!54686 () Bool)

(declare-fun e!495173 () Bool)

(assert (=> mapNonEmpty!28398 (= mapRes!28398 (and tp!54686 e!495173))))

(declare-fun mapValue!28398 () ValueCell!8471)

(declare-fun mapRest!28398 () (Array (_ BitVec 32) ValueCell!8471))

(declare-fun mapKey!28398 () (_ BitVec 32))

(assert (=> mapNonEmpty!28398 (= (arr!24891 (_values!5161 thiss!1181)) (store mapRest!28398 mapKey!28398 mapValue!28398))))

(declare-fun b!888564 () Bool)

(declare-fun e!495172 () Bool)

(declare-fun tp_is_empty!17905 () Bool)

(assert (=> b!888564 (= e!495172 tp_is_empty!17905)))

(declare-fun e!495174 () Bool)

(declare-fun array_inv!19556 (array!51768) Bool)

(declare-fun array_inv!19557 (array!51770) Bool)

(assert (=> b!888565 (= e!495171 (and tp!54687 tp_is_empty!17905 (array_inv!19556 (_keys!9853 thiss!1181)) (array_inv!19557 (_values!5161 thiss!1181)) e!495174))))

(declare-fun mapIsEmpty!28398 () Bool)

(assert (=> mapIsEmpty!28398 mapRes!28398))

(declare-fun b!888566 () Bool)

(assert (=> b!888566 (= e!495174 (and e!495172 mapRes!28398))))

(declare-fun condMapEmpty!28398 () Bool)

(declare-fun mapDefault!28398 () ValueCell!8471)

