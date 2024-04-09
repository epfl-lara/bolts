; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16314 () Bool)

(assert start!16314)

(declare-fun b!162640 () Bool)

(declare-fun b_free!3763 () Bool)

(declare-fun b_next!3763 () Bool)

(assert (=> b!162640 (= b_free!3763 (not b_next!3763))))

(declare-fun tp!13859 () Bool)

(declare-fun b_and!10195 () Bool)

(assert (=> b!162640 (= tp!13859 b_and!10195)))

(declare-fun mapIsEmpty!6035 () Bool)

(declare-fun mapRes!6035 () Bool)

(assert (=> mapIsEmpty!6035 mapRes!6035))

(declare-fun b!162635 () Bool)

(declare-fun e!106660 () Bool)

(assert (=> b!162635 (= e!106660 false)))

(declare-fun lt!82544 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4401 0))(
  ( (V!4402 (val!1827 Int)) )
))
(declare-fun v!309 () V!4401)

(declare-datatypes ((ValueCell!1439 0))(
  ( (ValueCellFull!1439 (v!3688 V!4401)) (EmptyCell!1439) )
))
(declare-datatypes ((array!6208 0))(
  ( (array!6209 (arr!2948 (Array (_ BitVec 32) (_ BitVec 64))) (size!3232 (_ BitVec 32))) )
))
(declare-datatypes ((array!6210 0))(
  ( (array!6211 (arr!2949 (Array (_ BitVec 32) ValueCell!1439)) (size!3233 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1786 0))(
  ( (LongMapFixedSize!1787 (defaultEntry!3335 Int) (mask!7965 (_ BitVec 32)) (extraKeys!3076 (_ BitVec 32)) (zeroValue!3178 V!4401) (minValue!3178 V!4401) (_size!942 (_ BitVec 32)) (_keys!5136 array!6208) (_values!3318 array!6210) (_vacant!942 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1786)

(declare-datatypes ((SeekEntryResult!398 0))(
  ( (MissingZero!398 (index!3760 (_ BitVec 32))) (Found!398 (index!3761 (_ BitVec 32))) (Intermediate!398 (undefined!1210 Bool) (index!3762 (_ BitVec 32)) (x!18014 (_ BitVec 32))) (Undefined!398) (MissingVacant!398 (index!3763 (_ BitVec 32))) )
))
(declare-fun lt!82543 () SeekEntryResult!398)

(declare-fun valid!796 (LongMapFixedSize!1786) Bool)

(declare-datatypes ((tuple2!3004 0))(
  ( (tuple2!3005 (_1!1512 Bool) (_2!1512 LongMapFixedSize!1786)) )
))
(declare-fun updateHelperNewKey!87 (LongMapFixedSize!1786 (_ BitVec 64) V!4401 (_ BitVec 32)) tuple2!3004)

(assert (=> b!162635 (= lt!82544 (valid!796 (_2!1512 (updateHelperNewKey!87 thiss!1248 key!828 v!309 (index!3760 lt!82543)))))))

(declare-fun mapNonEmpty!6035 () Bool)

(declare-fun tp!13858 () Bool)

(declare-fun e!106664 () Bool)

(assert (=> mapNonEmpty!6035 (= mapRes!6035 (and tp!13858 e!106664))))

(declare-fun mapKey!6035 () (_ BitVec 32))

(declare-fun mapRest!6035 () (Array (_ BitVec 32) ValueCell!1439))

(declare-fun mapValue!6035 () ValueCell!1439)

(assert (=> mapNonEmpty!6035 (= (arr!2949 (_values!3318 thiss!1248)) (store mapRest!6035 mapKey!6035 mapValue!6035))))

(declare-fun b!162636 () Bool)

(declare-fun e!106659 () Bool)

(declare-fun e!106663 () Bool)

(assert (=> b!162636 (= e!106659 (and e!106663 mapRes!6035))))

(declare-fun condMapEmpty!6035 () Bool)

(declare-fun mapDefault!6035 () ValueCell!1439)

