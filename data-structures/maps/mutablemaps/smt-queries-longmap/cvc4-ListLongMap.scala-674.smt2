; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16564 () Bool)

(assert start!16564)

(declare-fun b!164735 () Bool)

(declare-fun b_free!3857 () Bool)

(declare-fun b_next!3857 () Bool)

(assert (=> b!164735 (= b_free!3857 (not b_next!3857))))

(declare-fun tp!14171 () Bool)

(declare-fun b_and!10289 () Bool)

(assert (=> b!164735 (= tp!14171 b_and!10289)))

(declare-fun mapNonEmpty!6207 () Bool)

(declare-fun mapRes!6207 () Bool)

(declare-fun tp!14172 () Bool)

(declare-fun e!108082 () Bool)

(assert (=> mapNonEmpty!6207 (= mapRes!6207 (and tp!14172 e!108082))))

(declare-datatypes ((V!4525 0))(
  ( (V!4526 (val!1874 Int)) )
))
(declare-datatypes ((ValueCell!1486 0))(
  ( (ValueCellFull!1486 (v!3735 V!4525)) (EmptyCell!1486) )
))
(declare-fun mapRest!6207 () (Array (_ BitVec 32) ValueCell!1486))

(declare-datatypes ((array!6414 0))(
  ( (array!6415 (arr!3042 (Array (_ BitVec 32) (_ BitVec 64))) (size!3330 (_ BitVec 32))) )
))
(declare-datatypes ((array!6416 0))(
  ( (array!6417 (arr!3043 (Array (_ BitVec 32) ValueCell!1486)) (size!3331 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1880 0))(
  ( (LongMapFixedSize!1881 (defaultEntry!3382 Int) (mask!8079 (_ BitVec 32)) (extraKeys!3123 (_ BitVec 32)) (zeroValue!3225 V!4525) (minValue!3225 V!4525) (_size!989 (_ BitVec 32)) (_keys!5207 array!6414) (_values!3365 array!6416) (_vacant!989 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1880)

(declare-fun mapKey!6207 () (_ BitVec 32))

(declare-fun mapValue!6207 () ValueCell!1486)

(assert (=> mapNonEmpty!6207 (= (arr!3043 (_values!3365 thiss!1248)) (store mapRest!6207 mapKey!6207 mapValue!6207))))

(declare-fun b!164734 () Bool)

(declare-fun res!78065 () Bool)

(declare-fun e!108088 () Bool)

(assert (=> b!164734 (=> (not res!78065) (not e!108088))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6414 (_ BitVec 32)) Bool)

(assert (=> b!164734 (= res!78065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5207 thiss!1248) (mask!8079 thiss!1248)))))

(declare-fun e!108084 () Bool)

(declare-fun tp_is_empty!3659 () Bool)

(declare-fun e!108087 () Bool)

(declare-fun array_inv!1941 (array!6414) Bool)

(declare-fun array_inv!1942 (array!6416) Bool)

(assert (=> b!164735 (= e!108084 (and tp!14171 tp_is_empty!3659 (array_inv!1941 (_keys!5207 thiss!1248)) (array_inv!1942 (_values!3365 thiss!1248)) e!108087))))

(declare-fun b!164736 () Bool)

(assert (=> b!164736 (= e!108088 false)))

(declare-fun lt!82972 () Bool)

(declare-datatypes ((List!2042 0))(
  ( (Nil!2039) (Cons!2038 (h!2655 (_ BitVec 64)) (t!6852 List!2042)) )
))
(declare-fun arrayNoDuplicates!0 (array!6414 (_ BitVec 32) List!2042) Bool)

(assert (=> b!164736 (= lt!82972 (arrayNoDuplicates!0 (_keys!5207 thiss!1248) #b00000000000000000000000000000000 Nil!2039))))

(declare-fun b!164737 () Bool)

(declare-fun res!78066 () Bool)

(assert (=> b!164737 (=> (not res!78066) (not e!108088))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3036 0))(
  ( (tuple2!3037 (_1!1528 (_ BitVec 64)) (_2!1528 V!4525)) )
))
(declare-datatypes ((List!2043 0))(
  ( (Nil!2040) (Cons!2039 (h!2656 tuple2!3036) (t!6853 List!2043)) )
))
(declare-datatypes ((ListLongMap!2005 0))(
  ( (ListLongMap!2006 (toList!1018 List!2043)) )
))
(declare-fun contains!1054 (ListLongMap!2005 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!671 (array!6414 array!6416 (_ BitVec 32) (_ BitVec 32) V!4525 V!4525 (_ BitVec 32) Int) ListLongMap!2005)

(assert (=> b!164737 (= res!78066 (contains!1054 (getCurrentListMap!671 (_keys!5207 thiss!1248) (_values!3365 thiss!1248) (mask!8079 thiss!1248) (extraKeys!3123 thiss!1248) (zeroValue!3225 thiss!1248) (minValue!3225 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3382 thiss!1248)) key!828))))

(declare-fun b!164738 () Bool)

(declare-fun e!108086 () Bool)

(assert (=> b!164738 (= e!108086 e!108088)))

(declare-fun res!78069 () Bool)

(assert (=> b!164738 (=> (not res!78069) (not e!108088))))

(declare-datatypes ((SeekEntryResult!433 0))(
  ( (MissingZero!433 (index!3900 (_ BitVec 32))) (Found!433 (index!3901 (_ BitVec 32))) (Intermediate!433 (undefined!1245 Bool) (index!3902 (_ BitVec 32)) (x!18277 (_ BitVec 32))) (Undefined!433) (MissingVacant!433 (index!3903 (_ BitVec 32))) )
))
(declare-fun lt!82973 () SeekEntryResult!433)

(assert (=> b!164738 (= res!78069 (and (not (is-Undefined!433 lt!82973)) (not (is-MissingVacant!433 lt!82973)) (not (is-MissingZero!433 lt!82973)) (is-Found!433 lt!82973)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6414 (_ BitVec 32)) SeekEntryResult!433)

(assert (=> b!164738 (= lt!82973 (seekEntryOrOpen!0 key!828 (_keys!5207 thiss!1248) (mask!8079 thiss!1248)))))

(declare-fun b!164739 () Bool)

(assert (=> b!164739 (= e!108082 tp_is_empty!3659)))

(declare-fun b!164740 () Bool)

(declare-fun res!78067 () Bool)

(assert (=> b!164740 (=> (not res!78067) (not e!108088))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164740 (= res!78067 (validMask!0 (mask!8079 thiss!1248)))))

(declare-fun b!164741 () Bool)

(declare-fun e!108085 () Bool)

(assert (=> b!164741 (= e!108087 (and e!108085 mapRes!6207))))

(declare-fun condMapEmpty!6207 () Bool)

(declare-fun mapDefault!6207 () ValueCell!1486)

