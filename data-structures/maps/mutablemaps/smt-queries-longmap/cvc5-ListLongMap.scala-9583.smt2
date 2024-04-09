; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113396 () Bool)

(assert start!113396)

(declare-fun b_free!31411 () Bool)

(declare-fun b_next!31411 () Bool)

(assert (=> start!113396 (= b_free!31411 (not b_next!31411))))

(declare-fun tp!110039 () Bool)

(declare-fun b_and!50685 () Bool)

(assert (=> start!113396 (= tp!110039 b_and!50685)))

(declare-fun b!1345345 () Bool)

(declare-fun res!892762 () Bool)

(declare-fun e!765581 () Bool)

(assert (=> b!1345345 (=> (not res!892762) (not e!765581))))

(declare-datatypes ((array!91619 0))(
  ( (array!91620 (arr!44261 (Array (_ BitVec 32) (_ BitVec 64))) (size!44812 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91619)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91619 (_ BitVec 32)) Bool)

(assert (=> b!1345345 (= res!892762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1345346 () Bool)

(declare-fun e!765583 () Bool)

(declare-fun tp_is_empty!37411 () Bool)

(assert (=> b!1345346 (= e!765583 tp_is_empty!37411)))

(declare-fun b!1345347 () Bool)

(declare-fun res!892769 () Bool)

(assert (=> b!1345347 (=> (not res!892769) (not e!765581))))

(declare-datatypes ((List!31518 0))(
  ( (Nil!31515) (Cons!31514 (h!32723 (_ BitVec 64)) (t!46093 List!31518)) )
))
(declare-fun arrayNoDuplicates!0 (array!91619 (_ BitVec 32) List!31518) Bool)

(assert (=> b!1345347 (= res!892769 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31515))))

(declare-fun b!1345348 () Bool)

(declare-fun res!892771 () Bool)

(assert (=> b!1345348 (=> (not res!892771) (not e!765581))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1345348 (= res!892771 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1345349 () Bool)

(declare-fun e!765582 () Bool)

(assert (=> b!1345349 (= e!765582 tp_is_empty!37411)))

(declare-fun b!1345350 () Bool)

(declare-fun res!892765 () Bool)

(declare-fun e!765580 () Bool)

(assert (=> b!1345350 (=> (not res!892765) (not e!765580))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1345350 (= res!892765 (not (= k!1142 (select (arr!44261 _keys!1571) from!1960))))))

(declare-fun b!1345351 () Bool)

(declare-fun res!892767 () Bool)

(assert (=> b!1345351 (=> (not res!892767) (not e!765581))))

(declare-datatypes ((V!54985 0))(
  ( (V!54986 (val!18780 Int)) )
))
(declare-fun minValue!1245 () V!54985)

(declare-fun zeroValue!1245 () V!54985)

(declare-datatypes ((ValueCell!17807 0))(
  ( (ValueCellFull!17807 (v!21426 V!54985)) (EmptyCell!17807) )
))
(declare-datatypes ((array!91621 0))(
  ( (array!91622 (arr!44262 (Array (_ BitVec 32) ValueCell!17807)) (size!44813 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91621)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24346 0))(
  ( (tuple2!24347 (_1!12183 (_ BitVec 64)) (_2!12183 V!54985)) )
))
(declare-datatypes ((List!31519 0))(
  ( (Nil!31516) (Cons!31515 (h!32724 tuple2!24346) (t!46094 List!31519)) )
))
(declare-datatypes ((ListLongMap!22015 0))(
  ( (ListLongMap!22016 (toList!11023 List!31519)) )
))
(declare-fun contains!9135 (ListLongMap!22015 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5915 (array!91619 array!91621 (_ BitVec 32) (_ BitVec 32) V!54985 V!54985 (_ BitVec 32) Int) ListLongMap!22015)

(assert (=> b!1345351 (= res!892767 (contains!9135 (getCurrentListMap!5915 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1345352 () Bool)

(declare-fun res!892768 () Bool)

(assert (=> b!1345352 (=> (not res!892768) (not e!765581))))

(assert (=> b!1345352 (= res!892768 (and (= (size!44813 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44812 _keys!1571) (size!44813 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1345353 () Bool)

(assert (=> b!1345353 (= e!765581 e!765580)))

(declare-fun res!892764 () Bool)

(assert (=> b!1345353 (=> (not res!892764) (not e!765580))))

(declare-fun lt!595285 () V!54985)

(declare-fun lt!595284 () ListLongMap!22015)

(declare-fun +!4803 (ListLongMap!22015 tuple2!24346) ListLongMap!22015)

(assert (=> b!1345353 (= res!892764 (contains!9135 (+!4803 lt!595284 (tuple2!24347 (select (arr!44261 _keys!1571) from!1960) lt!595285)) k!1142))))

(declare-fun getCurrentListMapNoExtraKeys!6526 (array!91619 array!91621 (_ BitVec 32) (_ BitVec 32) V!54985 V!54985 (_ BitVec 32) Int) ListLongMap!22015)

(assert (=> b!1345353 (= lt!595284 (getCurrentListMapNoExtraKeys!6526 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22402 (ValueCell!17807 V!54985) V!54985)

(declare-fun dynLambda!3840 (Int (_ BitVec 64)) V!54985)

(assert (=> b!1345353 (= lt!595285 (get!22402 (select (arr!44262 _values!1303) from!1960) (dynLambda!3840 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1345354 () Bool)

(declare-fun res!892770 () Bool)

(assert (=> b!1345354 (=> (not res!892770) (not e!765581))))

(assert (=> b!1345354 (= res!892770 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44812 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!57823 () Bool)

(declare-fun mapRes!57823 () Bool)

(assert (=> mapIsEmpty!57823 mapRes!57823))

(declare-fun b!1345355 () Bool)

(declare-fun res!892766 () Bool)

(assert (=> b!1345355 (=> (not res!892766) (not e!765581))))

(assert (=> b!1345355 (= res!892766 (not (= (select (arr!44261 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1345356 () Bool)

(assert (=> b!1345356 (= e!765580 (not true))))

(assert (=> b!1345356 (contains!9135 lt!595284 k!1142)))

(declare-datatypes ((Unit!44061 0))(
  ( (Unit!44062) )
))
(declare-fun lt!595283 () Unit!44061)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!390 ((_ BitVec 64) (_ BitVec 64) V!54985 ListLongMap!22015) Unit!44061)

(assert (=> b!1345356 (= lt!595283 (lemmaInListMapAfterAddingDiffThenInBefore!390 k!1142 (select (arr!44261 _keys!1571) from!1960) lt!595285 lt!595284))))

(declare-fun res!892763 () Bool)

(assert (=> start!113396 (=> (not res!892763) (not e!765581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113396 (= res!892763 (validMask!0 mask!1977))))

(assert (=> start!113396 e!765581))

(assert (=> start!113396 tp_is_empty!37411))

(assert (=> start!113396 true))

(declare-fun array_inv!33269 (array!91619) Bool)

(assert (=> start!113396 (array_inv!33269 _keys!1571)))

(declare-fun e!765579 () Bool)

(declare-fun array_inv!33270 (array!91621) Bool)

(assert (=> start!113396 (and (array_inv!33270 _values!1303) e!765579)))

(assert (=> start!113396 tp!110039))

(declare-fun b!1345357 () Bool)

(assert (=> b!1345357 (= e!765579 (and e!765583 mapRes!57823))))

(declare-fun condMapEmpty!57823 () Bool)

(declare-fun mapDefault!57823 () ValueCell!17807)

