; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78234 () Bool)

(assert start!78234)

(declare-fun b_free!16697 () Bool)

(declare-fun b_next!16697 () Bool)

(assert (=> start!78234 (= b_free!16697 (not b_next!16697))))

(declare-fun tp!58368 () Bool)

(declare-fun b_and!27291 () Bool)

(assert (=> start!78234 (= tp!58368 b_and!27291)))

(declare-fun b!912563 () Bool)

(declare-fun e!511913 () Bool)

(declare-fun tp_is_empty!19115 () Bool)

(assert (=> b!912563 (= e!511913 tp_is_empty!19115)))

(declare-fun res!615704 () Bool)

(declare-fun e!511914 () Bool)

(assert (=> start!78234 (=> (not res!615704) (not e!511914))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78234 (= res!615704 (validMask!0 mask!1756))))

(assert (=> start!78234 e!511914))

(declare-datatypes ((V!30451 0))(
  ( (V!30452 (val!9608 Int)) )
))
(declare-datatypes ((ValueCell!9076 0))(
  ( (ValueCellFull!9076 (v!12119 V!30451)) (EmptyCell!9076) )
))
(declare-datatypes ((array!54232 0))(
  ( (array!54233 (arr!26066 (Array (_ BitVec 32) ValueCell!9076)) (size!26526 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54232)

(declare-fun e!511916 () Bool)

(declare-fun array_inv!20350 (array!54232) Bool)

(assert (=> start!78234 (and (array_inv!20350 _values!1152) e!511916)))

(assert (=> start!78234 tp!58368))

(assert (=> start!78234 true))

(assert (=> start!78234 tp_is_empty!19115))

(declare-datatypes ((array!54234 0))(
  ( (array!54235 (arr!26067 (Array (_ BitVec 32) (_ BitVec 64))) (size!26527 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54234)

(declare-fun array_inv!20351 (array!54234) Bool)

(assert (=> start!78234 (array_inv!20351 _keys!1386)))

(declare-fun b!912564 () Bool)

(declare-fun res!615706 () Bool)

(assert (=> b!912564 (=> (not res!615706) (not e!511914))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54234 (_ BitVec 32)) Bool)

(assert (=> b!912564 (= res!615706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912565 () Bool)

(declare-fun res!615705 () Bool)

(assert (=> b!912565 (=> (not res!615705) (not e!511914))))

(declare-fun zeroValue!1094 () V!30451)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30451)

(declare-fun defaultEntry!1160 () Int)

(declare-datatypes ((tuple2!12576 0))(
  ( (tuple2!12577 (_1!6298 (_ BitVec 64)) (_2!6298 V!30451)) )
))
(declare-datatypes ((List!18418 0))(
  ( (Nil!18415) (Cons!18414 (h!19560 tuple2!12576) (t!26015 List!18418)) )
))
(declare-datatypes ((ListLongMap!11287 0))(
  ( (ListLongMap!11288 (toList!5659 List!18418)) )
))
(declare-fun contains!4670 (ListLongMap!11287 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2889 (array!54234 array!54232 (_ BitVec 32) (_ BitVec 32) V!30451 V!30451 (_ BitVec 32) Int) ListLongMap!11287)

(assert (=> b!912565 (= res!615705 (contains!4670 (getCurrentListMap!2889 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!912566 () Bool)

(declare-fun res!615709 () Bool)

(assert (=> b!912566 (=> (not res!615709) (not e!511914))))

(declare-datatypes ((List!18419 0))(
  ( (Nil!18416) (Cons!18415 (h!19561 (_ BitVec 64)) (t!26016 List!18419)) )
))
(declare-fun arrayNoDuplicates!0 (array!54234 (_ BitVec 32) List!18419) Bool)

(assert (=> b!912566 (= res!615709 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18416))))

(declare-fun b!912567 () Bool)

(declare-fun res!615708 () Bool)

(assert (=> b!912567 (=> (not res!615708) (not e!511914))))

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!912567 (= res!615708 (and (= (select (arr!26067 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!912568 () Bool)

(declare-fun res!615707 () Bool)

(assert (=> b!912568 (=> (not res!615707) (not e!511914))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912568 (= res!615707 (inRange!0 i!717 mask!1756))))

(declare-fun b!912569 () Bool)

(declare-fun e!511912 () Bool)

(declare-fun mapRes!30400 () Bool)

(assert (=> b!912569 (= e!511916 (and e!511912 mapRes!30400))))

(declare-fun condMapEmpty!30400 () Bool)

(declare-fun mapDefault!30400 () ValueCell!9076)

