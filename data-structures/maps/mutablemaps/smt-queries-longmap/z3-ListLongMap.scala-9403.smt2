; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111950 () Bool)

(assert start!111950)

(declare-fun b_free!30513 () Bool)

(declare-fun b_next!30513 () Bool)

(assert (=> start!111950 (= b_free!30513 (not b_next!30513))))

(declare-fun tp!107019 () Bool)

(declare-fun b_and!49131 () Bool)

(assert (=> start!111950 (= tp!107019 b_and!49131)))

(declare-fun b!1326157 () Bool)

(declare-fun res!880254 () Bool)

(declare-fun e!755919 () Bool)

(assert (=> b!1326157 (=> (not res!880254) (not e!755919))))

(declare-datatypes ((array!89533 0))(
  ( (array!89534 (arr!43235 (Array (_ BitVec 32) (_ BitVec 64))) (size!43786 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89533)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1326157 (= res!880254 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43786 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1326158 () Bool)

(declare-fun res!880259 () Bool)

(assert (=> b!1326158 (=> (not res!880259) (not e!755919))))

(assert (=> b!1326158 (= res!880259 (not (= (select (arr!43235 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1326159 () Bool)

(declare-fun res!880256 () Bool)

(assert (=> b!1326159 (=> (not res!880256) (not e!755919))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89533 (_ BitVec 32)) Bool)

(assert (=> b!1326159 (= res!880256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!880258 () Bool)

(assert (=> start!111950 (=> (not res!880258) (not e!755919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111950 (= res!880258 (validMask!0 mask!2019))))

(assert (=> start!111950 e!755919))

(declare-fun array_inv!32577 (array!89533) Bool)

(assert (=> start!111950 (array_inv!32577 _keys!1609)))

(assert (=> start!111950 true))

(declare-fun tp_is_empty!36333 () Bool)

(assert (=> start!111950 tp_is_empty!36333))

(declare-datatypes ((V!53547 0))(
  ( (V!53548 (val!18241 Int)) )
))
(declare-datatypes ((ValueCell!17268 0))(
  ( (ValueCellFull!17268 (v!20872 V!53547)) (EmptyCell!17268) )
))
(declare-datatypes ((array!89535 0))(
  ( (array!89536 (arr!43236 (Array (_ BitVec 32) ValueCell!17268)) (size!43787 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89535)

(declare-fun e!755917 () Bool)

(declare-fun array_inv!32578 (array!89535) Bool)

(assert (=> start!111950 (and (array_inv!32578 _values!1337) e!755917)))

(assert (=> start!111950 tp!107019))

(declare-fun b!1326160 () Bool)

(declare-fun e!755918 () Bool)

(assert (=> b!1326160 (= e!755918 tp_is_empty!36333)))

(declare-fun b!1326161 () Bool)

(declare-fun e!755916 () Bool)

(assert (=> b!1326161 (= e!755916 tp_is_empty!36333)))

(declare-fun b!1326162 () Bool)

(declare-fun mapRes!56151 () Bool)

(assert (=> b!1326162 (= e!755917 (and e!755916 mapRes!56151))))

(declare-fun condMapEmpty!56151 () Bool)

(declare-fun mapDefault!56151 () ValueCell!17268)

(assert (=> b!1326162 (= condMapEmpty!56151 (= (arr!43236 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17268)) mapDefault!56151)))))

(declare-fun mapIsEmpty!56151 () Bool)

(assert (=> mapIsEmpty!56151 mapRes!56151))

(declare-fun b!1326163 () Bool)

(declare-fun res!880257 () Bool)

(assert (=> b!1326163 (=> (not res!880257) (not e!755919))))

(declare-fun zeroValue!1279 () V!53547)

(declare-fun minValue!1279 () V!53547)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23684 0))(
  ( (tuple2!23685 (_1!11852 (_ BitVec 64)) (_2!11852 V!53547)) )
))
(declare-datatypes ((List!30851 0))(
  ( (Nil!30848) (Cons!30847 (h!32056 tuple2!23684) (t!44842 List!30851)) )
))
(declare-datatypes ((ListLongMap!21353 0))(
  ( (ListLongMap!21354 (toList!10692 List!30851)) )
))
(declare-fun contains!8785 (ListLongMap!21353 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5625 (array!89533 array!89535 (_ BitVec 32) (_ BitVec 32) V!53547 V!53547 (_ BitVec 32) Int) ListLongMap!21353)

(assert (=> b!1326163 (= res!880257 (contains!8785 (getCurrentListMap!5625 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1326164 () Bool)

(declare-fun res!880260 () Bool)

(assert (=> b!1326164 (=> (not res!880260) (not e!755919))))

(assert (=> b!1326164 (= res!880260 (and (= (size!43787 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43786 _keys!1609) (size!43787 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1326165 () Bool)

(assert (=> b!1326165 (= e!755919 (not (not (= k0!1164 (select (arr!43235 _keys!1609) from!2000)))))))

(declare-fun lt!589921 () ListLongMap!21353)

(assert (=> b!1326165 (contains!8785 lt!589921 k0!1164)))

(declare-datatypes ((Unit!43620 0))(
  ( (Unit!43621) )
))
(declare-fun lt!589918 () Unit!43620)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!217 ((_ BitVec 64) (_ BitVec 64) V!53547 ListLongMap!21353) Unit!43620)

(assert (=> b!1326165 (= lt!589918 (lemmaInListMapAfterAddingDiffThenInBefore!217 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589921))))

(declare-fun lt!589919 () ListLongMap!21353)

(assert (=> b!1326165 (contains!8785 lt!589919 k0!1164)))

(declare-fun lt!589920 () Unit!43620)

(assert (=> b!1326165 (= lt!589920 (lemmaInListMapAfterAddingDiffThenInBefore!217 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589919))))

(declare-fun +!4607 (ListLongMap!21353 tuple2!23684) ListLongMap!21353)

(assert (=> b!1326165 (= lt!589919 (+!4607 lt!589921 (tuple2!23685 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun getCurrentListMapNoExtraKeys!6325 (array!89533 array!89535 (_ BitVec 32) (_ BitVec 32) V!53547 V!53547 (_ BitVec 32) Int) ListLongMap!21353)

(declare-fun get!21828 (ValueCell!17268 V!53547) V!53547)

(declare-fun dynLambda!3644 (Int (_ BitVec 64)) V!53547)

(assert (=> b!1326165 (= lt!589921 (+!4607 (getCurrentListMapNoExtraKeys!6325 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23685 (select (arr!43235 _keys!1609) from!2000) (get!21828 (select (arr!43236 _values!1337) from!2000) (dynLambda!3644 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1326166 () Bool)

(declare-fun res!880255 () Bool)

(assert (=> b!1326166 (=> (not res!880255) (not e!755919))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1326166 (= res!880255 (validKeyInArray!0 (select (arr!43235 _keys!1609) from!2000)))))

(declare-fun b!1326167 () Bool)

(declare-fun res!880253 () Bool)

(assert (=> b!1326167 (=> (not res!880253) (not e!755919))))

(declare-datatypes ((List!30852 0))(
  ( (Nil!30849) (Cons!30848 (h!32057 (_ BitVec 64)) (t!44843 List!30852)) )
))
(declare-fun arrayNoDuplicates!0 (array!89533 (_ BitVec 32) List!30852) Bool)

(assert (=> b!1326167 (= res!880253 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30849))))

(declare-fun mapNonEmpty!56151 () Bool)

(declare-fun tp!107020 () Bool)

(assert (=> mapNonEmpty!56151 (= mapRes!56151 (and tp!107020 e!755918))))

(declare-fun mapRest!56151 () (Array (_ BitVec 32) ValueCell!17268))

(declare-fun mapValue!56151 () ValueCell!17268)

(declare-fun mapKey!56151 () (_ BitVec 32))

(assert (=> mapNonEmpty!56151 (= (arr!43236 _values!1337) (store mapRest!56151 mapKey!56151 mapValue!56151))))

(assert (= (and start!111950 res!880258) b!1326164))

(assert (= (and b!1326164 res!880260) b!1326159))

(assert (= (and b!1326159 res!880256) b!1326167))

(assert (= (and b!1326167 res!880253) b!1326157))

(assert (= (and b!1326157 res!880254) b!1326163))

(assert (= (and b!1326163 res!880257) b!1326158))

(assert (= (and b!1326158 res!880259) b!1326166))

(assert (= (and b!1326166 res!880255) b!1326165))

(assert (= (and b!1326162 condMapEmpty!56151) mapIsEmpty!56151))

(assert (= (and b!1326162 (not condMapEmpty!56151)) mapNonEmpty!56151))

(get-info :version)

(assert (= (and mapNonEmpty!56151 ((_ is ValueCellFull!17268) mapValue!56151)) b!1326160))

(assert (= (and b!1326162 ((_ is ValueCellFull!17268) mapDefault!56151)) b!1326161))

(assert (= start!111950 b!1326162))

(declare-fun b_lambda!23801 () Bool)

(assert (=> (not b_lambda!23801) (not b!1326165)))

(declare-fun t!44841 () Bool)

(declare-fun tb!11795 () Bool)

(assert (=> (and start!111950 (= defaultEntry!1340 defaultEntry!1340) t!44841) tb!11795))

(declare-fun result!24639 () Bool)

(assert (=> tb!11795 (= result!24639 tp_is_empty!36333)))

(assert (=> b!1326165 t!44841))

(declare-fun b_and!49133 () Bool)

(assert (= b_and!49131 (and (=> t!44841 result!24639) b_and!49133)))

(declare-fun m!1215149 () Bool)

(assert (=> b!1326165 m!1215149))

(declare-fun m!1215151 () Bool)

(assert (=> b!1326165 m!1215151))

(declare-fun m!1215153 () Bool)

(assert (=> b!1326165 m!1215153))

(declare-fun m!1215155 () Bool)

(assert (=> b!1326165 m!1215155))

(assert (=> b!1326165 m!1215151))

(declare-fun m!1215157 () Bool)

(assert (=> b!1326165 m!1215157))

(declare-fun m!1215159 () Bool)

(assert (=> b!1326165 m!1215159))

(declare-fun m!1215161 () Bool)

(assert (=> b!1326165 m!1215161))

(assert (=> b!1326165 m!1215159))

(assert (=> b!1326165 m!1215155))

(declare-fun m!1215163 () Bool)

(assert (=> b!1326165 m!1215163))

(declare-fun m!1215165 () Bool)

(assert (=> b!1326165 m!1215165))

(declare-fun m!1215167 () Bool)

(assert (=> b!1326165 m!1215167))

(declare-fun m!1215169 () Bool)

(assert (=> b!1326165 m!1215169))

(declare-fun m!1215171 () Bool)

(assert (=> start!111950 m!1215171))

(declare-fun m!1215173 () Bool)

(assert (=> start!111950 m!1215173))

(declare-fun m!1215175 () Bool)

(assert (=> start!111950 m!1215175))

(assert (=> b!1326166 m!1215165))

(assert (=> b!1326166 m!1215165))

(declare-fun m!1215177 () Bool)

(assert (=> b!1326166 m!1215177))

(declare-fun m!1215179 () Bool)

(assert (=> mapNonEmpty!56151 m!1215179))

(assert (=> b!1326158 m!1215165))

(declare-fun m!1215181 () Bool)

(assert (=> b!1326167 m!1215181))

(declare-fun m!1215183 () Bool)

(assert (=> b!1326159 m!1215183))

(declare-fun m!1215185 () Bool)

(assert (=> b!1326163 m!1215185))

(assert (=> b!1326163 m!1215185))

(declare-fun m!1215187 () Bool)

(assert (=> b!1326163 m!1215187))

(check-sat (not b!1326166) (not b!1326165) b_and!49133 (not start!111950) (not b!1326163) (not b_next!30513) (not b_lambda!23801) (not mapNonEmpty!56151) (not b!1326167) (not b!1326159) tp_is_empty!36333)
(check-sat b_and!49133 (not b_next!30513))
