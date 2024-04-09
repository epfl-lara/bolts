; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111618 () Bool)

(assert start!111618)

(declare-fun b_free!30239 () Bool)

(declare-fun b_next!30239 () Bool)

(assert (=> start!111618 (= b_free!30239 (not b_next!30239))))

(declare-fun tp!106194 () Bool)

(declare-fun b_and!48647 () Bool)

(assert (=> start!111618 (= tp!106194 b_and!48647)))

(declare-fun mapNonEmpty!55736 () Bool)

(declare-fun mapRes!55736 () Bool)

(declare-fun tp!106193 () Bool)

(declare-fun e!753604 () Bool)

(assert (=> mapNonEmpty!55736 (= mapRes!55736 (and tp!106193 e!753604))))

(declare-datatypes ((V!53181 0))(
  ( (V!53182 (val!18104 Int)) )
))
(declare-datatypes ((ValueCell!17131 0))(
  ( (ValueCellFull!17131 (v!20732 V!53181)) (EmptyCell!17131) )
))
(declare-fun mapRest!55736 () (Array (_ BitVec 32) ValueCell!17131))

(declare-datatypes ((array!89007 0))(
  ( (array!89008 (arr!42973 (Array (_ BitVec 32) ValueCell!17131)) (size!43524 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89007)

(declare-fun mapValue!55736 () ValueCell!17131)

(declare-fun mapKey!55736 () (_ BitVec 32))

(assert (=> mapNonEmpty!55736 (= (arr!42973 _values!1337) (store mapRest!55736 mapKey!55736 mapValue!55736))))

(declare-fun b!1321299 () Bool)

(declare-fun e!753607 () Bool)

(declare-fun tp_is_empty!36059 () Bool)

(assert (=> b!1321299 (= e!753607 tp_is_empty!36059)))

(declare-fun b!1321300 () Bool)

(declare-fun e!753603 () Bool)

(assert (=> b!1321300 (= e!753603 (not true))))

(declare-datatypes ((tuple2!23480 0))(
  ( (tuple2!23481 (_1!11750 (_ BitVec 64)) (_2!11750 V!53181)) )
))
(declare-datatypes ((List!30660 0))(
  ( (Nil!30657) (Cons!30656 (h!31865 tuple2!23480) (t!44455 List!30660)) )
))
(declare-datatypes ((ListLongMap!21149 0))(
  ( (ListLongMap!21150 (toList!10590 List!30660)) )
))
(declare-fun lt!587375 () ListLongMap!21149)

(declare-fun k!1164 () (_ BitVec 64))

(declare-fun contains!8681 (ListLongMap!21149 (_ BitVec 64)) Bool)

(assert (=> b!1321300 (contains!8681 lt!587375 k!1164)))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun lt!587372 () V!53181)

(declare-datatypes ((array!89009 0))(
  ( (array!89010 (arr!42974 (Array (_ BitVec 32) (_ BitVec 64))) (size!43525 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89009)

(declare-datatypes ((Unit!43486 0))(
  ( (Unit!43487) )
))
(declare-fun lt!587376 () Unit!43486)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!158 ((_ BitVec 64) (_ BitVec 64) V!53181 ListLongMap!21149) Unit!43486)

(assert (=> b!1321300 (= lt!587376 (lemmaInListMapAfterAddingDiffThenInBefore!158 k!1164 (select (arr!42974 _keys!1609) from!2000) lt!587372 lt!587375))))

(declare-fun lt!587377 () ListLongMap!21149)

(assert (=> b!1321300 (contains!8681 lt!587377 k!1164)))

(declare-fun zeroValue!1279 () V!53181)

(declare-fun lt!587371 () Unit!43486)

(assert (=> b!1321300 (= lt!587371 (lemmaInListMapAfterAddingDiffThenInBefore!158 k!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!587377))))

(declare-fun lt!587374 () ListLongMap!21149)

(assert (=> b!1321300 (contains!8681 lt!587374 k!1164)))

(declare-fun lt!587373 () Unit!43486)

(declare-fun minValue!1279 () V!53181)

(assert (=> b!1321300 (= lt!587373 (lemmaInListMapAfterAddingDiffThenInBefore!158 k!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!587374))))

(declare-fun +!4543 (ListLongMap!21149 tuple2!23480) ListLongMap!21149)

(assert (=> b!1321300 (= lt!587374 (+!4543 lt!587377 (tuple2!23481 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (=> b!1321300 (= lt!587377 (+!4543 lt!587375 (tuple2!23481 (select (arr!42974 _keys!1609) from!2000) lt!587372)))))

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21669 (ValueCell!17131 V!53181) V!53181)

(declare-fun dynLambda!3580 (Int (_ BitVec 64)) V!53181)

(assert (=> b!1321300 (= lt!587372 (get!21669 (select (arr!42973 _values!1337) from!2000) (dynLambda!3580 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6258 (array!89009 array!89007 (_ BitVec 32) (_ BitVec 32) V!53181 V!53181 (_ BitVec 32) Int) ListLongMap!21149)

(assert (=> b!1321300 (= lt!587375 (getCurrentListMapNoExtraKeys!6258 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun mapIsEmpty!55736 () Bool)

(assert (=> mapIsEmpty!55736 mapRes!55736))

(declare-fun b!1321301 () Bool)

(declare-fun res!877065 () Bool)

(assert (=> b!1321301 (=> (not res!877065) (not e!753603))))

(declare-fun getCurrentListMap!5531 (array!89009 array!89007 (_ BitVec 32) (_ BitVec 32) V!53181 V!53181 (_ BitVec 32) Int) ListLongMap!21149)

(assert (=> b!1321301 (= res!877065 (contains!8681 (getCurrentListMap!5531 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k!1164))))

(declare-fun b!1321302 () Bool)

(declare-fun res!877066 () Bool)

(assert (=> b!1321302 (=> (not res!877066) (not e!753603))))

(assert (=> b!1321302 (= res!877066 (not (= (select (arr!42974 _keys!1609) from!2000) k!1164)))))

(declare-fun b!1321303 () Bool)

(assert (=> b!1321303 (= e!753604 tp_is_empty!36059)))

(declare-fun res!877070 () Bool)

(assert (=> start!111618 (=> (not res!877070) (not e!753603))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111618 (= res!877070 (validMask!0 mask!2019))))

(assert (=> start!111618 e!753603))

(declare-fun array_inv!32401 (array!89009) Bool)

(assert (=> start!111618 (array_inv!32401 _keys!1609)))

(assert (=> start!111618 true))

(assert (=> start!111618 tp_is_empty!36059))

(declare-fun e!753606 () Bool)

(declare-fun array_inv!32402 (array!89007) Bool)

(assert (=> start!111618 (and (array_inv!32402 _values!1337) e!753606)))

(assert (=> start!111618 tp!106194))

(declare-fun b!1321304 () Bool)

(declare-fun res!877072 () Bool)

(assert (=> b!1321304 (=> (not res!877072) (not e!753603))))

(assert (=> b!1321304 (= res!877072 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43525 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1321305 () Bool)

(assert (=> b!1321305 (= e!753606 (and e!753607 mapRes!55736))))

(declare-fun condMapEmpty!55736 () Bool)

(declare-fun mapDefault!55736 () ValueCell!17131)

