; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78038 () Bool)

(assert start!78038)

(declare-fun b_free!16537 () Bool)

(declare-fun b_next!16537 () Bool)

(assert (=> start!78038 (= b_free!16537 (not b_next!16537))))

(declare-fun tp!57882 () Bool)

(declare-fun b_and!27127 () Bool)

(assert (=> start!78038 (= tp!57882 b_and!27127)))

(declare-fun res!614497 () Bool)

(declare-fun e!510559 () Bool)

(assert (=> start!78038 (=> (not res!614497) (not e!510559))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78038 (= res!614497 (validMask!0 mask!1756))))

(assert (=> start!78038 e!510559))

(declare-datatypes ((V!30239 0))(
  ( (V!30240 (val!9528 Int)) )
))
(declare-datatypes ((ValueCell!8996 0))(
  ( (ValueCellFull!8996 (v!12037 V!30239)) (EmptyCell!8996) )
))
(declare-datatypes ((array!53922 0))(
  ( (array!53923 (arr!25913 (Array (_ BitVec 32) ValueCell!8996)) (size!26373 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53922)

(declare-fun e!510563 () Bool)

(declare-fun array_inv!20242 (array!53922) Bool)

(assert (=> start!78038 (and (array_inv!20242 _values!1152) e!510563)))

(assert (=> start!78038 tp!57882))

(assert (=> start!78038 true))

(declare-fun tp_is_empty!18955 () Bool)

(assert (=> start!78038 tp_is_empty!18955))

(declare-datatypes ((array!53924 0))(
  ( (array!53925 (arr!25914 (Array (_ BitVec 32) (_ BitVec 64))) (size!26374 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53924)

(declare-fun array_inv!20243 (array!53924) Bool)

(assert (=> start!78038 (array_inv!20243 _keys!1386)))

(declare-fun b!910503 () Bool)

(declare-fun res!614498 () Bool)

(assert (=> b!910503 (=> (not res!614498) (not e!510559))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!910503 (= res!614498 (and (= (size!26373 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26374 _keys!1386) (size!26373 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910504 () Bool)

(declare-fun res!614499 () Bool)

(assert (=> b!910504 (=> (not res!614499) (not e!510559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53924 (_ BitVec 32)) Bool)

(assert (=> b!910504 (= res!614499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910505 () Bool)

(assert (=> b!910505 (= e!510559 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30239)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!410233 () Bool)

(declare-fun minValue!1094 () V!30239)

(declare-datatypes ((tuple2!12454 0))(
  ( (tuple2!12455 (_1!6237 (_ BitVec 64)) (_2!6237 V!30239)) )
))
(declare-datatypes ((List!18305 0))(
  ( (Nil!18302) (Cons!18301 (h!19447 tuple2!12454) (t!25898 List!18305)) )
))
(declare-datatypes ((ListLongMap!11165 0))(
  ( (ListLongMap!11166 (toList!5598 List!18305)) )
))
(declare-fun contains!4607 (ListLongMap!11165 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2828 (array!53924 array!53922 (_ BitVec 32) (_ BitVec 32) V!30239 V!30239 (_ BitVec 32) Int) ListLongMap!11165)

(assert (=> b!910505 (= lt!410233 (contains!4607 (getCurrentListMap!2828 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!910506 () Bool)

(declare-fun res!614500 () Bool)

(assert (=> b!910506 (=> (not res!614500) (not e!510559))))

(declare-datatypes ((List!18306 0))(
  ( (Nil!18303) (Cons!18302 (h!19448 (_ BitVec 64)) (t!25899 List!18306)) )
))
(declare-fun arrayNoDuplicates!0 (array!53924 (_ BitVec 32) List!18306) Bool)

(assert (=> b!910506 (= res!614500 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18303))))

(declare-fun b!910507 () Bool)

(declare-fun e!510561 () Bool)

(assert (=> b!910507 (= e!510561 tp_is_empty!18955)))

(declare-fun b!910508 () Bool)

(declare-fun e!510560 () Bool)

(assert (=> b!910508 (= e!510560 tp_is_empty!18955)))

(declare-fun mapIsEmpty!30154 () Bool)

(declare-fun mapRes!30154 () Bool)

(assert (=> mapIsEmpty!30154 mapRes!30154))

(declare-fun mapNonEmpty!30154 () Bool)

(declare-fun tp!57883 () Bool)

(assert (=> mapNonEmpty!30154 (= mapRes!30154 (and tp!57883 e!510560))))

(declare-fun mapValue!30154 () ValueCell!8996)

(declare-fun mapRest!30154 () (Array (_ BitVec 32) ValueCell!8996))

(declare-fun mapKey!30154 () (_ BitVec 32))

(assert (=> mapNonEmpty!30154 (= (arr!25913 _values!1152) (store mapRest!30154 mapKey!30154 mapValue!30154))))

(declare-fun b!910509 () Bool)

(assert (=> b!910509 (= e!510563 (and e!510561 mapRes!30154))))

(declare-fun condMapEmpty!30154 () Bool)

(declare-fun mapDefault!30154 () ValueCell!8996)

