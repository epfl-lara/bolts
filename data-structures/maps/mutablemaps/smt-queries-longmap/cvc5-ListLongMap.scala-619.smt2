; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16074 () Bool)

(assert start!16074)

(declare-fun b!159391 () Bool)

(declare-fun b_free!3523 () Bool)

(declare-fun b_next!3523 () Bool)

(assert (=> b!159391 (= b_free!3523 (not b_next!3523))))

(declare-fun tp!13138 () Bool)

(declare-fun b_and!9955 () Bool)

(assert (=> b!159391 (= tp!13138 b_and!9955)))

(declare-fun b!159385 () Bool)

(declare-fun e!104334 () Bool)

(declare-fun tp_is_empty!3325 () Bool)

(assert (=> b!159385 (= e!104334 tp_is_empty!3325)))

(declare-fun mapNonEmpty!5675 () Bool)

(declare-fun mapRes!5675 () Bool)

(declare-fun tp!13139 () Bool)

(assert (=> mapNonEmpty!5675 (= mapRes!5675 (and tp!13139 e!104334))))

(declare-datatypes ((V!4081 0))(
  ( (V!4082 (val!1707 Int)) )
))
(declare-datatypes ((ValueCell!1319 0))(
  ( (ValueCellFull!1319 (v!3568 V!4081)) (EmptyCell!1319) )
))
(declare-fun mapValue!5675 () ValueCell!1319)

(declare-fun mapKey!5675 () (_ BitVec 32))

(declare-datatypes ((array!5728 0))(
  ( (array!5729 (arr!2708 (Array (_ BitVec 32) (_ BitVec 64))) (size!2992 (_ BitVec 32))) )
))
(declare-datatypes ((array!5730 0))(
  ( (array!5731 (arr!2709 (Array (_ BitVec 32) ValueCell!1319)) (size!2993 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1546 0))(
  ( (LongMapFixedSize!1547 (defaultEntry!3215 Int) (mask!7765 (_ BitVec 32)) (extraKeys!2956 (_ BitVec 32)) (zeroValue!3058 V!4081) (minValue!3058 V!4081) (_size!822 (_ BitVec 32)) (_keys!5016 array!5728) (_values!3198 array!5730) (_vacant!822 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1546)

(declare-fun mapRest!5675 () (Array (_ BitVec 32) ValueCell!1319))

(assert (=> mapNonEmpty!5675 (= (arr!2709 (_values!3198 thiss!1248)) (store mapRest!5675 mapKey!5675 mapValue!5675))))

(declare-fun b!159386 () Bool)

(declare-fun res!75321 () Bool)

(declare-fun e!104339 () Bool)

(assert (=> b!159386 (=> (not res!75321) (not e!104339))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2866 0))(
  ( (tuple2!2867 (_1!1443 (_ BitVec 64)) (_2!1443 V!4081)) )
))
(declare-datatypes ((List!1920 0))(
  ( (Nil!1917) (Cons!1916 (h!2529 tuple2!2866) (t!6730 List!1920)) )
))
(declare-datatypes ((ListLongMap!1875 0))(
  ( (ListLongMap!1876 (toList!953 List!1920)) )
))
(declare-fun contains!983 (ListLongMap!1875 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!613 (array!5728 array!5730 (_ BitVec 32) (_ BitVec 32) V!4081 V!4081 (_ BitVec 32) Int) ListLongMap!1875)

(assert (=> b!159386 (= res!75321 (contains!983 (getCurrentListMap!613 (_keys!5016 thiss!1248) (_values!3198 thiss!1248) (mask!7765 thiss!1248) (extraKeys!2956 thiss!1248) (zeroValue!3058 thiss!1248) (minValue!3058 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3215 thiss!1248)) key!828))))

(declare-fun res!75322 () Bool)

(assert (=> start!16074 (=> (not res!75322) (not e!104339))))

(declare-fun valid!719 (LongMapFixedSize!1546) Bool)

(assert (=> start!16074 (= res!75322 (valid!719 thiss!1248))))

(assert (=> start!16074 e!104339))

(declare-fun e!104337 () Bool)

(assert (=> start!16074 e!104337))

(assert (=> start!16074 true))

(declare-fun b!159387 () Bool)

(declare-fun res!75320 () Bool)

(assert (=> b!159387 (=> (not res!75320) (not e!104339))))

(declare-datatypes ((SeekEntryResult!322 0))(
  ( (MissingZero!322 (index!3456 (_ BitVec 32))) (Found!322 (index!3457 (_ BitVec 32))) (Intermediate!322 (undefined!1134 Bool) (index!3458 (_ BitVec 32)) (x!17618 (_ BitVec 32))) (Undefined!322) (MissingVacant!322 (index!3459 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5728 (_ BitVec 32)) SeekEntryResult!322)

(assert (=> b!159387 (= res!75320 (is-Undefined!322 (seekEntryOrOpen!0 key!828 (_keys!5016 thiss!1248) (mask!7765 thiss!1248))))))

(declare-fun b!159388 () Bool)

(declare-fun res!75319 () Bool)

(assert (=> b!159388 (=> (not res!75319) (not e!104339))))

(assert (=> b!159388 (= res!75319 (and (= (size!2993 (_values!3198 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7765 thiss!1248))) (= (size!2992 (_keys!5016 thiss!1248)) (size!2993 (_values!3198 thiss!1248))) (bvsge (mask!7765 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2956 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2956 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159389 () Bool)

(assert (=> b!159389 (= e!104339 false)))

(declare-fun lt!82019 () Bool)

(declare-datatypes ((List!1921 0))(
  ( (Nil!1918) (Cons!1917 (h!2530 (_ BitVec 64)) (t!6731 List!1921)) )
))
(declare-fun arrayNoDuplicates!0 (array!5728 (_ BitVec 32) List!1921) Bool)

(assert (=> b!159389 (= lt!82019 (arrayNoDuplicates!0 (_keys!5016 thiss!1248) #b00000000000000000000000000000000 Nil!1918))))

(declare-fun b!159390 () Bool)

(declare-fun res!75317 () Bool)

(assert (=> b!159390 (=> (not res!75317) (not e!104339))))

(assert (=> b!159390 (= res!75317 (not (= key!828 (bvneg key!828))))))

(declare-fun e!104336 () Bool)

(declare-fun array_inv!1715 (array!5728) Bool)

(declare-fun array_inv!1716 (array!5730) Bool)

(assert (=> b!159391 (= e!104337 (and tp!13138 tp_is_empty!3325 (array_inv!1715 (_keys!5016 thiss!1248)) (array_inv!1716 (_values!3198 thiss!1248)) e!104336))))

(declare-fun b!159392 () Bool)

(declare-fun e!104338 () Bool)

(assert (=> b!159392 (= e!104338 tp_is_empty!3325)))

(declare-fun b!159393 () Bool)

(declare-fun res!75323 () Bool)

(assert (=> b!159393 (=> (not res!75323) (not e!104339))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159393 (= res!75323 (validMask!0 (mask!7765 thiss!1248)))))

(declare-fun b!159394 () Bool)

(assert (=> b!159394 (= e!104336 (and e!104338 mapRes!5675))))

(declare-fun condMapEmpty!5675 () Bool)

(declare-fun mapDefault!5675 () ValueCell!1319)

