; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113122 () Bool)

(assert start!113122)

(declare-fun b_free!31137 () Bool)

(declare-fun b_next!31137 () Bool)

(assert (=> start!113122 (= b_free!31137 (not b_next!31137))))

(declare-fun tp!109216 () Bool)

(declare-fun b_and!50191 () Bool)

(assert (=> start!113122 (= tp!109216 b_and!50191)))

(declare-fun mapIsEmpty!57412 () Bool)

(declare-fun mapRes!57412 () Bool)

(assert (=> mapIsEmpty!57412 mapRes!57412))

(declare-fun b!1340396 () Bool)

(declare-fun res!889274 () Bool)

(declare-fun e!763479 () Bool)

(assert (=> b!1340396 (=> (not res!889274) (not e!763479))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91085 0))(
  ( (array!91086 (arr!43994 (Array (_ BitVec 32) (_ BitVec 64))) (size!44545 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91085)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1340396 (= res!889274 (not (= (select (arr!43994 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1340397 () Bool)

(declare-fun res!889272 () Bool)

(assert (=> b!1340397 (=> (not res!889272) (not e!763479))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54619 0))(
  ( (V!54620 (val!18643 Int)) )
))
(declare-datatypes ((ValueCell!17670 0))(
  ( (ValueCellFull!17670 (v!21289 V!54619)) (EmptyCell!17670) )
))
(declare-datatypes ((array!91087 0))(
  ( (array!91088 (arr!43995 (Array (_ BitVec 32) ValueCell!17670)) (size!44546 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91087)

(assert (=> b!1340397 (= res!889272 (and (= (size!44546 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44545 _keys!1571) (size!44546 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1340398 () Bool)

(declare-fun res!889266 () Bool)

(assert (=> b!1340398 (=> (not res!889266) (not e!763479))))

(assert (=> b!1340398 (= res!889266 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!889268 () Bool)

(assert (=> start!113122 (=> (not res!889268) (not e!763479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113122 (= res!889268 (validMask!0 mask!1977))))

(assert (=> start!113122 e!763479))

(declare-fun tp_is_empty!37137 () Bool)

(assert (=> start!113122 tp_is_empty!37137))

(assert (=> start!113122 true))

(declare-fun array_inv!33089 (array!91085) Bool)

(assert (=> start!113122 (array_inv!33089 _keys!1571)))

(declare-fun e!763481 () Bool)

(declare-fun array_inv!33090 (array!91087) Bool)

(assert (=> start!113122 (and (array_inv!33090 _values!1303) e!763481)))

(assert (=> start!113122 tp!109216))

(declare-fun b!1340399 () Bool)

(declare-fun res!889271 () Bool)

(assert (=> b!1340399 (=> (not res!889271) (not e!763479))))

(declare-datatypes ((List!31327 0))(
  ( (Nil!31324) (Cons!31323 (h!32532 (_ BitVec 64)) (t!45682 List!31327)) )
))
(declare-fun arrayNoDuplicates!0 (array!91085 (_ BitVec 32) List!31327) Bool)

(assert (=> b!1340399 (= res!889271 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31324))))

(declare-fun b!1340400 () Bool)

(declare-fun res!889269 () Bool)

(assert (=> b!1340400 (=> (not res!889269) (not e!763479))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91085 (_ BitVec 32)) Bool)

(assert (=> b!1340400 (= res!889269 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1340401 () Bool)

(declare-fun res!889273 () Bool)

(assert (=> b!1340401 (=> (not res!889273) (not e!763479))))

(declare-fun minValue!1245 () V!54619)

(declare-fun zeroValue!1245 () V!54619)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24142 0))(
  ( (tuple2!24143 (_1!12081 (_ BitVec 64)) (_2!12081 V!54619)) )
))
(declare-datatypes ((List!31328 0))(
  ( (Nil!31325) (Cons!31324 (h!32533 tuple2!24142) (t!45683 List!31328)) )
))
(declare-datatypes ((ListLongMap!21811 0))(
  ( (ListLongMap!21812 (toList!10921 List!31328)) )
))
(declare-fun contains!9033 (ListLongMap!21811 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5825 (array!91085 array!91087 (_ BitVec 32) (_ BitVec 32) V!54619 V!54619 (_ BitVec 32) Int) ListLongMap!21811)

(assert (=> b!1340401 (= res!889273 (contains!9033 (getCurrentListMap!5825 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun mapNonEmpty!57412 () Bool)

(declare-fun tp!109217 () Bool)

(declare-fun e!763477 () Bool)

(assert (=> mapNonEmpty!57412 (= mapRes!57412 (and tp!109217 e!763477))))

(declare-fun mapKey!57412 () (_ BitVec 32))

(declare-fun mapRest!57412 () (Array (_ BitVec 32) ValueCell!17670))

(declare-fun mapValue!57412 () ValueCell!17670)

(assert (=> mapNonEmpty!57412 (= (arr!43995 _values!1303) (store mapRest!57412 mapKey!57412 mapValue!57412))))

(declare-fun b!1340402 () Bool)

(assert (=> b!1340402 (= e!763479 (not true))))

(declare-fun lt!593928 () ListLongMap!21811)

(assert (=> b!1340402 (contains!9033 lt!593928 k0!1142)))

(declare-datatypes ((Unit!43923 0))(
  ( (Unit!43924) )
))
(declare-fun lt!593929 () Unit!43923)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!321 ((_ BitVec 64) (_ BitVec 64) V!54619 ListLongMap!21811) Unit!43923)

(assert (=> b!1340402 (= lt!593929 (lemmaInListMapAfterAddingDiffThenInBefore!321 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!593928))))

(declare-fun +!4729 (ListLongMap!21811 tuple2!24142) ListLongMap!21811)

(declare-fun getCurrentListMapNoExtraKeys!6452 (array!91085 array!91087 (_ BitVec 32) (_ BitVec 32) V!54619 V!54619 (_ BitVec 32) Int) ListLongMap!21811)

(declare-fun get!22236 (ValueCell!17670 V!54619) V!54619)

(declare-fun dynLambda!3766 (Int (_ BitVec 64)) V!54619)

(assert (=> b!1340402 (= lt!593928 (+!4729 (getCurrentListMapNoExtraKeys!6452 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24143 (select (arr!43994 _keys!1571) from!1960) (get!22236 (select (arr!43995 _values!1303) from!1960) (dynLambda!3766 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1340403 () Bool)

(assert (=> b!1340403 (= e!763477 tp_is_empty!37137)))

(declare-fun b!1340404 () Bool)

(declare-fun e!763478 () Bool)

(assert (=> b!1340404 (= e!763478 tp_is_empty!37137)))

(declare-fun b!1340405 () Bool)

(declare-fun res!889267 () Bool)

(assert (=> b!1340405 (=> (not res!889267) (not e!763479))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1340405 (= res!889267 (validKeyInArray!0 (select (arr!43994 _keys!1571) from!1960)))))

(declare-fun b!1340406 () Bool)

(declare-fun res!889270 () Bool)

(assert (=> b!1340406 (=> (not res!889270) (not e!763479))))

(assert (=> b!1340406 (= res!889270 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44545 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1340407 () Bool)

(assert (=> b!1340407 (= e!763481 (and e!763478 mapRes!57412))))

(declare-fun condMapEmpty!57412 () Bool)

(declare-fun mapDefault!57412 () ValueCell!17670)

(assert (=> b!1340407 (= condMapEmpty!57412 (= (arr!43995 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17670)) mapDefault!57412)))))

(assert (= (and start!113122 res!889268) b!1340397))

(assert (= (and b!1340397 res!889272) b!1340400))

(assert (= (and b!1340400 res!889269) b!1340399))

(assert (= (and b!1340399 res!889271) b!1340406))

(assert (= (and b!1340406 res!889270) b!1340401))

(assert (= (and b!1340401 res!889273) b!1340396))

(assert (= (and b!1340396 res!889274) b!1340405))

(assert (= (and b!1340405 res!889267) b!1340398))

(assert (= (and b!1340398 res!889266) b!1340402))

(assert (= (and b!1340407 condMapEmpty!57412) mapIsEmpty!57412))

(assert (= (and b!1340407 (not condMapEmpty!57412)) mapNonEmpty!57412))

(get-info :version)

(assert (= (and mapNonEmpty!57412 ((_ is ValueCellFull!17670) mapValue!57412)) b!1340403))

(assert (= (and b!1340407 ((_ is ValueCellFull!17670) mapDefault!57412)) b!1340404))

(assert (= start!113122 b!1340407))

(declare-fun b_lambda!24323 () Bool)

(assert (=> (not b_lambda!24323) (not b!1340402)))

(declare-fun t!45681 () Bool)

(declare-fun tb!12159 () Bool)

(assert (=> (and start!113122 (= defaultEntry!1306 defaultEntry!1306) t!45681) tb!12159))

(declare-fun result!25401 () Bool)

(assert (=> tb!12159 (= result!25401 tp_is_empty!37137)))

(assert (=> b!1340402 t!45681))

(declare-fun b_and!50193 () Bool)

(assert (= b_and!50191 (and (=> t!45681 result!25401) b_and!50193)))

(declare-fun m!1228187 () Bool)

(assert (=> b!1340399 m!1228187))

(declare-fun m!1228189 () Bool)

(assert (=> b!1340405 m!1228189))

(assert (=> b!1340405 m!1228189))

(declare-fun m!1228191 () Bool)

(assert (=> b!1340405 m!1228191))

(declare-fun m!1228193 () Bool)

(assert (=> b!1340402 m!1228193))

(assert (=> b!1340402 m!1228193))

(declare-fun m!1228195 () Bool)

(assert (=> b!1340402 m!1228195))

(declare-fun m!1228197 () Bool)

(assert (=> b!1340402 m!1228197))

(declare-fun m!1228199 () Bool)

(assert (=> b!1340402 m!1228199))

(assert (=> b!1340402 m!1228189))

(declare-fun m!1228201 () Bool)

(assert (=> b!1340402 m!1228201))

(assert (=> b!1340402 m!1228197))

(assert (=> b!1340402 m!1228199))

(declare-fun m!1228203 () Bool)

(assert (=> b!1340402 m!1228203))

(declare-fun m!1228205 () Bool)

(assert (=> b!1340402 m!1228205))

(assert (=> b!1340396 m!1228189))

(declare-fun m!1228207 () Bool)

(assert (=> b!1340401 m!1228207))

(assert (=> b!1340401 m!1228207))

(declare-fun m!1228209 () Bool)

(assert (=> b!1340401 m!1228209))

(declare-fun m!1228211 () Bool)

(assert (=> start!113122 m!1228211))

(declare-fun m!1228213 () Bool)

(assert (=> start!113122 m!1228213))

(declare-fun m!1228215 () Bool)

(assert (=> start!113122 m!1228215))

(declare-fun m!1228217 () Bool)

(assert (=> b!1340400 m!1228217))

(declare-fun m!1228219 () Bool)

(assert (=> mapNonEmpty!57412 m!1228219))

(check-sat (not mapNonEmpty!57412) (not b!1340401) (not b!1340405) (not b_lambda!24323) (not start!113122) (not b!1340402) (not b_next!31137) (not b!1340400) (not b!1340399) tp_is_empty!37137 b_and!50193)
(check-sat b_and!50193 (not b_next!31137))
