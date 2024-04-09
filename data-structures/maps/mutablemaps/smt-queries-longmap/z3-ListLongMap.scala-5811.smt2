; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74968 () Bool)

(assert start!74968)

(declare-fun b_free!15459 () Bool)

(declare-fun b_next!15459 () Bool)

(assert (=> start!74968 (= b_free!15459 (not b_next!15459))))

(declare-fun tp!54081 () Bool)

(declare-fun b_and!25635 () Bool)

(assert (=> start!74968 (= tp!54081 b_and!25635)))

(declare-fun b!883833 () Bool)

(declare-fun res!600553 () Bool)

(declare-fun e!491892 () Bool)

(assert (=> b!883833 (=> (not res!600553) (not e!491892))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883833 (= res!600553 (validKeyInArray!0 k0!854))))

(declare-fun b!883834 () Bool)

(declare-fun res!600555 () Bool)

(assert (=> b!883834 (=> (not res!600555) (not e!491892))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!883834 (= res!600555 (validMask!0 mask!1196))))

(declare-fun b!883835 () Bool)

(declare-fun e!491896 () Bool)

(declare-fun tp_is_empty!17703 () Bool)

(assert (=> b!883835 (= e!491896 tp_is_empty!17703)))

(declare-fun b!883836 () Bool)

(declare-fun e!491895 () Bool)

(assert (=> b!883836 (= e!491892 e!491895)))

(declare-fun res!600561 () Bool)

(assert (=> b!883836 (=> (not res!600561) (not e!491895))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!883836 (= res!600561 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!28651 0))(
  ( (V!28652 (val!8899 Int)) )
))
(declare-datatypes ((tuple2!11826 0))(
  ( (tuple2!11827 (_1!5923 (_ BitVec 64)) (_2!5923 V!28651)) )
))
(declare-datatypes ((List!17691 0))(
  ( (Nil!17688) (Cons!17687 (h!18818 tuple2!11826) (t!24960 List!17691)) )
))
(declare-datatypes ((ListLongMap!10609 0))(
  ( (ListLongMap!10610 (toList!5320 List!17691)) )
))
(declare-fun lt!400207 () ListLongMap!10609)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8412 0))(
  ( (ValueCellFull!8412 (v!11364 V!28651)) (EmptyCell!8412) )
))
(declare-datatypes ((array!51516 0))(
  ( (array!51517 (arr!24773 (Array (_ BitVec 32) ValueCell!8412)) (size!25214 (_ BitVec 32))) )
))
(declare-fun lt!400205 () array!51516)

