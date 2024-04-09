; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34220 () Bool)

(assert start!34220)

(declare-fun b_free!7235 () Bool)

(declare-fun b_next!7235 () Bool)

(assert (=> start!34220 (= b_free!7235 (not b_next!7235))))

(declare-fun tp!25238 () Bool)

(declare-fun b_and!14453 () Bool)

(assert (=> start!34220 (= tp!25238 b_and!14453)))

(declare-fun b!341018 () Bool)

(declare-fun e!209166 () Bool)

(declare-fun tp_is_empty!7187 () Bool)

(assert (=> b!341018 (= e!209166 tp_is_empty!7187)))

(declare-fun mapNonEmpty!12207 () Bool)

(declare-fun mapRes!12207 () Bool)

(declare-fun tp!25239 () Bool)

(assert (=> mapNonEmpty!12207 (= mapRes!12207 (and tp!25239 e!209166))))

(declare-fun mapKey!12207 () (_ BitVec 32))

(declare-datatypes ((V!10559 0))(
  ( (V!10560 (val!3638 Int)) )
))
(declare-datatypes ((ValueCell!3250 0))(
  ( (ValueCellFull!3250 (v!5806 V!10559)) (EmptyCell!3250) )
))
(declare-fun mapRest!12207 () (Array (_ BitVec 32) ValueCell!3250))

(declare-fun mapValue!12207 () ValueCell!3250)

(declare-datatypes ((array!17939 0))(
  ( (array!17940 (arr!8487 (Array (_ BitVec 32) ValueCell!3250)) (size!8839 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17939)

(assert (=> mapNonEmpty!12207 (= (arr!8487 _values!1525) (store mapRest!12207 mapKey!12207 mapValue!12207))))

(declare-fun b!341019 () Bool)

(declare-fun res!188552 () Bool)

(declare-fun e!209164 () Bool)

(assert (=> b!341019 (=> (not res!188552) (not e!209164))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10559)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((array!17941 0))(
  ( (array!17942 (arr!8488 (Array (_ BitVec 32) (_ BitVec 64))) (size!8840 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17941)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10559)

(declare-datatypes ((tuple2!5260 0))(
  ( (tuple2!5261 (_1!2640 (_ BitVec 64)) (_2!2640 V!10559)) )
))
(declare-datatypes ((List!4904 0))(
  ( (Nil!4901) (Cons!4900 (h!5756 tuple2!5260) (t!10020 List!4904)) )
))
(declare-datatypes ((ListLongMap!4187 0))(
  ( (ListLongMap!4188 (toList!2109 List!4904)) )
))
(declare-fun contains!2159 (ListLongMap!4187 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1629 (array!17941 array!17939 (_ BitVec 32) (_ BitVec 32) V!10559 V!10559 (_ BitVec 32) Int) ListLongMap!4187)

(assert (=> b!341019 (= res!188552 (not (contains!2159 (getCurrentListMap!1629 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!341020 () Bool)

(declare-fun e!209165 () Bool)

(assert (=> b!341020 (= e!209164 e!209165)))

(declare-fun res!188551 () Bool)

(assert (=> b!341020 (=> (not res!188551) (not e!209165))))

(declare-datatypes ((SeekEntryResult!3276 0))(
  ( (MissingZero!3276 (index!15283 (_ BitVec 32))) (Found!3276 (index!15284 (_ BitVec 32))) (Intermediate!3276 (undefined!4088 Bool) (index!15285 (_ BitVec 32)) (x!33969 (_ BitVec 32))) (Undefined!3276) (MissingVacant!3276 (index!15286 (_ BitVec 32))) )
))
(declare-fun lt!161690 () SeekEntryResult!3276)

(assert (=> b!341020 (= res!188551 (and (not (is-Found!3276 lt!161690)) (not (is-MissingZero!3276 lt!161690)) (is-MissingVacant!3276 lt!161690)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17941 (_ BitVec 32)) SeekEntryResult!3276)

(assert (=> b!341020 (= lt!161690 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12207 () Bool)

(assert (=> mapIsEmpty!12207 mapRes!12207))

(declare-fun b!341021 () Bool)

(declare-fun res!188548 () Bool)

(assert (=> b!341021 (=> (not res!188548) (not e!209165))))

(declare-fun arrayContainsKey!0 (array!17941 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341021 (= res!188548 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!341022 () Bool)

(declare-fun res!188550 () Bool)

(assert (=> b!341022 (=> (not res!188550) (not e!209164))))

(assert (=> b!341022 (= res!188550 (and (= (size!8839 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8840 _keys!1895) (size!8839 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!341023 () Bool)

(declare-fun e!209167 () Bool)

(declare-fun e!209169 () Bool)

(assert (=> b!341023 (= e!209167 (and e!209169 mapRes!12207))))

(declare-fun condMapEmpty!12207 () Bool)

(declare-fun mapDefault!12207 () ValueCell!3250)

