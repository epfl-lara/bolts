; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78620 () Bool)

(assert start!78620)

(declare-fun b_free!16805 () Bool)

(declare-fun b_next!16805 () Bool)

(assert (=> start!78620 (= b_free!16805 (not b_next!16805))))

(declare-fun tp!58856 () Bool)

(declare-fun b_and!27445 () Bool)

(assert (=> start!78620 (= tp!58856 b_and!27445)))

(declare-fun b!916003 () Bool)

(declare-fun e!514207 () Bool)

(assert (=> b!916003 (= e!514207 false)))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30715 0))(
  ( (V!30716 (val!9707 Int)) )
))
(declare-datatypes ((ValueCell!9175 0))(
  ( (ValueCellFull!9175 (v!12225 V!30715)) (EmptyCell!9175) )
))
(declare-datatypes ((array!54628 0))(
  ( (array!54629 (arr!26255 (Array (_ BitVec 32) ValueCell!9175)) (size!26715 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54628)

(declare-fun defaultEntry!1235 () Int)

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((array!54630 0))(
  ( (array!54631 (arr!26256 (Array (_ BitVec 32) (_ BitVec 64))) (size!26716 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54630)

(declare-fun lt!411705 () Bool)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!30715)

(declare-fun minValue!1173 () V!30715)

(declare-datatypes ((tuple2!12662 0))(
  ( (tuple2!12663 (_1!6341 (_ BitVec 64)) (_2!6341 V!30715)) )
))
(declare-datatypes ((List!18521 0))(
  ( (Nil!18518) (Cons!18517 (h!19663 tuple2!12662) (t!26142 List!18521)) )
))
(declare-datatypes ((ListLongMap!11373 0))(
  ( (ListLongMap!11374 (toList!5702 List!18521)) )
))
(declare-fun contains!4722 (ListLongMap!11373 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2931 (array!54630 array!54628 (_ BitVec 32) (_ BitVec 32) V!30715 V!30715 (_ BitVec 32) Int) ListLongMap!11373)

(assert (=> b!916003 (= lt!411705 (contains!4722 (getCurrentListMap!2931 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k!1099))))

(declare-fun b!916004 () Bool)

(declare-fun e!514209 () Bool)

(declare-fun tp_is_empty!19313 () Bool)

(assert (=> b!916004 (= e!514209 tp_is_empty!19313)))

(declare-fun b!916005 () Bool)

(declare-fun res!617644 () Bool)

(assert (=> b!916005 (=> (not res!617644) (not e!514207))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54630 (_ BitVec 32)) Bool)

(assert (=> b!916005 (= res!617644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!617647 () Bool)

(assert (=> start!78620 (=> (not res!617647) (not e!514207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78620 (= res!617647 (validMask!0 mask!1881))))

(assert (=> start!78620 e!514207))

(assert (=> start!78620 true))

(declare-fun e!514208 () Bool)

(declare-fun array_inv!20474 (array!54628) Bool)

(assert (=> start!78620 (and (array_inv!20474 _values!1231) e!514208)))

(assert (=> start!78620 tp!58856))

(declare-fun array_inv!20475 (array!54630) Bool)

(assert (=> start!78620 (array_inv!20475 _keys!1487)))

(assert (=> start!78620 tp_is_empty!19313))

(declare-fun b!916006 () Bool)

(declare-fun e!514205 () Bool)

(assert (=> b!916006 (= e!514205 tp_is_empty!19313)))

(declare-fun mapIsEmpty!30726 () Bool)

(declare-fun mapRes!30726 () Bool)

(assert (=> mapIsEmpty!30726 mapRes!30726))

(declare-fun b!916007 () Bool)

(declare-fun res!617648 () Bool)

(assert (=> b!916007 (=> (not res!617648) (not e!514207))))

(declare-datatypes ((List!18522 0))(
  ( (Nil!18519) (Cons!18518 (h!19664 (_ BitVec 64)) (t!26143 List!18522)) )
))
(declare-fun arrayNoDuplicates!0 (array!54630 (_ BitVec 32) List!18522) Bool)

(assert (=> b!916007 (= res!617648 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18519))))

(declare-fun mapNonEmpty!30726 () Bool)

(declare-fun tp!58857 () Bool)

(assert (=> mapNonEmpty!30726 (= mapRes!30726 (and tp!58857 e!514209))))

(declare-fun mapRest!30726 () (Array (_ BitVec 32) ValueCell!9175))

(declare-fun mapValue!30726 () ValueCell!9175)

(declare-fun mapKey!30726 () (_ BitVec 32))

(assert (=> mapNonEmpty!30726 (= (arr!26255 _values!1231) (store mapRest!30726 mapKey!30726 mapValue!30726))))

(declare-fun b!916008 () Bool)

(declare-fun res!617645 () Bool)

(assert (=> b!916008 (=> (not res!617645) (not e!514207))))

(assert (=> b!916008 (= res!617645 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26716 _keys!1487))))))

(declare-fun b!916009 () Bool)

(assert (=> b!916009 (= e!514208 (and e!514205 mapRes!30726))))

(declare-fun condMapEmpty!30726 () Bool)

(declare-fun mapDefault!30726 () ValueCell!9175)

