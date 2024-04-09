; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111944 () Bool)

(assert start!111944)

(declare-fun b_free!30507 () Bool)

(declare-fun b_next!30507 () Bool)

(assert (=> start!111944 (= b_free!30507 (not b_next!30507))))

(declare-fun tp!107002 () Bool)

(declare-fun b_and!49119 () Bool)

(assert (=> start!111944 (= tp!107002 b_and!49119)))

(declare-fun b!1326052 () Bool)

(declare-fun res!880188 () Bool)

(declare-fun e!755873 () Bool)

(assert (=> b!1326052 (=> (not res!880188) (not e!755873))))

(declare-datatypes ((array!89521 0))(
  ( (array!89522 (arr!43229 (Array (_ BitVec 32) (_ BitVec 64))) (size!43780 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89521)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89521 (_ BitVec 32)) Bool)

(assert (=> b!1326052 (= res!880188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1326053 () Bool)

(declare-fun e!755875 () Bool)

(declare-fun tp_is_empty!36327 () Bool)

(assert (=> b!1326053 (= e!755875 tp_is_empty!36327)))

(declare-fun b!1326054 () Bool)

(assert (=> b!1326054 (= e!755873 (not true))))

(declare-datatypes ((V!53539 0))(
  ( (V!53540 (val!18238 Int)) )
))
(declare-datatypes ((tuple2!23678 0))(
  ( (tuple2!23679 (_1!11849 (_ BitVec 64)) (_2!11849 V!53539)) )
))
(declare-datatypes ((List!30846 0))(
  ( (Nil!30843) (Cons!30842 (h!32051 tuple2!23678) (t!44831 List!30846)) )
))
(declare-datatypes ((ListLongMap!21347 0))(
  ( (ListLongMap!21348 (toList!10689 List!30846)) )
))
(declare-fun lt!589883 () ListLongMap!21347)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun contains!8782 (ListLongMap!21347 (_ BitVec 64)) Bool)

(assert (=> b!1326054 (contains!8782 lt!589883 k0!1164)))

(declare-fun zeroValue!1279 () V!53539)

(declare-datatypes ((Unit!43614 0))(
  ( (Unit!43615) )
))
(declare-fun lt!589882 () Unit!43614)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!214 ((_ BitVec 64) (_ BitVec 64) V!53539 ListLongMap!21347) Unit!43614)

(assert (=> b!1326054 (= lt!589882 (lemmaInListMapAfterAddingDiffThenInBefore!214 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589883))))

(declare-fun lt!589885 () ListLongMap!21347)

(assert (=> b!1326054 (contains!8782 lt!589885 k0!1164)))

(declare-fun minValue!1279 () V!53539)

(declare-fun lt!589884 () Unit!43614)

(assert (=> b!1326054 (= lt!589884 (lemmaInListMapAfterAddingDiffThenInBefore!214 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589885))))

(declare-fun +!4604 (ListLongMap!21347 tuple2!23678) ListLongMap!21347)

(assert (=> b!1326054 (= lt!589885 (+!4604 lt!589883 (tuple2!23679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17265 0))(
  ( (ValueCellFull!17265 (v!20869 V!53539)) (EmptyCell!17265) )
))
(declare-datatypes ((array!89523 0))(
  ( (array!89524 (arr!43230 (Array (_ BitVec 32) ValueCell!17265)) (size!43781 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89523)

(declare-fun defaultEntry!1340 () Int)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6322 (array!89521 array!89523 (_ BitVec 32) (_ BitVec 32) V!53539 V!53539 (_ BitVec 32) Int) ListLongMap!21347)

(declare-fun get!21823 (ValueCell!17265 V!53539) V!53539)

(declare-fun dynLambda!3641 (Int (_ BitVec 64)) V!53539)

(assert (=> b!1326054 (= lt!589883 (+!4604 (getCurrentListMapNoExtraKeys!6322 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23679 (select (arr!43229 _keys!1609) from!2000) (get!21823 (select (arr!43230 _values!1337) from!2000) (dynLambda!3641 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1326055 () Bool)

(declare-fun res!880182 () Bool)

(assert (=> b!1326055 (=> (not res!880182) (not e!755873))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1326055 (= res!880182 (validKeyInArray!0 (select (arr!43229 _keys!1609) from!2000)))))

(declare-fun b!1326056 () Bool)

(declare-fun res!880185 () Bool)

(assert (=> b!1326056 (=> (not res!880185) (not e!755873))))

(assert (=> b!1326056 (= res!880185 (not (= (select (arr!43229 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1326057 () Bool)

(declare-fun e!755872 () Bool)

(assert (=> b!1326057 (= e!755872 tp_is_empty!36327)))

(declare-fun res!880187 () Bool)

(assert (=> start!111944 (=> (not res!880187) (not e!755873))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111944 (= res!880187 (validMask!0 mask!2019))))

(assert (=> start!111944 e!755873))

(declare-fun array_inv!32573 (array!89521) Bool)

(assert (=> start!111944 (array_inv!32573 _keys!1609)))

(assert (=> start!111944 true))

(assert (=> start!111944 tp_is_empty!36327))

(declare-fun e!755871 () Bool)

(declare-fun array_inv!32574 (array!89523) Bool)

(assert (=> start!111944 (and (array_inv!32574 _values!1337) e!755871)))

(assert (=> start!111944 tp!107002))

(declare-fun b!1326058 () Bool)

(declare-fun res!880186 () Bool)

(assert (=> b!1326058 (=> (not res!880186) (not e!755873))))

(declare-fun getCurrentListMap!5623 (array!89521 array!89523 (_ BitVec 32) (_ BitVec 32) V!53539 V!53539 (_ BitVec 32) Int) ListLongMap!21347)

(assert (=> b!1326058 (= res!880186 (contains!8782 (getCurrentListMap!5623 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun mapNonEmpty!56142 () Bool)

(declare-fun mapRes!56142 () Bool)

(declare-fun tp!107001 () Bool)

(assert (=> mapNonEmpty!56142 (= mapRes!56142 (and tp!107001 e!755872))))

(declare-fun mapKey!56142 () (_ BitVec 32))

(declare-fun mapRest!56142 () (Array (_ BitVec 32) ValueCell!17265))

(declare-fun mapValue!56142 () ValueCell!17265)

(assert (=> mapNonEmpty!56142 (= (arr!43230 _values!1337) (store mapRest!56142 mapKey!56142 mapValue!56142))))

(declare-fun b!1326059 () Bool)

(declare-fun res!880181 () Bool)

(assert (=> b!1326059 (=> (not res!880181) (not e!755873))))

(assert (=> b!1326059 (= res!880181 (and (= (size!43781 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43780 _keys!1609) (size!43781 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1326060 () Bool)

(declare-fun res!880184 () Bool)

(assert (=> b!1326060 (=> (not res!880184) (not e!755873))))

(assert (=> b!1326060 (= res!880184 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43780 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!56142 () Bool)

(assert (=> mapIsEmpty!56142 mapRes!56142))

(declare-fun b!1326061 () Bool)

(declare-fun res!880183 () Bool)

(assert (=> b!1326061 (=> (not res!880183) (not e!755873))))

(declare-datatypes ((List!30847 0))(
  ( (Nil!30844) (Cons!30843 (h!32052 (_ BitVec 64)) (t!44832 List!30847)) )
))
(declare-fun arrayNoDuplicates!0 (array!89521 (_ BitVec 32) List!30847) Bool)

(assert (=> b!1326061 (= res!880183 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30844))))

(declare-fun b!1326062 () Bool)

(assert (=> b!1326062 (= e!755871 (and e!755875 mapRes!56142))))

(declare-fun condMapEmpty!56142 () Bool)

(declare-fun mapDefault!56142 () ValueCell!17265)

(assert (=> b!1326062 (= condMapEmpty!56142 (= (arr!43230 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17265)) mapDefault!56142)))))

(assert (= (and start!111944 res!880187) b!1326059))

(assert (= (and b!1326059 res!880181) b!1326052))

(assert (= (and b!1326052 res!880188) b!1326061))

(assert (= (and b!1326061 res!880183) b!1326060))

(assert (= (and b!1326060 res!880184) b!1326058))

(assert (= (and b!1326058 res!880186) b!1326056))

(assert (= (and b!1326056 res!880185) b!1326055))

(assert (= (and b!1326055 res!880182) b!1326054))

(assert (= (and b!1326062 condMapEmpty!56142) mapIsEmpty!56142))

(assert (= (and b!1326062 (not condMapEmpty!56142)) mapNonEmpty!56142))

(get-info :version)

(assert (= (and mapNonEmpty!56142 ((_ is ValueCellFull!17265) mapValue!56142)) b!1326057))

(assert (= (and b!1326062 ((_ is ValueCellFull!17265) mapDefault!56142)) b!1326053))

(assert (= start!111944 b!1326062))

(declare-fun b_lambda!23795 () Bool)

(assert (=> (not b_lambda!23795) (not b!1326054)))

(declare-fun t!44830 () Bool)

(declare-fun tb!11789 () Bool)

(assert (=> (and start!111944 (= defaultEntry!1340 defaultEntry!1340) t!44830) tb!11789))

(declare-fun result!24627 () Bool)

(assert (=> tb!11789 (= result!24627 tp_is_empty!36327)))

(assert (=> b!1326054 t!44830))

(declare-fun b_and!49121 () Bool)

(assert (= b_and!49119 (and (=> t!44830 result!24627) b_and!49121)))

(declare-fun m!1215029 () Bool)

(assert (=> b!1326054 m!1215029))

(declare-fun m!1215031 () Bool)

(assert (=> b!1326054 m!1215031))

(declare-fun m!1215033 () Bool)

(assert (=> b!1326054 m!1215033))

(assert (=> b!1326054 m!1215031))

(declare-fun m!1215035 () Bool)

(assert (=> b!1326054 m!1215035))

(declare-fun m!1215037 () Bool)

(assert (=> b!1326054 m!1215037))

(declare-fun m!1215039 () Bool)

(assert (=> b!1326054 m!1215039))

(declare-fun m!1215041 () Bool)

(assert (=> b!1326054 m!1215041))

(assert (=> b!1326054 m!1215041))

(assert (=> b!1326054 m!1215033))

(declare-fun m!1215043 () Bool)

(assert (=> b!1326054 m!1215043))

(declare-fun m!1215045 () Bool)

(assert (=> b!1326054 m!1215045))

(declare-fun m!1215047 () Bool)

(assert (=> b!1326054 m!1215047))

(declare-fun m!1215049 () Bool)

(assert (=> b!1326054 m!1215049))

(assert (=> b!1326056 m!1215047))

(declare-fun m!1215051 () Bool)

(assert (=> b!1326061 m!1215051))

(declare-fun m!1215053 () Bool)

(assert (=> b!1326052 m!1215053))

(declare-fun m!1215055 () Bool)

(assert (=> mapNonEmpty!56142 m!1215055))

(assert (=> b!1326055 m!1215047))

(assert (=> b!1326055 m!1215047))

(declare-fun m!1215057 () Bool)

(assert (=> b!1326055 m!1215057))

(declare-fun m!1215059 () Bool)

(assert (=> start!111944 m!1215059))

(declare-fun m!1215061 () Bool)

(assert (=> start!111944 m!1215061))

(declare-fun m!1215063 () Bool)

(assert (=> start!111944 m!1215063))

(declare-fun m!1215065 () Bool)

(assert (=> b!1326058 m!1215065))

(assert (=> b!1326058 m!1215065))

(declare-fun m!1215067 () Bool)

(assert (=> b!1326058 m!1215067))

(check-sat (not b!1326061) tp_is_empty!36327 (not b!1326054) (not start!111944) (not b_next!30507) (not b_lambda!23795) b_and!49121 (not b!1326058) (not mapNonEmpty!56142) (not b!1326055) (not b!1326052))
(check-sat b_and!49121 (not b_next!30507))
