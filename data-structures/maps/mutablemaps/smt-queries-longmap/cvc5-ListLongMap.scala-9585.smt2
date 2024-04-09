; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113408 () Bool)

(assert start!113408)

(declare-fun b_free!31423 () Bool)

(declare-fun b_next!31423 () Bool)

(assert (=> start!113408 (= b_free!31423 (not b_next!31423))))

(declare-fun tp!110074 () Bool)

(declare-fun b_and!50709 () Bool)

(assert (=> start!113408 (= tp!110074 b_and!50709)))

(declare-fun b!1345609 () Bool)

(declare-fun res!892970 () Bool)

(declare-fun e!765689 () Bool)

(assert (=> b!1345609 (=> (not res!892970) (not e!765689))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1345609 (= res!892970 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1345611 () Bool)

(declare-fun e!765687 () Bool)

(assert (=> b!1345611 (= e!765689 e!765687)))

(declare-fun res!892960 () Bool)

(assert (=> b!1345611 (=> (not res!892960) (not e!765687))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((V!55001 0))(
  ( (V!55002 (val!18786 Int)) )
))
(declare-fun lt!595338 () V!55001)

(declare-datatypes ((array!91643 0))(
  ( (array!91644 (arr!44273 (Array (_ BitVec 32) (_ BitVec 64))) (size!44824 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91643)

(declare-datatypes ((tuple2!24358 0))(
  ( (tuple2!24359 (_1!12189 (_ BitVec 64)) (_2!12189 V!55001)) )
))
(declare-datatypes ((List!31528 0))(
  ( (Nil!31525) (Cons!31524 (h!32733 tuple2!24358) (t!46115 List!31528)) )
))
(declare-datatypes ((ListLongMap!22027 0))(
  ( (ListLongMap!22028 (toList!11029 List!31528)) )
))
(declare-fun lt!595337 () ListLongMap!22027)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun contains!9141 (ListLongMap!22027 (_ BitVec 64)) Bool)

(declare-fun +!4807 (ListLongMap!22027 tuple2!24358) ListLongMap!22027)

(assert (=> b!1345611 (= res!892960 (contains!9141 (+!4807 lt!595337 (tuple2!24359 (select (arr!44273 _keys!1571) from!1960) lt!595338)) k!1142))))

(declare-fun minValue!1245 () V!55001)

(declare-fun defaultEntry!1306 () Int)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!55001)

(declare-datatypes ((ValueCell!17813 0))(
  ( (ValueCellFull!17813 (v!21432 V!55001)) (EmptyCell!17813) )
))
(declare-datatypes ((array!91645 0))(
  ( (array!91646 (arr!44274 (Array (_ BitVec 32) ValueCell!17813)) (size!44825 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91645)

(declare-fun getCurrentListMapNoExtraKeys!6530 (array!91643 array!91645 (_ BitVec 32) (_ BitVec 32) V!55001 V!55001 (_ BitVec 32) Int) ListLongMap!22027)

(assert (=> b!1345611 (= lt!595337 (getCurrentListMapNoExtraKeys!6530 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22410 (ValueCell!17813 V!55001) V!55001)

(declare-fun dynLambda!3844 (Int (_ BitVec 64)) V!55001)

(assert (=> b!1345611 (= lt!595338 (get!22410 (select (arr!44274 _values!1303) from!1960) (dynLambda!3844 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1345612 () Bool)

(declare-fun res!892966 () Bool)

(assert (=> b!1345612 (=> (not res!892966) (not e!765689))))

(declare-datatypes ((List!31529 0))(
  ( (Nil!31526) (Cons!31525 (h!32734 (_ BitVec 64)) (t!46116 List!31529)) )
))
(declare-fun arrayNoDuplicates!0 (array!91643 (_ BitVec 32) List!31529) Bool)

(assert (=> b!1345612 (= res!892966 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31526))))

(declare-fun b!1345613 () Bool)

(declare-fun e!765688 () Bool)

(declare-fun tp_is_empty!37423 () Bool)

(assert (=> b!1345613 (= e!765688 tp_is_empty!37423)))

(declare-fun b!1345614 () Bool)

(declare-fun res!892963 () Bool)

(assert (=> b!1345614 (=> (not res!892963) (not e!765689))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1345614 (= res!892963 (validKeyInArray!0 (select (arr!44273 _keys!1571) from!1960)))))

(declare-fun b!1345615 () Bool)

(declare-fun res!892968 () Bool)

(assert (=> b!1345615 (=> (not res!892968) (not e!765689))))

(declare-fun getCurrentListMap!5920 (array!91643 array!91645 (_ BitVec 32) (_ BitVec 32) V!55001 V!55001 (_ BitVec 32) Int) ListLongMap!22027)

(assert (=> b!1345615 (= res!892968 (contains!9141 (getCurrentListMap!5920 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1345616 () Bool)

(declare-fun res!892961 () Bool)

(assert (=> b!1345616 (=> (not res!892961) (not e!765689))))

(assert (=> b!1345616 (= res!892961 (not (= (select (arr!44273 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1345617 () Bool)

(assert (=> b!1345617 (= e!765687 (not true))))

(assert (=> b!1345617 (contains!9141 lt!595337 k!1142)))

(declare-datatypes ((Unit!44073 0))(
  ( (Unit!44074) )
))
(declare-fun lt!595339 () Unit!44073)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!396 ((_ BitVec 64) (_ BitVec 64) V!55001 ListLongMap!22027) Unit!44073)

(assert (=> b!1345617 (= lt!595339 (lemmaInListMapAfterAddingDiffThenInBefore!396 k!1142 (select (arr!44273 _keys!1571) from!1960) lt!595338 lt!595337))))

(declare-fun b!1345618 () Bool)

(declare-fun res!892967 () Bool)

(assert (=> b!1345618 (=> (not res!892967) (not e!765689))))

(assert (=> b!1345618 (= res!892967 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44824 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!57841 () Bool)

(declare-fun mapRes!57841 () Bool)

(assert (=> mapIsEmpty!57841 mapRes!57841))

(declare-fun mapNonEmpty!57841 () Bool)

(declare-fun tp!110075 () Bool)

(assert (=> mapNonEmpty!57841 (= mapRes!57841 (and tp!110075 e!765688))))

(declare-fun mapRest!57841 () (Array (_ BitVec 32) ValueCell!17813))

(declare-fun mapKey!57841 () (_ BitVec 32))

(declare-fun mapValue!57841 () ValueCell!17813)

(assert (=> mapNonEmpty!57841 (= (arr!44274 _values!1303) (store mapRest!57841 mapKey!57841 mapValue!57841))))

(declare-fun b!1345610 () Bool)

(declare-fun e!765692 () Bool)

(assert (=> b!1345610 (= e!765692 tp_is_empty!37423)))

(declare-fun res!892969 () Bool)

(assert (=> start!113408 (=> (not res!892969) (not e!765689))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113408 (= res!892969 (validMask!0 mask!1977))))

(assert (=> start!113408 e!765689))

(assert (=> start!113408 tp_is_empty!37423))

(assert (=> start!113408 true))

(declare-fun array_inv!33277 (array!91643) Bool)

(assert (=> start!113408 (array_inv!33277 _keys!1571)))

(declare-fun e!765691 () Bool)

(declare-fun array_inv!33278 (array!91645) Bool)

(assert (=> start!113408 (and (array_inv!33278 _values!1303) e!765691)))

(assert (=> start!113408 tp!110074))

(declare-fun b!1345619 () Bool)

(declare-fun res!892965 () Bool)

(assert (=> b!1345619 (=> (not res!892965) (not e!765689))))

(assert (=> b!1345619 (= res!892965 (and (= (size!44825 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44824 _keys!1571) (size!44825 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1345620 () Bool)

(declare-fun res!892962 () Bool)

(assert (=> b!1345620 (=> (not res!892962) (not e!765687))))

(assert (=> b!1345620 (= res!892962 (not (= k!1142 (select (arr!44273 _keys!1571) from!1960))))))

(declare-fun b!1345621 () Bool)

(declare-fun res!892964 () Bool)

(assert (=> b!1345621 (=> (not res!892964) (not e!765689))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91643 (_ BitVec 32)) Bool)

(assert (=> b!1345621 (= res!892964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1345622 () Bool)

(assert (=> b!1345622 (= e!765691 (and e!765692 mapRes!57841))))

(declare-fun condMapEmpty!57841 () Bool)

(declare-fun mapDefault!57841 () ValueCell!17813)

