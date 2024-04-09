; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73444 () Bool)

(assert start!73444)

(declare-fun b_free!14331 () Bool)

(declare-fun b_next!14331 () Bool)

(assert (=> start!73444 (= b_free!14331 (not b_next!14331))))

(declare-fun tp!50498 () Bool)

(declare-fun b_and!23705 () Bool)

(assert (=> start!73444 (= tp!50498 b_and!23705)))

(declare-fun b!856932 () Bool)

(declare-fun e!477668 () Bool)

(declare-fun e!477670 () Bool)

(assert (=> b!856932 (= e!477668 e!477670)))

(declare-fun res!582194 () Bool)

(assert (=> b!856932 (=> (not res!582194) (not e!477670))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!856932 (= res!582194 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!27003 0))(
  ( (V!27004 (val!8281 Int)) )
))
(declare-datatypes ((ValueCell!7794 0))(
  ( (ValueCellFull!7794 (v!10702 V!27003)) (EmptyCell!7794) )
))
(declare-datatypes ((array!49100 0))(
  ( (array!49101 (arr!23577 (Array (_ BitVec 32) ValueCell!7794)) (size!24018 (_ BitVec 32))) )
))
(declare-fun lt!386115 () array!49100)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10910 0))(
  ( (tuple2!10911 (_1!5465 (_ BitVec 64)) (_2!5465 V!27003)) )
))
(declare-datatypes ((List!16782 0))(
  ( (Nil!16779) (Cons!16778 (h!17909 tuple2!10910) (t!23431 List!16782)) )
))
(declare-datatypes ((ListLongMap!9693 0))(
  ( (ListLongMap!9694 (toList!4862 List!16782)) )
))
(declare-fun lt!386117 () ListLongMap!9693)

