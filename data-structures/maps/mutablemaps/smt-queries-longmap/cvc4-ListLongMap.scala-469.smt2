; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9128 () Bool)

(assert start!9128)

(declare-fun b!64720 () Bool)

(declare-fun b_free!2025 () Bool)

(declare-fun b_next!2025 () Bool)

(assert (=> b!64720 (= b_free!2025 (not b_next!2025))))

(declare-fun tp!8220 () Bool)

(declare-fun b_and!3965 () Bool)

(assert (=> b!64720 (= tp!8220 b_and!3965)))

(declare-fun b!64718 () Bool)

(declare-fun b_free!2027 () Bool)

(declare-fun b_next!2027 () Bool)

(assert (=> b!64718 (= b_free!2027 (not b_next!2027))))

(declare-fun tp!8219 () Bool)

(declare-fun b_and!3967 () Bool)

(assert (=> b!64718 (= tp!8219 b_and!3967)))

(declare-fun mapIsEmpty!2999 () Bool)

(declare-fun mapRes!2999 () Bool)

(assert (=> mapIsEmpty!2999 mapRes!2999))

(declare-fun b!64711 () Bool)

(declare-fun res!35249 () Bool)

(declare-fun e!42423 () Bool)

(assert (=> b!64711 (=> (not res!35249) (not e!42423))))

