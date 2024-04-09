; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33524 () Bool)

(assert start!33524)

(declare-fun b_free!6805 () Bool)

(declare-fun b_next!6805 () Bool)

(assert (=> start!33524 (= b_free!6805 (not b_next!6805))))

(declare-fun tp!23910 () Bool)

(declare-fun b_and!13997 () Bool)

(assert (=> start!33524 (= tp!23910 b_and!13997)))

(declare-fun b!332395 () Bool)

(declare-fun res!183187 () Bool)

(declare-fun e!204130 () Bool)

(assert (=> b!332395 (=> (not res!183187) (not e!204130))))

(declare-datatypes ((array!17107 0))(
  ( (array!17108 (arr!8084 (Array (_ BitVec 32) (_ BitVec 64))) (size!8436 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17107)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17107 (_ BitVec 32)) Bool)

(assert (=> b!332395 (= res!183187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!11523 () Bool)

(declare-fun mapRes!11523 () Bool)

(declare-fun tp!23909 () Bool)

(declare-fun e!204129 () Bool)

(assert (=> mapNonEmpty!11523 (= mapRes!11523 (and tp!23909 e!204129))))

(declare-datatypes ((V!9987 0))(
  ( (V!9988 (val!3423 Int)) )
))
(declare-datatypes ((ValueCell!3035 0))(
  ( (ValueCellFull!3035 (v!5578 V!9987)) (EmptyCell!3035) )
))
(declare-fun mapRest!11523 () (Array (_ BitVec 32) ValueCell!3035))

(declare-datatypes ((array!17109 0))(
  ( (array!17110 (arr!8085 (Array (_ BitVec 32) ValueCell!3035)) (size!8437 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17109)

(declare-fun mapKey!11523 () (_ BitVec 32))

(declare-fun mapValue!11523 () ValueCell!3035)

(assert (=> mapNonEmpty!11523 (= (arr!8085 _values!1525) (store mapRest!11523 mapKey!11523 mapValue!11523))))

(declare-fun b!332396 () Bool)

(assert (=> b!332396 (= e!204130 false)))

(declare-fun zeroValue!1467 () V!9987)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!9987)

(declare-fun lt!158991 () Bool)

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((tuple2!4980 0))(
  ( (tuple2!4981 (_1!2500 (_ BitVec 64)) (_2!2500 V!9987)) )
))
(declare-datatypes ((List!4619 0))(
  ( (Nil!4616) (Cons!4615 (h!5471 tuple2!4980) (t!9709 List!4619)) )
))
(declare-datatypes ((ListLongMap!3907 0))(
  ( (ListLongMap!3908 (toList!1969 List!4619)) )
))
(declare-fun contains!2006 (ListLongMap!3907 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1492 (array!17107 array!17109 (_ BitVec 32) (_ BitVec 32) V!9987 V!9987 (_ BitVec 32) Int) ListLongMap!3907)

(assert (=> b!332396 (= lt!158991 (contains!2006 (getCurrentListMap!1492 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348))))

(declare-fun b!332397 () Bool)

(declare-fun e!204131 () Bool)

(declare-fun e!204132 () Bool)

(assert (=> b!332397 (= e!204131 (and e!204132 mapRes!11523))))

(declare-fun condMapEmpty!11523 () Bool)

(declare-fun mapDefault!11523 () ValueCell!3035)

