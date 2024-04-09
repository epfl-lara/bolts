; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113414 () Bool)

(assert start!113414)

(declare-fun b_free!31429 () Bool)

(declare-fun b_next!31429 () Bool)

(assert (=> start!113414 (= b_free!31429 (not b_next!31429))))

(declare-fun tp!110093 () Bool)

(declare-fun b_and!50721 () Bool)

(assert (=> start!113414 (= tp!110093 b_and!50721)))

(declare-fun b!1345741 () Bool)

(declare-fun res!893062 () Bool)

(declare-fun e!765741 () Bool)

(assert (=> b!1345741 (=> (not res!893062) (not e!765741))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((array!91655 0))(
  ( (array!91656 (arr!44279 (Array (_ BitVec 32) (_ BitVec 64))) (size!44830 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91655)

(assert (=> b!1345741 (= res!893062 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44830 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1345742 () Bool)

(declare-fun res!893065 () Bool)

(assert (=> b!1345742 (=> (not res!893065) (not e!765741))))

(declare-datatypes ((List!31532 0))(
  ( (Nil!31529) (Cons!31528 (h!32737 (_ BitVec 64)) (t!46125 List!31532)) )
))
(declare-fun arrayNoDuplicates!0 (array!91655 (_ BitVec 32) List!31532) Bool)

(assert (=> b!1345742 (= res!893065 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31529))))

(declare-fun res!893069 () Bool)

(assert (=> start!113414 (=> (not res!893069) (not e!765741))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113414 (= res!893069 (validMask!0 mask!1977))))

(assert (=> start!113414 e!765741))

(declare-fun tp_is_empty!37429 () Bool)

(assert (=> start!113414 tp_is_empty!37429))

(assert (=> start!113414 true))

(declare-fun array_inv!33281 (array!91655) Bool)

(assert (=> start!113414 (array_inv!33281 _keys!1571)))

(declare-datatypes ((V!55009 0))(
  ( (V!55010 (val!18789 Int)) )
))
(declare-datatypes ((ValueCell!17816 0))(
  ( (ValueCellFull!17816 (v!21435 V!55009)) (EmptyCell!17816) )
))
(declare-datatypes ((array!91657 0))(
  ( (array!91658 (arr!44280 (Array (_ BitVec 32) ValueCell!17816)) (size!44831 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91657)

(declare-fun e!765745 () Bool)

(declare-fun array_inv!33282 (array!91657) Bool)

(assert (=> start!113414 (and (array_inv!33282 _values!1303) e!765745)))

(assert (=> start!113414 tp!110093))

(declare-fun b!1345743 () Bool)

(declare-fun res!893064 () Bool)

(declare-fun e!765746 () Bool)

(assert (=> b!1345743 (=> (not res!893064) (not e!765746))))

(assert (=> b!1345743 (= res!893064 (not (= k!1142 (select (arr!44279 _keys!1571) from!1960))))))

(declare-fun b!1345744 () Bool)

(declare-fun e!765742 () Bool)

(assert (=> b!1345744 (= e!765742 tp_is_empty!37429)))

(declare-fun b!1345745 () Bool)

(assert (=> b!1345745 (= e!765746 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!24362 0))(
  ( (tuple2!24363 (_1!12191 (_ BitVec 64)) (_2!12191 V!55009)) )
))
(declare-datatypes ((List!31533 0))(
  ( (Nil!31530) (Cons!31529 (h!32738 tuple2!24362) (t!46126 List!31533)) )
))
(declare-datatypes ((ListLongMap!22031 0))(
  ( (ListLongMap!22032 (toList!11031 List!31533)) )
))
(declare-fun lt!595366 () ListLongMap!22031)

(declare-fun contains!9143 (ListLongMap!22031 (_ BitVec 64)) Bool)

(assert (=> b!1345745 (contains!9143 lt!595366 k!1142)))

(declare-datatypes ((Unit!44077 0))(
  ( (Unit!44078) )
))
(declare-fun lt!595365 () Unit!44077)

(declare-fun lt!595364 () V!55009)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!398 ((_ BitVec 64) (_ BitVec 64) V!55009 ListLongMap!22031) Unit!44077)

(assert (=> b!1345745 (= lt!595365 (lemmaInListMapAfterAddingDiffThenInBefore!398 k!1142 (select (arr!44279 _keys!1571) from!1960) lt!595364 lt!595366))))

(declare-fun b!1345746 () Bool)

(declare-fun res!893059 () Bool)

(assert (=> b!1345746 (=> (not res!893059) (not e!765741))))

(assert (=> b!1345746 (= res!893059 (not (= (select (arr!44279 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1345747 () Bool)

(declare-fun res!893060 () Bool)

(assert (=> b!1345747 (=> (not res!893060) (not e!765741))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1345747 (= res!893060 (validKeyInArray!0 (select (arr!44279 _keys!1571) from!1960)))))

(declare-fun b!1345748 () Bool)

(declare-fun res!893068 () Bool)

(assert (=> b!1345748 (=> (not res!893068) (not e!765741))))

(assert (=> b!1345748 (= res!893068 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1345749 () Bool)

(assert (=> b!1345749 (= e!765741 e!765746)))

(declare-fun res!893067 () Bool)

(assert (=> b!1345749 (=> (not res!893067) (not e!765746))))

(declare-fun +!4809 (ListLongMap!22031 tuple2!24362) ListLongMap!22031)

(assert (=> b!1345749 (= res!893067 (contains!9143 (+!4809 lt!595366 (tuple2!24363 (select (arr!44279 _keys!1571) from!1960) lt!595364)) k!1142))))

(declare-fun minValue!1245 () V!55009)

(declare-fun defaultEntry!1306 () Int)

(declare-fun zeroValue!1245 () V!55009)

(declare-fun getCurrentListMapNoExtraKeys!6532 (array!91655 array!91657 (_ BitVec 32) (_ BitVec 32) V!55009 V!55009 (_ BitVec 32) Int) ListLongMap!22031)

(assert (=> b!1345749 (= lt!595366 (getCurrentListMapNoExtraKeys!6532 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22414 (ValueCell!17816 V!55009) V!55009)

(declare-fun dynLambda!3846 (Int (_ BitVec 64)) V!55009)

(assert (=> b!1345749 (= lt!595364 (get!22414 (select (arr!44280 _values!1303) from!1960) (dynLambda!3846 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!57850 () Bool)

(declare-fun mapRes!57850 () Bool)

(assert (=> mapIsEmpty!57850 mapRes!57850))

(declare-fun b!1345750 () Bool)

(declare-fun res!893066 () Bool)

(assert (=> b!1345750 (=> (not res!893066) (not e!765741))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91655 (_ BitVec 32)) Bool)

(assert (=> b!1345750 (= res!893066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1345751 () Bool)

(declare-fun res!893063 () Bool)

(assert (=> b!1345751 (=> (not res!893063) (not e!765741))))

(assert (=> b!1345751 (= res!893063 (and (= (size!44831 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44830 _keys!1571) (size!44831 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57850 () Bool)

(declare-fun tp!110092 () Bool)

(assert (=> mapNonEmpty!57850 (= mapRes!57850 (and tp!110092 e!765742))))

(declare-fun mapKey!57850 () (_ BitVec 32))

(declare-fun mapValue!57850 () ValueCell!17816)

(declare-fun mapRest!57850 () (Array (_ BitVec 32) ValueCell!17816))

(assert (=> mapNonEmpty!57850 (= (arr!44280 _values!1303) (store mapRest!57850 mapKey!57850 mapValue!57850))))

(declare-fun b!1345752 () Bool)

(declare-fun e!765743 () Bool)

(assert (=> b!1345752 (= e!765743 tp_is_empty!37429)))

(declare-fun b!1345753 () Bool)

(declare-fun res!893061 () Bool)

(assert (=> b!1345753 (=> (not res!893061) (not e!765741))))

(declare-fun getCurrentListMap!5922 (array!91655 array!91657 (_ BitVec 32) (_ BitVec 32) V!55009 V!55009 (_ BitVec 32) Int) ListLongMap!22031)

(assert (=> b!1345753 (= res!893061 (contains!9143 (getCurrentListMap!5922 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1345754 () Bool)

(assert (=> b!1345754 (= e!765745 (and e!765743 mapRes!57850))))

(declare-fun condMapEmpty!57850 () Bool)

(declare-fun mapDefault!57850 () ValueCell!17816)

