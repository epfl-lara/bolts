; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13144 () Bool)

(assert start!13144)

(declare-fun b!115319 () Bool)

(declare-fun b_free!2673 () Bool)

(declare-fun b_next!2673 () Bool)

(assert (=> b!115319 (= b_free!2673 (not b_next!2673))))

(declare-fun tp!10381 () Bool)

(declare-fun b_and!7165 () Bool)

(assert (=> b!115319 (= tp!10381 b_and!7165)))

(declare-fun b!115326 () Bool)

(declare-fun b_free!2675 () Bool)

(declare-fun b_next!2675 () Bool)

(assert (=> b!115326 (= b_free!2675 (not b_next!2675))))

(declare-fun tp!10384 () Bool)

(declare-fun b_and!7167 () Bool)

(assert (=> b!115326 (= tp!10384 b_and!7167)))

(declare-fun mapNonEmpty!4191 () Bool)

(declare-fun mapRes!4191 () Bool)

(declare-fun tp!10383 () Bool)

(declare-fun e!75134 () Bool)

(assert (=> mapNonEmpty!4191 (= mapRes!4191 (and tp!10383 e!75134))))

(declare-datatypes ((V!3317 0))(
  ( (V!3318 (val!1421 Int)) )
))
(declare-datatypes ((ValueCell!1033 0))(
  ( (ValueCellFull!1033 (v!3009 V!3317)) (EmptyCell!1033) )
))
(declare-fun mapRest!4192 () (Array (_ BitVec 32) ValueCell!1033))

(declare-datatypes ((array!4508 0))(
  ( (array!4509 (arr!2136 (Array (_ BitVec 32) (_ BitVec 64))) (size!2396 (_ BitVec 32))) )
))
(declare-datatypes ((array!4510 0))(
  ( (array!4511 (arr!2137 (Array (_ BitVec 32) ValueCell!1033)) (size!2397 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!974 0))(
  ( (LongMapFixedSize!975 (defaultEntry!2696 Int) (mask!6898 (_ BitVec 32)) (extraKeys!2485 (_ BitVec 32)) (zeroValue!2563 V!3317) (minValue!2563 V!3317) (_size!536 (_ BitVec 32)) (_keys!4418 array!4508) (_values!2679 array!4510) (_vacant!536 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!974)

(declare-fun mapKey!4192 () (_ BitVec 32))

(declare-fun mapValue!4192 () ValueCell!1033)

(assert (=> mapNonEmpty!4191 (= (arr!2137 (_values!2679 newMap!16)) (store mapRest!4192 mapKey!4192 mapValue!4192))))

(declare-fun res!56620 () Bool)

(declare-fun e!75140 () Bool)

(assert (=> start!13144 (=> (not res!56620) (not e!75140))))

(declare-datatypes ((Cell!772 0))(
  ( (Cell!773 (v!3010 LongMapFixedSize!974)) )
))
(declare-datatypes ((LongMap!772 0))(
  ( (LongMap!773 (underlying!397 Cell!772)) )
))
(declare-fun thiss!992 () LongMap!772)

(declare-fun valid!452 (LongMap!772) Bool)

(assert (=> start!13144 (= res!56620 (valid!452 thiss!992))))

(assert (=> start!13144 e!75140))

(declare-fun e!75145 () Bool)

(assert (=> start!13144 e!75145))

(assert (=> start!13144 true))

(declare-fun e!75141 () Bool)

(assert (=> start!13144 e!75141))

(declare-fun mapIsEmpty!4191 () Bool)

(assert (=> mapIsEmpty!4191 mapRes!4191))

(declare-fun b!115316 () Bool)

(declare-fun e!75135 () Bool)

(declare-fun e!75139 () Bool)

(assert (=> b!115316 (= e!75135 e!75139)))

(declare-fun b!115317 () Bool)

(declare-fun e!75143 () Bool)

(declare-fun tp_is_empty!2753 () Bool)

(assert (=> b!115317 (= e!75143 tp_is_empty!2753)))

(declare-fun b!115318 () Bool)

(declare-fun res!56622 () Bool)

(assert (=> b!115318 (=> (not res!56622) (not e!75140))))

(declare-fun valid!453 (LongMapFixedSize!974) Bool)

(assert (=> b!115318 (= res!56622 (valid!453 newMap!16))))

(declare-fun e!75144 () Bool)

(declare-fun array_inv!1293 (array!4508) Bool)

(declare-fun array_inv!1294 (array!4510) Bool)

(assert (=> b!115319 (= e!75139 (and tp!10381 tp_is_empty!2753 (array_inv!1293 (_keys!4418 (v!3010 (underlying!397 thiss!992)))) (array_inv!1294 (_values!2679 (v!3010 (underlying!397 thiss!992)))) e!75144))))

(declare-fun b!115320 () Bool)

(declare-fun e!75137 () Bool)

(declare-fun mapRes!4192 () Bool)

(assert (=> b!115320 (= e!75144 (and e!75137 mapRes!4192))))

(declare-fun condMapEmpty!4192 () Bool)

(declare-fun mapDefault!4191 () ValueCell!1033)

