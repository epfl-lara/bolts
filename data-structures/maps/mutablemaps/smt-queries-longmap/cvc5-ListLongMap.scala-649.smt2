; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16254 () Bool)

(assert start!16254)

(declare-fun b!162008 () Bool)

(declare-fun b_free!3703 () Bool)

(declare-fun b_next!3703 () Bool)

(assert (=> b!162008 (= b_free!3703 (not b_next!3703))))

(declare-fun tp!13678 () Bool)

(declare-fun b_and!10135 () Bool)

(assert (=> b!162008 (= tp!13678 b_and!10135)))

(declare-fun b!162005 () Bool)

(declare-fun e!106047 () Bool)

(assert (=> b!162005 (= e!106047 false)))

(declare-datatypes ((SeekEntryResult!378 0))(
  ( (MissingZero!378 (index!3680 (_ BitVec 32))) (Found!378 (index!3681 (_ BitVec 32))) (Intermediate!378 (undefined!1190 Bool) (index!3682 (_ BitVec 32)) (x!17914 (_ BitVec 32))) (Undefined!378) (MissingVacant!378 (index!3683 (_ BitVec 32))) )
))
(declare-fun lt!82381 () SeekEntryResult!378)

(declare-datatypes ((V!4321 0))(
  ( (V!4322 (val!1797 Int)) )
))
(declare-fun v!309 () V!4321)

(declare-datatypes ((ValueCell!1409 0))(
  ( (ValueCellFull!1409 (v!3658 V!4321)) (EmptyCell!1409) )
))
(declare-datatypes ((array!6088 0))(
  ( (array!6089 (arr!2888 (Array (_ BitVec 32) (_ BitVec 64))) (size!3172 (_ BitVec 32))) )
))
(declare-datatypes ((array!6090 0))(
  ( (array!6091 (arr!2889 (Array (_ BitVec 32) ValueCell!1409)) (size!3173 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1726 0))(
  ( (LongMapFixedSize!1727 (defaultEntry!3305 Int) (mask!7915 (_ BitVec 32)) (extraKeys!3046 (_ BitVec 32)) (zeroValue!3148 V!4321) (minValue!3148 V!4321) (_size!912 (_ BitVec 32)) (_keys!5106 array!6088) (_values!3288 array!6090) (_vacant!912 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1726)

(declare-fun lt!82382 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun valid!776 (LongMapFixedSize!1726) Bool)

(declare-datatypes ((tuple2!2978 0))(
  ( (tuple2!2979 (_1!1499 Bool) (_2!1499 LongMapFixedSize!1726)) )
))
(declare-fun updateHelperNewKey!77 (LongMapFixedSize!1726 (_ BitVec 64) V!4321 (_ BitVec 32)) tuple2!2978)

(assert (=> b!162005 (= lt!82382 (valid!776 (_2!1499 (updateHelperNewKey!77 thiss!1248 key!828 v!309 (index!3683 lt!82381)))))))

(declare-fun b!162006 () Bool)

(declare-fun e!106050 () Bool)

(assert (=> b!162006 (= e!106050 e!106047)))

(declare-fun res!76768 () Bool)

(assert (=> b!162006 (=> (not res!76768) (not e!106047))))

(assert (=> b!162006 (= res!76768 (and (not (is-Undefined!378 lt!82381)) (is-MissingVacant!378 lt!82381)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6088 (_ BitVec 32)) SeekEntryResult!378)

(assert (=> b!162006 (= lt!82381 (seekEntryOrOpen!0 key!828 (_keys!5106 thiss!1248) (mask!7915 thiss!1248)))))

(declare-fun mapNonEmpty!5945 () Bool)

(declare-fun mapRes!5945 () Bool)

(declare-fun tp!13679 () Bool)

(declare-fun e!106046 () Bool)

(assert (=> mapNonEmpty!5945 (= mapRes!5945 (and tp!13679 e!106046))))

(declare-fun mapRest!5945 () (Array (_ BitVec 32) ValueCell!1409))

(declare-fun mapKey!5945 () (_ BitVec 32))

(declare-fun mapValue!5945 () ValueCell!1409)

(assert (=> mapNonEmpty!5945 (= (arr!2889 (_values!3288 thiss!1248)) (store mapRest!5945 mapKey!5945 mapValue!5945))))

(declare-fun res!76767 () Bool)

(assert (=> start!16254 (=> (not res!76767) (not e!106050))))

(assert (=> start!16254 (= res!76767 (valid!776 thiss!1248))))

(assert (=> start!16254 e!106050))

(declare-fun e!106051 () Bool)

(assert (=> start!16254 e!106051))

(assert (=> start!16254 true))

(declare-fun tp_is_empty!3505 () Bool)

(assert (=> start!16254 tp_is_empty!3505))

(declare-fun b!162007 () Bool)

(declare-fun res!76769 () Bool)

(assert (=> b!162007 (=> (not res!76769) (not e!106050))))

(assert (=> b!162007 (= res!76769 (not (= key!828 (bvneg key!828))))))

(declare-fun e!106052 () Bool)

(declare-fun array_inv!1839 (array!6088) Bool)

(declare-fun array_inv!1840 (array!6090) Bool)

(assert (=> b!162008 (= e!106051 (and tp!13678 tp_is_empty!3505 (array_inv!1839 (_keys!5106 thiss!1248)) (array_inv!1840 (_values!3288 thiss!1248)) e!106052))))

(declare-fun b!162009 () Bool)

(assert (=> b!162009 (= e!106046 tp_is_empty!3505)))

(declare-fun b!162010 () Bool)

(declare-fun e!106049 () Bool)

(assert (=> b!162010 (= e!106052 (and e!106049 mapRes!5945))))

(declare-fun condMapEmpty!5945 () Bool)

(declare-fun mapDefault!5945 () ValueCell!1409)

