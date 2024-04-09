; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34500 () Bool)

(assert start!34500)

(declare-fun b_free!7415 () Bool)

(declare-fun b_next!7415 () Bool)

(assert (=> start!34500 (= b_free!7415 (not b_next!7415))))

(declare-fun tp!25790 () Bool)

(declare-fun b_and!14641 () Bool)

(assert (=> start!34500 (= tp!25790 b_and!14641)))

(declare-fun mapIsEmpty!12489 () Bool)

(declare-fun mapRes!12489 () Bool)

(assert (=> mapIsEmpty!12489 mapRes!12489))

(declare-fun b!344447 () Bool)

(declare-fun res!190583 () Bool)

(declare-fun e!211155 () Bool)

(assert (=> b!344447 (=> (not res!190583) (not e!211155))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10799 0))(
  ( (V!10800 (val!3728 Int)) )
))
(declare-datatypes ((ValueCell!3340 0))(
  ( (ValueCellFull!3340 (v!5900 V!10799)) (EmptyCell!3340) )
))
(declare-datatypes ((array!18289 0))(
  ( (array!18290 (arr!8658 (Array (_ BitVec 32) ValueCell!3340)) (size!9010 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18289)

(declare-datatypes ((array!18291 0))(
  ( (array!18292 (arr!8659 (Array (_ BitVec 32) (_ BitVec 64))) (size!9011 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18291)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!344447 (= res!190583 (and (= (size!9010 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9011 _keys!1895) (size!9010 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344448 () Bool)

(declare-fun res!190582 () Bool)

(assert (=> b!344448 (=> (not res!190582) (not e!211155))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10799)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10799)

(declare-datatypes ((tuple2!5384 0))(
  ( (tuple2!5385 (_1!2702 (_ BitVec 64)) (_2!2702 V!10799)) )
))
(declare-datatypes ((List!5029 0))(
  ( (Nil!5026) (Cons!5025 (h!5881 tuple2!5384) (t!10153 List!5029)) )
))
(declare-datatypes ((ListLongMap!4311 0))(
  ( (ListLongMap!4312 (toList!2171 List!5029)) )
))
(declare-fun contains!2225 (ListLongMap!4311 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1691 (array!18291 array!18289 (_ BitVec 32) (_ BitVec 32) V!10799 V!10799 (_ BitVec 32) Int) ListLongMap!4311)

(assert (=> b!344448 (= res!190582 (not (contains!2225 (getCurrentListMap!1691 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!344449 () Bool)

(declare-fun e!211157 () Bool)

(declare-fun tp_is_empty!7367 () Bool)

(assert (=> b!344449 (= e!211157 tp_is_empty!7367)))

(declare-fun b!344450 () Bool)

(declare-fun e!211156 () Bool)

(assert (=> b!344450 (= e!211156 tp_is_empty!7367)))

(declare-fun b!344451 () Bool)

(declare-fun res!190586 () Bool)

(assert (=> b!344451 (=> (not res!190586) (not e!211155))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344451 (= res!190586 (validKeyInArray!0 k!1348))))

(declare-fun b!344452 () Bool)

(declare-fun res!190581 () Bool)

(assert (=> b!344452 (=> (not res!190581) (not e!211155))))

(declare-datatypes ((List!5030 0))(
  ( (Nil!5027) (Cons!5026 (h!5882 (_ BitVec 64)) (t!10154 List!5030)) )
))
(declare-fun arrayNoDuplicates!0 (array!18291 (_ BitVec 32) List!5030) Bool)

(assert (=> b!344452 (= res!190581 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5027))))

(declare-fun b!344453 () Bool)

(declare-fun res!190585 () Bool)

(assert (=> b!344453 (=> (not res!190585) (not e!211155))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18291 (_ BitVec 32)) Bool)

(assert (=> b!344453 (= res!190585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344454 () Bool)

(declare-fun e!211158 () Bool)

(assert (=> b!344454 (= e!211158 (and e!211157 mapRes!12489))))

(declare-fun condMapEmpty!12489 () Bool)

(declare-fun mapDefault!12489 () ValueCell!3340)

