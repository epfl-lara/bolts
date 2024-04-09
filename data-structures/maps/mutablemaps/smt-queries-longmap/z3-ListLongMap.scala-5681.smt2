; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73900 () Bool)

(assert start!73900)

(declare-fun b_free!14787 () Bool)

(declare-fun b_next!14787 () Bool)

(assert (=> start!73900 (= b_free!14787 (not b_next!14787))))

(declare-fun tp!51865 () Bool)

(declare-fun b_and!24557 () Bool)

(assert (=> start!73900 (= tp!51865 b_and!24557)))

(declare-fun b!867669 () Bool)

(declare-fun e!483330 () Bool)

(declare-fun e!483333 () Bool)

(assert (=> b!867669 (= e!483330 e!483333)))

(declare-fun res!589659 () Bool)

(assert (=> b!867669 (=> (not res!589659) (not e!483333))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!867669 (= res!589659 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27611 0))(
  ( (V!27612 (val!8509 Int)) )
))
(declare-datatypes ((ValueCell!8022 0))(
  ( (ValueCellFull!8022 (v!10930 V!27611)) (EmptyCell!8022) )
))
(declare-datatypes ((array!49984 0))(
  ( (array!49985 (arr!24019 (Array (_ BitVec 32) ValueCell!8022)) (size!24460 (_ BitVec 32))) )
))
(declare-fun lt!394208 () array!49984)

