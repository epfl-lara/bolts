; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16472 () Bool)

(assert start!16472)

(declare-fun b!163732 () Bool)

(declare-fun b_free!3805 () Bool)

(declare-fun b_next!3805 () Bool)

(assert (=> b!163732 (= b_free!3805 (not b_next!3805))))

(declare-fun tp!14006 () Bool)

(declare-fun b_and!10237 () Bool)

(assert (=> b!163732 (= tp!14006 b_and!10237)))

(declare-fun b!163727 () Bool)

(declare-fun e!107435 () Bool)

(declare-fun tp_is_empty!3607 () Bool)

(assert (=> b!163727 (= e!107435 tp_is_empty!3607)))

(declare-fun mapNonEmpty!6120 () Bool)

(declare-fun mapRes!6120 () Bool)

(declare-fun tp!14007 () Bool)

(assert (=> mapNonEmpty!6120 (= mapRes!6120 (and tp!14007 e!107435))))

(declare-datatypes ((V!4457 0))(
  ( (V!4458 (val!1848 Int)) )
))
(declare-datatypes ((ValueCell!1460 0))(
  ( (ValueCellFull!1460 (v!3709 V!4457)) (EmptyCell!1460) )
))
(declare-fun mapRest!6120 () (Array (_ BitVec 32) ValueCell!1460))

(declare-fun mapKey!6120 () (_ BitVec 32))

(declare-fun mapValue!6120 () ValueCell!1460)

(declare-datatypes ((array!6304 0))(
  ( (array!6305 (arr!2990 (Array (_ BitVec 32) (_ BitVec 64))) (size!3278 (_ BitVec 32))) )
))
(declare-datatypes ((array!6306 0))(
  ( (array!6307 (arr!2991 (Array (_ BitVec 32) ValueCell!1460)) (size!3279 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1828 0))(
  ( (LongMapFixedSize!1829 (defaultEntry!3356 Int) (mask!8028 (_ BitVec 32)) (extraKeys!3097 (_ BitVec 32)) (zeroValue!3199 V!4457) (minValue!3199 V!4457) (_size!963 (_ BitVec 32)) (_keys!5175 array!6304) (_values!3339 array!6306) (_vacant!963 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1828)

(assert (=> mapNonEmpty!6120 (= (arr!2991 (_values!3339 thiss!1248)) (store mapRest!6120 mapKey!6120 mapValue!6120))))

(declare-fun b!163728 () Bool)

(declare-fun res!77479 () Bool)

(declare-fun e!107433 () Bool)

(assert (=> b!163728 (=> (not res!77479) (not e!107433))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!163728 (= res!77479 (not (= key!828 (bvneg key!828))))))

(declare-fun b!163729 () Bool)

(declare-fun e!107437 () Bool)

(assert (=> b!163729 (= e!107437 tp_is_empty!3607)))

(declare-fun b!163730 () Bool)

(declare-fun e!107431 () Bool)

(assert (=> b!163730 (= e!107433 e!107431)))

(declare-fun res!77481 () Bool)

(assert (=> b!163730 (=> (not res!77481) (not e!107431))))

(declare-datatypes ((SeekEntryResult!413 0))(
  ( (MissingZero!413 (index!3820 (_ BitVec 32))) (Found!413 (index!3821 (_ BitVec 32))) (Intermediate!413 (undefined!1225 Bool) (index!3822 (_ BitVec 32)) (x!18169 (_ BitVec 32))) (Undefined!413) (MissingVacant!413 (index!3823 (_ BitVec 32))) )
))
(declare-fun lt!82787 () SeekEntryResult!413)

(assert (=> b!163730 (= res!77481 (and (not (is-Undefined!413 lt!82787)) (not (is-MissingVacant!413 lt!82787)) (not (is-MissingZero!413 lt!82787)) (is-Found!413 lt!82787)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6304 (_ BitVec 32)) SeekEntryResult!413)

(assert (=> b!163730 (= lt!82787 (seekEntryOrOpen!0 key!828 (_keys!5175 thiss!1248) (mask!8028 thiss!1248)))))

(declare-fun mapIsEmpty!6120 () Bool)

(assert (=> mapIsEmpty!6120 mapRes!6120))

(declare-fun b!163731 () Bool)

(declare-fun e!107436 () Bool)

(assert (=> b!163731 (= e!107436 (and e!107437 mapRes!6120))))

(declare-fun condMapEmpty!6120 () Bool)

(declare-fun mapDefault!6120 () ValueCell!1460)

