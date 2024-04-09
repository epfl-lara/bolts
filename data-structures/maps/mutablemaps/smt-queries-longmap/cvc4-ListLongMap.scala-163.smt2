; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3114 () Bool)

(assert start!3114)

(declare-fun b!19008 () Bool)

(declare-fun b_free!659 () Bool)

(declare-fun b_next!659 () Bool)

(assert (=> b!19008 (= b_free!659 (not b_next!659))))

(declare-fun tp!3172 () Bool)

(declare-fun b_and!1321 () Bool)

(assert (=> b!19008 (= tp!3172 b_and!1321)))

(declare-fun b!19007 () Bool)

(declare-datatypes ((V!1055 0))(
  ( (V!1056 (val!488 Int)) )
))
(declare-datatypes ((ValueCell!262 0))(
  ( (ValueCellFull!262 (v!1489 V!1055)) (EmptyCell!262) )
))
(declare-datatypes ((array!1045 0))(
  ( (array!1046 (arr!503 (Array (_ BitVec 32) ValueCell!262)) (size!593 (_ BitVec 32))) )
))
(declare-datatypes ((array!1047 0))(
  ( (array!1048 (arr!504 (Array (_ BitVec 32) (_ BitVec 64))) (size!594 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!110 0))(
  ( (LongMapFixedSize!111 (defaultEntry!1674 Int) (mask!4611 (_ BitVec 32)) (extraKeys!1584 (_ BitVec 32)) (zeroValue!1608 V!1055) (minValue!1608 V!1055) (_size!88 (_ BitVec 32)) (_keys!3099 array!1047) (_values!1670 array!1045) (_vacant!88 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!110 0))(
  ( (Cell!111 (v!1490 LongMapFixedSize!110)) )
))
(declare-datatypes ((LongMap!110 0))(
  ( (LongMap!111 (underlying!66 Cell!110)) )
))
(declare-datatypes ((tuple2!796 0))(
  ( (tuple2!797 (_1!400 Bool) (_2!400 LongMap!110)) )
))
(declare-fun e!12199 () tuple2!796)

(declare-fun thiss!848 () LongMap!110)

(declare-fun repack!27 (LongMap!110) tuple2!796)

(assert (=> b!19007 (= e!12199 (repack!27 thiss!848))))

(declare-fun tp_is_empty!923 () Bool)

(declare-fun e!12198 () Bool)

(declare-fun e!12196 () Bool)

(declare-fun array_inv!357 (array!1047) Bool)

(declare-fun array_inv!358 (array!1045) Bool)

(assert (=> b!19008 (= e!12196 (and tp!3172 tp_is_empty!923 (array_inv!357 (_keys!3099 (v!1490 (underlying!66 thiss!848)))) (array_inv!358 (_values!1670 (v!1490 (underlying!66 thiss!848)))) e!12198))))

(declare-fun b!19010 () Bool)

(declare-fun e!12200 () Bool)

(declare-fun e!12204 () Bool)

(assert (=> b!19010 (= e!12200 e!12204)))

(declare-fun b!19011 () Bool)

(declare-fun e!12203 () Bool)

(assert (=> b!19011 (= e!12203 tp_is_empty!923)))

(declare-fun b!19012 () Bool)

(declare-fun e!12202 () Bool)

(declare-fun lt!5360 () tuple2!796)

(declare-datatypes ((tuple2!798 0))(
  ( (tuple2!799 (_1!401 (_ BitVec 64)) (_2!401 V!1055)) )
))
(declare-datatypes ((List!539 0))(
  ( (Nil!536) (Cons!535 (h!1101 tuple2!798) (t!3184 List!539)) )
))
(declare-datatypes ((ListLongMap!527 0))(
  ( (ListLongMap!528 (toList!279 List!539)) )
))
(declare-fun map!362 (LongMap!110) ListLongMap!527)

(assert (=> b!19012 (= e!12202 (not (= (map!362 (_2!400 lt!5360)) (map!362 thiss!848))))))

(declare-fun mapNonEmpty!823 () Bool)

(declare-fun mapRes!823 () Bool)

(declare-fun tp!3171 () Bool)

(declare-fun e!12194 () Bool)

(assert (=> mapNonEmpty!823 (= mapRes!823 (and tp!3171 e!12194))))

(declare-fun mapValue!823 () ValueCell!262)

(declare-fun mapRest!823 () (Array (_ BitVec 32) ValueCell!262))

(declare-fun mapKey!823 () (_ BitVec 32))

(assert (=> mapNonEmpty!823 (= (arr!503 (_values!1670 (v!1490 (underlying!66 thiss!848)))) (store mapRest!823 mapKey!823 mapValue!823))))

(declare-fun b!19013 () Bool)

(assert (=> b!19013 (= e!12199 (tuple2!797 true thiss!848))))

(declare-fun mapIsEmpty!823 () Bool)

(assert (=> mapIsEmpty!823 mapRes!823))

(declare-fun res!13050 () Bool)

(declare-fun e!12201 () Bool)

(assert (=> start!3114 (=> (not res!13050) (not e!12201))))

(declare-fun valid!56 (LongMap!110) Bool)

(assert (=> start!3114 (= res!13050 (valid!56 thiss!848))))

(assert (=> start!3114 e!12201))

(assert (=> start!3114 e!12200))

(declare-fun b!19009 () Bool)

(declare-fun e!12195 () Bool)

(assert (=> b!19009 (= e!12201 e!12195)))

(declare-fun res!13048 () Bool)

(assert (=> b!19009 (=> (not res!13048) (not e!12195))))

(assert (=> b!19009 (= res!13048 (not (_1!400 lt!5360)))))

(assert (=> b!19009 (= lt!5360 e!12199)))

(declare-fun c!2037 () Bool)

(declare-fun imbalanced!30 (LongMap!110) Bool)

(assert (=> b!19009 (= c!2037 (imbalanced!30 thiss!848))))

(declare-fun b!19014 () Bool)

(assert (=> b!19014 (= e!12194 tp_is_empty!923)))

(declare-fun b!19015 () Bool)

(assert (=> b!19015 (= e!12204 e!12196)))

(declare-fun b!19016 () Bool)

(assert (=> b!19016 (= e!12195 e!12202)))

(declare-fun res!13049 () Bool)

(assert (=> b!19016 (=> res!13049 e!12202)))

(assert (=> b!19016 (= res!13049 (not (valid!56 (_2!400 lt!5360))))))

(declare-fun b!19017 () Bool)

(assert (=> b!19017 (= e!12198 (and e!12203 mapRes!823))))

(declare-fun condMapEmpty!823 () Bool)

(declare-fun mapDefault!823 () ValueCell!262)

