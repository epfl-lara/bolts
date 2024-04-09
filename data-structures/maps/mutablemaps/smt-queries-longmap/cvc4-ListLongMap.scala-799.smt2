; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19208 () Bool)

(assert start!19208)

(declare-fun b!188847 () Bool)

(declare-fun b_free!4637 () Bool)

(declare-fun b_next!4637 () Bool)

(assert (=> b!188847 (= b_free!4637 (not b_next!4637))))

(declare-fun tp!16738 () Bool)

(declare-fun b_and!11289 () Bool)

(assert (=> b!188847 (= tp!16738 b_and!11289)))

(declare-fun b!188844 () Bool)

(declare-fun res!89296 () Bool)

(declare-fun e!124301 () Bool)

(assert (=> b!188844 (=> (not res!89296) (not e!124301))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!188844 (= res!89296 (not (= key!828 (bvneg key!828))))))

(declare-fun b!188845 () Bool)

(declare-fun res!89295 () Bool)

(declare-fun e!124296 () Bool)

(assert (=> b!188845 (=> (not res!89295) (not e!124296))))

(declare-datatypes ((V!5525 0))(
  ( (V!5526 (val!2249 Int)) )
))
(declare-datatypes ((ValueCell!1861 0))(
  ( (ValueCellFull!1861 (v!4164 V!5525)) (EmptyCell!1861) )
))
(declare-datatypes ((array!8042 0))(
  ( (array!8043 (arr!3792 (Array (_ BitVec 32) (_ BitVec 64))) (size!4112 (_ BitVec 32))) )
))
(declare-datatypes ((array!8044 0))(
  ( (array!8045 (arr!3793 (Array (_ BitVec 32) ValueCell!1861)) (size!4113 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2630 0))(
  ( (LongMapFixedSize!2631 (defaultEntry!3853 Int) (mask!9028 (_ BitVec 32)) (extraKeys!3590 (_ BitVec 32)) (zeroValue!3694 V!5525) (minValue!3694 V!5525) (_size!1364 (_ BitVec 32)) (_keys!5816 array!8042) (_values!3836 array!8044) (_vacant!1364 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2630)

(declare-datatypes ((List!2419 0))(
  ( (Nil!2416) (Cons!2415 (h!3052 (_ BitVec 64)) (t!7327 List!2419)) )
))
(declare-fun arrayNoDuplicates!0 (array!8042 (_ BitVec 32) List!2419) Bool)

(assert (=> b!188845 (= res!89295 (arrayNoDuplicates!0 (_keys!5816 thiss!1248) #b00000000000000000000000000000000 Nil!2416))))

(declare-fun mapNonEmpty!7603 () Bool)

(declare-fun mapRes!7603 () Bool)

(declare-fun tp!16737 () Bool)

(declare-fun e!124300 () Bool)

(assert (=> mapNonEmpty!7603 (= mapRes!7603 (and tp!16737 e!124300))))

(declare-fun mapKey!7603 () (_ BitVec 32))

(declare-fun mapValue!7603 () ValueCell!1861)

(declare-fun mapRest!7603 () (Array (_ BitVec 32) ValueCell!1861))

(assert (=> mapNonEmpty!7603 (= (arr!3793 (_values!3836 thiss!1248)) (store mapRest!7603 mapKey!7603 mapValue!7603))))

(declare-fun b!188846 () Bool)

(declare-fun e!124297 () Bool)

(declare-fun tp_is_empty!4409 () Bool)

(assert (=> b!188846 (= e!124297 tp_is_empty!4409)))

(declare-fun e!124298 () Bool)

(declare-fun e!124295 () Bool)

(declare-fun array_inv!2447 (array!8042) Bool)

(declare-fun array_inv!2448 (array!8044) Bool)

(assert (=> b!188847 (= e!124298 (and tp!16738 tp_is_empty!4409 (array_inv!2447 (_keys!5816 thiss!1248)) (array_inv!2448 (_values!3836 thiss!1248)) e!124295))))

(declare-fun b!188848 () Bool)

(declare-fun e!124302 () Bool)

(assert (=> b!188848 (= e!124302 e!124296)))

(declare-fun res!89292 () Bool)

(assert (=> b!188848 (=> (not res!89292) (not e!124296))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!188848 (= res!89292 (validMask!0 (mask!9028 thiss!1248)))))

(declare-datatypes ((Unit!5694 0))(
  ( (Unit!5695) )
))
(declare-fun lt!93504 () Unit!5694)

(declare-fun e!124299 () Unit!5694)

(assert (=> b!188848 (= lt!93504 e!124299)))

(declare-fun c!33925 () Bool)

(declare-datatypes ((tuple2!3496 0))(
  ( (tuple2!3497 (_1!1758 (_ BitVec 64)) (_2!1758 V!5525)) )
))
(declare-datatypes ((List!2420 0))(
  ( (Nil!2417) (Cons!2416 (h!3053 tuple2!3496) (t!7328 List!2420)) )
))
(declare-datatypes ((ListLongMap!2427 0))(
  ( (ListLongMap!2428 (toList!1229 List!2420)) )
))
(declare-fun contains!1328 (ListLongMap!2427 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!872 (array!8042 array!8044 (_ BitVec 32) (_ BitVec 32) V!5525 V!5525 (_ BitVec 32) Int) ListLongMap!2427)

(assert (=> b!188848 (= c!33925 (contains!1328 (getCurrentListMap!872 (_keys!5816 thiss!1248) (_values!3836 thiss!1248) (mask!9028 thiss!1248) (extraKeys!3590 thiss!1248) (zeroValue!3694 thiss!1248) (minValue!3694 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3853 thiss!1248)) key!828))))

(declare-fun e!124303 () Bool)

(declare-fun b!188849 () Bool)

(declare-datatypes ((SeekEntryResult!668 0))(
  ( (MissingZero!668 (index!4842 (_ BitVec 32))) (Found!668 (index!4843 (_ BitVec 32))) (Intermediate!668 (undefined!1480 Bool) (index!4844 (_ BitVec 32)) (x!20390 (_ BitVec 32))) (Undefined!668) (MissingVacant!668 (index!4845 (_ BitVec 32))) )
))
(declare-fun lt!93506 () SeekEntryResult!668)

(assert (=> b!188849 (= e!124303 (= (select (arr!3792 (_keys!5816 thiss!1248)) (index!4843 lt!93506)) key!828))))

(declare-fun b!188850 () Bool)

(declare-fun res!89297 () Bool)

(assert (=> b!188850 (=> (not res!89297) (not e!124296))))

(assert (=> b!188850 (= res!89297 (and (= (size!4113 (_values!3836 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9028 thiss!1248))) (= (size!4112 (_keys!5816 thiss!1248)) (size!4113 (_values!3836 thiss!1248))) (bvsge (mask!9028 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3590 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3590 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!188851 () Bool)

(assert (=> b!188851 (= e!124295 (and e!124297 mapRes!7603))))

(declare-fun condMapEmpty!7603 () Bool)

(declare-fun mapDefault!7603 () ValueCell!1861)

