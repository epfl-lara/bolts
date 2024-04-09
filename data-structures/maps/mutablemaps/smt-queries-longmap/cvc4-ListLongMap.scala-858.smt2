; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20260 () Bool)

(assert start!20260)

(declare-fun b_free!4907 () Bool)

(declare-fun b_next!4907 () Bool)

(assert (=> start!20260 (= b_free!4907 (not b_next!4907))))

(declare-fun tp!17753 () Bool)

(declare-fun b_and!11671 () Bool)

(assert (=> start!20260 (= tp!17753 b_and!11671)))

(declare-fun res!94587 () Bool)

(declare-fun e!130764 () Bool)

(assert (=> start!20260 (=> (not res!94587) (not e!130764))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20260 (= res!94587 (validMask!0 mask!1149))))

(assert (=> start!20260 e!130764))

(declare-datatypes ((V!5997 0))(
  ( (V!5998 (val!2426 Int)) )
))
(declare-datatypes ((ValueCell!2038 0))(
  ( (ValueCellFull!2038 (v!4392 V!5997)) (EmptyCell!2038) )
))
(declare-datatypes ((array!8766 0))(
  ( (array!8767 (arr!4133 (Array (_ BitVec 32) ValueCell!2038)) (size!4458 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8766)

(declare-fun e!130762 () Bool)

(declare-fun array_inv!2701 (array!8766) Bool)

(assert (=> start!20260 (and (array_inv!2701 _values!649) e!130762)))

(assert (=> start!20260 true))

(declare-fun tp_is_empty!4763 () Bool)

(assert (=> start!20260 tp_is_empty!4763))

(declare-datatypes ((array!8768 0))(
  ( (array!8769 (arr!4134 (Array (_ BitVec 32) (_ BitVec 64))) (size!4459 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8768)

(declare-fun array_inv!2702 (array!8768) Bool)

(assert (=> start!20260 (array_inv!2702 _keys!825)))

(assert (=> start!20260 tp!17753))

(declare-fun b!199110 () Bool)

(assert (=> b!199110 (= e!130764 (not true))))

(declare-datatypes ((tuple2!3670 0))(
  ( (tuple2!3671 (_1!1845 (_ BitVec 64)) (_2!1845 V!5997)) )
))
(declare-datatypes ((List!2610 0))(
  ( (Nil!2607) (Cons!2606 (h!3248 tuple2!3670) (t!7549 List!2610)) )
))
(declare-datatypes ((ListLongMap!2597 0))(
  ( (ListLongMap!2598 (toList!1314 List!2610)) )
))
(declare-fun lt!98209 () ListLongMap!2597)

(declare-fun lt!98206 () ListLongMap!2597)

(assert (=> b!199110 (and (= lt!98209 lt!98206) (= lt!98206 lt!98209))))

(declare-fun lt!98207 () ListLongMap!2597)

(declare-fun v!520 () V!5997)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun +!331 (ListLongMap!2597 tuple2!3670) ListLongMap!2597)

(assert (=> b!199110 (= lt!98206 (+!331 lt!98207 (tuple2!3671 k!843 v!520)))))

(declare-datatypes ((Unit!5971 0))(
  ( (Unit!5972) )
))
(declare-fun lt!98208 () Unit!5971)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!5997)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!5997)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!13 (array!8768 array!8766 (_ BitVec 32) (_ BitVec 32) V!5997 V!5997 (_ BitVec 32) (_ BitVec 64) V!5997 (_ BitVec 32) Int) Unit!5971)

(assert (=> b!199110 (= lt!98208 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!13 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!271 (array!8768 array!8766 (_ BitVec 32) (_ BitVec 32) V!5997 V!5997 (_ BitVec 32) Int) ListLongMap!2597)

(assert (=> b!199110 (= lt!98209 (getCurrentListMapNoExtraKeys!271 _keys!825 (array!8767 (store (arr!4133 _values!649) i!601 (ValueCellFull!2038 v!520)) (size!4458 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199110 (= lt!98207 (getCurrentListMapNoExtraKeys!271 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!199111 () Bool)

(declare-fun res!94582 () Bool)

(assert (=> b!199111 (=> (not res!94582) (not e!130764))))

(declare-datatypes ((List!2611 0))(
  ( (Nil!2608) (Cons!2607 (h!3249 (_ BitVec 64)) (t!7550 List!2611)) )
))
(declare-fun arrayNoDuplicates!0 (array!8768 (_ BitVec 32) List!2611) Bool)

(assert (=> b!199111 (= res!94582 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2608))))

(declare-fun b!199112 () Bool)

(declare-fun res!94586 () Bool)

(assert (=> b!199112 (=> (not res!94586) (not e!130764))))

(assert (=> b!199112 (= res!94586 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4459 _keys!825))))))

(declare-fun b!199113 () Bool)

(declare-fun res!94583 () Bool)

(assert (=> b!199113 (=> (not res!94583) (not e!130764))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199113 (= res!94583 (validKeyInArray!0 k!843))))

(declare-fun b!199114 () Bool)

(declare-fun res!94584 () Bool)

(assert (=> b!199114 (=> (not res!94584) (not e!130764))))

(assert (=> b!199114 (= res!94584 (= (select (arr!4134 _keys!825) i!601) k!843))))

(declare-fun b!199115 () Bool)

(declare-fun res!94588 () Bool)

(assert (=> b!199115 (=> (not res!94588) (not e!130764))))

(assert (=> b!199115 (= res!94588 (and (= (size!4458 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4459 _keys!825) (size!4458 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!199116 () Bool)

(declare-fun e!130765 () Bool)

(assert (=> b!199116 (= e!130765 tp_is_empty!4763)))

(declare-fun b!199117 () Bool)

(declare-fun res!94585 () Bool)

(assert (=> b!199117 (=> (not res!94585) (not e!130764))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8768 (_ BitVec 32)) Bool)

(assert (=> b!199117 (= res!94585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199118 () Bool)

(declare-fun e!130761 () Bool)

(assert (=> b!199118 (= e!130761 tp_is_empty!4763)))

(declare-fun mapNonEmpty!8213 () Bool)

(declare-fun mapRes!8213 () Bool)

(declare-fun tp!17752 () Bool)

(assert (=> mapNonEmpty!8213 (= mapRes!8213 (and tp!17752 e!130765))))

(declare-fun mapValue!8213 () ValueCell!2038)

(declare-fun mapRest!8213 () (Array (_ BitVec 32) ValueCell!2038))

(declare-fun mapKey!8213 () (_ BitVec 32))

(assert (=> mapNonEmpty!8213 (= (arr!4133 _values!649) (store mapRest!8213 mapKey!8213 mapValue!8213))))

(declare-fun mapIsEmpty!8213 () Bool)

(assert (=> mapIsEmpty!8213 mapRes!8213))

(declare-fun b!199119 () Bool)

(assert (=> b!199119 (= e!130762 (and e!130761 mapRes!8213))))

(declare-fun condMapEmpty!8213 () Bool)

(declare-fun mapDefault!8213 () ValueCell!2038)

