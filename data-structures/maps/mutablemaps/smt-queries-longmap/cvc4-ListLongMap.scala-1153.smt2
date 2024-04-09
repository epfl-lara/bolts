; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24282 () Bool)

(assert start!24282)

(declare-fun b!253825 () Bool)

(declare-fun b_free!6671 () Bool)

(declare-fun b_next!6671 () Bool)

(assert (=> b!253825 (= b_free!6671 (not b_next!6671))))

(declare-fun tp!23300 () Bool)

(declare-fun b_and!13731 () Bool)

(assert (=> b!253825 (= tp!23300 b_and!13731)))

(declare-fun mapNonEmpty!11115 () Bool)

(declare-fun mapRes!11115 () Bool)

(declare-fun tp!23301 () Bool)

(declare-fun e!164544 () Bool)

(assert (=> mapNonEmpty!11115 (= mapRes!11115 (and tp!23301 e!164544))))

(declare-datatypes ((V!8357 0))(
  ( (V!8358 (val!3311 Int)) )
))
(declare-datatypes ((ValueCell!2923 0))(
  ( (ValueCellFull!2923 (v!5381 V!8357)) (EmptyCell!2923) )
))
(declare-fun mapRest!11115 () (Array (_ BitVec 32) ValueCell!2923))

(declare-datatypes ((array!12396 0))(
  ( (array!12397 (arr!5873 (Array (_ BitVec 32) ValueCell!2923)) (size!6220 (_ BitVec 32))) )
))
(declare-datatypes ((array!12398 0))(
  ( (array!12399 (arr!5874 (Array (_ BitVec 32) (_ BitVec 64))) (size!6221 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3746 0))(
  ( (LongMapFixedSize!3747 (defaultEntry!4686 Int) (mask!10926 (_ BitVec 32)) (extraKeys!4423 (_ BitVec 32)) (zeroValue!4527 V!8357) (minValue!4527 V!8357) (_size!1922 (_ BitVec 32)) (_keys!6840 array!12398) (_values!4669 array!12396) (_vacant!1922 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3746)

(declare-fun mapKey!11115 () (_ BitVec 32))

(declare-fun mapValue!11115 () ValueCell!2923)

(assert (=> mapNonEmpty!11115 (= (arr!5873 (_values!4669 thiss!1504)) (store mapRest!11115 mapKey!11115 mapValue!11115))))

(declare-fun mapIsEmpty!11115 () Bool)

(assert (=> mapIsEmpty!11115 mapRes!11115))

(declare-fun b!253806 () Bool)

(declare-fun c!42799 () Bool)

(declare-datatypes ((SeekEntryResult!1152 0))(
  ( (MissingZero!1152 (index!6778 (_ BitVec 32))) (Found!1152 (index!6779 (_ BitVec 32))) (Intermediate!1152 (undefined!1964 Bool) (index!6780 (_ BitVec 32)) (x!24844 (_ BitVec 32))) (Undefined!1152) (MissingVacant!1152 (index!6781 (_ BitVec 32))) )
))
(declare-fun lt!127254 () SeekEntryResult!1152)

(assert (=> b!253806 (= c!42799 (is-MissingVacant!1152 lt!127254))))

(declare-fun e!164542 () Bool)

(declare-fun e!164547 () Bool)

(assert (=> b!253806 (= e!164542 e!164547)))

(declare-fun b!253807 () Bool)

(declare-fun e!164553 () Bool)

(declare-fun e!164548 () Bool)

(assert (=> b!253807 (= e!164553 e!164548)))

(declare-fun res!124267 () Bool)

(assert (=> b!253807 (=> (not res!124267) (not e!164548))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!253807 (= res!124267 (inRange!0 index!297 (mask!10926 thiss!1504)))))

(declare-datatypes ((Unit!7850 0))(
  ( (Unit!7851) )
))
(declare-fun lt!127257 () Unit!7850)

(declare-fun e!164552 () Unit!7850)

(assert (=> b!253807 (= lt!127257 e!164552)))

(declare-fun c!42798 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4870 0))(
  ( (tuple2!4871 (_1!2445 (_ BitVec 64)) (_2!2445 V!8357)) )
))
(declare-datatypes ((List!3775 0))(
  ( (Nil!3772) (Cons!3771 (h!4433 tuple2!4870) (t!8830 List!3775)) )
))
(declare-datatypes ((ListLongMap!3797 0))(
  ( (ListLongMap!3798 (toList!1914 List!3775)) )
))
(declare-fun contains!1838 (ListLongMap!3797 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1437 (array!12398 array!12396 (_ BitVec 32) (_ BitVec 32) V!8357 V!8357 (_ BitVec 32) Int) ListLongMap!3797)

(assert (=> b!253807 (= c!42798 (contains!1838 (getCurrentListMap!1437 (_keys!6840 thiss!1504) (_values!4669 thiss!1504) (mask!10926 thiss!1504) (extraKeys!4423 thiss!1504) (zeroValue!4527 thiss!1504) (minValue!4527 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4686 thiss!1504)) key!932))))

(declare-fun b!253808 () Bool)

(declare-fun e!164551 () Bool)

(assert (=> b!253808 (= e!164551 e!164553)))

(declare-fun res!124266 () Bool)

(assert (=> b!253808 (=> (not res!124266) (not e!164553))))

(assert (=> b!253808 (= res!124266 (or (= lt!127254 (MissingZero!1152 index!297)) (= lt!127254 (MissingVacant!1152 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12398 (_ BitVec 32)) SeekEntryResult!1152)

(assert (=> b!253808 (= lt!127254 (seekEntryOrOpen!0 key!932 (_keys!6840 thiss!1504) (mask!10926 thiss!1504)))))

(declare-fun b!253809 () Bool)

(declare-fun res!124260 () Bool)

(declare-fun e!164539 () Bool)

(assert (=> b!253809 (=> res!124260 e!164539)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!253809 (= res!124260 (not (validKeyInArray!0 key!932)))))

(declare-fun b!253810 () Bool)

(declare-fun e!164543 () Bool)

(declare-fun e!164540 () Bool)

(assert (=> b!253810 (= e!164543 (and e!164540 mapRes!11115))))

(declare-fun condMapEmpty!11115 () Bool)

(declare-fun mapDefault!11115 () ValueCell!2923)

