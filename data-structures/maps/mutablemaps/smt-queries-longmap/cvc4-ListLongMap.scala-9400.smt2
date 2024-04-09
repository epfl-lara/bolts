; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111934 () Bool)

(assert start!111934)

(declare-fun b_free!30497 () Bool)

(declare-fun b_next!30497 () Bool)

(assert (=> start!111934 (= b_free!30497 (not b_next!30497))))

(declare-fun tp!106972 () Bool)

(declare-fun b_and!49099 () Bool)

(assert (=> start!111934 (= tp!106972 b_and!49099)))

(declare-fun b!1325877 () Bool)

(declare-fun res!880068 () Bool)

(declare-fun e!755798 () Bool)

(assert (=> b!1325877 (=> (not res!880068) (not e!755798))))

(declare-datatypes ((array!89503 0))(
  ( (array!89504 (arr!43220 (Array (_ BitVec 32) (_ BitVec 64))) (size!43771 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89503)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53525 0))(
  ( (V!53526 (val!18233 Int)) )
))
(declare-datatypes ((ValueCell!17260 0))(
  ( (ValueCellFull!17260 (v!20864 V!53525)) (EmptyCell!17260) )
))
(declare-datatypes ((array!89505 0))(
  ( (array!89506 (arr!43221 (Array (_ BitVec 32) ValueCell!17260)) (size!43772 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89505)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1325877 (= res!880068 (and (= (size!43772 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43771 _keys!1609) (size!43772 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!880065 () Bool)

(assert (=> start!111934 (=> (not res!880065) (not e!755798))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111934 (= res!880065 (validMask!0 mask!2019))))

(assert (=> start!111934 e!755798))

(declare-fun array_inv!32565 (array!89503) Bool)

(assert (=> start!111934 (array_inv!32565 _keys!1609)))

(assert (=> start!111934 true))

(declare-fun tp_is_empty!36317 () Bool)

(assert (=> start!111934 tp_is_empty!36317))

(declare-fun e!755796 () Bool)

(declare-fun array_inv!32566 (array!89505) Bool)

(assert (=> start!111934 (and (array_inv!32566 _values!1337) e!755796)))

(assert (=> start!111934 tp!106972))

(declare-fun b!1325878 () Bool)

(declare-fun res!880061 () Bool)

(assert (=> b!1325878 (=> (not res!880061) (not e!755798))))

(declare-datatypes ((List!30840 0))(
  ( (Nil!30837) (Cons!30836 (h!32045 (_ BitVec 64)) (t!44815 List!30840)) )
))
(declare-fun arrayNoDuplicates!0 (array!89503 (_ BitVec 32) List!30840) Bool)

(assert (=> b!1325878 (= res!880061 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30837))))

(declare-fun b!1325879 () Bool)

(declare-fun res!880062 () Bool)

(assert (=> b!1325879 (=> (not res!880062) (not e!755798))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1325879 (= res!880062 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43771 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1325880 () Bool)

(assert (=> b!1325880 (= e!755798 (not true))))

(declare-datatypes ((tuple2!23672 0))(
  ( (tuple2!23673 (_1!11846 (_ BitVec 64)) (_2!11846 V!53525)) )
))
(declare-datatypes ((List!30841 0))(
  ( (Nil!30838) (Cons!30837 (h!32046 tuple2!23672) (t!44816 List!30841)) )
))
(declare-datatypes ((ListLongMap!21341 0))(
  ( (ListLongMap!21342 (toList!10686 List!30841)) )
))
(declare-fun lt!589825 () ListLongMap!21341)

(declare-fun contains!8779 (ListLongMap!21341 (_ BitVec 64)) Bool)

(assert (=> b!1325880 (contains!8779 lt!589825 k!1164)))

(declare-fun zeroValue!1279 () V!53525)

(declare-datatypes ((Unit!43608 0))(
  ( (Unit!43609) )
))
(declare-fun lt!589824 () Unit!43608)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!211 ((_ BitVec 64) (_ BitVec 64) V!53525 ListLongMap!21341) Unit!43608)

(assert (=> b!1325880 (= lt!589824 (lemmaInListMapAfterAddingDiffThenInBefore!211 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589825))))

(declare-fun lt!589823 () ListLongMap!21341)

(assert (=> b!1325880 (contains!8779 lt!589823 k!1164)))

(declare-fun minValue!1279 () V!53525)

(declare-fun lt!589822 () Unit!43608)

(assert (=> b!1325880 (= lt!589822 (lemmaInListMapAfterAddingDiffThenInBefore!211 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589823))))

(declare-fun +!4601 (ListLongMap!21341 tuple2!23672) ListLongMap!21341)

(assert (=> b!1325880 (= lt!589823 (+!4601 lt!589825 (tuple2!23673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6319 (array!89503 array!89505 (_ BitVec 32) (_ BitVec 32) V!53525 V!53525 (_ BitVec 32) Int) ListLongMap!21341)

(declare-fun get!21816 (ValueCell!17260 V!53525) V!53525)

(declare-fun dynLambda!3638 (Int (_ BitVec 64)) V!53525)

(assert (=> b!1325880 (= lt!589825 (+!4601 (getCurrentListMapNoExtraKeys!6319 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23673 (select (arr!43220 _keys!1609) from!2000) (get!21816 (select (arr!43221 _values!1337) from!2000) (dynLambda!3638 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1325881 () Bool)

(declare-fun res!880063 () Bool)

(assert (=> b!1325881 (=> (not res!880063) (not e!755798))))

(declare-fun getCurrentListMap!5620 (array!89503 array!89505 (_ BitVec 32) (_ BitVec 32) V!53525 V!53525 (_ BitVec 32) Int) ListLongMap!21341)

(assert (=> b!1325881 (= res!880063 (contains!8779 (getCurrentListMap!5620 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun mapNonEmpty!56127 () Bool)

(declare-fun mapRes!56127 () Bool)

(declare-fun tp!106971 () Bool)

(declare-fun e!755797 () Bool)

(assert (=> mapNonEmpty!56127 (= mapRes!56127 (and tp!106971 e!755797))))

(declare-fun mapValue!56127 () ValueCell!17260)

(declare-fun mapKey!56127 () (_ BitVec 32))

(declare-fun mapRest!56127 () (Array (_ BitVec 32) ValueCell!17260))

(assert (=> mapNonEmpty!56127 (= (arr!43221 _values!1337) (store mapRest!56127 mapKey!56127 mapValue!56127))))

(declare-fun mapIsEmpty!56127 () Bool)

(assert (=> mapIsEmpty!56127 mapRes!56127))

(declare-fun b!1325882 () Bool)

(assert (=> b!1325882 (= e!755797 tp_is_empty!36317)))

(declare-fun b!1325883 () Bool)

(declare-fun res!880066 () Bool)

(assert (=> b!1325883 (=> (not res!880066) (not e!755798))))

(assert (=> b!1325883 (= res!880066 (not (= (select (arr!43220 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1325884 () Bool)

(declare-fun e!755799 () Bool)

(assert (=> b!1325884 (= e!755799 tp_is_empty!36317)))

(declare-fun b!1325885 () Bool)

(assert (=> b!1325885 (= e!755796 (and e!755799 mapRes!56127))))

(declare-fun condMapEmpty!56127 () Bool)

(declare-fun mapDefault!56127 () ValueCell!17260)

