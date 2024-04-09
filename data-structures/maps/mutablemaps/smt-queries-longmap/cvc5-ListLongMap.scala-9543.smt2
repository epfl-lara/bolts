; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113156 () Bool)

(assert start!113156)

(declare-fun b_free!31171 () Bool)

(declare-fun b_next!31171 () Bool)

(assert (=> start!113156 (= b_free!31171 (not b_next!31171))))

(declare-fun tp!109319 () Bool)

(declare-fun b_and!50259 () Bool)

(assert (=> start!113156 (= tp!109319 b_and!50259)))

(declare-fun b!1341042 () Bool)

(declare-fun res!889727 () Bool)

(declare-fun e!763733 () Bool)

(assert (=> b!1341042 (=> (not res!889727) (not e!763733))))

(declare-datatypes ((array!91151 0))(
  ( (array!91152 (arr!44027 (Array (_ BitVec 32) (_ BitVec 64))) (size!44578 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91151)

(declare-datatypes ((List!31352 0))(
  ( (Nil!31349) (Cons!31348 (h!32557 (_ BitVec 64)) (t!45741 List!31352)) )
))
(declare-fun arrayNoDuplicates!0 (array!91151 (_ BitVec 32) List!31352) Bool)

(assert (=> b!1341042 (= res!889727 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31349))))

(declare-fun b!1341043 () Bool)

(declare-fun res!889730 () Bool)

(assert (=> b!1341043 (=> (not res!889730) (not e!763733))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91151 (_ BitVec 32)) Bool)

(assert (=> b!1341043 (= res!889730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1341044 () Bool)

(declare-fun res!889733 () Bool)

(assert (=> b!1341044 (=> (not res!889733) (not e!763733))))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1341044 (= res!889733 (validKeyInArray!0 (select (arr!44027 _keys!1571) from!1960)))))

(declare-fun mapIsEmpty!57463 () Bool)

(declare-fun mapRes!57463 () Bool)

(assert (=> mapIsEmpty!57463 mapRes!57463))

(declare-fun b!1341045 () Bool)

(declare-fun res!889732 () Bool)

(assert (=> b!1341045 (=> (not res!889732) (not e!763733))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1341045 (= res!889732 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1341047 () Bool)

(declare-fun res!889728 () Bool)

(assert (=> b!1341047 (=> (not res!889728) (not e!763733))))

(declare-datatypes ((V!54665 0))(
  ( (V!54666 (val!18660 Int)) )
))
(declare-fun minValue!1245 () V!54665)

(declare-fun zeroValue!1245 () V!54665)

(declare-datatypes ((ValueCell!17687 0))(
  ( (ValueCellFull!17687 (v!21306 V!54665)) (EmptyCell!17687) )
))
(declare-datatypes ((array!91153 0))(
  ( (array!91154 (arr!44028 (Array (_ BitVec 32) ValueCell!17687)) (size!44579 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91153)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24170 0))(
  ( (tuple2!24171 (_1!12095 (_ BitVec 64)) (_2!12095 V!54665)) )
))
(declare-datatypes ((List!31353 0))(
  ( (Nil!31350) (Cons!31349 (h!32558 tuple2!24170) (t!45742 List!31353)) )
))
(declare-datatypes ((ListLongMap!21839 0))(
  ( (ListLongMap!21840 (toList!10935 List!31353)) )
))
(declare-fun contains!9047 (ListLongMap!21839 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5837 (array!91151 array!91153 (_ BitVec 32) (_ BitVec 32) V!54665 V!54665 (_ BitVec 32) Int) ListLongMap!21839)

(assert (=> b!1341047 (= res!889728 (contains!9047 (getCurrentListMap!5837 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1341048 () Bool)

(assert (=> b!1341048 (= e!763733 (not true))))

(declare-fun lt!594031 () ListLongMap!21839)

(assert (=> b!1341048 (contains!9047 lt!594031 k!1142)))

(declare-datatypes ((Unit!43947 0))(
  ( (Unit!43948) )
))
(declare-fun lt!594030 () Unit!43947)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!333 ((_ BitVec 64) (_ BitVec 64) V!54665 ListLongMap!21839) Unit!43947)

(assert (=> b!1341048 (= lt!594030 (lemmaInListMapAfterAddingDiffThenInBefore!333 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594031))))

(declare-fun +!4741 (ListLongMap!21839 tuple2!24170) ListLongMap!21839)

(declare-fun getCurrentListMapNoExtraKeys!6464 (array!91151 array!91153 (_ BitVec 32) (_ BitVec 32) V!54665 V!54665 (_ BitVec 32) Int) ListLongMap!21839)

(declare-fun get!22260 (ValueCell!17687 V!54665) V!54665)

(declare-fun dynLambda!3778 (Int (_ BitVec 64)) V!54665)

(assert (=> b!1341048 (= lt!594031 (+!4741 (getCurrentListMapNoExtraKeys!6464 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24171 (select (arr!44027 _keys!1571) from!1960) (get!22260 (select (arr!44028 _values!1303) from!1960) (dynLambda!3778 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1341049 () Bool)

(declare-fun e!763734 () Bool)

(declare-fun e!763732 () Bool)

(assert (=> b!1341049 (= e!763734 (and e!763732 mapRes!57463))))

(declare-fun condMapEmpty!57463 () Bool)

(declare-fun mapDefault!57463 () ValueCell!17687)

