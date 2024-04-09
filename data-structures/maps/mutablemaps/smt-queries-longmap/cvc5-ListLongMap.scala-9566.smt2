; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113294 () Bool)

(assert start!113294)

(declare-fun b_free!31309 () Bool)

(declare-fun b_next!31309 () Bool)

(assert (=> start!113294 (= b_free!31309 (not b_next!31309))))

(declare-fun tp!109733 () Bool)

(declare-fun b_and!50535 () Bool)

(assert (=> start!113294 (= tp!109733 b_and!50535)))

(declare-fun b!1343664 () Bool)

(declare-fun res!891596 () Bool)

(declare-fun e!764768 () Bool)

(assert (=> b!1343664 (=> (not res!891596) (not e!764768))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91417 0))(
  ( (array!91418 (arr!44160 (Array (_ BitVec 32) (_ BitVec 64))) (size!44711 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91417)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1343664 (= res!891596 (not (= (select (arr!44160 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1343665 () Bool)

(declare-fun res!891591 () Bool)

(assert (=> b!1343665 (=> (not res!891591) (not e!764768))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1343665 (= res!891591 (validKeyInArray!0 (select (arr!44160 _keys!1571) from!1960)))))

(declare-fun mapIsEmpty!57670 () Bool)

(declare-fun mapRes!57670 () Bool)

(assert (=> mapIsEmpty!57670 mapRes!57670))

(declare-fun b!1343666 () Bool)

(assert (=> b!1343666 (= e!764768 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!54849 0))(
  ( (V!54850 (val!18729 Int)) )
))
(declare-datatypes ((tuple2!24282 0))(
  ( (tuple2!24283 (_1!12151 (_ BitVec 64)) (_2!12151 V!54849)) )
))
(declare-datatypes ((List!31456 0))(
  ( (Nil!31453) (Cons!31452 (h!32661 tuple2!24282) (t!45983 List!31456)) )
))
(declare-datatypes ((ListLongMap!21951 0))(
  ( (ListLongMap!21952 (toList!10991 List!31456)) )
))
(declare-fun lt!595015 () ListLongMap!21951)

(declare-fun zeroValue!1245 () V!54849)

(declare-fun contains!9103 (ListLongMap!21951 (_ BitVec 64)) Bool)

(declare-fun +!4787 (ListLongMap!21951 tuple2!24282) ListLongMap!21951)

(assert (=> b!1343666 (contains!9103 (+!4787 lt!595015 (tuple2!24283 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k!1142)))

(declare-datatypes ((Unit!44039 0))(
  ( (Unit!44040) )
))
(declare-fun lt!595013 () Unit!44039)

(declare-fun addStillContains!1213 (ListLongMap!21951 (_ BitVec 64) V!54849 (_ BitVec 64)) Unit!44039)

(assert (=> b!1343666 (= lt!595013 (addStillContains!1213 lt!595015 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k!1142))))

(assert (=> b!1343666 (contains!9103 lt!595015 k!1142)))

(declare-fun lt!595011 () Unit!44039)

(declare-fun lt!595012 () V!54849)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!379 ((_ BitVec 64) (_ BitVec 64) V!54849 ListLongMap!21951) Unit!44039)

(assert (=> b!1343666 (= lt!595011 (lemmaInListMapAfterAddingDiffThenInBefore!379 k!1142 (select (arr!44160 _keys!1571) from!1960) lt!595012 lt!595015))))

(declare-fun lt!595010 () ListLongMap!21951)

(assert (=> b!1343666 (contains!9103 lt!595010 k!1142)))

(declare-fun lt!595014 () Unit!44039)

(assert (=> b!1343666 (= lt!595014 (lemmaInListMapAfterAddingDiffThenInBefore!379 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!595010))))

(assert (=> b!1343666 (= lt!595010 (+!4787 lt!595015 (tuple2!24283 (select (arr!44160 _keys!1571) from!1960) lt!595012)))))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((ValueCell!17756 0))(
  ( (ValueCellFull!17756 (v!21375 V!54849)) (EmptyCell!17756) )
))
(declare-datatypes ((array!91419 0))(
  ( (array!91420 (arr!44161 (Array (_ BitVec 32) ValueCell!17756)) (size!44712 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91419)

(declare-fun get!22352 (ValueCell!17756 V!54849) V!54849)

(declare-fun dynLambda!3824 (Int (_ BitVec 64)) V!54849)

(assert (=> b!1343666 (= lt!595012 (get!22352 (select (arr!44161 _values!1303) from!1960) (dynLambda!3824 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54849)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6510 (array!91417 array!91419 (_ BitVec 32) (_ BitVec 32) V!54849 V!54849 (_ BitVec 32) Int) ListLongMap!21951)

(assert (=> b!1343666 (= lt!595015 (getCurrentListMapNoExtraKeys!6510 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1343667 () Bool)

(declare-fun res!891592 () Bool)

(assert (=> b!1343667 (=> (not res!891592) (not e!764768))))

(assert (=> b!1343667 (= res!891592 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1343668 () Bool)

(declare-fun res!891588 () Bool)

(assert (=> b!1343668 (=> (not res!891588) (not e!764768))))

(declare-datatypes ((List!31457 0))(
  ( (Nil!31454) (Cons!31453 (h!32662 (_ BitVec 64)) (t!45984 List!31457)) )
))
(declare-fun arrayNoDuplicates!0 (array!91417 (_ BitVec 32) List!31457) Bool)

(assert (=> b!1343668 (= res!891588 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31454))))

(declare-fun b!1343669 () Bool)

(declare-fun e!764769 () Bool)

(declare-fun e!764770 () Bool)

(assert (=> b!1343669 (= e!764769 (and e!764770 mapRes!57670))))

(declare-fun condMapEmpty!57670 () Bool)

(declare-fun mapDefault!57670 () ValueCell!17756)

