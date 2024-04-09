; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89170 () Bool)

(assert start!89170)

(declare-fun b!1021854 () Bool)

(declare-fun b_free!20175 () Bool)

(declare-fun b_next!20175 () Bool)

(assert (=> b!1021854 (= b_free!20175 (not b_next!20175))))

(declare-fun tp!71560 () Bool)

(declare-fun b_and!32391 () Bool)

(assert (=> b!1021854 (= tp!71560 b_and!32391)))

(declare-fun b!1021847 () Bool)

(declare-fun res!684692 () Bool)

(declare-fun e!575621 () Bool)

(assert (=> b!1021847 (=> (not res!684692) (not e!575621))))

(declare-datatypes ((V!36733 0))(
  ( (V!36734 (val!11998 Int)) )
))
(declare-datatypes ((ValueCell!11244 0))(
  ( (ValueCellFull!11244 (v!14568 V!36733)) (EmptyCell!11244) )
))
(declare-datatypes ((array!63818 0))(
  ( (array!63819 (arr!30717 (Array (_ BitVec 32) (_ BitVec 64))) (size!31229 (_ BitVec 32))) )
))
(declare-datatypes ((array!63820 0))(
  ( (array!63821 (arr!30718 (Array (_ BitVec 32) ValueCell!11244)) (size!31230 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5082 0))(
  ( (LongMapFixedSize!5083 (defaultEntry!5893 Int) (mask!29469 (_ BitVec 32)) (extraKeys!5625 (_ BitVec 32)) (zeroValue!5729 V!36733) (minValue!5729 V!36733) (_size!2596 (_ BitVec 32)) (_keys!11035 array!63818) (_values!5916 array!63820) (_vacant!2596 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5082)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63818 (_ BitVec 32)) Bool)

(assert (=> b!1021847 (= res!684692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11035 thiss!1427) (mask!29469 thiss!1427)))))

(declare-fun b!1021848 () Bool)

(declare-fun res!684695 () Bool)

(assert (=> b!1021848 (=> (not res!684695) (not e!575621))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1021848 (= res!684695 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1021849 () Bool)

(declare-fun e!575623 () Bool)

(declare-fun e!575622 () Bool)

(declare-fun mapRes!37260 () Bool)

(assert (=> b!1021849 (= e!575623 (and e!575622 mapRes!37260))))

(declare-fun condMapEmpty!37260 () Bool)

(declare-fun mapDefault!37260 () ValueCell!11244)

(assert (=> b!1021849 (= condMapEmpty!37260 (= (arr!30718 (_values!5916 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11244)) mapDefault!37260)))))

(declare-fun b!1021850 () Bool)

(declare-fun e!575620 () Bool)

(declare-fun tp_is_empty!23895 () Bool)

(assert (=> b!1021850 (= e!575620 tp_is_empty!23895)))

(declare-fun b!1021851 () Bool)

(assert (=> b!1021851 (= e!575621 false)))

(declare-fun lt!450133 () Bool)

(declare-datatypes ((List!21778 0))(
  ( (Nil!21775) (Cons!21774 (h!22972 (_ BitVec 64)) (t!30799 List!21778)) )
))
(declare-fun arrayNoDuplicates!0 (array!63818 (_ BitVec 32) List!21778) Bool)

(assert (=> b!1021851 (= lt!450133 (arrayNoDuplicates!0 (_keys!11035 thiss!1427) #b00000000000000000000000000000000 Nil!21775))))

(declare-fun res!684696 () Bool)

(assert (=> start!89170 (=> (not res!684696) (not e!575621))))

(declare-fun valid!1902 (LongMapFixedSize!5082) Bool)

(assert (=> start!89170 (= res!684696 (valid!1902 thiss!1427))))

(assert (=> start!89170 e!575621))

(declare-fun e!575618 () Bool)

(assert (=> start!89170 e!575618))

(assert (=> start!89170 true))

(declare-fun b!1021852 () Bool)

(assert (=> b!1021852 (= e!575622 tp_is_empty!23895)))

(declare-fun mapIsEmpty!37260 () Bool)

(assert (=> mapIsEmpty!37260 mapRes!37260))

(declare-fun mapNonEmpty!37260 () Bool)

(declare-fun tp!71561 () Bool)

(assert (=> mapNonEmpty!37260 (= mapRes!37260 (and tp!71561 e!575620))))

(declare-fun mapKey!37260 () (_ BitVec 32))

(declare-fun mapRest!37260 () (Array (_ BitVec 32) ValueCell!11244))

(declare-fun mapValue!37260 () ValueCell!11244)

(assert (=> mapNonEmpty!37260 (= (arr!30718 (_values!5916 thiss!1427)) (store mapRest!37260 mapKey!37260 mapValue!37260))))

(declare-fun b!1021853 () Bool)

(declare-fun res!684693 () Bool)

(assert (=> b!1021853 (=> (not res!684693) (not e!575621))))

(assert (=> b!1021853 (= res!684693 (and (= (size!31230 (_values!5916 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29469 thiss!1427))) (= (size!31229 (_keys!11035 thiss!1427)) (size!31230 (_values!5916 thiss!1427))) (bvsge (mask!29469 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5625 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5625 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5625 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5625 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!5625 thiss!1427) #b00000000000000000000000000000010) (bvand (bvand (extraKeys!5625 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000010)) (= (bvand (bvand (extraKeys!5625 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun array_inv!23681 (array!63818) Bool)

(declare-fun array_inv!23682 (array!63820) Bool)

(assert (=> b!1021854 (= e!575618 (and tp!71560 tp_is_empty!23895 (array_inv!23681 (_keys!11035 thiss!1427)) (array_inv!23682 (_values!5916 thiss!1427)) e!575623))))

(declare-fun b!1021855 () Bool)

(declare-fun res!684694 () Bool)

(assert (=> b!1021855 (=> (not res!684694) (not e!575621))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1021855 (= res!684694 (validMask!0 (mask!29469 thiss!1427)))))

(assert (= (and start!89170 res!684696) b!1021848))

(assert (= (and b!1021848 res!684695) b!1021855))

(assert (= (and b!1021855 res!684694) b!1021853))

(assert (= (and b!1021853 res!684693) b!1021847))

(assert (= (and b!1021847 res!684692) b!1021851))

(assert (= (and b!1021849 condMapEmpty!37260) mapIsEmpty!37260))

(assert (= (and b!1021849 (not condMapEmpty!37260)) mapNonEmpty!37260))

(get-info :version)

(assert (= (and mapNonEmpty!37260 ((_ is ValueCellFull!11244) mapValue!37260)) b!1021850))

(assert (= (and b!1021849 ((_ is ValueCellFull!11244) mapDefault!37260)) b!1021852))

(assert (= b!1021854 b!1021849))

(assert (= start!89170 b!1021854))

(declare-fun m!941293 () Bool)

(assert (=> b!1021847 m!941293))

(declare-fun m!941295 () Bool)

(assert (=> mapNonEmpty!37260 m!941295))

(declare-fun m!941297 () Bool)

(assert (=> start!89170 m!941297))

(declare-fun m!941299 () Bool)

(assert (=> b!1021854 m!941299))

(declare-fun m!941301 () Bool)

(assert (=> b!1021854 m!941301))

(declare-fun m!941303 () Bool)

(assert (=> b!1021855 m!941303))

(declare-fun m!941305 () Bool)

(assert (=> b!1021851 m!941305))

(check-sat (not b!1021847) (not b!1021854) b_and!32391 (not start!89170) (not mapNonEmpty!37260) (not b!1021851) tp_is_empty!23895 (not b!1021855) (not b_next!20175))
(check-sat b_and!32391 (not b_next!20175))
