; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113418 () Bool)

(assert start!113418)

(declare-fun b_free!31433 () Bool)

(declare-fun b_next!31433 () Bool)

(assert (=> start!113418 (= b_free!31433 (not b_next!31433))))

(declare-fun tp!110104 () Bool)

(declare-fun b_and!50729 () Bool)

(assert (=> start!113418 (= tp!110104 b_and!50729)))

(declare-fun b!1345829 () Bool)

(declare-fun res!893132 () Bool)

(declare-fun e!765780 () Bool)

(assert (=> b!1345829 (=> (not res!893132) (not e!765780))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1345829 (= res!893132 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1345830 () Bool)

(declare-fun res!893126 () Bool)

(assert (=> b!1345830 (=> (not res!893126) (not e!765780))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91663 0))(
  ( (array!91664 (arr!44283 (Array (_ BitVec 32) (_ BitVec 64))) (size!44834 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91663)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1345830 (= res!893126 (not (= (select (arr!44283 _keys!1571) from!1960) k!1142)))))

(declare-fun res!893134 () Bool)

(assert (=> start!113418 (=> (not res!893134) (not e!765780))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113418 (= res!893134 (validMask!0 mask!1977))))

(assert (=> start!113418 e!765780))

(declare-fun tp_is_empty!37433 () Bool)

(assert (=> start!113418 tp_is_empty!37433))

(assert (=> start!113418 true))

(declare-fun array_inv!33285 (array!91663) Bool)

(assert (=> start!113418 (array_inv!33285 _keys!1571)))

(declare-datatypes ((V!55013 0))(
  ( (V!55014 (val!18791 Int)) )
))
(declare-datatypes ((ValueCell!17818 0))(
  ( (ValueCellFull!17818 (v!21437 V!55013)) (EmptyCell!17818) )
))
(declare-datatypes ((array!91665 0))(
  ( (array!91666 (arr!44284 (Array (_ BitVec 32) ValueCell!17818)) (size!44835 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91665)

(declare-fun e!765779 () Bool)

(declare-fun array_inv!33286 (array!91665) Bool)

(assert (=> start!113418 (and (array_inv!33286 _values!1303) e!765779)))

(assert (=> start!113418 tp!110104))

(declare-fun b!1345831 () Bool)

(declare-fun e!765777 () Bool)

(assert (=> b!1345831 (= e!765777 tp_is_empty!37433)))

(declare-fun b!1345832 () Bool)

(declare-fun res!893127 () Bool)

(assert (=> b!1345832 (=> (not res!893127) (not e!765780))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1345832 (= res!893127 (validKeyInArray!0 (select (arr!44283 _keys!1571) from!1960)))))

(declare-fun b!1345833 () Bool)

(declare-fun res!893131 () Bool)

(declare-fun e!765781 () Bool)

(assert (=> b!1345833 (=> (not res!893131) (not e!765781))))

(assert (=> b!1345833 (= res!893131 (not (= k!1142 (select (arr!44283 _keys!1571) from!1960))))))

(declare-fun b!1345834 () Bool)

(declare-fun res!893125 () Bool)

(assert (=> b!1345834 (=> (not res!893125) (not e!765780))))

(assert (=> b!1345834 (= res!893125 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44834 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1345835 () Bool)

(assert (=> b!1345835 (= e!765780 e!765781)))

(declare-fun res!893133 () Bool)

(assert (=> b!1345835 (=> (not res!893133) (not e!765781))))

(declare-fun lt!595382 () V!55013)

(declare-datatypes ((tuple2!24366 0))(
  ( (tuple2!24367 (_1!12193 (_ BitVec 64)) (_2!12193 V!55013)) )
))
(declare-datatypes ((List!31536 0))(
  ( (Nil!31533) (Cons!31532 (h!32741 tuple2!24366) (t!46133 List!31536)) )
))
(declare-datatypes ((ListLongMap!22035 0))(
  ( (ListLongMap!22036 (toList!11033 List!31536)) )
))
(declare-fun lt!595384 () ListLongMap!22035)

(declare-fun contains!9145 (ListLongMap!22035 (_ BitVec 64)) Bool)

(declare-fun +!4811 (ListLongMap!22035 tuple2!24366) ListLongMap!22035)

(assert (=> b!1345835 (= res!893133 (contains!9145 (+!4811 lt!595384 (tuple2!24367 (select (arr!44283 _keys!1571) from!1960) lt!595382)) k!1142))))

(declare-fun minValue!1245 () V!55013)

(declare-fun defaultEntry!1306 () Int)

(declare-fun zeroValue!1245 () V!55013)

(declare-fun getCurrentListMapNoExtraKeys!6534 (array!91663 array!91665 (_ BitVec 32) (_ BitVec 32) V!55013 V!55013 (_ BitVec 32) Int) ListLongMap!22035)

(assert (=> b!1345835 (= lt!595384 (getCurrentListMapNoExtraKeys!6534 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22416 (ValueCell!17818 V!55013) V!55013)

(declare-fun dynLambda!3848 (Int (_ BitVec 64)) V!55013)

(assert (=> b!1345835 (= lt!595382 (get!22416 (select (arr!44284 _values!1303) from!1960) (dynLambda!3848 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1345836 () Bool)

(declare-fun res!893130 () Bool)

(assert (=> b!1345836 (=> (not res!893130) (not e!765780))))

(declare-datatypes ((List!31537 0))(
  ( (Nil!31534) (Cons!31533 (h!32742 (_ BitVec 64)) (t!46134 List!31537)) )
))
(declare-fun arrayNoDuplicates!0 (array!91663 (_ BitVec 32) List!31537) Bool)

(assert (=> b!1345836 (= res!893130 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31534))))

(declare-fun b!1345837 () Bool)

(declare-fun res!893128 () Bool)

(assert (=> b!1345837 (=> (not res!893128) (not e!765780))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91663 (_ BitVec 32)) Bool)

(assert (=> b!1345837 (= res!893128 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapNonEmpty!57856 () Bool)

(declare-fun mapRes!57856 () Bool)

(declare-fun tp!110105 () Bool)

(assert (=> mapNonEmpty!57856 (= mapRes!57856 (and tp!110105 e!765777))))

(declare-fun mapRest!57856 () (Array (_ BitVec 32) ValueCell!17818))

(declare-fun mapValue!57856 () ValueCell!17818)

(declare-fun mapKey!57856 () (_ BitVec 32))

(assert (=> mapNonEmpty!57856 (= (arr!44284 _values!1303) (store mapRest!57856 mapKey!57856 mapValue!57856))))

(declare-fun b!1345838 () Bool)

(declare-fun e!765782 () Bool)

(assert (=> b!1345838 (= e!765782 tp_is_empty!37433)))

(declare-fun b!1345839 () Bool)

(declare-fun res!893135 () Bool)

(assert (=> b!1345839 (=> (not res!893135) (not e!765780))))

(declare-fun getCurrentListMap!5924 (array!91663 array!91665 (_ BitVec 32) (_ BitVec 32) V!55013 V!55013 (_ BitVec 32) Int) ListLongMap!22035)

(assert (=> b!1345839 (= res!893135 (contains!9145 (getCurrentListMap!5924 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun mapIsEmpty!57856 () Bool)

(assert (=> mapIsEmpty!57856 mapRes!57856))

(declare-fun b!1345840 () Bool)

(assert (=> b!1345840 (= e!765781 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))))

(assert (=> b!1345840 (contains!9145 lt!595384 k!1142)))

(declare-datatypes ((Unit!44081 0))(
  ( (Unit!44082) )
))
(declare-fun lt!595383 () Unit!44081)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!400 ((_ BitVec 64) (_ BitVec 64) V!55013 ListLongMap!22035) Unit!44081)

(assert (=> b!1345840 (= lt!595383 (lemmaInListMapAfterAddingDiffThenInBefore!400 k!1142 (select (arr!44283 _keys!1571) from!1960) lt!595382 lt!595384))))

(declare-fun b!1345841 () Bool)

(assert (=> b!1345841 (= e!765779 (and e!765782 mapRes!57856))))

(declare-fun condMapEmpty!57856 () Bool)

(declare-fun mapDefault!57856 () ValueCell!17818)

