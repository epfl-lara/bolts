; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74706 () Bool)

(assert start!74706)

(declare-fun b_free!15327 () Bool)

(declare-fun b_next!15327 () Bool)

(assert (=> start!74706 (= b_free!15327 (not b_next!15327))))

(declare-fun tp!53670 () Bool)

(declare-fun b_and!25291 () Bool)

(assert (=> start!74706 (= tp!53670 b_and!25291)))

(declare-fun b!880060 () Bool)

(declare-fun res!598022 () Bool)

(declare-fun e!489779 () Bool)

(assert (=> b!880060 (=> (not res!598022) (not e!489779))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!51250 0))(
  ( (array!51251 (arr!24645 (Array (_ BitVec 32) (_ BitVec 64))) (size!25086 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51250)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!880060 (= res!598022 (and (= (select (arr!24645 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!880061 () Bool)

(declare-fun res!598021 () Bool)

(assert (=> b!880061 (=> (not res!598021) (not e!489779))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880061 (= res!598021 (validKeyInArray!0 k0!854))))

(declare-fun b!880062 () Bool)

(declare-fun res!598018 () Bool)

(assert (=> b!880062 (=> (not res!598018) (not e!489779))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!28475 0))(
  ( (V!28476 (val!8833 Int)) )
))
(declare-datatypes ((ValueCell!8346 0))(
  ( (ValueCellFull!8346 (v!11277 V!28475)) (EmptyCell!8346) )
))
(declare-datatypes ((array!51252 0))(
  ( (array!51253 (arr!24646 (Array (_ BitVec 32) ValueCell!8346)) (size!25087 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51252)

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!880062 (= res!598018 (and (= (size!25087 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25086 _keys!868) (size!25087 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!880063 () Bool)

(declare-fun e!489781 () Bool)

(declare-fun e!489782 () Bool)

(assert (=> b!880063 (= e!489781 (not e!489782))))

(declare-fun res!598016 () Bool)

(assert (=> b!880063 (=> res!598016 e!489782)))

(assert (=> b!880063 (= res!598016 (not (validKeyInArray!0 (select (arr!24645 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11710 0))(
  ( (tuple2!11711 (_1!5865 (_ BitVec 64)) (_2!5865 V!28475)) )
))
(declare-datatypes ((List!17583 0))(
  ( (Nil!17580) (Cons!17579 (h!18710 tuple2!11710) (t!24720 List!17583)) )
))
(declare-datatypes ((ListLongMap!10493 0))(
  ( (ListLongMap!10494 (toList!5262 List!17583)) )
))
(declare-fun lt!397945 () ListLongMap!10493)

(declare-fun lt!397944 () ListLongMap!10493)

(assert (=> b!880063 (= lt!397945 lt!397944)))

(declare-fun lt!397948 () ListLongMap!10493)

(declare-fun v!557 () V!28475)

(declare-fun +!2468 (ListLongMap!10493 tuple2!11710) ListLongMap!10493)

(assert (=> b!880063 (= lt!397944 (+!2468 lt!397948 (tuple2!11711 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!397947 () array!51252)

(declare-fun minValue!654 () V!28475)

(declare-fun zeroValue!654 () V!28475)

(declare-fun getCurrentListMapNoExtraKeys!3222 (array!51250 array!51252 (_ BitVec 32) (_ BitVec 32) V!28475 V!28475 (_ BitVec 32) Int) ListLongMap!10493)

(assert (=> b!880063 (= lt!397945 (getCurrentListMapNoExtraKeys!3222 _keys!868 lt!397947 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!880063 (= lt!397948 (getCurrentListMapNoExtraKeys!3222 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30012 0))(
  ( (Unit!30013) )
))
(declare-fun lt!397946 () Unit!30012)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!698 (array!51250 array!51252 (_ BitVec 32) (_ BitVec 32) V!28475 V!28475 (_ BitVec 32) (_ BitVec 64) V!28475 (_ BitVec 32) Int) Unit!30012)

(assert (=> b!880063 (= lt!397946 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!698 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!880064 () Bool)

(assert (=> b!880064 (= e!489779 e!489781)))

(declare-fun res!598019 () Bool)

(assert (=> b!880064 (=> (not res!598019) (not e!489781))))

(assert (=> b!880064 (= res!598019 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397942 () ListLongMap!10493)

(assert (=> b!880064 (= lt!397942 (getCurrentListMapNoExtraKeys!3222 _keys!868 lt!397947 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!880064 (= lt!397947 (array!51253 (store (arr!24646 _values!688) i!612 (ValueCellFull!8346 v!557)) (size!25087 _values!688)))))

(declare-fun lt!397943 () ListLongMap!10493)

(assert (=> b!880064 (= lt!397943 (getCurrentListMapNoExtraKeys!3222 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!880065 () Bool)

(declare-fun res!598024 () Bool)

(assert (=> b!880065 (=> (not res!598024) (not e!489779))))

(assert (=> b!880065 (= res!598024 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25086 _keys!868))))))

(declare-fun b!880066 () Bool)

(declare-fun e!489785 () Bool)

(declare-fun e!489780 () Bool)

(declare-fun mapRes!27978 () Bool)

(assert (=> b!880066 (= e!489785 (and e!489780 mapRes!27978))))

(declare-fun condMapEmpty!27978 () Bool)

(declare-fun mapDefault!27978 () ValueCell!8346)

(assert (=> b!880066 (= condMapEmpty!27978 (= (arr!24646 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8346)) mapDefault!27978)))))

(declare-fun b!880067 () Bool)

(declare-fun res!598023 () Bool)

(assert (=> b!880067 (=> (not res!598023) (not e!489779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51250 (_ BitVec 32)) Bool)

(assert (=> b!880067 (= res!598023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!880068 () Bool)

(declare-fun res!598020 () Bool)

(assert (=> b!880068 (=> (not res!598020) (not e!489779))))

(declare-datatypes ((List!17584 0))(
  ( (Nil!17581) (Cons!17580 (h!18711 (_ BitVec 64)) (t!24721 List!17584)) )
))
(declare-fun arrayNoDuplicates!0 (array!51250 (_ BitVec 32) List!17584) Bool)

(assert (=> b!880068 (= res!598020 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17581))))

(declare-fun mapNonEmpty!27978 () Bool)

(declare-fun tp!53669 () Bool)

(declare-fun e!489783 () Bool)

(assert (=> mapNonEmpty!27978 (= mapRes!27978 (and tp!53669 e!489783))))

(declare-fun mapKey!27978 () (_ BitVec 32))

(declare-fun mapRest!27978 () (Array (_ BitVec 32) ValueCell!8346))

(declare-fun mapValue!27978 () ValueCell!8346)

(assert (=> mapNonEmpty!27978 (= (arr!24646 _values!688) (store mapRest!27978 mapKey!27978 mapValue!27978))))

(declare-fun res!598015 () Bool)

(assert (=> start!74706 (=> (not res!598015) (not e!489779))))

(assert (=> start!74706 (= res!598015 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25086 _keys!868))))))

(assert (=> start!74706 e!489779))

(declare-fun tp_is_empty!17571 () Bool)

(assert (=> start!74706 tp_is_empty!17571))

(assert (=> start!74706 true))

(assert (=> start!74706 tp!53670))

(declare-fun array_inv!19400 (array!51250) Bool)

(assert (=> start!74706 (array_inv!19400 _keys!868)))

(declare-fun array_inv!19401 (array!51252) Bool)

(assert (=> start!74706 (and (array_inv!19401 _values!688) e!489785)))

(declare-fun b!880069 () Bool)

(assert (=> b!880069 (= e!489782 true)))

(declare-fun get!12973 (ValueCell!8346 V!28475) V!28475)

(declare-fun dynLambda!1236 (Int (_ BitVec 64)) V!28475)

(assert (=> b!880069 (= lt!397942 (+!2468 lt!397944 (tuple2!11711 (select (arr!24645 _keys!868) from!1053) (get!12973 (select (arr!24646 _values!688) from!1053) (dynLambda!1236 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapIsEmpty!27978 () Bool)

(assert (=> mapIsEmpty!27978 mapRes!27978))

(declare-fun b!880070 () Bool)

(declare-fun res!598017 () Bool)

(assert (=> b!880070 (=> (not res!598017) (not e!489779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!880070 (= res!598017 (validMask!0 mask!1196))))

(declare-fun b!880071 () Bool)

(assert (=> b!880071 (= e!489780 tp_is_empty!17571)))

(declare-fun b!880072 () Bool)

(assert (=> b!880072 (= e!489783 tp_is_empty!17571)))

(assert (= (and start!74706 res!598015) b!880070))

(assert (= (and b!880070 res!598017) b!880062))

(assert (= (and b!880062 res!598018) b!880067))

(assert (= (and b!880067 res!598023) b!880068))

(assert (= (and b!880068 res!598020) b!880065))

(assert (= (and b!880065 res!598024) b!880061))

(assert (= (and b!880061 res!598021) b!880060))

(assert (= (and b!880060 res!598022) b!880064))

(assert (= (and b!880064 res!598019) b!880063))

(assert (= (and b!880063 (not res!598016)) b!880069))

(assert (= (and b!880066 condMapEmpty!27978) mapIsEmpty!27978))

(assert (= (and b!880066 (not condMapEmpty!27978)) mapNonEmpty!27978))

(get-info :version)

(assert (= (and mapNonEmpty!27978 ((_ is ValueCellFull!8346) mapValue!27978)) b!880072))

(assert (= (and b!880066 ((_ is ValueCellFull!8346) mapDefault!27978)) b!880071))

(assert (= start!74706 b!880066))

(declare-fun b_lambda!12465 () Bool)

(assert (=> (not b_lambda!12465) (not b!880069)))

(declare-fun t!24719 () Bool)

(declare-fun tb!4993 () Bool)

(assert (=> (and start!74706 (= defaultEntry!696 defaultEntry!696) t!24719) tb!4993))

(declare-fun result!9603 () Bool)

(assert (=> tb!4993 (= result!9603 tp_is_empty!17571)))

(assert (=> b!880069 t!24719))

(declare-fun b_and!25293 () Bool)

(assert (= b_and!25291 (and (=> t!24719 result!9603) b_and!25293)))

(declare-fun m!819935 () Bool)

(assert (=> b!880069 m!819935))

(declare-fun m!819937 () Bool)

(assert (=> b!880069 m!819937))

(declare-fun m!819939 () Bool)

(assert (=> b!880069 m!819939))

(declare-fun m!819941 () Bool)

(assert (=> b!880069 m!819941))

(assert (=> b!880069 m!819937))

(declare-fun m!819943 () Bool)

(assert (=> b!880069 m!819943))

(assert (=> b!880069 m!819939))

(declare-fun m!819945 () Bool)

(assert (=> b!880068 m!819945))

(declare-fun m!819947 () Bool)

(assert (=> b!880070 m!819947))

(declare-fun m!819949 () Bool)

(assert (=> b!880063 m!819949))

(declare-fun m!819951 () Bool)

(assert (=> b!880063 m!819951))

(declare-fun m!819953 () Bool)

(assert (=> b!880063 m!819953))

(assert (=> b!880063 m!819943))

(declare-fun m!819955 () Bool)

(assert (=> b!880063 m!819955))

(assert (=> b!880063 m!819943))

(declare-fun m!819957 () Bool)

(assert (=> b!880063 m!819957))

(declare-fun m!819959 () Bool)

(assert (=> b!880060 m!819959))

(declare-fun m!819961 () Bool)

(assert (=> b!880061 m!819961))

(declare-fun m!819963 () Bool)

(assert (=> b!880064 m!819963))

(declare-fun m!819965 () Bool)

(assert (=> b!880064 m!819965))

(declare-fun m!819967 () Bool)

(assert (=> b!880064 m!819967))

(declare-fun m!819969 () Bool)

(assert (=> b!880067 m!819969))

(declare-fun m!819971 () Bool)

(assert (=> mapNonEmpty!27978 m!819971))

(declare-fun m!819973 () Bool)

(assert (=> start!74706 m!819973))

(declare-fun m!819975 () Bool)

(assert (=> start!74706 m!819975))

(check-sat (not mapNonEmpty!27978) (not b!880070) (not b!880067) tp_is_empty!17571 b_and!25293 (not b!880063) (not b!880069) (not b!880064) (not b_next!15327) (not start!74706) (not b!880061) (not b!880068) (not b_lambda!12465))
(check-sat b_and!25293 (not b_next!15327))
