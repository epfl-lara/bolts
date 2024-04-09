; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3014 () Bool)

(assert start!3014)

(declare-fun b!17789 () Bool)

(declare-fun b_free!623 () Bool)

(declare-fun b_next!623 () Bool)

(assert (=> b!17789 (= b_free!623 (not b_next!623))))

(declare-fun tp!3059 () Bool)

(declare-fun b_and!1273 () Bool)

(assert (=> b!17789 (= tp!3059 b_and!1273)))

(declare-fun res!12662 () Bool)

(declare-fun e!11273 () Bool)

(assert (=> start!3014 (=> (not res!12662) (not e!11273))))

(declare-datatypes ((V!1007 0))(
  ( (V!1008 (val!470 Int)) )
))
(declare-datatypes ((ValueCell!244 0))(
  ( (ValueCellFull!244 (v!1444 V!1007)) (EmptyCell!244) )
))
(declare-datatypes ((array!971 0))(
  ( (array!972 (arr!467 (Array (_ BitVec 32) ValueCell!244)) (size!557 (_ BitVec 32))) )
))
(declare-datatypes ((array!973 0))(
  ( (array!974 (arr!468 (Array (_ BitVec 32) (_ BitVec 64))) (size!558 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!74 0))(
  ( (LongMapFixedSize!75 (defaultEntry!1648 Int) (mask!4571 (_ BitVec 32)) (extraKeys!1561 (_ BitVec 32)) (zeroValue!1584 V!1007) (minValue!1584 V!1007) (_size!69 (_ BitVec 32)) (_keys!3073 array!973) (_values!1645 array!971) (_vacant!69 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!74 0))(
  ( (Cell!75 (v!1445 LongMapFixedSize!74)) )
))
(declare-datatypes ((LongMap!74 0))(
  ( (LongMap!75 (underlying!48 Cell!74)) )
))
(declare-fun thiss!848 () LongMap!74)

(declare-fun valid!40 (LongMap!74) Bool)

(assert (=> start!3014 (= res!12662 (valid!40 thiss!848))))

(assert (=> start!3014 e!11273))

(declare-fun e!11265 () Bool)

(assert (=> start!3014 e!11265))

(declare-fun tp_is_empty!887 () Bool)

(declare-fun e!11270 () Bool)

(declare-fun e!11268 () Bool)

(declare-fun array_inv!329 (array!973) Bool)

(declare-fun array_inv!330 (array!971) Bool)

(assert (=> b!17789 (= e!11270 (and tp!3059 tp_is_empty!887 (array_inv!329 (_keys!3073 (v!1445 (underlying!48 thiss!848)))) (array_inv!330 (_values!1645 (v!1445 (underlying!48 thiss!848)))) e!11268))))

(declare-fun b!17790 () Bool)

(declare-fun e!11267 () Bool)

(assert (=> b!17790 (= e!11267 tp_is_empty!887)))

(declare-fun mapIsEmpty!765 () Bool)

(declare-fun mapRes!765 () Bool)

(assert (=> mapIsEmpty!765 mapRes!765))

(declare-fun b!17791 () Bool)

(declare-fun e!11266 () Bool)

(assert (=> b!17791 (= e!11266 e!11270)))

(declare-fun b!17792 () Bool)

(declare-fun e!11272 () Bool)

(assert (=> b!17792 (= e!11272 false)))

(declare-fun lt!4613 () Bool)

(declare-datatypes ((tuple2!746 0))(
  ( (tuple2!747 (_1!374 Bool) (_2!374 LongMap!74)) )
))
(declare-fun lt!4614 () tuple2!746)

(assert (=> b!17792 (= lt!4613 (valid!40 (_2!374 lt!4614)))))

(declare-fun b!17793 () Bool)

(declare-fun e!11271 () tuple2!746)

(assert (=> b!17793 (= e!11271 (tuple2!747 true thiss!848))))

(declare-fun b!17794 () Bool)

(declare-fun e!11264 () Bool)

(assert (=> b!17794 (= e!11268 (and e!11264 mapRes!765))))

(declare-fun condMapEmpty!765 () Bool)

(declare-fun mapDefault!765 () ValueCell!244)

