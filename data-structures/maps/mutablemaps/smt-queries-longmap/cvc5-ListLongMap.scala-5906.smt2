; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76418 () Bool)

(assert start!76418)

(declare-fun b!895935 () Bool)

(declare-fun b_free!15937 () Bool)

(declare-fun b_next!15937 () Bool)

(assert (=> b!895935 (= b_free!15937 (not b_next!15937))))

(declare-fun tp!55837 () Bool)

(declare-fun b_and!26247 () Bool)

(assert (=> b!895935 (= tp!55837 b_and!26247)))

(declare-fun b!895931 () Bool)

(declare-fun e!500738 () Bool)

(declare-fun tp_is_empty!18265 () Bool)

(assert (=> b!895931 (= e!500738 tp_is_empty!18265)))

(declare-fun mapNonEmpty!29008 () Bool)

(declare-fun mapRes!29008 () Bool)

(declare-fun tp!55836 () Bool)

(declare-fun e!500739 () Bool)

(assert (=> mapNonEmpty!29008 (= mapRes!29008 (and tp!55836 e!500739))))

(declare-datatypes ((V!29319 0))(
  ( (V!29320 (val!9183 Int)) )
))
(declare-datatypes ((ValueCell!8651 0))(
  ( (ValueCellFull!8651 (v!11670 V!29319)) (EmptyCell!8651) )
))
(declare-fun mapRest!29008 () (Array (_ BitVec 32) ValueCell!8651))

(declare-fun mapValue!29008 () ValueCell!8651)

(declare-datatypes ((array!52528 0))(
  ( (array!52529 (arr!25250 (Array (_ BitVec 32) (_ BitVec 64))) (size!25701 (_ BitVec 32))) )
))
(declare-datatypes ((array!52530 0))(
  ( (array!52531 (arr!25251 (Array (_ BitVec 32) ValueCell!8651)) (size!25702 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4318 0))(
  ( (LongMapFixedSize!4319 (defaultEntry!5371 Int) (mask!25988 (_ BitVec 32)) (extraKeys!5069 (_ BitVec 32)) (zeroValue!5173 V!29319) (minValue!5173 V!29319) (_size!2214 (_ BitVec 32)) (_keys!10092 array!52528) (_values!5360 array!52530) (_vacant!2214 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4318)

(declare-fun mapKey!29008 () (_ BitVec 32))

(assert (=> mapNonEmpty!29008 (= (arr!25251 (_values!5360 thiss!1181)) (store mapRest!29008 mapKey!29008 mapValue!29008))))

(declare-fun b!895932 () Bool)

(assert (=> b!895932 (= e!500739 tp_is_empty!18265)))

(declare-fun b!895933 () Bool)

(declare-fun e!500736 () Bool)

(assert (=> b!895933 (= e!500736 (and e!500738 mapRes!29008))))

(declare-fun condMapEmpty!29008 () Bool)

(declare-fun mapDefault!29008 () ValueCell!8651)

