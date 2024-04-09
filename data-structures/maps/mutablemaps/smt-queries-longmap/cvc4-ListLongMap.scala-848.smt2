; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20200 () Bool)

(assert start!20200)

(declare-fun b_free!4847 () Bool)

(declare-fun b_next!4847 () Bool)

(assert (=> start!20200 (= b_free!4847 (not b_next!4847))))

(declare-fun tp!17572 () Bool)

(declare-fun b_and!11611 () Bool)

(assert (=> start!20200 (= tp!17572 b_and!11611)))

(declare-fun mapNonEmpty!8123 () Bool)

(declare-fun mapRes!8123 () Bool)

(declare-fun tp!17573 () Bool)

(declare-fun e!130311 () Bool)

(assert (=> mapNonEmpty!8123 (= mapRes!8123 (and tp!17573 e!130311))))

(declare-fun mapKey!8123 () (_ BitVec 32))

(declare-datatypes ((V!5917 0))(
  ( (V!5918 (val!2396 Int)) )
))
(declare-datatypes ((ValueCell!2008 0))(
  ( (ValueCellFull!2008 (v!4362 V!5917)) (EmptyCell!2008) )
))
(declare-datatypes ((array!8654 0))(
  ( (array!8655 (arr!4077 (Array (_ BitVec 32) ValueCell!2008)) (size!4402 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8654)

(declare-fun mapValue!8123 () ValueCell!2008)

(declare-fun mapRest!8123 () (Array (_ BitVec 32) ValueCell!2008))

(assert (=> mapNonEmpty!8123 (= (arr!4077 _values!649) (store mapRest!8123 mapKey!8123 mapValue!8123))))

(declare-fun b!198210 () Bool)

(declare-fun res!93953 () Bool)

(declare-fun e!130313 () Bool)

(assert (=> b!198210 (=> (not res!93953) (not e!130313))))

(declare-datatypes ((array!8656 0))(
  ( (array!8657 (arr!4078 (Array (_ BitVec 32) (_ BitVec 64))) (size!4403 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8656)

(declare-datatypes ((List!2569 0))(
  ( (Nil!2566) (Cons!2565 (h!3207 (_ BitVec 64)) (t!7508 List!2569)) )
))
(declare-fun arrayNoDuplicates!0 (array!8656 (_ BitVec 32) List!2569) Bool)

(assert (=> b!198210 (= res!93953 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2566))))

(declare-fun b!198211 () Bool)

(declare-fun res!93952 () Bool)

(assert (=> b!198211 (=> (not res!93952) (not e!130313))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198211 (= res!93952 (= (select (arr!4078 _keys!825) i!601) k!843))))

(declare-fun res!93956 () Bool)

(assert (=> start!20200 (=> (not res!93956) (not e!130313))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20200 (= res!93956 (validMask!0 mask!1149))))

(assert (=> start!20200 e!130313))

(declare-fun e!130315 () Bool)

(declare-fun array_inv!2657 (array!8654) Bool)

(assert (=> start!20200 (and (array_inv!2657 _values!649) e!130315)))

(assert (=> start!20200 true))

(declare-fun tp_is_empty!4703 () Bool)

(assert (=> start!20200 tp_is_empty!4703))

(declare-fun array_inv!2658 (array!8656) Bool)

(assert (=> start!20200 (array_inv!2658 _keys!825)))

(assert (=> start!20200 tp!17572))

(declare-fun b!198212 () Bool)

(declare-fun res!93957 () Bool)

(assert (=> b!198212 (=> (not res!93957) (not e!130313))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8656 (_ BitVec 32)) Bool)

(assert (=> b!198212 (= res!93957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!198213 () Bool)

(declare-fun res!93955 () Bool)

(assert (=> b!198213 (=> (not res!93955) (not e!130313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198213 (= res!93955 (validKeyInArray!0 k!843))))

(declare-fun b!198214 () Bool)

(assert (=> b!198214 (= e!130311 tp_is_empty!4703)))

(declare-fun b!198215 () Bool)

(declare-fun res!93954 () Bool)

(assert (=> b!198215 (=> (not res!93954) (not e!130313))))

(assert (=> b!198215 (= res!93954 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4403 _keys!825))))))

(declare-fun mapIsEmpty!8123 () Bool)

(assert (=> mapIsEmpty!8123 mapRes!8123))

(declare-fun b!198216 () Bool)

(assert (=> b!198216 (= e!130313 false)))

(declare-datatypes ((tuple2!3630 0))(
  ( (tuple2!3631 (_1!1825 (_ BitVec 64)) (_2!1825 V!5917)) )
))
(declare-datatypes ((List!2570 0))(
  ( (Nil!2567) (Cons!2566 (h!3208 tuple2!3630) (t!7509 List!2570)) )
))
(declare-datatypes ((ListLongMap!2557 0))(
  ( (ListLongMap!2558 (toList!1294 List!2570)) )
))
(declare-fun lt!97902 () ListLongMap!2557)

(declare-fun v!520 () V!5917)

(declare-fun zeroValue!615 () V!5917)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5917)

(declare-fun getCurrentListMapNoExtraKeys!251 (array!8656 array!8654 (_ BitVec 32) (_ BitVec 32) V!5917 V!5917 (_ BitVec 32) Int) ListLongMap!2557)

(assert (=> b!198216 (= lt!97902 (getCurrentListMapNoExtraKeys!251 _keys!825 (array!8655 (store (arr!4077 _values!649) i!601 (ValueCellFull!2008 v!520)) (size!4402 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97903 () ListLongMap!2557)

(assert (=> b!198216 (= lt!97903 (getCurrentListMapNoExtraKeys!251 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198217 () Bool)

(declare-fun e!130314 () Bool)

(assert (=> b!198217 (= e!130314 tp_is_empty!4703)))

(declare-fun b!198218 () Bool)

(declare-fun res!93958 () Bool)

(assert (=> b!198218 (=> (not res!93958) (not e!130313))))

(assert (=> b!198218 (= res!93958 (and (= (size!4402 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4403 _keys!825) (size!4402 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198219 () Bool)

(assert (=> b!198219 (= e!130315 (and e!130314 mapRes!8123))))

(declare-fun condMapEmpty!8123 () Bool)

(declare-fun mapDefault!8123 () ValueCell!2008)

