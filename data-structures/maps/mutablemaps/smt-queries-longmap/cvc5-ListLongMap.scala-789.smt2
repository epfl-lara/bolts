; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18810 () Bool)

(assert start!18810)

(declare-fun b!185701 () Bool)

(declare-fun b_free!4573 () Bool)

(declare-fun b_next!4573 () Bool)

(assert (=> b!185701 (= b_free!4573 (not b_next!4573))))

(declare-fun tp!16518 () Bool)

(declare-fun b_and!11193 () Bool)

(assert (=> b!185701 (= tp!16518 b_and!11193)))

(declare-fun b!185695 () Bool)

(declare-fun e!122192 () Bool)

(declare-fun tp_is_empty!4345 () Bool)

(assert (=> b!185695 (= e!122192 tp_is_empty!4345)))

(declare-fun b!185696 () Bool)

(declare-fun res!87866 () Bool)

(declare-fun e!122193 () Bool)

(assert (=> b!185696 (=> (not res!87866) (not e!122193))))

(declare-datatypes ((V!5441 0))(
  ( (V!5442 (val!2217 Int)) )
))
(declare-datatypes ((ValueCell!1829 0))(
  ( (ValueCellFull!1829 (v!4124 V!5441)) (EmptyCell!1829) )
))
(declare-datatypes ((array!7898 0))(
  ( (array!7899 (arr!3728 (Array (_ BitVec 32) (_ BitVec 64))) (size!4044 (_ BitVec 32))) )
))
(declare-datatypes ((array!7900 0))(
  ( (array!7901 (arr!3729 (Array (_ BitVec 32) ValueCell!1829)) (size!4045 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2566 0))(
  ( (LongMapFixedSize!2567 (defaultEntry!3785 Int) (mask!8898 (_ BitVec 32)) (extraKeys!3522 (_ BitVec 32)) (zeroValue!3626 V!5441) (minValue!3626 V!5441) (_size!1332 (_ BitVec 32)) (_keys!5726 array!7898) (_values!3768 array!7900) (_vacant!1332 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2566)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3448 0))(
  ( (tuple2!3449 (_1!1734 (_ BitVec 64)) (_2!1734 V!5441)) )
))
(declare-datatypes ((List!2383 0))(
  ( (Nil!2380) (Cons!2379 (h!3012 tuple2!3448) (t!7275 List!2383)) )
))
(declare-datatypes ((ListLongMap!2379 0))(
  ( (ListLongMap!2380 (toList!1205 List!2383)) )
))
(declare-fun contains!1295 (ListLongMap!2379 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!848 (array!7898 array!7900 (_ BitVec 32) (_ BitVec 32) V!5441 V!5441 (_ BitVec 32) Int) ListLongMap!2379)

(assert (=> b!185696 (= res!87866 (not (contains!1295 (getCurrentListMap!848 (_keys!5726 thiss!1248) (_values!3768 thiss!1248) (mask!8898 thiss!1248) (extraKeys!3522 thiss!1248) (zeroValue!3626 thiss!1248) (minValue!3626 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3785 thiss!1248)) key!828)))))

(declare-fun b!185697 () Bool)

(declare-fun e!122195 () Bool)

(assert (=> b!185697 (= e!122195 tp_is_empty!4345)))

(declare-fun mapNonEmpty!7479 () Bool)

(declare-fun mapRes!7479 () Bool)

(declare-fun tp!16517 () Bool)

(assert (=> mapNonEmpty!7479 (= mapRes!7479 (and tp!16517 e!122192))))

(declare-fun mapKey!7479 () (_ BitVec 32))

(declare-fun mapValue!7479 () ValueCell!1829)

(declare-fun mapRest!7479 () (Array (_ BitVec 32) ValueCell!1829))

(assert (=> mapNonEmpty!7479 (= (arr!3729 (_values!3768 thiss!1248)) (store mapRest!7479 mapKey!7479 mapValue!7479))))

(declare-fun b!185698 () Bool)

(declare-fun e!122196 () Bool)

(assert (=> b!185698 (= e!122196 e!122193)))

(declare-fun res!87865 () Bool)

(assert (=> b!185698 (=> (not res!87865) (not e!122193))))

(declare-datatypes ((SeekEntryResult!645 0))(
  ( (MissingZero!645 (index!4750 (_ BitVec 32))) (Found!645 (index!4751 (_ BitVec 32))) (Intermediate!645 (undefined!1457 Bool) (index!4752 (_ BitVec 32)) (x!20175 (_ BitVec 32))) (Undefined!645) (MissingVacant!645 (index!4753 (_ BitVec 32))) )
))
(declare-fun lt!91878 () SeekEntryResult!645)

(assert (=> b!185698 (= res!87865 (and (not (is-Undefined!645 lt!91878)) (not (is-MissingVacant!645 lt!91878)) (not (is-MissingZero!645 lt!91878)) (is-Found!645 lt!91878)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7898 (_ BitVec 32)) SeekEntryResult!645)

(assert (=> b!185698 (= lt!91878 (seekEntryOrOpen!0 key!828 (_keys!5726 thiss!1248) (mask!8898 thiss!1248)))))

(declare-fun mapIsEmpty!7479 () Bool)

(assert (=> mapIsEmpty!7479 mapRes!7479))

(declare-fun b!185699 () Bool)

(declare-fun res!87861 () Bool)

(assert (=> b!185699 (=> (not res!87861) (not e!122193))))

(assert (=> b!185699 (= res!87861 (and (= (size!4045 (_values!3768 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8898 thiss!1248))) (= (size!4044 (_keys!5726 thiss!1248)) (size!4045 (_values!3768 thiss!1248))) (bvsge (mask!8898 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3522 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3522 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!185700 () Bool)

(declare-fun res!87862 () Bool)

(assert (=> b!185700 (=> (not res!87862) (not e!122196))))

(assert (=> b!185700 (= res!87862 (not (= key!828 (bvneg key!828))))))

(declare-fun b!185694 () Bool)

(assert (=> b!185694 (= e!122193 false)))

(declare-fun lt!91879 () Bool)

(declare-datatypes ((List!2384 0))(
  ( (Nil!2381) (Cons!2380 (h!3013 (_ BitVec 64)) (t!7276 List!2384)) )
))
(declare-fun arrayNoDuplicates!0 (array!7898 (_ BitVec 32) List!2384) Bool)

(assert (=> b!185694 (= lt!91879 (arrayNoDuplicates!0 (_keys!5726 thiss!1248) #b00000000000000000000000000000000 Nil!2381))))

(declare-fun res!87860 () Bool)

(assert (=> start!18810 (=> (not res!87860) (not e!122196))))

(declare-fun valid!1051 (LongMapFixedSize!2566) Bool)

(assert (=> start!18810 (= res!87860 (valid!1051 thiss!1248))))

(assert (=> start!18810 e!122196))

(declare-fun e!122190 () Bool)

(assert (=> start!18810 e!122190))

(assert (=> start!18810 true))

(declare-fun e!122194 () Bool)

(declare-fun array_inv!2403 (array!7898) Bool)

(declare-fun array_inv!2404 (array!7900) Bool)

(assert (=> b!185701 (= e!122190 (and tp!16518 tp_is_empty!4345 (array_inv!2403 (_keys!5726 thiss!1248)) (array_inv!2404 (_values!3768 thiss!1248)) e!122194))))

(declare-fun b!185702 () Bool)

(assert (=> b!185702 (= e!122194 (and e!122195 mapRes!7479))))

(declare-fun condMapEmpty!7479 () Bool)

(declare-fun mapDefault!7479 () ValueCell!1829)

