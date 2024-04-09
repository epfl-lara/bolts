; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89110 () Bool)

(assert start!89110)

(declare-fun b!1021243 () Bool)

(declare-fun b_free!20135 () Bool)

(declare-fun b_next!20135 () Bool)

(assert (=> b!1021243 (= b_free!20135 (not b_next!20135))))

(declare-fun tp!71434 () Bool)

(declare-fun b_and!32341 () Bool)

(assert (=> b!1021243 (= tp!71434 b_and!32341)))

(declare-fun b!1021240 () Bool)

(declare-fun e!575195 () Bool)

(declare-fun e!575199 () Bool)

(assert (=> b!1021240 (= e!575195 e!575199)))

(declare-fun b!1021242 () Bool)

(declare-fun e!575197 () Bool)

(declare-fun e!575192 () Bool)

(assert (=> b!1021242 (= e!575197 e!575192)))

(declare-fun c!103467 () Bool)

(declare-datatypes ((V!36679 0))(
  ( (V!36680 (val!11978 Int)) )
))
(declare-datatypes ((array!63734 0))(
  ( (array!63735 (arr!30677 (Array (_ BitVec 32) (_ BitVec 64))) (size!31189 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!11224 0))(
  ( (ValueCellFull!11224 (v!14544 V!36679)) (EmptyCell!11224) )
))
(declare-datatypes ((array!63736 0))(
  ( (array!63737 (arr!30678 (Array (_ BitVec 32) ValueCell!11224)) (size!31190 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5042 0))(
  ( (LongMapFixedSize!5043 (defaultEntry!5873 Int) (mask!29435 (_ BitVec 32)) (extraKeys!5605 (_ BitVec 32)) (zeroValue!5709 V!36679) (minValue!5709 V!36679) (_size!2576 (_ BitVec 32)) (_keys!11015 array!63734) (_values!5896 array!63736) (_vacant!2576 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15576 0))(
  ( (tuple2!15577 (_1!7798 Bool) (_2!7798 LongMapFixedSize!5042)) )
))
(declare-fun lt!449991 () tuple2!15576)

(assert (=> b!1021242 (= c!103467 (_1!7798 lt!449991))))

(declare-fun tp_is_empty!23855 () Bool)

(declare-datatypes ((Cell!1110 0))(
  ( (Cell!1111 (v!14545 LongMapFixedSize!5042)) )
))
(declare-datatypes ((LongMap!1110 0))(
  ( (LongMap!1111 (underlying!566 Cell!1110)) )
))
(declare-fun thiss!908 () LongMap!1110)

(declare-fun e!575196 () Bool)

(declare-fun array_inv!23651 (array!63734) Bool)

(declare-fun array_inv!23652 (array!63736) Bool)

(assert (=> b!1021243 (= e!575199 (and tp!71434 tp_is_empty!23855 (array_inv!23651 (_keys!11015 (v!14545 (underlying!566 thiss!908)))) (array_inv!23652 (_values!5896 (v!14545 (underlying!566 thiss!908)))) e!575196))))

(declare-fun b!1021244 () Bool)

(declare-datatypes ((tuple2!15578 0))(
  ( (tuple2!15579 (_1!7799 (_ BitVec 64)) (_2!7799 V!36679)) )
))
(declare-datatypes ((List!21766 0))(
  ( (Nil!21763) (Cons!21762 (h!22960 tuple2!15578) (t!30783 List!21766)) )
))
(declare-datatypes ((ListLongMap!13739 0))(
  ( (ListLongMap!13740 (toList!6885 List!21766)) )
))
(declare-fun call!43200 () ListLongMap!13739)

(declare-fun call!43201 () ListLongMap!13739)

(assert (=> b!1021244 (= e!575192 (not (= call!43200 call!43201)))))

(declare-fun b!1021245 () Bool)

(declare-fun e!575193 () Bool)

(assert (=> b!1021245 (= e!575193 tp_is_empty!23855)))

(declare-fun b!1021246 () Bool)

(declare-fun key!697 () (_ BitVec 64))

(declare-fun -!461 (ListLongMap!13739 (_ BitVec 64)) ListLongMap!13739)

(assert (=> b!1021246 (= e!575192 (not (= call!43201 (-!461 call!43200 key!697))))))

(declare-fun lt!449992 () LongMap!1110)

(declare-fun bm!43197 () Bool)

(declare-fun map!14482 (LongMap!1110) ListLongMap!13739)

(assert (=> bm!43197 (= call!43200 (map!14482 (ite c!103467 thiss!908 lt!449992)))))

(declare-fun b!1021241 () Bool)

(declare-fun e!575200 () Bool)

(assert (=> b!1021241 (= e!575200 tp_is_empty!23855)))

(declare-fun res!684420 () Bool)

(declare-fun e!575198 () Bool)

(assert (=> start!89110 (=> (not res!684420) (not e!575198))))

(declare-fun valid!1888 (LongMap!1110) Bool)

(assert (=> start!89110 (= res!684420 (valid!1888 thiss!908))))

(assert (=> start!89110 e!575198))

(declare-fun e!575191 () Bool)

(assert (=> start!89110 e!575191))

(assert (=> start!89110 true))

(declare-fun mapIsEmpty!37194 () Bool)

(declare-fun mapRes!37194 () Bool)

(assert (=> mapIsEmpty!37194 mapRes!37194))

(declare-fun bm!43198 () Bool)

(assert (=> bm!43198 (= call!43201 (map!14482 (ite c!103467 lt!449992 thiss!908)))))

(declare-fun mapNonEmpty!37194 () Bool)

(declare-fun tp!71435 () Bool)

(assert (=> mapNonEmpty!37194 (= mapRes!37194 (and tp!71435 e!575200))))

(declare-fun mapRest!37194 () (Array (_ BitVec 32) ValueCell!11224))

(declare-fun mapValue!37194 () ValueCell!11224)

(declare-fun mapKey!37194 () (_ BitVec 32))

(assert (=> mapNonEmpty!37194 (= (arr!30678 (_values!5896 (v!14545 (underlying!566 thiss!908)))) (store mapRest!37194 mapKey!37194 mapValue!37194))))

(declare-fun b!1021247 () Bool)

(assert (=> b!1021247 (= e!575196 (and e!575193 mapRes!37194))))

(declare-fun condMapEmpty!37194 () Bool)

(declare-fun mapDefault!37194 () ValueCell!11224)

