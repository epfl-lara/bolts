; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82422 () Bool)

(assert start!82422)

(declare-fun b_free!18661 () Bool)

(declare-fun b_next!18661 () Bool)

(assert (=> start!82422 (= b_free!18661 (not b_next!18661))))

(declare-fun tp!64953 () Bool)

(declare-fun b_and!30167 () Bool)

(assert (=> start!82422 (= tp!64953 b_and!30167)))

(declare-fun b!960598 () Bool)

(declare-fun res!643122 () Bool)

(declare-fun e!541521 () Bool)

(assert (=> b!960598 (=> (not res!643122) (not e!541521))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33481 0))(
  ( (V!33482 (val!10737 Int)) )
))
(declare-fun minValue!1328 () V!33481)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58845 0))(
  ( (array!58846 (arr!28292 (Array (_ BitVec 32) (_ BitVec 64))) (size!28772 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58845)

(declare-datatypes ((ValueCell!10205 0))(
  ( (ValueCellFull!10205 (v!13294 V!33481)) (EmptyCell!10205) )
))
(declare-datatypes ((array!58847 0))(
  ( (array!58848 (arr!28293 (Array (_ BitVec 32) ValueCell!10205)) (size!28773 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58847)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33481)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((tuple2!13934 0))(
  ( (tuple2!13935 (_1!6977 (_ BitVec 64)) (_2!6977 V!33481)) )
))
(declare-datatypes ((List!19793 0))(
  ( (Nil!19790) (Cons!19789 (h!20951 tuple2!13934) (t!28164 List!19793)) )
))
(declare-datatypes ((ListLongMap!12645 0))(
  ( (ListLongMap!12646 (toList!6338 List!19793)) )
))
(declare-fun contains!5388 (ListLongMap!12645 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3523 (array!58845 array!58847 (_ BitVec 32) (_ BitVec 32) V!33481 V!33481 (_ BitVec 32) Int) ListLongMap!12645)

(assert (=> b!960598 (= res!643122 (contains!5388 (getCurrentListMap!3523 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28292 _keys!1668) i!793)))))

(declare-fun b!960599 () Bool)

(declare-fun e!541519 () Bool)

(declare-fun e!541523 () Bool)

(declare-fun mapRes!34039 () Bool)

(assert (=> b!960599 (= e!541519 (and e!541523 mapRes!34039))))

(declare-fun condMapEmpty!34039 () Bool)

(declare-fun mapDefault!34039 () ValueCell!10205)

