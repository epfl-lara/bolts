; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111542 () Bool)

(assert start!111542)

(declare-fun b_free!30163 () Bool)

(declare-fun b_next!30163 () Bool)

(assert (=> start!111542 (= b_free!30163 (not b_next!30163))))

(declare-fun tp!105966 () Bool)

(declare-fun b_and!48495 () Bool)

(assert (=> start!111542 (= tp!105966 b_and!48495)))

(declare-fun b!1319969 () Bool)

(declare-fun e!753034 () Bool)

(declare-fun tp_is_empty!35983 () Bool)

(assert (=> b!1319969 (= e!753034 tp_is_empty!35983)))

(declare-fun b!1319970 () Bool)

(declare-fun res!876160 () Bool)

(declare-fun e!753033 () Bool)

(assert (=> b!1319970 (=> (not res!876160) (not e!753033))))

(declare-datatypes ((array!88863 0))(
  ( (array!88864 (arr!42901 (Array (_ BitVec 32) (_ BitVec 64))) (size!43452 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88863)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88863 (_ BitVec 32)) Bool)

(assert (=> b!1319970 (= res!876160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319972 () Bool)

(declare-fun e!753035 () Bool)

(assert (=> b!1319972 (= e!753035 tp_is_empty!35983)))

(declare-fun b!1319973 () Bool)

(assert (=> b!1319973 (= e!753033 (not true))))

(declare-datatypes ((V!53081 0))(
  ( (V!53082 (val!18066 Int)) )
))
(declare-datatypes ((tuple2!23422 0))(
  ( (tuple2!23423 (_1!11721 (_ BitVec 64)) (_2!11721 V!53081)) )
))
(declare-datatypes ((List!30606 0))(
  ( (Nil!30603) (Cons!30602 (h!31811 tuple2!23422) (t!44325 List!30606)) )
))
(declare-datatypes ((ListLongMap!21091 0))(
  ( (ListLongMap!21092 (toList!10561 List!30606)) )
))
(declare-fun lt!586756 () ListLongMap!21091)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8652 (ListLongMap!21091 (_ BitVec 64)) Bool)

(assert (=> b!1319973 (contains!8652 lt!586756 k!1164)))

(declare-fun zeroValue!1279 () V!53081)

(declare-datatypes ((Unit!43432 0))(
  ( (Unit!43433) )
))
(declare-fun lt!586758 () Unit!43432)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!131 ((_ BitVec 64) (_ BitVec 64) V!53081 ListLongMap!21091) Unit!43432)

(assert (=> b!1319973 (= lt!586758 (lemmaInListMapAfterAddingDiffThenInBefore!131 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586756))))

(declare-fun lt!586757 () ListLongMap!21091)

(assert (=> b!1319973 (contains!8652 lt!586757 k!1164)))

(declare-fun lt!586759 () Unit!43432)

(declare-fun minValue!1279 () V!53081)

(assert (=> b!1319973 (= lt!586759 (lemmaInListMapAfterAddingDiffThenInBefore!131 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586757))))

(declare-fun +!4516 (ListLongMap!21091 tuple2!23422) ListLongMap!21091)

(assert (=> b!1319973 (= lt!586757 (+!4516 lt!586756 (tuple2!23423 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17093 0))(
  ( (ValueCellFull!17093 (v!20694 V!53081)) (EmptyCell!17093) )
))
(declare-datatypes ((array!88865 0))(
  ( (array!88866 (arr!42902 (Array (_ BitVec 32) ValueCell!17093)) (size!43453 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88865)

(declare-fun defaultEntry!1340 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6231 (array!88863 array!88865 (_ BitVec 32) (_ BitVec 32) V!53081 V!53081 (_ BitVec 32) Int) ListLongMap!21091)

(declare-fun get!21618 (ValueCell!17093 V!53081) V!53081)

(declare-fun dynLambda!3553 (Int (_ BitVec 64)) V!53081)

(assert (=> b!1319973 (= lt!586756 (+!4516 (getCurrentListMapNoExtraKeys!6231 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23423 (select (arr!42901 _keys!1609) from!2000) (get!21618 (select (arr!42902 _values!1337) from!2000) (dynLambda!3553 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1319971 () Bool)

(declare-fun res!876154 () Bool)

(assert (=> b!1319971 (=> (not res!876154) (not e!753033))))

(declare-fun getCurrentListMap!5505 (array!88863 array!88865 (_ BitVec 32) (_ BitVec 32) V!53081 V!53081 (_ BitVec 32) Int) ListLongMap!21091)

(assert (=> b!1319971 (= res!876154 (contains!8652 (getCurrentListMap!5505 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun res!876156 () Bool)

(assert (=> start!111542 (=> (not res!876156) (not e!753033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111542 (= res!876156 (validMask!0 mask!2019))))

(assert (=> start!111542 e!753033))

(declare-fun array_inv!32343 (array!88863) Bool)

(assert (=> start!111542 (array_inv!32343 _keys!1609)))

(assert (=> start!111542 true))

(assert (=> start!111542 tp_is_empty!35983))

(declare-fun e!753036 () Bool)

(declare-fun array_inv!32344 (array!88865) Bool)

(assert (=> start!111542 (and (array_inv!32344 _values!1337) e!753036)))

(assert (=> start!111542 tp!105966))

(declare-fun mapIsEmpty!55622 () Bool)

(declare-fun mapRes!55622 () Bool)

(assert (=> mapIsEmpty!55622 mapRes!55622))

(declare-fun b!1319974 () Bool)

(declare-fun res!876159 () Bool)

(assert (=> b!1319974 (=> (not res!876159) (not e!753033))))

(assert (=> b!1319974 (= res!876159 (not (= (select (arr!42901 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1319975 () Bool)

(assert (=> b!1319975 (= e!753036 (and e!753035 mapRes!55622))))

(declare-fun condMapEmpty!55622 () Bool)

(declare-fun mapDefault!55622 () ValueCell!17093)

