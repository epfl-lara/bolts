; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74932 () Bool)

(assert start!74932)

(declare-fun b_free!15423 () Bool)

(declare-fun b_next!15423 () Bool)

(assert (=> start!74932 (= b_free!15423 (not b_next!15423))))

(declare-fun tp!53972 () Bool)

(declare-fun b_and!25563 () Bool)

(assert (=> start!74932 (= tp!53972 b_and!25563)))

(declare-fun mapNonEmpty!28137 () Bool)

(declare-fun mapRes!28137 () Bool)

(declare-fun tp!53973 () Bool)

(declare-fun e!491462 () Bool)

(assert (=> mapNonEmpty!28137 (= mapRes!28137 (and tp!53973 e!491462))))

(declare-fun mapKey!28137 () (_ BitVec 32))

(declare-datatypes ((V!28603 0))(
  ( (V!28604 (val!8881 Int)) )
))
(declare-datatypes ((ValueCell!8394 0))(
  ( (ValueCellFull!8394 (v!11346 V!28603)) (EmptyCell!8394) )
))
(declare-datatypes ((array!51444 0))(
  ( (array!51445 (arr!24737 (Array (_ BitVec 32) ValueCell!8394)) (size!25178 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51444)

(declare-fun mapRest!28137 () (Array (_ BitVec 32) ValueCell!8394))

(declare-fun mapValue!28137 () ValueCell!8394)

(assert (=> mapNonEmpty!28137 (= (arr!24737 _values!688) (store mapRest!28137 mapKey!28137 mapValue!28137))))

(declare-fun b!882986 () Bool)

(declare-fun res!600012 () Bool)

(declare-fun e!491461 () Bool)

(assert (=> b!882986 (=> (not res!600012) (not e!491461))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!51446 0))(
  ( (array!51447 (arr!24738 (Array (_ BitVec 32) (_ BitVec 64))) (size!25179 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51446)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!882986 (= res!600012 (and (= (select (arr!24738 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!28137 () Bool)

(assert (=> mapIsEmpty!28137 mapRes!28137))

(declare-fun b!882988 () Bool)

(declare-fun res!600013 () Bool)

(assert (=> b!882988 (=> (not res!600013) (not e!491461))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51446 (_ BitVec 32)) Bool)

(assert (=> b!882988 (= res!600013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!882989 () Bool)

(declare-fun res!600006 () Bool)

(assert (=> b!882989 (=> (not res!600006) (not e!491461))))

(declare-datatypes ((List!17661 0))(
  ( (Nil!17658) (Cons!17657 (h!18788 (_ BitVec 64)) (t!24894 List!17661)) )
))
(declare-fun arrayNoDuplicates!0 (array!51446 (_ BitVec 32) List!17661) Bool)

(assert (=> b!882989 (= res!600006 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17658))))

(declare-fun b!882990 () Bool)

(declare-fun e!491460 () Bool)

(declare-fun e!491455 () Bool)

(assert (=> b!882990 (= e!491460 (and e!491455 mapRes!28137))))

(declare-fun condMapEmpty!28137 () Bool)

(declare-fun mapDefault!28137 () ValueCell!8394)

(assert (=> b!882990 (= condMapEmpty!28137 (= (arr!24737 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8394)) mapDefault!28137)))))

(declare-fun b!882991 () Bool)

(declare-fun res!600004 () Bool)

(assert (=> b!882991 (=> (not res!600004) (not e!491461))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!882991 (= res!600004 (validMask!0 mask!1196))))

(declare-fun b!882992 () Bool)

(declare-fun e!491457 () Bool)

(declare-fun e!491459 () Bool)

(assert (=> b!882992 (= e!491457 e!491459)))

(declare-fun res!600003 () Bool)

(assert (=> b!882992 (=> res!600003 e!491459)))

(assert (=> b!882992 (= res!600003 (not (= (select (arr!24738 _keys!868) from!1053) k0!854)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11794 0))(
  ( (tuple2!11795 (_1!5907 (_ BitVec 64)) (_2!5907 V!28603)) )
))
(declare-datatypes ((List!17662 0))(
  ( (Nil!17659) (Cons!17658 (h!18789 tuple2!11794) (t!24895 List!17662)) )
))
(declare-datatypes ((ListLongMap!10577 0))(
  ( (ListLongMap!10578 (toList!5304 List!17662)) )
))
(declare-fun lt!399582 () ListLongMap!10577)

(declare-fun lt!399577 () ListLongMap!10577)

(declare-fun +!2509 (ListLongMap!10577 tuple2!11794) ListLongMap!10577)

(declare-fun get!13045 (ValueCell!8394 V!28603) V!28603)

(declare-fun dynLambda!1266 (Int (_ BitVec 64)) V!28603)

(assert (=> b!882992 (= lt!399582 (+!2509 lt!399577 (tuple2!11795 (select (arr!24738 _keys!868) from!1053) (get!13045 (select (arr!24737 _values!688) from!1053) (dynLambda!1266 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882993 () Bool)

(declare-fun e!491458 () Bool)

(assert (=> b!882993 (= e!491461 e!491458)))

(declare-fun res!600009 () Bool)

(assert (=> b!882993 (=> (not res!600009) (not e!491458))))

(assert (=> b!882993 (= res!600009 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!399581 () array!51444)

(declare-fun minValue!654 () V!28603)

(declare-fun zeroValue!654 () V!28603)

(declare-fun getCurrentListMapNoExtraKeys!3261 (array!51446 array!51444 (_ BitVec 32) (_ BitVec 32) V!28603 V!28603 (_ BitVec 32) Int) ListLongMap!10577)

(assert (=> b!882993 (= lt!399582 (getCurrentListMapNoExtraKeys!3261 _keys!868 lt!399581 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28603)

(assert (=> b!882993 (= lt!399581 (array!51445 (store (arr!24737 _values!688) i!612 (ValueCellFull!8394 v!557)) (size!25178 _values!688)))))

(declare-fun lt!399578 () ListLongMap!10577)

(assert (=> b!882993 (= lt!399578 (getCurrentListMapNoExtraKeys!3261 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!882994 () Bool)

(assert (=> b!882994 (= e!491459 true)))

(assert (=> b!882994 false))

(declare-datatypes ((Unit!30092 0))(
  ( (Unit!30093) )
))
(declare-fun lt!399583 () Unit!30092)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!51446 (_ BitVec 64) (_ BitVec 32) List!17661) Unit!30092)

(assert (=> b!882994 (= lt!399583 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17658))))

(declare-fun arrayContainsKey!0 (array!51446 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!882994 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!399586 () Unit!30092)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51446 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30092)

(assert (=> b!882994 (= lt!399586 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!882994 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17658)))

(declare-fun lt!399580 () Unit!30092)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51446 (_ BitVec 32) (_ BitVec 32)) Unit!30092)

(assert (=> b!882994 (= lt!399580 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!882995 () Bool)

(declare-fun tp_is_empty!17667 () Bool)

(assert (=> b!882995 (= e!491462 tp_is_empty!17667)))

(declare-fun b!882996 () Bool)

(declare-fun res!600007 () Bool)

(assert (=> b!882996 (=> (not res!600007) (not e!491461))))

(assert (=> b!882996 (= res!600007 (and (= (size!25178 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25179 _keys!868) (size!25178 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!882997 () Bool)

(declare-fun res!600010 () Bool)

(assert (=> b!882997 (=> (not res!600010) (not e!491461))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!882997 (= res!600010 (validKeyInArray!0 k0!854))))

(declare-fun res!600005 () Bool)

(assert (=> start!74932 (=> (not res!600005) (not e!491461))))

(assert (=> start!74932 (= res!600005 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25179 _keys!868))))))

(assert (=> start!74932 e!491461))

(assert (=> start!74932 tp_is_empty!17667))

(assert (=> start!74932 true))

(assert (=> start!74932 tp!53972))

(declare-fun array_inv!19460 (array!51446) Bool)

(assert (=> start!74932 (array_inv!19460 _keys!868)))

(declare-fun array_inv!19461 (array!51444) Bool)

(assert (=> start!74932 (and (array_inv!19461 _values!688) e!491460)))

(declare-fun b!882987 () Bool)

(declare-fun res!600008 () Bool)

(assert (=> b!882987 (=> (not res!600008) (not e!491461))))

(assert (=> b!882987 (= res!600008 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25179 _keys!868))))))

(declare-fun b!882998 () Bool)

(assert (=> b!882998 (= e!491458 (not e!491457))))

(declare-fun res!600011 () Bool)

(assert (=> b!882998 (=> res!600011 e!491457)))

(assert (=> b!882998 (= res!600011 (not (validKeyInArray!0 (select (arr!24738 _keys!868) from!1053))))))

(declare-fun lt!399579 () ListLongMap!10577)

(assert (=> b!882998 (= lt!399579 lt!399577)))

(declare-fun lt!399584 () ListLongMap!10577)

(assert (=> b!882998 (= lt!399577 (+!2509 lt!399584 (tuple2!11795 k0!854 v!557)))))

(assert (=> b!882998 (= lt!399579 (getCurrentListMapNoExtraKeys!3261 _keys!868 lt!399581 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!882998 (= lt!399584 (getCurrentListMapNoExtraKeys!3261 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!399585 () Unit!30092)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!734 (array!51446 array!51444 (_ BitVec 32) (_ BitVec 32) V!28603 V!28603 (_ BitVec 32) (_ BitVec 64) V!28603 (_ BitVec 32) Int) Unit!30092)

(assert (=> b!882998 (= lt!399585 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!734 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!882999 () Bool)

(assert (=> b!882999 (= e!491455 tp_is_empty!17667)))

(assert (= (and start!74932 res!600005) b!882991))

(assert (= (and b!882991 res!600004) b!882996))

(assert (= (and b!882996 res!600007) b!882988))

(assert (= (and b!882988 res!600013) b!882989))

(assert (= (and b!882989 res!600006) b!882987))

(assert (= (and b!882987 res!600008) b!882997))

(assert (= (and b!882997 res!600010) b!882986))

(assert (= (and b!882986 res!600012) b!882993))

(assert (= (and b!882993 res!600009) b!882998))

(assert (= (and b!882998 (not res!600011)) b!882992))

(assert (= (and b!882992 (not res!600003)) b!882994))

(assert (= (and b!882990 condMapEmpty!28137) mapIsEmpty!28137))

(assert (= (and b!882990 (not condMapEmpty!28137)) mapNonEmpty!28137))

(get-info :version)

(assert (= (and mapNonEmpty!28137 ((_ is ValueCellFull!8394) mapValue!28137)) b!882995))

(assert (= (and b!882990 ((_ is ValueCellFull!8394) mapDefault!28137)) b!882999))

(assert (= start!74932 b!882990))

(declare-fun b_lambda!12731 () Bool)

(assert (=> (not b_lambda!12731) (not b!882992)))

(declare-fun t!24893 () Bool)

(declare-fun tb!5089 () Bool)

(assert (=> (and start!74932 (= defaultEntry!696 defaultEntry!696) t!24893) tb!5089))

(declare-fun result!9805 () Bool)

(assert (=> tb!5089 (= result!9805 tp_is_empty!17667)))

(assert (=> b!882992 t!24893))

(declare-fun b_and!25565 () Bool)

(assert (= b_and!25563 (and (=> t!24893 result!9805) b_and!25565)))

(declare-fun m!823117 () Bool)

(assert (=> b!882993 m!823117))

(declare-fun m!823119 () Bool)

(assert (=> b!882993 m!823119))

(declare-fun m!823121 () Bool)

(assert (=> b!882993 m!823121))

(declare-fun m!823123 () Bool)

(assert (=> b!882992 m!823123))

(declare-fun m!823125 () Bool)

(assert (=> b!882992 m!823125))

(declare-fun m!823127 () Bool)

(assert (=> b!882992 m!823127))

(declare-fun m!823129 () Bool)

(assert (=> b!882992 m!823129))

(assert (=> b!882992 m!823125))

(declare-fun m!823131 () Bool)

(assert (=> b!882992 m!823131))

(assert (=> b!882992 m!823127))

(declare-fun m!823133 () Bool)

(assert (=> b!882991 m!823133))

(declare-fun m!823135 () Bool)

(assert (=> b!882988 m!823135))

(declare-fun m!823137 () Bool)

(assert (=> b!882998 m!823137))

(assert (=> b!882998 m!823131))

(declare-fun m!823139 () Bool)

(assert (=> b!882998 m!823139))

(assert (=> b!882998 m!823131))

(declare-fun m!823141 () Bool)

(assert (=> b!882998 m!823141))

(declare-fun m!823143 () Bool)

(assert (=> b!882998 m!823143))

(declare-fun m!823145 () Bool)

(assert (=> b!882998 m!823145))

(declare-fun m!823147 () Bool)

(assert (=> b!882997 m!823147))

(declare-fun m!823149 () Bool)

(assert (=> mapNonEmpty!28137 m!823149))

(declare-fun m!823151 () Bool)

(assert (=> b!882986 m!823151))

(declare-fun m!823153 () Bool)

(assert (=> start!74932 m!823153))

(declare-fun m!823155 () Bool)

(assert (=> start!74932 m!823155))

(declare-fun m!823157 () Bool)

(assert (=> b!882994 m!823157))

(declare-fun m!823159 () Bool)

(assert (=> b!882994 m!823159))

(declare-fun m!823161 () Bool)

(assert (=> b!882994 m!823161))

(declare-fun m!823163 () Bool)

(assert (=> b!882994 m!823163))

(declare-fun m!823165 () Bool)

(assert (=> b!882994 m!823165))

(declare-fun m!823167 () Bool)

(assert (=> b!882989 m!823167))

(check-sat (not b!882997) (not mapNonEmpty!28137) (not b!882988) tp_is_empty!17667 (not b!882991) (not b!882994) (not start!74932) (not b_next!15423) (not b_lambda!12731) (not b!882993) (not b!882998) (not b!882992) b_and!25565 (not b!882989))
(check-sat b_and!25565 (not b_next!15423))
