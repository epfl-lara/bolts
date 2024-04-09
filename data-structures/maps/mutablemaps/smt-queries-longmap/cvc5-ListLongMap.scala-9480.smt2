; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112524 () Bool)

(assert start!112524)

(declare-fun b_free!30883 () Bool)

(declare-fun b_next!30883 () Bool)

(assert (=> start!112524 (= b_free!30883 (not b_next!30883))))

(declare-fun tp!108287 () Bool)

(declare-fun b_and!49777 () Bool)

(assert (=> start!112524 (= tp!108287 b_and!49777)))

(declare-fun b!1333981 () Bool)

(declare-fun res!885398 () Bool)

(declare-fun e!759847 () Bool)

(assert (=> b!1333981 (=> (not res!885398) (not e!759847))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1333981 (= res!885398 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1333982 () Bool)

(declare-fun res!885397 () Bool)

(assert (=> b!1333982 (=> (not res!885397) (not e!759847))))

(declare-datatypes ((array!90433 0))(
  ( (array!90434 (arr!43678 (Array (_ BitVec 32) (_ BitVec 64))) (size!44229 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90433)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1333982 (= res!885397 (validKeyInArray!0 (select (arr!43678 _keys!1590) from!1980)))))

(declare-fun b!1333983 () Bool)

(declare-fun e!759846 () Bool)

(assert (=> b!1333983 (= e!759846 (not true))))

(declare-datatypes ((V!54161 0))(
  ( (V!54162 (val!18471 Int)) )
))
(declare-datatypes ((tuple2!23970 0))(
  ( (tuple2!23971 (_1!11995 (_ BitVec 64)) (_2!11995 V!54161)) )
))
(declare-datatypes ((List!31143 0))(
  ( (Nil!31140) (Cons!31139 (h!32348 tuple2!23970) (t!45392 List!31143)) )
))
(declare-datatypes ((ListLongMap!21639 0))(
  ( (ListLongMap!21640 (toList!10835 List!31143)) )
))
(declare-fun lt!592196 () ListLongMap!21639)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8935 (ListLongMap!21639 (_ BitVec 64)) Bool)

(assert (=> b!1333983 (contains!8935 lt!592196 k!1153)))

(declare-datatypes ((Unit!43813 0))(
  ( (Unit!43814) )
))
(declare-fun lt!592195 () Unit!43813)

(declare-fun lt!592194 () V!54161)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!298 ((_ BitVec 64) (_ BitVec 64) V!54161 ListLongMap!21639) Unit!43813)

(assert (=> b!1333983 (= lt!592195 (lemmaInListMapAfterAddingDiffThenInBefore!298 k!1153 (select (arr!43678 _keys!1590) from!1980) lt!592194 lt!592196))))

(declare-fun b!1333984 () Bool)

(declare-fun res!885402 () Bool)

(assert (=> b!1333984 (=> (not res!885402) (not e!759847))))

(declare-datatypes ((ValueCell!17498 0))(
  ( (ValueCellFull!17498 (v!21106 V!54161)) (EmptyCell!17498) )
))
(declare-datatypes ((array!90435 0))(
  ( (array!90436 (arr!43679 (Array (_ BitVec 32) ValueCell!17498)) (size!44230 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90435)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54161)

(declare-fun zeroValue!1262 () V!54161)

(declare-fun getCurrentListMap!5750 (array!90433 array!90435 (_ BitVec 32) (_ BitVec 32) V!54161 V!54161 (_ BitVec 32) Int) ListLongMap!21639)

(assert (=> b!1333984 (= res!885402 (contains!8935 (getCurrentListMap!5750 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k!1153))))

(declare-fun b!1333985 () Bool)

(declare-fun e!759844 () Bool)

(declare-fun tp_is_empty!36793 () Bool)

(assert (=> b!1333985 (= e!759844 tp_is_empty!36793)))

(declare-fun b!1333986 () Bool)

(declare-fun e!759845 () Bool)

(declare-fun mapRes!56863 () Bool)

(assert (=> b!1333986 (= e!759845 (and e!759844 mapRes!56863))))

(declare-fun condMapEmpty!56863 () Bool)

(declare-fun mapDefault!56863 () ValueCell!17498)

