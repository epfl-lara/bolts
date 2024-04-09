; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15726 () Bool)

(assert start!15726)

(declare-fun b!156714 () Bool)

(declare-fun b_free!3381 () Bool)

(declare-fun b_next!3381 () Bool)

(assert (=> b!156714 (= b_free!3381 (not b_next!3381))))

(declare-fun tp!12667 () Bool)

(declare-fun b_and!9813 () Bool)

(assert (=> b!156714 (= tp!12667 b_and!9813)))

(declare-fun b!156706 () Bool)

(declare-fun e!102505 () Bool)

(assert (=> b!156706 (= e!102505 false)))

(declare-fun lt!81608 () Bool)

(declare-datatypes ((V!3891 0))(
  ( (V!3892 (val!1636 Int)) )
))
(declare-datatypes ((ValueCell!1248 0))(
  ( (ValueCellFull!1248 (v!3497 V!3891)) (EmptyCell!1248) )
))
(declare-datatypes ((array!5418 0))(
  ( (array!5419 (arr!2566 (Array (_ BitVec 32) (_ BitVec 64))) (size!2844 (_ BitVec 32))) )
))
(declare-datatypes ((array!5420 0))(
  ( (array!5421 (arr!2567 (Array (_ BitVec 32) ValueCell!1248)) (size!2845 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1404 0))(
  ( (LongMapFixedSize!1405 (defaultEntry!3144 Int) (mask!7603 (_ BitVec 32)) (extraKeys!2885 (_ BitVec 32)) (zeroValue!2987 V!3891) (minValue!2987 V!3891) (_size!751 (_ BitVec 32)) (_keys!4919 array!5418) (_values!3127 array!5420) (_vacant!751 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1404)

(declare-datatypes ((List!1877 0))(
  ( (Nil!1874) (Cons!1873 (h!2482 (_ BitVec 64)) (t!6687 List!1877)) )
))
(declare-fun arrayNoDuplicates!0 (array!5418 (_ BitVec 32) List!1877) Bool)

(assert (=> b!156706 (= lt!81608 (arrayNoDuplicates!0 (_keys!4919 thiss!1248) #b00000000000000000000000000000000 Nil!1874))))

(declare-fun b!156707 () Bool)

(declare-fun e!102503 () Bool)

(declare-fun tp_is_empty!3183 () Bool)

(assert (=> b!156707 (= e!102503 tp_is_empty!3183)))

(declare-fun b!156708 () Bool)

(declare-fun res!74085 () Bool)

(assert (=> b!156708 (=> (not res!74085) (not e!102505))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5418 (_ BitVec 32)) Bool)

(assert (=> b!156708 (= res!74085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4919 thiss!1248) (mask!7603 thiss!1248)))))

(declare-fun mapNonEmpty!5417 () Bool)

(declare-fun mapRes!5417 () Bool)

(declare-fun tp!12668 () Bool)

(assert (=> mapNonEmpty!5417 (= mapRes!5417 (and tp!12668 e!102503))))

(declare-fun mapValue!5417 () ValueCell!1248)

(declare-fun mapRest!5417 () (Array (_ BitVec 32) ValueCell!1248))

(declare-fun mapKey!5417 () (_ BitVec 32))

(assert (=> mapNonEmpty!5417 (= (arr!2567 (_values!3127 thiss!1248)) (store mapRest!5417 mapKey!5417 mapValue!5417))))

(declare-fun b!156709 () Bool)

(declare-fun res!74084 () Bool)

(assert (=> b!156709 (=> (not res!74084) (not e!102505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156709 (= res!74084 (validMask!0 (mask!7603 thiss!1248)))))

(declare-fun res!74082 () Bool)

(assert (=> start!15726 (=> (not res!74082) (not e!102505))))

(declare-fun valid!673 (LongMapFixedSize!1404) Bool)

(assert (=> start!15726 (= res!74082 (valid!673 thiss!1248))))

(assert (=> start!15726 e!102505))

(declare-fun e!102504 () Bool)

(assert (=> start!15726 e!102504))

(assert (=> start!15726 true))

(declare-fun b!156710 () Bool)

(declare-fun e!102506 () Bool)

(declare-fun e!102502 () Bool)

(assert (=> b!156710 (= e!102506 (and e!102502 mapRes!5417))))

(declare-fun condMapEmpty!5417 () Bool)

(declare-fun mapDefault!5417 () ValueCell!1248)

(assert (=> b!156710 (= condMapEmpty!5417 (= (arr!2567 (_values!3127 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1248)) mapDefault!5417)))))

(declare-fun b!156711 () Bool)

(declare-fun res!74086 () Bool)

(assert (=> b!156711 (=> (not res!74086) (not e!102505))))

(assert (=> b!156711 (= res!74086 (and (= (size!2845 (_values!3127 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7603 thiss!1248))) (= (size!2844 (_keys!4919 thiss!1248)) (size!2845 (_values!3127 thiss!1248))) (bvsge (mask!7603 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2885 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2885 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2885 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2885 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2885 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2885 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2885 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!156712 () Bool)

(declare-fun res!74083 () Bool)

(assert (=> b!156712 (=> (not res!74083) (not e!102505))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156712 (= res!74083 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!156713 () Bool)

(assert (=> b!156713 (= e!102502 tp_is_empty!3183)))

(declare-fun mapIsEmpty!5417 () Bool)

(assert (=> mapIsEmpty!5417 mapRes!5417))

(declare-fun array_inv!1619 (array!5418) Bool)

(declare-fun array_inv!1620 (array!5420) Bool)

(assert (=> b!156714 (= e!102504 (and tp!12667 tp_is_empty!3183 (array_inv!1619 (_keys!4919 thiss!1248)) (array_inv!1620 (_values!3127 thiss!1248)) e!102506))))

(assert (= (and start!15726 res!74082) b!156712))

(assert (= (and b!156712 res!74083) b!156709))

(assert (= (and b!156709 res!74084) b!156711))

(assert (= (and b!156711 res!74086) b!156708))

(assert (= (and b!156708 res!74085) b!156706))

(assert (= (and b!156710 condMapEmpty!5417) mapIsEmpty!5417))

(assert (= (and b!156710 (not condMapEmpty!5417)) mapNonEmpty!5417))

(get-info :version)

(assert (= (and mapNonEmpty!5417 ((_ is ValueCellFull!1248) mapValue!5417)) b!156707))

(assert (= (and b!156710 ((_ is ValueCellFull!1248) mapDefault!5417)) b!156713))

(assert (= b!156714 b!156710))

(assert (= start!15726 b!156714))

(declare-fun m!190141 () Bool)

(assert (=> start!15726 m!190141))

(declare-fun m!190143 () Bool)

(assert (=> b!156709 m!190143))

(declare-fun m!190145 () Bool)

(assert (=> b!156706 m!190145))

(declare-fun m!190147 () Bool)

(assert (=> b!156708 m!190147))

(declare-fun m!190149 () Bool)

(assert (=> b!156714 m!190149))

(declare-fun m!190151 () Bool)

(assert (=> b!156714 m!190151))

(declare-fun m!190153 () Bool)

(assert (=> mapNonEmpty!5417 m!190153))

(check-sat (not b!156708) (not b!156709) b_and!9813 tp_is_empty!3183 (not start!15726) (not b_next!3381) (not b!156706) (not mapNonEmpty!5417) (not b!156714))
(check-sat b_and!9813 (not b_next!3381))
