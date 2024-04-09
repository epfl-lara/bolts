; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16756 () Bool)

(assert start!16756)

(declare-fun b!168225 () Bool)

(declare-fun b_free!4049 () Bool)

(declare-fun b_next!4049 () Bool)

(assert (=> b!168225 (= b_free!4049 (not b_next!4049))))

(declare-fun tp!14748 () Bool)

(declare-fun b_and!10481 () Bool)

(assert (=> b!168225 (= tp!14748 b_and!10481)))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun b!168223 () Bool)

(declare-datatypes ((V!4781 0))(
  ( (V!4782 (val!1970 Int)) )
))
(declare-datatypes ((ValueCell!1582 0))(
  ( (ValueCellFull!1582 (v!3831 V!4781)) (EmptyCell!1582) )
))
(declare-datatypes ((array!6798 0))(
  ( (array!6799 (arr!3234 (Array (_ BitVec 32) (_ BitVec 64))) (size!3522 (_ BitVec 32))) )
))
(declare-datatypes ((array!6800 0))(
  ( (array!6801 (arr!3235 (Array (_ BitVec 32) ValueCell!1582)) (size!3523 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2072 0))(
  ( (LongMapFixedSize!2073 (defaultEntry!3478 Int) (mask!8239 (_ BitVec 32)) (extraKeys!3219 (_ BitVec 32)) (zeroValue!3321 V!4781) (minValue!3321 V!4781) (_size!1085 (_ BitVec 32)) (_keys!5303 array!6798) (_values!3461 array!6800) (_vacant!1085 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2072)

(declare-datatypes ((SeekEntryResult!506 0))(
  ( (MissingZero!506 (index!4192 (_ BitVec 32))) (Found!506 (index!4193 (_ BitVec 32))) (Intermediate!506 (undefined!1318 Bool) (index!4194 (_ BitVec 32)) (x!18606 (_ BitVec 32))) (Undefined!506) (MissingVacant!506 (index!4195 (_ BitVec 32))) )
))
(declare-fun lt!84155 () SeekEntryResult!506)

(declare-fun e!110588 () Bool)

(assert (=> b!168223 (= e!110588 (= (select (arr!3234 (_keys!5303 thiss!1248)) (index!4193 lt!84155)) key!828))))

(declare-fun b!168224 () Bool)

(declare-fun res!80083 () Bool)

(declare-fun e!110586 () Bool)

(assert (=> b!168224 (=> res!80083 e!110586)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6798 (_ BitVec 32)) Bool)

(assert (=> b!168224 (= res!80083 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5303 thiss!1248) (mask!8239 thiss!1248))))))

(declare-fun tp_is_empty!3851 () Bool)

(declare-fun e!110582 () Bool)

(declare-fun e!110585 () Bool)

(declare-fun array_inv!2069 (array!6798) Bool)

(declare-fun array_inv!2070 (array!6800) Bool)

(assert (=> b!168225 (= e!110582 (and tp!14748 tp_is_empty!3851 (array_inv!2069 (_keys!5303 thiss!1248)) (array_inv!2070 (_values!3461 thiss!1248)) e!110585))))

(declare-fun b!168226 () Bool)

(declare-fun res!80080 () Bool)

(declare-fun e!110590 () Bool)

(assert (=> b!168226 (=> (not res!80080) (not e!110590))))

(assert (=> b!168226 (= res!80080 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!6495 () Bool)

(declare-fun mapRes!6495 () Bool)

(declare-fun tp!14747 () Bool)

(declare-fun e!110581 () Bool)

(assert (=> mapNonEmpty!6495 (= mapRes!6495 (and tp!14747 e!110581))))

(declare-fun mapKey!6495 () (_ BitVec 32))

(declare-fun mapRest!6495 () (Array (_ BitVec 32) ValueCell!1582))

(declare-fun mapValue!6495 () ValueCell!1582)

(assert (=> mapNonEmpty!6495 (= (arr!3235 (_values!3461 thiss!1248)) (store mapRest!6495 mapKey!6495 mapValue!6495))))

(declare-fun b!168228 () Bool)

(declare-datatypes ((Unit!5169 0))(
  ( (Unit!5170) )
))
(declare-fun e!110587 () Unit!5169)

(declare-fun Unit!5171 () Unit!5169)

(assert (=> b!168228 (= e!110587 Unit!5171)))

(declare-fun lt!84161 () Unit!5169)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!119 (array!6798 array!6800 (_ BitVec 32) (_ BitVec 32) V!4781 V!4781 (_ BitVec 64) Int) Unit!5169)

(assert (=> b!168228 (= lt!84161 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!119 (_keys!5303 thiss!1248) (_values!3461 thiss!1248) (mask!8239 thiss!1248) (extraKeys!3219 thiss!1248) (zeroValue!3321 thiss!1248) (minValue!3321 thiss!1248) key!828 (defaultEntry!3478 thiss!1248)))))

(assert (=> b!168228 false))

(declare-fun b!168229 () Bool)

(declare-fun lt!84156 () Unit!5169)

(assert (=> b!168229 (= e!110587 lt!84156)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!120 (array!6798 array!6800 (_ BitVec 32) (_ BitVec 32) V!4781 V!4781 (_ BitVec 64) Int) Unit!5169)

(assert (=> b!168229 (= lt!84156 (lemmaInListMapThenSeekEntryOrOpenFindsIt!120 (_keys!5303 thiss!1248) (_values!3461 thiss!1248) (mask!8239 thiss!1248) (extraKeys!3219 thiss!1248) (zeroValue!3321 thiss!1248) (minValue!3321 thiss!1248) key!828 (defaultEntry!3478 thiss!1248)))))

(declare-fun res!80085 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168229 (= res!80085 (inRange!0 (index!4193 lt!84155) (mask!8239 thiss!1248)))))

(assert (=> b!168229 (=> (not res!80085) (not e!110588))))

(assert (=> b!168229 e!110588))

(declare-fun b!168230 () Bool)

(assert (=> b!168230 (= e!110586 true)))

(declare-fun lt!84159 () Bool)

(declare-datatypes ((List!2174 0))(
  ( (Nil!2171) (Cons!2170 (h!2787 (_ BitVec 64)) (t!6984 List!2174)) )
))
(declare-fun arrayNoDuplicates!0 (array!6798 (_ BitVec 32) List!2174) Bool)

(assert (=> b!168230 (= lt!84159 (arrayNoDuplicates!0 (_keys!5303 thiss!1248) #b00000000000000000000000000000000 Nil!2171))))

(declare-fun b!168231 () Bool)

(declare-fun e!110589 () Bool)

(assert (=> b!168231 (= e!110589 (not e!110586))))

(declare-fun res!80079 () Bool)

(assert (=> b!168231 (=> res!80079 e!110586)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!168231 (= res!80079 (not (validMask!0 (mask!8239 thiss!1248))))))

(declare-fun v!309 () V!4781)

(declare-datatypes ((tuple2!3160 0))(
  ( (tuple2!3161 (_1!1590 (_ BitVec 64)) (_2!1590 V!4781)) )
))
(declare-datatypes ((List!2175 0))(
  ( (Nil!2172) (Cons!2171 (h!2788 tuple2!3160) (t!6985 List!2175)) )
))
(declare-datatypes ((ListLongMap!2129 0))(
  ( (ListLongMap!2130 (toList!1080 List!2175)) )
))
(declare-fun lt!84158 () ListLongMap!2129)

(declare-fun +!222 (ListLongMap!2129 tuple2!3160) ListLongMap!2129)

(declare-fun getCurrentListMap!733 (array!6798 array!6800 (_ BitVec 32) (_ BitVec 32) V!4781 V!4781 (_ BitVec 32) Int) ListLongMap!2129)

(assert (=> b!168231 (= (+!222 lt!84158 (tuple2!3161 key!828 v!309)) (getCurrentListMap!733 (_keys!5303 thiss!1248) (array!6801 (store (arr!3235 (_values!3461 thiss!1248)) (index!4193 lt!84155) (ValueCellFull!1582 v!309)) (size!3523 (_values!3461 thiss!1248))) (mask!8239 thiss!1248) (extraKeys!3219 thiss!1248) (zeroValue!3321 thiss!1248) (minValue!3321 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3478 thiss!1248)))))

(declare-fun lt!84160 () Unit!5169)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!82 (array!6798 array!6800 (_ BitVec 32) (_ BitVec 32) V!4781 V!4781 (_ BitVec 32) (_ BitVec 64) V!4781 Int) Unit!5169)

(assert (=> b!168231 (= lt!84160 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!82 (_keys!5303 thiss!1248) (_values!3461 thiss!1248) (mask!8239 thiss!1248) (extraKeys!3219 thiss!1248) (zeroValue!3321 thiss!1248) (minValue!3321 thiss!1248) (index!4193 lt!84155) key!828 v!309 (defaultEntry!3478 thiss!1248)))))

(declare-fun lt!84157 () Unit!5169)

(assert (=> b!168231 (= lt!84157 e!110587)))

(declare-fun c!30336 () Bool)

(declare-fun contains!1116 (ListLongMap!2129 (_ BitVec 64)) Bool)

(assert (=> b!168231 (= c!30336 (contains!1116 lt!84158 key!828))))

(assert (=> b!168231 (= lt!84158 (getCurrentListMap!733 (_keys!5303 thiss!1248) (_values!3461 thiss!1248) (mask!8239 thiss!1248) (extraKeys!3219 thiss!1248) (zeroValue!3321 thiss!1248) (minValue!3321 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3478 thiss!1248)))))

(declare-fun b!168232 () Bool)

(assert (=> b!168232 (= e!110590 e!110589)))

(declare-fun res!80084 () Bool)

(assert (=> b!168232 (=> (not res!80084) (not e!110589))))

(assert (=> b!168232 (= res!80084 (and (not (is-Undefined!506 lt!84155)) (not (is-MissingVacant!506 lt!84155)) (not (is-MissingZero!506 lt!84155)) (is-Found!506 lt!84155)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6798 (_ BitVec 32)) SeekEntryResult!506)

(assert (=> b!168232 (= lt!84155 (seekEntryOrOpen!0 key!828 (_keys!5303 thiss!1248) (mask!8239 thiss!1248)))))

(declare-fun b!168233 () Bool)

(declare-fun e!110584 () Bool)

(assert (=> b!168233 (= e!110584 tp_is_empty!3851)))

(declare-fun b!168234 () Bool)

(assert (=> b!168234 (= e!110581 tp_is_empty!3851)))

(declare-fun res!80081 () Bool)

(assert (=> start!16756 (=> (not res!80081) (not e!110590))))

(declare-fun valid!890 (LongMapFixedSize!2072) Bool)

(assert (=> start!16756 (= res!80081 (valid!890 thiss!1248))))

(assert (=> start!16756 e!110590))

(assert (=> start!16756 e!110582))

(assert (=> start!16756 true))

(assert (=> start!16756 tp_is_empty!3851))

(declare-fun b!168227 () Bool)

(declare-fun res!80082 () Bool)

(assert (=> b!168227 (=> res!80082 e!110586)))

(assert (=> b!168227 (= res!80082 (or (not (= (size!3523 (_values!3461 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8239 thiss!1248)))) (not (= (size!3522 (_keys!5303 thiss!1248)) (size!3523 (_values!3461 thiss!1248)))) (bvslt (mask!8239 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3219 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3219 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!168235 () Bool)

(assert (=> b!168235 (= e!110585 (and e!110584 mapRes!6495))))

(declare-fun condMapEmpty!6495 () Bool)

(declare-fun mapDefault!6495 () ValueCell!1582)

