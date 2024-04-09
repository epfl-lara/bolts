; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16176 () Bool)

(assert start!16176)

(declare-fun b!161075 () Bool)

(declare-fun b_free!3625 () Bool)

(declare-fun b_next!3625 () Bool)

(assert (=> b!161075 (= b_free!3625 (not b_next!3625))))

(declare-fun tp!13445 () Bool)

(declare-fun b_and!10057 () Bool)

(assert (=> b!161075 (= tp!13445 b_and!10057)))

(declare-fun b!161068 () Bool)

(declare-fun e!105255 () Bool)

(declare-fun tp_is_empty!3427 () Bool)

(assert (=> b!161068 (= e!105255 tp_is_empty!3427)))

(declare-fun b!161069 () Bool)

(declare-fun e!105252 () Bool)

(declare-fun e!105257 () Bool)

(declare-fun mapRes!5828 () Bool)

(assert (=> b!161069 (= e!105252 (and e!105257 mapRes!5828))))

(declare-fun condMapEmpty!5828 () Bool)

(declare-datatypes ((V!4217 0))(
  ( (V!4218 (val!1758 Int)) )
))
(declare-datatypes ((ValueCell!1370 0))(
  ( (ValueCellFull!1370 (v!3619 V!4217)) (EmptyCell!1370) )
))
(declare-datatypes ((array!5932 0))(
  ( (array!5933 (arr!2810 (Array (_ BitVec 32) (_ BitVec 64))) (size!3094 (_ BitVec 32))) )
))
(declare-datatypes ((array!5934 0))(
  ( (array!5935 (arr!2811 (Array (_ BitVec 32) ValueCell!1370)) (size!3095 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1648 0))(
  ( (LongMapFixedSize!1649 (defaultEntry!3266 Int) (mask!7850 (_ BitVec 32)) (extraKeys!3007 (_ BitVec 32)) (zeroValue!3109 V!4217) (minValue!3109 V!4217) (_size!873 (_ BitVec 32)) (_keys!5067 array!5932) (_values!3249 array!5934) (_vacant!873 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1648)

(declare-fun mapDefault!5828 () ValueCell!1370)

