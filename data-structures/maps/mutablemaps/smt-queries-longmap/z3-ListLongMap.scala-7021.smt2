; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89176 () Bool)

(assert start!89176)

(declare-fun b!1021933 () Bool)

(declare-fun b_free!20181 () Bool)

(declare-fun b_next!20181 () Bool)

(assert (=> b!1021933 (= b_free!20181 (not b_next!20181))))

(declare-fun tp!71579 () Bool)

(declare-fun b_and!32397 () Bool)

(assert (=> b!1021933 (= tp!71579 b_and!32397)))

(declare-fun mapNonEmpty!37269 () Bool)

(declare-fun mapRes!37269 () Bool)

(declare-fun tp!71578 () Bool)

(declare-fun e!575677 () Bool)

(assert (=> mapNonEmpty!37269 (= mapRes!37269 (and tp!71578 e!575677))))

(declare-datatypes ((V!36741 0))(
  ( (V!36742 (val!12001 Int)) )
))
(declare-datatypes ((ValueCell!11247 0))(
  ( (ValueCellFull!11247 (v!14571 V!36741)) (EmptyCell!11247) )
))
(declare-fun mapRest!37269 () (Array (_ BitVec 32) ValueCell!11247))

(declare-fun mapKey!37269 () (_ BitVec 32))

(declare-datatypes ((array!63830 0))(
  ( (array!63831 (arr!30723 (Array (_ BitVec 32) (_ BitVec 64))) (size!31235 (_ BitVec 32))) )
))
(declare-datatypes ((array!63832 0))(
  ( (array!63833 (arr!30724 (Array (_ BitVec 32) ValueCell!11247)) (size!31236 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5088 0))(
  ( (LongMapFixedSize!5089 (defaultEntry!5896 Int) (mask!29474 (_ BitVec 32)) (extraKeys!5628 (_ BitVec 32)) (zeroValue!5732 V!36741) (minValue!5732 V!36741) (_size!2599 (_ BitVec 32)) (_keys!11038 array!63830) (_values!5919 array!63832) (_vacant!2599 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5088)

(declare-fun mapValue!37269 () ValueCell!11247)

(assert (=> mapNonEmpty!37269 (= (arr!30724 (_values!5919 thiss!1427)) (store mapRest!37269 mapKey!37269 mapValue!37269))))

(declare-fun b!1021928 () Bool)

(declare-fun res!684737 () Bool)

(declare-fun e!575676 () Bool)

(assert (=> b!1021928 (=> (not res!684737) (not e!575676))))

(assert (=> b!1021928 (= res!684737 (and (= (size!31236 (_values!5919 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29474 thiss!1427))) (= (size!31235 (_keys!11038 thiss!1427)) (size!31236 (_values!5919 thiss!1427))) (bvsge (mask!29474 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5628 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5628 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5628 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5628 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5628 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5628 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5628 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!37269 () Bool)

(assert (=> mapIsEmpty!37269 mapRes!37269))

(declare-fun b!1021929 () Bool)

(declare-fun e!575674 () Bool)

(declare-fun tp_is_empty!23901 () Bool)

(assert (=> b!1021929 (= e!575674 tp_is_empty!23901)))

(declare-fun b!1021930 () Bool)

(assert (=> b!1021930 (= e!575676 false)))

(declare-fun lt!450142 () Bool)

(declare-datatypes ((List!21779 0))(
  ( (Nil!21776) (Cons!21775 (h!22973 (_ BitVec 64)) (t!30800 List!21779)) )
))
(declare-fun arrayNoDuplicates!0 (array!63830 (_ BitVec 32) List!21779) Bool)

(assert (=> b!1021930 (= lt!450142 (arrayNoDuplicates!0 (_keys!11038 thiss!1427) #b00000000000000000000000000000000 Nil!21776))))

(declare-fun b!1021931 () Bool)

(assert (=> b!1021931 (= e!575677 tp_is_empty!23901)))

(declare-fun b!1021932 () Bool)

(declare-fun res!684740 () Bool)

(assert (=> b!1021932 (=> (not res!684740) (not e!575676))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63830 (_ BitVec 32)) Bool)

(assert (=> b!1021932 (= res!684740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11038 thiss!1427) (mask!29474 thiss!1427)))))

(declare-fun b!1021934 () Bool)

(declare-fun res!684741 () Bool)

(assert (=> b!1021934 (=> (not res!684741) (not e!575676))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1021934 (= res!684741 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1021935 () Bool)

(declare-fun res!684739 () Bool)

(assert (=> b!1021935 (=> (not res!684739) (not e!575676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1021935 (= res!684739 (validMask!0 (mask!29474 thiss!1427)))))

(declare-fun b!1021936 () Bool)

(declare-fun e!575675 () Bool)

(assert (=> b!1021936 (= e!575675 (and e!575674 mapRes!37269))))

(declare-fun condMapEmpty!37269 () Bool)

(declare-fun mapDefault!37269 () ValueCell!11247)

(assert (=> b!1021936 (= condMapEmpty!37269 (= (arr!30724 (_values!5919 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11247)) mapDefault!37269)))))

(declare-fun e!575673 () Bool)

(declare-fun array_inv!23685 (array!63830) Bool)

(declare-fun array_inv!23686 (array!63832) Bool)

(assert (=> b!1021933 (= e!575673 (and tp!71579 tp_is_empty!23901 (array_inv!23685 (_keys!11038 thiss!1427)) (array_inv!23686 (_values!5919 thiss!1427)) e!575675))))

(declare-fun res!684738 () Bool)

(assert (=> start!89176 (=> (not res!684738) (not e!575676))))

(declare-fun valid!1903 (LongMapFixedSize!5088) Bool)

(assert (=> start!89176 (= res!684738 (valid!1903 thiss!1427))))

(assert (=> start!89176 e!575676))

(assert (=> start!89176 e!575673))

(assert (=> start!89176 true))

(assert (= (and start!89176 res!684738) b!1021934))

(assert (= (and b!1021934 res!684741) b!1021935))

(assert (= (and b!1021935 res!684739) b!1021928))

(assert (= (and b!1021928 res!684737) b!1021932))

(assert (= (and b!1021932 res!684740) b!1021930))

(assert (= (and b!1021936 condMapEmpty!37269) mapIsEmpty!37269))

(assert (= (and b!1021936 (not condMapEmpty!37269)) mapNonEmpty!37269))

(get-info :version)

(assert (= (and mapNonEmpty!37269 ((_ is ValueCellFull!11247) mapValue!37269)) b!1021931))

(assert (= (and b!1021936 ((_ is ValueCellFull!11247) mapDefault!37269)) b!1021929))

(assert (= b!1021933 b!1021936))

(assert (= start!89176 b!1021933))

(declare-fun m!941335 () Bool)

(assert (=> b!1021932 m!941335))

(declare-fun m!941337 () Bool)

(assert (=> b!1021930 m!941337))

(declare-fun m!941339 () Bool)

(assert (=> b!1021933 m!941339))

(declare-fun m!941341 () Bool)

(assert (=> b!1021933 m!941341))

(declare-fun m!941343 () Bool)

(assert (=> mapNonEmpty!37269 m!941343))

(declare-fun m!941345 () Bool)

(assert (=> b!1021935 m!941345))

(declare-fun m!941347 () Bool)

(assert (=> start!89176 m!941347))

(check-sat (not start!89176) (not b!1021933) (not b!1021932) (not b_next!20181) (not b!1021930) (not mapNonEmpty!37269) b_and!32397 (not b!1021935) tp_is_empty!23901)
(check-sat b_and!32397 (not b_next!20181))
