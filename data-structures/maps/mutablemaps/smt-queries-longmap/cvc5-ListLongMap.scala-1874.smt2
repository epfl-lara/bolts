; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33686 () Bool)

(assert start!33686)

(declare-fun b_free!6913 () Bool)

(declare-fun b_next!6913 () Bool)

(assert (=> start!33686 (= b_free!6913 (not b_next!6913))))

(declare-fun tp!24242 () Bool)

(declare-fun b_and!14111 () Bool)

(assert (=> start!33686 (= tp!24242 b_and!14111)))

(declare-fun b!334366 () Bool)

(declare-fun res!184426 () Bool)

(declare-fun e!205256 () Bool)

(assert (=> b!334366 (=> (not res!184426) (not e!205256))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10131 0))(
  ( (V!10132 (val!3477 Int)) )
))
(declare-datatypes ((ValueCell!3089 0))(
  ( (ValueCellFull!3089 (v!5635 V!10131)) (EmptyCell!3089) )
))
(declare-datatypes ((array!17317 0))(
  ( (array!17318 (arr!8186 (Array (_ BitVec 32) ValueCell!3089)) (size!8538 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17317)

(declare-datatypes ((array!17319 0))(
  ( (array!17320 (arr!8187 (Array (_ BitVec 32) (_ BitVec 64))) (size!8539 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17319)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!334366 (= res!184426 (and (= (size!8538 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8539 _keys!1895) (size!8538 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!334367 () Bool)

(declare-fun res!184425 () Bool)

(assert (=> b!334367 (=> (not res!184425) (not e!205256))))

(declare-fun zeroValue!1467 () V!10131)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10131)

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((tuple2!5052 0))(
  ( (tuple2!5053 (_1!2536 (_ BitVec 64)) (_2!2536 V!10131)) )
))
(declare-datatypes ((List!4694 0))(
  ( (Nil!4691) (Cons!4690 (h!5546 tuple2!5052) (t!9790 List!4694)) )
))
(declare-datatypes ((ListLongMap!3979 0))(
  ( (ListLongMap!3980 (toList!2005 List!4694)) )
))
(declare-fun contains!2045 (ListLongMap!3979 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1528 (array!17319 array!17317 (_ BitVec 32) (_ BitVec 32) V!10131 V!10131 (_ BitVec 32) Int) ListLongMap!3979)

(assert (=> b!334367 (= res!184425 (not (contains!2045 (getCurrentListMap!1528 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!11694 () Bool)

(declare-fun mapRes!11694 () Bool)

(assert (=> mapIsEmpty!11694 mapRes!11694))

(declare-fun b!334368 () Bool)

(declare-fun res!184423 () Bool)

(assert (=> b!334368 (=> (not res!184423) (not e!205256))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17319 (_ BitVec 32)) Bool)

(assert (=> b!334368 (= res!184423 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!334369 () Bool)

(declare-fun e!205258 () Bool)

(declare-fun e!205259 () Bool)

(assert (=> b!334369 (= e!205258 (and e!205259 mapRes!11694))))

(declare-fun condMapEmpty!11694 () Bool)

(declare-fun mapDefault!11694 () ValueCell!3089)

