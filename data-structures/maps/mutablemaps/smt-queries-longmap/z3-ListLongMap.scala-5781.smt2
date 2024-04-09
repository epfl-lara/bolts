; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74618 () Bool)

(assert start!74618)

(declare-fun b_free!15279 () Bool)

(declare-fun b_next!15279 () Bool)

(assert (=> start!74618 (= b_free!15279 (not b_next!15279))))

(declare-fun tp!53520 () Bool)

(declare-fun b_and!25173 () Bool)

(assert (=> start!74618 (= tp!53520 b_and!25173)))

(declare-fun b!878826 () Bool)

(declare-fun e!489112 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!51152 0))(
  ( (array!51153 (arr!24598 (Array (_ BitVec 32) (_ BitVec 64))) (size!25039 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51152)

(assert (=> b!878826 (= e!489112 (bvslt from!1053 (size!25039 _keys!868)))))

(declare-fun b!878827 () Bool)

(declare-fun res!597199 () Bool)

(declare-fun e!489116 () Bool)

(assert (=> b!878827 (=> (not res!597199) (not e!489116))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!28411 0))(
  ( (V!28412 (val!8809 Int)) )
))
(declare-datatypes ((ValueCell!8322 0))(
  ( (ValueCellFull!8322 (v!11245 V!28411)) (EmptyCell!8322) )
))
(declare-datatypes ((array!51154 0))(
  ( (array!51155 (arr!24599 (Array (_ BitVec 32) ValueCell!8322)) (size!25040 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51154)

(assert (=> b!878827 (= res!597199 (and (= (size!25040 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25039 _keys!868) (size!25040 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!27900 () Bool)

(declare-fun mapRes!27900 () Bool)

(assert (=> mapIsEmpty!27900 mapRes!27900))

(declare-fun b!878828 () Bool)

(declare-fun res!597200 () Bool)

(assert (=> b!878828 (=> (not res!597200) (not e!489116))))

(declare-datatypes ((List!17547 0))(
  ( (Nil!17544) (Cons!17543 (h!18674 (_ BitVec 64)) (t!24644 List!17547)) )
))
(declare-fun arrayNoDuplicates!0 (array!51152 (_ BitVec 32) List!17547) Bool)

(assert (=> b!878828 (= res!597200 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17544))))

(declare-fun b!878829 () Bool)

(declare-fun e!489114 () Bool)

(declare-fun tp_is_empty!17523 () Bool)

(assert (=> b!878829 (= e!489114 tp_is_empty!17523)))

(declare-fun b!878830 () Bool)

(declare-fun res!597196 () Bool)

(assert (=> b!878830 (=> (not res!597196) (not e!489116))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878830 (= res!597196 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!27900 () Bool)

(declare-fun tp!53519 () Bool)

(assert (=> mapNonEmpty!27900 (= mapRes!27900 (and tp!53519 e!489114))))

(declare-fun mapKey!27900 () (_ BitVec 32))

(declare-fun mapRest!27900 () (Array (_ BitVec 32) ValueCell!8322))

(declare-fun mapValue!27900 () ValueCell!8322)

(assert (=> mapNonEmpty!27900 (= (arr!24599 _values!688) (store mapRest!27900 mapKey!27900 mapValue!27900))))

(declare-fun b!878832 () Bool)

(declare-fun res!597203 () Bool)

(assert (=> b!878832 (=> (not res!597203) (not e!489116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51152 (_ BitVec 32)) Bool)

(assert (=> b!878832 (= res!597203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878833 () Bool)

(declare-fun res!597202 () Bool)

(assert (=> b!878833 (=> (not res!597202) (not e!489116))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!878833 (= res!597202 (and (= (select (arr!24598 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!878834 () Bool)

(declare-fun e!489117 () Bool)

(assert (=> b!878834 (= e!489117 (not e!489112))))

(declare-fun res!597204 () Bool)

(assert (=> b!878834 (=> res!597204 e!489112)))

(assert (=> b!878834 (= res!597204 (not (validKeyInArray!0 (select (arr!24598 _keys!868) from!1053))))))

(declare-fun v!557 () V!28411)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!397337 () array!51154)

(declare-fun minValue!654 () V!28411)

(declare-fun zeroValue!654 () V!28411)

(declare-datatypes ((tuple2!11670 0))(
  ( (tuple2!11671 (_1!5845 (_ BitVec 64)) (_2!5845 V!28411)) )
))
(declare-datatypes ((List!17548 0))(
  ( (Nil!17545) (Cons!17544 (h!18675 tuple2!11670) (t!24645 List!17548)) )
))
(declare-datatypes ((ListLongMap!10453 0))(
  ( (ListLongMap!10454 (toList!5242 List!17548)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3204 (array!51152 array!51154 (_ BitVec 32) (_ BitVec 32) V!28411 V!28411 (_ BitVec 32) Int) ListLongMap!10453)

(declare-fun +!2448 (ListLongMap!10453 tuple2!11670) ListLongMap!10453)

(assert (=> b!878834 (= (getCurrentListMapNoExtraKeys!3204 _keys!868 lt!397337 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2448 (getCurrentListMapNoExtraKeys!3204 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11671 k0!854 v!557)))))

(declare-datatypes ((Unit!29976 0))(
  ( (Unit!29977) )
))
(declare-fun lt!397338 () Unit!29976)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!680 (array!51152 array!51154 (_ BitVec 32) (_ BitVec 32) V!28411 V!28411 (_ BitVec 32) (_ BitVec 64) V!28411 (_ BitVec 32) Int) Unit!29976)

(assert (=> b!878834 (= lt!397338 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!680 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!878831 () Bool)

(declare-fun res!597201 () Bool)

(assert (=> b!878831 (=> (not res!597201) (not e!489116))))

(assert (=> b!878831 (= res!597201 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25039 _keys!868))))))

(declare-fun res!597198 () Bool)

(assert (=> start!74618 (=> (not res!597198) (not e!489116))))

(assert (=> start!74618 (= res!597198 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25039 _keys!868))))))

(assert (=> start!74618 e!489116))

(assert (=> start!74618 tp_is_empty!17523))

(assert (=> start!74618 true))

(assert (=> start!74618 tp!53520))

(declare-fun array_inv!19364 (array!51152) Bool)

(assert (=> start!74618 (array_inv!19364 _keys!868)))

(declare-fun e!489111 () Bool)

(declare-fun array_inv!19365 (array!51154) Bool)

(assert (=> start!74618 (and (array_inv!19365 _values!688) e!489111)))

(declare-fun b!878835 () Bool)

(declare-fun e!489115 () Bool)

(assert (=> b!878835 (= e!489115 tp_is_empty!17523)))

(declare-fun b!878836 () Bool)

(assert (=> b!878836 (= e!489116 e!489117)))

(declare-fun res!597197 () Bool)

(assert (=> b!878836 (=> (not res!597197) (not e!489117))))

(assert (=> b!878836 (= res!597197 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397340 () ListLongMap!10453)

(assert (=> b!878836 (= lt!397340 (getCurrentListMapNoExtraKeys!3204 _keys!868 lt!397337 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!878836 (= lt!397337 (array!51155 (store (arr!24599 _values!688) i!612 (ValueCellFull!8322 v!557)) (size!25040 _values!688)))))

(declare-fun lt!397339 () ListLongMap!10453)

(assert (=> b!878836 (= lt!397339 (getCurrentListMapNoExtraKeys!3204 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878837 () Bool)

(declare-fun res!597195 () Bool)

(assert (=> b!878837 (=> (not res!597195) (not e!489116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878837 (= res!597195 (validMask!0 mask!1196))))

(declare-fun b!878838 () Bool)

(assert (=> b!878838 (= e!489111 (and e!489115 mapRes!27900))))

(declare-fun condMapEmpty!27900 () Bool)

(declare-fun mapDefault!27900 () ValueCell!8322)

(assert (=> b!878838 (= condMapEmpty!27900 (= (arr!24599 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8322)) mapDefault!27900)))))

(assert (= (and start!74618 res!597198) b!878837))

(assert (= (and b!878837 res!597195) b!878827))

(assert (= (and b!878827 res!597199) b!878832))

(assert (= (and b!878832 res!597203) b!878828))

(assert (= (and b!878828 res!597200) b!878831))

(assert (= (and b!878831 res!597201) b!878830))

(assert (= (and b!878830 res!597196) b!878833))

(assert (= (and b!878833 res!597202) b!878836))

(assert (= (and b!878836 res!597197) b!878834))

(assert (= (and b!878834 (not res!597204)) b!878826))

(assert (= (and b!878838 condMapEmpty!27900) mapIsEmpty!27900))

(assert (= (and b!878838 (not condMapEmpty!27900)) mapNonEmpty!27900))

(get-info :version)

(assert (= (and mapNonEmpty!27900 ((_ is ValueCellFull!8322) mapValue!27900)) b!878829))

(assert (= (and b!878838 ((_ is ValueCellFull!8322) mapDefault!27900)) b!878835))

(assert (= start!74618 b!878838))

(declare-fun m!818671 () Bool)

(assert (=> mapNonEmpty!27900 m!818671))

(declare-fun m!818673 () Bool)

(assert (=> b!878836 m!818673))

(declare-fun m!818675 () Bool)

(assert (=> b!878836 m!818675))

(declare-fun m!818677 () Bool)

(assert (=> b!878836 m!818677))

(declare-fun m!818679 () Bool)

(assert (=> b!878830 m!818679))

(declare-fun m!818681 () Bool)

(assert (=> b!878833 m!818681))

(declare-fun m!818683 () Bool)

(assert (=> b!878837 m!818683))

(declare-fun m!818685 () Bool)

(assert (=> b!878828 m!818685))

(declare-fun m!818687 () Bool)

(assert (=> b!878834 m!818687))

(declare-fun m!818689 () Bool)

(assert (=> b!878834 m!818689))

(assert (=> b!878834 m!818687))

(declare-fun m!818691 () Bool)

(assert (=> b!878834 m!818691))

(declare-fun m!818693 () Bool)

(assert (=> b!878834 m!818693))

(declare-fun m!818695 () Bool)

(assert (=> b!878834 m!818695))

(declare-fun m!818697 () Bool)

(assert (=> b!878834 m!818697))

(assert (=> b!878834 m!818691))

(declare-fun m!818699 () Bool)

(assert (=> b!878832 m!818699))

(declare-fun m!818701 () Bool)

(assert (=> start!74618 m!818701))

(declare-fun m!818703 () Bool)

(assert (=> start!74618 m!818703))

(check-sat (not mapNonEmpty!27900) (not b!878834) tp_is_empty!17523 (not b!878832) (not b!878836) (not b!878828) (not b_next!15279) b_and!25173 (not start!74618) (not b!878837) (not b!878830))
(check-sat b_and!25173 (not b_next!15279))
