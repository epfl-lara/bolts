; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3010 () Bool)

(assert start!3010)

(declare-fun b!17737 () Bool)

(declare-fun b_free!619 () Bool)

(declare-fun b_next!619 () Bool)

(assert (=> b!17737 (= b_free!619 (not b_next!619))))

(declare-fun tp!3048 () Bool)

(declare-fun b_and!1269 () Bool)

(assert (=> b!17737 (= tp!3048 b_and!1269)))

(declare-fun mapIsEmpty!759 () Bool)

(declare-fun mapRes!759 () Bool)

(assert (=> mapIsEmpty!759 mapRes!759))

(declare-fun b!17729 () Bool)

(declare-fun e!11212 () Bool)

(assert (=> b!17729 (= e!11212 false)))

(declare-fun lt!4601 () Bool)

(declare-datatypes ((V!1003 0))(
  ( (V!1004 (val!468 Int)) )
))
(declare-datatypes ((ValueCell!242 0))(
  ( (ValueCellFull!242 (v!1440 V!1003)) (EmptyCell!242) )
))
(declare-datatypes ((array!963 0))(
  ( (array!964 (arr!463 (Array (_ BitVec 32) ValueCell!242)) (size!553 (_ BitVec 32))) )
))
(declare-datatypes ((array!965 0))(
  ( (array!966 (arr!464 (Array (_ BitVec 32) (_ BitVec 64))) (size!554 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!70 0))(
  ( (LongMapFixedSize!71 (defaultEntry!1646 Int) (mask!4569 (_ BitVec 32)) (extraKeys!1559 (_ BitVec 32)) (zeroValue!1582 V!1003) (minValue!1582 V!1003) (_size!67 (_ BitVec 32)) (_keys!3071 array!965) (_values!1643 array!963) (_vacant!67 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!70 0))(
  ( (Cell!71 (v!1441 LongMapFixedSize!70)) )
))
(declare-datatypes ((LongMap!70 0))(
  ( (LongMap!71 (underlying!46 Cell!70)) )
))
(declare-datatypes ((tuple2!742 0))(
  ( (tuple2!743 (_1!372 Bool) (_2!372 LongMap!70)) )
))
(declare-fun lt!4602 () tuple2!742)

(declare-fun valid!38 (LongMap!70) Bool)

(assert (=> b!17729 (= lt!4601 (valid!38 (_2!372 lt!4602)))))

(declare-fun b!17730 () Bool)

(declare-fun e!11213 () Bool)

(declare-fun tp_is_empty!883 () Bool)

(assert (=> b!17730 (= e!11213 tp_is_empty!883)))

(declare-fun b!17731 () Bool)

(declare-fun e!11206 () Bool)

(declare-fun e!11205 () Bool)

(assert (=> b!17731 (= e!11206 (and e!11205 mapRes!759))))

(declare-fun condMapEmpty!759 () Bool)

(declare-fun thiss!848 () LongMap!70)

(declare-fun mapDefault!759 () ValueCell!242)

