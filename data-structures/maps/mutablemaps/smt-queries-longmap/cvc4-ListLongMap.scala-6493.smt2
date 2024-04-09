; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82830 () Bool)

(assert start!82830)

(declare-fun b_free!18929 () Bool)

(declare-fun b_next!18929 () Bool)

(assert (=> start!82830 (= b_free!18929 (not b_next!18929))))

(declare-fun tp!65917 () Bool)

(declare-fun b_and!30435 () Bool)

(assert (=> start!82830 (= tp!65917 b_and!30435)))

(declare-fun b!965709 () Bool)

(declare-fun e!544426 () Bool)

(declare-fun tp_is_empty!21737 () Bool)

(assert (=> b!965709 (= e!544426 tp_is_empty!21737)))

(declare-fun mapIsEmpty!34600 () Bool)

(declare-fun mapRes!34600 () Bool)

(assert (=> mapIsEmpty!34600 mapRes!34600))

(declare-fun b!965710 () Bool)

(declare-fun e!544428 () Bool)

(assert (=> b!965710 (= e!544428 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun lt!431214 () Bool)

(declare-datatypes ((V!33965 0))(
  ( (V!33966 (val!10919 Int)) )
))
(declare-datatypes ((ValueCell!10387 0))(
  ( (ValueCellFull!10387 (v!13477 V!33965)) (EmptyCell!10387) )
))
(declare-datatypes ((array!59539 0))(
  ( (array!59540 (arr!28634 (Array (_ BitVec 32) ValueCell!10387)) (size!29114 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59539)

(declare-datatypes ((array!59541 0))(
  ( (array!59542 (arr!28635 (Array (_ BitVec 32) (_ BitVec 64))) (size!29115 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59541)

(declare-fun minValue!1342 () V!33965)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33965)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14118 0))(
  ( (tuple2!14119 (_1!7069 (_ BitVec 64)) (_2!7069 V!33965)) )
))
(declare-datatypes ((List!19999 0))(
  ( (Nil!19996) (Cons!19995 (h!21157 tuple2!14118) (t!28370 List!19999)) )
))
(declare-datatypes ((ListLongMap!12829 0))(
  ( (ListLongMap!12830 (toList!6430 List!19999)) )
))
(declare-fun contains!5481 (ListLongMap!12829 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3615 (array!59541 array!59539 (_ BitVec 32) (_ BitVec 32) V!33965 V!33965 (_ BitVec 32) Int) ListLongMap!12829)

(assert (=> b!965710 (= lt!431214 (contains!5481 (getCurrentListMap!3615 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28635 _keys!1686) i!803)))))

(declare-fun b!965711 () Bool)

(declare-fun e!544429 () Bool)

(assert (=> b!965711 (= e!544429 (and e!544426 mapRes!34600))))

(declare-fun condMapEmpty!34600 () Bool)

(declare-fun mapDefault!34600 () ValueCell!10387)

