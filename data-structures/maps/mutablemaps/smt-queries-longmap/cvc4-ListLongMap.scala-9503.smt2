; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112724 () Bool)

(assert start!112724)

(declare-fun b_free!31025 () Bool)

(declare-fun b_next!31025 () Bool)

(assert (=> start!112724 (= b_free!31025 (not b_next!31025))))

(declare-fun tp!108716 () Bool)

(declare-fun b_and!49997 () Bool)

(assert (=> start!112724 (= tp!108716 b_and!49997)))

(declare-fun mapIsEmpty!57080 () Bool)

(declare-fun mapRes!57080 () Bool)

(assert (=> mapIsEmpty!57080 mapRes!57080))

(declare-fun b!1336684 () Bool)

(declare-fun e!761188 () Bool)

(assert (=> b!1336684 (= e!761188 (not true))))

(declare-datatypes ((V!54349 0))(
  ( (V!54350 (val!18542 Int)) )
))
(declare-datatypes ((tuple2!24066 0))(
  ( (tuple2!24067 (_1!12043 (_ BitVec 64)) (_2!12043 V!54349)) )
))
(declare-datatypes ((List!31232 0))(
  ( (Nil!31229) (Cons!31228 (h!32437 tuple2!24066) (t!45545 List!31232)) )
))
(declare-datatypes ((ListLongMap!21735 0))(
  ( (ListLongMap!21736 (toList!10883 List!31232)) )
))
(declare-fun lt!592787 () ListLongMap!21735)

(declare-fun k!1153 () (_ BitVec 64))

(declare-fun contains!8984 (ListLongMap!21735 (_ BitVec 64)) Bool)

(assert (=> b!1336684 (contains!8984 lt!592787 k!1153)))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((Unit!43864 0))(
  ( (Unit!43865) )
))
(declare-fun lt!592785 () Unit!43864)

(declare-datatypes ((array!90701 0))(
  ( (array!90702 (arr!43811 (Array (_ BitVec 32) (_ BitVec 64))) (size!44362 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90701)

(declare-fun lt!592786 () V!54349)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!316 ((_ BitVec 64) (_ BitVec 64) V!54349 ListLongMap!21735) Unit!43864)

(assert (=> b!1336684 (= lt!592785 (lemmaInListMapAfterAddingDiffThenInBefore!316 k!1153 (select (arr!43811 _keys!1590) from!1980) lt!592786 lt!592787))))

(declare-fun lt!592784 () ListLongMap!21735)

(assert (=> b!1336684 (contains!8984 lt!592784 k!1153)))

(declare-fun lt!592788 () Unit!43864)

(declare-fun minValue!1262 () V!54349)

(assert (=> b!1336684 (= lt!592788 (lemmaInListMapAfterAddingDiffThenInBefore!316 k!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!592784))))

(declare-fun +!4715 (ListLongMap!21735 tuple2!24066) ListLongMap!21735)

(assert (=> b!1336684 (= lt!592784 (+!4715 lt!592787 (tuple2!24067 (select (arr!43811 _keys!1590) from!1980) lt!592786)))))

(declare-datatypes ((ValueCell!17569 0))(
  ( (ValueCellFull!17569 (v!21180 V!54349)) (EmptyCell!17569) )
))
(declare-datatypes ((array!90703 0))(
  ( (array!90704 (arr!43812 (Array (_ BitVec 32) ValueCell!17569)) (size!44363 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90703)

(declare-fun defaultEntry!1323 () Int)

(declare-fun get!22144 (ValueCell!17569 V!54349) V!54349)

(declare-fun dynLambda!3752 (Int (_ BitVec 64)) V!54349)

(assert (=> b!1336684 (= lt!592786 (get!22144 (select (arr!43812 _values!1320) from!1980) (dynLambda!3752 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun zeroValue!1262 () V!54349)

(declare-fun getCurrentListMapNoExtraKeys!6438 (array!90701 array!90703 (_ BitVec 32) (_ BitVec 32) V!54349 V!54349 (_ BitVec 32) Int) ListLongMap!21735)

(assert (=> b!1336684 (= lt!592787 (getCurrentListMapNoExtraKeys!6438 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1336685 () Bool)

(declare-fun e!761185 () Bool)

(declare-fun tp_is_empty!36935 () Bool)

(assert (=> b!1336685 (= e!761185 tp_is_empty!36935)))

(declare-fun b!1336686 () Bool)

(declare-fun res!887176 () Bool)

(assert (=> b!1336686 (=> (not res!887176) (not e!761188))))

(assert (=> b!1336686 (= res!887176 (not (= (select (arr!43811 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1336688 () Bool)

(declare-fun e!761186 () Bool)

(assert (=> b!1336688 (= e!761186 (and e!761185 mapRes!57080))))

(declare-fun condMapEmpty!57080 () Bool)

(declare-fun mapDefault!57080 () ValueCell!17569)

