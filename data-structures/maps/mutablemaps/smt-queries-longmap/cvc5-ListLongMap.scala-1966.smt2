; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34588 () Bool)

(assert start!34588)

(declare-fun b_free!7465 () Bool)

(declare-fun b_next!7465 () Bool)

(assert (=> start!34588 (= b_free!7465 (not b_next!7465))))

(declare-fun tp!25946 () Bool)

(declare-fun b_and!14695 () Bool)

(assert (=> start!34588 (= tp!25946 b_and!14695)))

(declare-fun b!345391 () Bool)

(declare-fun res!191140 () Bool)

(declare-fun e!211709 () Bool)

(assert (=> b!345391 (=> (not res!191140) (not e!211709))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!345391 (= res!191140 (validKeyInArray!0 k!1348))))

(declare-fun b!345392 () Bool)

(declare-fun e!211708 () Bool)

(declare-fun tp_is_empty!7417 () Bool)

(assert (=> b!345392 (= e!211708 tp_is_empty!7417)))

(declare-fun b!345393 () Bool)

(declare-fun e!211707 () Bool)

(assert (=> b!345393 (= e!211707 tp_is_empty!7417)))

(declare-fun res!191141 () Bool)

(assert (=> start!34588 (=> (not res!191141) (not e!211709))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34588 (= res!191141 (validMask!0 mask!2385))))

(assert (=> start!34588 e!211709))

(assert (=> start!34588 true))

(assert (=> start!34588 tp_is_empty!7417))

(assert (=> start!34588 tp!25946))

(declare-datatypes ((V!10867 0))(
  ( (V!10868 (val!3753 Int)) )
))
(declare-datatypes ((ValueCell!3365 0))(
  ( (ValueCellFull!3365 (v!5927 V!10867)) (EmptyCell!3365) )
))
(declare-datatypes ((array!18389 0))(
  ( (array!18390 (arr!8706 (Array (_ BitVec 32) ValueCell!3365)) (size!9058 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18389)

(declare-fun e!211706 () Bool)

(declare-fun array_inv!6438 (array!18389) Bool)

(assert (=> start!34588 (and (array_inv!6438 _values!1525) e!211706)))

(declare-datatypes ((array!18391 0))(
  ( (array!18392 (arr!8707 (Array (_ BitVec 32) (_ BitVec 64))) (size!9059 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18391)

(declare-fun array_inv!6439 (array!18391) Bool)

(assert (=> start!34588 (array_inv!6439 _keys!1895)))

(declare-fun b!345394 () Bool)

(declare-fun res!191136 () Bool)

(assert (=> b!345394 (=> (not res!191136) (not e!211709))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18391 (_ BitVec 32)) Bool)

(assert (=> b!345394 (= res!191136 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!345395 () Bool)

(declare-fun res!191137 () Bool)

(assert (=> b!345395 (=> (not res!191137) (not e!211709))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!345395 (= res!191137 (and (= (size!9058 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9059 _keys!1895) (size!9058 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!345396 () Bool)

(declare-fun res!191139 () Bool)

(assert (=> b!345396 (=> (not res!191139) (not e!211709))))

(declare-fun zeroValue!1467 () V!10867)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10867)

(declare-datatypes ((tuple2!5416 0))(
  ( (tuple2!5417 (_1!2718 (_ BitVec 64)) (_2!2718 V!10867)) )
))
(declare-datatypes ((List!5065 0))(
  ( (Nil!5062) (Cons!5061 (h!5917 tuple2!5416) (t!10193 List!5065)) )
))
(declare-datatypes ((ListLongMap!4343 0))(
  ( (ListLongMap!4344 (toList!2187 List!5065)) )
))
(declare-fun contains!2243 (ListLongMap!4343 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1707 (array!18391 array!18389 (_ BitVec 32) (_ BitVec 32) V!10867 V!10867 (_ BitVec 32) Int) ListLongMap!4343)

(assert (=> b!345396 (= res!191139 (not (contains!2243 (getCurrentListMap!1707 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!345397 () Bool)

(declare-fun mapRes!12570 () Bool)

(assert (=> b!345397 (= e!211706 (and e!211708 mapRes!12570))))

(declare-fun condMapEmpty!12570 () Bool)

(declare-fun mapDefault!12570 () ValueCell!3365)

