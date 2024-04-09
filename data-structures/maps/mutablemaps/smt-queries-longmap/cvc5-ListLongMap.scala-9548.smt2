; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113186 () Bool)

(assert start!113186)

(declare-fun b_free!31201 () Bool)

(declare-fun b_next!31201 () Bool)

(assert (=> start!113186 (= b_free!31201 (not b_next!31201))))

(declare-fun tp!109408 () Bool)

(declare-fun b_and!50319 () Bool)

(assert (=> start!113186 (= tp!109408 b_and!50319)))

(declare-fun mapIsEmpty!57508 () Bool)

(declare-fun mapRes!57508 () Bool)

(assert (=> mapIsEmpty!57508 mapRes!57508))

(declare-fun b!1341612 () Bool)

(declare-fun e!763961 () Bool)

(declare-fun tp_is_empty!37201 () Bool)

(assert (=> b!1341612 (= e!763961 tp_is_empty!37201)))

(declare-fun b!1341613 () Bool)

(declare-fun res!890138 () Bool)

(declare-fun e!763957 () Bool)

(assert (=> b!1341613 (=> (not res!890138) (not e!763957))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1341613 (= res!890138 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1341615 () Bool)

(assert (=> b!1341615 (= e!763957 (not true))))

(declare-datatypes ((V!54705 0))(
  ( (V!54706 (val!18675 Int)) )
))
(declare-datatypes ((tuple2!24194 0))(
  ( (tuple2!24195 (_1!12107 (_ BitVec 64)) (_2!12107 V!54705)) )
))
(declare-datatypes ((List!31375 0))(
  ( (Nil!31372) (Cons!31371 (h!32580 tuple2!24194) (t!45794 List!31375)) )
))
(declare-datatypes ((ListLongMap!21863 0))(
  ( (ListLongMap!21864 (toList!10947 List!31375)) )
))
(declare-fun lt!594127 () ListLongMap!21863)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun contains!9059 (ListLongMap!21863 (_ BitVec 64)) Bool)

(assert (=> b!1341615 (contains!9059 lt!594127 k!1142)))

(declare-datatypes ((array!91211 0))(
  ( (array!91212 (arr!44057 (Array (_ BitVec 32) (_ BitVec 64))) (size!44608 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91211)

(declare-fun lt!594130 () V!54705)

(declare-datatypes ((Unit!43969 0))(
  ( (Unit!43970) )
))
(declare-fun lt!594126 () Unit!43969)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!344 ((_ BitVec 64) (_ BitVec 64) V!54705 ListLongMap!21863) Unit!43969)

(assert (=> b!1341615 (= lt!594126 (lemmaInListMapAfterAddingDiffThenInBefore!344 k!1142 (select (arr!44057 _keys!1571) from!1960) lt!594130 lt!594127))))

(declare-fun lt!594128 () ListLongMap!21863)

(assert (=> b!1341615 (contains!9059 lt!594128 k!1142)))

(declare-fun lt!594129 () Unit!43969)

(declare-fun zeroValue!1245 () V!54705)

(assert (=> b!1341615 (= lt!594129 (lemmaInListMapAfterAddingDiffThenInBefore!344 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594128))))

(declare-fun +!4752 (ListLongMap!21863 tuple2!24194) ListLongMap!21863)

(assert (=> b!1341615 (= lt!594128 (+!4752 lt!594127 (tuple2!24195 (select (arr!44057 _keys!1571) from!1960) lt!594130)))))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((ValueCell!17702 0))(
  ( (ValueCellFull!17702 (v!21321 V!54705)) (EmptyCell!17702) )
))
(declare-datatypes ((array!91213 0))(
  ( (array!91214 (arr!44058 (Array (_ BitVec 32) ValueCell!17702)) (size!44609 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91213)

(declare-fun get!22281 (ValueCell!17702 V!54705) V!54705)

(declare-fun dynLambda!3789 (Int (_ BitVec 64)) V!54705)

(assert (=> b!1341615 (= lt!594130 (get!22281 (select (arr!44058 _values!1303) from!1960) (dynLambda!3789 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun minValue!1245 () V!54705)

(declare-fun getCurrentListMapNoExtraKeys!6475 (array!91211 array!91213 (_ BitVec 32) (_ BitVec 32) V!54705 V!54705 (_ BitVec 32) Int) ListLongMap!21863)

(assert (=> b!1341615 (= lt!594127 (getCurrentListMapNoExtraKeys!6475 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1341616 () Bool)

(declare-fun res!890136 () Bool)

(assert (=> b!1341616 (=> (not res!890136) (not e!763957))))

(assert (=> b!1341616 (= res!890136 (and (= (size!44609 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44608 _keys!1571) (size!44609 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1341617 () Bool)

(declare-fun res!890130 () Bool)

(assert (=> b!1341617 (=> (not res!890130) (not e!763957))))

(assert (=> b!1341617 (= res!890130 (not (= (select (arr!44057 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1341618 () Bool)

(declare-fun e!763960 () Bool)

(assert (=> b!1341618 (= e!763960 (and e!763961 mapRes!57508))))

(declare-fun condMapEmpty!57508 () Bool)

(declare-fun mapDefault!57508 () ValueCell!17702)

