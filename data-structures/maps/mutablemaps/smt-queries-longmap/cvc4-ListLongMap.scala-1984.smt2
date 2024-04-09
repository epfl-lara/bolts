; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34800 () Bool)

(assert start!34800)

(declare-fun b_free!7577 () Bool)

(declare-fun b_next!7577 () Bool)

(assert (=> start!34800 (= b_free!7577 (not b_next!7577))))

(declare-fun tp!26297 () Bool)

(declare-fun b_and!14817 () Bool)

(assert (=> start!34800 (= tp!26297 b_and!14817)))

(declare-fun mapNonEmpty!12753 () Bool)

(declare-fun mapRes!12753 () Bool)

(declare-fun tp!26298 () Bool)

(declare-fun e!213174 () Bool)

(assert (=> mapNonEmpty!12753 (= mapRes!12753 (and tp!26298 e!213174))))

(declare-fun mapKey!12753 () (_ BitVec 32))

(declare-datatypes ((V!11015 0))(
  ( (V!11016 (val!3809 Int)) )
))
(declare-datatypes ((ValueCell!3421 0))(
  ( (ValueCellFull!3421 (v!5988 V!11015)) (EmptyCell!3421) )
))
(declare-datatypes ((array!18613 0))(
  ( (array!18614 (arr!8813 (Array (_ BitVec 32) ValueCell!3421)) (size!9165 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18613)

(declare-fun mapRest!12753 () (Array (_ BitVec 32) ValueCell!3421))

(declare-fun mapValue!12753 () ValueCell!3421)

(assert (=> mapNonEmpty!12753 (= (arr!8813 _values!1525) (store mapRest!12753 mapKey!12753 mapValue!12753))))

(declare-fun b!347877 () Bool)

(declare-fun res!192714 () Bool)

(declare-fun e!213175 () Bool)

(assert (=> b!347877 (=> (not res!192714) (not e!213175))))

(declare-datatypes ((array!18615 0))(
  ( (array!18616 (arr!8814 (Array (_ BitVec 32) (_ BitVec 64))) (size!9166 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18615)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18615 (_ BitVec 32)) Bool)

(assert (=> b!347877 (= res!192714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!347878 () Bool)

(declare-fun e!213177 () Bool)

(declare-fun tp_is_empty!7529 () Bool)

(assert (=> b!347878 (= e!213177 tp_is_empty!7529)))

(declare-fun b!347879 () Bool)

(declare-fun e!213179 () Bool)

(assert (=> b!347879 (= e!213175 e!213179)))

(declare-fun res!192709 () Bool)

(assert (=> b!347879 (=> (not res!192709) (not e!213179))))

(declare-datatypes ((tuple2!5500 0))(
  ( (tuple2!5501 (_1!2760 (_ BitVec 64)) (_2!2760 V!11015)) )
))
(declare-datatypes ((List!5143 0))(
  ( (Nil!5140) (Cons!5139 (h!5995 tuple2!5500) (t!10281 List!5143)) )
))
(declare-datatypes ((ListLongMap!4427 0))(
  ( (ListLongMap!4428 (toList!2229 List!5143)) )
))
(declare-fun lt!163770 () ListLongMap!4427)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun contains!2290 (ListLongMap!4427 (_ BitVec 64)) Bool)

(assert (=> b!347879 (= res!192709 (not (contains!2290 lt!163770 k!1348)))))

(declare-fun zeroValue!1467 () V!11015)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11015)

(declare-fun getCurrentListMap!1746 (array!18615 array!18613 (_ BitVec 32) (_ BitVec 32) V!11015 V!11015 (_ BitVec 32) Int) ListLongMap!4427)

(assert (=> b!347879 (= lt!163770 (getCurrentListMap!1746 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!347880 () Bool)

(declare-fun e!213173 () Bool)

(assert (=> b!347880 (= e!213173 (and e!213177 mapRes!12753))))

(declare-fun condMapEmpty!12753 () Bool)

(declare-fun mapDefault!12753 () ValueCell!3421)

