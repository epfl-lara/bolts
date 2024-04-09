; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82360 () Bool)

(assert start!82360)

(declare-fun b_free!18599 () Bool)

(declare-fun b_next!18599 () Bool)

(assert (=> start!82360 (= b_free!18599 (not b_next!18599))))

(declare-fun tp!64767 () Bool)

(declare-fun b_and!30105 () Bool)

(assert (=> start!82360 (= tp!64767 b_and!30105)))

(declare-fun b!959759 () Bool)

(declare-fun e!541054 () Bool)

(assert (=> b!959759 (= e!541054 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33397 0))(
  ( (V!33398 (val!10706 Int)) )
))
(declare-fun minValue!1328 () V!33397)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58729 0))(
  ( (array!58730 (arr!28234 (Array (_ BitVec 32) (_ BitVec 64))) (size!28714 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58729)

(declare-datatypes ((ValueCell!10174 0))(
  ( (ValueCellFull!10174 (v!13263 V!33397)) (EmptyCell!10174) )
))
(declare-datatypes ((array!58731 0))(
  ( (array!58732 (arr!28235 (Array (_ BitVec 32) ValueCell!10174)) (size!28715 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58731)

(declare-fun lt!430535 () Bool)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33397)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((tuple2!13894 0))(
  ( (tuple2!13895 (_1!6957 (_ BitVec 64)) (_2!6957 V!33397)) )
))
(declare-datatypes ((List!19759 0))(
  ( (Nil!19756) (Cons!19755 (h!20917 tuple2!13894) (t!28130 List!19759)) )
))
(declare-datatypes ((ListLongMap!12605 0))(
  ( (ListLongMap!12606 (toList!6318 List!19759)) )
))
(declare-fun contains!5368 (ListLongMap!12605 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3503 (array!58729 array!58731 (_ BitVec 32) (_ BitVec 32) V!33397 V!33397 (_ BitVec 32) Int) ListLongMap!12605)

(assert (=> b!959759 (= lt!430535 (contains!5368 (getCurrentListMap!3503 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28234 _keys!1668) i!793)))))

(declare-fun b!959760 () Bool)

(declare-fun e!541055 () Bool)

(declare-fun e!541058 () Bool)

(declare-fun mapRes!33946 () Bool)

(assert (=> b!959760 (= e!541055 (and e!541058 mapRes!33946))))

(declare-fun condMapEmpty!33946 () Bool)

(declare-fun mapDefault!33946 () ValueCell!10174)

