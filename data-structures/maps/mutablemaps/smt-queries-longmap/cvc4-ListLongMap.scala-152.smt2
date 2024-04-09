; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2984 () Bool)

(assert start!2984)

(declare-fun b!17307 () Bool)

(declare-fun b_free!593 () Bool)

(declare-fun b_next!593 () Bool)

(assert (=> b!17307 (= b_free!593 (not b_next!593))))

(declare-fun tp!2970 () Bool)

(declare-fun b_and!1243 () Bool)

(assert (=> b!17307 (= tp!2970 b_and!1243)))

(declare-fun b!17303 () Bool)

(declare-datatypes ((V!967 0))(
  ( (V!968 (val!455 Int)) )
))
(declare-datatypes ((ValueCell!229 0))(
  ( (ValueCellFull!229 (v!1414 V!967)) (EmptyCell!229) )
))
(declare-datatypes ((array!911 0))(
  ( (array!912 (arr!437 (Array (_ BitVec 32) ValueCell!229)) (size!527 (_ BitVec 32))) )
))
(declare-datatypes ((array!913 0))(
  ( (array!914 (arr!438 (Array (_ BitVec 32) (_ BitVec 64))) (size!528 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!44 0))(
  ( (LongMapFixedSize!45 (defaultEntry!1633 Int) (mask!4546 (_ BitVec 32)) (extraKeys!1546 (_ BitVec 32)) (zeroValue!1569 V!967) (minValue!1569 V!967) (_size!54 (_ BitVec 32)) (_keys!3058 array!913) (_values!1630 array!911) (_vacant!54 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!44 0))(
  ( (Cell!45 (v!1415 LongMapFixedSize!44)) )
))
(declare-datatypes ((LongMap!44 0))(
  ( (LongMap!45 (underlying!33 Cell!44)) )
))
(declare-datatypes ((tuple2!692 0))(
  ( (tuple2!693 (_1!347 Bool) (_2!347 LongMap!44)) )
))
(declare-fun e!10805 () tuple2!692)

(declare-fun thiss!848 () LongMap!44)

(declare-fun repack!3 (LongMap!44) tuple2!692)

(assert (=> b!17303 (= e!10805 (repack!3 thiss!848))))

(declare-fun b!17304 () Bool)

(declare-fun e!10799 () Bool)

(assert (=> b!17304 (= e!10799 false)))

(declare-fun key!682 () (_ BitVec 64))

(declare-fun lt!4488 () tuple2!692)

(declare-fun lt!4487 () Bool)

(declare-fun v!259 () V!967)

(declare-fun valid!29 (LongMap!44) Bool)

(declare-datatypes ((tuple2!694 0))(
  ( (tuple2!695 (_1!348 Bool) (_2!348 LongMapFixedSize!44)) )
))
(declare-fun update!4 (LongMapFixedSize!44 (_ BitVec 64) V!967) tuple2!694)

(assert (=> b!17304 (= lt!4487 (valid!29 (LongMap!45 (Cell!45 (_2!348 (update!4 (v!1415 (underlying!33 (_2!347 lt!4488))) key!682 v!259))))))))

(declare-fun b!17305 () Bool)

(declare-fun e!10803 () Bool)

(declare-fun tp_is_empty!857 () Bool)

(assert (=> b!17305 (= e!10803 tp_is_empty!857)))

(declare-fun b!17306 () Bool)

(declare-fun e!10801 () Bool)

(assert (=> b!17306 (= e!10801 e!10799)))

(declare-fun res!12537 () Bool)

(assert (=> b!17306 (=> (not res!12537) (not e!10799))))

(assert (=> b!17306 (= res!12537 (_1!347 lt!4488))))

(assert (=> b!17306 (= lt!4488 e!10805)))

(declare-fun c!1744 () Bool)

(declare-fun imbalanced!5 (LongMap!44) Bool)

(assert (=> b!17306 (= c!1744 (imbalanced!5 thiss!848))))

(declare-fun b!17308 () Bool)

(declare-fun e!10804 () Bool)

(declare-fun e!10798 () Bool)

(assert (=> b!17308 (= e!10804 e!10798)))

(declare-fun b!17309 () Bool)

(declare-fun e!10800 () Bool)

(declare-fun e!10796 () Bool)

(declare-fun mapRes!720 () Bool)

(assert (=> b!17309 (= e!10800 (and e!10796 mapRes!720))))

(declare-fun condMapEmpty!720 () Bool)

(declare-fun mapDefault!720 () ValueCell!229)

