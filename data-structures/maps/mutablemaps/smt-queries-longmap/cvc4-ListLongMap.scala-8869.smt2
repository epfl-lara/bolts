; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107682 () Bool)

(assert start!107682)

(declare-fun b!1273876 () Bool)

(declare-fun b_free!27761 () Bool)

(declare-fun b_next!27761 () Bool)

(assert (=> b!1273876 (= b_free!27761 (not b_next!27761))))

(declare-fun tp!97846 () Bool)

(declare-fun b_and!45827 () Bool)

(assert (=> b!1273876 (= tp!97846 b_and!45827)))

(declare-fun b!1273870 () Bool)

(declare-fun res!847071 () Bool)

(declare-fun e!726946 () Bool)

(assert (=> b!1273870 (=> (not res!847071) (not e!726946))))

(declare-datatypes ((V!49367 0))(
  ( (V!49368 (val!16640 Int)) )
))
(declare-datatypes ((ValueCell!15712 0))(
  ( (ValueCellFull!15712 (v!19275 V!49367)) (EmptyCell!15712) )
))
(declare-datatypes ((array!83487 0))(
  ( (array!83488 (arr!40259 (Array (_ BitVec 32) ValueCell!15712)) (size!40807 (_ BitVec 32))) )
))
(declare-datatypes ((array!83489 0))(
  ( (array!83490 (arr!40260 (Array (_ BitVec 32) (_ BitVec 64))) (size!40808 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6188 0))(
  ( (LongMapFixedSize!6189 (defaultEntry!6740 Int) (mask!34533 (_ BitVec 32)) (extraKeys!6419 (_ BitVec 32)) (zeroValue!6525 V!49367) (minValue!6525 V!49367) (_size!3149 (_ BitVec 32)) (_keys!12152 array!83489) (_values!6763 array!83487) (_vacant!3149 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6188)

(declare-fun arrayCountValidKeys!0 (array!83489 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1273870 (= res!847071 (= (arrayCountValidKeys!0 (_keys!12152 thiss!1551) #b00000000000000000000000000000000 (size!40808 (_keys!12152 thiss!1551))) (_size!3149 thiss!1551)))))

(declare-fun res!847069 () Bool)

(assert (=> start!107682 (=> (not res!847069) (not e!726946))))

(declare-fun simpleValid!476 (LongMapFixedSize!6188) Bool)

(assert (=> start!107682 (= res!847069 (simpleValid!476 thiss!1551))))

(assert (=> start!107682 e!726946))

(declare-fun e!726948 () Bool)

(assert (=> start!107682 e!726948))

(declare-fun b!1273871 () Bool)

(declare-fun res!847070 () Bool)

(assert (=> b!1273871 (=> (not res!847070) (not e!726946))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83489 (_ BitVec 32)) Bool)

(assert (=> b!1273871 (= res!847070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12152 thiss!1551) (mask!34533 thiss!1551)))))

(declare-fun b!1273872 () Bool)

(declare-fun e!726949 () Bool)

(declare-fun e!726951 () Bool)

(declare-fun mapRes!51334 () Bool)

(assert (=> b!1273872 (= e!726949 (and e!726951 mapRes!51334))))

(declare-fun condMapEmpty!51334 () Bool)

(declare-fun mapDefault!51334 () ValueCell!15712)

