; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3132 () Bool)

(assert start!3132)

(declare-fun b!19111 () Bool)

(declare-fun b_free!665 () Bool)

(declare-fun b_next!665 () Bool)

(assert (=> b!19111 (= b_free!665 (not b_next!665))))

(declare-fun tp!3193 () Bool)

(declare-fun b_and!1327 () Bool)

(assert (=> b!19111 (= tp!3193 b_and!1327)))

(declare-fun mapIsEmpty!835 () Bool)

(declare-fun mapRes!835 () Bool)

(assert (=> mapIsEmpty!835 mapRes!835))

(declare-fun b!19109 () Bool)

(declare-fun e!12290 () Bool)

(declare-fun e!12294 () Bool)

(assert (=> b!19109 (= e!12290 e!12294)))

(declare-fun res!13062 () Bool)

(declare-fun e!12292 () Bool)

(assert (=> start!3132 (=> (not res!13062) (not e!12292))))

(declare-datatypes ((V!1063 0))(
  ( (V!1064 (val!491 Int)) )
))
(declare-datatypes ((ValueCell!265 0))(
  ( (ValueCellFull!265 (v!1498 V!1063)) (EmptyCell!265) )
))
(declare-datatypes ((array!1059 0))(
  ( (array!1060 (arr!509 (Array (_ BitVec 32) ValueCell!265)) (size!599 (_ BitVec 32))) )
))
(declare-datatypes ((array!1061 0))(
  ( (array!1062 (arr!510 (Array (_ BitVec 32) (_ BitVec 64))) (size!600 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!116 0))(
  ( (LongMapFixedSize!117 (defaultEntry!1677 Int) (mask!4616 (_ BitVec 32)) (extraKeys!1587 (_ BitVec 32)) (zeroValue!1611 V!1063) (minValue!1611 V!1063) (_size!91 (_ BitVec 32)) (_keys!3102 array!1061) (_values!1673 array!1059) (_vacant!91 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!116 0))(
  ( (Cell!117 (v!1499 LongMapFixedSize!116)) )
))
(declare-datatypes ((LongMap!116 0))(
  ( (LongMap!117 (underlying!69 Cell!116)) )
))
(declare-fun thiss!938 () LongMap!116)

(declare-fun valid!59 (LongMap!116) Bool)

(assert (=> start!3132 (= res!13062 (valid!59 thiss!938))))

(assert (=> start!3132 e!12292))

(assert (=> start!3132 e!12290))

(declare-fun b!19110 () Bool)

(declare-fun e!12291 () Bool)

(declare-fun tp_is_empty!929 () Bool)

(assert (=> b!19110 (= e!12291 tp_is_empty!929)))

(declare-fun e!12296 () Bool)

(declare-fun e!12297 () Bool)

(declare-fun array_inv!363 (array!1061) Bool)

(declare-fun array_inv!364 (array!1059) Bool)

(assert (=> b!19111 (= e!12297 (and tp!3193 tp_is_empty!929 (array_inv!363 (_keys!3102 (v!1499 (underlying!69 thiss!938)))) (array_inv!364 (_values!1673 (v!1499 (underlying!69 thiss!938)))) e!12296))))

(declare-fun b!19112 () Bool)

(assert (=> b!19112 (= e!12296 (and e!12291 mapRes!835))))

(declare-fun condMapEmpty!835 () Bool)

(declare-fun mapDefault!835 () ValueCell!265)

