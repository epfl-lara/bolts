; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113138 () Bool)

(assert start!113138)

(declare-fun b_free!31153 () Bool)

(declare-fun b_next!31153 () Bool)

(assert (=> start!113138 (= b_free!31153 (not b_next!31153))))

(declare-fun tp!109265 () Bool)

(declare-fun b_and!50223 () Bool)

(assert (=> start!113138 (= tp!109265 b_and!50223)))

(declare-fun b!1340700 () Bool)

(declare-fun res!889488 () Bool)

(declare-fun e!763597 () Bool)

(assert (=> b!1340700 (=> (not res!889488) (not e!763597))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91115 0))(
  ( (array!91116 (arr!44009 (Array (_ BitVec 32) (_ BitVec 64))) (size!44560 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91115)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54641 0))(
  ( (V!54642 (val!18651 Int)) )
))
(declare-datatypes ((ValueCell!17678 0))(
  ( (ValueCellFull!17678 (v!21297 V!54641)) (EmptyCell!17678) )
))
(declare-datatypes ((array!91117 0))(
  ( (array!91118 (arr!44010 (Array (_ BitVec 32) ValueCell!17678)) (size!44561 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91117)

(assert (=> b!1340700 (= res!889488 (and (= (size!44561 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44560 _keys!1571) (size!44561 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1340701 () Bool)

(declare-fun res!889489 () Bool)

(assert (=> b!1340701 (=> (not res!889489) (not e!763597))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1340701 (= res!889489 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44560 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1340702 () Bool)

(declare-fun res!889485 () Bool)

(assert (=> b!1340702 (=> (not res!889485) (not e!763597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91115 (_ BitVec 32)) Bool)

(assert (=> b!1340702 (= res!889485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!889486 () Bool)

(assert (=> start!113138 (=> (not res!889486) (not e!763597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113138 (= res!889486 (validMask!0 mask!1977))))

(assert (=> start!113138 e!763597))

(declare-fun tp_is_empty!37153 () Bool)

(assert (=> start!113138 tp_is_empty!37153))

(assert (=> start!113138 true))

(declare-fun array_inv!33097 (array!91115) Bool)

(assert (=> start!113138 (array_inv!33097 _keys!1571)))

(declare-fun e!763601 () Bool)

(declare-fun array_inv!33098 (array!91117) Bool)

(assert (=> start!113138 (and (array_inv!33098 _values!1303) e!763601)))

(assert (=> start!113138 tp!109265))

(declare-fun b!1340703 () Bool)

(declare-fun res!889483 () Bool)

(assert (=> b!1340703 (=> (not res!889483) (not e!763597))))

(assert (=> b!1340703 (= res!889483 (not (= (select (arr!44009 _keys!1571) from!1960) k!1142)))))

(declare-fun mapIsEmpty!57436 () Bool)

(declare-fun mapRes!57436 () Bool)

(assert (=> mapIsEmpty!57436 mapRes!57436))

(declare-fun b!1340704 () Bool)

(assert (=> b!1340704 (= e!763597 (not true))))

(declare-datatypes ((tuple2!24154 0))(
  ( (tuple2!24155 (_1!12087 (_ BitVec 64)) (_2!12087 V!54641)) )
))
(declare-datatypes ((List!31339 0))(
  ( (Nil!31336) (Cons!31335 (h!32544 tuple2!24154) (t!45710 List!31339)) )
))
(declare-datatypes ((ListLongMap!21823 0))(
  ( (ListLongMap!21824 (toList!10927 List!31339)) )
))
(declare-fun lt!593977 () ListLongMap!21823)

(declare-fun contains!9039 (ListLongMap!21823 (_ BitVec 64)) Bool)

(assert (=> b!1340704 (contains!9039 lt!593977 k!1142)))

(declare-fun zeroValue!1245 () V!54641)

(declare-datatypes ((Unit!43931 0))(
  ( (Unit!43932) )
))
(declare-fun lt!593976 () Unit!43931)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!325 ((_ BitVec 64) (_ BitVec 64) V!54641 ListLongMap!21823) Unit!43931)

(assert (=> b!1340704 (= lt!593976 (lemmaInListMapAfterAddingDiffThenInBefore!325 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!593977))))

(declare-fun minValue!1245 () V!54641)

(declare-fun defaultEntry!1306 () Int)

(declare-fun +!4733 (ListLongMap!21823 tuple2!24154) ListLongMap!21823)

(declare-fun getCurrentListMapNoExtraKeys!6456 (array!91115 array!91117 (_ BitVec 32) (_ BitVec 32) V!54641 V!54641 (_ BitVec 32) Int) ListLongMap!21823)

(declare-fun get!22246 (ValueCell!17678 V!54641) V!54641)

(declare-fun dynLambda!3770 (Int (_ BitVec 64)) V!54641)

(assert (=> b!1340704 (= lt!593977 (+!4733 (getCurrentListMapNoExtraKeys!6456 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24155 (select (arr!44009 _keys!1571) from!1960) (get!22246 (select (arr!44010 _values!1303) from!1960) (dynLambda!3770 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1340705 () Bool)

(declare-fun e!763598 () Bool)

(assert (=> b!1340705 (= e!763598 tp_is_empty!37153)))

(declare-fun b!1340706 () Bool)

(declare-fun res!889490 () Bool)

(assert (=> b!1340706 (=> (not res!889490) (not e!763597))))

(declare-fun getCurrentListMap!5830 (array!91115 array!91117 (_ BitVec 32) (_ BitVec 32) V!54641 V!54641 (_ BitVec 32) Int) ListLongMap!21823)

(assert (=> b!1340706 (= res!889490 (contains!9039 (getCurrentListMap!5830 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1340707 () Bool)

(declare-fun res!889484 () Bool)

(assert (=> b!1340707 (=> (not res!889484) (not e!763597))))

(assert (=> b!1340707 (= res!889484 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1340708 () Bool)

(declare-fun e!763599 () Bool)

(assert (=> b!1340708 (= e!763599 tp_is_empty!37153)))

(declare-fun b!1340709 () Bool)

(assert (=> b!1340709 (= e!763601 (and e!763599 mapRes!57436))))

(declare-fun condMapEmpty!57436 () Bool)

(declare-fun mapDefault!57436 () ValueCell!17678)

