; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34316 () Bool)

(assert start!34316)

(declare-fun b_free!7283 () Bool)

(declare-fun b_next!7283 () Bool)

(assert (=> start!34316 (= b_free!7283 (not b_next!7283))))

(declare-fun tp!25389 () Bool)

(declare-fun b_and!14505 () Bool)

(assert (=> start!34316 (= tp!25389 b_and!14505)))

(declare-fun b!342132 () Bool)

(declare-fun e!209824 () Bool)

(declare-fun tp_is_empty!7235 () Bool)

(assert (=> b!342132 (= e!209824 tp_is_empty!7235)))

(declare-fun b!342133 () Bool)

(declare-datatypes ((Unit!10647 0))(
  ( (Unit!10648) )
))
(declare-fun e!209826 () Unit!10647)

(declare-fun Unit!10649 () Unit!10647)

(assert (=> b!342133 (= e!209826 Unit!10649)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun lt!162084 () Unit!10647)

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10623 0))(
  ( (V!10624 (val!3662 Int)) )
))
(declare-fun zeroValue!1467 () V!10623)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3274 0))(
  ( (ValueCellFull!3274 (v!5832 V!10623)) (EmptyCell!3274) )
))
(declare-datatypes ((array!18037 0))(
  ( (array!18038 (arr!8534 (Array (_ BitVec 32) ValueCell!3274)) (size!8886 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18037)

(declare-datatypes ((array!18039 0))(
  ( (array!18040 (arr!8535 (Array (_ BitVec 32) (_ BitVec 64))) (size!8887 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18039)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10623)

(declare-fun lemmaArrayContainsKeyThenInListMap!299 (array!18039 array!18037 (_ BitVec 32) (_ BitVec 32) V!10623 V!10623 (_ BitVec 64) (_ BitVec 32) Int) Unit!10647)

(declare-fun arrayScanForKey!0 (array!18039 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342133 (= lt!162084 (lemmaArrayContainsKeyThenInListMap!299 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342133 false))

(declare-fun b!342134 () Bool)

(declare-fun res!189184 () Bool)

(declare-fun e!209821 () Bool)

(assert (=> b!342134 (=> (not res!189184) (not e!209821))))

(assert (=> b!342134 (= res!189184 (and (= (size!8886 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8887 _keys!1895) (size!8886 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12285 () Bool)

(declare-fun mapRes!12285 () Bool)

(assert (=> mapIsEmpty!12285 mapRes!12285))

(declare-fun b!342136 () Bool)

(declare-fun res!189183 () Bool)

(assert (=> b!342136 (=> (not res!189183) (not e!209821))))

(declare-datatypes ((tuple2!5296 0))(
  ( (tuple2!5297 (_1!2658 (_ BitVec 64)) (_2!2658 V!10623)) )
))
(declare-datatypes ((List!4937 0))(
  ( (Nil!4934) (Cons!4933 (h!5789 tuple2!5296) (t!10057 List!4937)) )
))
(declare-datatypes ((ListLongMap!4223 0))(
  ( (ListLongMap!4224 (toList!2127 List!4937)) )
))
(declare-fun contains!2179 (ListLongMap!4223 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1647 (array!18039 array!18037 (_ BitVec 32) (_ BitVec 32) V!10623 V!10623 (_ BitVec 32) Int) ListLongMap!4223)

(assert (=> b!342136 (= res!189183 (not (contains!2179 (getCurrentListMap!1647 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!342137 () Bool)

(declare-fun res!189188 () Bool)

(assert (=> b!342137 (=> (not res!189188) (not e!209821))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342137 (= res!189188 (validKeyInArray!0 k!1348))))

(declare-fun b!342138 () Bool)

(declare-fun res!189187 () Bool)

(assert (=> b!342138 (=> (not res!189187) (not e!209821))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18039 (_ BitVec 32)) Bool)

(assert (=> b!342138 (= res!189187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!342139 () Bool)

(declare-fun Unit!10650 () Unit!10647)

(assert (=> b!342139 (= e!209826 Unit!10650)))

(declare-fun mapNonEmpty!12285 () Bool)

(declare-fun tp!25388 () Bool)

(declare-fun e!209823 () Bool)

(assert (=> mapNonEmpty!12285 (= mapRes!12285 (and tp!25388 e!209823))))

(declare-fun mapValue!12285 () ValueCell!3274)

(declare-fun mapKey!12285 () (_ BitVec 32))

(declare-fun mapRest!12285 () (Array (_ BitVec 32) ValueCell!3274))

(assert (=> mapNonEmpty!12285 (= (arr!8534 _values!1525) (store mapRest!12285 mapKey!12285 mapValue!12285))))

(declare-fun b!342140 () Bool)

(declare-fun res!189186 () Bool)

(assert (=> b!342140 (=> (not res!189186) (not e!209821))))

(declare-datatypes ((List!4938 0))(
  ( (Nil!4935) (Cons!4934 (h!5790 (_ BitVec 64)) (t!10058 List!4938)) )
))
(declare-fun arrayNoDuplicates!0 (array!18039 (_ BitVec 32) List!4938) Bool)

(assert (=> b!342140 (= res!189186 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4935))))

(declare-fun b!342141 () Bool)

(declare-fun e!209825 () Bool)

(assert (=> b!342141 (= e!209825 false)))

(declare-fun lt!162083 () Unit!10647)

(assert (=> b!342141 (= lt!162083 e!209826)))

(declare-fun c!52727 () Bool)

(declare-fun arrayContainsKey!0 (array!18039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342141 (= c!52727 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!342142 () Bool)

(declare-fun e!209820 () Bool)

(assert (=> b!342142 (= e!209820 (and e!209824 mapRes!12285))))

(declare-fun condMapEmpty!12285 () Bool)

(declare-fun mapDefault!12285 () ValueCell!3274)

