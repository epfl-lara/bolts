; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33534 () Bool)

(assert start!33534)

(declare-fun b_free!6815 () Bool)

(declare-fun b_next!6815 () Bool)

(assert (=> start!33534 (= b_free!6815 (not b_next!6815))))

(declare-fun tp!23939 () Bool)

(declare-fun b_and!14007 () Bool)

(assert (=> start!33534 (= tp!23939 b_and!14007)))

(declare-fun b!332523 () Bool)

(declare-fun res!183270 () Bool)

(declare-fun e!204206 () Bool)

(assert (=> b!332523 (=> (not res!183270) (not e!204206))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!9999 0))(
  ( (V!10000 (val!3428 Int)) )
))
(declare-fun zeroValue!1467 () V!9999)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3040 0))(
  ( (ValueCellFull!3040 (v!5583 V!9999)) (EmptyCell!3040) )
))
(declare-datatypes ((array!17127 0))(
  ( (array!17128 (arr!8094 (Array (_ BitVec 32) ValueCell!3040)) (size!8446 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17127)

(declare-datatypes ((array!17129 0))(
  ( (array!17130 (arr!8095 (Array (_ BitVec 32) (_ BitVec 64))) (size!8447 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17129)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!9999)

(declare-datatypes ((tuple2!4988 0))(
  ( (tuple2!4989 (_1!2504 (_ BitVec 64)) (_2!2504 V!9999)) )
))
(declare-datatypes ((List!4627 0))(
  ( (Nil!4624) (Cons!4623 (h!5479 tuple2!4988) (t!9717 List!4627)) )
))
(declare-datatypes ((ListLongMap!3915 0))(
  ( (ListLongMap!3916 (toList!1973 List!4627)) )
))
(declare-fun contains!2010 (ListLongMap!3915 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1496 (array!17129 array!17127 (_ BitVec 32) (_ BitVec 32) V!9999 V!9999 (_ BitVec 32) Int) ListLongMap!3915)

(assert (=> b!332523 (= res!183270 (not (contains!2010 (getCurrentListMap!1496 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!332524 () Bool)

(assert (=> b!332524 (= e!204206 (not (= (size!8447 _keys!1895) (bvadd #b00000000000000000000000000000001 mask!2385))))))

(declare-fun b!332525 () Bool)

(declare-fun e!204207 () Bool)

(declare-fun tp_is_empty!6767 () Bool)

(assert (=> b!332525 (= e!204207 tp_is_empty!6767)))

(declare-fun b!332526 () Bool)

(declare-fun res!183268 () Bool)

(assert (=> b!332526 (=> (not res!183268) (not e!204206))))

(declare-datatypes ((List!4628 0))(
  ( (Nil!4625) (Cons!4624 (h!5480 (_ BitVec 64)) (t!9718 List!4628)) )
))
(declare-fun arrayNoDuplicates!0 (array!17129 (_ BitVec 32) List!4628) Bool)

(assert (=> b!332526 (= res!183268 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4625))))

(declare-fun mapNonEmpty!11538 () Bool)

(declare-fun mapRes!11538 () Bool)

(declare-fun tp!23940 () Bool)

(assert (=> mapNonEmpty!11538 (= mapRes!11538 (and tp!23940 e!204207))))

(declare-fun mapValue!11538 () ValueCell!3040)

(declare-fun mapKey!11538 () (_ BitVec 32))

(declare-fun mapRest!11538 () (Array (_ BitVec 32) ValueCell!3040))

(assert (=> mapNonEmpty!11538 (= (arr!8094 _values!1525) (store mapRest!11538 mapKey!11538 mapValue!11538))))

(declare-fun b!332527 () Bool)

(declare-fun e!204204 () Bool)

(assert (=> b!332527 (= e!204204 tp_is_empty!6767)))

(declare-fun b!332528 () Bool)

(declare-fun e!204203 () Bool)

(assert (=> b!332528 (= e!204203 (and e!204204 mapRes!11538))))

(declare-fun condMapEmpty!11538 () Bool)

(declare-fun mapDefault!11538 () ValueCell!3040)

