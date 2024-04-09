; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113190 () Bool)

(assert start!113190)

(declare-fun b_free!31205 () Bool)

(declare-fun b_next!31205 () Bool)

(assert (=> start!113190 (= b_free!31205 (not b_next!31205))))

(declare-fun tp!109420 () Bool)

(declare-fun b_and!50327 () Bool)

(assert (=> start!113190 (= tp!109420 b_and!50327)))

(declare-fun b!1341688 () Bool)

(declare-fun res!890189 () Bool)

(declare-fun e!763990 () Bool)

(assert (=> b!1341688 (=> (not res!890189) (not e!763990))))

(declare-datatypes ((array!91219 0))(
  ( (array!91220 (arr!44061 (Array (_ BitVec 32) (_ BitVec 64))) (size!44612 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91219)

(declare-datatypes ((List!31378 0))(
  ( (Nil!31375) (Cons!31374 (h!32583 (_ BitVec 64)) (t!45801 List!31378)) )
))
(declare-fun arrayNoDuplicates!0 (array!91219 (_ BitVec 32) List!31378) Bool)

(assert (=> b!1341688 (= res!890189 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31375))))

(declare-fun b!1341689 () Bool)

(declare-fun res!890187 () Bool)

(assert (=> b!1341689 (=> (not res!890187) (not e!763990))))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1341689 (= res!890187 (validKeyInArray!0 (select (arr!44061 _keys!1571) from!1960)))))

(declare-fun mapNonEmpty!57514 () Bool)

(declare-fun mapRes!57514 () Bool)

(declare-fun tp!109421 () Bool)

(declare-fun e!763989 () Bool)

(assert (=> mapNonEmpty!57514 (= mapRes!57514 (and tp!109421 e!763989))))

(declare-datatypes ((V!54709 0))(
  ( (V!54710 (val!18677 Int)) )
))
(declare-datatypes ((ValueCell!17704 0))(
  ( (ValueCellFull!17704 (v!21323 V!54709)) (EmptyCell!17704) )
))
(declare-fun mapValue!57514 () ValueCell!17704)

(declare-fun mapRest!57514 () (Array (_ BitVec 32) ValueCell!17704))

(declare-fun mapKey!57514 () (_ BitVec 32))

(declare-datatypes ((array!91221 0))(
  ( (array!91222 (arr!44062 (Array (_ BitVec 32) ValueCell!17704)) (size!44613 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91221)

(assert (=> mapNonEmpty!57514 (= (arr!44062 _values!1303) (store mapRest!57514 mapKey!57514 mapValue!57514))))

(declare-fun b!1341690 () Bool)

(declare-fun e!763991 () Bool)

(declare-fun tp_is_empty!37205 () Bool)

(assert (=> b!1341690 (= e!763991 tp_is_empty!37205)))

(declare-fun mapIsEmpty!57514 () Bool)

(assert (=> mapIsEmpty!57514 mapRes!57514))

(declare-fun b!1341691 () Bool)

(declare-fun res!890192 () Bool)

(assert (=> b!1341691 (=> (not res!890192) (not e!763990))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1341691 (= res!890192 (and (= (size!44613 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44612 _keys!1571) (size!44613 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1341692 () Bool)

(declare-fun res!890188 () Bool)

(assert (=> b!1341692 (=> (not res!890188) (not e!763990))))

(declare-fun k!1142 () (_ BitVec 64))

(assert (=> b!1341692 (= res!890188 (not (= (select (arr!44061 _keys!1571) from!1960) k!1142)))))

(declare-fun res!890191 () Bool)

(assert (=> start!113190 (=> (not res!890191) (not e!763990))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113190 (= res!890191 (validMask!0 mask!1977))))

(assert (=> start!113190 e!763990))

(assert (=> start!113190 tp_is_empty!37205))

(assert (=> start!113190 true))

(declare-fun array_inv!33131 (array!91219) Bool)

(assert (=> start!113190 (array_inv!33131 _keys!1571)))

(declare-fun e!763987 () Bool)

(declare-fun array_inv!33132 (array!91221) Bool)

(assert (=> start!113190 (and (array_inv!33132 _values!1303) e!763987)))

(assert (=> start!113190 tp!109420))

(declare-fun b!1341693 () Bool)

(assert (=> b!1341693 (= e!763990 (not true))))

(declare-datatypes ((tuple2!24198 0))(
  ( (tuple2!24199 (_1!12109 (_ BitVec 64)) (_2!12109 V!54709)) )
))
(declare-datatypes ((List!31379 0))(
  ( (Nil!31376) (Cons!31375 (h!32584 tuple2!24198) (t!45802 List!31379)) )
))
(declare-datatypes ((ListLongMap!21867 0))(
  ( (ListLongMap!21868 (toList!10949 List!31379)) )
))
(declare-fun lt!594160 () ListLongMap!21867)

(declare-fun contains!9061 (ListLongMap!21867 (_ BitVec 64)) Bool)

(assert (=> b!1341693 (contains!9061 lt!594160 k!1142)))

(declare-fun lt!594156 () V!54709)

(declare-datatypes ((Unit!43973 0))(
  ( (Unit!43974) )
))
(declare-fun lt!594158 () Unit!43973)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!346 ((_ BitVec 64) (_ BitVec 64) V!54709 ListLongMap!21867) Unit!43973)

(assert (=> b!1341693 (= lt!594158 (lemmaInListMapAfterAddingDiffThenInBefore!346 k!1142 (select (arr!44061 _keys!1571) from!1960) lt!594156 lt!594160))))

(declare-fun lt!594157 () ListLongMap!21867)

(assert (=> b!1341693 (contains!9061 lt!594157 k!1142)))

(declare-fun lt!594159 () Unit!43973)

(declare-fun zeroValue!1245 () V!54709)

(assert (=> b!1341693 (= lt!594159 (lemmaInListMapAfterAddingDiffThenInBefore!346 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594157))))

(declare-fun +!4754 (ListLongMap!21867 tuple2!24198) ListLongMap!21867)

(assert (=> b!1341693 (= lt!594157 (+!4754 lt!594160 (tuple2!24199 (select (arr!44061 _keys!1571) from!1960) lt!594156)))))

(declare-fun defaultEntry!1306 () Int)

(declare-fun get!22283 (ValueCell!17704 V!54709) V!54709)

(declare-fun dynLambda!3791 (Int (_ BitVec 64)) V!54709)

(assert (=> b!1341693 (= lt!594156 (get!22283 (select (arr!44062 _values!1303) from!1960) (dynLambda!3791 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54709)

(declare-fun getCurrentListMapNoExtraKeys!6477 (array!91219 array!91221 (_ BitVec 32) (_ BitVec 32) V!54709 V!54709 (_ BitVec 32) Int) ListLongMap!21867)

(assert (=> b!1341693 (= lt!594160 (getCurrentListMapNoExtraKeys!6477 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1341694 () Bool)

(assert (=> b!1341694 (= e!763989 tp_is_empty!37205)))

(declare-fun b!1341695 () Bool)

(declare-fun res!890190 () Bool)

(assert (=> b!1341695 (=> (not res!890190) (not e!763990))))

(assert (=> b!1341695 (= res!890190 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1341696 () Bool)

(declare-fun res!890184 () Bool)

(assert (=> b!1341696 (=> (not res!890184) (not e!763990))))

(assert (=> b!1341696 (= res!890184 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44612 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341697 () Bool)

(declare-fun res!890185 () Bool)

(assert (=> b!1341697 (=> (not res!890185) (not e!763990))))

(declare-fun getCurrentListMap!5849 (array!91219 array!91221 (_ BitVec 32) (_ BitVec 32) V!54709 V!54709 (_ BitVec 32) Int) ListLongMap!21867)

(assert (=> b!1341697 (= res!890185 (contains!9061 (getCurrentListMap!5849 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1341698 () Bool)

(declare-fun res!890186 () Bool)

(assert (=> b!1341698 (=> (not res!890186) (not e!763990))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91219 (_ BitVec 32)) Bool)

(assert (=> b!1341698 (= res!890186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1341699 () Bool)

(assert (=> b!1341699 (= e!763987 (and e!763991 mapRes!57514))))

(declare-fun condMapEmpty!57514 () Bool)

(declare-fun mapDefault!57514 () ValueCell!17704)

