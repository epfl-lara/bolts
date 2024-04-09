; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34506 () Bool)

(assert start!34506)

(declare-fun b_free!7421 () Bool)

(declare-fun b_next!7421 () Bool)

(assert (=> start!34506 (= b_free!7421 (not b_next!7421))))

(declare-fun tp!25808 () Bool)

(declare-fun b_and!14647 () Bool)

(assert (=> start!34506 (= tp!25808 b_and!14647)))

(declare-fun b!344528 () Bool)

(declare-fun res!190640 () Bool)

(declare-fun e!211202 () Bool)

(assert (=> b!344528 (=> (not res!190640) (not e!211202))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10807 0))(
  ( (V!10808 (val!3731 Int)) )
))
(declare-fun zeroValue!1467 () V!10807)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3343 0))(
  ( (ValueCellFull!3343 (v!5903 V!10807)) (EmptyCell!3343) )
))
(declare-datatypes ((array!18301 0))(
  ( (array!18302 (arr!8664 (Array (_ BitVec 32) ValueCell!3343)) (size!9016 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18301)

(declare-datatypes ((array!18303 0))(
  ( (array!18304 (arr!8665 (Array (_ BitVec 32) (_ BitVec 64))) (size!9017 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18303)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10807)

(declare-datatypes ((tuple2!5388 0))(
  ( (tuple2!5389 (_1!2704 (_ BitVec 64)) (_2!2704 V!10807)) )
))
(declare-datatypes ((List!5034 0))(
  ( (Nil!5031) (Cons!5030 (h!5886 tuple2!5388) (t!10158 List!5034)) )
))
(declare-datatypes ((ListLongMap!4315 0))(
  ( (ListLongMap!4316 (toList!2173 List!5034)) )
))
(declare-fun contains!2227 (ListLongMap!4315 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1693 (array!18303 array!18301 (_ BitVec 32) (_ BitVec 32) V!10807 V!10807 (_ BitVec 32) Int) ListLongMap!4315)

(assert (=> b!344528 (= res!190640 (not (contains!2227 (getCurrentListMap!1693 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapNonEmpty!12498 () Bool)

(declare-fun mapRes!12498 () Bool)

(declare-fun tp!25809 () Bool)

(declare-fun e!211200 () Bool)

(assert (=> mapNonEmpty!12498 (= mapRes!12498 (and tp!25809 e!211200))))

(declare-fun mapRest!12498 () (Array (_ BitVec 32) ValueCell!3343))

(declare-fun mapValue!12498 () ValueCell!3343)

(declare-fun mapKey!12498 () (_ BitVec 32))

(assert (=> mapNonEmpty!12498 (= (arr!8664 _values!1525) (store mapRest!12498 mapKey!12498 mapValue!12498))))

(declare-fun b!344529 () Bool)

(declare-fun res!190638 () Bool)

(assert (=> b!344529 (=> (not res!190638) (not e!211202))))

(declare-datatypes ((List!5035 0))(
  ( (Nil!5032) (Cons!5031 (h!5887 (_ BitVec 64)) (t!10159 List!5035)) )
))
(declare-fun arrayNoDuplicates!0 (array!18303 (_ BitVec 32) List!5035) Bool)

(assert (=> b!344529 (= res!190638 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5032))))

(declare-fun b!344530 () Bool)

(declare-fun e!211201 () Bool)

(declare-fun e!211203 () Bool)

(assert (=> b!344530 (= e!211201 (and e!211203 mapRes!12498))))

(declare-fun condMapEmpty!12498 () Bool)

(declare-fun mapDefault!12498 () ValueCell!3343)

