; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111576 () Bool)

(assert start!111576)

(declare-fun b_free!30197 () Bool)

(declare-fun b_next!30197 () Bool)

(assert (=> start!111576 (= b_free!30197 (not b_next!30197))))

(declare-fun tp!106068 () Bool)

(declare-fun b_and!48563 () Bool)

(assert (=> start!111576 (= tp!106068 b_and!48563)))

(declare-fun b!1320564 () Bool)

(declare-fun res!876565 () Bool)

(declare-fun e!753288 () Bool)

(assert (=> b!1320564 (=> (not res!876565) (not e!753288))))

(declare-datatypes ((array!88929 0))(
  ( (array!88930 (arr!42934 (Array (_ BitVec 32) (_ BitVec 64))) (size!43485 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88929)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((V!53125 0))(
  ( (V!53126 (val!18083 Int)) )
))
(declare-datatypes ((ValueCell!17110 0))(
  ( (ValueCellFull!17110 (v!20711 V!53125)) (EmptyCell!17110) )
))
(declare-datatypes ((array!88931 0))(
  ( (array!88932 (arr!42935 (Array (_ BitVec 32) ValueCell!17110)) (size!43486 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88931)

(assert (=> b!1320564 (= res!876565 (and (= (size!43486 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43485 _keys!1609) (size!43486 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1320566 () Bool)

(declare-fun res!876564 () Bool)

(assert (=> b!1320566 (=> (not res!876564) (not e!753288))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88929 (_ BitVec 32)) Bool)

(assert (=> b!1320566 (= res!876564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1320567 () Bool)

(declare-fun res!876567 () Bool)

(assert (=> b!1320567 (=> (not res!876567) (not e!753288))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1320567 (= res!876567 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43485 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320568 () Bool)

(assert (=> b!1320568 (= e!753288 (not true))))

(declare-datatypes ((tuple2!23450 0))(
  ( (tuple2!23451 (_1!11735 (_ BitVec 64)) (_2!11735 V!53125)) )
))
(declare-datatypes ((List!30632 0))(
  ( (Nil!30629) (Cons!30628 (h!31837 tuple2!23450) (t!44385 List!30632)) )
))
(declare-datatypes ((ListLongMap!21119 0))(
  ( (ListLongMap!21120 (toList!10575 List!30632)) )
))
(declare-fun lt!586962 () ListLongMap!21119)

(declare-fun contains!8666 (ListLongMap!21119 (_ BitVec 64)) Bool)

(assert (=> b!1320568 (contains!8666 lt!586962 k!1164)))

(declare-fun zeroValue!1279 () V!53125)

(declare-datatypes ((Unit!43458 0))(
  ( (Unit!43459) )
))
(declare-fun lt!586960 () Unit!43458)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!144 ((_ BitVec 64) (_ BitVec 64) V!53125 ListLongMap!21119) Unit!43458)

(assert (=> b!1320568 (= lt!586960 (lemmaInListMapAfterAddingDiffThenInBefore!144 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586962))))

(declare-fun lt!586961 () ListLongMap!21119)

(assert (=> b!1320568 (contains!8666 lt!586961 k!1164)))

(declare-fun minValue!1279 () V!53125)

(declare-fun lt!586963 () Unit!43458)

(assert (=> b!1320568 (= lt!586963 (lemmaInListMapAfterAddingDiffThenInBefore!144 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586961))))

(declare-fun +!4529 (ListLongMap!21119 tuple2!23450) ListLongMap!21119)

(assert (=> b!1320568 (= lt!586961 (+!4529 lt!586962 (tuple2!23451 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6244 (array!88929 array!88931 (_ BitVec 32) (_ BitVec 32) V!53125 V!53125 (_ BitVec 32) Int) ListLongMap!21119)

(declare-fun get!21641 (ValueCell!17110 V!53125) V!53125)

(declare-fun dynLambda!3566 (Int (_ BitVec 64)) V!53125)

(assert (=> b!1320568 (= lt!586962 (+!4529 (getCurrentListMapNoExtraKeys!6244 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23451 (select (arr!42934 _keys!1609) from!2000) (get!21641 (select (arr!42935 _values!1337) from!2000) (dynLambda!3566 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapIsEmpty!55673 () Bool)

(declare-fun mapRes!55673 () Bool)

(assert (=> mapIsEmpty!55673 mapRes!55673))

(declare-fun mapNonEmpty!55673 () Bool)

(declare-fun tp!106067 () Bool)

(declare-fun e!753291 () Bool)

(assert (=> mapNonEmpty!55673 (= mapRes!55673 (and tp!106067 e!753291))))

(declare-fun mapValue!55673 () ValueCell!17110)

(declare-fun mapKey!55673 () (_ BitVec 32))

(declare-fun mapRest!55673 () (Array (_ BitVec 32) ValueCell!17110))

(assert (=> mapNonEmpty!55673 (= (arr!42935 _values!1337) (store mapRest!55673 mapKey!55673 mapValue!55673))))

(declare-fun b!1320569 () Bool)

(declare-fun e!753289 () Bool)

(declare-fun tp_is_empty!36017 () Bool)

(assert (=> b!1320569 (= e!753289 tp_is_empty!36017)))

(declare-fun b!1320570 () Bool)

(declare-fun res!876562 () Bool)

(assert (=> b!1320570 (=> (not res!876562) (not e!753288))))

(declare-datatypes ((List!30633 0))(
  ( (Nil!30630) (Cons!30629 (h!31838 (_ BitVec 64)) (t!44386 List!30633)) )
))
(declare-fun arrayNoDuplicates!0 (array!88929 (_ BitVec 32) List!30633) Bool)

(assert (=> b!1320570 (= res!876562 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30630))))

(declare-fun b!1320565 () Bool)

(assert (=> b!1320565 (= e!753291 tp_is_empty!36017)))

(declare-fun res!876566 () Bool)

(assert (=> start!111576 (=> (not res!876566) (not e!753288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111576 (= res!876566 (validMask!0 mask!2019))))

(assert (=> start!111576 e!753288))

(declare-fun array_inv!32371 (array!88929) Bool)

(assert (=> start!111576 (array_inv!32371 _keys!1609)))

(assert (=> start!111576 true))

(assert (=> start!111576 tp_is_empty!36017))

(declare-fun e!753290 () Bool)

(declare-fun array_inv!32372 (array!88931) Bool)

(assert (=> start!111576 (and (array_inv!32372 _values!1337) e!753290)))

(assert (=> start!111576 tp!106068))

(declare-fun b!1320571 () Bool)

(declare-fun res!876568 () Bool)

(assert (=> b!1320571 (=> (not res!876568) (not e!753288))))

(declare-fun getCurrentListMap!5518 (array!88929 array!88931 (_ BitVec 32) (_ BitVec 32) V!53125 V!53125 (_ BitVec 32) Int) ListLongMap!21119)

(assert (=> b!1320571 (= res!876568 (contains!8666 (getCurrentListMap!5518 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1320572 () Bool)

(assert (=> b!1320572 (= e!753290 (and e!753289 mapRes!55673))))

(declare-fun condMapEmpty!55673 () Bool)

(declare-fun mapDefault!55673 () ValueCell!17110)

