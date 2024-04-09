; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80072 () Bool)

(assert start!80072)

(declare-fun b!940987 () Bool)

(declare-fun b_free!17899 () Bool)

(declare-fun b_next!17899 () Bool)

(assert (=> b!940987 (= b_free!17899 (not b_next!17899))))

(declare-fun tp!62173 () Bool)

(declare-fun b_and!29329 () Bool)

(assert (=> b!940987 (= tp!62173 b_and!29329)))

(declare-fun b!940983 () Bool)

(declare-fun e!529014 () Bool)

(declare-fun e!529015 () Bool)

(declare-fun mapRes!32401 () Bool)

(assert (=> b!940983 (= e!529014 (and e!529015 mapRes!32401))))

(declare-fun condMapEmpty!32401 () Bool)

(declare-datatypes ((V!32175 0))(
  ( (V!32176 (val!10254 Int)) )
))
(declare-datatypes ((ValueCell!9722 0))(
  ( (ValueCellFull!9722 (v!12785 V!32175)) (EmptyCell!9722) )
))
(declare-datatypes ((array!56784 0))(
  ( (array!56785 (arr!27323 (Array (_ BitVec 32) ValueCell!9722)) (size!27785 (_ BitVec 32))) )
))
(declare-datatypes ((array!56786 0))(
  ( (array!56787 (arr!27324 (Array (_ BitVec 32) (_ BitVec 64))) (size!27786 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4594 0))(
  ( (LongMapFixedSize!4595 (defaultEntry!5588 Int) (mask!27138 (_ BitVec 32)) (extraKeys!5320 (_ BitVec 32)) (zeroValue!5424 V!32175) (minValue!5424 V!32175) (_size!2352 (_ BitVec 32)) (_keys!10434 array!56786) (_values!5611 array!56784) (_vacant!2352 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4594)

(declare-fun mapDefault!32401 () ValueCell!9722)

