; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111788 () Bool)

(assert start!111788)

(declare-fun b_free!30409 () Bool)

(declare-fun b_next!30409 () Bool)

(assert (=> start!111788 (= b_free!30409 (not b_next!30409))))

(declare-fun tp!106703 () Bool)

(declare-fun b_and!48957 () Bool)

(assert (=> start!111788 (= tp!106703 b_and!48957)))

(declare-fun b!1324103 () Bool)

(declare-fun res!878968 () Bool)

(declare-fun e!754880 () Bool)

(assert (=> b!1324103 (=> (not res!878968) (not e!754880))))

(declare-datatypes ((array!89327 0))(
  ( (array!89328 (arr!43133 (Array (_ BitVec 32) (_ BitVec 64))) (size!43684 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89327)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53409 0))(
  ( (V!53410 (val!18189 Int)) )
))
(declare-datatypes ((ValueCell!17216 0))(
  ( (ValueCellFull!17216 (v!20817 V!53409)) (EmptyCell!17216) )
))
(declare-datatypes ((array!89329 0))(
  ( (array!89330 (arr!43134 (Array (_ BitVec 32) ValueCell!17216)) (size!43685 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89329)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1324103 (= res!878968 (and (= (size!43685 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43684 _keys!1609) (size!43685 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324104 () Bool)

(assert (=> b!1324104 (= e!754880 false)))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53409)

(declare-fun minValue!1279 () V!53409)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun lt!589378 () Bool)

(declare-datatypes ((tuple2!23600 0))(
  ( (tuple2!23601 (_1!11810 (_ BitVec 64)) (_2!11810 V!53409)) )
))
(declare-datatypes ((List!30774 0))(
  ( (Nil!30771) (Cons!30770 (h!31979 tuple2!23600) (t!44707 List!30774)) )
))
(declare-datatypes ((ListLongMap!21269 0))(
  ( (ListLongMap!21270 (toList!10650 List!30774)) )
))
(declare-fun contains!8741 (ListLongMap!21269 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5587 (array!89327 array!89329 (_ BitVec 32) (_ BitVec 32) V!53409 V!53409 (_ BitVec 32) Int) ListLongMap!21269)

(assert (=> b!1324104 (= lt!589378 (contains!8741 (getCurrentListMap!5587 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1324105 () Bool)

(declare-fun e!754879 () Bool)

(declare-fun tp_is_empty!36229 () Bool)

(assert (=> b!1324105 (= e!754879 tp_is_empty!36229)))

(declare-fun mapNonEmpty!55991 () Bool)

(declare-fun mapRes!55991 () Bool)

(declare-fun tp!106704 () Bool)

(assert (=> mapNonEmpty!55991 (= mapRes!55991 (and tp!106704 e!754879))))

(declare-fun mapKey!55991 () (_ BitVec 32))

(declare-fun mapValue!55991 () ValueCell!17216)

(declare-fun mapRest!55991 () (Array (_ BitVec 32) ValueCell!17216))

(assert (=> mapNonEmpty!55991 (= (arr!43134 _values!1337) (store mapRest!55991 mapKey!55991 mapValue!55991))))

(declare-fun b!1324106 () Bool)

(declare-fun res!878967 () Bool)

(assert (=> b!1324106 (=> (not res!878967) (not e!754880))))

(declare-datatypes ((List!30775 0))(
  ( (Nil!30772) (Cons!30771 (h!31980 (_ BitVec 64)) (t!44708 List!30775)) )
))
(declare-fun arrayNoDuplicates!0 (array!89327 (_ BitVec 32) List!30775) Bool)

(assert (=> b!1324106 (= res!878967 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30772))))

(declare-fun b!1324108 () Bool)

(declare-fun e!754878 () Bool)

(declare-fun e!754881 () Bool)

(assert (=> b!1324108 (= e!754878 (and e!754881 mapRes!55991))))

(declare-fun condMapEmpty!55991 () Bool)

(declare-fun mapDefault!55991 () ValueCell!17216)

