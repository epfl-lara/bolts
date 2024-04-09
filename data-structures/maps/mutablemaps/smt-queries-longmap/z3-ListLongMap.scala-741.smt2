; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17252 () Bool)

(assert start!17252)

(declare-fun b!172891 () Bool)

(declare-fun b_free!4287 () Bool)

(declare-fun b_next!4287 () Bool)

(assert (=> b!172891 (= b_free!4287 (not b_next!4287))))

(declare-fun tp!15518 () Bool)

(declare-fun b_and!10745 () Bool)

(assert (=> b!172891 (= tp!15518 b_and!10745)))

(declare-fun res!82101 () Bool)

(declare-fun e!114182 () Bool)

(assert (=> start!17252 (=> (not res!82101) (not e!114182))))

(declare-datatypes ((V!5059 0))(
  ( (V!5060 (val!2074 Int)) )
))
(declare-datatypes ((ValueCell!1686 0))(
  ( (ValueCellFull!1686 (v!3938 V!5059)) (EmptyCell!1686) )
))
(declare-datatypes ((array!7244 0))(
  ( (array!7245 (arr!3442 (Array (_ BitVec 32) (_ BitVec 64))) (size!3741 (_ BitVec 32))) )
))
(declare-datatypes ((array!7246 0))(
  ( (array!7247 (arr!3443 (Array (_ BitVec 32) ValueCell!1686)) (size!3742 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2280 0))(
  ( (LongMapFixedSize!2281 (defaultEntry!3586 Int) (mask!8446 (_ BitVec 32)) (extraKeys!3325 (_ BitVec 32)) (zeroValue!3427 V!5059) (minValue!3429 V!5059) (_size!1189 (_ BitVec 32)) (_keys!5425 array!7244) (_values!3569 array!7246) (_vacant!1189 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2280)

(declare-fun valid!958 (LongMapFixedSize!2280) Bool)

(assert (=> start!17252 (= res!82101 (valid!958 thiss!1248))))

(assert (=> start!17252 e!114182))

(declare-fun e!114186 () Bool)

(assert (=> start!17252 e!114186))

(assert (=> start!17252 true))

(declare-fun b!172888 () Bool)

(declare-fun e!114184 () Bool)

(declare-fun e!114187 () Bool)

(declare-fun mapRes!6909 () Bool)

(assert (=> b!172888 (= e!114184 (and e!114187 mapRes!6909))))

(declare-fun condMapEmpty!6909 () Bool)

(declare-fun mapDefault!6909 () ValueCell!1686)

(assert (=> b!172888 (= condMapEmpty!6909 (= (arr!3443 (_values!3569 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1686)) mapDefault!6909)))))

(declare-fun mapNonEmpty!6909 () Bool)

(declare-fun tp!15519 () Bool)

(declare-fun e!114185 () Bool)

(assert (=> mapNonEmpty!6909 (= mapRes!6909 (and tp!15519 e!114185))))

(declare-fun mapRest!6909 () (Array (_ BitVec 32) ValueCell!1686))

(declare-fun mapKey!6909 () (_ BitVec 32))

(declare-fun mapValue!6909 () ValueCell!1686)

(assert (=> mapNonEmpty!6909 (= (arr!3443 (_values!3569 thiss!1248)) (store mapRest!6909 mapKey!6909 mapValue!6909))))

(declare-fun b!172889 () Bool)

(assert (=> b!172889 (= e!114182 (and (= (size!3742 (_values!3569 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8446 thiss!1248))) (= (size!3741 (_keys!5425 thiss!1248)) (size!3742 (_values!3569 thiss!1248))) (bvsge (mask!8446 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3325 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3325 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3325 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!3325 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (not (= (bvand (extraKeys!3325 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!3325 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)))))))

(declare-fun b!172890 () Bool)

(declare-fun tp_is_empty!4059 () Bool)

(assert (=> b!172890 (= e!114187 tp_is_empty!4059)))

(declare-fun array_inv!2193 (array!7244) Bool)

(declare-fun array_inv!2194 (array!7246) Bool)

(assert (=> b!172891 (= e!114186 (and tp!15518 tp_is_empty!4059 (array_inv!2193 (_keys!5425 thiss!1248)) (array_inv!2194 (_values!3569 thiss!1248)) e!114184))))

(declare-fun mapIsEmpty!6909 () Bool)

(assert (=> mapIsEmpty!6909 mapRes!6909))

(declare-fun b!172892 () Bool)

(declare-fun res!82099 () Bool)

(assert (=> b!172892 (=> (not res!82099) (not e!114182))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172892 (= res!82099 (validMask!0 (mask!8446 thiss!1248)))))

(declare-fun b!172893 () Bool)

(assert (=> b!172893 (= e!114185 tp_is_empty!4059)))

(declare-fun b!172894 () Bool)

(declare-fun res!82100 () Bool)

(assert (=> b!172894 (=> (not res!82100) (not e!114182))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172894 (= res!82100 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!17252 res!82101) b!172894))

(assert (= (and b!172894 res!82100) b!172892))

(assert (= (and b!172892 res!82099) b!172889))

(assert (= (and b!172888 condMapEmpty!6909) mapIsEmpty!6909))

(assert (= (and b!172888 (not condMapEmpty!6909)) mapNonEmpty!6909))

(get-info :version)

(assert (= (and mapNonEmpty!6909 ((_ is ValueCellFull!1686) mapValue!6909)) b!172893))

(assert (= (and b!172888 ((_ is ValueCellFull!1686) mapDefault!6909)) b!172890))

(assert (= b!172891 b!172888))

(assert (= start!17252 b!172891))

(declare-fun m!201441 () Bool)

(assert (=> start!17252 m!201441))

(declare-fun m!201443 () Bool)

(assert (=> mapNonEmpty!6909 m!201443))

(declare-fun m!201445 () Bool)

(assert (=> b!172891 m!201445))

(declare-fun m!201447 () Bool)

(assert (=> b!172891 m!201447))

(declare-fun m!201449 () Bool)

(assert (=> b!172892 m!201449))

(check-sat (not b!172891) tp_is_empty!4059 (not start!17252) (not mapNonEmpty!6909) b_and!10745 (not b!172892) (not b_next!4287))
(check-sat b_and!10745 (not b_next!4287))
