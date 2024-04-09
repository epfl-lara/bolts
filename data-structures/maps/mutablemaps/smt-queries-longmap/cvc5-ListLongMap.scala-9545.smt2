; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113168 () Bool)

(assert start!113168)

(declare-fun b_free!31183 () Bool)

(declare-fun b_next!31183 () Bool)

(assert (=> start!113168 (= b_free!31183 (not b_next!31183))))

(declare-fun tp!109354 () Bool)

(declare-fun b_and!50283 () Bool)

(assert (=> start!113168 (= tp!109354 b_and!50283)))

(declare-fun b!1341270 () Bool)

(declare-fun res!889895 () Bool)

(declare-fun e!763826 () Bool)

(assert (=> b!1341270 (=> (not res!889895) (not e!763826))))

(declare-datatypes ((V!54681 0))(
  ( (V!54682 (val!18666 Int)) )
))
(declare-fun minValue!1245 () V!54681)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91175 0))(
  ( (array!91176 (arr!44039 (Array (_ BitVec 32) (_ BitVec 64))) (size!44590 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91175)

(declare-fun zeroValue!1245 () V!54681)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17693 0))(
  ( (ValueCellFull!17693 (v!21312 V!54681)) (EmptyCell!17693) )
))
(declare-datatypes ((array!91177 0))(
  ( (array!91178 (arr!44040 (Array (_ BitVec 32) ValueCell!17693)) (size!44591 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91177)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24180 0))(
  ( (tuple2!24181 (_1!12100 (_ BitVec 64)) (_2!12100 V!54681)) )
))
(declare-datatypes ((List!31362 0))(
  ( (Nil!31359) (Cons!31358 (h!32567 tuple2!24180) (t!45763 List!31362)) )
))
(declare-datatypes ((ListLongMap!21849 0))(
  ( (ListLongMap!21850 (toList!10940 List!31362)) )
))
(declare-fun contains!9052 (ListLongMap!21849 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5841 (array!91175 array!91177 (_ BitVec 32) (_ BitVec 32) V!54681 V!54681 (_ BitVec 32) Int) ListLongMap!21849)

(assert (=> b!1341270 (= res!889895 (contains!9052 (getCurrentListMap!5841 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1341271 () Bool)

(declare-fun res!889891 () Bool)

(assert (=> b!1341271 (=> (not res!889891) (not e!763826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91175 (_ BitVec 32)) Bool)

(assert (=> b!1341271 (= res!889891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1341272 () Bool)

(declare-fun res!889887 () Bool)

(assert (=> b!1341272 (=> (not res!889887) (not e!763826))))

(assert (=> b!1341272 (= res!889887 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1341273 () Bool)

(declare-fun e!763824 () Bool)

(declare-fun tp_is_empty!37183 () Bool)

(assert (=> b!1341273 (= e!763824 tp_is_empty!37183)))

(declare-fun b!1341274 () Bool)

(declare-fun res!889894 () Bool)

(assert (=> b!1341274 (=> (not res!889894) (not e!763826))))

(assert (=> b!1341274 (= res!889894 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44590 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341275 () Bool)

(assert (=> b!1341275 (= e!763826 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1960) #b00000000000000000000000000000000)))))

(declare-fun lt!594067 () ListLongMap!21849)

(assert (=> b!1341275 (contains!9052 lt!594067 k!1142)))

(declare-datatypes ((Unit!43957 0))(
  ( (Unit!43958) )
))
(declare-fun lt!594066 () Unit!43957)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!338 ((_ BitVec 64) (_ BitVec 64) V!54681 ListLongMap!21849) Unit!43957)

(assert (=> b!1341275 (= lt!594066 (lemmaInListMapAfterAddingDiffThenInBefore!338 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594067))))

(declare-fun +!4746 (ListLongMap!21849 tuple2!24180) ListLongMap!21849)

(declare-fun getCurrentListMapNoExtraKeys!6469 (array!91175 array!91177 (_ BitVec 32) (_ BitVec 32) V!54681 V!54681 (_ BitVec 32) Int) ListLongMap!21849)

(declare-fun get!22269 (ValueCell!17693 V!54681) V!54681)

(declare-fun dynLambda!3783 (Int (_ BitVec 64)) V!54681)

(assert (=> b!1341275 (= lt!594067 (+!4746 (getCurrentListMapNoExtraKeys!6469 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24181 (select (arr!44039 _keys!1571) from!1960) (get!22269 (select (arr!44040 _values!1303) from!1960) (dynLambda!3783 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1341276 () Bool)

(declare-fun e!763823 () Bool)

(declare-fun e!763825 () Bool)

(declare-fun mapRes!57481 () Bool)

(assert (=> b!1341276 (= e!763823 (and e!763825 mapRes!57481))))

(declare-fun condMapEmpty!57481 () Bool)

(declare-fun mapDefault!57481 () ValueCell!17693)

