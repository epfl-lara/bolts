; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78634 () Bool)

(assert start!78634)

(declare-fun b_free!16819 () Bool)

(declare-fun b_next!16819 () Bool)

(assert (=> start!78634 (= b_free!16819 (not b_next!16819))))

(declare-fun tp!58898 () Bool)

(declare-fun b_and!27459 () Bool)

(assert (=> start!78634 (= tp!58898 b_and!27459)))

(declare-fun b!916180 () Bool)

(declare-fun e!514311 () Bool)

(declare-fun tp_is_empty!19327 () Bool)

(assert (=> b!916180 (= e!514311 tp_is_empty!19327)))

(declare-fun mapNonEmpty!30747 () Bool)

(declare-fun mapRes!30747 () Bool)

(declare-fun tp!58899 () Bool)

(declare-fun e!514312 () Bool)

(assert (=> mapNonEmpty!30747 (= mapRes!30747 (and tp!58899 e!514312))))

(declare-datatypes ((V!30735 0))(
  ( (V!30736 (val!9714 Int)) )
))
(declare-datatypes ((ValueCell!9182 0))(
  ( (ValueCellFull!9182 (v!12232 V!30735)) (EmptyCell!9182) )
))
(declare-fun mapRest!30747 () (Array (_ BitVec 32) ValueCell!9182))

(declare-fun mapValue!30747 () ValueCell!9182)

(declare-datatypes ((array!54656 0))(
  ( (array!54657 (arr!26269 (Array (_ BitVec 32) ValueCell!9182)) (size!26729 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54656)

(declare-fun mapKey!30747 () (_ BitVec 32))

(assert (=> mapNonEmpty!30747 (= (arr!26269 _values!1231) (store mapRest!30747 mapKey!30747 mapValue!30747))))

(declare-fun b!916181 () Bool)

(declare-fun res!617758 () Bool)

(declare-fun e!514310 () Bool)

(assert (=> b!916181 (=> (not res!617758) (not e!514310))))

(declare-datatypes ((array!54658 0))(
  ( (array!54659 (arr!26270 (Array (_ BitVec 32) (_ BitVec 64))) (size!26730 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54658)

(declare-datatypes ((List!18531 0))(
  ( (Nil!18528) (Cons!18527 (h!19673 (_ BitVec 64)) (t!26152 List!18531)) )
))
(declare-fun arrayNoDuplicates!0 (array!54658 (_ BitVec 32) List!18531) Bool)

(assert (=> b!916181 (= res!617758 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18528))))

(declare-fun b!916182 () Bool)

(declare-fun res!617762 () Bool)

(assert (=> b!916182 (=> (not res!617762) (not e!514310))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!916182 (= res!617762 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26730 _keys!1487))))))

(declare-fun b!916183 () Bool)

(declare-fun res!617760 () Bool)

(assert (=> b!916183 (=> (not res!617760) (not e!514310))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54658 (_ BitVec 32)) Bool)

(assert (=> b!916183 (= res!617760 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916184 () Bool)

(assert (=> b!916184 (= e!514310 false)))

(declare-fun lt!411717 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!30735)

(declare-fun minValue!1173 () V!30735)

(declare-datatypes ((tuple2!12670 0))(
  ( (tuple2!12671 (_1!6345 (_ BitVec 64)) (_2!6345 V!30735)) )
))
(declare-datatypes ((List!18532 0))(
  ( (Nil!18529) (Cons!18528 (h!19674 tuple2!12670) (t!26153 List!18532)) )
))
(declare-datatypes ((ListLongMap!11381 0))(
  ( (ListLongMap!11382 (toList!5706 List!18532)) )
))
(declare-fun contains!4726 (ListLongMap!11381 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2935 (array!54658 array!54656 (_ BitVec 32) (_ BitVec 32) V!30735 V!30735 (_ BitVec 32) Int) ListLongMap!11381)

(assert (=> b!916184 (= lt!411717 (contains!4726 (getCurrentListMap!2935 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k!1099))))

(declare-fun res!617759 () Bool)

(assert (=> start!78634 (=> (not res!617759) (not e!514310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78634 (= res!617759 (validMask!0 mask!1881))))

(assert (=> start!78634 e!514310))

(assert (=> start!78634 true))

(declare-fun e!514313 () Bool)

(declare-fun array_inv!20482 (array!54656) Bool)

(assert (=> start!78634 (and (array_inv!20482 _values!1231) e!514313)))

(assert (=> start!78634 tp!58898))

(declare-fun array_inv!20483 (array!54658) Bool)

(assert (=> start!78634 (array_inv!20483 _keys!1487)))

(assert (=> start!78634 tp_is_empty!19327))

(declare-fun mapIsEmpty!30747 () Bool)

(assert (=> mapIsEmpty!30747 mapRes!30747))

(declare-fun b!916185 () Bool)

(assert (=> b!916185 (= e!514312 tp_is_empty!19327)))

(declare-fun b!916186 () Bool)

(declare-fun res!617761 () Bool)

(assert (=> b!916186 (=> (not res!617761) (not e!514310))))

(assert (=> b!916186 (= res!617761 (and (= (size!26729 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26730 _keys!1487) (size!26729 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916187 () Bool)

(assert (=> b!916187 (= e!514313 (and e!514311 mapRes!30747))))

(declare-fun condMapEmpty!30747 () Bool)

(declare-fun mapDefault!30747 () ValueCell!9182)

