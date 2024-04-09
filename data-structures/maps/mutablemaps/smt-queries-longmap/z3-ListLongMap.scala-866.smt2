; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20306 () Bool)

(assert start!20306)

(declare-fun b_free!4953 () Bool)

(declare-fun b_next!4953 () Bool)

(assert (=> start!20306 (= b_free!4953 (not b_next!4953))))

(declare-fun tp!17890 () Bool)

(declare-fun b_and!11717 () Bool)

(assert (=> start!20306 (= tp!17890 b_and!11717)))

(declare-fun b!199800 () Bool)

(declare-fun e!131106 () Bool)

(declare-fun e!131109 () Bool)

(declare-fun mapRes!8282 () Bool)

(assert (=> b!199800 (= e!131106 (and e!131109 mapRes!8282))))

(declare-fun condMapEmpty!8282 () Bool)

(declare-datatypes ((V!6059 0))(
  ( (V!6060 (val!2449 Int)) )
))
(declare-datatypes ((ValueCell!2061 0))(
  ( (ValueCellFull!2061 (v!4415 V!6059)) (EmptyCell!2061) )
))
(declare-datatypes ((array!8854 0))(
  ( (array!8855 (arr!4177 (Array (_ BitVec 32) ValueCell!2061)) (size!4502 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8854)

(declare-fun mapDefault!8282 () ValueCell!2061)

(assert (=> b!199800 (= condMapEmpty!8282 (= (arr!4177 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2061)) mapDefault!8282)))))

(declare-fun b!199801 () Bool)

(declare-fun res!95068 () Bool)

(declare-fun e!131108 () Bool)

(assert (=> b!199801 (=> (not res!95068) (not e!131108))))

(declare-datatypes ((array!8856 0))(
  ( (array!8857 (arr!4178 (Array (_ BitVec 32) (_ BitVec 64))) (size!4503 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8856)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8856 (_ BitVec 32)) Bool)

(assert (=> b!199801 (= res!95068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199802 () Bool)

(assert (=> b!199802 (= e!131108 (not true))))

(declare-datatypes ((tuple2!3698 0))(
  ( (tuple2!3699 (_1!1859 (_ BitVec 64)) (_2!1859 V!6059)) )
))
(declare-datatypes ((List!2638 0))(
  ( (Nil!2635) (Cons!2634 (h!3276 tuple2!3698) (t!7577 List!2638)) )
))
(declare-datatypes ((ListLongMap!2625 0))(
  ( (ListLongMap!2626 (toList!1328 List!2638)) )
))
(declare-fun lt!98582 () ListLongMap!2625)

(declare-fun lt!98585 () array!8854)

(declare-fun zeroValue!615 () V!6059)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6059)

(declare-fun getCurrentListMap!914 (array!8856 array!8854 (_ BitVec 32) (_ BitVec 32) V!6059 V!6059 (_ BitVec 32) Int) ListLongMap!2625)

(assert (=> b!199802 (= lt!98582 (getCurrentListMap!914 _keys!825 lt!98585 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98583 () ListLongMap!2625)

(declare-fun lt!98584 () ListLongMap!2625)

(assert (=> b!199802 (and (= lt!98583 lt!98584) (= lt!98584 lt!98583))))

(declare-fun v!520 () V!6059)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun lt!98587 () ListLongMap!2625)

(declare-fun +!345 (ListLongMap!2625 tuple2!3698) ListLongMap!2625)

(assert (=> b!199802 (= lt!98584 (+!345 lt!98587 (tuple2!3699 k0!843 v!520)))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!5999 0))(
  ( (Unit!6000) )
))
(declare-fun lt!98586 () Unit!5999)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!27 (array!8856 array!8854 (_ BitVec 32) (_ BitVec 32) V!6059 V!6059 (_ BitVec 32) (_ BitVec 64) V!6059 (_ BitVec 32) Int) Unit!5999)

(assert (=> b!199802 (= lt!98586 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!27 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!285 (array!8856 array!8854 (_ BitVec 32) (_ BitVec 32) V!6059 V!6059 (_ BitVec 32) Int) ListLongMap!2625)

(assert (=> b!199802 (= lt!98583 (getCurrentListMapNoExtraKeys!285 _keys!825 lt!98585 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199802 (= lt!98585 (array!8855 (store (arr!4177 _values!649) i!601 (ValueCellFull!2061 v!520)) (size!4502 _values!649)))))

(assert (=> b!199802 (= lt!98587 (getCurrentListMapNoExtraKeys!285 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!199803 () Bool)

(declare-fun e!131107 () Bool)

(declare-fun tp_is_empty!4809 () Bool)

(assert (=> b!199803 (= e!131107 tp_is_empty!4809)))

(declare-fun res!95065 () Bool)

(assert (=> start!20306 (=> (not res!95065) (not e!131108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20306 (= res!95065 (validMask!0 mask!1149))))

(assert (=> start!20306 e!131108))

(declare-fun array_inv!2737 (array!8854) Bool)

(assert (=> start!20306 (and (array_inv!2737 _values!649) e!131106)))

(assert (=> start!20306 true))

(assert (=> start!20306 tp_is_empty!4809))

(declare-fun array_inv!2738 (array!8856) Bool)

(assert (=> start!20306 (array_inv!2738 _keys!825)))

(assert (=> start!20306 tp!17890))

(declare-fun b!199804 () Bool)

(declare-fun res!95070 () Bool)

(assert (=> b!199804 (=> (not res!95070) (not e!131108))))

(assert (=> b!199804 (= res!95070 (and (= (size!4502 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4503 _keys!825) (size!4502 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8282 () Bool)

(assert (=> mapIsEmpty!8282 mapRes!8282))

(declare-fun b!199805 () Bool)

(declare-fun res!95067 () Bool)

(assert (=> b!199805 (=> (not res!95067) (not e!131108))))

(assert (=> b!199805 (= res!95067 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4503 _keys!825))))))

(declare-fun b!199806 () Bool)

(declare-fun res!95071 () Bool)

(assert (=> b!199806 (=> (not res!95071) (not e!131108))))

(assert (=> b!199806 (= res!95071 (= (select (arr!4178 _keys!825) i!601) k0!843))))

(declare-fun b!199807 () Bool)

(declare-fun res!95066 () Bool)

(assert (=> b!199807 (=> (not res!95066) (not e!131108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199807 (= res!95066 (validKeyInArray!0 k0!843))))

(declare-fun mapNonEmpty!8282 () Bool)

(declare-fun tp!17891 () Bool)

(assert (=> mapNonEmpty!8282 (= mapRes!8282 (and tp!17891 e!131107))))

(declare-fun mapKey!8282 () (_ BitVec 32))

(declare-fun mapValue!8282 () ValueCell!2061)

(declare-fun mapRest!8282 () (Array (_ BitVec 32) ValueCell!2061))

(assert (=> mapNonEmpty!8282 (= (arr!4177 _values!649) (store mapRest!8282 mapKey!8282 mapValue!8282))))

(declare-fun b!199808 () Bool)

(declare-fun res!95069 () Bool)

(assert (=> b!199808 (=> (not res!95069) (not e!131108))))

(declare-datatypes ((List!2639 0))(
  ( (Nil!2636) (Cons!2635 (h!3277 (_ BitVec 64)) (t!7578 List!2639)) )
))
(declare-fun arrayNoDuplicates!0 (array!8856 (_ BitVec 32) List!2639) Bool)

(assert (=> b!199808 (= res!95069 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2636))))

(declare-fun b!199809 () Bool)

(assert (=> b!199809 (= e!131109 tp_is_empty!4809)))

(assert (= (and start!20306 res!95065) b!199804))

(assert (= (and b!199804 res!95070) b!199801))

(assert (= (and b!199801 res!95068) b!199808))

(assert (= (and b!199808 res!95069) b!199805))

(assert (= (and b!199805 res!95067) b!199807))

(assert (= (and b!199807 res!95066) b!199806))

(assert (= (and b!199806 res!95071) b!199802))

(assert (= (and b!199800 condMapEmpty!8282) mapIsEmpty!8282))

(assert (= (and b!199800 (not condMapEmpty!8282)) mapNonEmpty!8282))

(get-info :version)

(assert (= (and mapNonEmpty!8282 ((_ is ValueCellFull!2061) mapValue!8282)) b!199803))

(assert (= (and b!199800 ((_ is ValueCellFull!2061) mapDefault!8282)) b!199809))

(assert (= start!20306 b!199800))

(declare-fun m!226261 () Bool)

(assert (=> b!199801 m!226261))

(declare-fun m!226263 () Bool)

(assert (=> b!199806 m!226263))

(declare-fun m!226265 () Bool)

(assert (=> b!199807 m!226265))

(declare-fun m!226267 () Bool)

(assert (=> b!199808 m!226267))

(declare-fun m!226269 () Bool)

(assert (=> start!20306 m!226269))

(declare-fun m!226271 () Bool)

(assert (=> start!20306 m!226271))

(declare-fun m!226273 () Bool)

(assert (=> start!20306 m!226273))

(declare-fun m!226275 () Bool)

(assert (=> b!199802 m!226275))

(declare-fun m!226277 () Bool)

(assert (=> b!199802 m!226277))

(declare-fun m!226279 () Bool)

(assert (=> b!199802 m!226279))

(declare-fun m!226281 () Bool)

(assert (=> b!199802 m!226281))

(declare-fun m!226283 () Bool)

(assert (=> b!199802 m!226283))

(declare-fun m!226285 () Bool)

(assert (=> b!199802 m!226285))

(declare-fun m!226287 () Bool)

(assert (=> mapNonEmpty!8282 m!226287))

(check-sat tp_is_empty!4809 (not b!199802) b_and!11717 (not b!199807) (not b!199801) (not b!199808) (not mapNonEmpty!8282) (not start!20306) (not b_next!4953))
(check-sat b_and!11717 (not b_next!4953))
