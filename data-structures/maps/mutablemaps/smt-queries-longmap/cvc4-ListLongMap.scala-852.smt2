; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20224 () Bool)

(assert start!20224)

(declare-fun b_free!4871 () Bool)

(declare-fun b_next!4871 () Bool)

(assert (=> start!20224 (= b_free!4871 (not b_next!4871))))

(declare-fun tp!17645 () Bool)

(declare-fun b_and!11635 () Bool)

(assert (=> start!20224 (= tp!17645 b_and!11635)))

(declare-fun mapNonEmpty!8159 () Bool)

(declare-fun mapRes!8159 () Bool)

(declare-fun tp!17644 () Bool)

(declare-fun e!130492 () Bool)

(assert (=> mapNonEmpty!8159 (= mapRes!8159 (and tp!17644 e!130492))))

(declare-datatypes ((V!5949 0))(
  ( (V!5950 (val!2408 Int)) )
))
(declare-datatypes ((ValueCell!2020 0))(
  ( (ValueCellFull!2020 (v!4374 V!5949)) (EmptyCell!2020) )
))
(declare-fun mapValue!8159 () ValueCell!2020)

(declare-datatypes ((array!8700 0))(
  ( (array!8701 (arr!4100 (Array (_ BitVec 32) ValueCell!2020)) (size!4425 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8700)

(declare-fun mapKey!8159 () (_ BitVec 32))

(declare-fun mapRest!8159 () (Array (_ BitVec 32) ValueCell!2020))

(assert (=> mapNonEmpty!8159 (= (arr!4100 _values!649) (store mapRest!8159 mapKey!8159 mapValue!8159))))

(declare-fun b!198570 () Bool)

(declare-fun tp_is_empty!4727 () Bool)

(assert (=> b!198570 (= e!130492 tp_is_empty!4727)))

(declare-fun b!198571 () Bool)

(declare-fun e!130491 () Bool)

(assert (=> b!198571 (= e!130491 tp_is_empty!4727)))

(declare-fun b!198572 () Bool)

(declare-fun res!94205 () Bool)

(declare-fun e!130493 () Bool)

(assert (=> b!198572 (=> (not res!94205) (not e!130493))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!8702 0))(
  ( (array!8703 (arr!4101 (Array (_ BitVec 32) (_ BitVec 64))) (size!4426 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8702)

(assert (=> b!198572 (= res!94205 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4426 _keys!825))))))

(declare-fun res!94204 () Bool)

(assert (=> start!20224 (=> (not res!94204) (not e!130493))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20224 (= res!94204 (validMask!0 mask!1149))))

(assert (=> start!20224 e!130493))

(declare-fun e!130494 () Bool)

(declare-fun array_inv!2677 (array!8700) Bool)

(assert (=> start!20224 (and (array_inv!2677 _values!649) e!130494)))

(assert (=> start!20224 true))

(assert (=> start!20224 tp_is_empty!4727))

(declare-fun array_inv!2678 (array!8702) Bool)

(assert (=> start!20224 (array_inv!2678 _keys!825)))

(assert (=> start!20224 tp!17645))

(declare-fun b!198573 () Bool)

(assert (=> b!198573 (= e!130493 (not true))))

(declare-datatypes ((tuple2!3648 0))(
  ( (tuple2!3649 (_1!1834 (_ BitVec 64)) (_2!1834 V!5949)) )
))
(declare-datatypes ((List!2586 0))(
  ( (Nil!2583) (Cons!2582 (h!3224 tuple2!3648) (t!7525 List!2586)) )
))
(declare-datatypes ((ListLongMap!2575 0))(
  ( (ListLongMap!2576 (toList!1303 List!2586)) )
))
(declare-fun lt!97990 () ListLongMap!2575)

(declare-fun lt!97993 () ListLongMap!2575)

(assert (=> b!198573 (and (= lt!97990 lt!97993) (= lt!97993 lt!97990))))

(declare-fun lt!97992 () ListLongMap!2575)

(declare-fun v!520 () V!5949)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun +!320 (ListLongMap!2575 tuple2!3648) ListLongMap!2575)

(assert (=> b!198573 (= lt!97993 (+!320 lt!97992 (tuple2!3649 k!843 v!520)))))

(declare-datatypes ((Unit!5949 0))(
  ( (Unit!5950) )
))
(declare-fun lt!97991 () Unit!5949)

(declare-fun zeroValue!615 () V!5949)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5949)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!2 (array!8702 array!8700 (_ BitVec 32) (_ BitVec 32) V!5949 V!5949 (_ BitVec 32) (_ BitVec 64) V!5949 (_ BitVec 32) Int) Unit!5949)

(assert (=> b!198573 (= lt!97991 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!2 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!260 (array!8702 array!8700 (_ BitVec 32) (_ BitVec 32) V!5949 V!5949 (_ BitVec 32) Int) ListLongMap!2575)

(assert (=> b!198573 (= lt!97990 (getCurrentListMapNoExtraKeys!260 _keys!825 (array!8701 (store (arr!4100 _values!649) i!601 (ValueCellFull!2020 v!520)) (size!4425 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!198573 (= lt!97992 (getCurrentListMapNoExtraKeys!260 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!198574 () Bool)

(declare-fun res!94210 () Bool)

(assert (=> b!198574 (=> (not res!94210) (not e!130493))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!198574 (= res!94210 (validKeyInArray!0 k!843))))

(declare-fun b!198575 () Bool)

(declare-fun res!94209 () Bool)

(assert (=> b!198575 (=> (not res!94209) (not e!130493))))

(declare-datatypes ((List!2587 0))(
  ( (Nil!2584) (Cons!2583 (h!3225 (_ BitVec 64)) (t!7526 List!2587)) )
))
(declare-fun arrayNoDuplicates!0 (array!8702 (_ BitVec 32) List!2587) Bool)

(assert (=> b!198575 (= res!94209 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2584))))

(declare-fun b!198576 () Bool)

(declare-fun res!94208 () Bool)

(assert (=> b!198576 (=> (not res!94208) (not e!130493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8702 (_ BitVec 32)) Bool)

(assert (=> b!198576 (= res!94208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!8159 () Bool)

(assert (=> mapIsEmpty!8159 mapRes!8159))

(declare-fun b!198577 () Bool)

(declare-fun res!94206 () Bool)

(assert (=> b!198577 (=> (not res!94206) (not e!130493))))

(assert (=> b!198577 (= res!94206 (= (select (arr!4101 _keys!825) i!601) k!843))))

(declare-fun b!198578 () Bool)

(assert (=> b!198578 (= e!130494 (and e!130491 mapRes!8159))))

(declare-fun condMapEmpty!8159 () Bool)

(declare-fun mapDefault!8159 () ValueCell!2020)

