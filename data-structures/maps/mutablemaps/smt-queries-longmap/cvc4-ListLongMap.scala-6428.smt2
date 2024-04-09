; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82396 () Bool)

(assert start!82396)

(declare-fun b_free!18635 () Bool)

(declare-fun b_next!18635 () Bool)

(assert (=> start!82396 (= b_free!18635 (not b_next!18635))))

(declare-fun tp!64876 () Bool)

(declare-fun b_and!30141 () Bool)

(assert (=> start!82396 (= tp!64876 b_and!30141)))

(declare-fun mapNonEmpty!34000 () Bool)

(declare-fun mapRes!34000 () Bool)

(declare-fun tp!64875 () Bool)

(declare-fun e!541324 () Bool)

(assert (=> mapNonEmpty!34000 (= mapRes!34000 (and tp!64875 e!541324))))

(declare-fun mapKey!34000 () (_ BitVec 32))

(declare-datatypes ((V!33445 0))(
  ( (V!33446 (val!10724 Int)) )
))
(declare-datatypes ((ValueCell!10192 0))(
  ( (ValueCellFull!10192 (v!13281 V!33445)) (EmptyCell!10192) )
))
(declare-datatypes ((array!58797 0))(
  ( (array!58798 (arr!28268 (Array (_ BitVec 32) ValueCell!10192)) (size!28748 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58797)

(declare-fun mapRest!34000 () (Array (_ BitVec 32) ValueCell!10192))

(declare-fun mapValue!34000 () ValueCell!10192)

(assert (=> mapNonEmpty!34000 (= (arr!28268 _values!1386) (store mapRest!34000 mapKey!34000 mapValue!34000))))

(declare-fun b!960245 () Bool)

(declare-fun res!642883 () Bool)

(declare-fun e!541326 () Bool)

(assert (=> b!960245 (=> (not res!642883) (not e!541326))))

(declare-datatypes ((array!58799 0))(
  ( (array!58800 (arr!28269 (Array (_ BitVec 32) (_ BitVec 64))) (size!28749 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58799)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58799 (_ BitVec 32)) Bool)

(assert (=> b!960245 (= res!642883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!960246 () Bool)

(assert (=> b!960246 (= e!541326 false)))

(declare-fun lt!430589 () Bool)

(declare-fun minValue!1328 () V!33445)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33445)

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun i!793 () (_ BitVec 32))

(declare-datatypes ((tuple2!13914 0))(
  ( (tuple2!13915 (_1!6967 (_ BitVec 64)) (_2!6967 V!33445)) )
))
(declare-datatypes ((List!19778 0))(
  ( (Nil!19775) (Cons!19774 (h!20936 tuple2!13914) (t!28149 List!19778)) )
))
(declare-datatypes ((ListLongMap!12625 0))(
  ( (ListLongMap!12626 (toList!6328 List!19778)) )
))
(declare-fun contains!5378 (ListLongMap!12625 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3513 (array!58799 array!58797 (_ BitVec 32) (_ BitVec 32) V!33445 V!33445 (_ BitVec 32) Int) ListLongMap!12625)

(assert (=> b!960246 (= lt!430589 (contains!5378 (getCurrentListMap!3513 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28269 _keys!1668) i!793)))))

(declare-fun b!960247 () Bool)

(declare-fun res!642885 () Bool)

(assert (=> b!960247 (=> (not res!642885) (not e!541326))))

(assert (=> b!960247 (= res!642885 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28749 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28749 _keys!1668))))))

(declare-fun b!960248 () Bool)

(declare-fun res!642886 () Bool)

(assert (=> b!960248 (=> (not res!642886) (not e!541326))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960248 (= res!642886 (validKeyInArray!0 (select (arr!28269 _keys!1668) i!793)))))

(declare-fun b!960249 () Bool)

(declare-fun e!541328 () Bool)

(declare-fun e!541325 () Bool)

(assert (=> b!960249 (= e!541328 (and e!541325 mapRes!34000))))

(declare-fun condMapEmpty!34000 () Bool)

(declare-fun mapDefault!34000 () ValueCell!10192)

