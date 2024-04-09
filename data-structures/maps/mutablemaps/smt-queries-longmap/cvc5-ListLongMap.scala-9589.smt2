; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113432 () Bool)

(assert start!113432)

(declare-fun b_free!31447 () Bool)

(declare-fun b_next!31447 () Bool)

(assert (=> start!113432 (= b_free!31447 (not b_next!31447))))

(declare-fun tp!110147 () Bool)

(declare-fun b_and!50745 () Bool)

(assert (=> start!113432 (= tp!110147 b_and!50745)))

(declare-fun b!1346005 () Bool)

(declare-fun res!893236 () Bool)

(declare-fun e!765884 () Bool)

(assert (=> b!1346005 (=> (not res!893236) (not e!765884))))

(declare-datatypes ((array!91689 0))(
  ( (array!91690 (arr!44296 (Array (_ BitVec 32) (_ BitVec 64))) (size!44847 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91689)

(declare-datatypes ((List!31543 0))(
  ( (Nil!31540) (Cons!31539 (h!32748 (_ BitVec 64)) (t!46140 List!31543)) )
))
(declare-fun arrayNoDuplicates!0 (array!91689 (_ BitVec 32) List!31543) Bool)

(assert (=> b!1346005 (= res!893236 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31540))))

(declare-fun mapNonEmpty!57877 () Bool)

(declare-fun mapRes!57877 () Bool)

(declare-fun tp!110146 () Bool)

(declare-fun e!765887 () Bool)

(assert (=> mapNonEmpty!57877 (= mapRes!57877 (and tp!110146 e!765887))))

(declare-datatypes ((V!55033 0))(
  ( (V!55034 (val!18798 Int)) )
))
(declare-datatypes ((ValueCell!17825 0))(
  ( (ValueCellFull!17825 (v!21444 V!55033)) (EmptyCell!17825) )
))
(declare-fun mapValue!57877 () ValueCell!17825)

(declare-fun mapKey!57877 () (_ BitVec 32))

(declare-fun mapRest!57877 () (Array (_ BitVec 32) ValueCell!17825))

(declare-datatypes ((array!91691 0))(
  ( (array!91692 (arr!44297 (Array (_ BitVec 32) ValueCell!17825)) (size!44848 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91691)

(assert (=> mapNonEmpty!57877 (= (arr!44297 _values!1303) (store mapRest!57877 mapKey!57877 mapValue!57877))))

(declare-fun b!1346006 () Bool)

(declare-fun tp_is_empty!37447 () Bool)

(assert (=> b!1346006 (= e!765887 tp_is_empty!37447)))

(declare-fun b!1346007 () Bool)

(declare-fun res!893237 () Bool)

(assert (=> b!1346007 (=> (not res!893237) (not e!765884))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1346007 (= res!893237 (and (= (size!44848 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44847 _keys!1571) (size!44848 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346008 () Bool)

(declare-fun e!765883 () Bool)

(assert (=> b!1346008 (= e!765883 tp_is_empty!37447)))

(declare-fun b!1346009 () Bool)

(declare-fun res!893240 () Bool)

(assert (=> b!1346009 (=> (not res!893240) (not e!765884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91689 (_ BitVec 32)) Bool)

(assert (=> b!1346009 (= res!893240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57877 () Bool)

(assert (=> mapIsEmpty!57877 mapRes!57877))

(declare-fun res!893238 () Bool)

(assert (=> start!113432 (=> (not res!893238) (not e!765884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113432 (= res!893238 (validMask!0 mask!1977))))

(assert (=> start!113432 e!765884))

(assert (=> start!113432 tp_is_empty!37447))

(assert (=> start!113432 true))

(declare-fun array_inv!33293 (array!91689) Bool)

(assert (=> start!113432 (array_inv!33293 _keys!1571)))

(declare-fun e!765886 () Bool)

(declare-fun array_inv!33294 (array!91691) Bool)

(assert (=> start!113432 (and (array_inv!33294 _values!1303) e!765886)))

(assert (=> start!113432 tp!110147))

(declare-fun b!1346010 () Bool)

(assert (=> b!1346010 (= e!765886 (and e!765883 mapRes!57877))))

(declare-fun condMapEmpty!57877 () Bool)

(declare-fun mapDefault!57877 () ValueCell!17825)

