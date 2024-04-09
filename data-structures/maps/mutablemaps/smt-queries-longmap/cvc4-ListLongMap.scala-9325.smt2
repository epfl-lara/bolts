; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111426 () Bool)

(assert start!111426)

(declare-fun b_free!30047 () Bool)

(declare-fun b_next!30047 () Bool)

(assert (=> start!111426 (= b_free!30047 (not b_next!30047))))

(declare-fun tp!105618 () Bool)

(declare-fun b_and!48277 () Bool)

(assert (=> start!111426 (= tp!105618 b_and!48277)))

(declare-fun b!1317983 () Bool)

(declare-fun e!752165 () Bool)

(assert (=> b!1317983 (= e!752165 false)))

(declare-datatypes ((array!88637 0))(
  ( (array!88638 (arr!42788 (Array (_ BitVec 32) (_ BitVec 64))) (size!43339 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88637)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!52925 0))(
  ( (V!52926 (val!18008 Int)) )
))
(declare-fun zeroValue!1279 () V!52925)

(declare-datatypes ((ValueCell!17035 0))(
  ( (ValueCellFull!17035 (v!20636 V!52925)) (EmptyCell!17035) )
))
(declare-datatypes ((array!88639 0))(
  ( (array!88640 (arr!42789 (Array (_ BitVec 32) ValueCell!17035)) (size!43340 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88639)

(declare-fun minValue!1279 () V!52925)

(declare-fun lt!586378 () Bool)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23324 0))(
  ( (tuple2!23325 (_1!11672 (_ BitVec 64)) (_2!11672 V!52925)) )
))
(declare-datatypes ((List!30514 0))(
  ( (Nil!30511) (Cons!30510 (h!31719 tuple2!23324) (t!44129 List!30514)) )
))
(declare-datatypes ((ListLongMap!20993 0))(
  ( (ListLongMap!20994 (toList!10512 List!30514)) )
))
(declare-fun contains!8603 (ListLongMap!20993 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5468 (array!88637 array!88639 (_ BitVec 32) (_ BitVec 32) V!52925 V!52925 (_ BitVec 32) Int) ListLongMap!20993)

(assert (=> b!1317983 (= lt!586378 (contains!8603 (getCurrentListMap!5468 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1317984 () Bool)

(declare-fun res!874793 () Bool)

(assert (=> b!1317984 (=> (not res!874793) (not e!752165))))

(assert (=> b!1317984 (= res!874793 (and (= (size!43340 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43339 _keys!1609) (size!43340 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!55448 () Bool)

(declare-fun mapRes!55448 () Bool)

(assert (=> mapIsEmpty!55448 mapRes!55448))

(declare-fun res!874795 () Bool)

(assert (=> start!111426 (=> (not res!874795) (not e!752165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111426 (= res!874795 (validMask!0 mask!2019))))

(assert (=> start!111426 e!752165))

(declare-fun array_inv!32267 (array!88637) Bool)

(assert (=> start!111426 (array_inv!32267 _keys!1609)))

(assert (=> start!111426 true))

(declare-fun tp_is_empty!35867 () Bool)

(assert (=> start!111426 tp_is_empty!35867))

(declare-fun e!752167 () Bool)

(declare-fun array_inv!32268 (array!88639) Bool)

(assert (=> start!111426 (and (array_inv!32268 _values!1337) e!752167)))

(assert (=> start!111426 tp!105618))

(declare-fun b!1317985 () Bool)

(declare-fun e!752163 () Bool)

(assert (=> b!1317985 (= e!752163 tp_is_empty!35867)))

(declare-fun b!1317986 () Bool)

(declare-fun res!874792 () Bool)

(assert (=> b!1317986 (=> (not res!874792) (not e!752165))))

(assert (=> b!1317986 (= res!874792 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43339 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1317987 () Bool)

(declare-fun res!874794 () Bool)

(assert (=> b!1317987 (=> (not res!874794) (not e!752165))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88637 (_ BitVec 32)) Bool)

(assert (=> b!1317987 (= res!874794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317988 () Bool)

(declare-fun res!874791 () Bool)

(assert (=> b!1317988 (=> (not res!874791) (not e!752165))))

(declare-datatypes ((List!30515 0))(
  ( (Nil!30512) (Cons!30511 (h!31720 (_ BitVec 64)) (t!44130 List!30515)) )
))
(declare-fun arrayNoDuplicates!0 (array!88637 (_ BitVec 32) List!30515) Bool)

(assert (=> b!1317988 (= res!874791 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30512))))

(declare-fun b!1317989 () Bool)

(declare-fun e!752164 () Bool)

(assert (=> b!1317989 (= e!752164 tp_is_empty!35867)))

(declare-fun b!1317990 () Bool)

(assert (=> b!1317990 (= e!752167 (and e!752163 mapRes!55448))))

(declare-fun condMapEmpty!55448 () Bool)

(declare-fun mapDefault!55448 () ValueCell!17035)

