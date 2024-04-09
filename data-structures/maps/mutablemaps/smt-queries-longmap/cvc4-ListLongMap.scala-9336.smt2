; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111492 () Bool)

(assert start!111492)

(declare-fun b_free!30113 () Bool)

(declare-fun b_next!30113 () Bool)

(assert (=> start!111492 (= b_free!30113 (not b_next!30113))))

(declare-fun tp!105815 () Bool)

(declare-fun b_and!48395 () Bool)

(assert (=> start!111492 (= tp!105815 b_and!48395)))

(declare-fun b!1319094 () Bool)

(declare-fun e!752658 () Bool)

(assert (=> b!1319094 (= e!752658 (not true))))

(declare-datatypes ((V!53013 0))(
  ( (V!53014 (val!18041 Int)) )
))
(declare-datatypes ((tuple2!23376 0))(
  ( (tuple2!23377 (_1!11698 (_ BitVec 64)) (_2!11698 V!53013)) )
))
(declare-datatypes ((List!30565 0))(
  ( (Nil!30562) (Cons!30561 (h!31770 tuple2!23376) (t!44234 List!30565)) )
))
(declare-datatypes ((ListLongMap!21045 0))(
  ( (ListLongMap!21046 (toList!10538 List!30565)) )
))
(declare-fun lt!586531 () ListLongMap!21045)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8629 (ListLongMap!21045 (_ BitVec 64)) Bool)

(assert (=> b!1319094 (contains!8629 lt!586531 k!1164)))

(declare-fun minValue!1279 () V!53013)

(declare-datatypes ((Unit!43392 0))(
  ( (Unit!43393) )
))
(declare-fun lt!586530 () Unit!43392)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!111 ((_ BitVec 64) (_ BitVec 64) V!53013 ListLongMap!21045) Unit!43392)

(assert (=> b!1319094 (= lt!586530 (lemmaInListMapAfterAddingDiffThenInBefore!111 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586531))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53013)

(declare-datatypes ((ValueCell!17068 0))(
  ( (ValueCellFull!17068 (v!20669 V!53013)) (EmptyCell!17068) )
))
(declare-datatypes ((array!88765 0))(
  ( (array!88766 (arr!42852 (Array (_ BitVec 32) ValueCell!17068)) (size!43403 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88765)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((array!88767 0))(
  ( (array!88768 (arr!42853 (Array (_ BitVec 32) (_ BitVec 64))) (size!43404 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88767)

(declare-fun +!4496 (ListLongMap!21045 tuple2!23376) ListLongMap!21045)

(declare-fun getCurrentListMapNoExtraKeys!6211 (array!88767 array!88765 (_ BitVec 32) (_ BitVec 32) V!53013 V!53013 (_ BitVec 32) Int) ListLongMap!21045)

(declare-fun get!21580 (ValueCell!17068 V!53013) V!53013)

(declare-fun dynLambda!3533 (Int (_ BitVec 64)) V!53013)

(assert (=> b!1319094 (= lt!586531 (+!4496 (+!4496 (getCurrentListMapNoExtraKeys!6211 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23377 (select (arr!42853 _keys!1609) from!2000) (get!21580 (select (arr!42852 _values!1337) from!2000) (dynLambda!3533 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23377 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1319095 () Bool)

(declare-fun res!875556 () Bool)

(assert (=> b!1319095 (=> (not res!875556) (not e!752658))))

(declare-fun getCurrentListMap!5489 (array!88767 array!88765 (_ BitVec 32) (_ BitVec 32) V!53013 V!53013 (_ BitVec 32) Int) ListLongMap!21045)

(assert (=> b!1319095 (= res!875556 (contains!8629 (getCurrentListMap!5489 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1319096 () Bool)

(declare-fun res!875557 () Bool)

(assert (=> b!1319096 (=> (not res!875557) (not e!752658))))

(assert (=> b!1319096 (= res!875557 (and (= (size!43403 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43404 _keys!1609) (size!43403 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!875554 () Bool)

(assert (=> start!111492 (=> (not res!875554) (not e!752658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111492 (= res!875554 (validMask!0 mask!2019))))

(assert (=> start!111492 e!752658))

(declare-fun array_inv!32307 (array!88767) Bool)

(assert (=> start!111492 (array_inv!32307 _keys!1609)))

(assert (=> start!111492 true))

(declare-fun tp_is_empty!35933 () Bool)

(assert (=> start!111492 tp_is_empty!35933))

(declare-fun e!752660 () Bool)

(declare-fun array_inv!32308 (array!88765) Bool)

(assert (=> start!111492 (and (array_inv!32308 _values!1337) e!752660)))

(assert (=> start!111492 tp!105815))

(declare-fun b!1319097 () Bool)

(declare-fun res!875560 () Bool)

(assert (=> b!1319097 (=> (not res!875560) (not e!752658))))

(assert (=> b!1319097 (= res!875560 (not (= (select (arr!42853 _keys!1609) from!2000) k!1164)))))

(declare-fun mapNonEmpty!55547 () Bool)

(declare-fun mapRes!55547 () Bool)

(declare-fun tp!105816 () Bool)

(declare-fun e!752662 () Bool)

(assert (=> mapNonEmpty!55547 (= mapRes!55547 (and tp!105816 e!752662))))

(declare-fun mapKey!55547 () (_ BitVec 32))

(declare-fun mapValue!55547 () ValueCell!17068)

(declare-fun mapRest!55547 () (Array (_ BitVec 32) ValueCell!17068))

(assert (=> mapNonEmpty!55547 (= (arr!42852 _values!1337) (store mapRest!55547 mapKey!55547 mapValue!55547))))

(declare-fun mapIsEmpty!55547 () Bool)

(assert (=> mapIsEmpty!55547 mapRes!55547))

(declare-fun b!1319098 () Bool)

(declare-fun res!875553 () Bool)

(assert (=> b!1319098 (=> (not res!875553) (not e!752658))))

(assert (=> b!1319098 (= res!875553 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43404 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1319099 () Bool)

(declare-fun res!875555 () Bool)

(assert (=> b!1319099 (=> (not res!875555) (not e!752658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88767 (_ BitVec 32)) Bool)

(assert (=> b!1319099 (= res!875555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319100 () Bool)

(declare-fun e!752661 () Bool)

(assert (=> b!1319100 (= e!752660 (and e!752661 mapRes!55547))))

(declare-fun condMapEmpty!55547 () Bool)

(declare-fun mapDefault!55547 () ValueCell!17068)

