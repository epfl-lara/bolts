; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113064 () Bool)

(assert start!113064)

(declare-fun b_free!31079 () Bool)

(declare-fun b_next!31079 () Bool)

(assert (=> start!113064 (= b_free!31079 (not b_next!31079))))

(declare-fun tp!109042 () Bool)

(declare-fun b_and!50119 () Bool)

(assert (=> start!113064 (= tp!109042 b_and!50119)))

(declare-fun mapNonEmpty!57325 () Bool)

(declare-fun mapRes!57325 () Bool)

(declare-fun tp!109043 () Bool)

(declare-fun e!763042 () Bool)

(assert (=> mapNonEmpty!57325 (= mapRes!57325 (and tp!109043 e!763042))))

(declare-datatypes ((V!54541 0))(
  ( (V!54542 (val!18614 Int)) )
))
(declare-datatypes ((ValueCell!17641 0))(
  ( (ValueCellFull!17641 (v!21260 V!54541)) (EmptyCell!17641) )
))
(declare-fun mapRest!57325 () (Array (_ BitVec 32) ValueCell!17641))

(declare-fun mapValue!57325 () ValueCell!17641)

(declare-fun mapKey!57325 () (_ BitVec 32))

(declare-datatypes ((array!90977 0))(
  ( (array!90978 (arr!43940 (Array (_ BitVec 32) ValueCell!17641)) (size!44491 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90977)

(assert (=> mapNonEmpty!57325 (= (arr!43940 _values!1303) (store mapRest!57325 mapKey!57325 mapValue!57325))))

(declare-fun b!1339567 () Bool)

(declare-fun e!763044 () Bool)

(assert (=> b!1339567 (= e!763044 false)))

(declare-fun minValue!1245 () V!54541)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!90979 0))(
  ( (array!90980 (arr!43941 (Array (_ BitVec 32) (_ BitVec 64))) (size!44492 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90979)

(declare-fun zeroValue!1245 () V!54541)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun lt!593845 () Bool)

(declare-datatypes ((tuple2!24104 0))(
  ( (tuple2!24105 (_1!12062 (_ BitVec 64)) (_2!12062 V!54541)) )
))
(declare-datatypes ((List!31291 0))(
  ( (Nil!31288) (Cons!31287 (h!32496 tuple2!24104) (t!45630 List!31291)) )
))
(declare-datatypes ((ListLongMap!21773 0))(
  ( (ListLongMap!21774 (toList!10902 List!31291)) )
))
(declare-fun contains!9014 (ListLongMap!21773 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5806 (array!90979 array!90977 (_ BitVec 32) (_ BitVec 32) V!54541 V!54541 (_ BitVec 32) Int) ListLongMap!21773)

(assert (=> b!1339567 (= lt!593845 (contains!9014 (getCurrentListMap!5806 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1339568 () Bool)

(declare-fun res!888714 () Bool)

(assert (=> b!1339568 (=> (not res!888714) (not e!763044))))

(assert (=> b!1339568 (= res!888714 (and (= (size!44491 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44492 _keys!1571) (size!44491 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun res!888713 () Bool)

(assert (=> start!113064 (=> (not res!888713) (not e!763044))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113064 (= res!888713 (validMask!0 mask!1977))))

(assert (=> start!113064 e!763044))

(declare-fun tp_is_empty!37079 () Bool)

(assert (=> start!113064 tp_is_empty!37079))

(assert (=> start!113064 true))

(declare-fun array_inv!33055 (array!90979) Bool)

(assert (=> start!113064 (array_inv!33055 _keys!1571)))

(declare-fun e!763046 () Bool)

(declare-fun array_inv!33056 (array!90977) Bool)

(assert (=> start!113064 (and (array_inv!33056 _values!1303) e!763046)))

(assert (=> start!113064 tp!109042))

(declare-fun b!1339569 () Bool)

(declare-fun res!888716 () Bool)

(assert (=> b!1339569 (=> (not res!888716) (not e!763044))))

(declare-datatypes ((List!31292 0))(
  ( (Nil!31289) (Cons!31288 (h!32497 (_ BitVec 64)) (t!45631 List!31292)) )
))
(declare-fun arrayNoDuplicates!0 (array!90979 (_ BitVec 32) List!31292) Bool)

(assert (=> b!1339569 (= res!888716 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31289))))

(declare-fun mapIsEmpty!57325 () Bool)

(assert (=> mapIsEmpty!57325 mapRes!57325))

(declare-fun b!1339570 () Bool)

(declare-fun e!763045 () Bool)

(assert (=> b!1339570 (= e!763045 tp_is_empty!37079)))

(declare-fun b!1339571 () Bool)

(assert (=> b!1339571 (= e!763046 (and e!763045 mapRes!57325))))

(declare-fun condMapEmpty!57325 () Bool)

(declare-fun mapDefault!57325 () ValueCell!17641)

