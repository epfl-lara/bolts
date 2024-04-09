; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14586 () Bool)

(assert start!14586)

(declare-fun b!137924 () Bool)

(declare-fun b_free!2965 () Bool)

(declare-fun b_next!2965 () Bool)

(assert (=> b!137924 (= b_free!2965 (not b_next!2965))))

(declare-fun tp!11358 () Bool)

(declare-fun b_and!8585 () Bool)

(assert (=> b!137924 (= tp!11358 b_and!8585)))

(declare-fun b!137918 () Bool)

(declare-fun b_free!2967 () Bool)

(declare-fun b_next!2967 () Bool)

(assert (=> b!137918 (= b_free!2967 (not b_next!2967))))

(declare-fun tp!11355 () Bool)

(declare-fun b_and!8587 () Bool)

(assert (=> b!137918 (= tp!11355 b_and!8587)))

(declare-fun b!137916 () Bool)

(declare-fun e!89827 () Bool)

(declare-datatypes ((V!3513 0))(
  ( (V!3514 (val!1494 Int)) )
))
(declare-datatypes ((array!4828 0))(
  ( (array!4829 (arr!2282 (Array (_ BitVec 32) (_ BitVec 64))) (size!2553 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1106 0))(
  ( (ValueCellFull!1106 (v!3239 V!3513)) (EmptyCell!1106) )
))
(declare-datatypes ((array!4830 0))(
  ( (array!4831 (arr!2283 (Array (_ BitVec 32) ValueCell!1106)) (size!2554 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1120 0))(
  ( (LongMapFixedSize!1121 (defaultEntry!2912 Int) (mask!7238 (_ BitVec 32)) (extraKeys!2669 (_ BitVec 32)) (zeroValue!2763 V!3513) (minValue!2763 V!3513) (_size!609 (_ BitVec 32)) (_keys!4669 array!4828) (_values!2895 array!4830) (_vacant!609 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!908 0))(
  ( (Cell!909 (v!3240 LongMapFixedSize!1120)) )
))
(declare-datatypes ((LongMap!908 0))(
  ( (LongMap!909 (underlying!465 Cell!908)) )
))
(declare-fun thiss!992 () LongMap!908)

(assert (=> b!137916 (= e!89827 (not (or (bvsge (size!2553 (_keys!4669 (v!3240 (underlying!465 thiss!992)))) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!2553 (_keys!4669 (v!3240 (underlying!465 thiss!992))))))))))

(declare-fun from!355 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!4828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!137916 (arrayContainsKey!0 (_keys!4669 (v!3240 (underlying!465 thiss!992))) (select (arr!2282 (_keys!4669 (v!3240 (underlying!465 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-datatypes ((Unit!4356 0))(
  ( (Unit!4357) )
))
(declare-fun lt!72218 () Unit!4356)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!135 (array!4828 array!4830 (_ BitVec 32) (_ BitVec 32) V!3513 V!3513 (_ BitVec 64) (_ BitVec 32) Int) Unit!4356)

(assert (=> b!137916 (= lt!72218 (lemmaListMapContainsThenArrayContainsFrom!135 (_keys!4669 (v!3240 (underlying!465 thiss!992))) (_values!2895 (v!3240 (underlying!465 thiss!992))) (mask!7238 (v!3240 (underlying!465 thiss!992))) (extraKeys!2669 (v!3240 (underlying!465 thiss!992))) (zeroValue!2763 (v!3240 (underlying!465 thiss!992))) (minValue!2763 (v!3240 (underlying!465 thiss!992))) (select (arr!2282 (_keys!4669 (v!3240 (underlying!465 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2912 (v!3240 (underlying!465 thiss!992)))))))

(declare-fun mapIsEmpty!4727 () Bool)

(declare-fun mapRes!4727 () Bool)

(assert (=> mapIsEmpty!4727 mapRes!4727))

(declare-fun b!137917 () Bool)

(declare-fun e!89825 () Bool)

(declare-fun tp_is_empty!2899 () Bool)

(assert (=> b!137917 (= e!89825 tp_is_empty!2899)))

(declare-fun e!89828 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!1120)

(declare-fun e!89822 () Bool)

(declare-fun array_inv!1407 (array!4828) Bool)

(declare-fun array_inv!1408 (array!4830) Bool)

(assert (=> b!137918 (= e!89822 (and tp!11355 tp_is_empty!2899 (array_inv!1407 (_keys!4669 newMap!16)) (array_inv!1408 (_values!2895 newMap!16)) e!89828))))

(declare-fun b!137919 () Bool)

(declare-fun e!89834 () Bool)

(assert (=> b!137919 (= e!89834 tp_is_empty!2899)))

(declare-fun b!137920 () Bool)

(declare-fun e!89830 () Bool)

(assert (=> b!137920 (= e!89830 tp_is_empty!2899)))

(declare-fun mapIsEmpty!4728 () Bool)

(declare-fun mapRes!4728 () Bool)

(assert (=> mapIsEmpty!4728 mapRes!4728))

(declare-fun b!137921 () Bool)

(declare-fun res!66094 () Bool)

(declare-fun e!89823 () Bool)

(assert (=> b!137921 (=> (not res!66094) (not e!89823))))

(declare-fun valid!533 (LongMapFixedSize!1120) Bool)

(assert (=> b!137921 (= res!66094 (valid!533 newMap!16))))

(declare-fun b!137922 () Bool)

(assert (=> b!137922 (= e!89828 (and e!89825 mapRes!4728))))

(declare-fun condMapEmpty!4728 () Bool)

(declare-fun mapDefault!4727 () ValueCell!1106)

