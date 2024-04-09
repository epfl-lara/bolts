; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15738 () Bool)

(assert start!15738)

(declare-fun b!156875 () Bool)

(declare-fun b_free!3393 () Bool)

(declare-fun b_next!3393 () Bool)

(assert (=> b!156875 (= b_free!3393 (not b_next!3393))))

(declare-fun tp!12703 () Bool)

(declare-fun b_and!9825 () Bool)

(assert (=> b!156875 (= tp!12703 b_and!9825)))

(declare-fun b!156868 () Bool)

(declare-fun e!102611 () Bool)

(declare-fun e!102609 () Bool)

(declare-fun mapRes!5435 () Bool)

(assert (=> b!156868 (= e!102611 (and e!102609 mapRes!5435))))

(declare-fun condMapEmpty!5435 () Bool)

(declare-datatypes ((V!3907 0))(
  ( (V!3908 (val!1642 Int)) )
))
(declare-datatypes ((ValueCell!1254 0))(
  ( (ValueCellFull!1254 (v!3503 V!3907)) (EmptyCell!1254) )
))
(declare-datatypes ((array!5442 0))(
  ( (array!5443 (arr!2578 (Array (_ BitVec 32) (_ BitVec 64))) (size!2856 (_ BitVec 32))) )
))
(declare-datatypes ((array!5444 0))(
  ( (array!5445 (arr!2579 (Array (_ BitVec 32) ValueCell!1254)) (size!2857 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1416 0))(
  ( (LongMapFixedSize!1417 (defaultEntry!3150 Int) (mask!7613 (_ BitVec 32)) (extraKeys!2891 (_ BitVec 32)) (zeroValue!2993 V!3907) (minValue!2993 V!3907) (_size!757 (_ BitVec 32)) (_keys!4925 array!5442) (_values!3133 array!5444) (_vacant!757 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1416)

(declare-fun mapDefault!5435 () ValueCell!1254)

(assert (=> b!156868 (= condMapEmpty!5435 (= (arr!2579 (_values!3133 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1254)) mapDefault!5435)))))

(declare-fun mapIsEmpty!5435 () Bool)

(assert (=> mapIsEmpty!5435 mapRes!5435))

(declare-fun b!156869 () Bool)

(declare-fun res!74173 () Bool)

(declare-fun e!102613 () Bool)

(assert (=> b!156869 (=> (not res!74173) (not e!102613))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5442 (_ BitVec 32)) Bool)

(assert (=> b!156869 (= res!74173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4925 thiss!1248) (mask!7613 thiss!1248)))))

(declare-fun b!156870 () Bool)

(declare-fun e!102612 () Bool)

(declare-fun tp_is_empty!3195 () Bool)

(assert (=> b!156870 (= e!102612 tp_is_empty!3195)))

(declare-fun b!156871 () Bool)

(assert (=> b!156871 (= e!102613 false)))

(declare-fun lt!81626 () Bool)

(declare-datatypes ((List!1881 0))(
  ( (Nil!1878) (Cons!1877 (h!2486 (_ BitVec 64)) (t!6691 List!1881)) )
))
(declare-fun arrayNoDuplicates!0 (array!5442 (_ BitVec 32) List!1881) Bool)

(assert (=> b!156871 (= lt!81626 (arrayNoDuplicates!0 (_keys!4925 thiss!1248) #b00000000000000000000000000000000 Nil!1878))))

(declare-fun b!156872 () Bool)

(declare-fun res!74172 () Bool)

(assert (=> b!156872 (=> (not res!74172) (not e!102613))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156872 (= res!74172 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!156874 () Bool)

(declare-fun res!74175 () Bool)

(assert (=> b!156874 (=> (not res!74175) (not e!102613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156874 (= res!74175 (validMask!0 (mask!7613 thiss!1248)))))

(declare-fun e!102610 () Bool)

(declare-fun array_inv!1627 (array!5442) Bool)

(declare-fun array_inv!1628 (array!5444) Bool)

(assert (=> b!156875 (= e!102610 (and tp!12703 tp_is_empty!3195 (array_inv!1627 (_keys!4925 thiss!1248)) (array_inv!1628 (_values!3133 thiss!1248)) e!102611))))

(declare-fun b!156876 () Bool)

(assert (=> b!156876 (= e!102609 tp_is_empty!3195)))

(declare-fun mapNonEmpty!5435 () Bool)

(declare-fun tp!12704 () Bool)

(assert (=> mapNonEmpty!5435 (= mapRes!5435 (and tp!12704 e!102612))))

(declare-fun mapValue!5435 () ValueCell!1254)

(declare-fun mapKey!5435 () (_ BitVec 32))

(declare-fun mapRest!5435 () (Array (_ BitVec 32) ValueCell!1254))

(assert (=> mapNonEmpty!5435 (= (arr!2579 (_values!3133 thiss!1248)) (store mapRest!5435 mapKey!5435 mapValue!5435))))

(declare-fun b!156873 () Bool)

(declare-fun res!74176 () Bool)

(assert (=> b!156873 (=> (not res!74176) (not e!102613))))

(assert (=> b!156873 (= res!74176 (and (= (size!2857 (_values!3133 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7613 thiss!1248))) (= (size!2856 (_keys!4925 thiss!1248)) (size!2857 (_values!3133 thiss!1248))) (bvsge (mask!7613 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2891 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2891 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2891 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2891 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2891 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2891 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2891 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!74174 () Bool)

(assert (=> start!15738 (=> (not res!74174) (not e!102613))))

(declare-fun valid!676 (LongMapFixedSize!1416) Bool)

(assert (=> start!15738 (= res!74174 (valid!676 thiss!1248))))

(assert (=> start!15738 e!102613))

(assert (=> start!15738 e!102610))

(assert (=> start!15738 true))

(assert (= (and start!15738 res!74174) b!156872))

(assert (= (and b!156872 res!74172) b!156874))

(assert (= (and b!156874 res!74175) b!156873))

(assert (= (and b!156873 res!74176) b!156869))

(assert (= (and b!156869 res!74173) b!156871))

(assert (= (and b!156868 condMapEmpty!5435) mapIsEmpty!5435))

(assert (= (and b!156868 (not condMapEmpty!5435)) mapNonEmpty!5435))

(get-info :version)

(assert (= (and mapNonEmpty!5435 ((_ is ValueCellFull!1254) mapValue!5435)) b!156870))

(assert (= (and b!156868 ((_ is ValueCellFull!1254) mapDefault!5435)) b!156876))

(assert (= b!156875 b!156868))

(assert (= start!15738 b!156875))

(declare-fun m!190225 () Bool)

(assert (=> b!156875 m!190225))

(declare-fun m!190227 () Bool)

(assert (=> b!156875 m!190227))

(declare-fun m!190229 () Bool)

(assert (=> b!156874 m!190229))

(declare-fun m!190231 () Bool)

(assert (=> start!15738 m!190231))

(declare-fun m!190233 () Bool)

(assert (=> b!156869 m!190233))

(declare-fun m!190235 () Bool)

(assert (=> b!156871 m!190235))

(declare-fun m!190237 () Bool)

(assert (=> mapNonEmpty!5435 m!190237))

(check-sat (not b!156874) b_and!9825 (not b!156875) (not start!15738) (not mapNonEmpty!5435) (not b!156869) (not b_next!3393) (not b!156871) tp_is_empty!3195)
(check-sat b_and!9825 (not b_next!3393))