(declare-datatypes ((V!2885 0))(
  ( (V!2886 (val!1259 Int)) )
))
(declare-datatypes ((array!3792 0))(
  ( (array!3793 (arr!1812 (Array (_ BitVec 32) (_ BitVec 64))) (size!2046 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!871 0))(
  ( (ValueCellFull!871 (v!2448 V!2885)) (EmptyCell!871) )
))
(declare-datatypes ((array!3794 0))(
  ( (array!3795 (arr!1813 (Array (_ BitVec 32) ValueCell!871)) (size!2047 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!650 0))(
  ( (LongMapFixedSize!651 (defaultEntry!2123 Int) (mask!6045 (_ BitVec 32)) (extraKeys!1996 (_ BitVec 32)) (zeroValue!2032 V!2885) (minValue!2032 V!2885) (_size!374 (_ BitVec 32)) (_keys!3761 array!3792) (_values!2106 array!3794) (_vacant!374 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!460 0))(
  ( (Cell!461 (v!2449 LongMapFixedSize!650)) )
))
(declare-datatypes ((LongMap!460 0))(
  ( (LongMap!461 (underlying!241 Cell!460)) )
))
(declare-fun thiss!992 () LongMap!460)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!64711 (= res!35249 (validMask!0 (mask!6045 (v!2449 (underlying!241 thiss!992)))))))

(declare-fun b!64712 () Bool)

(declare-datatypes ((List!1477 0))(
  ( (Nil!1474) (Cons!1473 (h!2057 (_ BitVec 64)) (t!4915 List!1477)) )
))
(declare-fun arrayNoDuplicates!0 (array!3792 (_ BitVec 32) List!1477) Bool)

(assert (=> b!64712 (= e!42423 (not (arrayNoDuplicates!0 (_keys!3761 (v!2449 (underlying!241 thiss!992))) #b00000000000000000000000000000000 Nil!1474)))))

(declare-fun b!64713 () Bool)

(declare-fun e!42430 () Bool)

(declare-fun tp_is_empty!2429 () Bool)

(assert (=> b!64713 (= e!42430 tp_is_empty!2429)))

(declare-fun b!64714 () Bool)

(declare-fun res!35244 () Bool)

(declare-fun e!42425 () Bool)

(assert (=> b!64714 (=> (not res!35244) (not e!42425))))

(declare-fun newMap!16 () LongMapFixedSize!650)

(assert (=> b!64714 (= res!35244 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6045 newMap!16)) (_size!374 (v!2449 (underlying!241 thiss!992)))))))

(declare-fun b!64715 () Bool)

(declare-fun e!42431 () Bool)

(declare-fun e!42436 () Bool)

(assert (=> b!64715 (= e!42431 e!42436)))

(declare-fun b!64717 () Bool)

(declare-fun res!35245 () Bool)

(assert (=> b!64717 (=> (not res!35245) (not e!42423))))

(assert (=> b!64717 (= res!35245 (and (= (size!2047 (_values!2106 (v!2449 (underlying!241 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6045 (v!2449 (underlying!241 thiss!992))))) (= (size!2046 (_keys!3761 (v!2449 (underlying!241 thiss!992)))) (size!2047 (_values!2106 (v!2449 (underlying!241 thiss!992))))) (bvsge (mask!6045 (v!2449 (underlying!241 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1996 (v!2449 (underlying!241 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1996 (v!2449 (underlying!241 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun e!42429 () Bool)

(declare-fun e!42435 () Bool)

(declare-fun array_inv!1073 (array!3792) Bool)

(declare-fun array_inv!1074 (array!3794) Bool)

(assert (=> b!64718 (= e!42429 (and tp!8219 tp_is_empty!2429 (array_inv!1073 (_keys!3761 newMap!16)) (array_inv!1074 (_values!2106 newMap!16)) e!42435))))

(declare-fun mapIsEmpty!3000 () Bool)

(declare-fun mapRes!3000 () Bool)

(assert (=> mapIsEmpty!3000 mapRes!3000))

(declare-fun b!64719 () Bool)

(declare-datatypes ((Unit!1788 0))(
  ( (Unit!1789) )
))
(declare-fun e!42428 () Unit!1788)

(declare-fun Unit!1790 () Unit!1788)

(assert (=> b!64719 (= e!42428 Unit!1790)))

(declare-fun lt!27473 () Unit!1788)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!39 (array!3792 array!3794 (_ BitVec 32) (_ BitVec 32) V!2885 V!2885 (_ BitVec 64) (_ BitVec 32) Int) Unit!1788)

(assert (=> b!64719 (= lt!27473 (lemmaListMapContainsThenArrayContainsFrom!39 (_keys!3761 (v!2449 (underlying!241 thiss!992))) (_values!2106 (v!2449 (underlying!241 thiss!992))) (mask!6045 (v!2449 (underlying!241 thiss!992))) (extraKeys!1996 (v!2449 (underlying!241 thiss!992))) (zeroValue!2032 (v!2449 (underlying!241 thiss!992))) (minValue!2032 (v!2449 (underlying!241 thiss!992))) (select (arr!1812 (_keys!3761 (v!2449 (underlying!241 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2123 (v!2449 (underlying!241 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3792 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!64719 (arrayContainsKey!0 (_keys!3761 (v!2449 (underlying!241 thiss!992))) (select (arr!1812 (_keys!3761 (v!2449 (underlying!241 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!27471 () Unit!1788)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3792 (_ BitVec 32) (_ BitVec 32)) Unit!1788)

(assert (=> b!64719 (= lt!27471 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3761 (v!2449 (underlying!241 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> b!64719 (arrayNoDuplicates!0 (_keys!3761 (v!2449 (underlying!241 thiss!992))) from!355 Nil!1474)))

(declare-fun lt!27467 () Unit!1788)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3792 (_ BitVec 32) (_ BitVec 64) List!1477) Unit!1788)

(assert (=> b!64719 (= lt!27467 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3761 (v!2449 (underlying!241 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1812 (_keys!3761 (v!2449 (underlying!241 thiss!992)))) from!355) (Cons!1473 (select (arr!1812 (_keys!3761 (v!2449 (underlying!241 thiss!992)))) from!355) Nil!1474)))))

(assert (=> b!64719 false))

(declare-fun mapNonEmpty!2999 () Bool)

(declare-fun tp!8217 () Bool)

(declare-fun e!42427 () Bool)

(assert (=> mapNonEmpty!2999 (= mapRes!2999 (and tp!8217 e!42427))))

(declare-fun mapRest!2999 () (Array (_ BitVec 32) ValueCell!871))

(declare-fun mapValue!3000 () ValueCell!871)

(declare-fun mapKey!3000 () (_ BitVec 32))

(assert (=> mapNonEmpty!2999 (= (arr!1813 (_values!2106 newMap!16)) (store mapRest!2999 mapKey!3000 mapValue!3000))))

(declare-fun e!42421 () Bool)

(declare-fun e!42426 () Bool)

(assert (=> b!64720 (= e!42421 (and tp!8220 tp_is_empty!2429 (array_inv!1073 (_keys!3761 (v!2449 (underlying!241 thiss!992)))) (array_inv!1074 (_values!2106 (v!2449 (underlying!241 thiss!992)))) e!42426))))

(declare-fun b!64721 () Bool)

(declare-fun e!42422 () Bool)

(assert (=> b!64721 (= e!42435 (and e!42422 mapRes!2999))))

(declare-fun condMapEmpty!3000 () Bool)

(declare-fun mapDefault!2999 () ValueCell!871)