(declare-datatypes ((array!49102 0))(
  ( (array!49103 (arr!23578 (Array (_ BitVec 32) (_ BitVec 64))) (size!24019 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49102)

(declare-fun minValue!654 () V!27003)

(declare-fun zeroValue!654 () V!27003)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2844 (array!49102 array!49100 (_ BitVec 32) (_ BitVec 32) V!27003 V!27003 (_ BitVec 32) Int) ListLongMap!9693)

(assert (=> b!856932 (= lt!386117 (getCurrentListMapNoExtraKeys!2844 _keys!868 lt!386115 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27003)

(declare-fun _values!688 () array!49100)

(assert (=> b!856932 (= lt!386115 (array!49101 (store (arr!23577 _values!688) i!612 (ValueCellFull!7794 v!557)) (size!24018 _values!688)))))

(declare-fun lt!386116 () ListLongMap!9693)

(assert (=> b!856932 (= lt!386116 (getCurrentListMapNoExtraKeys!2844 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!856933 () Bool)

(assert (=> b!856933 (= e!477670 (not true))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2171 (ListLongMap!9693 tuple2!10910) ListLongMap!9693)

(assert (=> b!856933 (= (getCurrentListMapNoExtraKeys!2844 _keys!868 lt!386115 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2171 (getCurrentListMapNoExtraKeys!2844 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10911 k0!854 v!557)))))

(declare-datatypes ((Unit!29184 0))(
  ( (Unit!29185) )
))
(declare-fun lt!386118 () Unit!29184)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!431 (array!49102 array!49100 (_ BitVec 32) (_ BitVec 32) V!27003 V!27003 (_ BitVec 32) (_ BitVec 64) V!27003 (_ BitVec 32) Int) Unit!29184)

(assert (=> b!856933 (= lt!386118 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!431 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!26300 () Bool)

(declare-fun mapRes!26300 () Bool)

(assert (=> mapIsEmpty!26300 mapRes!26300))

(declare-fun b!856934 () Bool)

(declare-fun res!582190 () Bool)

(assert (=> b!856934 (=> (not res!582190) (not e!477668))))

(assert (=> b!856934 (= res!582190 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24019 _keys!868))))))

(declare-fun b!856935 () Bool)

(declare-fun res!582195 () Bool)

(assert (=> b!856935 (=> (not res!582195) (not e!477668))))

(declare-datatypes ((List!16783 0))(
  ( (Nil!16780) (Cons!16779 (h!17910 (_ BitVec 64)) (t!23432 List!16783)) )
))
(declare-fun arrayNoDuplicates!0 (array!49102 (_ BitVec 32) List!16783) Bool)

(assert (=> b!856935 (= res!582195 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16780))))

(declare-fun res!582198 () Bool)

(assert (=> start!73444 (=> (not res!582198) (not e!477668))))

(assert (=> start!73444 (= res!582198 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24019 _keys!868))))))

(assert (=> start!73444 e!477668))

(declare-fun tp_is_empty!16467 () Bool)

(assert (=> start!73444 tp_is_empty!16467))

(assert (=> start!73444 true))

(assert (=> start!73444 tp!50498))

(declare-fun array_inv!18662 (array!49102) Bool)

(assert (=> start!73444 (array_inv!18662 _keys!868)))

(declare-fun e!477667 () Bool)

(declare-fun array_inv!18663 (array!49100) Bool)

(assert (=> start!73444 (and (array_inv!18663 _values!688) e!477667)))

(declare-fun b!856936 () Bool)

(declare-fun res!582191 () Bool)

(assert (=> b!856936 (=> (not res!582191) (not e!477668))))

(assert (=> b!856936 (= res!582191 (and (= (size!24018 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24019 _keys!868) (size!24018 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!856937 () Bool)

(declare-fun res!582196 () Bool)

(assert (=> b!856937 (=> (not res!582196) (not e!477668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49102 (_ BitVec 32)) Bool)

(assert (=> b!856937 (= res!582196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!856938 () Bool)

(declare-fun res!582197 () Bool)

(assert (=> b!856938 (=> (not res!582197) (not e!477668))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856938 (= res!582197 (validKeyInArray!0 k0!854))))

(declare-fun b!856939 () Bool)

(declare-fun e!477672 () Bool)

(assert (=> b!856939 (= e!477672 tp_is_empty!16467)))

(declare-fun b!856940 () Bool)

(assert (=> b!856940 (= e!477667 (and e!477672 mapRes!26300))))

(declare-fun condMapEmpty!26300 () Bool)

(declare-fun mapDefault!26300 () ValueCell!7794)

(assert (=> b!856940 (= condMapEmpty!26300 (= (arr!23577 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7794)) mapDefault!26300)))))

(declare-fun mapNonEmpty!26300 () Bool)

(declare-fun tp!50497 () Bool)

(declare-fun e!477669 () Bool)

(assert (=> mapNonEmpty!26300 (= mapRes!26300 (and tp!50497 e!477669))))

(declare-fun mapRest!26300 () (Array (_ BitVec 32) ValueCell!7794))

(declare-fun mapValue!26300 () ValueCell!7794)

(declare-fun mapKey!26300 () (_ BitVec 32))

(assert (=> mapNonEmpty!26300 (= (arr!23577 _values!688) (store mapRest!26300 mapKey!26300 mapValue!26300))))

(declare-fun b!856941 () Bool)

(declare-fun res!582193 () Bool)

(assert (=> b!856941 (=> (not res!582193) (not e!477668))))

(assert (=> b!856941 (= res!582193 (and (= (select (arr!23578 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!856942 () Bool)

(assert (=> b!856942 (= e!477669 tp_is_empty!16467)))

(declare-fun b!856943 () Bool)

(declare-fun res!582192 () Bool)

(assert (=> b!856943 (=> (not res!582192) (not e!477668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856943 (= res!582192 (validMask!0 mask!1196))))

(assert (= (and start!73444 res!582198) b!856943))

(assert (= (and b!856943 res!582192) b!856936))

(assert (= (and b!856936 res!582191) b!856937))

(assert (= (and b!856937 res!582196) b!856935))

(assert (= (and b!856935 res!582195) b!856934))

(assert (= (and b!856934 res!582190) b!856938))

(assert (= (and b!856938 res!582197) b!856941))

(assert (= (and b!856941 res!582193) b!856932))

(assert (= (and b!856932 res!582194) b!856933))

(assert (= (and b!856940 condMapEmpty!26300) mapIsEmpty!26300))

(assert (= (and b!856940 (not condMapEmpty!26300)) mapNonEmpty!26300))

(get-info :version)

(assert (= (and mapNonEmpty!26300 ((_ is ValueCellFull!7794) mapValue!26300)) b!856942))

(assert (= (and b!856940 ((_ is ValueCellFull!7794) mapDefault!26300)) b!856939))

(assert (= start!73444 b!856940))

(declare-fun m!797875 () Bool)

(assert (=> b!856932 m!797875))

(declare-fun m!797877 () Bool)

(assert (=> b!856932 m!797877))

(declare-fun m!797879 () Bool)

(assert (=> b!856932 m!797879))

(declare-fun m!797881 () Bool)

(assert (=> b!856933 m!797881))

(declare-fun m!797883 () Bool)

(assert (=> b!856933 m!797883))

(assert (=> b!856933 m!797883))

(declare-fun m!797885 () Bool)

(assert (=> b!856933 m!797885))

(declare-fun m!797887 () Bool)

(assert (=> b!856933 m!797887))

(declare-fun m!797889 () Bool)

(assert (=> b!856935 m!797889))

(declare-fun m!797891 () Bool)

(assert (=> b!856941 m!797891))

(declare-fun m!797893 () Bool)

(assert (=> b!856937 m!797893))

(declare-fun m!797895 () Bool)

(assert (=> mapNonEmpty!26300 m!797895))

(declare-fun m!797897 () Bool)

(assert (=> b!856943 m!797897))

(declare-fun m!797899 () Bool)

(assert (=> b!856938 m!797899))

(declare-fun m!797901 () Bool)

(assert (=> start!73444 m!797901))

(declare-fun m!797903 () Bool)

(assert (=> start!73444 m!797903))

(check-sat (not b!856937) (not b!856943) (not start!73444) (not b!856933) (not mapNonEmpty!26300) (not b!856938) b_and!23705 (not b!856932) (not b!856935) (not b_next!14331) tp_is_empty!16467)
(check-sat b_and!23705 (not b_next!14331))
