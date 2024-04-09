; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15610 () Bool)

(assert start!15610)

(declare-fun b!155258 () Bool)

(declare-fun b_free!3265 () Bool)

(declare-fun b_next!3265 () Bool)

(assert (=> b!155258 (= b_free!3265 (not b_next!3265))))

(declare-fun tp!12320 () Bool)

(declare-fun b_and!9697 () Bool)

(assert (=> b!155258 (= tp!12320 b_and!9697)))

(declare-fun b!155257 () Bool)

(declare-fun res!73331 () Bool)

(declare-fun e!101441 () Bool)

(assert (=> b!155257 (=> (not res!73331) (not e!101441))))

(declare-datatypes ((V!3737 0))(
  ( (V!3738 (val!1578 Int)) )
))
(declare-datatypes ((ValueCell!1190 0))(
  ( (ValueCellFull!1190 (v!3439 V!3737)) (EmptyCell!1190) )
))
(declare-datatypes ((array!5186 0))(
  ( (array!5187 (arr!2450 (Array (_ BitVec 32) (_ BitVec 64))) (size!2728 (_ BitVec 32))) )
))
(declare-datatypes ((array!5188 0))(
  ( (array!5189 (arr!2451 (Array (_ BitVec 32) ValueCell!1190)) (size!2729 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1288 0))(
  ( (LongMapFixedSize!1289 (defaultEntry!3086 Int) (mask!7507 (_ BitVec 32)) (extraKeys!2827 (_ BitVec 32)) (zeroValue!2929 V!3737) (minValue!2929 V!3737) (_size!693 (_ BitVec 32)) (_keys!4861 array!5186) (_values!3069 array!5188) (_vacant!693 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1288)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!155257 (= res!73331 (validMask!0 (mask!7507 thiss!1248)))))

(declare-fun tp_is_empty!3067 () Bool)

(declare-fun e!101442 () Bool)

(declare-fun e!101444 () Bool)

(declare-fun array_inv!1529 (array!5186) Bool)

(declare-fun array_inv!1530 (array!5188) Bool)

(assert (=> b!155258 (= e!101442 (and tp!12320 tp_is_empty!3067 (array_inv!1529 (_keys!4861 thiss!1248)) (array_inv!1530 (_values!3069 thiss!1248)) e!101444))))

(declare-fun b!155259 () Bool)

(declare-fun e!101443 () Bool)

(assert (=> b!155259 (= e!101443 tp_is_empty!3067)))

(declare-fun mapIsEmpty!5243 () Bool)

(declare-fun mapRes!5243 () Bool)

(assert (=> mapIsEmpty!5243 mapRes!5243))

(declare-fun b!155260 () Bool)

(assert (=> b!155260 (= e!101441 false)))

(declare-fun lt!81371 () Bool)

(declare-datatypes ((List!1838 0))(
  ( (Nil!1835) (Cons!1834 (h!2443 (_ BitVec 64)) (t!6648 List!1838)) )
))
(declare-fun arrayNoDuplicates!0 (array!5186 (_ BitVec 32) List!1838) Bool)

(assert (=> b!155260 (= lt!81371 (arrayNoDuplicates!0 (_keys!4861 thiss!1248) #b00000000000000000000000000000000 Nil!1835))))

(declare-fun b!155261 () Bool)

(declare-fun res!73333 () Bool)

(assert (=> b!155261 (=> (not res!73333) (not e!101441))))

(assert (=> b!155261 (= res!73333 (and (= (size!2729 (_values!3069 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7507 thiss!1248))) (= (size!2728 (_keys!4861 thiss!1248)) (size!2729 (_values!3069 thiss!1248))) (bvsge (mask!7507 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2827 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2827 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2827 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2827 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2827 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2827 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2827 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!5243 () Bool)

(declare-fun tp!12319 () Bool)

(declare-fun e!101439 () Bool)

(assert (=> mapNonEmpty!5243 (= mapRes!5243 (and tp!12319 e!101439))))

(declare-fun mapValue!5243 () ValueCell!1190)

(declare-fun mapKey!5243 () (_ BitVec 32))

(declare-fun mapRest!5243 () (Array (_ BitVec 32) ValueCell!1190))

(assert (=> mapNonEmpty!5243 (= (arr!2451 (_values!3069 thiss!1248)) (store mapRest!5243 mapKey!5243 mapValue!5243))))

(declare-fun b!155262 () Bool)

(declare-fun res!73329 () Bool)

(assert (=> b!155262 (=> (not res!73329) (not e!101441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5186 (_ BitVec 32)) Bool)

(assert (=> b!155262 (= res!73329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4861 thiss!1248) (mask!7507 thiss!1248)))))

(declare-fun b!155263 () Bool)

(assert (=> b!155263 (= e!101439 tp_is_empty!3067)))

(declare-fun res!73330 () Bool)

(assert (=> start!15610 (=> (not res!73330) (not e!101441))))

(declare-fun valid!626 (LongMapFixedSize!1288) Bool)

(assert (=> start!15610 (= res!73330 (valid!626 thiss!1248))))

(assert (=> start!15610 e!101441))

(assert (=> start!15610 e!101442))

(assert (=> start!15610 true))

(declare-fun b!155264 () Bool)

(declare-fun res!73332 () Bool)

(assert (=> b!155264 (=> (not res!73332) (not e!101441))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155264 (= res!73332 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!155265 () Bool)

(assert (=> b!155265 (= e!101444 (and e!101443 mapRes!5243))))

(declare-fun condMapEmpty!5243 () Bool)

(declare-fun mapDefault!5243 () ValueCell!1190)

