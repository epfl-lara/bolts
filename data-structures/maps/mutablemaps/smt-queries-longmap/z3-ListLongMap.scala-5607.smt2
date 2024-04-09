; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73456 () Bool)

(assert start!73456)

(declare-fun b_free!14343 () Bool)

(declare-fun b_next!14343 () Bool)

(assert (=> start!73456 (= b_free!14343 (not b_next!14343))))

(declare-fun tp!50534 () Bool)

(declare-fun b_and!23717 () Bool)

(assert (=> start!73456 (= tp!50534 b_and!23717)))

(declare-fun b!857148 () Bool)

(declare-fun res!582357 () Bool)

(declare-fun e!477778 () Bool)

(assert (=> b!857148 (=> (not res!582357) (not e!477778))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49122 0))(
  ( (array!49123 (arr!23588 (Array (_ BitVec 32) (_ BitVec 64))) (size!24029 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49122)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!857148 (= res!582357 (and (= (select (arr!23588 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!857149 () Bool)

(declare-fun e!477779 () Bool)

(declare-fun e!477777 () Bool)

(declare-fun mapRes!26318 () Bool)

(assert (=> b!857149 (= e!477779 (and e!477777 mapRes!26318))))

(declare-fun condMapEmpty!26318 () Bool)

(declare-datatypes ((V!27019 0))(
  ( (V!27020 (val!8287 Int)) )
))
(declare-datatypes ((ValueCell!7800 0))(
  ( (ValueCellFull!7800 (v!10708 V!27019)) (EmptyCell!7800) )
))
(declare-datatypes ((array!49124 0))(
  ( (array!49125 (arr!23589 (Array (_ BitVec 32) ValueCell!7800)) (size!24030 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49124)

(declare-fun mapDefault!26318 () ValueCell!7800)

(assert (=> b!857149 (= condMapEmpty!26318 (= (arr!23589 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7800)) mapDefault!26318)))))

(declare-fun b!857150 () Bool)

(declare-fun e!477775 () Bool)

(declare-fun tp_is_empty!16479 () Bool)

(assert (=> b!857150 (= e!477775 tp_is_empty!16479)))

(declare-fun b!857151 () Bool)

(declare-fun res!582353 () Bool)

(assert (=> b!857151 (=> (not res!582353) (not e!477778))))

(declare-datatypes ((List!16789 0))(
  ( (Nil!16786) (Cons!16785 (h!17916 (_ BitVec 64)) (t!23438 List!16789)) )
))
(declare-fun arrayNoDuplicates!0 (array!49122 (_ BitVec 32) List!16789) Bool)

(assert (=> b!857151 (= res!582353 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16786))))

(declare-fun b!857152 () Bool)

(declare-fun res!582356 () Bool)

(assert (=> b!857152 (=> (not res!582356) (not e!477778))))

(assert (=> b!857152 (= res!582356 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24029 _keys!868))))))

(declare-fun b!857153 () Bool)

(assert (=> b!857153 (= e!477777 tp_is_empty!16479)))

(declare-fun mapNonEmpty!26318 () Bool)

(declare-fun tp!50533 () Bool)

(assert (=> mapNonEmpty!26318 (= mapRes!26318 (and tp!50533 e!477775))))

(declare-fun mapRest!26318 () (Array (_ BitVec 32) ValueCell!7800))

(declare-fun mapValue!26318 () ValueCell!7800)

(declare-fun mapKey!26318 () (_ BitVec 32))

(assert (=> mapNonEmpty!26318 (= (arr!23589 _values!688) (store mapRest!26318 mapKey!26318 mapValue!26318))))

(declare-fun b!857154 () Bool)

(declare-fun res!582354 () Bool)

(assert (=> b!857154 (=> (not res!582354) (not e!477778))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857154 (= res!582354 (validMask!0 mask!1196))))

(declare-fun b!857155 () Bool)

(declare-fun e!477780 () Bool)

(assert (=> b!857155 (= e!477778 e!477780)))

(declare-fun res!582352 () Bool)

(assert (=> b!857155 (=> (not res!582352) (not e!477780))))

(assert (=> b!857155 (= res!582352 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27019)

(declare-fun zeroValue!654 () V!27019)

(declare-fun lt!386190 () array!49124)

(declare-datatypes ((tuple2!10918 0))(
  ( (tuple2!10919 (_1!5469 (_ BitVec 64)) (_2!5469 V!27019)) )
))
(declare-datatypes ((List!16790 0))(
  ( (Nil!16787) (Cons!16786 (h!17917 tuple2!10918) (t!23439 List!16790)) )
))
(declare-datatypes ((ListLongMap!9701 0))(
  ( (ListLongMap!9702 (toList!4866 List!16790)) )
))
(declare-fun lt!386187 () ListLongMap!9701)

(declare-fun getCurrentListMapNoExtraKeys!2848 (array!49122 array!49124 (_ BitVec 32) (_ BitVec 32) V!27019 V!27019 (_ BitVec 32) Int) ListLongMap!9701)

(assert (=> b!857155 (= lt!386187 (getCurrentListMapNoExtraKeys!2848 _keys!868 lt!386190 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27019)

(assert (=> b!857155 (= lt!386190 (array!49125 (store (arr!23589 _values!688) i!612 (ValueCellFull!7800 v!557)) (size!24030 _values!688)))))

(declare-fun lt!386188 () ListLongMap!9701)

(assert (=> b!857155 (= lt!386188 (getCurrentListMapNoExtraKeys!2848 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!857157 () Bool)

(assert (=> b!857157 (= e!477780 (not true))))

(declare-fun +!2174 (ListLongMap!9701 tuple2!10918) ListLongMap!9701)

(assert (=> b!857157 (= (getCurrentListMapNoExtraKeys!2848 _keys!868 lt!386190 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2174 (getCurrentListMapNoExtraKeys!2848 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10919 k0!854 v!557)))))

(declare-datatypes ((Unit!29190 0))(
  ( (Unit!29191) )
))
(declare-fun lt!386189 () Unit!29190)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!434 (array!49122 array!49124 (_ BitVec 32) (_ BitVec 32) V!27019 V!27019 (_ BitVec 32) (_ BitVec 64) V!27019 (_ BitVec 32) Int) Unit!29190)

(assert (=> b!857157 (= lt!386189 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!434 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!26318 () Bool)

(assert (=> mapIsEmpty!26318 mapRes!26318))

(declare-fun b!857158 () Bool)

(declare-fun res!582355 () Bool)

(assert (=> b!857158 (=> (not res!582355) (not e!477778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857158 (= res!582355 (validKeyInArray!0 k0!854))))

(declare-fun b!857159 () Bool)

(declare-fun res!582360 () Bool)

(assert (=> b!857159 (=> (not res!582360) (not e!477778))))

(assert (=> b!857159 (= res!582360 (and (= (size!24030 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24029 _keys!868) (size!24030 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!857156 () Bool)

(declare-fun res!582359 () Bool)

(assert (=> b!857156 (=> (not res!582359) (not e!477778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49122 (_ BitVec 32)) Bool)

(assert (=> b!857156 (= res!582359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!582358 () Bool)

(assert (=> start!73456 (=> (not res!582358) (not e!477778))))

(assert (=> start!73456 (= res!582358 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24029 _keys!868))))))

(assert (=> start!73456 e!477778))

(assert (=> start!73456 tp_is_empty!16479))

(assert (=> start!73456 true))

(assert (=> start!73456 tp!50534))

(declare-fun array_inv!18668 (array!49122) Bool)

(assert (=> start!73456 (array_inv!18668 _keys!868)))

(declare-fun array_inv!18669 (array!49124) Bool)

(assert (=> start!73456 (and (array_inv!18669 _values!688) e!477779)))

(assert (= (and start!73456 res!582358) b!857154))

(assert (= (and b!857154 res!582354) b!857159))

(assert (= (and b!857159 res!582360) b!857156))

(assert (= (and b!857156 res!582359) b!857151))

(assert (= (and b!857151 res!582353) b!857152))

(assert (= (and b!857152 res!582356) b!857158))

(assert (= (and b!857158 res!582355) b!857148))

(assert (= (and b!857148 res!582357) b!857155))

(assert (= (and b!857155 res!582352) b!857157))

(assert (= (and b!857149 condMapEmpty!26318) mapIsEmpty!26318))

(assert (= (and b!857149 (not condMapEmpty!26318)) mapNonEmpty!26318))

(get-info :version)

(assert (= (and mapNonEmpty!26318 ((_ is ValueCellFull!7800) mapValue!26318)) b!857150))

(assert (= (and b!857149 ((_ is ValueCellFull!7800) mapDefault!26318)) b!857153))

(assert (= start!73456 b!857149))

(declare-fun m!798055 () Bool)

(assert (=> b!857154 m!798055))

(declare-fun m!798057 () Bool)

(assert (=> mapNonEmpty!26318 m!798057))

(declare-fun m!798059 () Bool)

(assert (=> b!857148 m!798059))

(declare-fun m!798061 () Bool)

(assert (=> b!857151 m!798061))

(declare-fun m!798063 () Bool)

(assert (=> start!73456 m!798063))

(declare-fun m!798065 () Bool)

(assert (=> start!73456 m!798065))

(declare-fun m!798067 () Bool)

(assert (=> b!857156 m!798067))

(declare-fun m!798069 () Bool)

(assert (=> b!857157 m!798069))

(declare-fun m!798071 () Bool)

(assert (=> b!857157 m!798071))

(assert (=> b!857157 m!798071))

(declare-fun m!798073 () Bool)

(assert (=> b!857157 m!798073))

(declare-fun m!798075 () Bool)

(assert (=> b!857157 m!798075))

(declare-fun m!798077 () Bool)

(assert (=> b!857155 m!798077))

(declare-fun m!798079 () Bool)

(assert (=> b!857155 m!798079))

(declare-fun m!798081 () Bool)

(assert (=> b!857155 m!798081))

(declare-fun m!798083 () Bool)

(assert (=> b!857158 m!798083))

(check-sat b_and!23717 (not start!73456) (not b!857151) (not b!857156) (not mapNonEmpty!26318) (not b!857157) (not b_next!14343) tp_is_empty!16479 (not b!857158) (not b!857155) (not b!857154))
(check-sat b_and!23717 (not b_next!14343))
