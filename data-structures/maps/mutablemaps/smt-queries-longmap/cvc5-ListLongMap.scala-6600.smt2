; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83512 () Bool)

(assert start!83512)

(declare-fun b_free!19471 () Bool)

(declare-fun b_next!19471 () Bool)

(assert (=> start!83512 (= b_free!19471 (not b_next!19471))))

(declare-fun tp!67701 () Bool)

(declare-fun b_and!31091 () Bool)

(assert (=> start!83512 (= tp!67701 b_and!31091)))

(declare-fun mapIsEmpty!35572 () Bool)

(declare-fun mapRes!35572 () Bool)

(assert (=> mapIsEmpty!35572 mapRes!35572))

(declare-fun b!975067 () Bool)

(declare-fun res!652842 () Bool)

(declare-fun e!549587 () Bool)

(assert (=> b!975067 (=> (not res!652842) (not e!549587))))

(declare-datatypes ((array!60765 0))(
  ( (array!60766 (arr!29242 (Array (_ BitVec 32) (_ BitVec 64))) (size!29722 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60765)

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60765 (_ BitVec 32)) Bool)

(assert (=> b!975067 (= res!652842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(declare-fun b!975068 () Bool)

(assert (=> b!975068 (= e!549587 false)))

(declare-datatypes ((V!34817 0))(
  ( (V!34818 (val!11238 Int)) )
))
(declare-datatypes ((ValueCell!10706 0))(
  ( (ValueCellFull!10706 (v!13797 V!34817)) (EmptyCell!10706) )
))
(declare-datatypes ((array!60767 0))(
  ( (array!60768 (arr!29243 (Array (_ BitVec 32) ValueCell!10706)) (size!29723 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60767)

(declare-fun zeroValue!1367 () V!34817)

(declare-datatypes ((tuple2!14546 0))(
  ( (tuple2!14547 (_1!7283 (_ BitVec 64)) (_2!7283 V!34817)) )
))
(declare-datatypes ((List!20420 0))(
  ( (Nil!20417) (Cons!20416 (h!21578 tuple2!14546) (t!28905 List!20420)) )
))
(declare-datatypes ((ListLongMap!13257 0))(
  ( (ListLongMap!13258 (toList!6644 List!20420)) )
))
(declare-fun lt!432787 () ListLongMap!13257)

(declare-fun from!2118 () (_ BitVec 32))

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34817)

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-fun getCurrentListMap!3829 (array!60765 array!60767 (_ BitVec 32) (_ BitVec 32) V!34817 V!34817 (_ BitVec 32) Int) ListLongMap!13257)

(assert (=> b!975068 (= lt!432787 (getCurrentListMap!3829 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun b!975069 () Bool)

(declare-fun e!549584 () Bool)

(declare-fun e!549585 () Bool)

(assert (=> b!975069 (= e!549584 (and e!549585 mapRes!35572))))

(declare-fun condMapEmpty!35572 () Bool)

(declare-fun mapDefault!35572 () ValueCell!10706)