(declare-datatypes ((array!51518 0))(
  ( (array!51519 (arr!24774 (Array (_ BitVec 32) (_ BitVec 64))) (size!25215 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51518)

(declare-fun minValue!654 () V!28651)

(declare-fun zeroValue!654 () V!28651)

(declare-fun getCurrentListMapNoExtraKeys!3275 (array!51518 array!51516 (_ BitVec 32) (_ BitVec 32) V!28651 V!28651 (_ BitVec 32) Int) ListLongMap!10609)

(assert (=> b!883836 (= lt!400207 (getCurrentListMapNoExtraKeys!3275 _keys!868 lt!400205 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28651)

(declare-fun _values!688 () array!51516)

(assert (=> b!883836 (= lt!400205 (array!51517 (store (arr!24773 _values!688) i!612 (ValueCellFull!8412 v!557)) (size!25214 _values!688)))))

(declare-fun lt!400200 () ListLongMap!10609)

(assert (=> b!883836 (= lt!400200 (getCurrentListMapNoExtraKeys!3275 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!28191 () Bool)

(declare-fun mapRes!28191 () Bool)

(assert (=> mapIsEmpty!28191 mapRes!28191))

(declare-fun mapNonEmpty!28191 () Bool)

(declare-fun tp!54080 () Bool)

(declare-fun e!491893 () Bool)

(assert (=> mapNonEmpty!28191 (= mapRes!28191 (and tp!54080 e!491893))))

(declare-fun mapRest!28191 () (Array (_ BitVec 32) ValueCell!8412))

(declare-fun mapKey!28191 () (_ BitVec 32))

(declare-fun mapValue!28191 () ValueCell!8412)

(assert (=> mapNonEmpty!28191 (= (arr!24773 _values!688) (store mapRest!28191 mapKey!28191 mapValue!28191))))

(declare-fun b!883837 () Bool)

(declare-datatypes ((Unit!30147 0))(
  ( (Unit!30148) )
))
(declare-fun e!491899 () Unit!30147)

(declare-fun Unit!30149 () Unit!30147)

(assert (=> b!883837 (= e!491899 Unit!30149)))

(declare-fun lt!400194 () Unit!30147)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51518 (_ BitVec 32) (_ BitVec 32)) Unit!30147)

(assert (=> b!883837 (= lt!400194 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17692 0))(
  ( (Nil!17689) (Cons!17688 (h!18819 (_ BitVec 64)) (t!24961 List!17692)) )
))
(declare-fun arrayNoDuplicates!0 (array!51518 (_ BitVec 32) List!17692) Bool)

(assert (=> b!883837 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17689)))

(declare-fun lt!400197 () Unit!30147)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51518 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30147)

(assert (=> b!883837 (= lt!400197 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!51518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!883837 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!400193 () Unit!30147)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!51518 (_ BitVec 64) (_ BitVec 32) List!17692) Unit!30147)

(assert (=> b!883837 (= lt!400193 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17689))))

(assert (=> b!883837 false))

(declare-fun b!883838 () Bool)

(declare-fun e!491894 () Bool)

(assert (=> b!883838 (= e!491894 (and e!491896 mapRes!28191))))

(declare-fun condMapEmpty!28191 () Bool)

(declare-fun mapDefault!28191 () ValueCell!8412)

(assert (=> b!883838 (= condMapEmpty!28191 (= (arr!24773 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8412)) mapDefault!28191)))))

(declare-fun res!600552 () Bool)

(assert (=> start!74968 (=> (not res!600552) (not e!491892))))

(assert (=> start!74968 (= res!600552 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25215 _keys!868))))))

(assert (=> start!74968 e!491892))

(assert (=> start!74968 tp_is_empty!17703))

(assert (=> start!74968 true))

(assert (=> start!74968 tp!54081))

(declare-fun array_inv!19482 (array!51518) Bool)

(assert (=> start!74968 (array_inv!19482 _keys!868)))

(declare-fun array_inv!19483 (array!51516) Bool)

(assert (=> start!74968 (and (array_inv!19483 _values!688) e!491894)))

(declare-fun b!883839 () Bool)

(declare-fun e!491897 () Bool)

(assert (=> b!883839 (= e!491895 (not e!491897))))

(declare-fun res!600554 () Bool)

(assert (=> b!883839 (=> res!600554 e!491897)))

(assert (=> b!883839 (= res!600554 (not (validKeyInArray!0 (select (arr!24774 _keys!868) from!1053))))))

(declare-fun lt!400195 () ListLongMap!10609)

(declare-fun lt!400198 () ListLongMap!10609)

(assert (=> b!883839 (= lt!400195 lt!400198)))

(declare-fun lt!400202 () ListLongMap!10609)

(declare-fun lt!400201 () tuple2!11826)

(declare-fun +!2523 (ListLongMap!10609 tuple2!11826) ListLongMap!10609)

(assert (=> b!883839 (= lt!400198 (+!2523 lt!400202 lt!400201))))

