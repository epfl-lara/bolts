; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33704 () Bool)

(assert start!33704)

(declare-fun b_free!6931 () Bool)

(declare-fun b_next!6931 () Bool)

(assert (=> start!33704 (= b_free!6931 (not b_next!6931))))

(declare-fun tp!24297 () Bool)

(declare-fun b_and!14129 () Bool)

(assert (=> start!33704 (= tp!24297 b_and!14129)))

(declare-fun b!334663 () Bool)

(declare-fun e!205428 () Bool)

(declare-fun e!205434 () Bool)

(assert (=> b!334663 (= e!205428 e!205434)))

(declare-fun res!184646 () Bool)

(assert (=> b!334663 (=> (not res!184646) (not e!205434))))

(declare-datatypes ((V!10155 0))(
  ( (V!10156 (val!3486 Int)) )
))
(declare-datatypes ((tuple2!5064 0))(
  ( (tuple2!5065 (_1!2542 (_ BitVec 64)) (_2!2542 V!10155)) )
))
(declare-datatypes ((List!4706 0))(
  ( (Nil!4703) (Cons!4702 (h!5558 tuple2!5064) (t!9802 List!4706)) )
))
(declare-datatypes ((ListLongMap!3991 0))(
  ( (ListLongMap!3992 (toList!2011 List!4706)) )
))
(declare-fun lt!159585 () ListLongMap!3991)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun contains!2051 (ListLongMap!3991 (_ BitVec 64)) Bool)

(assert (=> b!334663 (= res!184646 (not (contains!2051 lt!159585 k!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun zeroValue!1467 () V!10155)

(declare-datatypes ((array!17351 0))(
  ( (array!17352 (arr!8203 (Array (_ BitVec 32) (_ BitVec 64))) (size!8555 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17351)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10155)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3098 0))(
  ( (ValueCellFull!3098 (v!5644 V!10155)) (EmptyCell!3098) )
))
(declare-datatypes ((array!17353 0))(
  ( (array!17354 (arr!8204 (Array (_ BitVec 32) ValueCell!3098)) (size!8556 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17353)

(declare-fun getCurrentListMap!1534 (array!17351 array!17353 (_ BitVec 32) (_ BitVec 32) V!10155 V!10155 (_ BitVec 32) Int) ListLongMap!3991)

(assert (=> b!334663 (= lt!159585 (getCurrentListMap!1534 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!334664 () Bool)

(declare-fun e!205430 () Bool)

(declare-fun e!205433 () Bool)

(declare-fun mapRes!11721 () Bool)

(assert (=> b!334664 (= e!205430 (and e!205433 mapRes!11721))))

(declare-fun condMapEmpty!11721 () Bool)

(declare-fun mapDefault!11721 () ValueCell!3098)

