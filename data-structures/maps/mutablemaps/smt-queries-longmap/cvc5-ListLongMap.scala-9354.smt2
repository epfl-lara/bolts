; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111596 () Bool)

(assert start!111596)

(declare-fun b_free!30217 () Bool)

(declare-fun b_next!30217 () Bool)

(assert (=> start!111596 (= b_free!30217 (not b_next!30217))))

(declare-fun tp!106127 () Bool)

(declare-fun b_and!48603 () Bool)

(assert (=> start!111596 (= tp!106127 b_and!48603)))

(declare-fun mapNonEmpty!55703 () Bool)

(declare-fun mapRes!55703 () Bool)

(declare-fun tp!106128 () Bool)

(declare-fun e!753438 () Bool)

(assert (=> mapNonEmpty!55703 (= mapRes!55703 (and tp!106128 e!753438))))

(declare-datatypes ((V!53153 0))(
  ( (V!53154 (val!18093 Int)) )
))
(declare-datatypes ((ValueCell!17120 0))(
  ( (ValueCellFull!17120 (v!20721 V!53153)) (EmptyCell!17120) )
))
(declare-datatypes ((array!88967 0))(
  ( (array!88968 (arr!42953 (Array (_ BitVec 32) ValueCell!17120)) (size!43504 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88967)

(declare-fun mapRest!55703 () (Array (_ BitVec 32) ValueCell!17120))

(declare-fun mapKey!55703 () (_ BitVec 32))

(declare-fun mapValue!55703 () ValueCell!17120)

(assert (=> mapNonEmpty!55703 (= (arr!42953 _values!1337) (store mapRest!55703 mapKey!55703 mapValue!55703))))

(declare-fun b!1320914 () Bool)

(declare-fun res!876802 () Bool)

(declare-fun e!753440 () Bool)

(assert (=> b!1320914 (=> (not res!876802) (not e!753440))))

(declare-datatypes ((array!88969 0))(
  ( (array!88970 (arr!42954 (Array (_ BitVec 32) (_ BitVec 64))) (size!43505 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88969)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1320914 (= res!876802 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43505 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!876801 () Bool)

(assert (=> start!111596 (=> (not res!876801) (not e!753440))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111596 (= res!876801 (validMask!0 mask!2019))))

(assert (=> start!111596 e!753440))

(declare-fun array_inv!32385 (array!88969) Bool)

(assert (=> start!111596 (array_inv!32385 _keys!1609)))

(assert (=> start!111596 true))

(declare-fun tp_is_empty!36037 () Bool)

(assert (=> start!111596 tp_is_empty!36037))

(declare-fun e!753442 () Bool)

(declare-fun array_inv!32386 (array!88967) Bool)

(assert (=> start!111596 (and (array_inv!32386 _values!1337) e!753442)))

(assert (=> start!111596 tp!106127))

(declare-fun b!1320915 () Bool)

(declare-fun res!876807 () Bool)

(assert (=> b!1320915 (=> (not res!876807) (not e!753440))))

(declare-datatypes ((List!30645 0))(
  ( (Nil!30642) (Cons!30641 (h!31850 (_ BitVec 64)) (t!44418 List!30645)) )
))
(declare-fun arrayNoDuplicates!0 (array!88969 (_ BitVec 32) List!30645) Bool)

(assert (=> b!1320915 (= res!876807 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30642))))

(declare-fun b!1320916 () Bool)

(declare-fun res!876808 () Bool)

(assert (=> b!1320916 (=> (not res!876808) (not e!753440))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88969 (_ BitVec 32)) Bool)

(assert (=> b!1320916 (= res!876808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1320917 () Bool)

(declare-fun res!876804 () Bool)

(assert (=> b!1320917 (=> (not res!876804) (not e!753440))))

(declare-fun zeroValue!1279 () V!53153)

(declare-fun minValue!1279 () V!53153)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23464 0))(
  ( (tuple2!23465 (_1!11742 (_ BitVec 64)) (_2!11742 V!53153)) )
))
(declare-datatypes ((List!30646 0))(
  ( (Nil!30643) (Cons!30642 (h!31851 tuple2!23464) (t!44419 List!30646)) )
))
(declare-datatypes ((ListLongMap!21133 0))(
  ( (ListLongMap!21134 (toList!10582 List!30646)) )
))
(declare-fun contains!8673 (ListLongMap!21133 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5525 (array!88969 array!88967 (_ BitVec 32) (_ BitVec 32) V!53153 V!53153 (_ BitVec 32) Int) ListLongMap!21133)

(assert (=> b!1320917 (= res!876804 (contains!8673 (getCurrentListMap!5525 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1320918 () Bool)

(declare-fun res!876803 () Bool)

(assert (=> b!1320918 (=> (not res!876803) (not e!753440))))

(assert (=> b!1320918 (= res!876803 (and (= (size!43504 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43505 _keys!1609) (size!43504 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1320919 () Bool)

(declare-fun res!876806 () Bool)

(assert (=> b!1320919 (=> (not res!876806) (not e!753440))))

(assert (=> b!1320919 (= res!876806 (not (= (select (arr!42954 _keys!1609) from!2000) k!1164)))))

(declare-fun mapIsEmpty!55703 () Bool)

(assert (=> mapIsEmpty!55703 mapRes!55703))

(declare-fun b!1320920 () Bool)

(assert (=> b!1320920 (= e!753438 tp_is_empty!36037)))

(declare-fun b!1320921 () Bool)

(assert (=> b!1320921 (= e!753440 (not true))))

(declare-fun lt!587143 () ListLongMap!21133)

(assert (=> b!1320921 (contains!8673 lt!587143 k!1164)))

(declare-fun lt!587146 () V!53153)

(declare-datatypes ((Unit!43472 0))(
  ( (Unit!43473) )
))
(declare-fun lt!587144 () Unit!43472)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!151 ((_ BitVec 64) (_ BitVec 64) V!53153 ListLongMap!21133) Unit!43472)

(assert (=> b!1320921 (= lt!587144 (lemmaInListMapAfterAddingDiffThenInBefore!151 k!1164 (select (arr!42954 _keys!1609) from!2000) lt!587146 lt!587143))))

(declare-fun lt!587142 () ListLongMap!21133)

(assert (=> b!1320921 (contains!8673 lt!587142 k!1164)))

(declare-fun lt!587140 () Unit!43472)

(assert (=> b!1320921 (= lt!587140 (lemmaInListMapAfterAddingDiffThenInBefore!151 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587142))))

(declare-fun lt!587141 () ListLongMap!21133)

(assert (=> b!1320921 (contains!8673 lt!587141 k!1164)))

(declare-fun lt!587145 () Unit!43472)

(assert (=> b!1320921 (= lt!587145 (lemmaInListMapAfterAddingDiffThenInBefore!151 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587141))))

(declare-fun +!4536 (ListLongMap!21133 tuple2!23464) ListLongMap!21133)

(assert (=> b!1320921 (= lt!587141 (+!4536 lt!587142 (tuple2!23465 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1320921 (= lt!587142 (+!4536 lt!587143 (tuple2!23465 (select (arr!42954 _keys!1609) from!2000) lt!587146)))))

(declare-fun get!21656 (ValueCell!17120 V!53153) V!53153)

(declare-fun dynLambda!3573 (Int (_ BitVec 64)) V!53153)

(assert (=> b!1320921 (= lt!587146 (get!21656 (select (arr!42953 _values!1337) from!2000) (dynLambda!3573 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6251 (array!88969 array!88967 (_ BitVec 32) (_ BitVec 32) V!53153 V!53153 (_ BitVec 32) Int) ListLongMap!21133)

(assert (=> b!1320921 (= lt!587143 (getCurrentListMapNoExtraKeys!6251 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1320922 () Bool)

(declare-fun res!876805 () Bool)

(assert (=> b!1320922 (=> (not res!876805) (not e!753440))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320922 (= res!876805 (validKeyInArray!0 (select (arr!42954 _keys!1609) from!2000)))))

(declare-fun b!1320923 () Bool)

(declare-fun e!753439 () Bool)

(assert (=> b!1320923 (= e!753442 (and e!753439 mapRes!55703))))

(declare-fun condMapEmpty!55703 () Bool)

(declare-fun mapDefault!55703 () ValueCell!17120)

