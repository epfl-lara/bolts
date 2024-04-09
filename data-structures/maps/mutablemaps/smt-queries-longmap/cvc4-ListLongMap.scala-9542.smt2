; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113154 () Bool)

(assert start!113154)

(declare-fun b_free!31169 () Bool)

(declare-fun b_next!31169 () Bool)

(assert (=> start!113154 (= b_free!31169 (not b_next!31169))))

(declare-fun tp!109313 () Bool)

(declare-fun b_and!50255 () Bool)

(assert (=> start!113154 (= tp!109313 b_and!50255)))

(declare-fun b!1341004 () Bool)

(declare-fun res!889704 () Bool)

(declare-fun e!763720 () Bool)

(assert (=> b!1341004 (=> (not res!889704) (not e!763720))))

(declare-datatypes ((array!91147 0))(
  ( (array!91148 (arr!44025 (Array (_ BitVec 32) (_ BitVec 64))) (size!44576 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91147)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1341004 (= res!889704 (validKeyInArray!0 (select (arr!44025 _keys!1571) from!1960)))))

(declare-fun b!1341005 () Bool)

(declare-fun e!763719 () Bool)

(declare-fun tp_is_empty!37169 () Bool)

(assert (=> b!1341005 (= e!763719 tp_is_empty!37169)))

(declare-fun b!1341006 () Bool)

(declare-fun res!889702 () Bool)

(assert (=> b!1341006 (=> (not res!889702) (not e!763720))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1341006 (= res!889702 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44576 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1341007 () Bool)

(declare-fun res!889700 () Bool)

(assert (=> b!1341007 (=> (not res!889700) (not e!763720))))

(assert (=> b!1341007 (= res!889700 (not (= (select (arr!44025 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1341008 () Bool)

(declare-fun e!763718 () Bool)

(assert (=> b!1341008 (= e!763718 tp_is_empty!37169)))

(declare-fun b!1341009 () Bool)

(declare-fun res!889703 () Bool)

(assert (=> b!1341009 (=> (not res!889703) (not e!763720))))

(assert (=> b!1341009 (= res!889703 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1341010 () Bool)

(assert (=> b!1341010 (= e!763720 (not true))))

(declare-datatypes ((V!54661 0))(
  ( (V!54662 (val!18659 Int)) )
))
(declare-datatypes ((tuple2!24168 0))(
  ( (tuple2!24169 (_1!12094 (_ BitVec 64)) (_2!12094 V!54661)) )
))
(declare-datatypes ((List!31351 0))(
  ( (Nil!31348) (Cons!31347 (h!32556 tuple2!24168) (t!45738 List!31351)) )
))
(declare-datatypes ((ListLongMap!21837 0))(
  ( (ListLongMap!21838 (toList!10934 List!31351)) )
))
(declare-fun lt!594024 () ListLongMap!21837)

(declare-fun contains!9046 (ListLongMap!21837 (_ BitVec 64)) Bool)

(assert (=> b!1341010 (contains!9046 lt!594024 k!1142)))

(declare-datatypes ((Unit!43945 0))(
  ( (Unit!43946) )
))
(declare-fun lt!594025 () Unit!43945)

(declare-fun zeroValue!1245 () V!54661)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!332 ((_ BitVec 64) (_ BitVec 64) V!54661 ListLongMap!21837) Unit!43945)

(assert (=> b!1341010 (= lt!594025 (lemmaInListMapAfterAddingDiffThenInBefore!332 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594024))))

(declare-fun minValue!1245 () V!54661)

(declare-fun defaultEntry!1306 () Int)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17686 0))(
  ( (ValueCellFull!17686 (v!21305 V!54661)) (EmptyCell!17686) )
))
(declare-datatypes ((array!91149 0))(
  ( (array!91150 (arr!44026 (Array (_ BitVec 32) ValueCell!17686)) (size!44577 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91149)

(declare-fun +!4740 (ListLongMap!21837 tuple2!24168) ListLongMap!21837)

(declare-fun getCurrentListMapNoExtraKeys!6463 (array!91147 array!91149 (_ BitVec 32) (_ BitVec 32) V!54661 V!54661 (_ BitVec 32) Int) ListLongMap!21837)

(declare-fun get!22257 (ValueCell!17686 V!54661) V!54661)

(declare-fun dynLambda!3777 (Int (_ BitVec 64)) V!54661)

(assert (=> b!1341010 (= lt!594024 (+!4740 (getCurrentListMapNoExtraKeys!6463 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24169 (select (arr!44025 _keys!1571) from!1960) (get!22257 (select (arr!44026 _values!1303) from!1960) (dynLambda!3777 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun res!889705 () Bool)

(assert (=> start!113154 (=> (not res!889705) (not e!763720))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113154 (= res!889705 (validMask!0 mask!1977))))

(assert (=> start!113154 e!763720))

(assert (=> start!113154 tp_is_empty!37169))

(assert (=> start!113154 true))

(declare-fun array_inv!33109 (array!91147) Bool)

(assert (=> start!113154 (array_inv!33109 _keys!1571)))

(declare-fun e!763721 () Bool)

(declare-fun array_inv!33110 (array!91149) Bool)

(assert (=> start!113154 (and (array_inv!33110 _values!1303) e!763721)))

(assert (=> start!113154 tp!109313))

(declare-fun b!1341011 () Bool)

(declare-fun res!889698 () Bool)

(assert (=> b!1341011 (=> (not res!889698) (not e!763720))))

(assert (=> b!1341011 (= res!889698 (and (= (size!44577 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44576 _keys!1571) (size!44577 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1341012 () Bool)

(declare-fun res!889699 () Bool)

(assert (=> b!1341012 (=> (not res!889699) (not e!763720))))

(declare-fun getCurrentListMap!5836 (array!91147 array!91149 (_ BitVec 32) (_ BitVec 32) V!54661 V!54661 (_ BitVec 32) Int) ListLongMap!21837)

(assert (=> b!1341012 (= res!889699 (contains!9046 (getCurrentListMap!5836 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1341013 () Bool)

(declare-fun mapRes!57460 () Bool)

(assert (=> b!1341013 (= e!763721 (and e!763719 mapRes!57460))))

(declare-fun condMapEmpty!57460 () Bool)

(declare-fun mapDefault!57460 () ValueCell!17686)

