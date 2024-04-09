; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78060 () Bool)

(assert start!78060)

(declare-fun b_free!16559 () Bool)

(declare-fun b_next!16559 () Bool)

(assert (=> start!78060 (= b_free!16559 (not b_next!16559))))

(declare-fun tp!57949 () Bool)

(declare-fun b_and!27149 () Bool)

(assert (=> start!78060 (= tp!57949 b_and!27149)))

(declare-fun b!910734 () Bool)

(declare-fun res!614629 () Bool)

(declare-fun e!510724 () Bool)

(assert (=> b!910734 (=> (not res!614629) (not e!510724))))

(declare-datatypes ((array!53964 0))(
  ( (array!53965 (arr!25934 (Array (_ BitVec 32) (_ BitVec 64))) (size!26394 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53964)

(declare-datatypes ((List!18322 0))(
  ( (Nil!18319) (Cons!18318 (h!19464 (_ BitVec 64)) (t!25915 List!18322)) )
))
(declare-fun arrayNoDuplicates!0 (array!53964 (_ BitVec 32) List!18322) Bool)

(assert (=> b!910734 (= res!614629 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18319))))

(declare-fun b!910735 () Bool)

(declare-fun e!510728 () Bool)

(declare-fun tp_is_empty!18977 () Bool)

(assert (=> b!910735 (= e!510728 tp_is_empty!18977)))

(declare-fun b!910736 () Bool)

(assert (=> b!910736 (= e!510724 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((V!30267 0))(
  ( (V!30268 (val!9539 Int)) )
))
(declare-fun zeroValue!1094 () V!30267)

(declare-fun k!1033 () (_ BitVec 64))

(declare-datatypes ((ValueCell!9007 0))(
  ( (ValueCellFull!9007 (v!12048 V!30267)) (EmptyCell!9007) )
))
(declare-datatypes ((array!53966 0))(
  ( (array!53967 (arr!25935 (Array (_ BitVec 32) ValueCell!9007)) (size!26395 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53966)

(declare-fun lt!410266 () Bool)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30267)

(declare-datatypes ((tuple2!12472 0))(
  ( (tuple2!12473 (_1!6246 (_ BitVec 64)) (_2!6246 V!30267)) )
))
(declare-datatypes ((List!18323 0))(
  ( (Nil!18320) (Cons!18319 (h!19465 tuple2!12472) (t!25916 List!18323)) )
))
(declare-datatypes ((ListLongMap!11183 0))(
  ( (ListLongMap!11184 (toList!5607 List!18323)) )
))
(declare-fun contains!4616 (ListLongMap!11183 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2837 (array!53964 array!53966 (_ BitVec 32) (_ BitVec 32) V!30267 V!30267 (_ BitVec 32) Int) ListLongMap!11183)

(assert (=> b!910736 (= lt!410266 (contains!4616 (getCurrentListMap!2837 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun res!614631 () Bool)

(assert (=> start!78060 (=> (not res!614631) (not e!510724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78060 (= res!614631 (validMask!0 mask!1756))))

(assert (=> start!78060 e!510724))

(declare-fun e!510725 () Bool)

(declare-fun array_inv!20260 (array!53966) Bool)

(assert (=> start!78060 (and (array_inv!20260 _values!1152) e!510725)))

(assert (=> start!78060 tp!57949))

(assert (=> start!78060 true))

(assert (=> start!78060 tp_is_empty!18977))

(declare-fun array_inv!20261 (array!53964) Bool)

(assert (=> start!78060 (array_inv!20261 _keys!1386)))

(declare-fun b!910737 () Bool)

(declare-fun res!614632 () Bool)

(assert (=> b!910737 (=> (not res!614632) (not e!510724))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53964 (_ BitVec 32)) Bool)

(assert (=> b!910737 (= res!614632 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910738 () Bool)

(declare-fun res!614630 () Bool)

(assert (=> b!910738 (=> (not res!614630) (not e!510724))))

(assert (=> b!910738 (= res!614630 (and (= (size!26395 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26394 _keys!1386) (size!26395 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!30187 () Bool)

(declare-fun mapRes!30187 () Bool)

(assert (=> mapIsEmpty!30187 mapRes!30187))

(declare-fun b!910739 () Bool)

(declare-fun e!510727 () Bool)

(assert (=> b!910739 (= e!510727 tp_is_empty!18977)))

(declare-fun mapNonEmpty!30187 () Bool)

(declare-fun tp!57948 () Bool)

(assert (=> mapNonEmpty!30187 (= mapRes!30187 (and tp!57948 e!510728))))

(declare-fun mapRest!30187 () (Array (_ BitVec 32) ValueCell!9007))

(declare-fun mapValue!30187 () ValueCell!9007)

(declare-fun mapKey!30187 () (_ BitVec 32))

(assert (=> mapNonEmpty!30187 (= (arr!25935 _values!1152) (store mapRest!30187 mapKey!30187 mapValue!30187))))

(declare-fun b!910740 () Bool)

(assert (=> b!910740 (= e!510725 (and e!510727 mapRes!30187))))

(declare-fun condMapEmpty!30187 () Bool)

(declare-fun mapDefault!30187 () ValueCell!9007)

