; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74206 () Bool)

(assert start!74206)

(declare-fun b!872422 () Bool)

(declare-fun res!593044 () Bool)

(declare-fun e!485879 () Bool)

(assert (=> b!872422 (=> (not res!593044) (not e!485879))))

(declare-datatypes ((array!50556 0))(
  ( (array!50557 (arr!24304 (Array (_ BitVec 32) (_ BitVec 64))) (size!24745 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50556)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50556 (_ BitVec 32)) Bool)

(assert (=> b!872422 (= res!593044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!593043 () Bool)

(assert (=> start!74206 (=> (not res!593043) (not e!485879))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74206 (= res!593043 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24745 _keys!868))))))

(assert (=> start!74206 e!485879))

(assert (=> start!74206 true))

(declare-fun array_inv!19160 (array!50556) Bool)

(assert (=> start!74206 (array_inv!19160 _keys!868)))

(declare-datatypes ((V!28003 0))(
  ( (V!28004 (val!8656 Int)) )
))
(declare-datatypes ((ValueCell!8169 0))(
  ( (ValueCellFull!8169 (v!11077 V!28003)) (EmptyCell!8169) )
))
(declare-datatypes ((array!50558 0))(
  ( (array!50559 (arr!24305 (Array (_ BitVec 32) ValueCell!8169)) (size!24746 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50558)

(declare-fun e!485882 () Bool)

(declare-fun array_inv!19161 (array!50558) Bool)

(assert (=> start!74206 (and (array_inv!19161 _values!688) e!485882)))

(declare-fun b!872423 () Bool)

(declare-fun res!593046 () Bool)

(assert (=> b!872423 (=> (not res!593046) (not e!485879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872423 (= res!593046 (validMask!0 mask!1196))))

(declare-fun b!872424 () Bool)

(assert (=> b!872424 (= e!485879 false)))

(declare-fun lt!395586 () Bool)

(declare-datatypes ((List!17331 0))(
  ( (Nil!17328) (Cons!17327 (h!18458 (_ BitVec 64)) (t!24376 List!17331)) )
))
(declare-fun arrayNoDuplicates!0 (array!50556 (_ BitVec 32) List!17331) Bool)

(assert (=> b!872424 (= lt!395586 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17328))))

(declare-fun b!872425 () Bool)

(declare-fun e!485880 () Bool)

(declare-fun tp_is_empty!17217 () Bool)

(assert (=> b!872425 (= e!485880 tp_is_empty!17217)))

(declare-fun b!872426 () Bool)

(declare-fun e!485881 () Bool)

(declare-fun mapRes!27428 () Bool)

(assert (=> b!872426 (= e!485882 (and e!485881 mapRes!27428))))

(declare-fun condMapEmpty!27428 () Bool)

(declare-fun mapDefault!27428 () ValueCell!8169)

(assert (=> b!872426 (= condMapEmpty!27428 (= (arr!24305 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8169)) mapDefault!27428)))))

(declare-fun b!872427 () Bool)

(declare-fun res!593045 () Bool)

(assert (=> b!872427 (=> (not res!593045) (not e!485879))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!872427 (= res!593045 (and (= (size!24746 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24745 _keys!868) (size!24746 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872428 () Bool)

(assert (=> b!872428 (= e!485881 tp_is_empty!17217)))

(declare-fun mapNonEmpty!27428 () Bool)

(declare-fun tp!52628 () Bool)

(assert (=> mapNonEmpty!27428 (= mapRes!27428 (and tp!52628 e!485880))))

(declare-fun mapRest!27428 () (Array (_ BitVec 32) ValueCell!8169))

(declare-fun mapKey!27428 () (_ BitVec 32))

(declare-fun mapValue!27428 () ValueCell!8169)

(assert (=> mapNonEmpty!27428 (= (arr!24305 _values!688) (store mapRest!27428 mapKey!27428 mapValue!27428))))

(declare-fun mapIsEmpty!27428 () Bool)

(assert (=> mapIsEmpty!27428 mapRes!27428))

(assert (= (and start!74206 res!593043) b!872423))

(assert (= (and b!872423 res!593046) b!872427))

(assert (= (and b!872427 res!593045) b!872422))

(assert (= (and b!872422 res!593044) b!872424))

(assert (= (and b!872426 condMapEmpty!27428) mapIsEmpty!27428))

(assert (= (and b!872426 (not condMapEmpty!27428)) mapNonEmpty!27428))

(get-info :version)

(assert (= (and mapNonEmpty!27428 ((_ is ValueCellFull!8169) mapValue!27428)) b!872425))

(assert (= (and b!872426 ((_ is ValueCellFull!8169) mapDefault!27428)) b!872428))

(assert (= start!74206 b!872426))

(declare-fun m!813289 () Bool)

(assert (=> mapNonEmpty!27428 m!813289))

(declare-fun m!813291 () Bool)

(assert (=> b!872422 m!813291))

(declare-fun m!813293 () Bool)

(assert (=> start!74206 m!813293))

(declare-fun m!813295 () Bool)

(assert (=> start!74206 m!813295))

(declare-fun m!813297 () Bool)

(assert (=> b!872423 m!813297))

(declare-fun m!813299 () Bool)

(assert (=> b!872424 m!813299))

(check-sat (not b!872423) (not b!872424) (not start!74206) (not b!872422) (not mapNonEmpty!27428) tp_is_empty!17217)
(check-sat)
