; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20300 () Bool)

(assert start!20300)

(declare-fun b_free!4947 () Bool)

(declare-fun b_next!4947 () Bool)

(assert (=> start!20300 (= b_free!4947 (not b_next!4947))))

(declare-fun tp!17873 () Bool)

(declare-fun b_and!11711 () Bool)

(assert (=> start!20300 (= tp!17873 b_and!11711)))

(declare-fun b!199710 () Bool)

(declare-fun e!131065 () Bool)

(declare-fun tp_is_empty!4803 () Bool)

(assert (=> b!199710 (= e!131065 tp_is_empty!4803)))

(declare-fun b!199711 () Bool)

(declare-fun res!95002 () Bool)

(declare-fun e!131061 () Bool)

(assert (=> b!199711 (=> (not res!95002) (not e!131061))))

(declare-datatypes ((array!8844 0))(
  ( (array!8845 (arr!4172 (Array (_ BitVec 32) (_ BitVec 64))) (size!4497 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8844)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!199711 (= res!95002 (= (select (arr!4172 _keys!825) i!601) k0!843))))

(declare-fun b!199712 () Bool)

(declare-fun res!95008 () Bool)

(assert (=> b!199712 (=> (not res!95008) (not e!131061))))

(assert (=> b!199712 (= res!95008 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4497 _keys!825))))))

(declare-fun b!199713 () Bool)

(assert (=> b!199713 (= e!131061 (not true))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((V!6051 0))(
  ( (V!6052 (val!2446 Int)) )
))
(declare-datatypes ((tuple2!3694 0))(
  ( (tuple2!3695 (_1!1857 (_ BitVec 64)) (_2!1857 V!6051)) )
))
(declare-datatypes ((List!2635 0))(
  ( (Nil!2632) (Cons!2631 (h!3273 tuple2!3694) (t!7574 List!2635)) )
))
(declare-datatypes ((ListLongMap!2621 0))(
  ( (ListLongMap!2622 (toList!1326 List!2635)) )
))
(declare-fun lt!98531 () ListLongMap!2621)

(declare-fun zeroValue!615 () V!6051)

(declare-datatypes ((ValueCell!2058 0))(
  ( (ValueCellFull!2058 (v!4412 V!6051)) (EmptyCell!2058) )
))
(declare-datatypes ((array!8846 0))(
  ( (array!8847 (arr!4173 (Array (_ BitVec 32) ValueCell!2058)) (size!4498 (_ BitVec 32))) )
))
(declare-fun lt!98532 () array!8846)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6051)

(declare-fun getCurrentListMap!912 (array!8844 array!8846 (_ BitVec 32) (_ BitVec 32) V!6051 V!6051 (_ BitVec 32) Int) ListLongMap!2621)

