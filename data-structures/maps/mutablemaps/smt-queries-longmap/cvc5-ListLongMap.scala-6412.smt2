; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82296 () Bool)

(assert start!82296)

(declare-fun b_free!18541 () Bool)

(declare-fun b_next!18541 () Bool)

(assert (=> start!82296 (= b_free!18541 (not b_next!18541))))

(declare-fun tp!64585 () Bool)

(declare-fun b_and!30047 () Bool)

(assert (=> start!82296 (= tp!64585 b_and!30047)))

(declare-fun b!958852 () Bool)

(declare-fun res!641941 () Bool)

(declare-fun e!540574 () Bool)

(assert (=> b!958852 (=> (not res!641941) (not e!540574))))

(declare-datatypes ((V!33313 0))(
  ( (V!33314 (val!10674 Int)) )
))
(declare-fun minValue!1328 () V!33313)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58607 0))(
  ( (array!58608 (arr!28173 (Array (_ BitVec 32) (_ BitVec 64))) (size!28653 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58607)

(declare-datatypes ((ValueCell!10142 0))(
  ( (ValueCellFull!10142 (v!13231 V!33313)) (EmptyCell!10142) )
))
(declare-datatypes ((array!58609 0))(
  ( (array!58610 (arr!28174 (Array (_ BitVec 32) ValueCell!10142)) (size!28654 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58609)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33313)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((tuple2!13852 0))(
  ( (tuple2!13853 (_1!6936 (_ BitVec 64)) (_2!6936 V!33313)) )
))
(declare-datatypes ((List!19718 0))(
  ( (Nil!19715) (Cons!19714 (h!20876 tuple2!13852) (t!28089 List!19718)) )
))
(declare-datatypes ((ListLongMap!12563 0))(
  ( (ListLongMap!12564 (toList!6297 List!19718)) )
))
(declare-fun contains!5350 (ListLongMap!12563 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3482 (array!58607 array!58609 (_ BitVec 32) (_ BitVec 32) V!33313 V!33313 (_ BitVec 32) Int) ListLongMap!12563)

(assert (=> b!958852 (= res!641941 (contains!5350 (getCurrentListMap!3482 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28173 _keys!1668) i!793)))))

(declare-fun b!958853 () Bool)

(declare-fun e!540576 () Bool)

(declare-fun e!540578 () Bool)

(declare-fun mapRes!33850 () Bool)

(assert (=> b!958853 (= e!540576 (and e!540578 mapRes!33850))))

(declare-fun condMapEmpty!33850 () Bool)

(declare-fun mapDefault!33850 () ValueCell!10142)

