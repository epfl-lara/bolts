; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74176 () Bool)

(assert start!74176)

(declare-fun mapIsEmpty!27383 () Bool)

(declare-fun mapRes!27383 () Bool)

(assert (=> mapIsEmpty!27383 mapRes!27383))

(declare-fun b!872107 () Bool)

(declare-fun e!485654 () Bool)

(declare-fun tp_is_empty!17187 () Bool)

(assert (=> b!872107 (= e!485654 tp_is_empty!17187)))

(declare-fun b!872108 () Bool)

(declare-fun e!485657 () Bool)

(assert (=> b!872108 (= e!485657 tp_is_empty!17187)))

(declare-fun b!872109 () Bool)

(declare-fun res!592865 () Bool)

(declare-fun e!485655 () Bool)

(assert (=> b!872109 (=> (not res!592865) (not e!485655))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872109 (= res!592865 (validMask!0 mask!1196))))

(declare-fun b!872110 () Bool)

(declare-fun e!485656 () Bool)

(assert (=> b!872110 (= e!485656 (and e!485654 mapRes!27383))))

(declare-fun condMapEmpty!27383 () Bool)

(declare-datatypes ((V!27963 0))(
  ( (V!27964 (val!8641 Int)) )
))
(declare-datatypes ((ValueCell!8154 0))(
  ( (ValueCellFull!8154 (v!11062 V!27963)) (EmptyCell!8154) )
))
(declare-datatypes ((array!50498 0))(
  ( (array!50499 (arr!24275 (Array (_ BitVec 32) ValueCell!8154)) (size!24716 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50498)

(declare-fun mapDefault!27383 () ValueCell!8154)

(assert (=> b!872110 (= condMapEmpty!27383 (= (arr!24275 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8154)) mapDefault!27383)))))

(declare-fun b!872111 () Bool)

(declare-fun res!592866 () Bool)

(assert (=> b!872111 (=> (not res!592866) (not e!485655))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!50500 0))(
  ( (array!50501 (arr!24276 (Array (_ BitVec 32) (_ BitVec 64))) (size!24717 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50500)

(assert (=> b!872111 (= res!592866 (and (= (size!24716 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24717 _keys!868) (size!24716 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872112 () Bool)

(assert (=> b!872112 (= e!485655 false)))

(declare-fun lt!395541 () Bool)

(declare-datatypes ((List!17319 0))(
  ( (Nil!17316) (Cons!17315 (h!18446 (_ BitVec 64)) (t!24364 List!17319)) )
))
(declare-fun arrayNoDuplicates!0 (array!50500 (_ BitVec 32) List!17319) Bool)

(assert (=> b!872112 (= lt!395541 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17316))))

(declare-fun mapNonEmpty!27383 () Bool)

(declare-fun tp!52583 () Bool)

(assert (=> mapNonEmpty!27383 (= mapRes!27383 (and tp!52583 e!485657))))

(declare-fun mapKey!27383 () (_ BitVec 32))

(declare-fun mapRest!27383 () (Array (_ BitVec 32) ValueCell!8154))

(declare-fun mapValue!27383 () ValueCell!8154)

(assert (=> mapNonEmpty!27383 (= (arr!24275 _values!688) (store mapRest!27383 mapKey!27383 mapValue!27383))))

(declare-fun b!872113 () Bool)

(declare-fun res!592864 () Bool)

(assert (=> b!872113 (=> (not res!592864) (not e!485655))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50500 (_ BitVec 32)) Bool)

(assert (=> b!872113 (= res!592864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!592863 () Bool)

(assert (=> start!74176 (=> (not res!592863) (not e!485655))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74176 (= res!592863 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24717 _keys!868))))))

(assert (=> start!74176 e!485655))

(assert (=> start!74176 true))

(declare-fun array_inv!19138 (array!50500) Bool)

(assert (=> start!74176 (array_inv!19138 _keys!868)))

(declare-fun array_inv!19139 (array!50498) Bool)

(assert (=> start!74176 (and (array_inv!19139 _values!688) e!485656)))

(assert (= (and start!74176 res!592863) b!872109))

(assert (= (and b!872109 res!592865) b!872111))

(assert (= (and b!872111 res!592866) b!872113))

(assert (= (and b!872113 res!592864) b!872112))

(assert (= (and b!872110 condMapEmpty!27383) mapIsEmpty!27383))

(assert (= (and b!872110 (not condMapEmpty!27383)) mapNonEmpty!27383))

(get-info :version)

(assert (= (and mapNonEmpty!27383 ((_ is ValueCellFull!8154) mapValue!27383)) b!872108))

(assert (= (and b!872110 ((_ is ValueCellFull!8154) mapDefault!27383)) b!872107))

(assert (= start!74176 b!872110))

(declare-fun m!813109 () Bool)

(assert (=> start!74176 m!813109))

(declare-fun m!813111 () Bool)

(assert (=> start!74176 m!813111))

(declare-fun m!813113 () Bool)

(assert (=> mapNonEmpty!27383 m!813113))

(declare-fun m!813115 () Bool)

(assert (=> b!872109 m!813115))

(declare-fun m!813117 () Bool)

(assert (=> b!872113 m!813117))

(declare-fun m!813119 () Bool)

(assert (=> b!872112 m!813119))

(check-sat (not mapNonEmpty!27383) tp_is_empty!17187 (not b!872113) (not b!872109) (not b!872112) (not start!74176))
(check-sat)
