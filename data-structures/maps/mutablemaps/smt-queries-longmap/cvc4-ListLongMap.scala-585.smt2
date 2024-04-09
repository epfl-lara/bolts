; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15668 () Bool)

(assert start!15668)

(declare-fun b!155958 () Bool)

(declare-fun b_free!3323 () Bool)

(declare-fun b_next!3323 () Bool)

(assert (=> b!155958 (= b_free!3323 (not b_next!3323))))

(declare-fun tp!12494 () Bool)

(declare-fun b_and!9755 () Bool)

(assert (=> b!155958 (= tp!12494 b_and!9755)))

(declare-fun mapNonEmpty!5330 () Bool)

(declare-fun mapRes!5330 () Bool)

(declare-fun tp!12493 () Bool)

(declare-fun e!101979 () Bool)

(assert (=> mapNonEmpty!5330 (= mapRes!5330 (and tp!12493 e!101979))))

(declare-datatypes ((V!3813 0))(
  ( (V!3814 (val!1607 Int)) )
))
(declare-datatypes ((ValueCell!1219 0))(
  ( (ValueCellFull!1219 (v!3468 V!3813)) (EmptyCell!1219) )
))
(declare-fun mapRest!5330 () (Array (_ BitVec 32) ValueCell!1219))

(declare-fun mapValue!5330 () ValueCell!1219)

(declare-fun mapKey!5330 () (_ BitVec 32))

(declare-datatypes ((array!5302 0))(
  ( (array!5303 (arr!2508 (Array (_ BitVec 32) (_ BitVec 64))) (size!2786 (_ BitVec 32))) )
))
(declare-datatypes ((array!5304 0))(
  ( (array!5305 (arr!2509 (Array (_ BitVec 32) ValueCell!1219)) (size!2787 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1346 0))(
  ( (LongMapFixedSize!1347 (defaultEntry!3115 Int) (mask!7554 (_ BitVec 32)) (extraKeys!2856 (_ BitVec 32)) (zeroValue!2958 V!3813) (minValue!2958 V!3813) (_size!722 (_ BitVec 32)) (_keys!4890 array!5302) (_values!3098 array!5304) (_vacant!722 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1346)

(assert (=> mapNonEmpty!5330 (= (arr!2509 (_values!3098 thiss!1248)) (store mapRest!5330 mapKey!5330 mapValue!5330))))

(declare-fun mapIsEmpty!5330 () Bool)

(assert (=> mapIsEmpty!5330 mapRes!5330))

(declare-fun res!73678 () Bool)

(declare-fun e!101984 () Bool)

(assert (=> start!15668 (=> (not res!73678) (not e!101984))))

(declare-fun valid!650 (LongMapFixedSize!1346) Bool)

(assert (=> start!15668 (= res!73678 (valid!650 thiss!1248))))

(assert (=> start!15668 e!101984))

(declare-fun e!101983 () Bool)

(assert (=> start!15668 e!101983))

(assert (=> start!15668 true))

(declare-fun tp_is_empty!3125 () Bool)

(assert (=> start!15668 tp_is_empty!3125))

(declare-fun b!155953 () Bool)

(declare-fun e!101980 () Bool)

(declare-fun e!101981 () Bool)

(assert (=> b!155953 (= e!101980 (and e!101981 mapRes!5330))))

(declare-fun condMapEmpty!5330 () Bool)

(declare-fun mapDefault!5330 () ValueCell!1219)

