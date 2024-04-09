; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18004 () Bool)

(assert start!18004)

(declare-fun b!179113 () Bool)

(declare-fun b_free!4417 () Bool)

(declare-fun b_next!4417 () Bool)

(assert (=> b!179113 (= b_free!4417 (not b_next!4417))))

(declare-fun tp!15972 () Bool)

(declare-fun b_and!10963 () Bool)

(assert (=> b!179113 (= tp!15972 b_and!10963)))

(declare-fun b!179107 () Bool)

(declare-fun e!118028 () Bool)

(declare-datatypes ((V!5233 0))(
  ( (V!5234 (val!2139 Int)) )
))
(declare-datatypes ((ValueCell!1751 0))(
  ( (ValueCellFull!1751 (v!4021 V!5233)) (EmptyCell!1751) )
))
(declare-datatypes ((array!7540 0))(
  ( (array!7541 (arr!3572 (Array (_ BitVec 32) (_ BitVec 64))) (size!3880 (_ BitVec 32))) )
))
(declare-datatypes ((array!7542 0))(
  ( (array!7543 (arr!3573 (Array (_ BitVec 32) ValueCell!1751)) (size!3881 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2410 0))(
  ( (LongMapFixedSize!2411 (defaultEntry!3678 Int) (mask!8654 (_ BitVec 32)) (extraKeys!3415 (_ BitVec 32)) (zeroValue!3519 V!5233) (minValue!3519 V!5233) (_size!1254 (_ BitVec 32)) (_keys!5563 array!7540) (_values!3661 array!7542) (_vacant!1254 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2410)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7540 (_ BitVec 32)) Bool)

(assert (=> b!179107 (= e!118028 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5563 thiss!1248) (mask!8654 thiss!1248))))))

(declare-fun b!179108 () Bool)

(declare-fun res!84841 () Bool)

(assert (=> b!179108 (=> (not res!84841) (not e!118028))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!179108 (= res!84841 (validMask!0 (mask!8654 thiss!1248)))))

(declare-fun b!179109 () Bool)

(declare-fun res!84839 () Bool)

(assert (=> b!179109 (=> (not res!84839) (not e!118028))))

(assert (=> b!179109 (= res!84839 (and (= (size!3881 (_values!3661 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8654 thiss!1248))) (= (size!3880 (_keys!5563 thiss!1248)) (size!3881 (_values!3661 thiss!1248))) (bvsge (mask!8654 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3415 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3415 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!179110 () Bool)

(declare-fun res!84844 () Bool)

(assert (=> b!179110 (=> (not res!84844) (not e!118028))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!179110 (= res!84844 (not (= key!828 (bvneg key!828))))))

(declare-fun res!84840 () Bool)

(assert (=> start!18004 (=> (not res!84840) (not e!118028))))

(declare-fun valid!1000 (LongMapFixedSize!2410) Bool)

(assert (=> start!18004 (= res!84840 (valid!1000 thiss!1248))))

(assert (=> start!18004 e!118028))

(declare-fun e!118029 () Bool)

(assert (=> start!18004 e!118029))

(assert (=> start!18004 true))

(declare-fun b!179111 () Bool)

(declare-fun e!118026 () Bool)

(declare-fun tp_is_empty!4189 () Bool)

(assert (=> b!179111 (= e!118026 tp_is_empty!4189)))

(declare-fun b!179112 () Bool)

(declare-fun res!84842 () Bool)

(assert (=> b!179112 (=> (not res!84842) (not e!118028))))

(declare-datatypes ((tuple2!3320 0))(
  ( (tuple2!3321 (_1!1670 (_ BitVec 64)) (_2!1670 V!5233)) )
))
(declare-datatypes ((List!2289 0))(
  ( (Nil!2286) (Cons!2285 (h!2910 tuple2!3320) (t!7139 List!2289)) )
))
(declare-datatypes ((ListLongMap!2261 0))(
  ( (ListLongMap!2262 (toList!1146 List!2289)) )
))
(declare-fun contains!1214 (ListLongMap!2261 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!793 (array!7540 array!7542 (_ BitVec 32) (_ BitVec 32) V!5233 V!5233 (_ BitVec 32) Int) ListLongMap!2261)

(assert (=> b!179112 (= res!84842 (not (contains!1214 (getCurrentListMap!793 (_keys!5563 thiss!1248) (_values!3661 thiss!1248) (mask!8654 thiss!1248) (extraKeys!3415 thiss!1248) (zeroValue!3519 thiss!1248) (minValue!3519 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3678 thiss!1248)) key!828)))))

(declare-fun e!118025 () Bool)

(declare-fun array_inv!2289 (array!7540) Bool)

(declare-fun array_inv!2290 (array!7542) Bool)

(assert (=> b!179113 (= e!118029 (and tp!15972 tp_is_empty!4189 (array_inv!2289 (_keys!5563 thiss!1248)) (array_inv!2290 (_values!3661 thiss!1248)) e!118025))))

(declare-fun b!179114 () Bool)

(declare-fun e!118027 () Bool)

(assert (=> b!179114 (= e!118027 tp_is_empty!4189)))

(declare-fun mapNonEmpty!7168 () Bool)

(declare-fun mapRes!7168 () Bool)

(declare-fun tp!15973 () Bool)

(assert (=> mapNonEmpty!7168 (= mapRes!7168 (and tp!15973 e!118027))))

(declare-fun mapRest!7168 () (Array (_ BitVec 32) ValueCell!1751))

(declare-fun mapKey!7168 () (_ BitVec 32))

(declare-fun mapValue!7168 () ValueCell!1751)

(assert (=> mapNonEmpty!7168 (= (arr!3573 (_values!3661 thiss!1248)) (store mapRest!7168 mapKey!7168 mapValue!7168))))

(declare-fun b!179115 () Bool)

(declare-fun res!84843 () Bool)

(assert (=> b!179115 (=> (not res!84843) (not e!118028))))

(declare-datatypes ((SeekEntryResult!589 0))(
  ( (MissingZero!589 (index!4524 (_ BitVec 32))) (Found!589 (index!4525 (_ BitVec 32))) (Intermediate!589 (undefined!1401 Bool) (index!4526 (_ BitVec 32)) (x!19609 (_ BitVec 32))) (Undefined!589) (MissingVacant!589 (index!4527 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7540 (_ BitVec 32)) SeekEntryResult!589)

(assert (=> b!179115 (= res!84843 (is-Undefined!589 (seekEntryOrOpen!0 key!828 (_keys!5563 thiss!1248) (mask!8654 thiss!1248))))))

(declare-fun b!179116 () Bool)

(assert (=> b!179116 (= e!118025 (and e!118026 mapRes!7168))))

(declare-fun condMapEmpty!7168 () Bool)

(declare-fun mapDefault!7168 () ValueCell!1751)

