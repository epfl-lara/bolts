; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113192 () Bool)

(assert start!113192)

(declare-fun b_free!31207 () Bool)

(declare-fun b_next!31207 () Bool)

(assert (=> start!113192 (= b_free!31207 (not b_next!31207))))

(declare-fun tp!109426 () Bool)

(declare-fun b_and!50331 () Bool)

(assert (=> start!113192 (= tp!109426 b_and!50331)))

(declare-fun b!1341726 () Bool)

(declare-fun res!890216 () Bool)

(declare-fun e!764006 () Bool)

(assert (=> b!1341726 (=> (not res!890216) (not e!764006))))

(declare-datatypes ((array!91223 0))(
  ( (array!91224 (arr!44063 (Array (_ BitVec 32) (_ BitVec 64))) (size!44614 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91223)

(declare-datatypes ((List!31380 0))(
  ( (Nil!31377) (Cons!31376 (h!32585 (_ BitVec 64)) (t!45805 List!31380)) )
))
(declare-fun arrayNoDuplicates!0 (array!91223 (_ BitVec 32) List!31380) Bool)

(assert (=> b!1341726 (= res!890216 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31377))))

(declare-fun mapIsEmpty!57517 () Bool)

(declare-fun mapRes!57517 () Bool)

(assert (=> mapIsEmpty!57517 mapRes!57517))

(declare-fun b!1341727 () Bool)

(declare-fun res!890213 () Bool)

(assert (=> b!1341727 (=> (not res!890213) (not e!764006))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54713 0))(
  ( (V!54714 (val!18678 Int)) )
))
(declare-datatypes ((ValueCell!17705 0))(
  ( (ValueCellFull!17705 (v!21324 V!54713)) (EmptyCell!17705) )
))
(declare-datatypes ((array!91225 0))(
  ( (array!91226 (arr!44064 (Array (_ BitVec 32) ValueCell!17705)) (size!44615 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91225)

(assert (=> b!1341727 (= res!890213 (and (= (size!44615 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44614 _keys!1571) (size!44615 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1341728 () Bool)

(declare-fun res!890219 () Bool)

(assert (=> b!1341728 (=> (not res!890219) (not e!764006))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1341728 (= res!890219 (not (= (select (arr!44063 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1341729 () Bool)

(declare-fun res!890217 () Bool)

(assert (=> b!1341729 (=> (not res!890217) (not e!764006))))

(declare-fun minValue!1245 () V!54713)

(declare-fun zeroValue!1245 () V!54713)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24200 0))(
  ( (tuple2!24201 (_1!12110 (_ BitVec 64)) (_2!12110 V!54713)) )
))
(declare-datatypes ((List!31381 0))(
  ( (Nil!31378) (Cons!31377 (h!32586 tuple2!24200) (t!45806 List!31381)) )
))
(declare-datatypes ((ListLongMap!21869 0))(
  ( (ListLongMap!21870 (toList!10950 List!31381)) )
))
(declare-fun contains!9062 (ListLongMap!21869 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5850 (array!91223 array!91225 (_ BitVec 32) (_ BitVec 32) V!54713 V!54713 (_ BitVec 32) Int) ListLongMap!21869)

(assert (=> b!1341729 (= res!890217 (contains!9062 (getCurrentListMap!5850 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1341730 () Bool)

(declare-fun res!890212 () Bool)

(assert (=> b!1341730 (=> (not res!890212) (not e!764006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1341730 (= res!890212 (validKeyInArray!0 (select (arr!44063 _keys!1571) from!1960)))))

(declare-fun b!1341731 () Bool)

(declare-fun res!890214 () Bool)

(assert (=> b!1341731 (=> (not res!890214) (not e!764006))))

(assert (=> b!1341731 (= res!890214 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44614 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341732 () Bool)

(declare-fun res!890211 () Bool)

(assert (=> b!1341732 (=> (not res!890211) (not e!764006))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91223 (_ BitVec 32)) Bool)

(assert (=> b!1341732 (= res!890211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1341733 () Bool)

(assert (=> b!1341733 (= e!764006 (not true))))

(declare-fun lt!594172 () ListLongMap!21869)

(assert (=> b!1341733 (contains!9062 lt!594172 k!1142)))

(declare-fun lt!594174 () V!54713)

(declare-datatypes ((Unit!43975 0))(
  ( (Unit!43976) )
))
(declare-fun lt!594175 () Unit!43975)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!347 ((_ BitVec 64) (_ BitVec 64) V!54713 ListLongMap!21869) Unit!43975)

(assert (=> b!1341733 (= lt!594175 (lemmaInListMapAfterAddingDiffThenInBefore!347 k!1142 (select (arr!44063 _keys!1571) from!1960) lt!594174 lt!594172))))

(declare-fun lt!594171 () ListLongMap!21869)

(assert (=> b!1341733 (contains!9062 lt!594171 k!1142)))

(declare-fun lt!594173 () Unit!43975)

(assert (=> b!1341733 (= lt!594173 (lemmaInListMapAfterAddingDiffThenInBefore!347 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594171))))

(declare-fun +!4755 (ListLongMap!21869 tuple2!24200) ListLongMap!21869)

(assert (=> b!1341733 (= lt!594171 (+!4755 lt!594172 (tuple2!24201 (select (arr!44063 _keys!1571) from!1960) lt!594174)))))

(declare-fun get!22286 (ValueCell!17705 V!54713) V!54713)

(declare-fun dynLambda!3792 (Int (_ BitVec 64)) V!54713)

(assert (=> b!1341733 (= lt!594174 (get!22286 (select (arr!44064 _values!1303) from!1960) (dynLambda!3792 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6478 (array!91223 array!91225 (_ BitVec 32) (_ BitVec 32) V!54713 V!54713 (_ BitVec 32) Int) ListLongMap!21869)

(assert (=> b!1341733 (= lt!594172 (getCurrentListMapNoExtraKeys!6478 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun res!890215 () Bool)

(assert (=> start!113192 (=> (not res!890215) (not e!764006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113192 (= res!890215 (validMask!0 mask!1977))))

(assert (=> start!113192 e!764006))

(declare-fun tp_is_empty!37207 () Bool)

(assert (=> start!113192 tp_is_empty!37207))

(assert (=> start!113192 true))

(declare-fun array_inv!33133 (array!91223) Bool)

(assert (=> start!113192 (array_inv!33133 _keys!1571)))

(declare-fun e!764004 () Bool)

(declare-fun array_inv!33134 (array!91225) Bool)

(assert (=> start!113192 (and (array_inv!33134 _values!1303) e!764004)))

(assert (=> start!113192 tp!109426))

(declare-fun b!1341734 () Bool)

(declare-fun res!890218 () Bool)

(assert (=> b!1341734 (=> (not res!890218) (not e!764006))))

(assert (=> b!1341734 (= res!890218 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1341735 () Bool)

(declare-fun e!764002 () Bool)

(assert (=> b!1341735 (= e!764002 tp_is_empty!37207)))

(declare-fun b!1341736 () Bool)

(declare-fun e!764003 () Bool)

(assert (=> b!1341736 (= e!764003 tp_is_empty!37207)))

(declare-fun mapNonEmpty!57517 () Bool)

(declare-fun tp!109427 () Bool)

(assert (=> mapNonEmpty!57517 (= mapRes!57517 (and tp!109427 e!764002))))

(declare-fun mapKey!57517 () (_ BitVec 32))

(declare-fun mapRest!57517 () (Array (_ BitVec 32) ValueCell!17705))

(declare-fun mapValue!57517 () ValueCell!17705)

(assert (=> mapNonEmpty!57517 (= (arr!44064 _values!1303) (store mapRest!57517 mapKey!57517 mapValue!57517))))

(declare-fun b!1341737 () Bool)

(assert (=> b!1341737 (= e!764004 (and e!764003 mapRes!57517))))

(declare-fun condMapEmpty!57517 () Bool)

(declare-fun mapDefault!57517 () ValueCell!17705)

