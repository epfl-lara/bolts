; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113148 () Bool)

(assert start!113148)

(declare-fun b_free!31163 () Bool)

(declare-fun b_next!31163 () Bool)

(assert (=> start!113148 (= b_free!31163 (not b_next!31163))))

(declare-fun tp!109295 () Bool)

(declare-fun b_and!50243 () Bool)

(assert (=> start!113148 (= tp!109295 b_and!50243)))

(declare-fun b!1340890 () Bool)

(declare-fun res!889618 () Bool)

(declare-fun e!763672 () Bool)

(assert (=> b!1340890 (=> (not res!889618) (not e!763672))))

(declare-datatypes ((array!91135 0))(
  ( (array!91136 (arr!44019 (Array (_ BitVec 32) (_ BitVec 64))) (size!44570 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91135)

(declare-datatypes ((List!31347 0))(
  ( (Nil!31344) (Cons!31343 (h!32552 (_ BitVec 64)) (t!45728 List!31347)) )
))
(declare-fun arrayNoDuplicates!0 (array!91135 (_ BitVec 32) List!31347) Bool)

(assert (=> b!1340890 (= res!889618 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31344))))

(declare-fun b!1340891 () Bool)

(declare-fun res!889623 () Bool)

(assert (=> b!1340891 (=> (not res!889623) (not e!763672))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1340891 (= res!889623 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!57451 () Bool)

(declare-fun mapRes!57451 () Bool)

(declare-fun tp!109294 () Bool)

(declare-fun e!763673 () Bool)

(assert (=> mapNonEmpty!57451 (= mapRes!57451 (and tp!109294 e!763673))))

(declare-datatypes ((V!54653 0))(
  ( (V!54654 (val!18656 Int)) )
))
(declare-datatypes ((ValueCell!17683 0))(
  ( (ValueCellFull!17683 (v!21302 V!54653)) (EmptyCell!17683) )
))
(declare-fun mapValue!57451 () ValueCell!17683)

(declare-fun mapKey!57451 () (_ BitVec 32))

(declare-fun mapRest!57451 () (Array (_ BitVec 32) ValueCell!17683))

(declare-datatypes ((array!91137 0))(
  ( (array!91138 (arr!44020 (Array (_ BitVec 32) ValueCell!17683)) (size!44571 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91137)

(assert (=> mapNonEmpty!57451 (= (arr!44020 _values!1303) (store mapRest!57451 mapKey!57451 mapValue!57451))))

(declare-fun b!1340892 () Bool)

(assert (=> b!1340892 (= e!763672 (not true))))

(declare-datatypes ((tuple2!24164 0))(
  ( (tuple2!24165 (_1!12092 (_ BitVec 64)) (_2!12092 V!54653)) )
))
(declare-datatypes ((List!31348 0))(
  ( (Nil!31345) (Cons!31344 (h!32553 tuple2!24164) (t!45729 List!31348)) )
))
(declare-datatypes ((ListLongMap!21833 0))(
  ( (ListLongMap!21834 (toList!10932 List!31348)) )
))
(declare-fun lt!594006 () ListLongMap!21833)

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun contains!9044 (ListLongMap!21833 (_ BitVec 64)) Bool)

(assert (=> b!1340892 (contains!9044 lt!594006 k!1142)))

(declare-fun zeroValue!1245 () V!54653)

(declare-datatypes ((Unit!43941 0))(
  ( (Unit!43942) )
))
(declare-fun lt!594007 () Unit!43941)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!330 ((_ BitVec 64) (_ BitVec 64) V!54653 ListLongMap!21833) Unit!43941)

(assert (=> b!1340892 (= lt!594007 (lemmaInListMapAfterAddingDiffThenInBefore!330 k!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594006))))

(declare-fun minValue!1245 () V!54653)

(declare-fun defaultEntry!1306 () Int)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun +!4738 (ListLongMap!21833 tuple2!24164) ListLongMap!21833)

(declare-fun getCurrentListMapNoExtraKeys!6461 (array!91135 array!91137 (_ BitVec 32) (_ BitVec 32) V!54653 V!54653 (_ BitVec 32) Int) ListLongMap!21833)

(declare-fun get!22253 (ValueCell!17683 V!54653) V!54653)

(declare-fun dynLambda!3775 (Int (_ BitVec 64)) V!54653)

(assert (=> b!1340892 (= lt!594006 (+!4738 (getCurrentListMapNoExtraKeys!6461 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24165 (select (arr!44019 _keys!1571) from!1960) (get!22253 (select (arr!44020 _values!1303) from!1960) (dynLambda!3775 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1340893 () Bool)

(declare-fun e!763674 () Bool)

(declare-fun tp_is_empty!37163 () Bool)

(assert (=> b!1340893 (= e!763674 tp_is_empty!37163)))

(declare-fun mapIsEmpty!57451 () Bool)

(assert (=> mapIsEmpty!57451 mapRes!57451))

(declare-fun b!1340894 () Bool)

(declare-fun res!889625 () Bool)

(assert (=> b!1340894 (=> (not res!889625) (not e!763672))))

(assert (=> b!1340894 (= res!889625 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44570 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1340895 () Bool)

(declare-fun res!889619 () Bool)

(assert (=> b!1340895 (=> (not res!889619) (not e!763672))))

(assert (=> b!1340895 (= res!889619 (not (= (select (arr!44019 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1340896 () Bool)

(declare-fun res!889624 () Bool)

(assert (=> b!1340896 (=> (not res!889624) (not e!763672))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91135 (_ BitVec 32)) Bool)

(assert (=> b!1340896 (= res!889624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!889621 () Bool)

(assert (=> start!113148 (=> (not res!889621) (not e!763672))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113148 (= res!889621 (validMask!0 mask!1977))))

(assert (=> start!113148 e!763672))

(assert (=> start!113148 tp_is_empty!37163))

(assert (=> start!113148 true))

(declare-fun array_inv!33105 (array!91135) Bool)

(assert (=> start!113148 (array_inv!33105 _keys!1571)))

(declare-fun e!763676 () Bool)

(declare-fun array_inv!33106 (array!91137) Bool)

(assert (=> start!113148 (and (array_inv!33106 _values!1303) e!763676)))

(assert (=> start!113148 tp!109295))

(declare-fun b!1340897 () Bool)

(assert (=> b!1340897 (= e!763673 tp_is_empty!37163)))

(declare-fun b!1340898 () Bool)

(declare-fun res!889622 () Bool)

(assert (=> b!1340898 (=> (not res!889622) (not e!763672))))

(declare-fun getCurrentListMap!5834 (array!91135 array!91137 (_ BitVec 32) (_ BitVec 32) V!54653 V!54653 (_ BitVec 32) Int) ListLongMap!21833)

(assert (=> b!1340898 (= res!889622 (contains!9044 (getCurrentListMap!5834 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k!1142))))

(declare-fun b!1340899 () Bool)

(assert (=> b!1340899 (= e!763676 (and e!763674 mapRes!57451))))

(declare-fun condMapEmpty!57451 () Bool)

(declare-fun mapDefault!57451 () ValueCell!17683)

