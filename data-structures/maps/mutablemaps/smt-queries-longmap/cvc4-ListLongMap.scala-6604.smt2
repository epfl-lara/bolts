; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83540 () Bool)

(assert start!83540)

(declare-fun b_free!19499 () Bool)

(declare-fun b_next!19499 () Bool)

(assert (=> start!83540 (= b_free!19499 (not b_next!19499))))

(declare-fun tp!67785 () Bool)

(declare-fun b_and!31119 () Bool)

(assert (=> start!83540 (= tp!67785 b_and!31119)))

(declare-fun b!975495 () Bool)

(declare-fun e!549806 () Bool)

(declare-fun tp_is_empty!22403 () Bool)

(assert (=> b!975495 (= e!549806 tp_is_empty!22403)))

(declare-fun b!975496 () Bool)

(declare-fun res!653139 () Bool)

(declare-fun e!549805 () Bool)

(assert (=> b!975496 (=> (not res!653139) (not e!549805))))

(declare-datatypes ((array!60821 0))(
  ( (array!60822 (arr!29270 (Array (_ BitVec 32) (_ BitVec 64))) (size!29750 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60821)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!975496 (= res!653139 (validKeyInArray!0 (select (arr!29270 _keys!1717) i!822)))))

(declare-fun res!653144 () Bool)

(assert (=> start!83540 (=> (not res!653144) (not e!549805))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83540 (= res!653144 (validMask!0 mask!2147))))

(assert (=> start!83540 e!549805))

(assert (=> start!83540 true))

(declare-datatypes ((V!34853 0))(
  ( (V!34854 (val!11252 Int)) )
))
(declare-datatypes ((ValueCell!10720 0))(
  ( (ValueCellFull!10720 (v!13811 V!34853)) (EmptyCell!10720) )
))
(declare-datatypes ((array!60823 0))(
  ( (array!60824 (arr!29271 (Array (_ BitVec 32) ValueCell!10720)) (size!29751 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60823)

(declare-fun e!549803 () Bool)

(declare-fun array_inv!22531 (array!60823) Bool)

(assert (=> start!83540 (and (array_inv!22531 _values!1425) e!549803)))

(assert (=> start!83540 tp_is_empty!22403))

(assert (=> start!83540 tp!67785))

(declare-fun array_inv!22532 (array!60821) Bool)

(assert (=> start!83540 (array_inv!22532 _keys!1717)))

(declare-fun b!975497 () Bool)

(declare-fun res!653145 () Bool)

(assert (=> b!975497 (=> (not res!653145) (not e!549805))))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(assert (=> b!975497 (= res!653145 (and (= (size!29751 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29750 _keys!1717) (size!29751 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!975498 () Bool)

(declare-fun res!653140 () Bool)

(assert (=> b!975498 (=> (not res!653140) (not e!549805))))

(declare-datatypes ((List!20444 0))(
  ( (Nil!20441) (Cons!20440 (h!21602 (_ BitVec 64)) (t!28929 List!20444)) )
))
(declare-fun arrayNoDuplicates!0 (array!60821 (_ BitVec 32) List!20444) Bool)

(assert (=> b!975498 (= res!653140 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20441))))

(declare-fun b!975499 () Bool)

(declare-fun e!549807 () Bool)

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!975499 (= e!549807 (bvsge (bvsub from!2118 #b00000000000000000000000000000001) (size!29750 _keys!1717)))))

(declare-fun mapIsEmpty!35614 () Bool)

(declare-fun mapRes!35614 () Bool)

(assert (=> mapIsEmpty!35614 mapRes!35614))

(declare-fun b!975500 () Bool)

(declare-fun res!653142 () Bool)

(assert (=> b!975500 (=> (not res!653142) (not e!549805))))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34853)

(declare-fun zeroValue!1367 () V!34853)

(declare-datatypes ((tuple2!14572 0))(
  ( (tuple2!14573 (_1!7296 (_ BitVec 64)) (_2!7296 V!34853)) )
))
(declare-datatypes ((List!20445 0))(
  ( (Nil!20442) (Cons!20441 (h!21603 tuple2!14572) (t!28930 List!20445)) )
))
(declare-datatypes ((ListLongMap!13283 0))(
  ( (ListLongMap!13284 (toList!6657 List!20445)) )
))
(declare-fun contains!5689 (ListLongMap!13283 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3842 (array!60821 array!60823 (_ BitVec 32) (_ BitVec 32) V!34853 V!34853 (_ BitVec 32) Int) ListLongMap!13283)

(assert (=> b!975500 (= res!653142 (contains!5689 (getCurrentListMap!3842 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29270 _keys!1717) i!822)))))

(declare-fun b!975501 () Bool)

(declare-fun e!549804 () Bool)

(assert (=> b!975501 (= e!549804 tp_is_empty!22403)))

(declare-fun b!975502 () Bool)

(assert (=> b!975502 (= e!549803 (and e!549806 mapRes!35614))))

(declare-fun condMapEmpty!35614 () Bool)

(declare-fun mapDefault!35614 () ValueCell!10720)

