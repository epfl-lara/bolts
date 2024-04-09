; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89242 () Bool)

(assert start!89242)

(declare-fun b!1022738 () Bool)

(declare-fun b_free!20247 () Bool)

(declare-fun b_next!20247 () Bool)

(assert (=> b!1022738 (= b_free!20247 (not b_next!20247))))

(declare-fun tp!71776 () Bool)

(declare-fun b_and!32487 () Bool)

(assert (=> b!1022738 (= tp!71776 b_and!32487)))

(declare-fun res!685125 () Bool)

(declare-fun e!576268 () Bool)

(assert (=> start!89242 (=> (not res!685125) (not e!576268))))

(declare-datatypes ((V!36829 0))(
  ( (V!36830 (val!12034 Int)) )
))
(declare-datatypes ((ValueCell!11280 0))(
  ( (ValueCellFull!11280 (v!14604 V!36829)) (EmptyCell!11280) )
))
(declare-datatypes ((array!63962 0))(
  ( (array!63963 (arr!30789 (Array (_ BitVec 32) (_ BitVec 64))) (size!31301 (_ BitVec 32))) )
))
(declare-datatypes ((array!63964 0))(
  ( (array!63965 (arr!30790 (Array (_ BitVec 32) ValueCell!11280)) (size!31302 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5154 0))(
  ( (LongMapFixedSize!5155 (defaultEntry!5929 Int) (mask!29529 (_ BitVec 32)) (extraKeys!5661 (_ BitVec 32)) (zeroValue!5765 V!36829) (minValue!5765 V!36829) (_size!2632 (_ BitVec 32)) (_keys!11071 array!63962) (_values!5952 array!63964) (_vacant!2632 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5154)

(declare-fun valid!1927 (LongMapFixedSize!5154) Bool)

(assert (=> start!89242 (= res!685125 (valid!1927 thiss!1427))))

(assert (=> start!89242 e!576268))

(declare-fun e!576269 () Bool)

(assert (=> start!89242 e!576269))

(assert (=> start!89242 true))

(declare-fun b!1022735 () Bool)

(declare-fun res!685127 () Bool)

(assert (=> b!1022735 (=> (not res!685127) (not e!576268))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63962 (_ BitVec 32)) Bool)

(assert (=> b!1022735 (= res!685127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11071 thiss!1427) (mask!29529 thiss!1427)))))

(declare-fun b!1022736 () Bool)

(declare-fun e!576270 () Bool)

(declare-fun tp_is_empty!23967 () Bool)

(assert (=> b!1022736 (= e!576270 tp_is_empty!23967)))

(declare-fun b!1022737 () Bool)

(declare-fun e!576271 () Bool)

(assert (=> b!1022737 (= e!576271 tp_is_empty!23967)))

(declare-fun mapNonEmpty!37368 () Bool)

(declare-fun mapRes!37368 () Bool)

(declare-fun tp!71777 () Bool)

(assert (=> mapNonEmpty!37368 (= mapRes!37368 (and tp!71777 e!576270))))

(declare-fun mapKey!37368 () (_ BitVec 32))

(declare-fun mapRest!37368 () (Array (_ BitVec 32) ValueCell!11280))

(declare-fun mapValue!37368 () ValueCell!11280)

(assert (=> mapNonEmpty!37368 (= (arr!30790 (_values!5952 thiss!1427)) (store mapRest!37368 mapKey!37368 mapValue!37368))))

(declare-fun e!576266 () Bool)

(declare-fun array_inv!23731 (array!63962) Bool)

(declare-fun array_inv!23732 (array!63964) Bool)

(assert (=> b!1022738 (= e!576269 (and tp!71776 tp_is_empty!23967 (array_inv!23731 (_keys!11071 thiss!1427)) (array_inv!23732 (_values!5952 thiss!1427)) e!576266))))

(declare-fun b!1022739 () Bool)

(declare-fun res!685126 () Bool)

(assert (=> b!1022739 (=> (not res!685126) (not e!576268))))

(assert (=> b!1022739 (= res!685126 (and (= (size!31302 (_values!5952 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29529 thiss!1427))) (= (size!31301 (_keys!11071 thiss!1427)) (size!31302 (_values!5952 thiss!1427))) (bvsge (mask!29529 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5661 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5661 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5661 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5661 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5661 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5661 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5661 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1022740 () Bool)

(assert (=> b!1022740 (= e!576268 false)))

(declare-fun lt!450313 () Bool)

(declare-datatypes ((List!21802 0))(
  ( (Nil!21799) (Cons!21798 (h!22996 (_ BitVec 64)) (t!30847 List!21802)) )
))
(declare-fun arrayNoDuplicates!0 (array!63962 (_ BitVec 32) List!21802) Bool)

(assert (=> b!1022740 (= lt!450313 (arrayNoDuplicates!0 (_keys!11071 thiss!1427) #b00000000000000000000000000000000 Nil!21799))))

(declare-fun mapIsEmpty!37368 () Bool)

(assert (=> mapIsEmpty!37368 mapRes!37368))

(declare-fun b!1022741 () Bool)

(declare-fun res!685128 () Bool)

(assert (=> b!1022741 (=> (not res!685128) (not e!576268))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022741 (= res!685128 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1022742 () Bool)

(declare-fun res!685124 () Bool)

(assert (=> b!1022742 (=> (not res!685124) (not e!576268))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022742 (= res!685124 (validMask!0 (mask!29529 thiss!1427)))))

(declare-fun b!1022743 () Bool)

(assert (=> b!1022743 (= e!576266 (and e!576271 mapRes!37368))))

(declare-fun condMapEmpty!37368 () Bool)

(declare-fun mapDefault!37368 () ValueCell!11280)

(assert (=> b!1022743 (= condMapEmpty!37368 (= (arr!30790 (_values!5952 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11280)) mapDefault!37368)))))

(assert (= (and start!89242 res!685125) b!1022741))

(assert (= (and b!1022741 res!685128) b!1022742))

(assert (= (and b!1022742 res!685124) b!1022739))

(assert (= (and b!1022739 res!685126) b!1022735))

(assert (= (and b!1022735 res!685127) b!1022740))

(assert (= (and b!1022743 condMapEmpty!37368) mapIsEmpty!37368))

(assert (= (and b!1022743 (not condMapEmpty!37368)) mapNonEmpty!37368))

(get-info :version)

(assert (= (and mapNonEmpty!37368 ((_ is ValueCellFull!11280) mapValue!37368)) b!1022736))

(assert (= (and b!1022743 ((_ is ValueCellFull!11280) mapDefault!37368)) b!1022737))

(assert (= b!1022738 b!1022743))

(assert (= start!89242 b!1022738))

(declare-fun m!941869 () Bool)

(assert (=> b!1022740 m!941869))

(declare-fun m!941871 () Bool)

(assert (=> mapNonEmpty!37368 m!941871))

(declare-fun m!941873 () Bool)

(assert (=> b!1022735 m!941873))

(declare-fun m!941875 () Bool)

(assert (=> b!1022742 m!941875))

(declare-fun m!941877 () Bool)

(assert (=> start!89242 m!941877))

(declare-fun m!941879 () Bool)

(assert (=> b!1022738 m!941879))

(declare-fun m!941881 () Bool)

(assert (=> b!1022738 m!941881))

(check-sat tp_is_empty!23967 (not start!89242) (not b!1022735) b_and!32487 (not b_next!20247) (not b!1022738) (not b!1022742) (not mapNonEmpty!37368) (not b!1022740))
(check-sat b_and!32487 (not b_next!20247))
