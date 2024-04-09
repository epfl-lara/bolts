; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73390 () Bool)

(assert start!73390)

(declare-fun b_free!14277 () Bool)

(declare-fun b_next!14277 () Bool)

(assert (=> start!73390 (= b_free!14277 (not b_next!14277))))

(declare-fun tp!50335 () Bool)

(declare-fun b_and!23651 () Bool)

(assert (=> start!73390 (= tp!50335 b_and!23651)))

(declare-fun mapIsEmpty!26219 () Bool)

(declare-fun mapRes!26219 () Bool)

(assert (=> mapIsEmpty!26219 mapRes!26219))

(declare-fun b!855960 () Bool)

(declare-fun res!581466 () Bool)

(declare-fun e!477181 () Bool)

(assert (=> b!855960 (=> (not res!581466) (not e!477181))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!48996 0))(
  ( (array!48997 (arr!23525 (Array (_ BitVec 32) (_ BitVec 64))) (size!23966 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48996)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!855960 (= res!581466 (and (= (select (arr!23525 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!855961 () Bool)

(declare-fun e!477185 () Bool)

(declare-fun e!477184 () Bool)

(assert (=> b!855961 (= e!477185 (and e!477184 mapRes!26219))))

(declare-fun condMapEmpty!26219 () Bool)

(declare-datatypes ((V!26931 0))(
  ( (V!26932 (val!8254 Int)) )
))
(declare-datatypes ((ValueCell!7767 0))(
  ( (ValueCellFull!7767 (v!10675 V!26931)) (EmptyCell!7767) )
))
(declare-datatypes ((array!48998 0))(
  ( (array!48999 (arr!23526 (Array (_ BitVec 32) ValueCell!7767)) (size!23967 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48998)

(declare-fun mapDefault!26219 () ValueCell!7767)

(assert (=> b!855961 (= condMapEmpty!26219 (= (arr!23526 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7767)) mapDefault!26219)))))

(declare-fun b!855962 () Bool)

(declare-fun e!477183 () Bool)

(declare-fun tp_is_empty!16413 () Bool)

(assert (=> b!855962 (= e!477183 tp_is_empty!16413)))

(declare-fun b!855963 () Bool)

(declare-fun res!581465 () Bool)

(assert (=> b!855963 (=> (not res!581465) (not e!477181))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855963 (= res!581465 (validKeyInArray!0 k0!854))))

(declare-fun b!855964 () Bool)

(assert (=> b!855964 (= e!477184 tp_is_empty!16413)))

(declare-fun mapNonEmpty!26219 () Bool)

(declare-fun tp!50336 () Bool)

(assert (=> mapNonEmpty!26219 (= mapRes!26219 (and tp!50336 e!477183))))

(declare-fun mapKey!26219 () (_ BitVec 32))

(declare-fun mapRest!26219 () (Array (_ BitVec 32) ValueCell!7767))

(declare-fun mapValue!26219 () ValueCell!7767)

(assert (=> mapNonEmpty!26219 (= (arr!23526 _values!688) (store mapRest!26219 mapKey!26219 mapValue!26219))))

(declare-fun b!855966 () Bool)

(declare-fun res!581464 () Bool)

(assert (=> b!855966 (=> (not res!581464) (not e!477181))))

(assert (=> b!855966 (= res!581464 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23966 _keys!868))))))

(declare-fun b!855967 () Bool)

(declare-fun e!477186 () Bool)

(assert (=> b!855967 (= e!477181 e!477186)))

(declare-fun res!581462 () Bool)

(assert (=> b!855967 (=> (not res!581462) (not e!477186))))

(assert (=> b!855967 (= res!581462 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26931)

(declare-fun zeroValue!654 () V!26931)

(declare-fun lt!385794 () array!48998)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!10868 0))(
  ( (tuple2!10869 (_1!5444 (_ BitVec 64)) (_2!5444 V!26931)) )
))
(declare-datatypes ((List!16743 0))(
  ( (Nil!16740) (Cons!16739 (h!17870 tuple2!10868) (t!23392 List!16743)) )
))
(declare-datatypes ((ListLongMap!9651 0))(
  ( (ListLongMap!9652 (toList!4841 List!16743)) )
))
(declare-fun lt!385792 () ListLongMap!9651)

(declare-fun getCurrentListMapNoExtraKeys!2823 (array!48996 array!48998 (_ BitVec 32) (_ BitVec 32) V!26931 V!26931 (_ BitVec 32) Int) ListLongMap!9651)

(assert (=> b!855967 (= lt!385792 (getCurrentListMapNoExtraKeys!2823 _keys!868 lt!385794 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26931)

(assert (=> b!855967 (= lt!385794 (array!48999 (store (arr!23526 _values!688) i!612 (ValueCellFull!7767 v!557)) (size!23967 _values!688)))))

(declare-fun lt!385791 () ListLongMap!9651)

(assert (=> b!855967 (= lt!385791 (getCurrentListMapNoExtraKeys!2823 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855968 () Bool)

(declare-fun res!581463 () Bool)

(assert (=> b!855968 (=> (not res!581463) (not e!477181))))

(declare-datatypes ((List!16744 0))(
  ( (Nil!16741) (Cons!16740 (h!17871 (_ BitVec 64)) (t!23393 List!16744)) )
))
(declare-fun arrayNoDuplicates!0 (array!48996 (_ BitVec 32) List!16744) Bool)

(assert (=> b!855968 (= res!581463 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16741))))

(declare-fun b!855969 () Bool)

(declare-fun res!581469 () Bool)

(assert (=> b!855969 (=> (not res!581469) (not e!477181))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855969 (= res!581469 (validMask!0 mask!1196))))

(declare-fun b!855965 () Bool)

(assert (=> b!855965 (= e!477186 (not true))))

(declare-fun +!2153 (ListLongMap!9651 tuple2!10868) ListLongMap!9651)

(assert (=> b!855965 (= (getCurrentListMapNoExtraKeys!2823 _keys!868 lt!385794 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2153 (getCurrentListMapNoExtraKeys!2823 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10869 k0!854 v!557)))))

(declare-datatypes ((Unit!29148 0))(
  ( (Unit!29149) )
))
(declare-fun lt!385793 () Unit!29148)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!413 (array!48996 array!48998 (_ BitVec 32) (_ BitVec 32) V!26931 V!26931 (_ BitVec 32) (_ BitVec 64) V!26931 (_ BitVec 32) Int) Unit!29148)

(assert (=> b!855965 (= lt!385793 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!413 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!581461 () Bool)

(assert (=> start!73390 (=> (not res!581461) (not e!477181))))

(assert (=> start!73390 (= res!581461 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23966 _keys!868))))))

(assert (=> start!73390 e!477181))

(assert (=> start!73390 tp_is_empty!16413))

(assert (=> start!73390 true))

(assert (=> start!73390 tp!50335))

(declare-fun array_inv!18622 (array!48996) Bool)

(assert (=> start!73390 (array_inv!18622 _keys!868)))

(declare-fun array_inv!18623 (array!48998) Bool)

(assert (=> start!73390 (and (array_inv!18623 _values!688) e!477185)))

(declare-fun b!855970 () Bool)

(declare-fun res!581467 () Bool)

(assert (=> b!855970 (=> (not res!581467) (not e!477181))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48996 (_ BitVec 32)) Bool)

(assert (=> b!855970 (= res!581467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!855971 () Bool)

(declare-fun res!581468 () Bool)

(assert (=> b!855971 (=> (not res!581468) (not e!477181))))

(assert (=> b!855971 (= res!581468 (and (= (size!23967 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23966 _keys!868) (size!23967 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!73390 res!581461) b!855969))

(assert (= (and b!855969 res!581469) b!855971))

(assert (= (and b!855971 res!581468) b!855970))

(assert (= (and b!855970 res!581467) b!855968))

(assert (= (and b!855968 res!581463) b!855966))

(assert (= (and b!855966 res!581464) b!855963))

(assert (= (and b!855963 res!581465) b!855960))

(assert (= (and b!855960 res!581466) b!855967))

(assert (= (and b!855967 res!581462) b!855965))

(assert (= (and b!855961 condMapEmpty!26219) mapIsEmpty!26219))

(assert (= (and b!855961 (not condMapEmpty!26219)) mapNonEmpty!26219))

(get-info :version)

(assert (= (and mapNonEmpty!26219 ((_ is ValueCellFull!7767) mapValue!26219)) b!855962))

(assert (= (and b!855961 ((_ is ValueCellFull!7767) mapDefault!26219)) b!855964))

(assert (= start!73390 b!855961))

(declare-fun m!797065 () Bool)

(assert (=> b!855968 m!797065))

(declare-fun m!797067 () Bool)

(assert (=> b!855970 m!797067))

(declare-fun m!797069 () Bool)

(assert (=> start!73390 m!797069))

(declare-fun m!797071 () Bool)

(assert (=> start!73390 m!797071))

(declare-fun m!797073 () Bool)

(assert (=> b!855969 m!797073))

(declare-fun m!797075 () Bool)

(assert (=> b!855967 m!797075))

(declare-fun m!797077 () Bool)

(assert (=> b!855967 m!797077))

(declare-fun m!797079 () Bool)

(assert (=> b!855967 m!797079))

(declare-fun m!797081 () Bool)

(assert (=> b!855963 m!797081))

(declare-fun m!797083 () Bool)

(assert (=> b!855960 m!797083))

(declare-fun m!797085 () Bool)

(assert (=> mapNonEmpty!26219 m!797085))

(declare-fun m!797087 () Bool)

(assert (=> b!855965 m!797087))

(declare-fun m!797089 () Bool)

(assert (=> b!855965 m!797089))

(assert (=> b!855965 m!797089))

(declare-fun m!797091 () Bool)

(assert (=> b!855965 m!797091))

(declare-fun m!797093 () Bool)

(assert (=> b!855965 m!797093))

(check-sat tp_is_empty!16413 (not b!855967) (not b!855969) (not b!855965) (not b!855970) (not start!73390) (not b_next!14277) (not b!855963) (not b!855968) (not mapNonEmpty!26219) b_and!23651)
(check-sat b_and!23651 (not b_next!14277))
