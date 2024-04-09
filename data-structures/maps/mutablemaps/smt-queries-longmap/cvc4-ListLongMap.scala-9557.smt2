; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113244 () Bool)

(assert start!113244)

(declare-fun b_free!31259 () Bool)

(declare-fun b_next!31259 () Bool)

(assert (=> start!113244 (= b_free!31259 (not b_next!31259))))

(declare-fun tp!109582 () Bool)

(declare-fun b_and!50435 () Bool)

(assert (=> start!113244 (= tp!109582 b_and!50435)))

(declare-fun b!1342714 () Bool)

(declare-fun res!890920 () Bool)

(declare-fun e!764396 () Bool)

(assert (=> b!1342714 (=> (not res!890920) (not e!764396))))

(declare-datatypes ((array!91319 0))(
  ( (array!91320 (arr!44111 (Array (_ BitVec 32) (_ BitVec 64))) (size!44662 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91319)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91319 (_ BitVec 32)) Bool)

(assert (=> b!1342714 (= res!890920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1342715 () Bool)

(assert (=> b!1342715 (= e!764396 (not true))))

(declare-datatypes ((V!54781 0))(
  ( (V!54782 (val!18704 Int)) )
))
(declare-datatypes ((tuple2!24240 0))(
  ( (tuple2!24241 (_1!12130 (_ BitVec 64)) (_2!12130 V!54781)) )
))
(declare-datatypes ((List!31420 0))(
  ( (Nil!31417) (Cons!31416 (h!32625 tuple2!24240) (t!45897 List!31420)) )
))
(declare-datatypes ((ListLongMap!21909 0))(
  ( (ListLongMap!21910 (toList!10970 List!31420)) )
))
(declare-fun lt!594564 () ListLongMap!21909)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun contains!9082 (ListLongMap!21909 (_ BitVec 64)) Bool)

(assert (=> b!1342715 (contains!9082 lt!594564 k!1142)))

(declare-fun lt!594561 () V!54781)

(declare-datatypes ((Unit!44007 0))(
  ( (Unit!44008) )
))
(declare-fun lt!594562 () Unit!44007)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!363 ((_ BitVec 64) (_ BitVec 64) V!54781 ListLongMap!21909) Unit!44007)

(assert (=> b!1342715 (= lt!594562 (lemmaInListMapAfterAddingDiffThenInBefore!363 k!1142 (select (arr!44111 _keys!1571) from!1960) lt!594561 lt!594564))))

(declare-fun lt!594563 () ListLongMap!21909)

(assert (=> b!1342715 (contains!9082 lt!594563 k!1142)))

(declare-fun zeroValue!1245 () V!54781)

(declare-fun lt!594565 () Unit!44007)

(assert (=> b!1342715 (= lt!594565 (lemmaInListMapAfterAddingDiffThenInBefore!363 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594563))))

(declare-fun +!4771 (ListLongMap!21909 tuple2!24240) ListLongMap!21909)

(assert (=> b!1342715 (= lt!594563 (+!4771 lt!594564 (tuple2!24241 (select (arr!44111 _keys!1571) from!1960) lt!594561)))))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((ValueCell!17731 0))(
  ( (ValueCellFull!17731 (v!21350 V!54781)) (EmptyCell!17731) )
))
(declare-datatypes ((array!91321 0))(
  ( (array!91322 (arr!44112 (Array (_ BitVec 32) ValueCell!17731)) (size!44663 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91321)

(declare-fun get!22318 (ValueCell!17731 V!54781) V!54781)

(declare-fun dynLambda!3808 (Int (_ BitVec 64)) V!54781)

(assert (=> b!1342715 (= lt!594561 (get!22318 (select (arr!44112 _values!1303) from!1960) (dynLambda!3808 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun minValue!1245 () V!54781)

(declare-fun getCurrentListMapNoExtraKeys!6494 (array!91319 array!91321 (_ BitVec 32) (_ BitVec 32) V!54781 V!54781 (_ BitVec 32) Int) ListLongMap!21909)

(assert (=> b!1342715 (= lt!594564 (getCurrentListMapNoExtraKeys!6494 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun mapNonEmpty!57595 () Bool)

(declare-fun mapRes!57595 () Bool)

(declare-fun tp!109583 () Bool)

(declare-fun e!764393 () Bool)

(assert (=> mapNonEmpty!57595 (= mapRes!57595 (and tp!109583 e!764393))))

(declare-fun mapValue!57595 () ValueCell!17731)

(declare-fun mapRest!57595 () (Array (_ BitVec 32) ValueCell!17731))

(declare-fun mapKey!57595 () (_ BitVec 32))

(assert (=> mapNonEmpty!57595 (= (arr!44112 _values!1303) (store mapRest!57595 mapKey!57595 mapValue!57595))))

(declare-fun b!1342716 () Bool)

(declare-fun res!890914 () Bool)

(assert (=> b!1342716 (=> (not res!890914) (not e!764396))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342716 (= res!890914 (validKeyInArray!0 (select (arr!44111 _keys!1571) from!1960)))))

(declare-fun b!1342717 () Bool)

(declare-fun res!890915 () Bool)

(assert (=> b!1342717 (=> (not res!890915) (not e!764396))))

(declare-datatypes ((List!31421 0))(
  ( (Nil!31418) (Cons!31417 (h!32626 (_ BitVec 64)) (t!45898 List!31421)) )
))
(declare-fun arrayNoDuplicates!0 (array!91319 (_ BitVec 32) List!31421) Bool)

(assert (=> b!1342717 (= res!890915 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31418))))

(declare-fun b!1342718 () Bool)

(declare-fun e!764392 () Bool)

(declare-fun e!764395 () Bool)

(assert (=> b!1342718 (= e!764392 (and e!764395 mapRes!57595))))

(declare-fun condMapEmpty!57595 () Bool)

(declare-fun mapDefault!57595 () ValueCell!17731)

