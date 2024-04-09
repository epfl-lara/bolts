; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15612 () Bool)

(assert start!15612)

(declare-fun b!155287 () Bool)

(declare-fun b_free!3267 () Bool)

(declare-fun b_next!3267 () Bool)

(assert (=> b!155287 (= b_free!3267 (not b_next!3267))))

(declare-fun tp!12325 () Bool)

(declare-fun b_and!9699 () Bool)

(assert (=> b!155287 (= tp!12325 b_and!9699)))

(declare-fun b!155284 () Bool)

(declare-fun e!101461 () Bool)

(declare-fun tp_is_empty!3069 () Bool)

(assert (=> b!155284 (= e!101461 tp_is_empty!3069)))

(declare-fun res!73346 () Bool)

(declare-fun e!101462 () Bool)

(assert (=> start!15612 (=> (not res!73346) (not e!101462))))

(declare-datatypes ((V!3739 0))(
  ( (V!3740 (val!1579 Int)) )
))
(declare-datatypes ((ValueCell!1191 0))(
  ( (ValueCellFull!1191 (v!3440 V!3739)) (EmptyCell!1191) )
))
(declare-datatypes ((array!5190 0))(
  ( (array!5191 (arr!2452 (Array (_ BitVec 32) (_ BitVec 64))) (size!2730 (_ BitVec 32))) )
))
(declare-datatypes ((array!5192 0))(
  ( (array!5193 (arr!2453 (Array (_ BitVec 32) ValueCell!1191)) (size!2731 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1290 0))(
  ( (LongMapFixedSize!1291 (defaultEntry!3087 Int) (mask!7508 (_ BitVec 32)) (extraKeys!2828 (_ BitVec 32)) (zeroValue!2930 V!3739) (minValue!2930 V!3739) (_size!694 (_ BitVec 32)) (_keys!4862 array!5190) (_values!3070 array!5192) (_vacant!694 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1290)

(declare-fun valid!627 (LongMapFixedSize!1290) Bool)

(assert (=> start!15612 (= res!73346 (valid!627 thiss!1248))))

(assert (=> start!15612 e!101462))

(declare-fun e!101460 () Bool)

(assert (=> start!15612 e!101460))

(assert (=> start!15612 true))

(declare-fun b!155285 () Bool)

(declare-fun res!73344 () Bool)

(assert (=> b!155285 (=> (not res!73344) (not e!101462))))

(assert (=> b!155285 (= res!73344 (and (= (size!2731 (_values!3070 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7508 thiss!1248))) (= (size!2730 (_keys!4862 thiss!1248)) (size!2731 (_values!3070 thiss!1248))) (bvsge (mask!7508 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2828 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2828 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2828 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2828 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2828 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2828 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2828 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!155286 () Bool)

(declare-fun res!73347 () Bool)

(assert (=> b!155286 (=> (not res!73347) (not e!101462))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155286 (= res!73347 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!101459 () Bool)

(declare-fun array_inv!1531 (array!5190) Bool)

(declare-fun array_inv!1532 (array!5192) Bool)

(assert (=> b!155287 (= e!101460 (and tp!12325 tp_is_empty!3069 (array_inv!1531 (_keys!4862 thiss!1248)) (array_inv!1532 (_values!3070 thiss!1248)) e!101459))))

(declare-fun b!155288 () Bool)

(declare-fun res!73348 () Bool)

(assert (=> b!155288 (=> (not res!73348) (not e!101462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!155288 (= res!73348 (validMask!0 (mask!7508 thiss!1248)))))

(declare-fun mapIsEmpty!5246 () Bool)

(declare-fun mapRes!5246 () Bool)

(assert (=> mapIsEmpty!5246 mapRes!5246))

(declare-fun mapNonEmpty!5246 () Bool)

(declare-fun tp!12326 () Bool)

(assert (=> mapNonEmpty!5246 (= mapRes!5246 (and tp!12326 e!101461))))

(declare-fun mapValue!5246 () ValueCell!1191)

(declare-fun mapKey!5246 () (_ BitVec 32))

(declare-fun mapRest!5246 () (Array (_ BitVec 32) ValueCell!1191))

(assert (=> mapNonEmpty!5246 (= (arr!2453 (_values!3070 thiss!1248)) (store mapRest!5246 mapKey!5246 mapValue!5246))))

(declare-fun b!155289 () Bool)

(declare-fun res!73345 () Bool)

(assert (=> b!155289 (=> (not res!73345) (not e!101462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5190 (_ BitVec 32)) Bool)

(assert (=> b!155289 (= res!73345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4862 thiss!1248) (mask!7508 thiss!1248)))))

(declare-fun b!155290 () Bool)

(assert (=> b!155290 (= e!101462 false)))

(declare-fun lt!81374 () Bool)

(declare-datatypes ((List!1839 0))(
  ( (Nil!1836) (Cons!1835 (h!2444 (_ BitVec 64)) (t!6649 List!1839)) )
))
(declare-fun arrayNoDuplicates!0 (array!5190 (_ BitVec 32) List!1839) Bool)

(assert (=> b!155290 (= lt!81374 (arrayNoDuplicates!0 (_keys!4862 thiss!1248) #b00000000000000000000000000000000 Nil!1836))))

(declare-fun b!155291 () Bool)

(declare-fun e!101457 () Bool)

(assert (=> b!155291 (= e!101459 (and e!101457 mapRes!5246))))

(declare-fun condMapEmpty!5246 () Bool)

(declare-fun mapDefault!5246 () ValueCell!1191)

(assert (=> b!155291 (= condMapEmpty!5246 (= (arr!2453 (_values!3070 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1191)) mapDefault!5246)))))

(declare-fun b!155292 () Bool)

(assert (=> b!155292 (= e!101457 tp_is_empty!3069)))

(assert (= (and start!15612 res!73346) b!155286))

(assert (= (and b!155286 res!73347) b!155288))

(assert (= (and b!155288 res!73348) b!155285))

(assert (= (and b!155285 res!73344) b!155289))

(assert (= (and b!155289 res!73345) b!155290))

(assert (= (and b!155291 condMapEmpty!5246) mapIsEmpty!5246))

(assert (= (and b!155291 (not condMapEmpty!5246)) mapNonEmpty!5246))

(get-info :version)

(assert (= (and mapNonEmpty!5246 ((_ is ValueCellFull!1191) mapValue!5246)) b!155284))

(assert (= (and b!155291 ((_ is ValueCellFull!1191) mapDefault!5246)) b!155292))

(assert (= b!155287 b!155291))

(assert (= start!15612 b!155287))

(declare-fun m!189259 () Bool)

(assert (=> mapNonEmpty!5246 m!189259))

(declare-fun m!189261 () Bool)

(assert (=> b!155289 m!189261))

(declare-fun m!189263 () Bool)

(assert (=> b!155290 m!189263))

(declare-fun m!189265 () Bool)

(assert (=> b!155288 m!189265))

(declare-fun m!189267 () Bool)

(assert (=> start!15612 m!189267))

(declare-fun m!189269 () Bool)

(assert (=> b!155287 m!189269))

(declare-fun m!189271 () Bool)

(assert (=> b!155287 m!189271))

(check-sat b_and!9699 (not b!155290) (not mapNonEmpty!5246) tp_is_empty!3069 (not b!155288) (not start!15612) (not b!155287) (not b!155289) (not b_next!3267))
(check-sat b_and!9699 (not b_next!3267))
