; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34080 () Bool)

(assert start!34080)

(declare-fun b_free!7151 () Bool)

(declare-fun b_next!7151 () Bool)

(assert (=> start!34080 (= b_free!7151 (not b_next!7151))))

(declare-fun tp!24978 () Bool)

(declare-fun b_and!14363 () Bool)

(assert (=> start!34080 (= tp!24978 b_and!14363)))

(declare-fun mapNonEmpty!12072 () Bool)

(declare-fun mapRes!12072 () Bool)

(declare-fun tp!24977 () Bool)

(declare-fun e!208186 () Bool)

(assert (=> mapNonEmpty!12072 (= mapRes!12072 (and tp!24977 e!208186))))

(declare-datatypes ((V!10447 0))(
  ( (V!10448 (val!3596 Int)) )
))
(declare-datatypes ((ValueCell!3208 0))(
  ( (ValueCellFull!3208 (v!5761 V!10447)) (EmptyCell!3208) )
))
(declare-fun mapValue!12072 () ValueCell!3208)

(declare-datatypes ((array!17777 0))(
  ( (array!17778 (arr!8409 (Array (_ BitVec 32) ValueCell!3208)) (size!8761 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17777)

(declare-fun mapKey!12072 () (_ BitVec 32))

(declare-fun mapRest!12072 () (Array (_ BitVec 32) ValueCell!3208))

(assert (=> mapNonEmpty!12072 (= (arr!8409 _values!1525) (store mapRest!12072 mapKey!12072 mapValue!12072))))

(declare-fun b!339307 () Bool)

(declare-fun res!187487 () Bool)

(declare-fun e!208189 () Bool)

(assert (=> b!339307 (=> (not res!187487) (not e!208189))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((array!17779 0))(
  ( (array!17780 (arr!8410 (Array (_ BitVec 32) (_ BitVec 64))) (size!8762 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17779)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!339307 (= res!187487 (and (= (size!8761 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8762 _keys!1895) (size!8761 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!339308 () Bool)

(declare-fun e!208191 () Bool)

(declare-fun tp_is_empty!7103 () Bool)

(assert (=> b!339308 (= e!208191 tp_is_empty!7103)))

(declare-fun b!339309 () Bool)

(declare-datatypes ((Unit!10575 0))(
  ( (Unit!10576) )
))
(declare-fun e!208190 () Unit!10575)

(declare-fun Unit!10577 () Unit!10575)

(assert (=> b!339309 (= e!208190 Unit!10577)))

(declare-fun b!339310 () Bool)

(assert (=> b!339310 (= e!208186 tp_is_empty!7103)))

(declare-fun b!339311 () Bool)

(declare-fun res!187486 () Bool)

(assert (=> b!339311 (=> (not res!187486) (not e!208189))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17779 (_ BitVec 32)) Bool)

(assert (=> b!339311 (= res!187486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!339312 () Bool)

(declare-fun res!187485 () Bool)

(assert (=> b!339312 (=> (not res!187485) (not e!208189))))

(declare-datatypes ((List!4854 0))(
  ( (Nil!4851) (Cons!4850 (h!5706 (_ BitVec 64)) (t!9964 List!4854)) )
))
(declare-fun arrayNoDuplicates!0 (array!17779 (_ BitVec 32) List!4854) Bool)

(assert (=> b!339312 (= res!187485 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4851))))

(declare-fun b!339313 () Bool)

(declare-fun res!187484 () Bool)

(assert (=> b!339313 (=> (not res!187484) (not e!208189))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10447)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10447)

(declare-datatypes ((tuple2!5212 0))(
  ( (tuple2!5213 (_1!2616 (_ BitVec 64)) (_2!2616 V!10447)) )
))
(declare-datatypes ((List!4855 0))(
  ( (Nil!4852) (Cons!4851 (h!5707 tuple2!5212) (t!9965 List!4855)) )
))
(declare-datatypes ((ListLongMap!4139 0))(
  ( (ListLongMap!4140 (toList!2085 List!4855)) )
))
(declare-fun contains!2132 (ListLongMap!4139 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1605 (array!17779 array!17777 (_ BitVec 32) (_ BitVec 32) V!10447 V!10447 (_ BitVec 32) Int) ListLongMap!4139)

(assert (=> b!339313 (= res!187484 (not (contains!2132 (getCurrentListMap!1605 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!339314 () Bool)

(declare-fun e!208188 () Bool)

(assert (=> b!339314 (= e!208188 (and e!208191 mapRes!12072))))

(declare-fun condMapEmpty!12072 () Bool)

(declare-fun mapDefault!12072 () ValueCell!3208)

