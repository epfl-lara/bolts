; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89254 () Bool)

(assert start!89254)

(declare-fun b!1022902 () Bool)

(declare-fun b_free!20259 () Bool)

(declare-fun b_next!20259 () Bool)

(assert (=> b!1022902 (= b_free!20259 (not b_next!20259))))

(declare-fun tp!71813 () Bool)

(declare-fun b_and!32499 () Bool)

(assert (=> b!1022902 (= tp!71813 b_and!32499)))

(declare-fun b!1022897 () Bool)

(declare-fun res!685216 () Bool)

(declare-fun e!576375 () Bool)

(assert (=> b!1022897 (=> (not res!685216) (not e!576375))))

(declare-datatypes ((V!36845 0))(
  ( (V!36846 (val!12040 Int)) )
))
(declare-datatypes ((ValueCell!11286 0))(
  ( (ValueCellFull!11286 (v!14610 V!36845)) (EmptyCell!11286) )
))
(declare-datatypes ((array!63986 0))(
  ( (array!63987 (arr!30801 (Array (_ BitVec 32) (_ BitVec 64))) (size!31313 (_ BitVec 32))) )
))
(declare-datatypes ((array!63988 0))(
  ( (array!63989 (arr!30802 (Array (_ BitVec 32) ValueCell!11286)) (size!31314 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5166 0))(
  ( (LongMapFixedSize!5167 (defaultEntry!5935 Int) (mask!29539 (_ BitVec 32)) (extraKeys!5667 (_ BitVec 32)) (zeroValue!5771 V!36845) (minValue!5771 V!36845) (_size!2638 (_ BitVec 32)) (_keys!11077 array!63986) (_values!5958 array!63988) (_vacant!2638 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5166)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1022897 (= res!685216 (validMask!0 (mask!29539 thiss!1427)))))

(declare-fun b!1022898 () Bool)

(assert (=> b!1022898 (= e!576375 false)))

(declare-fun lt!450331 () Bool)

(declare-datatypes ((List!21806 0))(
  ( (Nil!21803) (Cons!21802 (h!23000 (_ BitVec 64)) (t!30851 List!21806)) )
))
(declare-fun arrayNoDuplicates!0 (array!63986 (_ BitVec 32) List!21806) Bool)

(assert (=> b!1022898 (= lt!450331 (arrayNoDuplicates!0 (_keys!11077 thiss!1427) #b00000000000000000000000000000000 Nil!21803))))

(declare-fun b!1022899 () Bool)

(declare-fun e!576376 () Bool)

(declare-fun tp_is_empty!23979 () Bool)

(assert (=> b!1022899 (= e!576376 tp_is_empty!23979)))

(declare-fun b!1022900 () Bool)

(declare-fun e!576378 () Bool)

(assert (=> b!1022900 (= e!576378 tp_is_empty!23979)))

(declare-fun b!1022901 () Bool)

(declare-fun res!685217 () Bool)

(assert (=> b!1022901 (=> (not res!685217) (not e!576375))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1022901 (= res!685217 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!685218 () Bool)

(assert (=> start!89254 (=> (not res!685218) (not e!576375))))

(declare-fun valid!1931 (LongMapFixedSize!5166) Bool)

(assert (=> start!89254 (= res!685218 (valid!1931 thiss!1427))))

(assert (=> start!89254 e!576375))

(declare-fun e!576377 () Bool)

(assert (=> start!89254 e!576377))

(assert (=> start!89254 true))

(declare-fun e!576374 () Bool)

(declare-fun array_inv!23741 (array!63986) Bool)

(declare-fun array_inv!23742 (array!63988) Bool)

(assert (=> b!1022902 (= e!576377 (and tp!71813 tp_is_empty!23979 (array_inv!23741 (_keys!11077 thiss!1427)) (array_inv!23742 (_values!5958 thiss!1427)) e!576374))))

(declare-fun mapIsEmpty!37386 () Bool)

(declare-fun mapRes!37386 () Bool)

(assert (=> mapIsEmpty!37386 mapRes!37386))

(declare-fun b!1022903 () Bool)

(declare-fun res!685214 () Bool)

(assert (=> b!1022903 (=> (not res!685214) (not e!576375))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63986 (_ BitVec 32)) Bool)

(assert (=> b!1022903 (= res!685214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11077 thiss!1427) (mask!29539 thiss!1427)))))

(declare-fun mapNonEmpty!37386 () Bool)

(declare-fun tp!71812 () Bool)

(assert (=> mapNonEmpty!37386 (= mapRes!37386 (and tp!71812 e!576378))))

(declare-fun mapRest!37386 () (Array (_ BitVec 32) ValueCell!11286))

(declare-fun mapKey!37386 () (_ BitVec 32))

(declare-fun mapValue!37386 () ValueCell!11286)

(assert (=> mapNonEmpty!37386 (= (arr!30802 (_values!5958 thiss!1427)) (store mapRest!37386 mapKey!37386 mapValue!37386))))

(declare-fun b!1022904 () Bool)

(declare-fun res!685215 () Bool)

(assert (=> b!1022904 (=> (not res!685215) (not e!576375))))

(assert (=> b!1022904 (= res!685215 (and (= (size!31314 (_values!5958 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29539 thiss!1427))) (= (size!31313 (_keys!11077 thiss!1427)) (size!31314 (_values!5958 thiss!1427))) (bvsge (mask!29539 thiss!1427) #b00000000000000000000000000000000) (bvsge (extraKeys!5667 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!5667 thiss!1427) #b00000000000000000000000000000011) (bvsge (bvand (extraKeys!5667 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvand (extraKeys!5667 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!5667 thiss!1427) #b00000000000000000000000000000001) (bvand (bvand (extraKeys!5667 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (= (bvand (bvand (extraKeys!5667 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1022905 () Bool)

(assert (=> b!1022905 (= e!576374 (and e!576376 mapRes!37386))))

(declare-fun condMapEmpty!37386 () Bool)

(declare-fun mapDefault!37386 () ValueCell!11286)

(assert (=> b!1022905 (= condMapEmpty!37386 (= (arr!30802 (_values!5958 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11286)) mapDefault!37386)))))

(assert (= (and start!89254 res!685218) b!1022901))

(assert (= (and b!1022901 res!685217) b!1022897))

(assert (= (and b!1022897 res!685216) b!1022904))

(assert (= (and b!1022904 res!685215) b!1022903))

(assert (= (and b!1022903 res!685214) b!1022898))

(assert (= (and b!1022905 condMapEmpty!37386) mapIsEmpty!37386))

(assert (= (and b!1022905 (not condMapEmpty!37386)) mapNonEmpty!37386))

(get-info :version)

(assert (= (and mapNonEmpty!37386 ((_ is ValueCellFull!11286) mapValue!37386)) b!1022900))

(assert (= (and b!1022905 ((_ is ValueCellFull!11286) mapDefault!37386)) b!1022899))

(assert (= b!1022902 b!1022905))

(assert (= start!89254 b!1022902))

(declare-fun m!941953 () Bool)

(assert (=> mapNonEmpty!37386 m!941953))

(declare-fun m!941955 () Bool)

(assert (=> start!89254 m!941955))

(declare-fun m!941957 () Bool)

(assert (=> b!1022898 m!941957))

(declare-fun m!941959 () Bool)

(assert (=> b!1022902 m!941959))

(declare-fun m!941961 () Bool)

(assert (=> b!1022902 m!941961))

(declare-fun m!941963 () Bool)

(assert (=> b!1022897 m!941963))

(declare-fun m!941965 () Bool)

(assert (=> b!1022903 m!941965))

(check-sat (not b!1022902) tp_is_empty!23979 (not b!1022897) (not start!89254) (not b_next!20259) (not b!1022903) (not b!1022898) b_and!32499 (not mapNonEmpty!37386))
(check-sat b_and!32499 (not b_next!20259))