(declare-datatypes ((tuple2!11296 0))(
  ( (tuple2!11297 (_1!5658 (_ BitVec 64)) (_2!5658 V!27611)) )
))
(declare-datatypes ((List!17156 0))(
  ( (Nil!17153) (Cons!17152 (h!18283 tuple2!11296) (t!24201 List!17156)) )
))
(declare-datatypes ((ListLongMap!10079 0))(
  ( (ListLongMap!10080 (toList!5055 List!17156)) )
))
(declare-fun lt!394209 () ListLongMap!10079)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49986 0))(
  ( (array!49987 (arr!24020 (Array (_ BitVec 32) (_ BitVec 64))) (size!24461 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49986)

(declare-fun minValue!654 () V!27611)

(declare-fun zeroValue!654 () V!27611)

(declare-fun getCurrentListMapNoExtraKeys!3019 (array!49986 array!49984 (_ BitVec 32) (_ BitVec 32) V!27611 V!27611 (_ BitVec 32) Int) ListLongMap!10079)

(assert (=> b!867669 (= lt!394209 (getCurrentListMapNoExtraKeys!3019 _keys!868 lt!394208 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27611)

(declare-fun _values!688 () array!49984)

(assert (=> b!867669 (= lt!394208 (array!49985 (store (arr!24019 _values!688) i!612 (ValueCellFull!8022 v!557)) (size!24460 _values!688)))))

(declare-fun lt!394207 () ListLongMap!10079)

(assert (=> b!867669 (= lt!394207 (getCurrentListMapNoExtraKeys!3019 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!867670 () Bool)

(assert (=> b!867670 (= e!483333 (not true))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2348 (ListLongMap!10079 tuple2!11296) ListLongMap!10079)

(assert (=> b!867670 (= (getCurrentListMapNoExtraKeys!3019 _keys!868 lt!394208 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2348 (getCurrentListMapNoExtraKeys!3019 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11297 k0!854 v!557)))))

(declare-datatypes ((Unit!29746 0))(
  ( (Unit!29747) )
))
(declare-fun lt!394206 () Unit!29746)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!579 (array!49986 array!49984 (_ BitVec 32) (_ BitVec 32) V!27611 V!27611 (_ BitVec 32) (_ BitVec 64) V!27611 (_ BitVec 32) Int) Unit!29746)

(assert (=> b!867670 (= lt!394206 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!579 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!867671 () Bool)

(declare-fun res!589651 () Bool)

(assert (=> b!867671 (=> (not res!589651) (not e!483330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867671 (= res!589651 (validMask!0 mask!1196))))

(declare-fun b!867672 () Bool)

(declare-fun res!589654 () Bool)

(assert (=> b!867672 (=> (not res!589654) (not e!483330))))

(assert (=> b!867672 (= res!589654 (and (= (size!24460 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24461 _keys!868) (size!24460 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!867673 () Bool)

(declare-fun res!589655 () Bool)

(assert (=> b!867673 (=> (not res!589655) (not e!483330))))

(declare-datatypes ((List!17157 0))(
  ( (Nil!17154) (Cons!17153 (h!18284 (_ BitVec 64)) (t!24202 List!17157)) )
))
(declare-fun arrayNoDuplicates!0 (array!49986 (_ BitVec 32) List!17157) Bool)

(assert (=> b!867673 (= res!589655 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17154))))

(declare-fun b!867675 () Bool)

(declare-fun e!483332 () Bool)

(declare-fun tp_is_empty!16923 () Bool)

(assert (=> b!867675 (= e!483332 tp_is_empty!16923)))

(declare-fun b!867676 () Bool)

(declare-fun res!589658 () Bool)

(assert (=> b!867676 (=> (not res!589658) (not e!483330))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49986 (_ BitVec 32)) Bool)

(assert (=> b!867676 (= res!589658 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!867677 () Bool)

(declare-fun e!483328 () Bool)

(assert (=> b!867677 (= e!483328 tp_is_empty!16923)))

(declare-fun b!867678 () Bool)

(declare-fun e!483331 () Bool)

(declare-fun mapRes!26984 () Bool)

(assert (=> b!867678 (= e!483331 (and e!483332 mapRes!26984))))

(declare-fun condMapEmpty!26984 () Bool)

(declare-fun mapDefault!26984 () ValueCell!8022)

(assert (=> b!867678 (= condMapEmpty!26984 (= (arr!24019 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8022)) mapDefault!26984)))))

(declare-fun mapIsEmpty!26984 () Bool)

(assert (=> mapIsEmpty!26984 mapRes!26984))

(declare-fun b!867679 () Bool)

(declare-fun res!589657 () Bool)

(assert (=> b!867679 (=> (not res!589657) (not e!483330))))

(assert (=> b!867679 (= res!589657 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24461 _keys!868))))))

(declare-fun mapNonEmpty!26984 () Bool)

(declare-fun tp!51866 () Bool)

(assert (=> mapNonEmpty!26984 (= mapRes!26984 (and tp!51866 e!483328))))

(declare-fun mapValue!26984 () ValueCell!8022)

(declare-fun mapKey!26984 () (_ BitVec 32))

(declare-fun mapRest!26984 () (Array (_ BitVec 32) ValueCell!8022))

(assert (=> mapNonEmpty!26984 (= (arr!24019 _values!688) (store mapRest!26984 mapKey!26984 mapValue!26984))))

(declare-fun b!867680 () Bool)

(declare-fun res!589653 () Bool)

(assert (=> b!867680 (=> (not res!589653) (not e!483330))))

(assert (=> b!867680 (= res!589653 (and (= (select (arr!24020 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!589656 () Bool)

(assert (=> start!73900 (=> (not res!589656) (not e!483330))))

(assert (=> start!73900 (= res!589656 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24461 _keys!868))))))

(assert (=> start!73900 e!483330))

(assert (=> start!73900 tp_is_empty!16923))

(assert (=> start!73900 true))

(assert (=> start!73900 tp!51865))

(declare-fun array_inv!18956 (array!49986) Bool)

(assert (=> start!73900 (array_inv!18956 _keys!868)))

(declare-fun array_inv!18957 (array!49984) Bool)

(assert (=> start!73900 (and (array_inv!18957 _values!688) e!483331)))

(declare-fun b!867674 () Bool)

(declare-fun res!589652 () Bool)

(assert (=> b!867674 (=> (not res!589652) (not e!483330))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!867674 (= res!589652 (validKeyInArray!0 k0!854))))

(assert (= (and start!73900 res!589656) b!867671))

(assert (= (and b!867671 res!589651) b!867672))

(assert (= (and b!867672 res!589654) b!867676))

(assert (= (and b!867676 res!589658) b!867673))

(assert (= (and b!867673 res!589655) b!867679))

(assert (= (and b!867679 res!589657) b!867674))

(assert (= (and b!867674 res!589652) b!867680))

(assert (= (and b!867680 res!589653) b!867669))

(assert (= (and b!867669 res!589659) b!867670))

(assert (= (and b!867678 condMapEmpty!26984) mapIsEmpty!26984))

(assert (= (and b!867678 (not condMapEmpty!26984)) mapNonEmpty!26984))

(get-info :version)

(assert (= (and mapNonEmpty!26984 ((_ is ValueCellFull!8022) mapValue!26984)) b!867677))

(assert (= (and b!867678 ((_ is ValueCellFull!8022) mapDefault!26984)) b!867675))

(assert (= start!73900 b!867678))

(declare-fun m!809581 () Bool)

(assert (=> b!867671 m!809581))

(declare-fun m!809583 () Bool)

(assert (=> b!867676 m!809583))

(declare-fun m!809585 () Bool)

(assert (=> b!867680 m!809585))

(declare-fun m!809587 () Bool)

(assert (=> b!867670 m!809587))

(declare-fun m!809589 () Bool)

(assert (=> b!867670 m!809589))

(assert (=> b!867670 m!809589))

(declare-fun m!809591 () Bool)

(assert (=> b!867670 m!809591))

(declare-fun m!809593 () Bool)

(assert (=> b!867670 m!809593))

(declare-fun m!809595 () Bool)

(assert (=> start!73900 m!809595))

(declare-fun m!809597 () Bool)

(assert (=> start!73900 m!809597))

(declare-fun m!809599 () Bool)

(assert (=> b!867673 m!809599))

(declare-fun m!809601 () Bool)

(assert (=> mapNonEmpty!26984 m!809601))

(declare-fun m!809603 () Bool)

(assert (=> b!867669 m!809603))

(declare-fun m!809605 () Bool)

(assert (=> b!867669 m!809605))

(declare-fun m!809607 () Bool)

(assert (=> b!867669 m!809607))

(declare-fun m!809609 () Bool)

(assert (=> b!867674 m!809609))

(check-sat (not b!867674) (not b!867671) tp_is_empty!16923 (not start!73900) (not mapNonEmpty!26984) (not b!867673) b_and!24557 (not b_next!14787) (not b!867669) (not b!867670) (not b!867676))
(check-sat b_and!24557 (not b_next!14787))
