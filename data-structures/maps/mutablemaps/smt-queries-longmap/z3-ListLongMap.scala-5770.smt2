; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74552 () Bool)

(assert start!74552)

(declare-fun b_free!15213 () Bool)

(declare-fun b_next!15213 () Bool)

(assert (=> start!74552 (= b_free!15213 (not b_next!15213))))

(declare-fun tp!53321 () Bool)

(declare-fun b_and!25107 () Bool)

(assert (=> start!74552 (= tp!53321 b_and!25107)))

(declare-fun b!877700 () Bool)

(declare-fun e!488583 () Bool)

(declare-fun e!488580 () Bool)

(declare-fun mapRes!27801 () Bool)

(assert (=> b!877700 (= e!488583 (and e!488580 mapRes!27801))))

(declare-fun condMapEmpty!27801 () Bool)

(declare-datatypes ((V!28323 0))(
  ( (V!28324 (val!8776 Int)) )
))
(declare-datatypes ((ValueCell!8289 0))(
  ( (ValueCellFull!8289 (v!11212 V!28323)) (EmptyCell!8289) )
))
(declare-datatypes ((array!51024 0))(
  ( (array!51025 (arr!24534 (Array (_ BitVec 32) ValueCell!8289)) (size!24975 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51024)

(declare-fun mapDefault!27801 () ValueCell!8289)

(assert (=> b!877700 (= condMapEmpty!27801 (= (arr!24534 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8289)) mapDefault!27801)))))

(declare-fun b!877701 () Bool)

(declare-fun e!488581 () Bool)

(assert (=> b!877701 (= e!488581 false)))

(declare-fun v!557 () V!28323)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51026 0))(
  ( (array!51027 (arr!24535 (Array (_ BitVec 32) (_ BitVec 64))) (size!24976 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51026)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28323)

(declare-fun zeroValue!654 () V!28323)

(declare-datatypes ((tuple2!11622 0))(
  ( (tuple2!11623 (_1!5821 (_ BitVec 64)) (_2!5821 V!28323)) )
))
(declare-datatypes ((List!17503 0))(
  ( (Nil!17500) (Cons!17499 (h!18630 tuple2!11622) (t!24600 List!17503)) )
))
(declare-datatypes ((ListLongMap!10405 0))(
  ( (ListLongMap!10406 (toList!5218 List!17503)) )
))
(declare-fun lt!397094 () ListLongMap!10405)

(declare-fun getCurrentListMapNoExtraKeys!3180 (array!51026 array!51024 (_ BitVec 32) (_ BitVec 32) V!28323 V!28323 (_ BitVec 32) Int) ListLongMap!10405)

(assert (=> b!877701 (= lt!397094 (getCurrentListMapNoExtraKeys!3180 _keys!868 (array!51025 (store (arr!24534 _values!688) i!612 (ValueCellFull!8289 v!557)) (size!24975 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!397093 () ListLongMap!10405)

(assert (=> b!877701 (= lt!397093 (getCurrentListMapNoExtraKeys!3180 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!877702 () Bool)

(declare-fun res!596373 () Bool)

(assert (=> b!877702 (=> (not res!596373) (not e!488581))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!877702 (= res!596373 (and (= (select (arr!24535 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!877703 () Bool)

(declare-fun tp_is_empty!17457 () Bool)

(assert (=> b!877703 (= e!488580 tp_is_empty!17457)))

(declare-fun b!877704 () Bool)

(declare-fun res!596371 () Bool)

(assert (=> b!877704 (=> (not res!596371) (not e!488581))))

(declare-datatypes ((List!17504 0))(
  ( (Nil!17501) (Cons!17500 (h!18631 (_ BitVec 64)) (t!24601 List!17504)) )
))
(declare-fun arrayNoDuplicates!0 (array!51026 (_ BitVec 32) List!17504) Bool)

(assert (=> b!877704 (= res!596371 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17501))))

(declare-fun b!877705 () Bool)

(declare-fun res!596368 () Bool)

(assert (=> b!877705 (=> (not res!596368) (not e!488581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877705 (= res!596368 (validMask!0 mask!1196))))

(declare-fun b!877706 () Bool)

(declare-fun res!596369 () Bool)

(assert (=> b!877706 (=> (not res!596369) (not e!488581))))

(assert (=> b!877706 (= res!596369 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24976 _keys!868))))))

(declare-fun mapNonEmpty!27801 () Bool)

(declare-fun tp!53322 () Bool)

(declare-fun e!488582 () Bool)

(assert (=> mapNonEmpty!27801 (= mapRes!27801 (and tp!53322 e!488582))))

(declare-fun mapKey!27801 () (_ BitVec 32))

(declare-fun mapRest!27801 () (Array (_ BitVec 32) ValueCell!8289))

(declare-fun mapValue!27801 () ValueCell!8289)

(assert (=> mapNonEmpty!27801 (= (arr!24534 _values!688) (store mapRest!27801 mapKey!27801 mapValue!27801))))

(declare-fun res!596370 () Bool)

(assert (=> start!74552 (=> (not res!596370) (not e!488581))))

(assert (=> start!74552 (= res!596370 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24976 _keys!868))))))

(assert (=> start!74552 e!488581))

(assert (=> start!74552 tp_is_empty!17457))

(assert (=> start!74552 true))

(assert (=> start!74552 tp!53321))

(declare-fun array_inv!19324 (array!51026) Bool)

(assert (=> start!74552 (array_inv!19324 _keys!868)))

(declare-fun array_inv!19325 (array!51024) Bool)

(assert (=> start!74552 (and (array_inv!19325 _values!688) e!488583)))

(declare-fun b!877707 () Bool)

(declare-fun res!596367 () Bool)

(assert (=> b!877707 (=> (not res!596367) (not e!488581))))

(assert (=> b!877707 (= res!596367 (and (= (size!24975 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24976 _keys!868) (size!24975 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!27801 () Bool)

(assert (=> mapIsEmpty!27801 mapRes!27801))

(declare-fun b!877708 () Bool)

(declare-fun res!596372 () Bool)

(assert (=> b!877708 (=> (not res!596372) (not e!488581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!877708 (= res!596372 (validKeyInArray!0 k0!854))))

(declare-fun b!877709 () Bool)

(assert (=> b!877709 (= e!488582 tp_is_empty!17457)))

(declare-fun b!877710 () Bool)

(declare-fun res!596366 () Bool)

(assert (=> b!877710 (=> (not res!596366) (not e!488581))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51026 (_ BitVec 32)) Bool)

(assert (=> b!877710 (= res!596366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!74552 res!596370) b!877705))

(assert (= (and b!877705 res!596368) b!877707))

(assert (= (and b!877707 res!596367) b!877710))

(assert (= (and b!877710 res!596366) b!877704))

(assert (= (and b!877704 res!596371) b!877706))

(assert (= (and b!877706 res!596369) b!877708))

(assert (= (and b!877708 res!596372) b!877702))

(assert (= (and b!877702 res!596373) b!877701))

(assert (= (and b!877700 condMapEmpty!27801) mapIsEmpty!27801))

(assert (= (and b!877700 (not condMapEmpty!27801)) mapNonEmpty!27801))

(get-info :version)

(assert (= (and mapNonEmpty!27801 ((_ is ValueCellFull!8289) mapValue!27801)) b!877709))

(assert (= (and b!877700 ((_ is ValueCellFull!8289) mapDefault!27801)) b!877703))

(assert (= start!74552 b!877700))

(declare-fun m!817873 () Bool)

(assert (=> b!877701 m!817873))

(declare-fun m!817875 () Bool)

(assert (=> b!877701 m!817875))

(declare-fun m!817877 () Bool)

(assert (=> b!877701 m!817877))

(declare-fun m!817879 () Bool)

(assert (=> b!877710 m!817879))

(declare-fun m!817881 () Bool)

(assert (=> b!877708 m!817881))

(declare-fun m!817883 () Bool)

(assert (=> b!877704 m!817883))

(declare-fun m!817885 () Bool)

(assert (=> b!877702 m!817885))

(declare-fun m!817887 () Bool)

(assert (=> b!877705 m!817887))

(declare-fun m!817889 () Bool)

(assert (=> mapNonEmpty!27801 m!817889))

(declare-fun m!817891 () Bool)

(assert (=> start!74552 m!817891))

(declare-fun m!817893 () Bool)

(assert (=> start!74552 m!817893))

(check-sat (not b!877705) (not b_next!15213) (not b!877710) b_and!25107 (not start!74552) (not b!877701) (not mapNonEmpty!27801) (not b!877704) tp_is_empty!17457 (not b!877708))
(check-sat b_and!25107 (not b_next!15213))
