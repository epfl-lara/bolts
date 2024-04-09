; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20296 () Bool)

(assert start!20296)

(declare-fun b_free!4943 () Bool)

(declare-fun b_next!4943 () Bool)

(assert (=> start!20296 (= b_free!4943 (not b_next!4943))))

(declare-fun tp!17861 () Bool)

(declare-fun b_and!11707 () Bool)

(assert (=> start!20296 (= tp!17861 b_and!11707)))

(declare-fun b!199650 () Bool)

(declare-fun res!94960 () Bool)

(declare-fun e!131031 () Bool)

(assert (=> b!199650 (=> (not res!94960) (not e!131031))))

(declare-datatypes ((array!8836 0))(
  ( (array!8837 (arr!4168 (Array (_ BitVec 32) (_ BitVec 64))) (size!4493 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8836)

(declare-datatypes ((List!2633 0))(
  ( (Nil!2630) (Cons!2629 (h!3271 (_ BitVec 64)) (t!7572 List!2633)) )
))
(declare-fun arrayNoDuplicates!0 (array!8836 (_ BitVec 32) List!2633) Bool)

(assert (=> b!199650 (= res!94960 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2630))))

(declare-fun mapNonEmpty!8267 () Bool)

(declare-fun mapRes!8267 () Bool)

(declare-fun tp!17860 () Bool)

(declare-fun e!131032 () Bool)

(assert (=> mapNonEmpty!8267 (= mapRes!8267 (and tp!17860 e!131032))))

(declare-datatypes ((V!6045 0))(
  ( (V!6046 (val!2444 Int)) )
))
(declare-datatypes ((ValueCell!2056 0))(
  ( (ValueCellFull!2056 (v!4410 V!6045)) (EmptyCell!2056) )
))
(declare-fun mapRest!8267 () (Array (_ BitVec 32) ValueCell!2056))

(declare-datatypes ((array!8838 0))(
  ( (array!8839 (arr!4169 (Array (_ BitVec 32) ValueCell!2056)) (size!4494 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8838)

(declare-fun mapValue!8267 () ValueCell!2056)

(declare-fun mapKey!8267 () (_ BitVec 32))

(assert (=> mapNonEmpty!8267 (= (arr!4169 _values!649) (store mapRest!8267 mapKey!8267 mapValue!8267))))

(declare-fun b!199651 () Bool)

(declare-fun res!94965 () Bool)

(assert (=> b!199651 (=> (not res!94965) (not e!131031))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8836 (_ BitVec 32)) Bool)

(assert (=> b!199651 (= res!94965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199652 () Bool)

(assert (=> b!199652 (= e!131031 (not true))))

(declare-fun lt!98497 () array!8838)

(declare-fun zeroValue!615 () V!6045)

(declare-fun defaultEntry!657 () Int)

(declare-datatypes ((tuple2!3692 0))(
  ( (tuple2!3693 (_1!1856 (_ BitVec 64)) (_2!1856 V!6045)) )
))
(declare-datatypes ((List!2634 0))(
  ( (Nil!2631) (Cons!2630 (h!3272 tuple2!3692) (t!7573 List!2634)) )
))
(declare-datatypes ((ListLongMap!2619 0))(
  ( (ListLongMap!2620 (toList!1325 List!2634)) )
))
(declare-fun lt!98493 () ListLongMap!2619)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6045)

(declare-fun getCurrentListMap!911 (array!8836 array!8838 (_ BitVec 32) (_ BitVec 32) V!6045 V!6045 (_ BitVec 32) Int) ListLongMap!2619)

(assert (=> b!199652 (= lt!98493 (getCurrentListMap!911 _keys!825 lt!98497 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98492 () ListLongMap!2619)

(declare-fun lt!98496 () ListLongMap!2619)

(assert (=> b!199652 (and (= lt!98492 lt!98496) (= lt!98496 lt!98492))))

(declare-fun lt!98495 () ListLongMap!2619)

(declare-fun v!520 () V!6045)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun +!342 (ListLongMap!2619 tuple2!3692) ListLongMap!2619)

(assert (=> b!199652 (= lt!98496 (+!342 lt!98495 (tuple2!3693 k!843 v!520)))))

(declare-datatypes ((Unit!5993 0))(
  ( (Unit!5994) )
))
(declare-fun lt!98494 () Unit!5993)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!24 (array!8836 array!8838 (_ BitVec 32) (_ BitVec 32) V!6045 V!6045 (_ BitVec 32) (_ BitVec 64) V!6045 (_ BitVec 32) Int) Unit!5993)

(assert (=> b!199652 (= lt!98494 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!24 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!282 (array!8836 array!8838 (_ BitVec 32) (_ BitVec 32) V!6045 V!6045 (_ BitVec 32) Int) ListLongMap!2619)

(assert (=> b!199652 (= lt!98492 (getCurrentListMapNoExtraKeys!282 _keys!825 lt!98497 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199652 (= lt!98497 (array!8839 (store (arr!4169 _values!649) i!601 (ValueCellFull!2056 v!520)) (size!4494 _values!649)))))

(assert (=> b!199652 (= lt!98495 (getCurrentListMapNoExtraKeys!282 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!199653 () Bool)

(declare-fun res!94961 () Bool)

(assert (=> b!199653 (=> (not res!94961) (not e!131031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199653 (= res!94961 (validKeyInArray!0 k!843))))

(declare-fun mapIsEmpty!8267 () Bool)

(assert (=> mapIsEmpty!8267 mapRes!8267))

(declare-fun b!199654 () Bool)

(declare-fun res!94962 () Bool)

(assert (=> b!199654 (=> (not res!94962) (not e!131031))))

(assert (=> b!199654 (= res!94962 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4493 _keys!825))))))

(declare-fun res!94966 () Bool)

(assert (=> start!20296 (=> (not res!94966) (not e!131031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20296 (= res!94966 (validMask!0 mask!1149))))

(assert (=> start!20296 e!131031))

(declare-fun e!131035 () Bool)

(declare-fun array_inv!2729 (array!8838) Bool)

(assert (=> start!20296 (and (array_inv!2729 _values!649) e!131035)))

(assert (=> start!20296 true))

(declare-fun tp_is_empty!4799 () Bool)

(assert (=> start!20296 tp_is_empty!4799))

(declare-fun array_inv!2730 (array!8836) Bool)

(assert (=> start!20296 (array_inv!2730 _keys!825)))

(assert (=> start!20296 tp!17861))

(declare-fun b!199655 () Bool)

(declare-fun e!131034 () Bool)

(assert (=> b!199655 (= e!131035 (and e!131034 mapRes!8267))))

(declare-fun condMapEmpty!8267 () Bool)

(declare-fun mapDefault!8267 () ValueCell!2056)

