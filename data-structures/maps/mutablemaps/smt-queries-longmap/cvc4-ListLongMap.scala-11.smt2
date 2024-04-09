; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!448 () Bool)

(assert start!448)

(declare-fun b!2655 () Bool)

(declare-fun b_free!65 () Bool)

(declare-fun b_next!65 () Bool)

(assert (=> b!2655 (= b_free!65 (not b_next!65))))

(declare-fun tp!259 () Bool)

(declare-fun b_and!203 () Bool)

(assert (=> b!2655 (= tp!259 b_and!203)))

(declare-fun b!2654 () Bool)

(declare-fun e!991 () Bool)

(assert (=> b!2654 (= e!991 false)))

(declare-fun lt!377 () Bool)

(declare-datatypes ((V!247 0))(
  ( (V!248 (val!32 Int)) )
))
(declare-datatypes ((ValueCell!10 0))(
  ( (ValueCellFull!10 (v!1117 V!247)) (EmptyCell!10) )
))
(declare-datatypes ((array!37 0))(
  ( (array!38 (arr!17 (Array (_ BitVec 32) ValueCell!10)) (size!79 (_ BitVec 32))) )
))
(declare-datatypes ((array!39 0))(
  ( (array!40 (arr!18 (Array (_ BitVec 32) (_ BitVec 64))) (size!80 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!20 0))(
  ( (LongMapFixedSize!21 (defaultEntry!1594 Int) (mask!4172 (_ BitVec 32)) (extraKeys!1511 (_ BitVec 32)) (zeroValue!1534 V!247) (minValue!1534 V!247) (_size!41 (_ BitVec 32)) (_keys!2996 array!39) (_values!1595 array!37) (_vacant!41 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20 0))(
  ( (Cell!21 (v!1118 LongMapFixedSize!20)) )
))
(declare-datatypes ((LongMap!20 0))(
  ( (LongMap!21 (underlying!21 Cell!20)) )
))
(declare-fun thiss!814 () LongMap!20)

(declare-fun isEmpty!44 (LongMapFixedSize!20) Bool)

(assert (=> b!2654 (= lt!377 (isEmpty!44 (v!1118 (underlying!21 thiss!814))))))

(declare-fun e!989 () Bool)

(declare-fun tp_is_empty!53 () Bool)

(declare-fun e!992 () Bool)

(declare-fun array_inv!7 (array!39) Bool)

(declare-fun array_inv!8 (array!37) Bool)

(assert (=> b!2655 (= e!992 (and tp!259 tp_is_empty!53 (array_inv!7 (_keys!2996 (v!1118 (underlying!21 thiss!814)))) (array_inv!8 (_values!1595 (v!1118 (underlying!21 thiss!814)))) e!989))))

(declare-fun mapIsEmpty!20 () Bool)

(declare-fun mapRes!20 () Bool)

(assert (=> mapIsEmpty!20 mapRes!20))

(declare-fun b!2656 () Bool)

(declare-fun e!987 () Bool)

(assert (=> b!2656 (= e!987 tp_is_empty!53)))

(declare-fun res!4799 () Bool)

(assert (=> start!448 (=> (not res!4799) (not e!991))))

(declare-fun valid!15 (LongMap!20) Bool)

(assert (=> start!448 (= res!4799 (valid!15 thiss!814))))

(assert (=> start!448 e!991))

(declare-fun e!993 () Bool)

(assert (=> start!448 e!993))

(declare-fun b!2657 () Bool)

(assert (=> b!2657 (= e!989 (and e!987 mapRes!20))))

(declare-fun condMapEmpty!20 () Bool)

(declare-fun mapDefault!20 () ValueCell!10)

