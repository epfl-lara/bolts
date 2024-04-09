; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15626 () Bool)

(assert start!15626)

(declare-fun b!155473 () Bool)

(declare-fun b_free!3281 () Bool)

(declare-fun b_next!3281 () Bool)

(assert (=> b!155473 (= b_free!3281 (not b_next!3281))))

(declare-fun tp!12368 () Bool)

(declare-fun b_and!9713 () Bool)

(assert (=> b!155473 (= tp!12368 b_and!9713)))

(declare-fun tp_is_empty!3083 () Bool)

(declare-fun e!101584 () Bool)

(declare-datatypes ((V!3757 0))(
  ( (V!3758 (val!1586 Int)) )
))
(declare-datatypes ((ValueCell!1198 0))(
  ( (ValueCellFull!1198 (v!3447 V!3757)) (EmptyCell!1198) )
))
(declare-datatypes ((array!5218 0))(
  ( (array!5219 (arr!2466 (Array (_ BitVec 32) (_ BitVec 64))) (size!2744 (_ BitVec 32))) )
))
(declare-datatypes ((array!5220 0))(
  ( (array!5221 (arr!2467 (Array (_ BitVec 32) ValueCell!1198)) (size!2745 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1304 0))(
  ( (LongMapFixedSize!1305 (defaultEntry!3094 Int) (mask!7519 (_ BitVec 32)) (extraKeys!2835 (_ BitVec 32)) (zeroValue!2937 V!3757) (minValue!2937 V!3757) (_size!701 (_ BitVec 32)) (_keys!4869 array!5218) (_values!3077 array!5220) (_vacant!701 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1304)

(declare-fun e!101586 () Bool)

(declare-fun array_inv!1541 (array!5218) Bool)

(declare-fun array_inv!1542 (array!5220) Bool)

(assert (=> b!155473 (= e!101586 (and tp!12368 tp_is_empty!3083 (array_inv!1541 (_keys!4869 thiss!1248)) (array_inv!1542 (_values!3077 thiss!1248)) e!101584))))

(declare-fun mapNonEmpty!5267 () Bool)

(declare-fun mapRes!5267 () Bool)

(declare-fun tp!12367 () Bool)

(declare-fun e!101585 () Bool)

(assert (=> mapNonEmpty!5267 (= mapRes!5267 (and tp!12367 e!101585))))

(declare-fun mapValue!5267 () ValueCell!1198)

(declare-fun mapKey!5267 () (_ BitVec 32))

(declare-fun mapRest!5267 () (Array (_ BitVec 32) ValueCell!1198))

(assert (=> mapNonEmpty!5267 (= (arr!2467 (_values!3077 thiss!1248)) (store mapRest!5267 mapKey!5267 mapValue!5267))))

(declare-fun b!155474 () Bool)

(declare-fun res!73450 () Bool)

(declare-fun e!101588 () Bool)

(assert (=> b!155474 (=> (not res!73450) (not e!101588))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155474 (= res!73450 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!155475 () Bool)

(assert (=> b!155475 (= e!101588 false)))

(declare-fun lt!81395 () Bool)

(declare-datatypes ((List!1842 0))(
  ( (Nil!1839) (Cons!1838 (h!2447 (_ BitVec 64)) (t!6652 List!1842)) )
))
(declare-fun arrayNoDuplicates!0 (array!5218 (_ BitVec 32) List!1842) Bool)

(assert (=> b!155475 (= lt!81395 (arrayNoDuplicates!0 (_keys!4869 thiss!1248) #b00000000000000000000000000000000 Nil!1839))))

(declare-fun mapIsEmpty!5267 () Bool)

(assert (=> mapIsEmpty!5267 mapRes!5267))

(declare-fun res!73452 () Bool)

(assert (=> start!15626 (=> (not res!73452) (not e!101588))))

(declare-fun valid!630 (LongMapFixedSize!1304) Bool)

(assert (=> start!15626 (= res!73452 (valid!630 thiss!1248))))

(assert (=> start!15626 e!101588))

(assert (=> start!15626 e!101586))

(assert (=> start!15626 true))

(declare-fun b!155476 () Bool)

(assert (=> b!155476 (= e!101585 tp_is_empty!3083)))

(declare-fun b!155477 () Bool)

(declare-fun res!73449 () Bool)

(assert (=> b!155477 (=> (not res!73449) (not e!101588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5218 (_ BitVec 32)) Bool)

(assert (=> b!155477 (= res!73449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4869 thiss!1248) (mask!7519 thiss!1248)))))

(declare-fun b!155478 () Bool)

(declare-fun e!101587 () Bool)

(assert (=> b!155478 (= e!101584 (and e!101587 mapRes!5267))))

(declare-fun condMapEmpty!5267 () Bool)

(declare-fun mapDefault!5267 () ValueCell!1198)

