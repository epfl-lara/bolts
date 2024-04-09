; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16240 () Bool)

(assert start!16240)

(declare-fun b!161823 () Bool)

(declare-fun b_free!3689 () Bool)

(declare-fun b_next!3689 () Bool)

(assert (=> b!161823 (= b_free!3689 (not b_next!3689))))

(declare-fun tp!13636 () Bool)

(declare-fun b_and!10121 () Bool)

(assert (=> b!161823 (= tp!13636 b_and!10121)))

(declare-fun b!161822 () Bool)

(declare-fun res!76669 () Bool)

(declare-fun e!105885 () Bool)

(assert (=> b!161822 (=> (not res!76669) (not e!105885))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!161822 (= res!76669 (not (= key!828 (bvneg key!828))))))

(declare-fun tp_is_empty!3491 () Bool)

(declare-datatypes ((V!4301 0))(
  ( (V!4302 (val!1790 Int)) )
))
(declare-datatypes ((ValueCell!1402 0))(
  ( (ValueCellFull!1402 (v!3651 V!4301)) (EmptyCell!1402) )
))
(declare-datatypes ((array!6060 0))(
  ( (array!6061 (arr!2874 (Array (_ BitVec 32) (_ BitVec 64))) (size!3158 (_ BitVec 32))) )
))
(declare-datatypes ((array!6062 0))(
  ( (array!6063 (arr!2875 (Array (_ BitVec 32) ValueCell!1402)) (size!3159 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1712 0))(
  ( (LongMapFixedSize!1713 (defaultEntry!3298 Int) (mask!7902 (_ BitVec 32)) (extraKeys!3039 (_ BitVec 32)) (zeroValue!3141 V!4301) (minValue!3141 V!4301) (_size!905 (_ BitVec 32)) (_keys!5099 array!6060) (_values!3281 array!6062) (_vacant!905 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1712)

(declare-fun e!105882 () Bool)

(declare-fun e!105881 () Bool)

(declare-fun array_inv!1829 (array!6060) Bool)

(declare-fun array_inv!1830 (array!6062) Bool)

(assert (=> b!161823 (= e!105882 (and tp!13636 tp_is_empty!3491 (array_inv!1829 (_keys!5099 thiss!1248)) (array_inv!1830 (_values!3281 thiss!1248)) e!105881))))

(declare-fun b!161824 () Bool)

(declare-fun e!105884 () Bool)

(assert (=> b!161824 (= e!105884 false)))

(declare-fun lt!82322 () Bool)

(declare-datatypes ((SeekEntryResult!374 0))(
  ( (MissingZero!374 (index!3664 (_ BitVec 32))) (Found!374 (index!3665 (_ BitVec 32))) (Intermediate!374 (undefined!1186 Bool) (index!3666 (_ BitVec 32)) (x!17886 (_ BitVec 32))) (Undefined!374) (MissingVacant!374 (index!3667 (_ BitVec 32))) )
))
(declare-fun lt!82321 () SeekEntryResult!374)

(declare-fun v!309 () V!4301)

(declare-fun valid!772 (LongMapFixedSize!1712) Bool)

(declare-datatypes ((tuple2!2958 0))(
  ( (tuple2!2959 (_1!1489 Bool) (_2!1489 LongMapFixedSize!1712)) )
))
(declare-fun updateHelperNewKey!73 (LongMapFixedSize!1712 (_ BitVec 64) V!4301 (_ BitVec 32)) tuple2!2958)

(assert (=> b!161824 (= lt!82322 (valid!772 (_2!1489 (updateHelperNewKey!73 thiss!1248 key!828 v!309 (index!3667 lt!82321)))))))

(declare-fun b!161825 () Bool)

(assert (=> b!161825 (= e!105885 e!105884)))

(declare-fun res!76668 () Bool)

(assert (=> b!161825 (=> (not res!76668) (not e!105884))))

(assert (=> b!161825 (= res!76668 (and (not (is-Undefined!374 lt!82321)) (is-MissingVacant!374 lt!82321)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6060 (_ BitVec 32)) SeekEntryResult!374)

(assert (=> b!161825 (= lt!82321 (seekEntryOrOpen!0 key!828 (_keys!5099 thiss!1248) (mask!7902 thiss!1248)))))

(declare-fun b!161826 () Bool)

(declare-fun e!105886 () Bool)

(declare-fun mapRes!5924 () Bool)

(assert (=> b!161826 (= e!105881 (and e!105886 mapRes!5924))))

(declare-fun condMapEmpty!5924 () Bool)

(declare-fun mapDefault!5924 () ValueCell!1402)

