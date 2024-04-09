; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113160 () Bool)

(assert start!113160)

(declare-fun b_free!31175 () Bool)

(declare-fun b_next!31175 () Bool)

(assert (=> start!113160 (= b_free!31175 (not b_next!31175))))

(declare-fun tp!109330 () Bool)

(declare-fun b_and!50267 () Bool)

(assert (=> start!113160 (= tp!109330 b_and!50267)))

(declare-fun b!1341118 () Bool)

(declare-fun e!763766 () Bool)

(assert (=> b!1341118 (= e!763766 (not true))))

(declare-datatypes ((V!54669 0))(
  ( (V!54670 (val!18662 Int)) )
))
(declare-datatypes ((tuple2!24174 0))(
  ( (tuple2!24175 (_1!12097 (_ BitVec 64)) (_2!12097 V!54669)) )
))
(declare-datatypes ((List!31356 0))(
  ( (Nil!31353) (Cons!31352 (h!32561 tuple2!24174) (t!45749 List!31356)) )
))
(declare-datatypes ((ListLongMap!21843 0))(
  ( (ListLongMap!21844 (toList!10937 List!31356)) )
))
(declare-fun lt!594043 () ListLongMap!21843)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun contains!9049 (ListLongMap!21843 (_ BitVec 64)) Bool)

(assert (=> b!1341118 (contains!9049 lt!594043 k!1142)))

(declare-fun zeroValue!1245 () V!54669)

(declare-datatypes ((Unit!43951 0))(
  ( (Unit!43952) )
))
(declare-fun lt!594042 () Unit!43951)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!335 ((_ BitVec 64) (_ BitVec 64) V!54669 ListLongMap!21843) Unit!43951)

(assert (=> b!1341118 (= lt!594042 (lemmaInListMapAfterAddingDiffThenInBefore!335 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594043))))

(declare-fun minValue!1245 () V!54669)

(declare-fun defaultEntry!1306 () Int)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17689 0))(
  ( (ValueCellFull!17689 (v!21308 V!54669)) (EmptyCell!17689) )
))
(declare-datatypes ((array!91159 0))(
  ( (array!91160 (arr!44031 (Array (_ BitVec 32) ValueCell!17689)) (size!44582 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91159)

(declare-datatypes ((array!91161 0))(
  ( (array!91162 (arr!44032 (Array (_ BitVec 32) (_ BitVec 64))) (size!44583 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91161)

(declare-fun +!4743 (ListLongMap!21843 tuple2!24174) ListLongMap!21843)

(declare-fun getCurrentListMapNoExtraKeys!6466 (array!91161 array!91159 (_ BitVec 32) (_ BitVec 32) V!54669 V!54669 (_ BitVec 32) Int) ListLongMap!21843)

(declare-fun get!22262 (ValueCell!17689 V!54669) V!54669)

(declare-fun dynLambda!3780 (Int (_ BitVec 64)) V!54669)

(assert (=> b!1341118 (= lt!594043 (+!4743 (getCurrentListMapNoExtraKeys!6466 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24175 (select (arr!44032 _keys!1571) from!1960) (get!22262 (select (arr!44031 _values!1303) from!1960) (dynLambda!3780 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1341119 () Bool)

(declare-fun res!889779 () Bool)

(assert (=> b!1341119 (=> (not res!889779) (not e!763766))))

(assert (=> b!1341119 (= res!889779 (and (= (size!44582 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44583 _keys!1571) (size!44582 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57469 () Bool)

(declare-fun mapRes!57469 () Bool)

(assert (=> mapIsEmpty!57469 mapRes!57469))

(declare-fun b!1341120 () Bool)

(declare-fun e!763763 () Bool)

(declare-fun tp_is_empty!37175 () Bool)

(assert (=> b!1341120 (= e!763763 tp_is_empty!37175)))

(declare-fun b!1341121 () Bool)

(declare-fun res!889782 () Bool)

(assert (=> b!1341121 (=> (not res!889782) (not e!763766))))

(assert (=> b!1341121 (= res!889782 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44583 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341122 () Bool)

(declare-fun res!889784 () Bool)

(assert (=> b!1341122 (=> (not res!889784) (not e!763766))))

(declare-datatypes ((List!31357 0))(
  ( (Nil!31354) (Cons!31353 (h!32562 (_ BitVec 64)) (t!45750 List!31357)) )
))
(declare-fun arrayNoDuplicates!0 (array!91161 (_ BitVec 32) List!31357) Bool)

(assert (=> b!1341122 (= res!889784 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31354))))

(declare-fun b!1341123 () Bool)

(declare-fun e!763762 () Bool)

(declare-fun e!763765 () Bool)

(assert (=> b!1341123 (= e!763762 (and e!763765 mapRes!57469))))

(declare-fun condMapEmpty!57469 () Bool)

(declare-fun mapDefault!57469 () ValueCell!17689)

