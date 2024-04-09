; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113422 () Bool)

(assert start!113422)

(declare-fun b_free!31437 () Bool)

(declare-fun b_next!31437 () Bool)

(assert (=> start!113422 (= b_free!31437 (not b_next!31437))))

(declare-fun tp!110117 () Bool)

(declare-fun b_and!50735 () Bool)

(assert (=> start!113422 (= tp!110117 b_and!50735)))

(declare-fun b!1345885 () Bool)

(declare-fun res!893161 () Bool)

(declare-fun e!765808 () Bool)

(assert (=> b!1345885 (=> (not res!893161) (not e!765808))))

(declare-datatypes ((array!91671 0))(
  ( (array!91672 (arr!44287 (Array (_ BitVec 32) (_ BitVec 64))) (size!44838 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91671)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91671 (_ BitVec 32)) Bool)

(assert (=> b!1345885 (= res!893161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapNonEmpty!57862 () Bool)

(declare-fun mapRes!57862 () Bool)

(declare-fun tp!110116 () Bool)

(declare-fun e!765809 () Bool)

(assert (=> mapNonEmpty!57862 (= mapRes!57862 (and tp!110116 e!765809))))

(declare-datatypes ((V!55019 0))(
  ( (V!55020 (val!18793 Int)) )
))
(declare-datatypes ((ValueCell!17820 0))(
  ( (ValueCellFull!17820 (v!21439 V!55019)) (EmptyCell!17820) )
))
(declare-fun mapRest!57862 () (Array (_ BitVec 32) ValueCell!17820))

(declare-fun mapValue!57862 () ValueCell!17820)

(declare-fun mapKey!57862 () (_ BitVec 32))

(declare-datatypes ((array!91673 0))(
  ( (array!91674 (arr!44288 (Array (_ BitVec 32) ValueCell!17820)) (size!44839 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91673)

(assert (=> mapNonEmpty!57862 (= (arr!44288 _values!1303) (store mapRest!57862 mapKey!57862 mapValue!57862))))

(declare-fun res!893162 () Bool)

(assert (=> start!113422 (=> (not res!893162) (not e!765808))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113422 (= res!893162 (validMask!0 mask!1977))))

(assert (=> start!113422 e!765808))

(declare-fun tp_is_empty!37437 () Bool)

(assert (=> start!113422 tp_is_empty!37437))

(assert (=> start!113422 true))

(declare-fun array_inv!33289 (array!91671) Bool)

(assert (=> start!113422 (array_inv!33289 _keys!1571)))

(declare-fun e!765811 () Bool)

(declare-fun array_inv!33290 (array!91673) Bool)

(assert (=> start!113422 (and (array_inv!33290 _values!1303) e!765811)))

(assert (=> start!113422 tp!110117))

(declare-fun b!1345886 () Bool)

(assert (=> b!1345886 (= e!765808 false)))

(declare-fun minValue!1245 () V!55019)

(declare-fun lt!595390 () Bool)

(declare-fun zeroValue!1245 () V!55019)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24368 0))(
  ( (tuple2!24369 (_1!12194 (_ BitVec 64)) (_2!12194 V!55019)) )
))
(declare-datatypes ((List!31538 0))(
  ( (Nil!31535) (Cons!31534 (h!32743 tuple2!24368) (t!46135 List!31538)) )
))
(declare-datatypes ((ListLongMap!22037 0))(
  ( (ListLongMap!22038 (toList!11034 List!31538)) )
))
(declare-fun contains!9146 (ListLongMap!22037 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5925 (array!91671 array!91673 (_ BitVec 32) (_ BitVec 32) V!55019 V!55019 (_ BitVec 32) Int) ListLongMap!22037)

(assert (=> b!1345886 (= lt!595390 (contains!9146 (getCurrentListMap!5925 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1345887 () Bool)

(declare-fun res!893163 () Bool)

(assert (=> b!1345887 (=> (not res!893163) (not e!765808))))

(declare-datatypes ((List!31539 0))(
  ( (Nil!31536) (Cons!31535 (h!32744 (_ BitVec 64)) (t!46136 List!31539)) )
))
(declare-fun arrayNoDuplicates!0 (array!91671 (_ BitVec 32) List!31539) Bool)

(assert (=> b!1345887 (= res!893163 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31536))))

(declare-fun b!1345888 () Bool)

(assert (=> b!1345888 (= e!765809 tp_is_empty!37437)))

(declare-fun b!1345889 () Bool)

(declare-fun res!893164 () Bool)

(assert (=> b!1345889 (=> (not res!893164) (not e!765808))))

(assert (=> b!1345889 (= res!893164 (and (= (size!44839 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44838 _keys!1571) (size!44839 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57862 () Bool)

(assert (=> mapIsEmpty!57862 mapRes!57862))

(declare-fun b!1345890 () Bool)

(declare-fun res!893165 () Bool)

(assert (=> b!1345890 (=> (not res!893165) (not e!765808))))

(assert (=> b!1345890 (= res!893165 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44838 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1345891 () Bool)

(declare-fun e!765812 () Bool)

(assert (=> b!1345891 (= e!765812 tp_is_empty!37437)))

(declare-fun b!1345892 () Bool)

(assert (=> b!1345892 (= e!765811 (and e!765812 mapRes!57862))))

(declare-fun condMapEmpty!57862 () Bool)

(declare-fun mapDefault!57862 () ValueCell!17820)

(assert (=> b!1345892 (= condMapEmpty!57862 (= (arr!44288 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17820)) mapDefault!57862)))))

(assert (= (and start!113422 res!893162) b!1345889))

(assert (= (and b!1345889 res!893164) b!1345885))

(assert (= (and b!1345885 res!893161) b!1345887))

(assert (= (and b!1345887 res!893163) b!1345890))

(assert (= (and b!1345890 res!893165) b!1345886))

(assert (= (and b!1345892 condMapEmpty!57862) mapIsEmpty!57862))

(assert (= (and b!1345892 (not condMapEmpty!57862)) mapNonEmpty!57862))

(get-info :version)

(assert (= (and mapNonEmpty!57862 ((_ is ValueCellFull!17820) mapValue!57862)) b!1345888))

(assert (= (and b!1345892 ((_ is ValueCellFull!17820) mapDefault!57862)) b!1345891))

(assert (= start!113422 b!1345892))

(declare-fun m!1233227 () Bool)

(assert (=> mapNonEmpty!57862 m!1233227))

(declare-fun m!1233229 () Bool)

(assert (=> b!1345887 m!1233229))

(declare-fun m!1233231 () Bool)

(assert (=> b!1345885 m!1233231))

(declare-fun m!1233233 () Bool)

(assert (=> start!113422 m!1233233))

(declare-fun m!1233235 () Bool)

(assert (=> start!113422 m!1233235))

(declare-fun m!1233237 () Bool)

(assert (=> start!113422 m!1233237))

(declare-fun m!1233239 () Bool)

(assert (=> b!1345886 m!1233239))

(assert (=> b!1345886 m!1233239))

(declare-fun m!1233241 () Bool)

(assert (=> b!1345886 m!1233241))

(check-sat (not b!1345887) (not start!113422) (not b!1345885) tp_is_empty!37437 (not b_next!31437) (not b!1345886) (not mapNonEmpty!57862) b_and!50735)
(check-sat b_and!50735 (not b_next!31437))
