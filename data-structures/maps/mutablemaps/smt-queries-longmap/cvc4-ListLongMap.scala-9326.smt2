; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111432 () Bool)

(assert start!111432)

(declare-fun b_free!30053 () Bool)

(declare-fun b_next!30053 () Bool)

(assert (=> start!111432 (= b_free!30053 (not b_next!30053))))

(declare-fun tp!105635 () Bool)

(declare-fun b_and!48283 () Bool)

(assert (=> start!111432 (= tp!105635 b_and!48283)))

(declare-fun b!1318055 () Bool)

(declare-fun res!874836 () Bool)

(declare-fun e!752212 () Bool)

(assert (=> b!1318055 (=> (not res!874836) (not e!752212))))

(declare-datatypes ((array!88649 0))(
  ( (array!88650 (arr!42794 (Array (_ BitVec 32) (_ BitVec 64))) (size!43345 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88649)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1318055 (= res!874836 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43345 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1318056 () Bool)

(declare-fun res!874840 () Bool)

(assert (=> b!1318056 (=> (not res!874840) (not e!752212))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88649 (_ BitVec 32)) Bool)

(assert (=> b!1318056 (= res!874840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!874839 () Bool)

(assert (=> start!111432 (=> (not res!874839) (not e!752212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111432 (= res!874839 (validMask!0 mask!2019))))

(assert (=> start!111432 e!752212))

(declare-fun array_inv!32271 (array!88649) Bool)

(assert (=> start!111432 (array_inv!32271 _keys!1609)))

(assert (=> start!111432 true))

(declare-fun tp_is_empty!35873 () Bool)

(assert (=> start!111432 tp_is_empty!35873))

(declare-datatypes ((V!52933 0))(
  ( (V!52934 (val!18011 Int)) )
))
(declare-datatypes ((ValueCell!17038 0))(
  ( (ValueCellFull!17038 (v!20639 V!52933)) (EmptyCell!17038) )
))
(declare-datatypes ((array!88651 0))(
  ( (array!88652 (arr!42795 (Array (_ BitVec 32) ValueCell!17038)) (size!43346 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88651)

(declare-fun e!752211 () Bool)

(declare-fun array_inv!32272 (array!88651) Bool)

(assert (=> start!111432 (and (array_inv!32272 _values!1337) e!752211)))

(assert (=> start!111432 tp!105635))

(declare-fun b!1318057 () Bool)

(declare-fun res!874837 () Bool)

(assert (=> b!1318057 (=> (not res!874837) (not e!752212))))

(declare-datatypes ((List!30520 0))(
  ( (Nil!30517) (Cons!30516 (h!31725 (_ BitVec 64)) (t!44135 List!30520)) )
))
(declare-fun arrayNoDuplicates!0 (array!88649 (_ BitVec 32) List!30520) Bool)

(assert (=> b!1318057 (= res!874837 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30517))))

(declare-fun b!1318058 () Bool)

(assert (=> b!1318058 (= e!752212 false)))

(declare-fun zeroValue!1279 () V!52933)

(declare-fun minValue!1279 () V!52933)

(declare-fun lt!586387 () Bool)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23330 0))(
  ( (tuple2!23331 (_1!11675 (_ BitVec 64)) (_2!11675 V!52933)) )
))
(declare-datatypes ((List!30521 0))(
  ( (Nil!30518) (Cons!30517 (h!31726 tuple2!23330) (t!44136 List!30521)) )
))
(declare-datatypes ((ListLongMap!20999 0))(
  ( (ListLongMap!21000 (toList!10515 List!30521)) )
))
(declare-fun contains!8606 (ListLongMap!20999 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5471 (array!88649 array!88651 (_ BitVec 32) (_ BitVec 32) V!52933 V!52933 (_ BitVec 32) Int) ListLongMap!20999)

(assert (=> b!1318058 (= lt!586387 (contains!8606 (getCurrentListMap!5471 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1318059 () Bool)

(declare-fun e!752210 () Bool)

(assert (=> b!1318059 (= e!752210 tp_is_empty!35873)))

(declare-fun mapNonEmpty!55457 () Bool)

(declare-fun mapRes!55457 () Bool)

(declare-fun tp!105636 () Bool)

(assert (=> mapNonEmpty!55457 (= mapRes!55457 (and tp!105636 e!752210))))

(declare-fun mapKey!55457 () (_ BitVec 32))

(declare-fun mapRest!55457 () (Array (_ BitVec 32) ValueCell!17038))

(declare-fun mapValue!55457 () ValueCell!17038)

(assert (=> mapNonEmpty!55457 (= (arr!42795 _values!1337) (store mapRest!55457 mapKey!55457 mapValue!55457))))

(declare-fun b!1318060 () Bool)

(declare-fun res!874838 () Bool)

(assert (=> b!1318060 (=> (not res!874838) (not e!752212))))

(assert (=> b!1318060 (= res!874838 (and (= (size!43346 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43345 _keys!1609) (size!43346 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1318061 () Bool)

(declare-fun e!752209 () Bool)

(assert (=> b!1318061 (= e!752209 tp_is_empty!35873)))

(declare-fun b!1318062 () Bool)

(assert (=> b!1318062 (= e!752211 (and e!752209 mapRes!55457))))

(declare-fun condMapEmpty!55457 () Bool)

(declare-fun mapDefault!55457 () ValueCell!17038)

