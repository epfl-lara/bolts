; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15704 () Bool)

(assert start!15704)

(declare-fun b!156414 () Bool)

(declare-fun b_free!3359 () Bool)

(declare-fun b_next!3359 () Bool)

(assert (=> b!156414 (= b_free!3359 (not b_next!3359))))

(declare-fun tp!12602 () Bool)

(declare-fun b_and!9791 () Bool)

(assert (=> b!156414 (= tp!12602 b_and!9791)))

(declare-fun b!156409 () Bool)

(declare-fun res!73918 () Bool)

(declare-fun e!102304 () Bool)

(assert (=> b!156409 (=> (not res!73918) (not e!102304))))

(declare-datatypes ((V!3861 0))(
  ( (V!3862 (val!1625 Int)) )
))
(declare-datatypes ((ValueCell!1237 0))(
  ( (ValueCellFull!1237 (v!3486 V!3861)) (EmptyCell!1237) )
))
(declare-datatypes ((array!5374 0))(
  ( (array!5375 (arr!2544 (Array (_ BitVec 32) (_ BitVec 64))) (size!2822 (_ BitVec 32))) )
))
(declare-datatypes ((array!5376 0))(
  ( (array!5377 (arr!2545 (Array (_ BitVec 32) ValueCell!1237)) (size!2823 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1382 0))(
  ( (LongMapFixedSize!1383 (defaultEntry!3133 Int) (mask!7584 (_ BitVec 32)) (extraKeys!2874 (_ BitVec 32)) (zeroValue!2976 V!3861) (minValue!2976 V!3861) (_size!740 (_ BitVec 32)) (_keys!4908 array!5374) (_values!3116 array!5376) (_vacant!740 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1382)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5374 (_ BitVec 32)) Bool)

(assert (=> b!156409 (= res!73918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4908 thiss!1248) (mask!7584 thiss!1248)))))

(declare-fun b!156410 () Bool)

(assert (=> b!156410 (= e!102304 false)))

(declare-fun lt!81575 () Bool)

(declare-datatypes ((List!1871 0))(
  ( (Nil!1868) (Cons!1867 (h!2476 (_ BitVec 64)) (t!6681 List!1871)) )
))
(declare-fun arrayNoDuplicates!0 (array!5374 (_ BitVec 32) List!1871) Bool)

(assert (=> b!156410 (= lt!81575 (arrayNoDuplicates!0 (_keys!4908 thiss!1248) #b00000000000000000000000000000000 Nil!1868))))

(declare-fun mapIsEmpty!5384 () Bool)

(declare-fun mapRes!5384 () Bool)

(assert (=> mapIsEmpty!5384 mapRes!5384))

(declare-fun b!156411 () Bool)

(declare-fun res!73920 () Bool)

(assert (=> b!156411 (=> (not res!73920) (not e!102304))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156411 (= res!73920 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!156412 () Bool)

(declare-fun res!73921 () Bool)

(assert (=> b!156412 (=> (not res!73921) (not e!102304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156412 (= res!73921 (validMask!0 (mask!7584 thiss!1248)))))

(declare-fun res!73917 () Bool)

(assert (=> start!15704 (=> (not res!73917) (not e!102304))))

(declare-fun valid!666 (LongMapFixedSize!1382) Bool)

(assert (=> start!15704 (= res!73917 (valid!666 thiss!1248))))

(assert (=> start!15704 e!102304))

(declare-fun e!102305 () Bool)

(assert (=> start!15704 e!102305))

(assert (=> start!15704 true))

(declare-fun mapNonEmpty!5384 () Bool)

(declare-fun tp!12601 () Bool)

(declare-fun e!102303 () Bool)

(assert (=> mapNonEmpty!5384 (= mapRes!5384 (and tp!12601 e!102303))))

(declare-fun mapRest!5384 () (Array (_ BitVec 32) ValueCell!1237))

(declare-fun mapValue!5384 () ValueCell!1237)

(declare-fun mapKey!5384 () (_ BitVec 32))

(assert (=> mapNonEmpty!5384 (= (arr!2545 (_values!3116 thiss!1248)) (store mapRest!5384 mapKey!5384 mapValue!5384))))

(declare-fun b!156413 () Bool)

(declare-fun tp_is_empty!3161 () Bool)

(assert (=> b!156413 (= e!102303 tp_is_empty!3161)))

(declare-fun e!102306 () Bool)

(declare-fun array_inv!1603 (array!5374) Bool)

(declare-fun array_inv!1604 (array!5376) Bool)

(assert (=> b!156414 (= e!102305 (and tp!12602 tp_is_empty!3161 (array_inv!1603 (_keys!4908 thiss!1248)) (array_inv!1604 (_values!3116 thiss!1248)) e!102306))))

(declare-fun b!156415 () Bool)

(declare-fun e!102307 () Bool)

(assert (=> b!156415 (= e!102307 tp_is_empty!3161)))

(declare-fun b!156416 () Bool)

(assert (=> b!156416 (= e!102306 (and e!102307 mapRes!5384))))

(declare-fun condMapEmpty!5384 () Bool)

(declare-fun mapDefault!5384 () ValueCell!1237)

