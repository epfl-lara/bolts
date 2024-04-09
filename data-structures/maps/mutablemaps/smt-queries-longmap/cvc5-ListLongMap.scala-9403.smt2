; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111948 () Bool)

(assert start!111948)

(declare-fun b_free!30511 () Bool)

(declare-fun b_next!30511 () Bool)

(assert (=> start!111948 (= b_free!30511 (not b_next!30511))))

(declare-fun tp!107013 () Bool)

(declare-fun b_and!49127 () Bool)

(assert (=> start!111948 (= tp!107013 b_and!49127)))

(declare-datatypes ((array!89529 0))(
  ( (array!89530 (arr!43233 (Array (_ BitVec 32) (_ BitVec 64))) (size!43784 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89529)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun b!1326122 () Bool)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun e!755903 () Bool)

(assert (=> b!1326122 (= e!755903 (not (not (= k!1164 (select (arr!43233 _keys!1609) from!2000)))))))

(declare-datatypes ((V!53545 0))(
  ( (V!53546 (val!18240 Int)) )
))
(declare-datatypes ((tuple2!23682 0))(
  ( (tuple2!23683 (_1!11851 (_ BitVec 64)) (_2!11851 V!53545)) )
))
(declare-datatypes ((List!30849 0))(
  ( (Nil!30846) (Cons!30845 (h!32054 tuple2!23682) (t!44838 List!30849)) )
))
(declare-datatypes ((ListLongMap!21351 0))(
  ( (ListLongMap!21352 (toList!10691 List!30849)) )
))
(declare-fun lt!589906 () ListLongMap!21351)

(declare-fun contains!8784 (ListLongMap!21351 (_ BitVec 64)) Bool)

(assert (=> b!1326122 (contains!8784 lt!589906 k!1164)))

(declare-fun zeroValue!1279 () V!53545)

(declare-datatypes ((Unit!43618 0))(
  ( (Unit!43619) )
))
(declare-fun lt!589909 () Unit!43618)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!216 ((_ BitVec 64) (_ BitVec 64) V!53545 ListLongMap!21351) Unit!43618)

(assert (=> b!1326122 (= lt!589909 (lemmaInListMapAfterAddingDiffThenInBefore!216 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589906))))

(declare-fun lt!589907 () ListLongMap!21351)

(assert (=> b!1326122 (contains!8784 lt!589907 k!1164)))

(declare-fun minValue!1279 () V!53545)

(declare-fun lt!589908 () Unit!43618)

(assert (=> b!1326122 (= lt!589908 (lemmaInListMapAfterAddingDiffThenInBefore!216 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589907))))

(declare-fun +!4606 (ListLongMap!21351 tuple2!23682) ListLongMap!21351)

(assert (=> b!1326122 (= lt!589907 (+!4606 lt!589906 (tuple2!23683 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17267 0))(
  ( (ValueCellFull!17267 (v!20871 V!53545)) (EmptyCell!17267) )
))
(declare-datatypes ((array!89531 0))(
  ( (array!89532 (arr!43234 (Array (_ BitVec 32) ValueCell!17267)) (size!43785 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89531)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6324 (array!89529 array!89531 (_ BitVec 32) (_ BitVec 32) V!53545 V!53545 (_ BitVec 32) Int) ListLongMap!21351)

(declare-fun get!21827 (ValueCell!17267 V!53545) V!53545)

(declare-fun dynLambda!3643 (Int (_ BitVec 64)) V!53545)

(assert (=> b!1326122 (= lt!589906 (+!4606 (getCurrentListMapNoExtraKeys!6324 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23683 (select (arr!43233 _keys!1609) from!2000) (get!21827 (select (arr!43234 _values!1337) from!2000) (dynLambda!3643 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapNonEmpty!56148 () Bool)

(declare-fun mapRes!56148 () Bool)

(declare-fun tp!107014 () Bool)

(declare-fun e!755902 () Bool)

(assert (=> mapNonEmpty!56148 (= mapRes!56148 (and tp!107014 e!755902))))

(declare-fun mapValue!56148 () ValueCell!17267)

(declare-fun mapRest!56148 () (Array (_ BitVec 32) ValueCell!17267))

(declare-fun mapKey!56148 () (_ BitVec 32))

(assert (=> mapNonEmpty!56148 (= (arr!43234 _values!1337) (store mapRest!56148 mapKey!56148 mapValue!56148))))

(declare-fun mapIsEmpty!56148 () Bool)

(assert (=> mapIsEmpty!56148 mapRes!56148))

(declare-fun b!1326123 () Bool)

(declare-fun res!880235 () Bool)

(assert (=> b!1326123 (=> (not res!880235) (not e!755903))))

(declare-datatypes ((List!30850 0))(
  ( (Nil!30847) (Cons!30846 (h!32055 (_ BitVec 64)) (t!44839 List!30850)) )
))
(declare-fun arrayNoDuplicates!0 (array!89529 (_ BitVec 32) List!30850) Bool)

(assert (=> b!1326123 (= res!880235 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30847))))

(declare-fun b!1326124 () Bool)

(declare-fun res!880232 () Bool)

(assert (=> b!1326124 (=> (not res!880232) (not e!755903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89529 (_ BitVec 32)) Bool)

(assert (=> b!1326124 (= res!880232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1326125 () Bool)

(declare-fun tp_is_empty!36331 () Bool)

(assert (=> b!1326125 (= e!755902 tp_is_empty!36331)))

(declare-fun res!880231 () Bool)

(assert (=> start!111948 (=> (not res!880231) (not e!755903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111948 (= res!880231 (validMask!0 mask!2019))))

(assert (=> start!111948 e!755903))

(declare-fun array_inv!32575 (array!89529) Bool)

(assert (=> start!111948 (array_inv!32575 _keys!1609)))

(assert (=> start!111948 true))

(assert (=> start!111948 tp_is_empty!36331))

(declare-fun e!755901 () Bool)

(declare-fun array_inv!32576 (array!89531) Bool)

(assert (=> start!111948 (and (array_inv!32576 _values!1337) e!755901)))

(assert (=> start!111948 tp!107013))

(declare-fun b!1326126 () Bool)

(declare-fun res!880229 () Bool)

(assert (=> b!1326126 (=> (not res!880229) (not e!755903))))

(assert (=> b!1326126 (= res!880229 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43784 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1326127 () Bool)

(declare-fun res!880230 () Bool)

(assert (=> b!1326127 (=> (not res!880230) (not e!755903))))

(declare-fun getCurrentListMap!5624 (array!89529 array!89531 (_ BitVec 32) (_ BitVec 32) V!53545 V!53545 (_ BitVec 32) Int) ListLongMap!21351)

(assert (=> b!1326127 (= res!880230 (contains!8784 (getCurrentListMap!5624 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1326128 () Bool)

(declare-fun res!880234 () Bool)

(assert (=> b!1326128 (=> (not res!880234) (not e!755903))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1326128 (= res!880234 (validKeyInArray!0 (select (arr!43233 _keys!1609) from!2000)))))

(declare-fun b!1326129 () Bool)

(declare-fun e!755905 () Bool)

(assert (=> b!1326129 (= e!755905 tp_is_empty!36331)))

(declare-fun b!1326130 () Bool)

(declare-fun res!880236 () Bool)

(assert (=> b!1326130 (=> (not res!880236) (not e!755903))))

(assert (=> b!1326130 (= res!880236 (and (= (size!43785 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43784 _keys!1609) (size!43785 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1326131 () Bool)

(assert (=> b!1326131 (= e!755901 (and e!755905 mapRes!56148))))

(declare-fun condMapEmpty!56148 () Bool)

(declare-fun mapDefault!56148 () ValueCell!17267)

