; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15274 () Bool)

(assert start!15274)

(declare-fun b!147476 () Bool)

(declare-fun b_free!3157 () Bool)

(declare-fun b_next!3157 () Bool)

(assert (=> b!147476 (= b_free!3157 (not b_next!3157))))

(declare-fun tp!11980 () Bool)

(declare-fun b_and!9277 () Bool)

(assert (=> b!147476 (= tp!11980 b_and!9277)))

(declare-fun b!147480 () Bool)

(declare-fun b_free!3159 () Bool)

(declare-fun b_next!3159 () Bool)

(assert (=> b!147480 (= b_free!3159 (not b_next!3159))))

(declare-fun tp!11977 () Bool)

(declare-fun b_and!9279 () Bool)

(assert (=> b!147480 (= tp!11977 b_and!9279)))

(declare-fun b!147473 () Bool)

(declare-fun e!96309 () Bool)

(declare-fun tp_is_empty!2995 () Bool)

(assert (=> b!147473 (= e!96309 tp_is_empty!2995)))

(declare-fun b!147474 () Bool)

(declare-fun e!96317 () Bool)

(declare-fun e!96313 () Bool)

(assert (=> b!147474 (= e!96317 e!96313)))

(declare-fun res!70064 () Bool)

(assert (=> b!147474 (=> (not res!70064) (not e!96313))))

(declare-datatypes ((V!3641 0))(
  ( (V!3642 (val!1542 Int)) )
))
(declare-datatypes ((array!5036 0))(
  ( (array!5037 (arr!2378 (Array (_ BitVec 32) (_ BitVec 64))) (size!2654 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1154 0))(
  ( (ValueCellFull!1154 (v!3374 V!3641)) (EmptyCell!1154) )
))
(declare-datatypes ((array!5038 0))(
  ( (array!5039 (arr!2379 (Array (_ BitVec 32) ValueCell!1154)) (size!2655 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1216 0))(
  ( (LongMapFixedSize!1217 (defaultEntry!3027 Int) (mask!7411 (_ BitVec 32)) (extraKeys!2772 (_ BitVec 32)) (zeroValue!2872 V!3641) (minValue!2872 V!3641) (_size!657 (_ BitVec 32)) (_keys!4796 array!5036) (_values!3010 array!5038) (_vacant!657 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2770 0))(
  ( (tuple2!2771 (_1!1395 Bool) (_2!1395 LongMapFixedSize!1216)) )
))
(declare-fun lt!77838 () tuple2!2770)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!147474 (= res!70064 (and (_1!1395 lt!77838) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!4671 0))(
  ( (Unit!4672) )
))
(declare-fun lt!77837 () Unit!4671)

(declare-fun e!96304 () Unit!4671)

(assert (=> b!147474 (= lt!77837 e!96304)))

(declare-datatypes ((Cell!998 0))(
  ( (Cell!999 (v!3375 LongMapFixedSize!1216)) )
))
(declare-datatypes ((LongMap!998 0))(
  ( (LongMap!999 (underlying!510 Cell!998)) )
))
(declare-fun thiss!992 () LongMap!998)

(declare-fun c!27830 () Bool)

(declare-datatypes ((tuple2!2772 0))(
  ( (tuple2!2773 (_1!1396 (_ BitVec 64)) (_2!1396 V!3641)) )
))
(declare-datatypes ((List!1809 0))(
  ( (Nil!1806) (Cons!1805 (h!2413 tuple2!2772) (t!6558 List!1809)) )
))
(declare-datatypes ((ListLongMap!1795 0))(
  ( (ListLongMap!1796 (toList!913 List!1809)) )
))
(declare-fun lt!77834 () ListLongMap!1795)

(declare-fun contains!953 (ListLongMap!1795 (_ BitVec 64)) Bool)

(assert (=> b!147474 (= c!27830 (contains!953 lt!77834 (select (arr!2378 (_keys!4796 (v!3375 (underlying!510 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!1216)

(declare-fun lt!77836 () V!3641)

(declare-fun update!228 (LongMapFixedSize!1216 (_ BitVec 64) V!3641) tuple2!2770)

(assert (=> b!147474 (= lt!77838 (update!228 newMap!16 (select (arr!2378 (_keys!4796 (v!3375 (underlying!510 thiss!992)))) from!355) lt!77836))))

(declare-fun b!147475 () Bool)

(declare-fun e!96312 () Bool)

(declare-fun e!96307 () Bool)

(declare-fun mapRes!5061 () Bool)

(assert (=> b!147475 (= e!96312 (and e!96307 mapRes!5061))))

(declare-fun condMapEmpty!5062 () Bool)

(declare-fun mapDefault!5062 () ValueCell!1154)

