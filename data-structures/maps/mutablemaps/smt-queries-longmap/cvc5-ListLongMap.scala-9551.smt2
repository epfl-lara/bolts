; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113204 () Bool)

(assert start!113204)

(declare-fun b_free!31219 () Bool)

(declare-fun b_next!31219 () Bool)

(assert (=> start!113204 (= b_free!31219 (not b_next!31219))))

(declare-fun tp!109462 () Bool)

(declare-fun b_and!50355 () Bool)

(assert (=> start!113204 (= tp!109462 b_and!50355)))

(declare-fun b!1341954 () Bool)

(declare-fun e!764095 () Bool)

(assert (=> b!1341954 (= e!764095 (not true))))

(declare-datatypes ((V!54729 0))(
  ( (V!54730 (val!18684 Int)) )
))
(declare-datatypes ((tuple2!24210 0))(
  ( (tuple2!24211 (_1!12115 (_ BitVec 64)) (_2!12115 V!54729)) )
))
(declare-datatypes ((List!31391 0))(
  ( (Nil!31388) (Cons!31387 (h!32596 tuple2!24210) (t!45828 List!31391)) )
))
(declare-datatypes ((ListLongMap!21879 0))(
  ( (ListLongMap!21880 (toList!10955 List!31391)) )
))
(declare-fun lt!594263 () ListLongMap!21879)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun contains!9067 (ListLongMap!21879 (_ BitVec 64)) Bool)

(assert (=> b!1341954 (contains!9067 lt!594263 k!1142)))

(declare-datatypes ((Unit!43983 0))(
  ( (Unit!43984) )
))
(declare-fun lt!594261 () Unit!43983)

(declare-datatypes ((array!91247 0))(
  ( (array!91248 (arr!44075 (Array (_ BitVec 32) (_ BitVec 64))) (size!44626 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91247)

(declare-fun lt!594262 () V!54729)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!351 ((_ BitVec 64) (_ BitVec 64) V!54729 ListLongMap!21879) Unit!43983)

(assert (=> b!1341954 (= lt!594261 (lemmaInListMapAfterAddingDiffThenInBefore!351 k!1142 (select (arr!44075 _keys!1571) from!1960) lt!594262 lt!594263))))

(declare-fun lt!594264 () ListLongMap!21879)

(assert (=> b!1341954 (contains!9067 lt!594264 k!1142)))

(declare-fun zeroValue!1245 () V!54729)

(declare-fun lt!594265 () Unit!43983)

(assert (=> b!1341954 (= lt!594265 (lemmaInListMapAfterAddingDiffThenInBefore!351 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594264))))

(declare-fun +!4759 (ListLongMap!21879 tuple2!24210) ListLongMap!21879)

(assert (=> b!1341954 (= lt!594264 (+!4759 lt!594263 (tuple2!24211 (select (arr!44075 _keys!1571) from!1960) lt!594262)))))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((ValueCell!17711 0))(
  ( (ValueCellFull!17711 (v!21330 V!54729)) (EmptyCell!17711) )
))
(declare-datatypes ((array!91249 0))(
  ( (array!91250 (arr!44076 (Array (_ BitVec 32) ValueCell!17711)) (size!44627 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91249)

(declare-fun get!22294 (ValueCell!17711 V!54729) V!54729)

(declare-fun dynLambda!3796 (Int (_ BitVec 64)) V!54729)

(assert (=> b!1341954 (= lt!594262 (get!22294 (select (arr!44076 _values!1303) from!1960) (dynLambda!3796 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54729)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6482 (array!91247 array!91249 (_ BitVec 32) (_ BitVec 32) V!54729 V!54729 (_ BitVec 32) Int) ListLongMap!21879)

(assert (=> b!1341954 (= lt!594263 (getCurrentListMapNoExtraKeys!6482 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1341955 () Bool)

(declare-fun res!890381 () Bool)

(assert (=> b!1341955 (=> (not res!890381) (not e!764095))))

(assert (=> b!1341955 (= res!890381 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44626 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341956 () Bool)

(declare-fun e!764094 () Bool)

(declare-fun tp_is_empty!37219 () Bool)

(assert (=> b!1341956 (= e!764094 tp_is_empty!37219)))

(declare-fun b!1341957 () Bool)

(declare-fun res!890375 () Bool)

(assert (=> b!1341957 (=> (not res!890375) (not e!764095))))

(declare-fun getCurrentListMap!5855 (array!91247 array!91249 (_ BitVec 32) (_ BitVec 32) V!54729 V!54729 (_ BitVec 32) Int) ListLongMap!21879)

(assert (=> b!1341957 (= res!890375 (contains!9067 (getCurrentListMap!5855 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1341958 () Bool)

(declare-fun res!890374 () Bool)

(assert (=> b!1341958 (=> (not res!890374) (not e!764095))))

(assert (=> b!1341958 (= res!890374 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!890378 () Bool)

(assert (=> start!113204 (=> (not res!890378) (not e!764095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113204 (= res!890378 (validMask!0 mask!1977))))

(assert (=> start!113204 e!764095))

(assert (=> start!113204 tp_is_empty!37219))

(assert (=> start!113204 true))

(declare-fun array_inv!33141 (array!91247) Bool)

(assert (=> start!113204 (array_inv!33141 _keys!1571)))

(declare-fun e!764096 () Bool)

(declare-fun array_inv!33142 (array!91249) Bool)

(assert (=> start!113204 (and (array_inv!33142 _values!1303) e!764096)))

(assert (=> start!113204 tp!109462))

(declare-fun mapIsEmpty!57535 () Bool)

(declare-fun mapRes!57535 () Bool)

(assert (=> mapIsEmpty!57535 mapRes!57535))

(declare-fun b!1341959 () Bool)

(declare-fun res!890380 () Bool)

(assert (=> b!1341959 (=> (not res!890380) (not e!764095))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91247 (_ BitVec 32)) Bool)

(assert (=> b!1341959 (= res!890380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1341960 () Bool)

(declare-fun res!890379 () Bool)

(assert (=> b!1341960 (=> (not res!890379) (not e!764095))))

(assert (=> b!1341960 (= res!890379 (not (= (select (arr!44075 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1341961 () Bool)

(assert (=> b!1341961 (= e!764096 (and e!764094 mapRes!57535))))

(declare-fun condMapEmpty!57535 () Bool)

(declare-fun mapDefault!57535 () ValueCell!17711)

