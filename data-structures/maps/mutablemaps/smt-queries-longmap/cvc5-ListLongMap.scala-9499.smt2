; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112696 () Bool)

(assert start!112696)

(declare-fun b_free!30997 () Bool)

(declare-fun b_next!30997 () Bool)

(assert (=> start!112696 (= b_free!30997 (not b_next!30997))))

(declare-fun tp!108633 () Bool)

(declare-fun b_and!49941 () Bool)

(assert (=> start!112696 (= tp!108633 b_and!49941)))

(declare-fun mapNonEmpty!57038 () Bool)

(declare-fun mapRes!57038 () Bool)

(declare-fun tp!108632 () Bool)

(declare-fun e!760978 () Bool)

(assert (=> mapNonEmpty!57038 (= mapRes!57038 (and tp!108632 e!760978))))

(declare-datatypes ((V!54313 0))(
  ( (V!54314 (val!18528 Int)) )
))
(declare-datatypes ((ValueCell!17555 0))(
  ( (ValueCellFull!17555 (v!21166 V!54313)) (EmptyCell!17555) )
))
(declare-fun mapRest!57038 () (Array (_ BitVec 32) ValueCell!17555))

(declare-datatypes ((array!90647 0))(
  ( (array!90648 (arr!43784 (Array (_ BitVec 32) ValueCell!17555)) (size!44335 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90647)

(declare-fun mapValue!57038 () ValueCell!17555)

(declare-fun mapKey!57038 () (_ BitVec 32))

(assert (=> mapNonEmpty!57038 (= (arr!43784 _values!1320) (store mapRest!57038 mapKey!57038 mapValue!57038))))

(declare-fun b!1336152 () Bool)

(declare-fun res!886800 () Bool)

(declare-fun e!760975 () Bool)

(assert (=> b!1336152 (=> (not res!886800) (not e!760975))))

(declare-datatypes ((array!90649 0))(
  ( (array!90650 (arr!43785 (Array (_ BitVec 32) (_ BitVec 64))) (size!44336 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90649)

(declare-datatypes ((List!31217 0))(
  ( (Nil!31214) (Cons!31213 (h!32422 (_ BitVec 64)) (t!45502 List!31217)) )
))
(declare-fun arrayNoDuplicates!0 (array!90649 (_ BitVec 32) List!31217) Bool)

(assert (=> b!1336152 (= res!886800 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31214))))

(declare-fun mapIsEmpty!57038 () Bool)

(assert (=> mapIsEmpty!57038 mapRes!57038))

(declare-fun b!1336153 () Bool)

(declare-fun res!886801 () Bool)

(assert (=> b!1336153 (=> (not res!886801) (not e!760975))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1336153 (= res!886801 (not (= (select (arr!43785 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1336154 () Bool)

(declare-fun res!886796 () Bool)

(assert (=> b!1336154 (=> (not res!886796) (not e!760975))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1336154 (= res!886796 (validKeyInArray!0 (select (arr!43785 _keys!1590) from!1980)))))

(declare-fun res!886795 () Bool)

(assert (=> start!112696 (=> (not res!886795) (not e!760975))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112696 (= res!886795 (validMask!0 mask!1998))))

(assert (=> start!112696 e!760975))

(declare-fun e!760976 () Bool)

(declare-fun array_inv!32955 (array!90647) Bool)

(assert (=> start!112696 (and (array_inv!32955 _values!1320) e!760976)))

(assert (=> start!112696 true))

(declare-fun array_inv!32956 (array!90649) Bool)

(assert (=> start!112696 (array_inv!32956 _keys!1590)))

(assert (=> start!112696 tp!108633))

(declare-fun tp_is_empty!36907 () Bool)

(assert (=> start!112696 tp_is_empty!36907))

(declare-fun b!1336155 () Bool)

(assert (=> b!1336155 (= e!760975 (not true))))

(declare-datatypes ((tuple2!24048 0))(
  ( (tuple2!24049 (_1!12034 (_ BitVec 64)) (_2!12034 V!54313)) )
))
(declare-datatypes ((List!31218 0))(
  ( (Nil!31215) (Cons!31214 (h!32423 tuple2!24048) (t!45503 List!31218)) )
))
(declare-datatypes ((ListLongMap!21717 0))(
  ( (ListLongMap!21718 (toList!10874 List!31218)) )
))
(declare-fun lt!592676 () ListLongMap!21717)

(declare-fun contains!8975 (ListLongMap!21717 (_ BitVec 64)) Bool)

(assert (=> b!1336155 (contains!8975 lt!592676 k!1153)))

(declare-datatypes ((Unit!43846 0))(
  ( (Unit!43847) )
))
(declare-fun lt!592677 () Unit!43846)

(declare-fun minValue!1262 () V!54313)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!307 ((_ BitVec 64) (_ BitVec 64) V!54313 ListLongMap!21717) Unit!43846)

(assert (=> b!1336155 (= lt!592677 (lemmaInListMapAfterAddingDiffThenInBefore!307 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!592676))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun zeroValue!1262 () V!54313)

(declare-fun +!4706 (ListLongMap!21717 tuple2!24048) ListLongMap!21717)

(declare-fun getCurrentListMapNoExtraKeys!6429 (array!90649 array!90647 (_ BitVec 32) (_ BitVec 32) V!54313 V!54313 (_ BitVec 32) Int) ListLongMap!21717)

(declare-fun get!22127 (ValueCell!17555 V!54313) V!54313)

(declare-fun dynLambda!3743 (Int (_ BitVec 64)) V!54313)

(assert (=> b!1336155 (= lt!592676 (+!4706 (getCurrentListMapNoExtraKeys!6429 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24049 (select (arr!43785 _keys!1590) from!1980) (get!22127 (select (arr!43784 _values!1320) from!1980) (dynLambda!3743 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1336156 () Bool)

(declare-fun e!760977 () Bool)

(assert (=> b!1336156 (= e!760976 (and e!760977 mapRes!57038))))

(declare-fun condMapEmpty!57038 () Bool)

(declare-fun mapDefault!57038 () ValueCell!17555)

