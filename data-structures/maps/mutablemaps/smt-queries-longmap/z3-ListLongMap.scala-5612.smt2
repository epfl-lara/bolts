; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73486 () Bool)

(assert start!73486)

(declare-fun b_free!14373 () Bool)

(declare-fun b_next!14373 () Bool)

(assert (=> start!73486 (= b_free!14373 (not b_next!14373))))

(declare-fun tp!50624 () Bool)

(declare-fun b_and!23747 () Bool)

(assert (=> start!73486 (= tp!50624 b_and!23747)))

(declare-fun b!857693 () Bool)

(declare-fun res!582767 () Bool)

(declare-fun e!478054 () Bool)

(assert (=> b!857693 (=> (not res!582767) (not e!478054))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49180 0))(
  ( (array!49181 (arr!23617 (Array (_ BitVec 32) (_ BitVec 64))) (size!24058 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49180)

(declare-datatypes ((V!27059 0))(
  ( (V!27060 (val!8302 Int)) )
))
(declare-datatypes ((ValueCell!7815 0))(
  ( (ValueCellFull!7815 (v!10723 V!27059)) (EmptyCell!7815) )
))
(declare-datatypes ((array!49182 0))(
  ( (array!49183 (arr!23618 (Array (_ BitVec 32) ValueCell!7815)) (size!24059 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49182)

(assert (=> b!857693 (= res!582767 (and (= (size!24059 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24058 _keys!868) (size!24059 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!857694 () Bool)

(declare-fun e!478056 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!857694 (= e!478056 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24058 _keys!868))))))

(declare-fun b!857695 () Bool)

(declare-fun res!582763 () Bool)

(assert (=> b!857695 (=> (not res!582763) (not e!478054))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857695 (= res!582763 (validKeyInArray!0 k0!854))))

(declare-fun b!857696 () Bool)

(declare-fun res!582771 () Bool)

(assert (=> b!857696 (=> (not res!582771) (not e!478054))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!857696 (= res!582771 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24058 _keys!868))))))

(declare-fun b!857697 () Bool)

(declare-fun e!478055 () Bool)

(declare-fun tp_is_empty!16509 () Bool)

(assert (=> b!857697 (= e!478055 tp_is_empty!16509)))

(declare-fun b!857698 () Bool)

(declare-fun res!582770 () Bool)

(assert (=> b!857698 (=> (not res!582770) (not e!478054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49180 (_ BitVec 32)) Bool)

(assert (=> b!857698 (= res!582770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!857699 () Bool)

(declare-fun e!478052 () Bool)

(assert (=> b!857699 (= e!478052 (not e!478056))))

(declare-fun res!582768 () Bool)

(assert (=> b!857699 (=> res!582768 e!478056)))

(assert (=> b!857699 (= res!582768 (not (validKeyInArray!0 (select (arr!23617 _keys!868) from!1053))))))

(declare-fun v!557 () V!27059)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!386370 () array!49182)

(declare-fun minValue!654 () V!27059)

(declare-fun zeroValue!654 () V!27059)

(declare-datatypes ((tuple2!10940 0))(
  ( (tuple2!10941 (_1!5480 (_ BitVec 64)) (_2!5480 V!27059)) )
))
(declare-datatypes ((List!16812 0))(
  ( (Nil!16809) (Cons!16808 (h!17939 tuple2!10940) (t!23461 List!16812)) )
))
(declare-datatypes ((ListLongMap!9723 0))(
  ( (ListLongMap!9724 (toList!4877 List!16812)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2859 (array!49180 array!49182 (_ BitVec 32) (_ BitVec 32) V!27059 V!27059 (_ BitVec 32) Int) ListLongMap!9723)

(declare-fun +!2184 (ListLongMap!9723 tuple2!10940) ListLongMap!9723)

(assert (=> b!857699 (= (getCurrentListMapNoExtraKeys!2859 _keys!868 lt!386370 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2184 (getCurrentListMapNoExtraKeys!2859 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10941 k0!854 v!557)))))

(declare-datatypes ((Unit!29210 0))(
  ( (Unit!29211) )
))
(declare-fun lt!386368 () Unit!29210)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!444 (array!49180 array!49182 (_ BitVec 32) (_ BitVec 32) V!27059 V!27059 (_ BitVec 32) (_ BitVec 64) V!27059 (_ BitVec 32) Int) Unit!29210)

(assert (=> b!857699 (= lt!386368 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!444 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!26363 () Bool)

(declare-fun mapRes!26363 () Bool)

(declare-fun tp!50623 () Bool)

(assert (=> mapNonEmpty!26363 (= mapRes!26363 (and tp!50623 e!478055))))

(declare-fun mapRest!26363 () (Array (_ BitVec 32) ValueCell!7815))

(declare-fun mapKey!26363 () (_ BitVec 32))

(declare-fun mapValue!26363 () ValueCell!7815)

(assert (=> mapNonEmpty!26363 (= (arr!23618 _values!688) (store mapRest!26363 mapKey!26363 mapValue!26363))))

(declare-fun b!857700 () Bool)

(declare-fun res!582769 () Bool)

(assert (=> b!857700 (=> (not res!582769) (not e!478054))))

(assert (=> b!857700 (= res!582769 (and (= (select (arr!23617 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!857701 () Bool)

(declare-fun res!582766 () Bool)

(assert (=> b!857701 (=> (not res!582766) (not e!478054))))

(declare-datatypes ((List!16813 0))(
  ( (Nil!16810) (Cons!16809 (h!17940 (_ BitVec 64)) (t!23462 List!16813)) )
))
(declare-fun arrayNoDuplicates!0 (array!49180 (_ BitVec 32) List!16813) Bool)

(assert (=> b!857701 (= res!582766 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16810))))

(declare-fun b!857702 () Bool)

(declare-fun e!478050 () Bool)

(assert (=> b!857702 (= e!478050 tp_is_empty!16509)))

(declare-fun b!857703 () Bool)

(declare-fun res!582765 () Bool)

(assert (=> b!857703 (=> (not res!582765) (not e!478054))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857703 (= res!582765 (validMask!0 mask!1196))))

(declare-fun b!857704 () Bool)

(assert (=> b!857704 (= e!478054 e!478052)))

(declare-fun res!582762 () Bool)

(assert (=> b!857704 (=> (not res!582762) (not e!478052))))

(assert (=> b!857704 (= res!582762 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386367 () ListLongMap!9723)

(assert (=> b!857704 (= lt!386367 (getCurrentListMapNoExtraKeys!2859 _keys!868 lt!386370 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!857704 (= lt!386370 (array!49183 (store (arr!23618 _values!688) i!612 (ValueCellFull!7815 v!557)) (size!24059 _values!688)))))

(declare-fun lt!386369 () ListLongMap!9723)

(assert (=> b!857704 (= lt!386369 (getCurrentListMapNoExtraKeys!2859 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!857705 () Bool)

(declare-fun e!478051 () Bool)

(assert (=> b!857705 (= e!478051 (and e!478050 mapRes!26363))))

(declare-fun condMapEmpty!26363 () Bool)

(declare-fun mapDefault!26363 () ValueCell!7815)

(assert (=> b!857705 (= condMapEmpty!26363 (= (arr!23618 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7815)) mapDefault!26363)))))

(declare-fun mapIsEmpty!26363 () Bool)

(assert (=> mapIsEmpty!26363 mapRes!26363))

(declare-fun res!582764 () Bool)

(assert (=> start!73486 (=> (not res!582764) (not e!478054))))

(assert (=> start!73486 (= res!582764 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24058 _keys!868))))))

(assert (=> start!73486 e!478054))

(assert (=> start!73486 tp_is_empty!16509))

(assert (=> start!73486 true))

(assert (=> start!73486 tp!50624))

(declare-fun array_inv!18688 (array!49180) Bool)

(assert (=> start!73486 (array_inv!18688 _keys!868)))

(declare-fun array_inv!18689 (array!49182) Bool)

(assert (=> start!73486 (and (array_inv!18689 _values!688) e!478051)))

(assert (= (and start!73486 res!582764) b!857703))

(assert (= (and b!857703 res!582765) b!857693))

(assert (= (and b!857693 res!582767) b!857698))

(assert (= (and b!857698 res!582770) b!857701))

(assert (= (and b!857701 res!582766) b!857696))

(assert (= (and b!857696 res!582771) b!857695))

(assert (= (and b!857695 res!582763) b!857700))

(assert (= (and b!857700 res!582769) b!857704))

(assert (= (and b!857704 res!582762) b!857699))

(assert (= (and b!857699 (not res!582768)) b!857694))

(assert (= (and b!857705 condMapEmpty!26363) mapIsEmpty!26363))

(assert (= (and b!857705 (not condMapEmpty!26363)) mapNonEmpty!26363))

(get-info :version)

(assert (= (and mapNonEmpty!26363 ((_ is ValueCellFull!7815) mapValue!26363)) b!857697))

(assert (= (and b!857705 ((_ is ValueCellFull!7815) mapDefault!26363)) b!857702))

(assert (= start!73486 b!857705))

(declare-fun m!798509 () Bool)

(assert (=> b!857703 m!798509))

(declare-fun m!798511 () Bool)

(assert (=> b!857695 m!798511))

(declare-fun m!798513 () Bool)

(assert (=> b!857698 m!798513))

(declare-fun m!798515 () Bool)

(assert (=> b!857704 m!798515))

(declare-fun m!798517 () Bool)

(assert (=> b!857704 m!798517))

(declare-fun m!798519 () Bool)

(assert (=> b!857704 m!798519))

(declare-fun m!798521 () Bool)

(assert (=> start!73486 m!798521))

(declare-fun m!798523 () Bool)

(assert (=> start!73486 m!798523))

(declare-fun m!798525 () Bool)

(assert (=> b!857699 m!798525))

(declare-fun m!798527 () Bool)

(assert (=> b!857699 m!798527))

(assert (=> b!857699 m!798525))

(declare-fun m!798529 () Bool)

(assert (=> b!857699 m!798529))

(declare-fun m!798531 () Bool)

(assert (=> b!857699 m!798531))

(assert (=> b!857699 m!798529))

(declare-fun m!798533 () Bool)

(assert (=> b!857699 m!798533))

(declare-fun m!798535 () Bool)

(assert (=> b!857699 m!798535))

(declare-fun m!798537 () Bool)

(assert (=> b!857700 m!798537))

(declare-fun m!798539 () Bool)

(assert (=> b!857701 m!798539))

(declare-fun m!798541 () Bool)

(assert (=> mapNonEmpty!26363 m!798541))

(check-sat (not b!857704) (not b!857703) (not mapNonEmpty!26363) (not b!857695) (not start!73486) (not b!857701) (not b!857698) tp_is_empty!16509 (not b_next!14373) b_and!23747 (not b!857699))
(check-sat b_and!23747 (not b_next!14373))
