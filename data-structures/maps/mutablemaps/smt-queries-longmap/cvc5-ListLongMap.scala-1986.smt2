; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34808 () Bool)

(assert start!34808)

(declare-fun b_free!7585 () Bool)

(declare-fun b_next!7585 () Bool)

(assert (=> start!34808 (= b_free!7585 (not b_next!7585))))

(declare-fun tp!26322 () Bool)

(declare-fun b_and!14825 () Bool)

(assert (=> start!34808 (= tp!26322 b_and!14825)))

(declare-fun b!348009 () Bool)

(declare-fun res!192809 () Bool)

(declare-fun e!213249 () Bool)

(assert (=> b!348009 (=> (not res!192809) (not e!213249))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348009 (= res!192809 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!12765 () Bool)

(declare-fun mapRes!12765 () Bool)

(declare-fun tp!26321 () Bool)

(declare-fun e!213246 () Bool)

(assert (=> mapNonEmpty!12765 (= mapRes!12765 (and tp!26321 e!213246))))

(declare-datatypes ((V!11027 0))(
  ( (V!11028 (val!3813 Int)) )
))
(declare-datatypes ((ValueCell!3425 0))(
  ( (ValueCellFull!3425 (v!5992 V!11027)) (EmptyCell!3425) )
))
(declare-fun mapRest!12765 () (Array (_ BitVec 32) ValueCell!3425))

(declare-datatypes ((array!18627 0))(
  ( (array!18628 (arr!8820 (Array (_ BitVec 32) ValueCell!3425)) (size!9172 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18627)

(declare-fun mapKey!12765 () (_ BitVec 32))

(declare-fun mapValue!12765 () ValueCell!3425)

(assert (=> mapNonEmpty!12765 (= (arr!8820 _values!1525) (store mapRest!12765 mapKey!12765 mapValue!12765))))

(declare-fun mapIsEmpty!12765 () Bool)

(assert (=> mapIsEmpty!12765 mapRes!12765))

(declare-fun res!192808 () Bool)

(assert (=> start!34808 (=> (not res!192808) (not e!213249))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34808 (= res!192808 (validMask!0 mask!2385))))

(assert (=> start!34808 e!213249))

(assert (=> start!34808 true))

(declare-fun tp_is_empty!7537 () Bool)

(assert (=> start!34808 tp_is_empty!7537))

(assert (=> start!34808 tp!26322))

(declare-fun e!213251 () Bool)

(declare-fun array_inv!6512 (array!18627) Bool)

(assert (=> start!34808 (and (array_inv!6512 _values!1525) e!213251)))

(declare-datatypes ((array!18629 0))(
  ( (array!18630 (arr!8821 (Array (_ BitVec 32) (_ BitVec 64))) (size!9173 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18629)

(declare-fun array_inv!6513 (array!18629) Bool)

(assert (=> start!34808 (array_inv!6513 _keys!1895)))

(declare-fun b!348010 () Bool)

(assert (=> b!348010 (= e!213246 tp_is_empty!7537)))

(declare-fun b!348011 () Bool)

(declare-fun res!192804 () Bool)

(declare-fun e!213250 () Bool)

(assert (=> b!348011 (=> (not res!192804) (not e!213250))))

(declare-fun arrayContainsKey!0 (array!18629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348011 (= res!192804 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348012 () Bool)

(declare-fun res!192807 () Bool)

(assert (=> b!348012 (=> (not res!192807) (not e!213249))))

(declare-fun zeroValue!1467 () V!11027)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11027)

(declare-datatypes ((tuple2!5504 0))(
  ( (tuple2!5505 (_1!2762 (_ BitVec 64)) (_2!2762 V!11027)) )
))
(declare-datatypes ((List!5147 0))(
  ( (Nil!5144) (Cons!5143 (h!5999 tuple2!5504) (t!10285 List!5147)) )
))
(declare-datatypes ((ListLongMap!4431 0))(
  ( (ListLongMap!4432 (toList!2231 List!5147)) )
))
(declare-fun contains!2292 (ListLongMap!4431 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1748 (array!18629 array!18627 (_ BitVec 32) (_ BitVec 32) V!11027 V!11027 (_ BitVec 32) Int) ListLongMap!4431)

(assert (=> b!348012 (= res!192807 (not (contains!2292 (getCurrentListMap!1748 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!348013 () Bool)

(declare-fun res!192806 () Bool)

(assert (=> b!348013 (=> (not res!192806) (not e!213249))))

(declare-datatypes ((List!5148 0))(
  ( (Nil!5145) (Cons!5144 (h!6000 (_ BitVec 64)) (t!10286 List!5148)) )
))
(declare-fun arrayNoDuplicates!0 (array!18629 (_ BitVec 32) List!5148) Bool)

(assert (=> b!348013 (= res!192806 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5145))))

(declare-fun b!348014 () Bool)

(declare-fun res!192811 () Bool)

(assert (=> b!348014 (=> (not res!192811) (not e!213249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18629 (_ BitVec 32)) Bool)

(assert (=> b!348014 (= res!192811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!348015 () Bool)

(declare-fun e!213247 () Bool)

(assert (=> b!348015 (= e!213247 tp_is_empty!7537)))

(declare-fun b!348016 () Bool)

(assert (=> b!348016 (= e!213250 false)))

(declare-fun lt!163796 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18629 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348016 (= lt!163796 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348017 () Bool)

(assert (=> b!348017 (= e!213251 (and e!213247 mapRes!12765))))

(declare-fun condMapEmpty!12765 () Bool)

(declare-fun mapDefault!12765 () ValueCell!3425)

