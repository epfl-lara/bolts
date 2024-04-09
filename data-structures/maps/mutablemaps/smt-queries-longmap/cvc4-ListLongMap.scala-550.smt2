; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14602 () Bool)

(assert start!14602)

(declare-fun b!138330 () Bool)

(declare-fun b_free!2997 () Bool)

(declare-fun b_next!2997 () Bool)

(assert (=> b!138330 (= b_free!2997 (not b_next!2997))))

(declare-fun tp!11454 () Bool)

(declare-fun b_and!8649 () Bool)

(assert (=> b!138330 (= tp!11454 b_and!8649)))

(declare-fun b!138332 () Bool)

(declare-fun b_free!2999 () Bool)

(declare-fun b_next!2999 () Bool)

(assert (=> b!138332 (= b_free!2999 (not b_next!2999))))

(declare-fun tp!11453 () Bool)

(declare-fun b_and!8651 () Bool)

(assert (=> b!138332 (= tp!11453 b_and!8651)))

(declare-fun b!138324 () Bool)

(declare-fun e!90200 () Bool)

(declare-datatypes ((V!3533 0))(
  ( (V!3534 (val!1502 Int)) )
))
(declare-datatypes ((array!4860 0))(
  ( (array!4861 (arr!2298 (Array (_ BitVec 32) (_ BitVec 64))) (size!2569 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1114 0))(
  ( (ValueCellFull!1114 (v!3255 V!3533)) (EmptyCell!1114) )
))
(declare-datatypes ((array!4862 0))(
  ( (array!4863 (arr!2299 (Array (_ BitVec 32) ValueCell!1114)) (size!2570 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1136 0))(
  ( (LongMapFixedSize!1137 (defaultEntry!2920 Int) (mask!7250 (_ BitVec 32)) (extraKeys!2677 (_ BitVec 32)) (zeroValue!2771 V!3533) (minValue!2771 V!3533) (_size!617 (_ BitVec 32)) (_keys!4677 array!4860) (_values!2903 array!4862) (_vacant!617 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!924 0))(
  ( (Cell!925 (v!3256 LongMapFixedSize!1136)) )
))
(declare-datatypes ((LongMap!924 0))(
  ( (LongMap!925 (underlying!473 Cell!924)) )
))
(declare-fun thiss!992 () LongMap!924)

(declare-datatypes ((List!1751 0))(
  ( (Nil!1748) (Cons!1747 (h!2354 (_ BitVec 64)) (t!6311 List!1751)) )
))
(declare-fun arrayNoDuplicates!0 (array!4860 (_ BitVec 32) List!1751) Bool)

(assert (=> b!138324 (= e!90200 (arrayNoDuplicates!0 (_keys!4677 (v!3256 (underlying!473 thiss!992))) #b00000000000000000000000000000000 Nil!1748))))

(declare-fun b!138325 () Bool)

(declare-fun e!90193 () Bool)

(declare-fun tp_is_empty!2915 () Bool)

(assert (=> b!138325 (= e!90193 tp_is_empty!2915)))

(declare-fun b!138326 () Bool)

(declare-fun e!90203 () Bool)

(declare-fun e!90192 () Bool)

(assert (=> b!138326 (= e!90203 e!90192)))

(declare-fun res!66247 () Bool)

(assert (=> b!138326 (=> (not res!66247) (not e!90192))))

(declare-datatypes ((tuple2!2654 0))(
  ( (tuple2!2655 (_1!1337 (_ BitVec 64)) (_2!1337 V!3533)) )
))
(declare-datatypes ((List!1752 0))(
  ( (Nil!1749) (Cons!1748 (h!2355 tuple2!2654) (t!6312 List!1752)) )
))
(declare-datatypes ((ListLongMap!1731 0))(
  ( (ListLongMap!1732 (toList!881 List!1752)) )
))
(declare-fun lt!72312 () ListLongMap!1731)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!911 (ListLongMap!1731 (_ BitVec 64)) Bool)

(assert (=> b!138326 (= res!66247 (contains!911 lt!72312 (select (arr!2298 (_keys!4677 (v!3256 (underlying!473 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2656 0))(
  ( (tuple2!2657 (_1!1338 Bool) (_2!1338 LongMapFixedSize!1136)) )
))
(declare-fun lt!72313 () tuple2!2656)

(declare-fun newMap!16 () LongMapFixedSize!1136)

(declare-fun update!203 (LongMapFixedSize!1136 (_ BitVec 64) V!3533) tuple2!2656)

(declare-fun get!1517 (ValueCell!1114 V!3533) V!3533)

(declare-fun dynLambda!436 (Int (_ BitVec 64)) V!3533)

(assert (=> b!138326 (= lt!72313 (update!203 newMap!16 (select (arr!2298 (_keys!4677 (v!3256 (underlying!473 thiss!992)))) from!355) (get!1517 (select (arr!2299 (_values!2903 (v!3256 (underlying!473 thiss!992)))) from!355) (dynLambda!436 (defaultEntry!2920 (v!3256 (underlying!473 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!4775 () Bool)

(declare-fun mapRes!4775 () Bool)

(declare-fun tp!11452 () Bool)

(declare-fun e!90201 () Bool)

(assert (=> mapNonEmpty!4775 (= mapRes!4775 (and tp!11452 e!90201))))

(declare-fun mapValue!4775 () ValueCell!1114)

(declare-fun mapRest!4775 () (Array (_ BitVec 32) ValueCell!1114))

(declare-fun mapKey!4776 () (_ BitVec 32))

(assert (=> mapNonEmpty!4775 (= (arr!2299 (_values!2903 newMap!16)) (store mapRest!4775 mapKey!4776 mapValue!4775))))

(declare-fun b!138327 () Bool)

(declare-fun res!66242 () Bool)

(declare-fun e!90199 () Bool)

(assert (=> b!138327 (=> (not res!66242) (not e!90199))))

(assert (=> b!138327 (= res!66242 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7250 newMap!16)) (_size!617 (v!3256 (underlying!473 thiss!992)))))))

(declare-fun b!138328 () Bool)

(declare-fun e!90198 () Bool)

(declare-fun e!90191 () Bool)

(declare-fun mapRes!4776 () Bool)

(assert (=> b!138328 (= e!90198 (and e!90191 mapRes!4776))))

(declare-fun condMapEmpty!4776 () Bool)

(declare-fun mapDefault!4775 () ValueCell!1114)

