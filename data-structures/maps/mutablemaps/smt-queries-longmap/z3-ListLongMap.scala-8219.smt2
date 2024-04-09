; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100260 () Bool)

(assert start!100260)

(declare-fun mapIsEmpty!47273 () Bool)

(declare-fun mapRes!47273 () Bool)

(assert (=> mapIsEmpty!47273 mapRes!47273))

(declare-fun b!1195178 () Bool)

(declare-fun res!795360 () Bool)

(declare-fun e!679219 () Bool)

(assert (=> b!1195178 (=> (not res!795360) (not e!679219))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1195178 (= res!795360 (validKeyInArray!0 k0!934))))

(declare-fun res!795352 () Bool)

(assert (=> start!100260 (=> (not res!795352) (not e!679219))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77346 0))(
  ( (array!77347 (arr!37316 (Array (_ BitVec 32) (_ BitVec 64))) (size!37853 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77346)

(assert (=> start!100260 (= res!795352 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37853 _keys!1208))))))

(assert (=> start!100260 e!679219))

(declare-fun array_inv!28342 (array!77346) Bool)

(assert (=> start!100260 (array_inv!28342 _keys!1208)))

(assert (=> start!100260 true))

(declare-datatypes ((V!45515 0))(
  ( (V!45516 (val!15202 Int)) )
))
(declare-datatypes ((ValueCell!14436 0))(
  ( (ValueCellFull!14436 (v!17841 V!45515)) (EmptyCell!14436) )
))
(declare-datatypes ((array!77348 0))(
  ( (array!77349 (arr!37317 (Array (_ BitVec 32) ValueCell!14436)) (size!37854 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77348)

(declare-fun e!679221 () Bool)

(declare-fun array_inv!28343 (array!77348) Bool)

(assert (=> start!100260 (and (array_inv!28343 _values!996) e!679221)))

(declare-fun b!1195179 () Bool)

(declare-fun e!679222 () Bool)

(declare-fun tp_is_empty!30291 () Bool)

(assert (=> b!1195179 (= e!679222 tp_is_empty!30291)))

(declare-fun b!1195180 () Bool)

(declare-fun e!679218 () Bool)

(assert (=> b!1195180 (= e!679218 tp_is_empty!30291)))

(declare-fun b!1195181 () Bool)

(declare-fun res!795359 () Bool)

(assert (=> b!1195181 (=> (not res!795359) (not e!679219))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1195181 (= res!795359 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37853 _keys!1208))))))

(declare-fun b!1195182 () Bool)

(assert (=> b!1195182 (= e!679221 (and e!679222 mapRes!47273))))

(declare-fun condMapEmpty!47273 () Bool)

(declare-fun mapDefault!47273 () ValueCell!14436)

(assert (=> b!1195182 (= condMapEmpty!47273 (= (arr!37317 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14436)) mapDefault!47273)))))

(declare-fun b!1195183 () Bool)

(declare-fun res!795358 () Bool)

