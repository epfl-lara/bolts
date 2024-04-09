; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40462 () Bool)

(assert start!40462)

(declare-fun b!445004 () Bool)

(declare-fun res!264080 () Bool)

(declare-fun e!261619 () Bool)

(assert (=> b!445004 (=> (not res!264080) (not e!261619))))

(declare-datatypes ((array!27447 0))(
  ( (array!27448 (arr!13168 (Array (_ BitVec 32) (_ BitVec 64))) (size!13520 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!27447)

(declare-datatypes ((List!7858 0))(
  ( (Nil!7855) (Cons!7854 (h!8710 (_ BitVec 64)) (t!13624 List!7858)) )
))
(declare-fun arrayNoDuplicates!0 (array!27447 (_ BitVec 32) List!7858) Bool)

(assert (=> b!445004 (= res!264080 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7855))))

(declare-fun mapIsEmpty!19386 () Bool)

(declare-fun mapRes!19386 () Bool)

(assert (=> mapIsEmpty!19386 mapRes!19386))

(declare-fun b!445005 () Bool)

(declare-fun e!261616 () Bool)

(declare-fun tp_is_empty!11839 () Bool)

(assert (=> b!445005 (= e!261616 tp_is_empty!11839)))

(declare-fun b!445006 () Bool)

(declare-fun res!264084 () Bool)

(assert (=> b!445006 (=> (not res!264084) (not e!261619))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!27447 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!445006 (= res!264084 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!445007 () Bool)

(declare-fun e!261617 () Bool)

(assert (=> b!445007 (= e!261617 tp_is_empty!11839)))

(declare-fun b!445008 () Bool)

(declare-fun res!264082 () Bool)

(assert (=> b!445008 (=> (not res!264082) (not e!261619))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16891 0))(
  ( (V!16892 (val!5964 Int)) )
))
(declare-datatypes ((ValueCell!5576 0))(
  ( (ValueCellFull!5576 (v!8211 V!16891)) (EmptyCell!5576) )
))
(declare-datatypes ((array!27449 0))(
  ( (array!27450 (arr!13169 (Array (_ BitVec 32) ValueCell!5576)) (size!13521 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27449)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!445008 (= res!264082 (and (= (size!13521 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13520 _keys!709) (size!13521 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun res!264083 () Bool)

(assert (=> start!40462 (=> (not res!264083) (not e!261619))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40462 (= res!264083 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13520 _keys!709))))))

(assert (=> start!40462 e!261619))

(assert (=> start!40462 true))

(declare-fun e!261618 () Bool)

(declare-fun array_inv!9538 (array!27449) Bool)

(assert (=> start!40462 (and (array_inv!9538 _values!549) e!261618)))

(declare-fun array_inv!9539 (array!27447) Bool)

(assert (=> start!40462 (array_inv!9539 _keys!709)))

(declare-fun b!445009 () Bool)

(declare-fun res!264085 () Bool)

(assert (=> b!445009 (=> (not res!264085) (not e!261619))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!445009 (= res!264085 (or (= (select (arr!13168 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13168 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!445010 () Bool)

(assert (=> b!445010 (= e!261618 (and e!261616 mapRes!19386))))

(declare-fun condMapEmpty!19386 () Bool)

(declare-fun mapDefault!19386 () ValueCell!5576)

