; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20196 () Bool)

(assert start!20196)

(declare-fun b_free!4843 () Bool)

(declare-fun b_next!4843 () Bool)

(assert (=> start!20196 (= b_free!4843 (not b_next!4843))))

(declare-fun tp!17561 () Bool)

(declare-fun b_and!11607 () Bool)

(assert (=> start!20196 (= tp!17561 b_and!11607)))

(declare-fun mapNonEmpty!8117 () Bool)

(declare-fun mapRes!8117 () Bool)

(declare-fun tp!17560 () Bool)

(declare-fun e!130282 () Bool)

(assert (=> mapNonEmpty!8117 (= mapRes!8117 (and tp!17560 e!130282))))

(declare-datatypes ((V!5913 0))(
  ( (V!5914 (val!2394 Int)) )
))
(declare-datatypes ((ValueCell!2006 0))(
  ( (ValueCellFull!2006 (v!4360 V!5913)) (EmptyCell!2006) )
))
(declare-fun mapValue!8117 () ValueCell!2006)

(declare-datatypes ((array!8646 0))(
  ( (array!8647 (arr!4073 (Array (_ BitVec 32) ValueCell!2006)) (size!4398 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8646)

(declare-fun mapKey!8117 () (_ BitVec 32))

(declare-fun mapRest!8117 () (Array (_ BitVec 32) ValueCell!2006))

(assert (=> mapNonEmpty!8117 (= (arr!4073 _values!649) (store mapRest!8117 mapKey!8117 mapValue!8117))))

(declare-fun res!93914 () Bool)

(declare-fun e!130285 () Bool)

(assert (=> start!20196 (=> (not res!93914) (not e!130285))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20196 (= res!93914 (validMask!0 mask!1149))))

(assert (=> start!20196 e!130285))

(declare-fun e!130283 () Bool)

(declare-fun array_inv!2653 (array!8646) Bool)

(assert (=> start!20196 (and (array_inv!2653 _values!649) e!130283)))

(assert (=> start!20196 true))

(declare-fun tp_is_empty!4699 () Bool)

(assert (=> start!20196 tp_is_empty!4699))

(declare-datatypes ((array!8648 0))(
  ( (array!8649 (arr!4074 (Array (_ BitVec 32) (_ BitVec 64))) (size!4399 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8648)

(declare-fun array_inv!2654 (array!8648) Bool)

(assert (=> start!20196 (array_inv!2654 _keys!825)))

(assert (=> start!20196 tp!17561))

(declare-fun b!198150 () Bool)

(declare-fun res!93911 () Bool)

(assert (=> b!198150 (=> (not res!93911) (not e!130285))))

(declare-datatypes ((List!2565 0))(
  ( (Nil!2562) (Cons!2561 (h!3203 (_ BitVec 64)) (t!7504 List!2565)) )
))
(declare-fun arrayNoDuplicates!0 (array!8648 (_ BitVec 32) List!2565) Bool)

(assert (=> b!198150 (= res!93911 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2562))))

(declare-fun b!198151 () Bool)

(declare-fun res!93910 () Bool)

(assert (=> b!198151 (=> (not res!93910) (not e!130285))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8648 (_ BitVec 32)) Bool)

(assert (=> b!198151 (= res!93910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!198152 () Bool)

(declare-fun res!93912 () Bool)

(assert (=> b!198152 (=> (not res!93912) (not e!130285))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198152 (= res!93912 (validKeyInArray!0 k!843))))

(declare-fun b!198153 () Bool)

(declare-fun e!130284 () Bool)

(assert (=> b!198153 (= e!130284 tp_is_empty!4699)))

(declare-fun mapIsEmpty!8117 () Bool)

(assert (=> mapIsEmpty!8117 mapRes!8117))

(declare-fun b!198154 () Bool)

(declare-fun res!93915 () Bool)

(assert (=> b!198154 (=> (not res!93915) (not e!130285))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!198154 (= res!93915 (= (select (arr!4074 _keys!825) i!601) k!843))))

(declare-fun b!198155 () Bool)

(declare-fun res!93913 () Bool)

(assert (=> b!198155 (=> (not res!93913) (not e!130285))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!198155 (= res!93913 (and (= (size!4398 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4399 _keys!825) (size!4398 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!198156 () Bool)

(assert (=> b!198156 (= e!130285 false)))

(declare-datatypes ((tuple2!3626 0))(
  ( (tuple2!3627 (_1!1823 (_ BitVec 64)) (_2!1823 V!5913)) )
))
(declare-datatypes ((List!2566 0))(
  ( (Nil!2563) (Cons!2562 (h!3204 tuple2!3626) (t!7505 List!2566)) )
))
(declare-datatypes ((ListLongMap!2553 0))(
  ( (ListLongMap!2554 (toList!1292 List!2566)) )
))
(declare-fun lt!97891 () ListLongMap!2553)

(declare-fun v!520 () V!5913)

(declare-fun zeroValue!615 () V!5913)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!5913)

(declare-fun getCurrentListMapNoExtraKeys!249 (array!8648 array!8646 (_ BitVec 32) (_ BitVec 32) V!5913 V!5913 (_ BitVec 32) Int) ListLongMap!2553)

(assert (=> b!198156 (= lt!97891 (getCurrentListMapNoExtraKeys!249 _keys!825 (array!8647 (store (arr!4073 _values!649) i!601 (ValueCellFull!2006 v!520)) (size!4398 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!97890 () ListLongMap!2553)

(assert (=> b!198156 (= lt!97890 (getCurrentListMapNoExtraKeys!249 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198157 () Bool)

(assert (=> b!198157 (= e!130282 tp_is_empty!4699)))

(declare-fun b!198158 () Bool)

(assert (=> b!198158 (= e!130283 (and e!130284 mapRes!8117))))

(declare-fun condMapEmpty!8117 () Bool)

(declare-fun mapDefault!8117 () ValueCell!2006)

