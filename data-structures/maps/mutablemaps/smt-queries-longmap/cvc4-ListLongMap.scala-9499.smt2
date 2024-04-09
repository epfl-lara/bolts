; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112700 () Bool)

(assert start!112700)

(declare-fun b_free!31001 () Bool)

(declare-fun b_next!31001 () Bool)

(assert (=> start!112700 (= b_free!31001 (not b_next!31001))))

(declare-fun tp!108644 () Bool)

(declare-fun b_and!49949 () Bool)

(assert (=> start!112700 (= tp!108644 b_and!49949)))

(declare-fun mapNonEmpty!57044 () Bool)

(declare-fun mapRes!57044 () Bool)

(declare-fun tp!108645 () Bool)

(declare-fun e!761007 () Bool)

(assert (=> mapNonEmpty!57044 (= mapRes!57044 (and tp!108645 e!761007))))

(declare-datatypes ((V!54317 0))(
  ( (V!54318 (val!18530 Int)) )
))
(declare-datatypes ((ValueCell!17557 0))(
  ( (ValueCellFull!17557 (v!21168 V!54317)) (EmptyCell!17557) )
))
(declare-fun mapValue!57044 () ValueCell!17557)

(declare-fun mapRest!57044 () (Array (_ BitVec 32) ValueCell!17557))

(declare-datatypes ((array!90655 0))(
  ( (array!90656 (arr!43788 (Array (_ BitVec 32) ValueCell!17557)) (size!44339 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90655)

(declare-fun mapKey!57044 () (_ BitVec 32))

(assert (=> mapNonEmpty!57044 (= (arr!43788 _values!1320) (store mapRest!57044 mapKey!57044 mapValue!57044))))

(declare-fun res!886854 () Bool)

(declare-fun e!761005 () Bool)

(assert (=> start!112700 (=> (not res!886854) (not e!761005))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112700 (= res!886854 (validMask!0 mask!1998))))

(assert (=> start!112700 e!761005))

(declare-fun e!761004 () Bool)

(declare-fun array_inv!32959 (array!90655) Bool)

(assert (=> start!112700 (and (array_inv!32959 _values!1320) e!761004)))

(assert (=> start!112700 true))

(declare-datatypes ((array!90657 0))(
  ( (array!90658 (arr!43789 (Array (_ BitVec 32) (_ BitVec 64))) (size!44340 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90657)

(declare-fun array_inv!32960 (array!90657) Bool)

(assert (=> start!112700 (array_inv!32960 _keys!1590)))

(assert (=> start!112700 tp!108644))

(declare-fun tp_is_empty!36911 () Bool)

(assert (=> start!112700 tp_is_empty!36911))

(declare-fun b!1336228 () Bool)

(declare-fun res!886847 () Bool)

(assert (=> b!1336228 (=> (not res!886847) (not e!761005))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1336228 (= res!886847 (validKeyInArray!0 (select (arr!43789 _keys!1590) from!1980)))))

(declare-fun mapIsEmpty!57044 () Bool)

(assert (=> mapIsEmpty!57044 mapRes!57044))

(declare-fun b!1336229 () Bool)

(declare-fun res!886849 () Bool)

(assert (=> b!1336229 (=> (not res!886849) (not e!761005))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!54317)

(declare-fun zeroValue!1262 () V!54317)

(declare-datatypes ((tuple2!24052 0))(
  ( (tuple2!24053 (_1!12036 (_ BitVec 64)) (_2!12036 V!54317)) )
))
(declare-datatypes ((List!31221 0))(
  ( (Nil!31218) (Cons!31217 (h!32426 tuple2!24052) (t!45510 List!31221)) )
))
(declare-datatypes ((ListLongMap!21721 0))(
  ( (ListLongMap!21722 (toList!10876 List!31221)) )
))
(declare-fun contains!8977 (ListLongMap!21721 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5784 (array!90657 array!90655 (_ BitVec 32) (_ BitVec 32) V!54317 V!54317 (_ BitVec 32) Int) ListLongMap!21721)

(assert (=> b!1336229 (= res!886849 (contains!8977 (getCurrentListMap!5784 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1336230 () Bool)

(declare-fun res!886848 () Bool)

(assert (=> b!1336230 (=> (not res!886848) (not e!761005))))

(assert (=> b!1336230 (= res!886848 (not (= (select (arr!43789 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1336231 () Bool)

(declare-fun res!886853 () Bool)

(assert (=> b!1336231 (=> (not res!886853) (not e!761005))))

(assert (=> b!1336231 (= res!886853 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1336232 () Bool)

(declare-fun e!761008 () Bool)

(assert (=> b!1336232 (= e!761008 tp_is_empty!36911)))

(declare-fun b!1336233 () Bool)

(assert (=> b!1336233 (= e!761005 (not true))))

(declare-fun lt!592688 () ListLongMap!21721)

(assert (=> b!1336233 (contains!8977 lt!592688 k!1153)))

(declare-datatypes ((Unit!43850 0))(
  ( (Unit!43851) )
))
(declare-fun lt!592689 () Unit!43850)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!309 ((_ BitVec 64) (_ BitVec 64) V!54317 ListLongMap!21721) Unit!43850)

(assert (=> b!1336233 (= lt!592689 (lemmaInListMapAfterAddingDiffThenInBefore!309 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!592688))))

(declare-fun +!4708 (ListLongMap!21721 tuple2!24052) ListLongMap!21721)

(declare-fun getCurrentListMapNoExtraKeys!6431 (array!90657 array!90655 (_ BitVec 32) (_ BitVec 32) V!54317 V!54317 (_ BitVec 32) Int) ListLongMap!21721)

(declare-fun get!22129 (ValueCell!17557 V!54317) V!54317)

(declare-fun dynLambda!3745 (Int (_ BitVec 64)) V!54317)

(assert (=> b!1336233 (= lt!592688 (+!4708 (getCurrentListMapNoExtraKeys!6431 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24053 (select (arr!43789 _keys!1590) from!1980) (get!22129 (select (arr!43788 _values!1320) from!1980) (dynLambda!3745 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1336234 () Bool)

(assert (=> b!1336234 (= e!761004 (and e!761008 mapRes!57044))))

(declare-fun condMapEmpty!57044 () Bool)

(declare-fun mapDefault!57044 () ValueCell!17557)

