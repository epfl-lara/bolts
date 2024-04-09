; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73354 () Bool)

(assert start!73354)

(declare-fun b_free!14241 () Bool)

(declare-fun b_next!14241 () Bool)

(assert (=> start!73354 (= b_free!14241 (not b_next!14241))))

(declare-fun tp!50228 () Bool)

(declare-fun b_and!23615 () Bool)

(assert (=> start!73354 (= tp!50228 b_and!23615)))

(declare-fun b!855352 () Bool)

(declare-fun e!476898 () Bool)

(declare-fun tp_is_empty!16377 () Bool)

(assert (=> b!855352 (= e!476898 tp_is_empty!16377)))

(declare-fun b!855353 () Bool)

(declare-fun e!476901 () Bool)

(assert (=> b!855353 (= e!476901 tp_is_empty!16377)))

(declare-fun b!855354 () Bool)

(declare-fun res!581022 () Bool)

(declare-fun e!476900 () Bool)

(assert (=> b!855354 (=> (not res!581022) (not e!476900))))

(declare-datatypes ((array!48930 0))(
  ( (array!48931 (arr!23492 (Array (_ BitVec 32) (_ BitVec 64))) (size!23933 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48930)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48930 (_ BitVec 32)) Bool)

(assert (=> b!855354 (= res!581022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!581017 () Bool)

(assert (=> start!73354 (=> (not res!581017) (not e!476900))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73354 (= res!581017 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23933 _keys!868))))))

(assert (=> start!73354 e!476900))

(assert (=> start!73354 tp_is_empty!16377))

(assert (=> start!73354 true))

(assert (=> start!73354 tp!50228))

(declare-fun array_inv!18598 (array!48930) Bool)

(assert (=> start!73354 (array_inv!18598 _keys!868)))

(declare-datatypes ((V!26883 0))(
  ( (V!26884 (val!8236 Int)) )
))
(declare-datatypes ((ValueCell!7749 0))(
  ( (ValueCellFull!7749 (v!10657 V!26883)) (EmptyCell!7749) )
))
(declare-datatypes ((array!48932 0))(
  ( (array!48933 (arr!23493 (Array (_ BitVec 32) ValueCell!7749)) (size!23934 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48932)

(declare-fun e!476897 () Bool)

(declare-fun array_inv!18599 (array!48932) Bool)

(assert (=> start!73354 (and (array_inv!18599 _values!688) e!476897)))

(declare-fun b!855355 () Bool)

(declare-fun res!581020 () Bool)

(assert (=> b!855355 (=> (not res!581020) (not e!476900))))

(declare-datatypes ((List!16717 0))(
  ( (Nil!16714) (Cons!16713 (h!17844 (_ BitVec 64)) (t!23366 List!16717)) )
))
(declare-fun arrayNoDuplicates!0 (array!48930 (_ BitVec 32) List!16717) Bool)

(assert (=> b!855355 (= res!581020 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16714))))

(declare-fun b!855356 () Bool)

(declare-fun res!581015 () Bool)

(assert (=> b!855356 (=> (not res!581015) (not e!476900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855356 (= res!581015 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26165 () Bool)

(declare-fun mapRes!26165 () Bool)

(declare-fun tp!50227 () Bool)

(assert (=> mapNonEmpty!26165 (= mapRes!26165 (and tp!50227 e!476898))))

(declare-fun mapValue!26165 () ValueCell!7749)

(declare-fun mapKey!26165 () (_ BitVec 32))

(declare-fun mapRest!26165 () (Array (_ BitVec 32) ValueCell!7749))

(assert (=> mapNonEmpty!26165 (= (arr!23493 _values!688) (store mapRest!26165 mapKey!26165 mapValue!26165))))

(declare-fun b!855357 () Bool)

(assert (=> b!855357 (= e!476900 false)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26883)

(declare-fun zeroValue!654 () V!26883)

(declare-datatypes ((tuple2!10842 0))(
  ( (tuple2!10843 (_1!5431 (_ BitVec 64)) (_2!5431 V!26883)) )
))
(declare-datatypes ((List!16718 0))(
  ( (Nil!16715) (Cons!16714 (h!17845 tuple2!10842) (t!23367 List!16718)) )
))
(declare-datatypes ((ListLongMap!9625 0))(
  ( (ListLongMap!9626 (toList!4828 List!16718)) )
))
(declare-fun lt!385655 () ListLongMap!9625)

(declare-fun v!557 () V!26883)

(declare-fun getCurrentListMapNoExtraKeys!2810 (array!48930 array!48932 (_ BitVec 32) (_ BitVec 32) V!26883 V!26883 (_ BitVec 32) Int) ListLongMap!9625)

(assert (=> b!855357 (= lt!385655 (getCurrentListMapNoExtraKeys!2810 _keys!868 (array!48933 (store (arr!23493 _values!688) i!612 (ValueCellFull!7749 v!557)) (size!23934 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385656 () ListLongMap!9625)

(assert (=> b!855357 (= lt!385656 (getCurrentListMapNoExtraKeys!2810 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855358 () Bool)

(declare-fun res!581019 () Bool)

(assert (=> b!855358 (=> (not res!581019) (not e!476900))))

(assert (=> b!855358 (= res!581019 (and (= (size!23934 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23933 _keys!868) (size!23934 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!855359 () Bool)

(declare-fun res!581016 () Bool)

(assert (=> b!855359 (=> (not res!581016) (not e!476900))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855359 (= res!581016 (validKeyInArray!0 k0!854))))

(declare-fun b!855360 () Bool)

(declare-fun res!581018 () Bool)

(assert (=> b!855360 (=> (not res!581018) (not e!476900))))

(assert (=> b!855360 (= res!581018 (and (= (select (arr!23492 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!26165 () Bool)

(assert (=> mapIsEmpty!26165 mapRes!26165))

(declare-fun b!855361 () Bool)

(declare-fun res!581021 () Bool)

(assert (=> b!855361 (=> (not res!581021) (not e!476900))))

(assert (=> b!855361 (= res!581021 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23933 _keys!868))))))

(declare-fun b!855362 () Bool)

(assert (=> b!855362 (= e!476897 (and e!476901 mapRes!26165))))

(declare-fun condMapEmpty!26165 () Bool)

(declare-fun mapDefault!26165 () ValueCell!7749)

(assert (=> b!855362 (= condMapEmpty!26165 (= (arr!23493 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7749)) mapDefault!26165)))))

(assert (= (and start!73354 res!581017) b!855356))

(assert (= (and b!855356 res!581015) b!855358))

(assert (= (and b!855358 res!581019) b!855354))

(assert (= (and b!855354 res!581022) b!855355))

(assert (= (and b!855355 res!581020) b!855361))

(assert (= (and b!855361 res!581021) b!855359))

(assert (= (and b!855359 res!581016) b!855360))

(assert (= (and b!855360 res!581018) b!855357))

(assert (= (and b!855362 condMapEmpty!26165) mapIsEmpty!26165))

(assert (= (and b!855362 (not condMapEmpty!26165)) mapNonEmpty!26165))

(get-info :version)

(assert (= (and mapNonEmpty!26165 ((_ is ValueCellFull!7749) mapValue!26165)) b!855352))

(assert (= (and b!855362 ((_ is ValueCellFull!7749) mapDefault!26165)) b!855353))

(assert (= start!73354 b!855362))

(declare-fun m!796637 () Bool)

(assert (=> b!855356 m!796637))

(declare-fun m!796639 () Bool)

(assert (=> b!855355 m!796639))

(declare-fun m!796641 () Bool)

(assert (=> b!855354 m!796641))

(declare-fun m!796643 () Bool)

(assert (=> start!73354 m!796643))

(declare-fun m!796645 () Bool)

(assert (=> start!73354 m!796645))

(declare-fun m!796647 () Bool)

(assert (=> b!855357 m!796647))

(declare-fun m!796649 () Bool)

(assert (=> b!855357 m!796649))

(declare-fun m!796651 () Bool)

(assert (=> b!855357 m!796651))

(declare-fun m!796653 () Bool)

(assert (=> b!855359 m!796653))

(declare-fun m!796655 () Bool)

(assert (=> b!855360 m!796655))

(declare-fun m!796657 () Bool)

(assert (=> mapNonEmpty!26165 m!796657))

(check-sat (not b!855354) (not b!855355) (not b_next!14241) (not start!73354) tp_is_empty!16377 (not b!855359) (not b!855356) (not mapNonEmpty!26165) b_and!23615 (not b!855357))
(check-sat b_and!23615 (not b_next!14241))
