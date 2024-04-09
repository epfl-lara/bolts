; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16224 () Bool)

(assert start!16224)

(declare-fun b!161673 () Bool)

(declare-fun b_free!3673 () Bool)

(declare-fun b_next!3673 () Bool)

(assert (=> b!161673 (= b_free!3673 (not b_next!3673))))

(declare-fun tp!13589 () Bool)

(declare-fun b_and!10105 () Bool)

(assert (=> b!161673 (= tp!13589 b_and!10105)))

(declare-fun res!76613 () Bool)

(declare-fun e!105733 () Bool)

(assert (=> start!16224 (=> (not res!76613) (not e!105733))))

(declare-datatypes ((V!4281 0))(
  ( (V!4282 (val!1782 Int)) )
))
(declare-datatypes ((ValueCell!1394 0))(
  ( (ValueCellFull!1394 (v!3643 V!4281)) (EmptyCell!1394) )
))
(declare-datatypes ((array!6028 0))(
  ( (array!6029 (arr!2858 (Array (_ BitVec 32) (_ BitVec 64))) (size!3142 (_ BitVec 32))) )
))
(declare-datatypes ((array!6030 0))(
  ( (array!6031 (arr!2859 (Array (_ BitVec 32) ValueCell!1394)) (size!3143 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1696 0))(
  ( (LongMapFixedSize!1697 (defaultEntry!3290 Int) (mask!7890 (_ BitVec 32)) (extraKeys!3031 (_ BitVec 32)) (zeroValue!3133 V!4281) (minValue!3133 V!4281) (_size!897 (_ BitVec 32)) (_keys!5091 array!6028) (_values!3273 array!6030) (_vacant!897 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1696)

(declare-fun valid!767 (LongMapFixedSize!1696) Bool)

(assert (=> start!16224 (= res!76613 (valid!767 thiss!1248))))

(assert (=> start!16224 e!105733))

(declare-fun e!105734 () Bool)

(assert (=> start!16224 e!105734))

(assert (=> start!16224 true))

(declare-fun b!161670 () Bool)

(declare-fun e!105731 () Bool)

(declare-fun tp_is_empty!3475 () Bool)

(assert (=> b!161670 (= e!105731 tp_is_empty!3475)))

(declare-fun b!161671 () Bool)

(declare-fun res!76612 () Bool)

(assert (=> b!161671 (=> (not res!76612) (not e!105733))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!161671 (= res!76612 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!5900 () Bool)

(declare-fun mapRes!5900 () Bool)

(assert (=> mapIsEmpty!5900 mapRes!5900))

(declare-fun b!161672 () Bool)

(declare-datatypes ((SeekEntryResult!368 0))(
  ( (MissingZero!368 (index!3640 (_ BitVec 32))) (Found!368 (index!3641 (_ BitVec 32))) (Intermediate!368 (undefined!1180 Bool) (index!3642 (_ BitVec 32)) (x!17864 (_ BitVec 32))) (Undefined!368) (MissingVacant!368 (index!3643 (_ BitVec 32))) )
))
(declare-fun lt!82289 () SeekEntryResult!368)

(assert (=> b!161672 (= e!105733 (and (not (is-Undefined!368 lt!82289)) (is-MissingVacant!368 lt!82289) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)) (= key!828 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6028 (_ BitVec 32)) SeekEntryResult!368)

(assert (=> b!161672 (= lt!82289 (seekEntryOrOpen!0 key!828 (_keys!5091 thiss!1248) (mask!7890 thiss!1248)))))

(declare-fun e!105732 () Bool)

(declare-fun array_inv!1815 (array!6028) Bool)

(declare-fun array_inv!1816 (array!6030) Bool)

(assert (=> b!161673 (= e!105734 (and tp!13589 tp_is_empty!3475 (array_inv!1815 (_keys!5091 thiss!1248)) (array_inv!1816 (_values!3273 thiss!1248)) e!105732))))

(declare-fun b!161674 () Bool)

(declare-fun e!105730 () Bool)

(assert (=> b!161674 (= e!105730 tp_is_empty!3475)))

(declare-fun b!161675 () Bool)

(assert (=> b!161675 (= e!105732 (and e!105731 mapRes!5900))))

(declare-fun condMapEmpty!5900 () Bool)

(declare-fun mapDefault!5900 () ValueCell!1394)

