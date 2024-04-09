; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113394 () Bool)

(assert start!113394)

(declare-fun b_free!31409 () Bool)

(declare-fun b_next!31409 () Bool)

(assert (=> start!113394 (= b_free!31409 (not b_next!31409))))

(declare-fun tp!110033 () Bool)

(declare-fun b_and!50681 () Bool)

(assert (=> start!113394 (= tp!110033 b_and!50681)))

(declare-fun b!1345301 () Bool)

(declare-fun e!765563 () Bool)

(declare-fun tp_is_empty!37409 () Bool)

(assert (=> b!1345301 (= e!765563 tp_is_empty!37409)))

(declare-fun b!1345303 () Bool)

(declare-fun res!892733 () Bool)

(declare-fun e!765564 () Bool)

(assert (=> b!1345303 (=> (not res!892733) (not e!765564))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91615 0))(
  ( (array!91616 (arr!44259 (Array (_ BitVec 32) (_ BitVec 64))) (size!44810 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91615)

(declare-datatypes ((V!54981 0))(
  ( (V!54982 (val!18779 Int)) )
))
(declare-fun zeroValue!1245 () V!54981)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17806 0))(
  ( (ValueCellFull!17806 (v!21425 V!54981)) (EmptyCell!17806) )
))
(declare-datatypes ((array!91617 0))(
  ( (array!91618 (arr!44260 (Array (_ BitVec 32) ValueCell!17806)) (size!44811 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91617)

(declare-fun minValue!1245 () V!54981)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24344 0))(
  ( (tuple2!24345 (_1!12182 (_ BitVec 64)) (_2!12182 V!54981)) )
))
(declare-datatypes ((List!31516 0))(
  ( (Nil!31513) (Cons!31512 (h!32721 tuple2!24344) (t!46089 List!31516)) )
))
(declare-datatypes ((ListLongMap!22013 0))(
  ( (ListLongMap!22014 (toList!11022 List!31516)) )
))
(declare-fun contains!9134 (ListLongMap!22013 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5914 (array!91615 array!91617 (_ BitVec 32) (_ BitVec 32) V!54981 V!54981 (_ BitVec 32) Int) ListLongMap!22013)

(assert (=> b!1345303 (= res!892733 (contains!9134 (getCurrentListMap!5914 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1345304 () Bool)

(declare-fun res!892737 () Bool)

(assert (=> b!1345304 (=> (not res!892737) (not e!765564))))

(declare-datatypes ((List!31517 0))(
  ( (Nil!31514) (Cons!31513 (h!32722 (_ BitVec 64)) (t!46090 List!31517)) )
))
(declare-fun arrayNoDuplicates!0 (array!91615 (_ BitVec 32) List!31517) Bool)

(assert (=> b!1345304 (= res!892737 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31514))))

(declare-fun b!1345305 () Bool)

(declare-fun e!765566 () Bool)

(assert (=> b!1345305 (= e!765564 e!765566)))

(declare-fun res!892734 () Bool)

(assert (=> b!1345305 (=> (not res!892734) (not e!765566))))

(declare-fun lt!595276 () ListLongMap!22013)

(declare-fun lt!595275 () V!54981)

(declare-fun +!4802 (ListLongMap!22013 tuple2!24344) ListLongMap!22013)

(assert (=> b!1345305 (= res!892734 (contains!9134 (+!4802 lt!595276 (tuple2!24345 (select (arr!44259 _keys!1571) from!1960) lt!595275)) k!1142))))

(declare-fun getCurrentListMapNoExtraKeys!6525 (array!91615 array!91617 (_ BitVec 32) (_ BitVec 32) V!54981 V!54981 (_ BitVec 32) Int) ListLongMap!22013)

(assert (=> b!1345305 (= lt!595276 (getCurrentListMapNoExtraKeys!6525 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22399 (ValueCell!17806 V!54981) V!54981)

(declare-fun dynLambda!3839 (Int (_ BitVec 64)) V!54981)

(assert (=> b!1345305 (= lt!595275 (get!22399 (select (arr!44260 _values!1303) from!1960) (dynLambda!3839 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1345306 () Bool)

(declare-fun res!892732 () Bool)

(assert (=> b!1345306 (=> (not res!892732) (not e!765564))))

(assert (=> b!1345306 (= res!892732 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1345307 () Bool)

(declare-fun res!892729 () Bool)

(assert (=> b!1345307 (=> (not res!892729) (not e!765564))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91615 (_ BitVec 32)) Bool)

(assert (=> b!1345307 (= res!892729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapNonEmpty!57820 () Bool)

(declare-fun mapRes!57820 () Bool)

(declare-fun tp!110032 () Bool)

(assert (=> mapNonEmpty!57820 (= mapRes!57820 (and tp!110032 e!765563))))

(declare-fun mapKey!57820 () (_ BitVec 32))

(declare-fun mapValue!57820 () ValueCell!17806)

(declare-fun mapRest!57820 () (Array (_ BitVec 32) ValueCell!17806))

(assert (=> mapNonEmpty!57820 (= (arr!44260 _values!1303) (store mapRest!57820 mapKey!57820 mapValue!57820))))

(declare-fun mapIsEmpty!57820 () Bool)

(assert (=> mapIsEmpty!57820 mapRes!57820))

(declare-fun b!1345308 () Bool)

(declare-fun res!892731 () Bool)

(assert (=> b!1345308 (=> (not res!892731) (not e!765564))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1345308 (= res!892731 (validKeyInArray!0 (select (arr!44259 _keys!1571) from!1960)))))

(declare-fun b!1345309 () Bool)

(declare-fun res!892735 () Bool)

(assert (=> b!1345309 (=> (not res!892735) (not e!765566))))

(assert (=> b!1345309 (= res!892735 (not (= k!1142 (select (arr!44259 _keys!1571) from!1960))))))

(declare-fun b!1345310 () Bool)

(declare-fun res!892738 () Bool)

(assert (=> b!1345310 (=> (not res!892738) (not e!765564))))

(assert (=> b!1345310 (= res!892738 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44810 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1345311 () Bool)

(declare-fun res!892736 () Bool)

(assert (=> b!1345311 (=> (not res!892736) (not e!765564))))

(assert (=> b!1345311 (= res!892736 (and (= (size!44811 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44810 _keys!1571) (size!44811 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1345312 () Bool)

(assert (=> b!1345312 (= e!765566 (not true))))

(assert (=> b!1345312 (contains!9134 lt!595276 k!1142)))

(declare-datatypes ((Unit!44059 0))(
  ( (Unit!44060) )
))
(declare-fun lt!595274 () Unit!44059)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!389 ((_ BitVec 64) (_ BitVec 64) V!54981 ListLongMap!22013) Unit!44059)

(assert (=> b!1345312 (= lt!595274 (lemmaInListMapAfterAddingDiffThenInBefore!389 k!1142 (select (arr!44259 _keys!1571) from!1960) lt!595275 lt!595276))))

(declare-fun b!1345302 () Bool)

(declare-fun e!765562 () Bool)

(assert (=> b!1345302 (= e!765562 tp_is_empty!37409)))

(declare-fun res!892739 () Bool)

(assert (=> start!113394 (=> (not res!892739) (not e!765564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113394 (= res!892739 (validMask!0 mask!1977))))

(assert (=> start!113394 e!765564))

(assert (=> start!113394 tp_is_empty!37409))

(assert (=> start!113394 true))

(declare-fun array_inv!33267 (array!91615) Bool)

(assert (=> start!113394 (array_inv!33267 _keys!1571)))

(declare-fun e!765561 () Bool)

(declare-fun array_inv!33268 (array!91617) Bool)

(assert (=> start!113394 (and (array_inv!33268 _values!1303) e!765561)))

(assert (=> start!113394 tp!110033))

(declare-fun b!1345313 () Bool)

(assert (=> b!1345313 (= e!765561 (and e!765562 mapRes!57820))))

(declare-fun condMapEmpty!57820 () Bool)

(declare-fun mapDefault!57820 () ValueCell!17806)