(assert (=> b!1195183 (=> (not res!795358) (not e!679219))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1195183 (= res!795358 (and (= (size!37854 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37853 _keys!1208) (size!37854 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!47273 () Bool)

(declare-fun tp!89884 () Bool)

(assert (=> mapNonEmpty!47273 (= mapRes!47273 (and tp!89884 e!679218))))

(declare-fun mapRest!47273 () (Array (_ BitVec 32) ValueCell!14436))

(declare-fun mapKey!47273 () (_ BitVec 32))

(declare-fun mapValue!47273 () ValueCell!14436)

(assert (=> mapNonEmpty!47273 (= (arr!37317 _values!996) (store mapRest!47273 mapKey!47273 mapValue!47273))))

(declare-fun b!1195184 () Bool)

(declare-fun res!795357 () Bool)

(declare-fun e!679220 () Bool)

(assert (=> b!1195184 (=> (not res!795357) (not e!679220))))

(declare-fun lt!542843 () array!77346)

(declare-datatypes ((List!26435 0))(
  ( (Nil!26432) (Cons!26431 (h!27640 (_ BitVec 64)) (t!39113 List!26435)) )
))
(declare-fun arrayNoDuplicates!0 (array!77346 (_ BitVec 32) List!26435) Bool)

(assert (=> b!1195184 (= res!795357 (arrayNoDuplicates!0 lt!542843 #b00000000000000000000000000000000 Nil!26432))))

(declare-fun b!1195185 () Bool)

(declare-fun res!795356 () Bool)

(assert (=> b!1195185 (=> (not res!795356) (not e!679219))))

(assert (=> b!1195185 (= res!795356 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26432))))

(declare-fun b!1195186 () Bool)

(declare-fun res!795355 () Bool)

(assert (=> b!1195186 (=> (not res!795355) (not e!679219))))

(assert (=> b!1195186 (= res!795355 (= (select (arr!37316 _keys!1208) i!673) k0!934))))

(declare-fun b!1195187 () Bool)

(assert (=> b!1195187 (= e!679219 e!679220)))

(declare-fun res!795361 () Bool)

(assert (=> b!1195187 (=> (not res!795361) (not e!679220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77346 (_ BitVec 32)) Bool)

(assert (=> b!1195187 (= res!795361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542843 mask!1564))))

(assert (=> b!1195187 (= lt!542843 (array!77347 (store (arr!37316 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37853 _keys!1208)))))

(declare-fun b!1195188 () Bool)

(declare-fun res!795353 () Bool)

(assert (=> b!1195188 (=> (not res!795353) (not e!679219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1195188 (= res!795353 (validMask!0 mask!1564))))

(declare-fun b!1195189 () Bool)

(declare-fun res!795354 () Bool)

(assert (=> b!1195189 (=> (not res!795354) (not e!679219))))

(assert (=> b!1195189 (= res!795354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1195190 () Bool)

(assert (=> b!1195190 (= e!679220 (not true))))

(declare-fun arrayContainsKey!0 (array!77346 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1195190 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39566 0))(
  ( (Unit!39567) )
))
(declare-fun lt!542844 () Unit!39566)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77346 (_ BitVec 64) (_ BitVec 32)) Unit!39566)

(assert (=> b!1195190 (= lt!542844 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!100260 res!795352) b!1195188))

(assert (= (and b!1195188 res!795353) b!1195183))

(assert (= (and b!1195183 res!795358) b!1195189))

(assert (= (and b!1195189 res!795354) b!1195185))

(assert (= (and b!1195185 res!795356) b!1195181))

(assert (= (and b!1195181 res!795359) b!1195178))

(assert (= (and b!1195178 res!795360) b!1195186))

(assert (= (and b!1195186 res!795355) b!1195187))

(assert (= (and b!1195187 res!795361) b!1195184))

(assert (= (and b!1195184 res!795357) b!1195190))

(assert (= (and b!1195182 condMapEmpty!47273) mapIsEmpty!47273))

(assert (= (and b!1195182 (not condMapEmpty!47273)) mapNonEmpty!47273))

(get-info :version)

(assert (= (and mapNonEmpty!47273 ((_ is ValueCellFull!14436) mapValue!47273)) b!1195180))

(assert (= (and b!1195182 ((_ is ValueCellFull!14436) mapDefault!47273)) b!1195179))

(assert (= start!100260 b!1195182))

(declare-fun m!1102867 () Bool)

(assert (=> b!1195187 m!1102867))

(declare-fun m!1102869 () Bool)

(assert (=> b!1195187 m!1102869))

(declare-fun m!1102871 () Bool)

(assert (=> b!1195190 m!1102871))

(declare-fun m!1102873 () Bool)

(assert (=> b!1195190 m!1102873))

(declare-fun m!1102875 () Bool)

(assert (=> b!1195178 m!1102875))

(declare-fun m!1102877 () Bool)

(assert (=> start!100260 m!1102877))

(declare-fun m!1102879 () Bool)

(assert (=> start!100260 m!1102879))

(declare-fun m!1102881 () Bool)

(assert (=> b!1195185 m!1102881))

(declare-fun m!1102883 () Bool)

(assert (=> b!1195184 m!1102883))

(declare-fun m!1102885 () Bool)

(assert (=> b!1195186 m!1102885))

(declare-fun m!1102887 () Bool)

(assert (=> mapNonEmpty!47273 m!1102887))

(declare-fun m!1102889 () Bool)

(assert (=> b!1195189 m!1102889))

(declare-fun m!1102891 () Bool)

(assert (=> b!1195188 m!1102891))

(check-sat (not b!1195178) (not b!1195190) (not b!1195188) (not mapNonEmpty!47273) (not b!1195187) (not b!1195189) (not b!1195184) (not start!100260) tp_is_empty!30291 (not b!1195185))
(check-sat)
