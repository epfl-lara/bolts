; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89728 () Bool)

(assert start!89728)

(declare-fun b!1028300 () Bool)

(declare-fun b_free!20585 () Bool)

(declare-fun b_next!20585 () Bool)

(assert (=> b!1028300 (= b_free!20585 (not b_next!20585))))

(declare-fun tp!72809 () Bool)

(declare-fun b_and!32889 () Bool)

(assert (=> b!1028300 (= tp!72809 b_and!32889)))

(declare-fun b!1028297 () Bool)

(declare-fun e!580496 () Bool)

(declare-datatypes ((V!37279 0))(
  ( (V!37280 (val!12203 Int)) )
))
(declare-datatypes ((ValueCell!11449 0))(
  ( (ValueCellFull!11449 (v!14775 V!37279)) (EmptyCell!11449) )
))
(declare-datatypes ((Unit!33540 0))(
  ( (Unit!33541) )
))
(declare-datatypes ((array!64648 0))(
  ( (array!64649 (arr!31127 (Array (_ BitVec 32) (_ BitVec 64))) (size!31642 (_ BitVec 32))) )
))
(declare-datatypes ((array!64650 0))(
  ( (array!64651 (arr!31128 (Array (_ BitVec 32) ValueCell!11449)) (size!31643 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5492 0))(
  ( (LongMapFixedSize!5493 (defaultEntry!6104 Int) (mask!29834 (_ BitVec 32)) (extraKeys!5836 (_ BitVec 32)) (zeroValue!5940 V!37279) (minValue!5940 V!37279) (_size!2801 (_ BitVec 32)) (_keys!11255 array!64648) (_values!6127 array!64650) (_vacant!2801 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15632 0))(
  ( (tuple2!15633 (_1!7826 Unit!33540) (_2!7826 LongMapFixedSize!5492)) )
))
(declare-fun lt!452950 () tuple2!15632)

(assert (=> b!1028297 (= e!580496 (or (not (= (size!31643 (_values!6127 (_2!7826 lt!452950))) (bvadd #b00000000000000000000000000000001 (mask!29834 (_2!7826 lt!452950))))) (= (size!31642 (_keys!11255 (_2!7826 lt!452950))) (size!31643 (_values!6127 (_2!7826 lt!452950))))))))

(declare-fun b!1028298 () Bool)

(declare-fun e!580494 () Bool)

(declare-fun e!580493 () Bool)

(declare-fun mapRes!37893 () Bool)

(assert (=> b!1028298 (= e!580494 (and e!580493 mapRes!37893))))

(declare-fun condMapEmpty!37893 () Bool)

(declare-fun thiss!1427 () LongMapFixedSize!5492)

(declare-fun mapDefault!37893 () ValueCell!11449)