(assert (=> b!199713 (= lt!98531 (getCurrentListMap!912 _keys!825 lt!98532 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98530 () ListLongMap!2621)

(declare-fun lt!98533 () ListLongMap!2621)

(assert (=> b!199713 (and (= lt!98530 lt!98533) (= lt!98533 lt!98530))))

(declare-fun lt!98529 () ListLongMap!2621)

(declare-fun v!520 () V!6051)

(declare-fun +!343 (ListLongMap!2621 tuple2!3694) ListLongMap!2621)

(assert (=> b!199713 (= lt!98533 (+!343 lt!98529 (tuple2!3695 k0!843 v!520)))))

(declare-datatypes ((Unit!5995 0))(
  ( (Unit!5996) )
))
(declare-fun lt!98528 () Unit!5995)

(declare-fun _values!649 () array!8846)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!25 (array!8844 array!8846 (_ BitVec 32) (_ BitVec 32) V!6051 V!6051 (_ BitVec 32) (_ BitVec 64) V!6051 (_ BitVec 32) Int) Unit!5995)

(assert (=> b!199713 (= lt!98528 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!25 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!283 (array!8844 array!8846 (_ BitVec 32) (_ BitVec 32) V!6051 V!6051 (_ BitVec 32) Int) ListLongMap!2621)

(assert (=> b!199713 (= lt!98530 (getCurrentListMapNoExtraKeys!283 _keys!825 lt!98532 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199713 (= lt!98532 (array!8847 (store (arr!4173 _values!649) i!601 (ValueCellFull!2058 v!520)) (size!4498 _values!649)))))

(assert (=> b!199713 (= lt!98529 (getCurrentListMapNoExtraKeys!283 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!199714 () Bool)

(declare-fun e!131064 () Bool)

(assert (=> b!199714 (= e!131064 tp_is_empty!4803)))

(declare-fun b!199715 () Bool)

(declare-fun res!95005 () Bool)

(assert (=> b!199715 (=> (not res!95005) (not e!131061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8844 (_ BitVec 32)) Bool)

(assert (=> b!199715 (= res!95005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8273 () Bool)

(declare-fun mapRes!8273 () Bool)

(declare-fun tp!17872 () Bool)

(assert (=> mapNonEmpty!8273 (= mapRes!8273 (and tp!17872 e!131064))))

(declare-fun mapValue!8273 () ValueCell!2058)

(declare-fun mapRest!8273 () (Array (_ BitVec 32) ValueCell!2058))

(declare-fun mapKey!8273 () (_ BitVec 32))

(assert (=> mapNonEmpty!8273 (= (arr!4173 _values!649) (store mapRest!8273 mapKey!8273 mapValue!8273))))

(declare-fun res!95003 () Bool)

(assert (=> start!20300 (=> (not res!95003) (not e!131061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20300 (= res!95003 (validMask!0 mask!1149))))

(assert (=> start!20300 e!131061))

(declare-fun e!131062 () Bool)

(declare-fun array_inv!2733 (array!8846) Bool)

(assert (=> start!20300 (and (array_inv!2733 _values!649) e!131062)))

(assert (=> start!20300 true))

(assert (=> start!20300 tp_is_empty!4803))

(declare-fun array_inv!2734 (array!8844) Bool)

(assert (=> start!20300 (array_inv!2734 _keys!825)))

(assert (=> start!20300 tp!17873))

(declare-fun b!199716 () Bool)

(declare-fun res!95007 () Bool)

(assert (=> b!199716 (=> (not res!95007) (not e!131061))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199716 (= res!95007 (validKeyInArray!0 k0!843))))

(declare-fun b!199717 () Bool)

(assert (=> b!199717 (= e!131062 (and e!131065 mapRes!8273))))

(declare-fun condMapEmpty!8273 () Bool)

(declare-fun mapDefault!8273 () ValueCell!2058)

(assert (=> b!199717 (= condMapEmpty!8273 (= (arr!4173 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2058)) mapDefault!8273)))))

(declare-fun b!199718 () Bool)

(declare-fun res!95006 () Bool)

(assert (=> b!199718 (=> (not res!95006) (not e!131061))))

(declare-datatypes ((List!2636 0))(
  ( (Nil!2633) (Cons!2632 (h!3274 (_ BitVec 64)) (t!7575 List!2636)) )
))
(declare-fun arrayNoDuplicates!0 (array!8844 (_ BitVec 32) List!2636) Bool)

(assert (=> b!199718 (= res!95006 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2633))))

(declare-fun b!199719 () Bool)

(declare-fun res!95004 () Bool)

(assert (=> b!199719 (=> (not res!95004) (not e!131061))))

(assert (=> b!199719 (= res!95004 (and (= (size!4498 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4497 _keys!825) (size!4498 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8273 () Bool)

(assert (=> mapIsEmpty!8273 mapRes!8273))

(assert (= (and start!20300 res!95003) b!199719))

(assert (= (and b!199719 res!95004) b!199715))

(assert (= (and b!199715 res!95005) b!199718))

(assert (= (and b!199718 res!95006) b!199712))

(assert (= (and b!199712 res!95008) b!199716))

(assert (= (and b!199716 res!95007) b!199711))

(assert (= (and b!199711 res!95002) b!199713))

(assert (= (and b!199717 condMapEmpty!8273) mapIsEmpty!8273))

(assert (= (and b!199717 (not condMapEmpty!8273)) mapNonEmpty!8273))

(get-info :version)

(assert (= (and mapNonEmpty!8273 ((_ is ValueCellFull!2058) mapValue!8273)) b!199714))

(assert (= (and b!199717 ((_ is ValueCellFull!2058) mapDefault!8273)) b!199710))

(assert (= start!20300 b!199717))

(declare-fun m!226177 () Bool)

(assert (=> b!199716 m!226177))

(declare-fun m!226179 () Bool)

(assert (=> b!199718 m!226179))

(declare-fun m!226181 () Bool)

(assert (=> mapNonEmpty!8273 m!226181))

(declare-fun m!226183 () Bool)

(assert (=> b!199715 m!226183))

(declare-fun m!226185 () Bool)

(assert (=> b!199713 m!226185))

(declare-fun m!226187 () Bool)

(assert (=> b!199713 m!226187))

(declare-fun m!226189 () Bool)

(assert (=> b!199713 m!226189))

(declare-fun m!226191 () Bool)

(assert (=> b!199713 m!226191))

(declare-fun m!226193 () Bool)

(assert (=> b!199713 m!226193))

(declare-fun m!226195 () Bool)

(assert (=> b!199713 m!226195))

(declare-fun m!226197 () Bool)

(assert (=> b!199711 m!226197))

(declare-fun m!226199 () Bool)

(assert (=> start!20300 m!226199))

(declare-fun m!226201 () Bool)

(assert (=> start!20300 m!226201))

(declare-fun m!226203 () Bool)

(assert (=> start!20300 m!226203))

(check-sat tp_is_empty!4803 (not mapNonEmpty!8273) (not b_next!4947) (not b!199713) (not b!199718) b_and!11711 (not b!199716) (not start!20300) (not b!199715))
(check-sat b_and!11711 (not b_next!4947))
