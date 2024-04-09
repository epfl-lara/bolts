; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111302 () Bool)

(assert start!111302)

(declare-fun res!874142 () Bool)

(declare-fun e!751342 () Bool)

(assert (=> start!111302 (=> (not res!874142) (not e!751342))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111302 (= res!874142 (validMask!0 mask!2019))))

(assert (=> start!111302 e!751342))

(assert (=> start!111302 true))

(declare-datatypes ((V!52789 0))(
  ( (V!52790 (val!17957 Int)) )
))
(declare-datatypes ((ValueCell!16984 0))(
  ( (ValueCellFull!16984 (v!20584 V!52789)) (EmptyCell!16984) )
))
(declare-datatypes ((array!88441 0))(
  ( (array!88442 (arr!42692 (Array (_ BitVec 32) ValueCell!16984)) (size!43243 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88441)

(declare-fun e!751340 () Bool)

(declare-fun array_inv!32207 (array!88441) Bool)

(assert (=> start!111302 (and (array_inv!32207 _values!1337) e!751340)))

(declare-datatypes ((array!88443 0))(
  ( (array!88444 (arr!42693 (Array (_ BitVec 32) (_ BitVec 64))) (size!43244 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88443)

(declare-fun array_inv!32208 (array!88443) Bool)

(assert (=> start!111302 (array_inv!32208 _keys!1609)))

(declare-fun mapNonEmpty!55289 () Bool)

(declare-fun mapRes!55289 () Bool)

(declare-fun tp!105396 () Bool)

(declare-fun e!751339 () Bool)

(assert (=> mapNonEmpty!55289 (= mapRes!55289 (and tp!105396 e!751339))))

(declare-fun mapKey!55289 () (_ BitVec 32))

(declare-fun mapRest!55289 () (Array (_ BitVec 32) ValueCell!16984))

(declare-fun mapValue!55289 () ValueCell!16984)

(assert (=> mapNonEmpty!55289 (= (arr!42692 _values!1337) (store mapRest!55289 mapKey!55289 mapValue!55289))))

(declare-fun b!1316844 () Bool)

(declare-fun tp_is_empty!35765 () Bool)

(assert (=> b!1316844 (= e!751339 tp_is_empty!35765)))

(declare-fun b!1316845 () Bool)

(declare-datatypes ((List!30469 0))(
  ( (Nil!30466) (Cons!30465 (h!31674 (_ BitVec 64)) (t!44084 List!30469)) )
))
(declare-fun noDuplicate!2096 (List!30469) Bool)

(assert (=> b!1316845 (= e!751342 (not (noDuplicate!2096 Nil!30466)))))

(declare-fun b!1316846 () Bool)

(declare-fun res!874139 () Bool)

(assert (=> b!1316846 (=> (not res!874139) (not e!751342))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(assert (=> b!1316846 (= res!874139 (and (= (size!43243 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43244 _keys!1609) (size!43243 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1316847 () Bool)

(declare-fun res!874141 () Bool)

(assert (=> b!1316847 (=> (not res!874141) (not e!751342))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88443 (_ BitVec 32)) Bool)

(assert (=> b!1316847 (= res!874141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1316848 () Bool)

(declare-fun e!751343 () Bool)

(assert (=> b!1316848 (= e!751343 tp_is_empty!35765)))

(declare-fun mapIsEmpty!55289 () Bool)

(assert (=> mapIsEmpty!55289 mapRes!55289))

(declare-fun b!1316849 () Bool)

(assert (=> b!1316849 (= e!751340 (and e!751343 mapRes!55289))))

(declare-fun condMapEmpty!55289 () Bool)

(declare-fun mapDefault!55289 () ValueCell!16984)

