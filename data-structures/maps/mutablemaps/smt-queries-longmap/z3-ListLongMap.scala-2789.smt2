; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!40632 () Bool)

(assert start!40632)

(declare-fun b_free!10635 () Bool)

(declare-fun b_next!10635 () Bool)

(assert (=> start!40632 (= b_free!10635 (not b_next!10635))))

(declare-fun tp!37724 () Bool)

(declare-fun b_and!18661 () Bool)

(assert (=> start!40632 (= tp!37724 b_and!18661)))

(declare-fun b!448262 () Bool)

(declare-fun res!266512 () Bool)

(declare-fun e!263030 () Bool)

(assert (=> b!448262 (=> (not res!266512) (not e!263030))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!448262 (= res!266512 (bvsle from!863 i!563))))

(declare-fun b!448263 () Bool)

(declare-fun res!266503 () Bool)

(declare-fun e!263031 () Bool)

(assert (=> b!448263 (=> (not res!266503) (not e!263031))))

(declare-datatypes ((array!27713 0))(
  ( (array!27714 (arr!13299 (Array (_ BitVec 32) (_ BitVec 64))) (size!13651 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27713)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17069 0))(
  ( (V!17070 (val!6031 Int)) )
))
(declare-datatypes ((ValueCell!5643 0))(
  ( (ValueCellFull!5643 (v!8282 V!17069)) (EmptyCell!5643) )
))
(declare-datatypes ((array!27715 0))(
  ( (array!27716 (arr!13300 (Array (_ BitVec 32) ValueCell!5643)) (size!13652 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27715)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!448263 (= res!266503 (and (= (size!13652 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13651 _keys!709) (size!13652 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!448264 () Bool)

(declare-fun e!263029 () Bool)

(declare-fun tp_is_empty!11973 () Bool)

(assert (=> b!448264 (= e!263029 tp_is_empty!11973)))

(declare-fun b!448265 () Bool)

(declare-fun res!266504 () Bool)

(assert (=> b!448265 (=> (not res!266504) (not e!263031))))

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27713 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!448265 (= res!266504 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!448266 () Bool)

(declare-fun e!263026 () Bool)

(assert (=> b!448266 (= e!263026 tp_is_empty!11973)))

(declare-fun mapIsEmpty!19593 () Bool)

(declare-fun mapRes!19593 () Bool)

(assert (=> mapIsEmpty!19593 mapRes!19593))

(declare-fun b!448267 () Bool)

(declare-fun res!266513 () Bool)

(assert (=> b!448267 (=> (not res!266513) (not e!263031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!448267 (= res!266513 (validMask!0 mask!1025))))

(declare-fun b!448268 () Bool)

(declare-fun res!266506 () Bool)

(assert (=> b!448268 (=> (not res!266506) (not e!263031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!448268 (= res!266506 (validKeyInArray!0 k0!794))))

(declare-fun b!448269 () Bool)

(declare-fun res!266514 () Bool)

(assert (=> b!448269 (=> (not res!266514) (not e!263030))))

(declare-fun lt!204132 () array!27713)

(declare-datatypes ((List!7956 0))(
  ( (Nil!7953) (Cons!7952 (h!8808 (_ BitVec 64)) (t!13726 List!7956)) )
))
(declare-fun arrayNoDuplicates!0 (array!27713 (_ BitVec 32) List!7956) Bool)

(assert (=> b!448269 (= res!266514 (arrayNoDuplicates!0 lt!204132 #b00000000000000000000000000000000 Nil!7953))))

(declare-fun b!448270 () Bool)

(declare-fun res!266508 () Bool)

(assert (=> b!448270 (=> (not res!266508) (not e!263031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27713 (_ BitVec 32)) Bool)

(assert (=> b!448270 (= res!266508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun res!266510 () Bool)

(assert (=> start!40632 (=> (not res!266510) (not e!263031))))

(assert (=> start!40632 (= res!266510 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13651 _keys!709))))))

(assert (=> start!40632 e!263031))

(assert (=> start!40632 tp_is_empty!11973))

(assert (=> start!40632 tp!37724))

(assert (=> start!40632 true))

(declare-fun e!263028 () Bool)

(declare-fun array_inv!9632 (array!27715) Bool)

(assert (=> start!40632 (and (array_inv!9632 _values!549) e!263028)))

(declare-fun array_inv!9633 (array!27713) Bool)

(assert (=> start!40632 (array_inv!9633 _keys!709)))

(declare-fun b!448271 () Bool)

(declare-fun res!266509 () Bool)

(assert (=> b!448271 (=> (not res!266509) (not e!263031))))

(assert (=> b!448271 (= res!266509 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7953))))

(declare-fun b!448272 () Bool)

(assert (=> b!448272 (= e!263030 false)))

(declare-fun minValue!515 () V!17069)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!17069)

(declare-datatypes ((tuple2!7846 0))(
  ( (tuple2!7847 (_1!3933 (_ BitVec 64)) (_2!3933 V!17069)) )
))
(declare-datatypes ((List!7957 0))(
  ( (Nil!7954) (Cons!7953 (h!8809 tuple2!7846) (t!13727 List!7957)) )
))
(declare-datatypes ((ListLongMap!6773 0))(
  ( (ListLongMap!6774 (toList!3402 List!7957)) )
))
(declare-fun lt!204133 () ListLongMap!6773)

(declare-fun v!412 () V!17069)

(declare-fun getCurrentListMapNoExtraKeys!1582 (array!27713 array!27715 (_ BitVec 32) (_ BitVec 32) V!17069 V!17069 (_ BitVec 32) Int) ListLongMap!6773)

(assert (=> b!448272 (= lt!204133 (getCurrentListMapNoExtraKeys!1582 lt!204132 (array!27716 (store (arr!13300 _values!549) i!563 (ValueCellFull!5643 v!412)) (size!13652 _values!549)) mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun lt!204131 () ListLongMap!6773)

(assert (=> b!448272 (= lt!204131 (getCurrentListMapNoExtraKeys!1582 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!448273 () Bool)

(declare-fun res!266511 () Bool)

(assert (=> b!448273 (=> (not res!266511) (not e!263031))))

(assert (=> b!448273 (= res!266511 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13651 _keys!709))))))

(declare-fun b!448274 () Bool)

(declare-fun res!266505 () Bool)

(assert (=> b!448274 (=> (not res!266505) (not e!263031))))

(assert (=> b!448274 (= res!266505 (or (= (select (arr!13299 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13299 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!448275 () Bool)

(assert (=> b!448275 (= e!263028 (and e!263026 mapRes!19593))))

(declare-fun condMapEmpty!19593 () Bool)

(declare-fun mapDefault!19593 () ValueCell!5643)

(assert (=> b!448275 (= condMapEmpty!19593 (= (arr!13300 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5643)) mapDefault!19593)))))

(declare-fun b!448276 () Bool)

(assert (=> b!448276 (= e!263031 e!263030)))

(declare-fun res!266507 () Bool)

(assert (=> b!448276 (=> (not res!266507) (not e!263030))))

(assert (=> b!448276 (= res!266507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!204132 mask!1025))))

(assert (=> b!448276 (= lt!204132 (array!27714 (store (arr!13299 _keys!709) i!563 k0!794) (size!13651 _keys!709)))))

(declare-fun mapNonEmpty!19593 () Bool)

(declare-fun tp!37725 () Bool)

(assert (=> mapNonEmpty!19593 (= mapRes!19593 (and tp!37725 e!263029))))

(declare-fun mapValue!19593 () ValueCell!5643)

(declare-fun mapKey!19593 () (_ BitVec 32))

(declare-fun mapRest!19593 () (Array (_ BitVec 32) ValueCell!5643))

(assert (=> mapNonEmpty!19593 (= (arr!13300 _values!549) (store mapRest!19593 mapKey!19593 mapValue!19593))))

(assert (= (and start!40632 res!266510) b!448267))

(assert (= (and b!448267 res!266513) b!448263))

(assert (= (and b!448263 res!266503) b!448270))

(assert (= (and b!448270 res!266508) b!448271))

(assert (= (and b!448271 res!266509) b!448273))

(assert (= (and b!448273 res!266511) b!448268))

(assert (= (and b!448268 res!266506) b!448274))

(assert (= (and b!448274 res!266505) b!448265))

(assert (= (and b!448265 res!266504) b!448276))

(assert (= (and b!448276 res!266507) b!448269))

(assert (= (and b!448269 res!266514) b!448262))

(assert (= (and b!448262 res!266512) b!448272))

(assert (= (and b!448275 condMapEmpty!19593) mapIsEmpty!19593))

(assert (= (and b!448275 (not condMapEmpty!19593)) mapNonEmpty!19593))

(get-info :version)

(assert (= (and mapNonEmpty!19593 ((_ is ValueCellFull!5643) mapValue!19593)) b!448264))

(assert (= (and b!448275 ((_ is ValueCellFull!5643) mapDefault!19593)) b!448266))

(assert (= start!40632 b!448275))

(declare-fun m!432845 () Bool)

(assert (=> b!448270 m!432845))

(declare-fun m!432847 () Bool)

(assert (=> b!448276 m!432847))

(declare-fun m!432849 () Bool)

(assert (=> b!448276 m!432849))

(declare-fun m!432851 () Bool)

(assert (=> mapNonEmpty!19593 m!432851))

(declare-fun m!432853 () Bool)

(assert (=> start!40632 m!432853))

(declare-fun m!432855 () Bool)

(assert (=> start!40632 m!432855))

(declare-fun m!432857 () Bool)

(assert (=> b!448267 m!432857))

(declare-fun m!432859 () Bool)

(assert (=> b!448274 m!432859))

(declare-fun m!432861 () Bool)

(assert (=> b!448268 m!432861))

(declare-fun m!432863 () Bool)

(assert (=> b!448272 m!432863))

(declare-fun m!432865 () Bool)

(assert (=> b!448272 m!432865))

(declare-fun m!432867 () Bool)

(assert (=> b!448272 m!432867))

(declare-fun m!432869 () Bool)

(assert (=> b!448265 m!432869))

(declare-fun m!432871 () Bool)

(assert (=> b!448271 m!432871))

(declare-fun m!432873 () Bool)

(assert (=> b!448269 m!432873))

(check-sat (not b!448268) b_and!18661 (not b!448265) (not b!448272) (not b!448271) (not b!448276) (not mapNonEmpty!19593) (not b_next!10635) tp_is_empty!11973 (not start!40632) (not b!448267) (not b!448269) (not b!448270))
(check-sat b_and!18661 (not b_next!10635))
