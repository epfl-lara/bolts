; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82414 () Bool)

(assert start!82414)

(declare-fun b_free!18653 () Bool)

(declare-fun b_next!18653 () Bool)

(assert (=> start!82414 (= b_free!18653 (not b_next!18653))))

(declare-fun tp!64929 () Bool)

(declare-fun b_and!30159 () Bool)

(assert (=> start!82414 (= tp!64929 b_and!30159)))

(declare-fun b!960488 () Bool)

(declare-fun e!541462 () Bool)

(assert (=> b!960488 (= e!541462 false)))

(declare-datatypes ((V!33469 0))(
  ( (V!33470 (val!10733 Int)) )
))
(declare-fun minValue!1328 () V!33469)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58831 0))(
  ( (array!58832 (arr!28285 (Array (_ BitVec 32) (_ BitVec 64))) (size!28765 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58831)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33469)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun lt!430616 () Bool)

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10201 0))(
  ( (ValueCellFull!10201 (v!13290 V!33469)) (EmptyCell!10201) )
))
(declare-datatypes ((array!58833 0))(
  ( (array!58834 (arr!28286 (Array (_ BitVec 32) ValueCell!10201)) (size!28766 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58833)

(declare-datatypes ((tuple2!13928 0))(
  ( (tuple2!13929 (_1!6974 (_ BitVec 64)) (_2!6974 V!33469)) )
))
(declare-datatypes ((List!19788 0))(
  ( (Nil!19785) (Cons!19784 (h!20946 tuple2!13928) (t!28159 List!19788)) )
))
(declare-datatypes ((ListLongMap!12639 0))(
  ( (ListLongMap!12640 (toList!6335 List!19788)) )
))
(declare-fun contains!5385 (ListLongMap!12639 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3520 (array!58831 array!58833 (_ BitVec 32) (_ BitVec 32) V!33469 V!33469 (_ BitVec 32) Int) ListLongMap!12639)

(assert (=> b!960488 (= lt!430616 (contains!5385 (getCurrentListMap!3520 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28285 _keys!1668) i!793)))))

(declare-fun b!960489 () Bool)

(declare-fun e!541459 () Bool)

(declare-fun e!541461 () Bool)

(declare-fun mapRes!34027 () Bool)

(assert (=> b!960489 (= e!541459 (and e!541461 mapRes!34027))))

(declare-fun condMapEmpty!34027 () Bool)

(declare-fun mapDefault!34027 () ValueCell!10201)

