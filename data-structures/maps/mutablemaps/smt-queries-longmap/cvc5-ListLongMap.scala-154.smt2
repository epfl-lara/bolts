; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2992 () Bool)

(assert start!2992)

(declare-fun b!17448 () Bool)

(declare-fun b_free!601 () Bool)

(declare-fun b_next!601 () Bool)

(assert (=> b!17448 (= b_free!601 (not b_next!601))))

(declare-fun tp!2994 () Bool)

(declare-fun b_and!1251 () Bool)

(assert (=> b!17448 (= tp!2994 b_and!1251)))

(declare-fun b!17445 () Bool)

(declare-fun e!10936 () Bool)

(declare-fun e!10932 () Bool)

(assert (=> b!17445 (= e!10936 e!10932)))

(declare-fun res!12583 () Bool)

(assert (=> b!17445 (=> (not res!12583) (not e!10932))))

(declare-datatypes ((V!979 0))(
  ( (V!980 (val!459 Int)) )
))
(declare-datatypes ((ValueCell!233 0))(
  ( (ValueCellFull!233 (v!1422 V!979)) (EmptyCell!233) )
))
(declare-datatypes ((array!927 0))(
  ( (array!928 (arr!445 (Array (_ BitVec 32) ValueCell!233)) (size!535 (_ BitVec 32))) )
))
(declare-datatypes ((array!929 0))(
  ( (array!930 (arr!446 (Array (_ BitVec 32) (_ BitVec 64))) (size!536 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!52 0))(
  ( (LongMapFixedSize!53 (defaultEntry!1637 Int) (mask!4554 (_ BitVec 32)) (extraKeys!1550 (_ BitVec 32)) (zeroValue!1573 V!979) (minValue!1573 V!979) (_size!58 (_ BitVec 32)) (_keys!3062 array!929) (_values!1634 array!927) (_vacant!58 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!52 0))(
  ( (Cell!53 (v!1423 LongMapFixedSize!52)) )
))
(declare-datatypes ((LongMap!52 0))(
  ( (LongMap!53 (underlying!37 Cell!52)) )
))
(declare-datatypes ((tuple2!714 0))(
  ( (tuple2!715 (_1!358 Bool) (_2!358 LongMap!52)) )
))
(declare-fun lt!4535 () tuple2!714)

(assert (=> b!17445 (= res!12583 (_1!358 lt!4535))))

(declare-fun e!10927 () tuple2!714)

(assert (=> b!17445 (= lt!4535 e!10927)))

(declare-fun c!1756 () Bool)

(declare-fun thiss!848 () LongMap!52)

(declare-fun imbalanced!9 (LongMap!52) Bool)

(assert (=> b!17445 (= c!1756 (imbalanced!9 thiss!848))))

(declare-fun b!17446 () Bool)

(assert (=> b!17446 (= e!10927 (tuple2!715 true thiss!848))))

(declare-fun b!17447 () Bool)

(declare-fun e!10937 () Bool)

(declare-fun e!10930 () Bool)

(declare-fun mapRes!732 () Bool)

(assert (=> b!17447 (= e!10937 (and e!10930 mapRes!732))))

(declare-fun condMapEmpty!732 () Bool)

(declare-fun mapDefault!732 () ValueCell!233)

