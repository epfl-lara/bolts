; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3234 () Bool)

(assert start!3234)

(declare-fun b!19697 () Bool)

(declare-fun b_free!691 () Bool)

(declare-fun b_next!691 () Bool)

(assert (=> b!19697 (= b_free!691 (not b_next!691))))

(declare-fun tp!3291 () Bool)

(declare-fun b_and!1357 () Bool)

(assert (=> b!19697 (= tp!3291 b_and!1357)))

(declare-fun res!13259 () Bool)

(declare-fun e!12778 () Bool)

(assert (=> start!3234 (=> (not res!13259) (not e!12778))))

(declare-datatypes ((V!1099 0))(
  ( (V!1100 (val!504 Int)) )
))
(declare-datatypes ((ValueCell!278 0))(
  ( (ValueCellFull!278 (v!1524 V!1099)) (EmptyCell!278) )
))
(declare-datatypes ((array!1121 0))(
  ( (array!1122 (arr!535 (Array (_ BitVec 32) ValueCell!278)) (size!628 (_ BitVec 32))) )
))
(declare-datatypes ((array!1123 0))(
  ( (array!1124 (arr!536 (Array (_ BitVec 32) (_ BitVec 64))) (size!629 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!142 0))(
  ( (LongMapFixedSize!143 (defaultEntry!1691 Int) (mask!4647 (_ BitVec 32)) (extraKeys!1600 (_ BitVec 32)) (zeroValue!1624 V!1099) (minValue!1624 V!1099) (_size!106 (_ BitVec 32)) (_keys!3118 array!1123) (_values!1686 array!1121) (_vacant!106 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!142 0))(
  ( (Cell!143 (v!1525 LongMapFixedSize!142)) )
))
(declare-datatypes ((LongMap!142 0))(
  ( (LongMap!143 (underlying!82 Cell!142)) )
))
(declare-fun thiss!938 () LongMap!142)

(declare-fun valid!70 (LongMap!142) Bool)

(assert (=> start!3234 (= res!13259 (valid!70 thiss!938))))

(assert (=> start!3234 e!12778))

(declare-fun e!12781 () Bool)

(assert (=> start!3234 e!12781))

(declare-fun b!19690 () Bool)

(declare-fun e!12782 () Bool)

(assert (=> b!19690 (= e!12781 e!12782)))

(declare-fun b!19691 () Bool)

(declare-fun e!12783 () Bool)

(declare-fun tp_is_empty!955 () Bool)

(assert (=> b!19691 (= e!12783 tp_is_empty!955)))

(declare-fun mapNonEmpty!895 () Bool)

(declare-fun mapRes!895 () Bool)

(declare-fun tp!3292 () Bool)

(assert (=> mapNonEmpty!895 (= mapRes!895 (and tp!3292 e!12783))))

(declare-fun mapValue!895 () ValueCell!278)

(declare-fun mapKey!895 () (_ BitVec 32))

(declare-fun mapRest!895 () (Array (_ BitVec 32) ValueCell!278))

(assert (=> mapNonEmpty!895 (= (arr!535 (_values!1686 (v!1525 (underlying!82 thiss!938)))) (store mapRest!895 mapKey!895 mapValue!895))))

(declare-fun b!19692 () Bool)

(declare-fun e!12779 () Bool)

(declare-fun lt!5519 () LongMapFixedSize!142)

(declare-fun valid!71 (LongMapFixedSize!142) Bool)

(declare-datatypes ((tuple2!810 0))(
  ( (tuple2!811 (_1!408 Bool) (_2!408 LongMapFixedSize!142)) )
))
(declare-fun update!14 (LongMapFixedSize!142 (_ BitVec 64) V!1099) tuple2!810)

(assert (=> b!19692 (= e!12779 (not (valid!71 (_2!408 (update!14 lt!5519 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1624 (v!1525 (underlying!82 thiss!938))))))))))

(declare-fun b!19693 () Bool)

(declare-fun e!12780 () Bool)

(assert (=> b!19693 (= e!12780 tp_is_empty!955)))

(declare-fun b!19694 () Bool)

(declare-fun e!12785 () Bool)

(assert (=> b!19694 (= e!12782 e!12785)))

(declare-fun mapIsEmpty!895 () Bool)

(assert (=> mapIsEmpty!895 mapRes!895))

(declare-fun b!19695 () Bool)

(assert (=> b!19695 (= e!12778 e!12779)))

(declare-fun res!13260 () Bool)

(assert (=> b!19695 (=> (not res!13260) (not e!12779))))

(assert (=> b!19695 (= res!13260 (and (not (= (bvand (extraKeys!1600 (v!1525 (underlying!82 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!1600 (v!1525 (underlying!82 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun getNewLongMapFixedSize!11 ((_ BitVec 32) Int) LongMapFixedSize!142)

(declare-fun computeNewMask!8 (LongMap!142 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!19695 (= lt!5519 (getNewLongMapFixedSize!11 (computeNewMask!8 thiss!938 (mask!4647 (v!1525 (underlying!82 thiss!938))) (_vacant!106 (v!1525 (underlying!82 thiss!938))) (_size!106 (v!1525 (underlying!82 thiss!938)))) (defaultEntry!1691 (v!1525 (underlying!82 thiss!938)))))))

(declare-fun b!19696 () Bool)

(declare-fun e!12786 () Bool)

(assert (=> b!19696 (= e!12786 (and e!12780 mapRes!895))))

(declare-fun condMapEmpty!895 () Bool)

(declare-fun mapDefault!895 () ValueCell!278)

