; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111940 () Bool)

(assert start!111940)

(declare-fun b_free!30503 () Bool)

(declare-fun b_next!30503 () Bool)

(assert (=> start!111940 (= b_free!30503 (not b_next!30503))))

(declare-fun tp!106990 () Bool)

(declare-fun b_and!49111 () Bool)

(assert (=> start!111940 (= tp!106990 b_and!49111)))

(declare-fun b!1325982 () Bool)

(declare-fun e!755843 () Bool)

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53533 0))(
  ( (V!53534 (val!18236 Int)) )
))
(declare-datatypes ((ValueCell!17263 0))(
  ( (ValueCellFull!17263 (v!20867 V!53533)) (EmptyCell!17263) )
))
(declare-datatypes ((array!89513 0))(
  ( (array!89514 (arr!43225 (Array (_ BitVec 32) ValueCell!17263)) (size!43776 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89513)

(assert (=> b!1325982 (= e!755843 (not (bvslt from!2000 (size!43776 _values!1337))))))

(declare-datatypes ((tuple2!23676 0))(
  ( (tuple2!23677 (_1!11848 (_ BitVec 64)) (_2!11848 V!53533)) )
))
(declare-datatypes ((List!30844 0))(
  ( (Nil!30841) (Cons!30840 (h!32049 tuple2!23676) (t!44825 List!30844)) )
))
(declare-datatypes ((ListLongMap!21345 0))(
  ( (ListLongMap!21346 (toList!10688 List!30844)) )
))
(declare-fun lt!589860 () ListLongMap!21345)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8781 (ListLongMap!21345 (_ BitVec 64)) Bool)

(assert (=> b!1325982 (contains!8781 lt!589860 k!1164)))

(declare-fun zeroValue!1279 () V!53533)

(declare-datatypes ((Unit!43612 0))(
  ( (Unit!43613) )
))
(declare-fun lt!589859 () Unit!43612)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!213 ((_ BitVec 64) (_ BitVec 64) V!53533 ListLongMap!21345) Unit!43612)

(assert (=> b!1325982 (= lt!589859 (lemmaInListMapAfterAddingDiffThenInBefore!213 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!589860))))

(declare-fun lt!589861 () ListLongMap!21345)

(assert (=> b!1325982 (contains!8781 lt!589861 k!1164)))

(declare-fun lt!589858 () Unit!43612)

(declare-fun minValue!1279 () V!53533)

(assert (=> b!1325982 (= lt!589858 (lemmaInListMapAfterAddingDiffThenInBefore!213 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!589861))))

(declare-fun +!4603 (ListLongMap!21345 tuple2!23676) ListLongMap!21345)

(assert (=> b!1325982 (= lt!589861 (+!4603 lt!589860 (tuple2!23677 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-datatypes ((array!89515 0))(
  ( (array!89516 (arr!43226 (Array (_ BitVec 32) (_ BitVec 64))) (size!43777 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89515)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6321 (array!89515 array!89513 (_ BitVec 32) (_ BitVec 32) V!53533 V!53533 (_ BitVec 32) Int) ListLongMap!21345)

(declare-fun get!21820 (ValueCell!17263 V!53533) V!53533)

(declare-fun dynLambda!3640 (Int (_ BitVec 64)) V!53533)

(assert (=> b!1325982 (= lt!589860 (+!4603 (getCurrentListMapNoExtraKeys!6321 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23677 (select (arr!43226 _keys!1609) from!2000) (get!21820 (select (arr!43225 _values!1337) from!2000) (dynLambda!3640 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1325983 () Bool)

(declare-fun res!880135 () Bool)

(assert (=> b!1325983 (=> (not res!880135) (not e!755843))))

(assert (=> b!1325983 (= res!880135 (not (= (select (arr!43226 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1325984 () Bool)

(declare-fun res!880136 () Bool)

(assert (=> b!1325984 (=> (not res!880136) (not e!755843))))

(declare-fun getCurrentListMap!5622 (array!89515 array!89513 (_ BitVec 32) (_ BitVec 32) V!53533 V!53533 (_ BitVec 32) Int) ListLongMap!21345)

(assert (=> b!1325984 (= res!880136 (contains!8781 (getCurrentListMap!5622 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1325985 () Bool)

(declare-fun res!880137 () Bool)

(assert (=> b!1325985 (=> (not res!880137) (not e!755843))))

(declare-datatypes ((List!30845 0))(
  ( (Nil!30842) (Cons!30841 (h!32050 (_ BitVec 64)) (t!44826 List!30845)) )
))
(declare-fun arrayNoDuplicates!0 (array!89515 (_ BitVec 32) List!30845) Bool)

(assert (=> b!1325985 (= res!880137 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30842))))

(declare-fun mapIsEmpty!56136 () Bool)

(declare-fun mapRes!56136 () Bool)

(assert (=> mapIsEmpty!56136 mapRes!56136))

(declare-fun b!1325986 () Bool)

(declare-fun res!880140 () Bool)

(assert (=> b!1325986 (=> (not res!880140) (not e!755843))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89515 (_ BitVec 32)) Bool)

(assert (=> b!1325986 (= res!880140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!880139 () Bool)

(assert (=> start!111940 (=> (not res!880139) (not e!755843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111940 (= res!880139 (validMask!0 mask!2019))))

(assert (=> start!111940 e!755843))

(declare-fun array_inv!32569 (array!89515) Bool)

(assert (=> start!111940 (array_inv!32569 _keys!1609)))

(assert (=> start!111940 true))

(declare-fun tp_is_empty!36323 () Bool)

(assert (=> start!111940 tp_is_empty!36323))

(declare-fun e!755841 () Bool)

(declare-fun array_inv!32570 (array!89513) Bool)

(assert (=> start!111940 (and (array_inv!32570 _values!1337) e!755841)))

(assert (=> start!111940 tp!106990))

(declare-fun b!1325987 () Bool)

(declare-fun e!755844 () Bool)

(assert (=> b!1325987 (= e!755844 tp_is_empty!36323)))

(declare-fun mapNonEmpty!56136 () Bool)

(declare-fun tp!106989 () Bool)

(declare-fun e!755842 () Bool)

(assert (=> mapNonEmpty!56136 (= mapRes!56136 (and tp!106989 e!755842))))

(declare-fun mapValue!56136 () ValueCell!17263)

(declare-fun mapRest!56136 () (Array (_ BitVec 32) ValueCell!17263))

(declare-fun mapKey!56136 () (_ BitVec 32))

(assert (=> mapNonEmpty!56136 (= (arr!43225 _values!1337) (store mapRest!56136 mapKey!56136 mapValue!56136))))

(declare-fun b!1325988 () Bool)

(assert (=> b!1325988 (= e!755841 (and e!755844 mapRes!56136))))

(declare-fun condMapEmpty!56136 () Bool)

(declare-fun mapDefault!56136 () ValueCell!17263)

