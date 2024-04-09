; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113406 () Bool)

(assert start!113406)

(declare-fun b_free!31421 () Bool)

(declare-fun b_next!31421 () Bool)

(assert (=> start!113406 (= b_free!31421 (not b_next!31421))))

(declare-fun tp!110068 () Bool)

(declare-fun b_and!50705 () Bool)

(assert (=> start!113406 (= tp!110068 b_and!50705)))

(declare-fun mapNonEmpty!57838 () Bool)

(declare-fun mapRes!57838 () Bool)

(declare-fun tp!110069 () Bool)

(declare-fun e!765671 () Bool)

(assert (=> mapNonEmpty!57838 (= mapRes!57838 (and tp!110069 e!765671))))

(declare-datatypes ((V!54997 0))(
  ( (V!54998 (val!18785 Int)) )
))
(declare-datatypes ((ValueCell!17812 0))(
  ( (ValueCellFull!17812 (v!21431 V!54997)) (EmptyCell!17812) )
))
(declare-fun mapValue!57838 () ValueCell!17812)

(declare-fun mapKey!57838 () (_ BitVec 32))

(declare-datatypes ((array!91639 0))(
  ( (array!91640 (arr!44271 (Array (_ BitVec 32) ValueCell!17812)) (size!44822 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91639)

(declare-fun mapRest!57838 () (Array (_ BitVec 32) ValueCell!17812))

(assert (=> mapNonEmpty!57838 (= (arr!44271 _values!1303) (store mapRest!57838 mapKey!57838 mapValue!57838))))

(declare-fun b!1345565 () Bool)

(declare-fun e!765672 () Bool)

(declare-fun e!765673 () Bool)

(assert (=> b!1345565 (= e!765672 e!765673)))

(declare-fun res!892931 () Bool)

(assert (=> b!1345565 (=> (not res!892931) (not e!765673))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91641 0))(
  ( (array!91642 (arr!44272 (Array (_ BitVec 32) (_ BitVec 64))) (size!44823 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91641)

(declare-fun lt!595329 () V!54997)

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((tuple2!24356 0))(
  ( (tuple2!24357 (_1!12188 (_ BitVec 64)) (_2!12188 V!54997)) )
))
(declare-datatypes ((List!31527 0))(
  ( (Nil!31524) (Cons!31523 (h!32732 tuple2!24356) (t!46112 List!31527)) )
))
(declare-datatypes ((ListLongMap!22025 0))(
  ( (ListLongMap!22026 (toList!11028 List!31527)) )
))
(declare-fun lt!595330 () ListLongMap!22025)

(declare-fun contains!9140 (ListLongMap!22025 (_ BitVec 64)) Bool)

(declare-fun +!4806 (ListLongMap!22025 tuple2!24356) ListLongMap!22025)

(assert (=> b!1345565 (= res!892931 (contains!9140 (+!4806 lt!595330 (tuple2!24357 (select (arr!44272 _keys!1571) from!1960) lt!595329)) k!1142))))

(declare-fun minValue!1245 () V!54997)

(declare-fun defaultEntry!1306 () Int)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!54997)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6529 (array!91641 array!91639 (_ BitVec 32) (_ BitVec 32) V!54997 V!54997 (_ BitVec 32) Int) ListLongMap!22025)

(assert (=> b!1345565 (= lt!595330 (getCurrentListMapNoExtraKeys!6529 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun get!22407 (ValueCell!17812 V!54997) V!54997)

(declare-fun dynLambda!3843 (Int (_ BitVec 64)) V!54997)

(assert (=> b!1345565 (= lt!595329 (get!22407 (select (arr!44271 _values!1303) from!1960) (dynLambda!3843 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1345566 () Bool)

(assert (=> b!1345566 (= e!765673 (not true))))

(assert (=> b!1345566 (contains!9140 lt!595330 k!1142)))

(declare-datatypes ((Unit!44071 0))(
  ( (Unit!44072) )
))
(declare-fun lt!595328 () Unit!44071)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!395 ((_ BitVec 64) (_ BitVec 64) V!54997 ListLongMap!22025) Unit!44071)

(assert (=> b!1345566 (= lt!595328 (lemmaInListMapAfterAddingDiffThenInBefore!395 k!1142 (select (arr!44272 _keys!1571) from!1960) lt!595329 lt!595330))))

(declare-fun b!1345567 () Bool)

(declare-fun res!892929 () Bool)

(assert (=> b!1345567 (=> (not res!892929) (not e!765672))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91641 (_ BitVec 32)) Bool)

(assert (=> b!1345567 (= res!892929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!892934 () Bool)

(assert (=> start!113406 (=> (not res!892934) (not e!765672))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113406 (= res!892934 (validMask!0 mask!1977))))

(assert (=> start!113406 e!765672))

(declare-fun tp_is_empty!37421 () Bool)

(assert (=> start!113406 tp_is_empty!37421))

(assert (=> start!113406 true))

(declare-fun array_inv!33275 (array!91641) Bool)

(assert (=> start!113406 (array_inv!33275 _keys!1571)))

(declare-fun e!765669 () Bool)

(declare-fun array_inv!33276 (array!91639) Bool)

(assert (=> start!113406 (and (array_inv!33276 _values!1303) e!765669)))

(assert (=> start!113406 tp!110068))

(declare-fun b!1345568 () Bool)

(declare-fun res!892932 () Bool)

(assert (=> b!1345568 (=> (not res!892932) (not e!765673))))

(assert (=> b!1345568 (= res!892932 (not (= k!1142 (select (arr!44272 _keys!1571) from!1960))))))

(declare-fun b!1345569 () Bool)

(declare-fun res!892930 () Bool)

(assert (=> b!1345569 (=> (not res!892930) (not e!765672))))

(assert (=> b!1345569 (= res!892930 (not (= (select (arr!44272 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1345570 () Bool)

(declare-fun e!765670 () Bool)

(assert (=> b!1345570 (= e!765670 tp_is_empty!37421)))

(declare-fun b!1345571 () Bool)

(declare-fun res!892928 () Bool)

(assert (=> b!1345571 (=> (not res!892928) (not e!765672))))

(declare-fun getCurrentListMap!5919 (array!91641 array!91639 (_ BitVec 32) (_ BitVec 32) V!54997 V!54997 (_ BitVec 32) Int) ListLongMap!22025)

(assert (=> b!1345571 (= res!892928 (contains!9140 (getCurrentListMap!5919 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1345572 () Bool)

(declare-fun res!892927 () Bool)

(assert (=> b!1345572 (=> (not res!892927) (not e!765672))))

(assert (=> b!1345572 (= res!892927 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44823 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1345573 () Bool)

(assert (=> b!1345573 (= e!765671 tp_is_empty!37421)))

(declare-fun b!1345574 () Bool)

(declare-fun res!892936 () Bool)

(assert (=> b!1345574 (=> (not res!892936) (not e!765672))))

(assert (=> b!1345574 (= res!892936 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1345575 () Bool)

(declare-fun res!892935 () Bool)

(assert (=> b!1345575 (=> (not res!892935) (not e!765672))))

(assert (=> b!1345575 (= res!892935 (and (= (size!44822 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44823 _keys!1571) (size!44822 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1345576 () Bool)

(declare-fun res!892937 () Bool)

(assert (=> b!1345576 (=> (not res!892937) (not e!765672))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1345576 (= res!892937 (validKeyInArray!0 (select (arr!44272 _keys!1571) from!1960)))))

(declare-fun mapIsEmpty!57838 () Bool)

(assert (=> mapIsEmpty!57838 mapRes!57838))

(declare-fun b!1345577 () Bool)

(assert (=> b!1345577 (= e!765669 (and e!765670 mapRes!57838))))

(declare-fun condMapEmpty!57838 () Bool)

(declare-fun mapDefault!57838 () ValueCell!17812)

