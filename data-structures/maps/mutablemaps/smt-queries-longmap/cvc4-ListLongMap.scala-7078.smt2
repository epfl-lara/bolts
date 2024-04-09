; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89562 () Bool)

(assert start!89562)

(declare-fun b!1026776 () Bool)

(declare-fun b_free!20525 () Bool)

(declare-fun b_next!20525 () Bool)

(assert (=> b!1026776 (= b_free!20525 (not b_next!20525))))

(declare-fun tp!72622 () Bool)

(declare-fun b_and!32789 () Bool)

(assert (=> b!1026776 (= tp!72622 b_and!32789)))

(declare-fun mapNonEmpty!37796 () Bool)

(declare-fun mapRes!37796 () Bool)

(declare-fun tp!72621 () Bool)

(declare-fun e!579365 () Bool)

(assert (=> mapNonEmpty!37796 (= mapRes!37796 (and tp!72621 e!579365))))

(declare-datatypes ((V!37199 0))(
  ( (V!37200 (val!12173 Int)) )
))
(declare-datatypes ((ValueCell!11419 0))(
  ( (ValueCellFull!11419 (v!14743 V!37199)) (EmptyCell!11419) )
))
(declare-fun mapRest!37796 () (Array (_ BitVec 32) ValueCell!11419))

(declare-datatypes ((array!64524 0))(
  ( (array!64525 (arr!31067 (Array (_ BitVec 32) (_ BitVec 64))) (size!31581 (_ BitVec 32))) )
))
(declare-datatypes ((array!64526 0))(
  ( (array!64527 (arr!31068 (Array (_ BitVec 32) ValueCell!11419)) (size!31582 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5432 0))(
  ( (LongMapFixedSize!5433 (defaultEntry!6068 Int) (mask!29765 (_ BitVec 32)) (extraKeys!5800 (_ BitVec 32)) (zeroValue!5904 V!37199) (minValue!5904 V!37199) (_size!2771 (_ BitVec 32)) (_keys!11212 array!64524) (_values!6091 array!64526) (_vacant!2771 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5432)

(declare-fun mapKey!37796 () (_ BitVec 32))

(declare-fun mapValue!37796 () ValueCell!11419)

(assert (=> mapNonEmpty!37796 (= (arr!31068 (_values!6091 thiss!1427)) (store mapRest!37796 mapKey!37796 mapValue!37796))))

(declare-fun b!1026767 () Bool)

(declare-fun e!579364 () Bool)

(assert (=> b!1026767 (= e!579364 true)))

(declare-fun lt!451803 () Bool)

(declare-datatypes ((List!21896 0))(
  ( (Nil!21893) (Cons!21892 (h!23090 (_ BitVec 64)) (t!30965 List!21896)) )
))
(declare-fun arrayNoDuplicates!0 (array!64524 (_ BitVec 32) List!21896) Bool)

(assert (=> b!1026767 (= lt!451803 (arrayNoDuplicates!0 (_keys!11212 thiss!1427) #b00000000000000000000000000000000 Nil!21893))))

(declare-fun res!687391 () Bool)

(declare-fun e!579367 () Bool)

(assert (=> start!89562 (=> (not res!687391) (not e!579367))))

(declare-fun valid!2015 (LongMapFixedSize!5432) Bool)

(assert (=> start!89562 (= res!687391 (valid!2015 thiss!1427))))

(assert (=> start!89562 e!579367))

(declare-fun e!579361 () Bool)

(assert (=> start!89562 e!579361))

(assert (=> start!89562 true))

(declare-fun b!1026768 () Bool)

(declare-fun e!579366 () Bool)

(declare-fun e!579368 () Bool)

(assert (=> b!1026768 (= e!579366 (and e!579368 mapRes!37796))))

(declare-fun condMapEmpty!37796 () Bool)

(declare-fun mapDefault!37796 () ValueCell!11419)

