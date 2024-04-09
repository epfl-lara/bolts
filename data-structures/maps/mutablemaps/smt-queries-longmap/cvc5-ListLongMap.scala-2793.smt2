; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40654 () Bool)

(assert start!40654)

(declare-fun b_free!10657 () Bool)

(declare-fun b_next!10657 () Bool)

(assert (=> start!40654 (= b_free!10657 (not b_next!10657))))

(declare-fun tp!37790 () Bool)

(declare-fun b_and!18683 () Bool)

(assert (=> start!40654 (= tp!37790 b_and!18683)))

(declare-fun b!448757 () Bool)

(declare-fun res!266908 () Bool)

(declare-fun e!263229 () Bool)

(assert (=> b!448757 (=> (not res!266908) (not e!263229))))

(declare-datatypes ((array!27757 0))(
  ( (array!27758 (arr!13321 (Array (_ BitVec 32) (_ BitVec 64))) (size!13673 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27757)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!448757 (= res!266908 (or (= (select (arr!13321 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13321 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!266907 () Bool)

(assert (=> start!40654 (=> (not res!266907) (not e!263229))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40654 (= res!266907 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13673 _keys!709))))))

(assert (=> start!40654 e!263229))

(declare-fun tp_is_empty!11995 () Bool)

(assert (=> start!40654 tp_is_empty!11995))

(assert (=> start!40654 tp!37790))

(assert (=> start!40654 true))

(declare-datatypes ((V!17099 0))(
  ( (V!17100 (val!6042 Int)) )
))
(declare-datatypes ((ValueCell!5654 0))(
  ( (ValueCellFull!5654 (v!8293 V!17099)) (EmptyCell!5654) )
))
(declare-datatypes ((array!27759 0))(
  ( (array!27760 (arr!13322 (Array (_ BitVec 32) ValueCell!5654)) (size!13674 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27759)

(declare-fun e!263224 () Bool)

(declare-fun array_inv!9642 (array!27759) Bool)

(assert (=> start!40654 (and (array_inv!9642 _values!549) e!263224)))

(declare-fun array_inv!9643 (array!27757) Bool)

(assert (=> start!40654 (array_inv!9643 _keys!709)))

(declare-fun b!448758 () Bool)

(declare-fun res!266910 () Bool)

(assert (=> b!448758 (=> (not res!266910) (not e!263229))))

(declare-datatypes ((List!7974 0))(
  ( (Nil!7971) (Cons!7970 (h!8826 (_ BitVec 64)) (t!13744 List!7974)) )
))
(declare-fun arrayNoDuplicates!0 (array!27757 (_ BitVec 32) List!7974) Bool)

(assert (=> b!448758 (= res!266910 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7971))))

(declare-fun b!448759 () Bool)

(declare-fun e!263228 () Bool)

(assert (=> b!448759 (= e!263228 tp_is_empty!11995)))

(declare-fun b!448760 () Bool)

(declare-fun res!266909 () Bool)

(assert (=> b!448760 (=> (not res!266909) (not e!263229))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!448760 (= res!266909 (and (= (size!13674 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13673 _keys!709) (size!13674 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!19626 () Bool)

(declare-fun mapRes!19626 () Bool)

(declare-fun tp!37791 () Bool)

(declare-fun e!263225 () Bool)

(assert (=> mapNonEmpty!19626 (= mapRes!19626 (and tp!37791 e!263225))))

(declare-fun mapRest!19626 () (Array (_ BitVec 32) ValueCell!5654))

(declare-fun mapValue!19626 () ValueCell!5654)

(declare-fun mapKey!19626 () (_ BitVec 32))

(assert (=> mapNonEmpty!19626 (= (arr!13322 _values!549) (store mapRest!19626 mapKey!19626 mapValue!19626))))

(declare-fun b!448761 () Bool)

(assert (=> b!448761 (= e!263224 (and e!263228 mapRes!19626))))

(declare-fun condMapEmpty!19626 () Bool)

(declare-fun mapDefault!19626 () ValueCell!5654)

