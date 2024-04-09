; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77922 () Bool)

(assert start!77922)

(declare-fun b_free!16453 () Bool)

(declare-fun b_next!16453 () Bool)

(assert (=> start!77922 (= b_free!16453 (not b_next!16453))))

(declare-fun tp!57625 () Bool)

(declare-fun b_and!27039 () Bool)

(assert (=> start!77922 (= tp!57625 b_and!27039)))

(declare-fun b!909367 () Bool)

(declare-fun e!509785 () Bool)

(declare-fun tp_is_empty!18871 () Bool)

(assert (=> b!909367 (= e!509785 tp_is_empty!18871)))

(declare-fun mapIsEmpty!30022 () Bool)

(declare-fun mapRes!30022 () Bool)

(assert (=> mapIsEmpty!30022 mapRes!30022))

(declare-fun b!909368 () Bool)

(declare-fun res!613868 () Bool)

(declare-fun e!509789 () Bool)

(assert (=> b!909368 (=> (not res!613868) (not e!509789))))

(declare-datatypes ((array!53758 0))(
  ( (array!53759 (arr!25833 (Array (_ BitVec 32) (_ BitVec 64))) (size!26293 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53758)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53758 (_ BitVec 32)) Bool)

(assert (=> b!909368 (= res!613868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909369 () Bool)

(declare-fun res!613869 () Bool)

(assert (=> b!909369 (=> (not res!613869) (not e!509789))))

(declare-datatypes ((V!30127 0))(
  ( (V!30128 (val!9486 Int)) )
))
(declare-datatypes ((ValueCell!8954 0))(
  ( (ValueCellFull!8954 (v!11993 V!30127)) (EmptyCell!8954) )
))
(declare-datatypes ((array!53760 0))(
  ( (array!53761 (arr!25834 (Array (_ BitVec 32) ValueCell!8954)) (size!26294 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53760)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!909369 (= res!613869 (and (= (size!26294 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26293 _keys!1386) (size!26294 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909370 () Bool)

(assert (=> b!909370 (= e!509789 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!409951 () Bool)

(declare-fun zeroValue!1094 () V!30127)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30127)

(declare-datatypes ((tuple2!12388 0))(
  ( (tuple2!12389 (_1!6204 (_ BitVec 64)) (_2!6204 V!30127)) )
))
(declare-datatypes ((List!18246 0))(
  ( (Nil!18243) (Cons!18242 (h!19388 tuple2!12388) (t!25835 List!18246)) )
))
(declare-datatypes ((ListLongMap!11099 0))(
  ( (ListLongMap!11100 (toList!5565 List!18246)) )
))
(declare-fun contains!4572 (ListLongMap!11099 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2795 (array!53758 array!53760 (_ BitVec 32) (_ BitVec 32) V!30127 V!30127 (_ BitVec 32) Int) ListLongMap!11099)

(assert (=> b!909370 (= lt!409951 (contains!4572 (getCurrentListMap!2795 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!909371 () Bool)

(declare-fun e!509786 () Bool)

(declare-fun e!509788 () Bool)

(assert (=> b!909371 (= e!509786 (and e!509788 mapRes!30022))))

(declare-fun condMapEmpty!30022 () Bool)

(declare-fun mapDefault!30022 () ValueCell!8954)

