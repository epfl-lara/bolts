; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75344 () Bool)

(assert start!75344)

(declare-fun b!887099 () Bool)

(declare-fun b_free!15515 () Bool)

(declare-fun b_next!15515 () Bool)

(assert (=> b!887099 (= b_free!15515 (not b_next!15515))))

(declare-fun tp!54480 () Bool)

(declare-fun b_and!25739 () Bool)

(assert (=> b!887099 (= tp!54480 b_and!25739)))

(declare-fun res!602102 () Bool)

(declare-fun e!494045 () Bool)

(assert (=> start!75344 (=> (not res!602102) (not e!494045))))

(declare-datatypes ((V!28755 0))(
  ( (V!28756 (val!8972 Int)) )
))
(declare-datatypes ((ValueCell!8440 0))(
  ( (ValueCellFull!8440 (v!11421 V!28755)) (EmptyCell!8440) )
))
(declare-datatypes ((array!51632 0))(
  ( (array!51633 (arr!24828 (Array (_ BitVec 32) ValueCell!8440)) (size!25269 (_ BitVec 32))) )
))
(declare-datatypes ((array!51634 0))(
  ( (array!51635 (arr!24829 (Array (_ BitVec 32) (_ BitVec 64))) (size!25270 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3896 0))(
  ( (LongMapFixedSize!3897 (defaultEntry!5136 Int) (mask!25524 (_ BitVec 32)) (extraKeys!4829 (_ BitVec 32)) (zeroValue!4933 V!28755) (minValue!4933 V!28755) (_size!2003 (_ BitVec 32)) (_keys!9807 array!51634) (_values!5120 array!51632) (_vacant!2003 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1050 0))(
  ( (Cell!1051 (v!11422 LongMapFixedSize!3896)) )
))
(declare-datatypes ((LongMap!1050 0))(
  ( (LongMap!1051 (underlying!536 Cell!1050)) )
))
(declare-fun thiss!833 () LongMap!1050)

(declare-fun valid!1507 (LongMap!1050) Bool)

(assert (=> start!75344 (= res!602102 (valid!1507 thiss!833))))

(assert (=> start!75344 e!494045))

(declare-fun e!494039 () Bool)

(assert (=> start!75344 e!494039))

(assert (=> start!75344 true))

(declare-fun mapIsEmpty!28284 () Bool)

(declare-fun mapRes!28284 () Bool)

(assert (=> mapIsEmpty!28284 mapRes!28284))

(declare-fun e!494041 () Bool)

(declare-fun tp_is_empty!17843 () Bool)

(declare-fun e!494043 () Bool)

(declare-fun array_inv!19518 (array!51634) Bool)

(declare-fun array_inv!19519 (array!51632) Bool)

(assert (=> b!887099 (= e!494043 (and tp!54480 tp_is_empty!17843 (array_inv!19518 (_keys!9807 (v!11422 (underlying!536 thiss!833)))) (array_inv!19519 (_values!5120 (v!11422 (underlying!536 thiss!833)))) e!494041))))

(declare-fun b!887100 () Bool)

(declare-fun e!494038 () Bool)

(assert (=> b!887100 (= e!494038 tp_is_empty!17843)))

(declare-fun b!887101 () Bool)

(declare-fun e!494042 () Bool)

(assert (=> b!887101 (= e!494039 e!494042)))

(declare-fun b!887102 () Bool)

(declare-fun e!494037 () Bool)

(declare-fun key!673 () (_ BitVec 64))

(declare-datatypes ((Option!438 0))(
  ( (Some!437 (v!11423 V!28755)) (None!436) )
))
(declare-fun isDefined!315 (Option!438) Bool)

(declare-datatypes ((tuple2!11944 0))(
  ( (tuple2!11945 (_1!5982 (_ BitVec 64)) (_2!5982 V!28755)) )
))
(declare-datatypes ((List!17763 0))(
  ( (Nil!17760) (Cons!17759 (h!18890 tuple2!11944) (t!25054 List!17763)) )
))
(declare-fun getValueByKey!432 (List!17763 (_ BitVec 64)) Option!438)

(declare-datatypes ((ListLongMap!10655 0))(
  ( (ListLongMap!10656 (toList!5343 List!17763)) )
))
(declare-fun map!12082 (LongMap!1050) ListLongMap!10655)

(assert (=> b!887102 (= e!494037 (not (isDefined!315 (getValueByKey!432 (toList!5343 (map!12082 thiss!833)) key!673))))))

(declare-fun b!887103 () Bool)

(declare-fun e!494044 () Bool)

(assert (=> b!887103 (= e!494044 tp_is_empty!17843)))

(declare-fun b!887104 () Bool)

(assert (=> b!887104 (= e!494045 e!494037)))

(declare-fun res!602101 () Bool)

(assert (=> b!887104 (=> (not res!602101) (not e!494037))))

(declare-fun contains!4301 (LongMap!1050 (_ BitVec 64)) Bool)

(assert (=> b!887104 (= res!602101 (contains!4301 thiss!833 key!673))))

(declare-fun lt!401163 () V!28755)

(declare-fun apply!392 (LongMapFixedSize!3896 (_ BitVec 64)) V!28755)

(assert (=> b!887104 (= lt!401163 (apply!392 (v!11422 (underlying!536 thiss!833)) key!673))))

(declare-fun b!887105 () Bool)

(assert (=> b!887105 (= e!494041 (and e!494044 mapRes!28284))))

(declare-fun condMapEmpty!28284 () Bool)

(declare-fun mapDefault!28284 () ValueCell!8440)

