; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111518 () Bool)

(assert start!111518)

(declare-fun b_free!30139 () Bool)

(declare-fun b_next!30139 () Bool)

(assert (=> start!111518 (= b_free!30139 (not b_next!30139))))

(declare-fun tp!105894 () Bool)

(declare-fun b_and!48447 () Bool)

(assert (=> start!111518 (= tp!105894 b_and!48447)))

(declare-fun b!1319549 () Bool)

(declare-fun e!752855 () Bool)

(declare-fun tp_is_empty!35959 () Bool)

(assert (=> b!1319549 (= e!752855 tp_is_empty!35959)))

(declare-fun b!1319550 () Bool)

(declare-fun res!875865 () Bool)

(declare-fun e!752853 () Bool)

(assert (=> b!1319550 (=> (not res!875865) (not e!752853))))

(declare-datatypes ((array!88817 0))(
  ( (array!88818 (arr!42878 (Array (_ BitVec 32) (_ BitVec 64))) (size!43429 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88817)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1319550 (= res!875865 (not (= (select (arr!42878 _keys!1609) from!2000) k!1164)))))

(declare-fun mapNonEmpty!55586 () Bool)

(declare-fun mapRes!55586 () Bool)

(declare-fun tp!105893 () Bool)

(declare-fun e!752854 () Bool)

(assert (=> mapNonEmpty!55586 (= mapRes!55586 (and tp!105893 e!752854))))

(declare-datatypes ((V!53049 0))(
  ( (V!53050 (val!18054 Int)) )
))
(declare-datatypes ((ValueCell!17081 0))(
  ( (ValueCellFull!17081 (v!20682 V!53049)) (EmptyCell!17081) )
))
(declare-datatypes ((array!88819 0))(
  ( (array!88820 (arr!42879 (Array (_ BitVec 32) ValueCell!17081)) (size!43430 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88819)

(declare-fun mapKey!55586 () (_ BitVec 32))

(declare-fun mapValue!55586 () ValueCell!17081)

(declare-fun mapRest!55586 () (Array (_ BitVec 32) ValueCell!17081))

(assert (=> mapNonEmpty!55586 (= (arr!42879 _values!1337) (store mapRest!55586 mapKey!55586 mapValue!55586))))

(declare-fun mapIsEmpty!55586 () Bool)

(assert (=> mapIsEmpty!55586 mapRes!55586))

(declare-fun b!1319551 () Bool)

(declare-fun res!875867 () Bool)

(assert (=> b!1319551 (=> (not res!875867) (not e!752853))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88817 (_ BitVec 32)) Bool)

(assert (=> b!1319551 (= res!875867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319552 () Bool)

(declare-fun res!875872 () Bool)

(assert (=> b!1319552 (=> (not res!875872) (not e!752853))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319552 (= res!875872 (validKeyInArray!0 (select (arr!42878 _keys!1609) from!2000)))))

(declare-fun b!1319553 () Bool)

(assert (=> b!1319553 (= e!752854 tp_is_empty!35959)))

(declare-fun b!1319554 () Bool)

(declare-fun res!875868 () Bool)

(assert (=> b!1319554 (=> (not res!875868) (not e!752853))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53049)

(declare-fun minValue!1279 () V!53049)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23400 0))(
  ( (tuple2!23401 (_1!11710 (_ BitVec 64)) (_2!11710 V!53049)) )
))
(declare-datatypes ((List!30586 0))(
  ( (Nil!30583) (Cons!30582 (h!31791 tuple2!23400) (t!44281 List!30586)) )
))
(declare-datatypes ((ListLongMap!21069 0))(
  ( (ListLongMap!21070 (toList!10550 List!30586)) )
))
(declare-fun contains!8641 (ListLongMap!21069 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5496 (array!88817 array!88819 (_ BitVec 32) (_ BitVec 32) V!53049 V!53049 (_ BitVec 32) Int) ListLongMap!21069)

(assert (=> b!1319554 (= res!875868 (contains!8641 (getCurrentListMap!5496 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun res!875866 () Bool)

(assert (=> start!111518 (=> (not res!875866) (not e!752853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111518 (= res!875866 (validMask!0 mask!2019))))

(assert (=> start!111518 e!752853))

(declare-fun array_inv!32327 (array!88817) Bool)

(assert (=> start!111518 (array_inv!32327 _keys!1609)))

(assert (=> start!111518 true))

(assert (=> start!111518 tp_is_empty!35959))

(declare-fun e!752856 () Bool)

(declare-fun array_inv!32328 (array!88819) Bool)

(assert (=> start!111518 (and (array_inv!32328 _values!1337) e!752856)))

(assert (=> start!111518 tp!105894))

(declare-fun b!1319555 () Bool)

(declare-fun res!875871 () Bool)

(assert (=> b!1319555 (=> (not res!875871) (not e!752853))))

(assert (=> b!1319555 (= res!875871 (and (= (size!43430 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43429 _keys!1609) (size!43430 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1319556 () Bool)

(declare-fun res!875869 () Bool)

(assert (=> b!1319556 (=> (not res!875869) (not e!752853))))

(assert (=> b!1319556 (= res!875869 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43429 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1319557 () Bool)

(assert (=> b!1319557 (= e!752856 (and e!752855 mapRes!55586))))

(declare-fun condMapEmpty!55586 () Bool)

(declare-fun mapDefault!55586 () ValueCell!17081)

