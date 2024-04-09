; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111402 () Bool)

(assert start!111402)

(declare-fun b_free!30023 () Bool)

(declare-fun b_next!30023 () Bool)

(assert (=> start!111402 (= b_free!30023 (not b_next!30023))))

(declare-fun tp!105545 () Bool)

(declare-fun b_and!48253 () Bool)

(assert (=> start!111402 (= tp!105545 b_and!48253)))

(declare-fun b!1317695 () Bool)

(declare-fun e!751985 () Bool)

(declare-fun tp_is_empty!35843 () Bool)

(assert (=> b!1317695 (= e!751985 tp_is_empty!35843)))

(declare-fun res!874611 () Bool)

(declare-fun e!751987 () Bool)

(assert (=> start!111402 (=> (not res!874611) (not e!751987))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111402 (= res!874611 (validMask!0 mask!2019))))

(assert (=> start!111402 e!751987))

(declare-datatypes ((array!88591 0))(
  ( (array!88592 (arr!42765 (Array (_ BitVec 32) (_ BitVec 64))) (size!43316 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88591)

(declare-fun array_inv!32251 (array!88591) Bool)

(assert (=> start!111402 (array_inv!32251 _keys!1609)))

(assert (=> start!111402 true))

(assert (=> start!111402 tp_is_empty!35843))

(declare-datatypes ((V!52893 0))(
  ( (V!52894 (val!17996 Int)) )
))
(declare-datatypes ((ValueCell!17023 0))(
  ( (ValueCellFull!17023 (v!20624 V!52893)) (EmptyCell!17023) )
))
(declare-datatypes ((array!88593 0))(
  ( (array!88594 (arr!42766 (Array (_ BitVec 32) ValueCell!17023)) (size!43317 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88593)

(declare-fun e!751986 () Bool)

(declare-fun array_inv!32252 (array!88593) Bool)

(assert (=> start!111402 (and (array_inv!32252 _values!1337) e!751986)))

(assert (=> start!111402 tp!105545))

(declare-fun b!1317696 () Bool)

(declare-fun res!874614 () Bool)

(assert (=> b!1317696 (=> (not res!874614) (not e!751987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88591 (_ BitVec 32)) Bool)

(assert (=> b!1317696 (= res!874614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317697 () Bool)

(declare-fun res!874615 () Bool)

(assert (=> b!1317697 (=> (not res!874615) (not e!751987))))

(declare-datatypes ((List!30500 0))(
  ( (Nil!30497) (Cons!30496 (h!31705 (_ BitVec 64)) (t!44115 List!30500)) )
))
(declare-fun arrayNoDuplicates!0 (array!88591 (_ BitVec 32) List!30500) Bool)

(assert (=> b!1317697 (= res!874615 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30497))))

(declare-fun mapIsEmpty!55412 () Bool)

(declare-fun mapRes!55412 () Bool)

(assert (=> mapIsEmpty!55412 mapRes!55412))

(declare-fun b!1317698 () Bool)

(assert (=> b!1317698 (= e!751987 false)))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!52893)

(declare-fun minValue!1279 () V!52893)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun lt!586342 () Bool)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((tuple2!23312 0))(
  ( (tuple2!23313 (_1!11666 (_ BitVec 64)) (_2!11666 V!52893)) )
))
(declare-datatypes ((List!30501 0))(
  ( (Nil!30498) (Cons!30497 (h!31706 tuple2!23312) (t!44116 List!30501)) )
))
(declare-datatypes ((ListLongMap!20981 0))(
  ( (ListLongMap!20982 (toList!10506 List!30501)) )
))
(declare-fun contains!8597 (ListLongMap!20981 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5462 (array!88591 array!88593 (_ BitVec 32) (_ BitVec 32) V!52893 V!52893 (_ BitVec 32) Int) ListLongMap!20981)

(assert (=> b!1317698 (= lt!586342 (contains!8597 (getCurrentListMap!5462 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun mapNonEmpty!55412 () Bool)

(declare-fun tp!105546 () Bool)

(assert (=> mapNonEmpty!55412 (= mapRes!55412 (and tp!105546 e!751985))))

(declare-fun mapRest!55412 () (Array (_ BitVec 32) ValueCell!17023))

(declare-fun mapKey!55412 () (_ BitVec 32))

(declare-fun mapValue!55412 () ValueCell!17023)

(assert (=> mapNonEmpty!55412 (= (arr!42766 _values!1337) (store mapRest!55412 mapKey!55412 mapValue!55412))))

(declare-fun b!1317699 () Bool)

(declare-fun res!874613 () Bool)

(assert (=> b!1317699 (=> (not res!874613) (not e!751987))))

(assert (=> b!1317699 (= res!874613 (and (= (size!43317 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43316 _keys!1609) (size!43317 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317700 () Bool)

(declare-fun e!751983 () Bool)

(assert (=> b!1317700 (= e!751983 tp_is_empty!35843)))

(declare-fun b!1317701 () Bool)

(assert (=> b!1317701 (= e!751986 (and e!751983 mapRes!55412))))

(declare-fun condMapEmpty!55412 () Bool)

(declare-fun mapDefault!55412 () ValueCell!17023)

