; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12162 () Bool)

(assert start!12162)

(declare-fun b!102840 () Bool)

(declare-fun b_free!2505 () Bool)

(declare-fun b_next!2505 () Bool)

(assert (=> b!102840 (= b_free!2505 (not b_next!2505))))

(declare-fun tp!9825 () Bool)

(declare-fun b_and!6369 () Bool)

(assert (=> b!102840 (= tp!9825 b_and!6369)))

(declare-fun b!102830 () Bool)

(declare-fun b_free!2507 () Bool)

(declare-fun b_next!2507 () Bool)

(assert (=> b!102830 (= b_free!2507 (not b_next!2507))))

(declare-fun tp!9826 () Bool)

(declare-fun b_and!6371 () Bool)

(assert (=> b!102830 (= tp!9826 b_and!6371)))

(declare-fun b!102823 () Bool)

(declare-fun e!67000 () Bool)

(declare-fun e!66998 () Bool)

(assert (=> b!102823 (= e!67000 e!66998)))

(declare-fun res!51397 () Bool)

(assert (=> b!102823 (=> (not res!51397) (not e!66998))))

(declare-datatypes ((V!3205 0))(
  ( (V!3206 (val!1379 Int)) )
))
(declare-datatypes ((tuple2!2394 0))(
  ( (tuple2!2395 (_1!1207 (_ BitVec 64)) (_2!1207 V!3205)) )
))
(declare-datatypes ((List!1634 0))(
  ( (Nil!1631) (Cons!1630 (h!2226 tuple2!2394) (t!5700 List!1634)) )
))
(declare-datatypes ((ListLongMap!1575 0))(
  ( (ListLongMap!1576 (toList!803 List!1634)) )
))
(declare-fun lt!52259 () ListLongMap!1575)

(declare-fun lt!52258 () ListLongMap!1575)

(assert (=> b!102823 (= res!51397 (= lt!52259 lt!52258))))

(declare-datatypes ((array!4324 0))(
  ( (array!4325 (arr!2052 (Array (_ BitVec 32) (_ BitVec 64))) (size!2306 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!991 0))(
  ( (ValueCellFull!991 (v!2869 V!3205)) (EmptyCell!991) )
))
(declare-datatypes ((array!4326 0))(
  ( (array!4327 (arr!2053 (Array (_ BitVec 32) ValueCell!991)) (size!2307 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!890 0))(
  ( (LongMapFixedSize!891 (defaultEntry!2556 Int) (mask!6689 (_ BitVec 32)) (extraKeys!2365 (_ BitVec 32)) (zeroValue!2433 V!3205) (minValue!2433 V!3205) (_size!494 (_ BitVec 32)) (_keys!4258 array!4324) (_values!2539 array!4326) (_vacant!494 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!890)

(declare-fun map!1276 (LongMapFixedSize!890) ListLongMap!1575)

(assert (=> b!102823 (= lt!52258 (map!1276 newMap!16))))

(declare-datatypes ((Cell!692 0))(
  ( (Cell!693 (v!2870 LongMapFixedSize!890)) )
))
(declare-datatypes ((LongMap!692 0))(
  ( (LongMap!693 (underlying!357 Cell!692)) )
))
(declare-fun thiss!992 () LongMap!692)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!481 (array!4324 array!4326 (_ BitVec 32) (_ BitVec 32) V!3205 V!3205 (_ BitVec 32) Int) ListLongMap!1575)

(assert (=> b!102823 (= lt!52259 (getCurrentListMap!481 (_keys!4258 (v!2870 (underlying!357 thiss!992))) (_values!2539 (v!2870 (underlying!357 thiss!992))) (mask!6689 (v!2870 (underlying!357 thiss!992))) (extraKeys!2365 (v!2870 (underlying!357 thiss!992))) (zeroValue!2433 (v!2870 (underlying!357 thiss!992))) (minValue!2433 (v!2870 (underlying!357 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2556 (v!2870 (underlying!357 thiss!992)))))))

(declare-fun mapNonEmpty!3887 () Bool)

(declare-fun mapRes!3887 () Bool)

(declare-fun tp!9827 () Bool)

(declare-fun e!67005 () Bool)

(assert (=> mapNonEmpty!3887 (= mapRes!3887 (and tp!9827 e!67005))))

(declare-fun mapKey!3888 () (_ BitVec 32))

(declare-fun mapValue!3887 () ValueCell!991)

(declare-fun mapRest!3887 () (Array (_ BitVec 32) ValueCell!991))

(assert (=> mapNonEmpty!3887 (= (arr!2053 (_values!2539 newMap!16)) (store mapRest!3887 mapKey!3888 mapValue!3887))))

(declare-fun b!102824 () Bool)

(declare-fun e!67011 () Bool)

(declare-fun tp_is_empty!2669 () Bool)

(assert (=> b!102824 (= e!67011 tp_is_empty!2669)))

(declare-fun b!102825 () Bool)

(assert (=> b!102825 (= e!67005 tp_is_empty!2669)))

(declare-fun b!102826 () Bool)

(declare-fun e!66999 () Bool)

(declare-fun e!67010 () Bool)

(assert (=> b!102826 (= e!66999 e!67010)))

(declare-fun mapIsEmpty!3887 () Bool)

(assert (=> mapIsEmpty!3887 mapRes!3887))

(declare-fun res!51396 () Bool)

(assert (=> start!12162 (=> (not res!51396) (not e!67000))))

(declare-fun valid!404 (LongMap!692) Bool)

(assert (=> start!12162 (= res!51396 (valid!404 thiss!992))))

(assert (=> start!12162 e!67000))

(assert (=> start!12162 e!66999))

(assert (=> start!12162 true))

(declare-fun e!67002 () Bool)

(assert (=> start!12162 e!67002))

(declare-fun b!102827 () Bool)

(declare-fun e!66996 () Bool)

(declare-fun e!67003 () Bool)

(declare-fun mapRes!3888 () Bool)

(assert (=> b!102827 (= e!66996 (and e!67003 mapRes!3888))))

(declare-fun condMapEmpty!3888 () Bool)

(declare-fun mapDefault!3888 () ValueCell!991)

