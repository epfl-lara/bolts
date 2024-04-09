; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82246 () Bool)

(assert start!82246)

(declare-fun b_free!18491 () Bool)

(declare-fun b_next!18491 () Bool)

(assert (=> start!82246 (= b_free!18491 (not b_next!18491))))

(declare-fun tp!64435 () Bool)

(declare-fun b_and!29997 () Bool)

(assert (=> start!82246 (= tp!64435 b_and!29997)))

(declare-fun b!958157 () Bool)

(declare-fun e!540201 () Bool)

(assert (=> b!958157 (= e!540201 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33245 0))(
  ( (V!33246 (val!10649 Int)) )
))
(declare-fun minValue!1328 () V!33245)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58511 0))(
  ( (array!58512 (arr!28125 (Array (_ BitVec 32) (_ BitVec 64))) (size!28605 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58511)

(declare-datatypes ((ValueCell!10117 0))(
  ( (ValueCellFull!10117 (v!13206 V!33245)) (EmptyCell!10117) )
))
(declare-datatypes ((array!58513 0))(
  ( (array!58514 (arr!28126 (Array (_ BitVec 32) ValueCell!10117)) (size!28606 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58513)

(declare-fun defaultEntry!1389 () Int)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun lt!430373 () Bool)

(declare-fun zeroValue!1328 () V!33245)

(declare-datatypes ((tuple2!13818 0))(
  ( (tuple2!13819 (_1!6919 (_ BitVec 64)) (_2!6919 V!33245)) )
))
(declare-datatypes ((List!19684 0))(
  ( (Nil!19681) (Cons!19680 (h!20842 tuple2!13818) (t!28055 List!19684)) )
))
(declare-datatypes ((ListLongMap!12529 0))(
  ( (ListLongMap!12530 (toList!6280 List!19684)) )
))
(declare-fun contains!5333 (ListLongMap!12529 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3465 (array!58511 array!58513 (_ BitVec 32) (_ BitVec 32) V!33245 V!33245 (_ BitVec 32) Int) ListLongMap!12529)

(assert (=> b!958157 (= lt!430373 (contains!5333 (getCurrentListMap!3465 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28125 _keys!1668) i!793)))))

(declare-fun mapNonEmpty!33775 () Bool)

(declare-fun mapRes!33775 () Bool)

(declare-fun tp!64434 () Bool)

(declare-fun e!540203 () Bool)

(assert (=> mapNonEmpty!33775 (= mapRes!33775 (and tp!64434 e!540203))))

(declare-fun mapValue!33775 () ValueCell!10117)

(declare-fun mapRest!33775 () (Array (_ BitVec 32) ValueCell!10117))

(declare-fun mapKey!33775 () (_ BitVec 32))

(assert (=> mapNonEmpty!33775 (= (arr!28126 _values!1386) (store mapRest!33775 mapKey!33775 mapValue!33775))))

(declare-fun b!958158 () Bool)

(declare-fun e!540199 () Bool)

(declare-fun e!540202 () Bool)

(assert (=> b!958158 (= e!540199 (and e!540202 mapRes!33775))))

(declare-fun condMapEmpty!33775 () Bool)

(declare-fun mapDefault!33775 () ValueCell!10117)

