; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73384 () Bool)

(assert start!73384)

(declare-fun b_free!14271 () Bool)

(declare-fun b_next!14271 () Bool)

(assert (=> start!73384 (= b_free!14271 (not b_next!14271))))

(declare-fun tp!50317 () Bool)

(declare-fun b_and!23645 () Bool)

(assert (=> start!73384 (= tp!50317 b_and!23645)))

(declare-fun b!855852 () Bool)

(declare-fun e!477131 () Bool)

(declare-fun e!477128 () Bool)

(declare-fun mapRes!26210 () Bool)

(assert (=> b!855852 (= e!477131 (and e!477128 mapRes!26210))))

(declare-fun condMapEmpty!26210 () Bool)

(declare-datatypes ((V!26923 0))(
  ( (V!26924 (val!8251 Int)) )
))
(declare-datatypes ((ValueCell!7764 0))(
  ( (ValueCellFull!7764 (v!10672 V!26923)) (EmptyCell!7764) )
))
(declare-datatypes ((array!48984 0))(
  ( (array!48985 (arr!23519 (Array (_ BitVec 32) ValueCell!7764)) (size!23960 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48984)

(declare-fun mapDefault!26210 () ValueCell!7764)

(assert (=> b!855852 (= condMapEmpty!26210 (= (arr!23519 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7764)) mapDefault!26210)))))

(declare-fun b!855853 () Bool)

(declare-fun e!477130 () Bool)

(assert (=> b!855853 (= e!477130 (not true))))

(declare-fun v!557 () V!26923)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!385758 () array!48984)

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!48986 0))(
  ( (array!48987 (arr!23520 (Array (_ BitVec 32) (_ BitVec 64))) (size!23961 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48986)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26923)

(declare-fun zeroValue!654 () V!26923)

(declare-datatypes ((tuple2!10864 0))(
  ( (tuple2!10865 (_1!5442 (_ BitVec 64)) (_2!5442 V!26923)) )
))
(declare-datatypes ((List!16738 0))(
  ( (Nil!16735) (Cons!16734 (h!17865 tuple2!10864) (t!23387 List!16738)) )
))
(declare-datatypes ((ListLongMap!9647 0))(
  ( (ListLongMap!9648 (toList!4839 List!16738)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2821 (array!48986 array!48984 (_ BitVec 32) (_ BitVec 32) V!26923 V!26923 (_ BitVec 32) Int) ListLongMap!9647)

(declare-fun +!2152 (ListLongMap!9647 tuple2!10864) ListLongMap!9647)

(assert (=> b!855853 (= (getCurrentListMapNoExtraKeys!2821 _keys!868 lt!385758 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2152 (getCurrentListMapNoExtraKeys!2821 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10865 k0!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29146 0))(
  ( (Unit!29147) )
))
(declare-fun lt!385755 () Unit!29146)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!412 (array!48986 array!48984 (_ BitVec 32) (_ BitVec 32) V!26923 V!26923 (_ BitVec 32) (_ BitVec 64) V!26923 (_ BitVec 32) Int) Unit!29146)

(assert (=> b!855853 (= lt!385755 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!412 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!26210 () Bool)

(declare-fun tp!50318 () Bool)

(declare-fun e!477129 () Bool)

(assert (=> mapNonEmpty!26210 (= mapRes!26210 (and tp!50318 e!477129))))

(declare-fun mapValue!26210 () ValueCell!7764)

(declare-fun mapKey!26210 () (_ BitVec 32))

(declare-fun mapRest!26210 () (Array (_ BitVec 32) ValueCell!7764))

(assert (=> mapNonEmpty!26210 (= (arr!23519 _values!688) (store mapRest!26210 mapKey!26210 mapValue!26210))))

(declare-fun b!855854 () Bool)

(declare-fun res!581384 () Bool)

(declare-fun e!477132 () Bool)

(assert (=> b!855854 (=> (not res!581384) (not e!477132))))

(assert (=> b!855854 (= res!581384 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23961 _keys!868))))))

(declare-fun b!855855 () Bool)

(declare-fun res!581387 () Bool)

(assert (=> b!855855 (=> (not res!581387) (not e!477132))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855855 (= res!581387 (validKeyInArray!0 k0!854))))

(declare-fun b!855856 () Bool)

(declare-fun res!581386 () Bool)

(assert (=> b!855856 (=> (not res!581386) (not e!477132))))

(assert (=> b!855856 (= res!581386 (and (= (select (arr!23520 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!581383 () Bool)

(assert (=> start!73384 (=> (not res!581383) (not e!477132))))

(assert (=> start!73384 (= res!581383 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23961 _keys!868))))))

(assert (=> start!73384 e!477132))

(declare-fun tp_is_empty!16407 () Bool)

(assert (=> start!73384 tp_is_empty!16407))

(assert (=> start!73384 true))

(assert (=> start!73384 tp!50317))

(declare-fun array_inv!18618 (array!48986) Bool)

(assert (=> start!73384 (array_inv!18618 _keys!868)))

(declare-fun array_inv!18619 (array!48984) Bool)

(assert (=> start!73384 (and (array_inv!18619 _values!688) e!477131)))

(declare-fun b!855857 () Bool)

(declare-fun res!581381 () Bool)

(assert (=> b!855857 (=> (not res!581381) (not e!477132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855857 (= res!581381 (validMask!0 mask!1196))))

(declare-fun b!855858 () Bool)

(declare-fun res!581385 () Bool)

(assert (=> b!855858 (=> (not res!581385) (not e!477132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48986 (_ BitVec 32)) Bool)

(assert (=> b!855858 (= res!581385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!855859 () Bool)

(declare-fun res!581388 () Bool)

(assert (=> b!855859 (=> (not res!581388) (not e!477132))))

(assert (=> b!855859 (= res!581388 (and (= (size!23960 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23961 _keys!868) (size!23960 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!855860 () Bool)

(declare-fun res!581382 () Bool)

(assert (=> b!855860 (=> (not res!581382) (not e!477132))))

(declare-datatypes ((List!16739 0))(
  ( (Nil!16736) (Cons!16735 (h!17866 (_ BitVec 64)) (t!23388 List!16739)) )
))
(declare-fun arrayNoDuplicates!0 (array!48986 (_ BitVec 32) List!16739) Bool)

(assert (=> b!855860 (= res!581382 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16736))))

(declare-fun mapIsEmpty!26210 () Bool)

(assert (=> mapIsEmpty!26210 mapRes!26210))

(declare-fun b!855861 () Bool)

(assert (=> b!855861 (= e!477129 tp_is_empty!16407)))

(declare-fun b!855862 () Bool)

(assert (=> b!855862 (= e!477132 e!477130)))

(declare-fun res!581380 () Bool)

(assert (=> b!855862 (=> (not res!581380) (not e!477130))))

(assert (=> b!855862 (= res!581380 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!385756 () ListLongMap!9647)

(assert (=> b!855862 (= lt!385756 (getCurrentListMapNoExtraKeys!2821 _keys!868 lt!385758 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!855862 (= lt!385758 (array!48985 (store (arr!23519 _values!688) i!612 (ValueCellFull!7764 v!557)) (size!23960 _values!688)))))

(declare-fun lt!385757 () ListLongMap!9647)

(assert (=> b!855862 (= lt!385757 (getCurrentListMapNoExtraKeys!2821 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855863 () Bool)

(assert (=> b!855863 (= e!477128 tp_is_empty!16407)))

(assert (= (and start!73384 res!581383) b!855857))

(assert (= (and b!855857 res!581381) b!855859))

(assert (= (and b!855859 res!581388) b!855858))

(assert (= (and b!855858 res!581385) b!855860))

(assert (= (and b!855860 res!581382) b!855854))

(assert (= (and b!855854 res!581384) b!855855))

(assert (= (and b!855855 res!581387) b!855856))

(assert (= (and b!855856 res!581386) b!855862))

(assert (= (and b!855862 res!581380) b!855853))

(assert (= (and b!855852 condMapEmpty!26210) mapIsEmpty!26210))

(assert (= (and b!855852 (not condMapEmpty!26210)) mapNonEmpty!26210))

(get-info :version)

(assert (= (and mapNonEmpty!26210 ((_ is ValueCellFull!7764) mapValue!26210)) b!855861))

(assert (= (and b!855852 ((_ is ValueCellFull!7764) mapDefault!26210)) b!855863))

(assert (= start!73384 b!855852))

(declare-fun m!796975 () Bool)

(assert (=> start!73384 m!796975))

(declare-fun m!796977 () Bool)

(assert (=> start!73384 m!796977))

(declare-fun m!796979 () Bool)

(assert (=> b!855857 m!796979))

(declare-fun m!796981 () Bool)

(assert (=> b!855853 m!796981))

(declare-fun m!796983 () Bool)

(assert (=> b!855853 m!796983))

(assert (=> b!855853 m!796983))

(declare-fun m!796985 () Bool)

(assert (=> b!855853 m!796985))

(declare-fun m!796987 () Bool)

(assert (=> b!855853 m!796987))

(declare-fun m!796989 () Bool)

(assert (=> b!855858 m!796989))

(declare-fun m!796991 () Bool)

(assert (=> b!855856 m!796991))

(declare-fun m!796993 () Bool)

(assert (=> b!855855 m!796993))

(declare-fun m!796995 () Bool)

(assert (=> mapNonEmpty!26210 m!796995))

(declare-fun m!796997 () Bool)

(assert (=> b!855862 m!796997))

(declare-fun m!796999 () Bool)

(assert (=> b!855862 m!796999))

(declare-fun m!797001 () Bool)

(assert (=> b!855862 m!797001))

(declare-fun m!797003 () Bool)

(assert (=> b!855860 m!797003))

(check-sat (not b_next!14271) (not b!855853) (not b!855858) (not b!855862) b_and!23645 (not start!73384) (not b!855855) (not b!855857) tp_is_empty!16407 (not mapNonEmpty!26210) (not b!855860))
(check-sat b_and!23645 (not b_next!14271))
