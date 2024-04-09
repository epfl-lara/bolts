; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83312 () Bool)

(assert start!83312)

(declare-fun b_free!19277 () Bool)

(declare-fun b_next!19277 () Bool)

(assert (=> start!83312 (= b_free!19277 (not b_next!19277))))

(declare-fun tp!67111 () Bool)

(declare-fun b_and!30793 () Bool)

(assert (=> start!83312 (= tp!67111 b_and!30793)))

(declare-fun b!971836 () Bool)

(declare-fun res!650612 () Bool)

(declare-fun e!547841 () Bool)

(assert (=> b!971836 (=> (not res!650612) (not e!547841))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-datatypes ((V!34549 0))(
  ( (V!34550 (val!11138 Int)) )
))
(declare-datatypes ((ValueCell!10606 0))(
  ( (ValueCellFull!10606 (v!13697 V!34549)) (EmptyCell!10606) )
))
(declare-datatypes ((array!60381 0))(
  ( (array!60382 (arr!29050 (Array (_ BitVec 32) ValueCell!10606)) (size!29530 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60381)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60383 0))(
  ( (array!60384 (arr!29051 (Array (_ BitVec 32) (_ BitVec 64))) (size!29531 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60383)

(assert (=> b!971836 (= res!650612 (and (= (size!29530 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29531 _keys!1717) (size!29530 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!971837 () Bool)

(declare-fun res!650615 () Bool)

(assert (=> b!971837 (=> (not res!650615) (not e!547841))))

(declare-fun i!822 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!971837 (= res!650615 (validKeyInArray!0 (select (arr!29051 _keys!1717) i!822)))))

(declare-fun b!971838 () Bool)

(declare-fun e!547845 () Bool)

(assert (=> b!971838 (= e!547841 e!547845)))

(declare-fun res!650614 () Bool)

(assert (=> b!971838 (=> (not res!650614) (not e!547845))))

(declare-fun lt!431865 () (_ BitVec 64))

(assert (=> b!971838 (= res!650614 (validKeyInArray!0 lt!431865))))

(declare-fun from!2118 () (_ BitVec 32))

(assert (=> b!971838 (= lt!431865 (select (arr!29051 _keys!1717) (bvsub from!2118 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!14382 0))(
  ( (tuple2!14383 (_1!7201 (_ BitVec 64)) (_2!7201 V!34549)) )
))
(declare-datatypes ((List!20274 0))(
  ( (Nil!20271) (Cons!20270 (h!21432 tuple2!14382) (t!28657 List!20274)) )
))
(declare-datatypes ((ListLongMap!13093 0))(
  ( (ListLongMap!13094 (toList!6562 List!20274)) )
))
(declare-fun lt!431866 () ListLongMap!13093)

(declare-fun zeroValue!1367 () V!34549)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34549)

(declare-fun getCurrentListMap!3747 (array!60383 array!60381 (_ BitVec 32) (_ BitVec 32) V!34549 V!34549 (_ BitVec 32) Int) ListLongMap!13093)

(assert (=> b!971838 (= lt!431866 (getCurrentListMap!3747 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun res!650617 () Bool)

(assert (=> start!83312 (=> (not res!650617) (not e!547841))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83312 (= res!650617 (validMask!0 mask!2147))))

(assert (=> start!83312 e!547841))

(assert (=> start!83312 true))

(declare-fun e!547840 () Bool)

(declare-fun array_inv!22373 (array!60381) Bool)

(assert (=> start!83312 (and (array_inv!22373 _values!1425) e!547840)))

(declare-fun tp_is_empty!22175 () Bool)

(assert (=> start!83312 tp_is_empty!22175))

(assert (=> start!83312 tp!67111))

(declare-fun array_inv!22374 (array!60383) Bool)

(assert (=> start!83312 (array_inv!22374 _keys!1717)))

(declare-fun mapIsEmpty!35272 () Bool)

(declare-fun mapRes!35272 () Bool)

(assert (=> mapIsEmpty!35272 mapRes!35272))

(declare-fun b!971839 () Bool)

(declare-fun e!547844 () Bool)

(assert (=> b!971839 (= e!547844 tp_is_empty!22175)))

(declare-fun b!971840 () Bool)

(assert (=> b!971840 (= e!547840 (and e!547844 mapRes!35272))))

(declare-fun condMapEmpty!35272 () Bool)

(declare-fun mapDefault!35272 () ValueCell!10606)