(assert (=> b!883839 (= lt!400195 (getCurrentListMapNoExtraKeys!3275 _keys!868 lt!400205 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!883839 (= lt!400201 (tuple2!11827 k0!854 v!557))))

(assert (=> b!883839 (= lt!400202 (getCurrentListMapNoExtraKeys!3275 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!400196 () Unit!30147)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!745 (array!51518 array!51516 (_ BitVec 32) (_ BitVec 32) V!28651 V!28651 (_ BitVec 32) (_ BitVec 64) V!28651 (_ BitVec 32) Int) Unit!30147)

(assert (=> b!883839 (= lt!400196 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!745 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!883840 () Bool)

(declare-fun res!600558 () Bool)

(assert (=> b!883840 (=> (not res!600558) (not e!491892))))

(assert (=> b!883840 (= res!600558 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25215 _keys!868))))))

(declare-fun b!883841 () Bool)

(declare-fun res!600559 () Bool)

(assert (=> b!883841 (=> (not res!600559) (not e!491892))))

(assert (=> b!883841 (= res!600559 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17689))))

(declare-fun b!883842 () Bool)

(assert (=> b!883842 (= e!491893 tp_is_empty!17703)))

(declare-fun b!883843 () Bool)

(declare-fun e!491900 () Bool)

(assert (=> b!883843 (= e!491900 (bvslt i!612 (size!25214 _values!688)))))

(declare-fun lt!400204 () ListLongMap!10609)

(declare-fun lt!400199 () tuple2!11826)

(assert (=> b!883843 (= lt!400204 (+!2523 (+!2523 lt!400202 lt!400199) lt!400201))))

(declare-fun lt!400192 () Unit!30147)

(declare-fun lt!400206 () V!28651)

(declare-fun addCommutativeForDiffKeys!545 (ListLongMap!10609 (_ BitVec 64) V!28651 (_ BitVec 64) V!28651) Unit!30147)

(assert (=> b!883843 (= lt!400192 (addCommutativeForDiffKeys!545 lt!400202 k0!854 v!557 (select (arr!24774 _keys!868) from!1053) lt!400206))))

(declare-fun b!883844 () Bool)

(declare-fun res!600560 () Bool)

(assert (=> b!883844 (=> (not res!600560) (not e!491892))))

(assert (=> b!883844 (= res!600560 (and (= (size!25214 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25215 _keys!868) (size!25214 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!883845 () Bool)

(assert (=> b!883845 (= e!491897 e!491900)))

(declare-fun res!600562 () Bool)

(assert (=> b!883845 (=> res!600562 e!491900)))

(assert (=> b!883845 (= res!600562 (= k0!854 (select (arr!24774 _keys!868) from!1053)))))

(assert (=> b!883845 (not (= (select (arr!24774 _keys!868) from!1053) k0!854))))

(declare-fun lt!400203 () Unit!30147)

(assert (=> b!883845 (= lt!400203 e!491899)))

(declare-fun c!93012 () Bool)

(assert (=> b!883845 (= c!93012 (= (select (arr!24774 _keys!868) from!1053) k0!854))))

(assert (=> b!883845 (= lt!400207 lt!400204)))

(assert (=> b!883845 (= lt!400204 (+!2523 lt!400198 lt!400199))))

(assert (=> b!883845 (= lt!400199 (tuple2!11827 (select (arr!24774 _keys!868) from!1053) lt!400206))))

(declare-fun get!13068 (ValueCell!8412 V!28651) V!28651)

(declare-fun dynLambda!1277 (Int (_ BitVec 64)) V!28651)

(assert (=> b!883845 (= lt!400206 (get!13068 (select (arr!24773 _values!688) from!1053) (dynLambda!1277 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!883846 () Bool)

(declare-fun Unit!30150 () Unit!30147)

(assert (=> b!883846 (= e!491899 Unit!30150)))

(declare-fun b!883847 () Bool)

(declare-fun res!600557 () Bool)

(assert (=> b!883847 (=> (not res!600557) (not e!491892))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51518 (_ BitVec 32)) Bool)

(assert (=> b!883847 (= res!600557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!883848 () Bool)

(declare-fun res!600556 () Bool)

(assert (=> b!883848 (=> (not res!600556) (not e!491892))))

(assert (=> b!883848 (= res!600556 (and (= (select (arr!24774 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(assert (= (and start!74968 res!600552) b!883834))

(assert (= (and b!883834 res!600555) b!883844))

(assert (= (and b!883844 res!600560) b!883847))

(assert (= (and b!883847 res!600557) b!883841))

(assert (= (and b!883841 res!600559) b!883840))

(assert (= (and b!883840 res!600558) b!883833))

(assert (= (and b!883833 res!600553) b!883848))

(assert (= (and b!883848 res!600556) b!883836))

(assert (= (and b!883836 res!600561) b!883839))

(assert (= (and b!883839 (not res!600554)) b!883845))

(assert (= (and b!883845 c!93012) b!883837))

(assert (= (and b!883845 (not c!93012)) b!883846))

(assert (= (and b!883845 (not res!600562)) b!883843))

(assert (= (and b!883838 condMapEmpty!28191) mapIsEmpty!28191))

(assert (= (and b!883838 (not condMapEmpty!28191)) mapNonEmpty!28191))

(get-info :version)

(assert (= (and mapNonEmpty!28191 ((_ is ValueCellFull!8412) mapValue!28191)) b!883842))

(assert (= (and b!883838 ((_ is ValueCellFull!8412) mapDefault!28191)) b!883835))

(assert (= start!74968 b!883838))

(declare-fun b_lambda!12767 () Bool)

(assert (=> (not b_lambda!12767) (not b!883845)))

(declare-fun t!24959 () Bool)

(declare-fun tb!5125 () Bool)

(assert (=> (and start!74968 (= defaultEntry!696 defaultEntry!696) t!24959) tb!5125))

(declare-fun result!9877 () Bool)

(assert (=> tb!5125 (= result!9877 tp_is_empty!17703)))

(assert (=> b!883845 t!24959))

(declare-fun b_and!25637 () Bool)

(assert (= b_and!25635 (and (=> t!24959 result!9877) b_and!25637)))

(declare-fun m!824059 () Bool)

(assert (=> b!883833 m!824059))

(declare-fun m!824061 () Bool)

(assert (=> b!883843 m!824061))

(assert (=> b!883843 m!824061))

(declare-fun m!824063 () Bool)

(assert (=> b!883843 m!824063))

(declare-fun m!824065 () Bool)

(assert (=> b!883843 m!824065))

(assert (=> b!883843 m!824065))

(declare-fun m!824067 () Bool)

(assert (=> b!883843 m!824067))

(declare-fun m!824069 () Bool)

(assert (=> b!883837 m!824069))

(declare-fun m!824071 () Bool)

(assert (=> b!883837 m!824071))

(declare-fun m!824073 () Bool)

(assert (=> b!883837 m!824073))

(declare-fun m!824075 () Bool)

(assert (=> b!883837 m!824075))

(declare-fun m!824077 () Bool)

(assert (=> b!883837 m!824077))

(declare-fun m!824079 () Bool)

(assert (=> b!883839 m!824079))

(assert (=> b!883839 m!824065))

(declare-fun m!824081 () Bool)

(assert (=> b!883839 m!824081))

(assert (=> b!883839 m!824065))

(declare-fun m!824083 () Bool)

(assert (=> b!883839 m!824083))

(declare-fun m!824085 () Bool)

(assert (=> b!883839 m!824085))

(declare-fun m!824087 () Bool)

(assert (=> b!883839 m!824087))

(declare-fun m!824089 () Bool)

(assert (=> b!883848 m!824089))

(declare-fun m!824091 () Bool)

(assert (=> b!883841 m!824091))

(declare-fun m!824093 () Bool)

(assert (=> b!883836 m!824093))

(declare-fun m!824095 () Bool)

(assert (=> b!883836 m!824095))

(declare-fun m!824097 () Bool)

(assert (=> b!883836 m!824097))

(declare-fun m!824099 () Bool)

(assert (=> b!883834 m!824099))

(declare-fun m!824101 () Bool)

(assert (=> b!883845 m!824101))

(declare-fun m!824103 () Bool)

(assert (=> b!883845 m!824103))

(declare-fun m!824105 () Bool)

(assert (=> b!883845 m!824105))

(assert (=> b!883845 m!824101))

(declare-fun m!824107 () Bool)

(assert (=> b!883845 m!824107))

(assert (=> b!883845 m!824065))

(assert (=> b!883845 m!824103))

(declare-fun m!824109 () Bool)

(assert (=> start!74968 m!824109))

(declare-fun m!824111 () Bool)

(assert (=> start!74968 m!824111))

(declare-fun m!824113 () Bool)

(assert (=> b!883847 m!824113))

(declare-fun m!824115 () Bool)

(assert (=> mapNonEmpty!28191 m!824115))

(check-sat (not b!883837) (not b_lambda!12767) (not b!883845) (not b!883833) (not start!74968) b_and!25637 (not b!883843) (not b!883834) (not b!883847) tp_is_empty!17703 (not b!883836) (not b!883839) (not mapNonEmpty!28191) (not b_next!15459) (not b!883841))
(check-sat b_and!25637 (not b_next!15459))
