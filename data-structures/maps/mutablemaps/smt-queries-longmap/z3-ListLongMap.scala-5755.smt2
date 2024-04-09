; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74388 () Bool)

(assert start!74388)

(declare-fun b_free!15123 () Bool)

(declare-fun b_next!15123 () Bool)

(assert (=> start!74388 (= b_free!15123 (not b_next!15123))))

(declare-fun tp!53044 () Bool)

(declare-fun b_and!24917 () Bool)

(assert (=> start!74388 (= tp!53044 b_and!24917)))

(declare-fun b!875137 () Bool)

(declare-fun e!487230 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((V!28203 0))(
  ( (V!28204 (val!8731 Int)) )
))
(declare-datatypes ((ValueCell!8244 0))(
  ( (ValueCellFull!8244 (v!11156 V!28203)) (EmptyCell!8244) )
))
(declare-datatypes ((array!50844 0))(
  ( (array!50845 (arr!24446 (Array (_ BitVec 32) ValueCell!8244)) (size!24887 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50844)

(assert (=> b!875137 (= e!487230 (bvslt i!612 (size!24887 _values!688)))))

(declare-fun b!875138 () Bool)

(declare-fun e!487231 () Bool)

(declare-fun tp_is_empty!17367 () Bool)

(assert (=> b!875138 (= e!487231 tp_is_empty!17367)))

(declare-fun b!875139 () Bool)

(declare-fun e!487224 () Bool)

(assert (=> b!875139 (= e!487224 (not e!487230))))

(declare-fun res!594861 () Bool)

(assert (=> b!875139 (=> res!594861 e!487230)))

(declare-datatypes ((array!50846 0))(
  ( (array!50847 (arr!24447 (Array (_ BitVec 32) (_ BitVec 64))) (size!24888 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50846)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!875139 (= res!594861 (not (validKeyInArray!0 (select (arr!24447 _keys!868) from!1053))))))

(declare-fun e!487228 () Bool)

(assert (=> b!875139 e!487228))

(declare-fun c!92416 () Bool)

(assert (=> b!875139 (= c!92416 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!28203)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((Unit!29898 0))(
  ( (Unit!29899) )
))
(declare-fun lt!396074 () Unit!29898)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!28203)

(declare-fun zeroValue!654 () V!28203)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!653 (array!50846 array!50844 (_ BitVec 32) (_ BitVec 32) V!28203 V!28203 (_ BitVec 32) (_ BitVec 64) V!28203 (_ BitVec 32) Int) Unit!29898)

(assert (=> b!875139 (= lt!396074 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!653 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875140 () Bool)

(declare-fun res!594859 () Bool)

(declare-fun e!487226 () Bool)

(assert (=> b!875140 (=> (not res!594859) (not e!487226))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50846 (_ BitVec 32)) Bool)

(assert (=> b!875140 (= res!594859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!875141 () Bool)

(declare-fun res!594853 () Bool)

(assert (=> b!875141 (=> (not res!594853) (not e!487226))))

(assert (=> b!875141 (= res!594853 (validKeyInArray!0 k0!854))))

(declare-datatypes ((tuple2!11540 0))(
  ( (tuple2!11541 (_1!5780 (_ BitVec 64)) (_2!5780 V!28203)) )
))
(declare-datatypes ((List!17427 0))(
  ( (Nil!17424) (Cons!17423 (h!18554 tuple2!11540) (t!24476 List!17427)) )
))
(declare-datatypes ((ListLongMap!10323 0))(
  ( (ListLongMap!10324 (toList!5177 List!17427)) )
))
(declare-fun call!38594 () ListLongMap!10323)

(declare-fun b!875142 () Bool)

(declare-fun call!38595 () ListLongMap!10323)

(declare-fun +!2422 (ListLongMap!10323 tuple2!11540) ListLongMap!10323)

(assert (=> b!875142 (= e!487228 (= call!38595 (+!2422 call!38594 (tuple2!11541 k0!854 v!557))))))

(declare-fun b!875143 () Bool)

(assert (=> b!875143 (= e!487226 e!487224)))

(declare-fun res!594857 () Bool)

(assert (=> b!875143 (=> (not res!594857) (not e!487224))))

(assert (=> b!875143 (= res!594857 (= from!1053 i!612))))

(declare-fun lt!396073 () ListLongMap!10323)

(declare-fun lt!396075 () array!50844)

(declare-fun getCurrentListMapNoExtraKeys!3140 (array!50846 array!50844 (_ BitVec 32) (_ BitVec 32) V!28203 V!28203 (_ BitVec 32) Int) ListLongMap!10323)

(assert (=> b!875143 (= lt!396073 (getCurrentListMapNoExtraKeys!3140 _keys!868 lt!396075 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!875143 (= lt!396075 (array!50845 (store (arr!24446 _values!688) i!612 (ValueCellFull!8244 v!557)) (size!24887 _values!688)))))

(declare-fun lt!396076 () ListLongMap!10323)

(assert (=> b!875143 (= lt!396076 (getCurrentListMapNoExtraKeys!3140 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!875144 () Bool)

(declare-fun res!594858 () Bool)

(assert (=> b!875144 (=> (not res!594858) (not e!487226))))

(declare-datatypes ((List!17428 0))(
  ( (Nil!17425) (Cons!17424 (h!18555 (_ BitVec 64)) (t!24477 List!17428)) )
))
(declare-fun arrayNoDuplicates!0 (array!50846 (_ BitVec 32) List!17428) Bool)

(assert (=> b!875144 (= res!594858 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17425))))

(declare-fun b!875145 () Bool)

(declare-fun res!594862 () Bool)

(assert (=> b!875145 (=> (not res!594862) (not e!487226))))

(assert (=> b!875145 (= res!594862 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24888 _keys!868))))))

(declare-fun mapIsEmpty!27659 () Bool)

(declare-fun mapRes!27659 () Bool)

(assert (=> mapIsEmpty!27659 mapRes!27659))

(declare-fun b!875146 () Bool)

(declare-fun res!594854 () Bool)

(assert (=> b!875146 (=> (not res!594854) (not e!487226))))

(assert (=> b!875146 (= res!594854 (and (= (select (arr!24447 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!594856 () Bool)

(assert (=> start!74388 (=> (not res!594856) (not e!487226))))

(assert (=> start!74388 (= res!594856 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24888 _keys!868))))))

(assert (=> start!74388 e!487226))

(assert (=> start!74388 tp_is_empty!17367))

(assert (=> start!74388 true))

(assert (=> start!74388 tp!53044))

(declare-fun array_inv!19256 (array!50846) Bool)

(assert (=> start!74388 (array_inv!19256 _keys!868)))

(declare-fun e!487225 () Bool)

(declare-fun array_inv!19257 (array!50844) Bool)

(assert (=> start!74388 (and (array_inv!19257 _values!688) e!487225)))

(declare-fun b!875147 () Bool)

(assert (=> b!875147 (= e!487228 (= call!38595 call!38594))))

(declare-fun bm!38591 () Bool)

(assert (=> bm!38591 (= call!38594 (getCurrentListMapNoExtraKeys!3140 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!27659 () Bool)

(declare-fun tp!53045 () Bool)

(assert (=> mapNonEmpty!27659 (= mapRes!27659 (and tp!53045 e!487231))))

(declare-fun mapKey!27659 () (_ BitVec 32))

(declare-fun mapRest!27659 () (Array (_ BitVec 32) ValueCell!8244))

(declare-fun mapValue!27659 () ValueCell!8244)

(assert (=> mapNonEmpty!27659 (= (arr!24446 _values!688) (store mapRest!27659 mapKey!27659 mapValue!27659))))

(declare-fun b!875148 () Bool)

(declare-fun res!594855 () Bool)

(assert (=> b!875148 (=> (not res!594855) (not e!487226))))

(assert (=> b!875148 (= res!594855 (and (= (size!24887 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24888 _keys!868) (size!24887 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!38592 () Bool)

(assert (=> bm!38592 (= call!38595 (getCurrentListMapNoExtraKeys!3140 _keys!868 lt!396075 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875149 () Bool)

(declare-fun e!487229 () Bool)

(assert (=> b!875149 (= e!487225 (and e!487229 mapRes!27659))))

(declare-fun condMapEmpty!27659 () Bool)

(declare-fun mapDefault!27659 () ValueCell!8244)

(assert (=> b!875149 (= condMapEmpty!27659 (= (arr!24446 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8244)) mapDefault!27659)))))

(declare-fun b!875150 () Bool)

(declare-fun res!594860 () Bool)

(assert (=> b!875150 (=> (not res!594860) (not e!487226))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!875150 (= res!594860 (validMask!0 mask!1196))))

(declare-fun b!875151 () Bool)

(assert (=> b!875151 (= e!487229 tp_is_empty!17367)))

(assert (= (and start!74388 res!594856) b!875150))

(assert (= (and b!875150 res!594860) b!875148))

(assert (= (and b!875148 res!594855) b!875140))

(assert (= (and b!875140 res!594859) b!875144))

(assert (= (and b!875144 res!594858) b!875145))

(assert (= (and b!875145 res!594862) b!875141))

(assert (= (and b!875141 res!594853) b!875146))

(assert (= (and b!875146 res!594854) b!875143))

(assert (= (and b!875143 res!594857) b!875139))

(assert (= (and b!875139 c!92416) b!875142))

(assert (= (and b!875139 (not c!92416)) b!875147))

(assert (= (or b!875142 b!875147) bm!38592))

(assert (= (or b!875142 b!875147) bm!38591))

(assert (= (and b!875139 (not res!594861)) b!875137))

(assert (= (and b!875149 condMapEmpty!27659) mapIsEmpty!27659))

(assert (= (and b!875149 (not condMapEmpty!27659)) mapNonEmpty!27659))

(get-info :version)

(assert (= (and mapNonEmpty!27659 ((_ is ValueCellFull!8244) mapValue!27659)) b!875138))

(assert (= (and b!875149 ((_ is ValueCellFull!8244) mapDefault!27659)) b!875151))

(assert (= start!74388 b!875149))

(declare-fun m!815143 () Bool)

(assert (=> mapNonEmpty!27659 m!815143))

(declare-fun m!815145 () Bool)

(assert (=> b!875139 m!815145))

(assert (=> b!875139 m!815145))

(declare-fun m!815147 () Bool)

(assert (=> b!875139 m!815147))

(declare-fun m!815149 () Bool)

(assert (=> b!875139 m!815149))

(declare-fun m!815151 () Bool)

(assert (=> b!875144 m!815151))

(declare-fun m!815153 () Bool)

(assert (=> b!875142 m!815153))

(declare-fun m!815155 () Bool)

(assert (=> start!74388 m!815155))

(declare-fun m!815157 () Bool)

(assert (=> start!74388 m!815157))

(declare-fun m!815159 () Bool)

(assert (=> b!875143 m!815159))

(declare-fun m!815161 () Bool)

(assert (=> b!875143 m!815161))

(declare-fun m!815163 () Bool)

(assert (=> b!875143 m!815163))

(declare-fun m!815165 () Bool)

(assert (=> b!875141 m!815165))

(declare-fun m!815167 () Bool)

(assert (=> bm!38592 m!815167))

(declare-fun m!815169 () Bool)

(assert (=> bm!38591 m!815169))

(declare-fun m!815171 () Bool)

(assert (=> b!875140 m!815171))

(declare-fun m!815173 () Bool)

(assert (=> b!875146 m!815173))

(declare-fun m!815175 () Bool)

(assert (=> b!875150 m!815175))

(check-sat (not b!875150) (not b!875139) (not mapNonEmpty!27659) (not b!875143) (not b!875141) (not b!875144) (not b!875140) b_and!24917 (not b_next!15123) (not b!875142) (not bm!38591) tp_is_empty!17367 (not bm!38592) (not start!74388))
(check-sat b_and!24917 (not b_next!15123))
