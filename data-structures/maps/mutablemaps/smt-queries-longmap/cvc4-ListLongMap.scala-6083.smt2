; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78638 () Bool)

(assert start!78638)

(declare-fun b_free!16823 () Bool)

(declare-fun b_next!16823 () Bool)

(assert (=> start!78638 (= b_free!16823 (not b_next!16823))))

(declare-fun tp!58911 () Bool)

(declare-fun b_and!27463 () Bool)

(assert (=> start!78638 (= tp!58911 b_and!27463)))

(declare-fun b!916228 () Bool)

(declare-fun res!617792 () Bool)

(declare-fun e!514343 () Bool)

(assert (=> b!916228 (=> (not res!617792) (not e!514343))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54664 0))(
  ( (array!54665 (arr!26273 (Array (_ BitVec 32) (_ BitVec 64))) (size!26733 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54664)

(assert (=> b!916228 (= res!617792 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26733 _keys!1487))))))

(declare-fun b!916229 () Bool)

(declare-fun e!514340 () Bool)

(declare-fun tp_is_empty!19331 () Bool)

(assert (=> b!916229 (= e!514340 tp_is_empty!19331)))

(declare-fun b!916230 () Bool)

(declare-fun e!514342 () Bool)

(assert (=> b!916230 (= e!514342 tp_is_empty!19331)))

(declare-fun res!617790 () Bool)

(assert (=> start!78638 (=> (not res!617790) (not e!514343))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78638 (= res!617790 (validMask!0 mask!1881))))

(assert (=> start!78638 e!514343))

(assert (=> start!78638 true))

(declare-datatypes ((V!30739 0))(
  ( (V!30740 (val!9716 Int)) )
))
(declare-datatypes ((ValueCell!9184 0))(
  ( (ValueCellFull!9184 (v!12234 V!30739)) (EmptyCell!9184) )
))
(declare-datatypes ((array!54666 0))(
  ( (array!54667 (arr!26274 (Array (_ BitVec 32) ValueCell!9184)) (size!26734 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54666)

(declare-fun e!514341 () Bool)

(declare-fun array_inv!20486 (array!54666) Bool)

(assert (=> start!78638 (and (array_inv!20486 _values!1231) e!514341)))

(assert (=> start!78638 tp!58911))

(declare-fun array_inv!20487 (array!54664) Bool)

(assert (=> start!78638 (array_inv!20487 _keys!1487)))

(assert (=> start!78638 tp_is_empty!19331))

(declare-fun b!916231 () Bool)

(declare-fun res!617788 () Bool)

(assert (=> b!916231 (=> (not res!617788) (not e!514343))))

(declare-datatypes ((List!18535 0))(
  ( (Nil!18532) (Cons!18531 (h!19677 (_ BitVec 64)) (t!26156 List!18535)) )
))
(declare-fun arrayNoDuplicates!0 (array!54664 (_ BitVec 32) List!18535) Bool)

(assert (=> b!916231 (= res!617788 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18532))))

(declare-fun mapNonEmpty!30753 () Bool)

(declare-fun mapRes!30753 () Bool)

(declare-fun tp!58910 () Bool)

(assert (=> mapNonEmpty!30753 (= mapRes!30753 (and tp!58910 e!514340))))

(declare-fun mapRest!30753 () (Array (_ BitVec 32) ValueCell!9184))

(declare-fun mapKey!30753 () (_ BitVec 32))

(declare-fun mapValue!30753 () ValueCell!9184)

(assert (=> mapNonEmpty!30753 (= (arr!26274 _values!1231) (store mapRest!30753 mapKey!30753 mapValue!30753))))

(declare-fun b!916232 () Bool)

(assert (=> b!916232 (= e!514343 false)))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun zeroValue!1173 () V!30739)

(declare-fun minValue!1173 () V!30739)

(declare-fun lt!411723 () Bool)

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((tuple2!12674 0))(
  ( (tuple2!12675 (_1!6347 (_ BitVec 64)) (_2!6347 V!30739)) )
))
(declare-datatypes ((List!18536 0))(
  ( (Nil!18533) (Cons!18532 (h!19678 tuple2!12674) (t!26157 List!18536)) )
))
(declare-datatypes ((ListLongMap!11385 0))(
  ( (ListLongMap!11386 (toList!5708 List!18536)) )
))
(declare-fun contains!4728 (ListLongMap!11385 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2937 (array!54664 array!54666 (_ BitVec 32) (_ BitVec 32) V!30739 V!30739 (_ BitVec 32) Int) ListLongMap!11385)

(assert (=> b!916232 (= lt!411723 (contains!4728 (getCurrentListMap!2937 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k!1099))))

(declare-fun b!916233 () Bool)

(declare-fun res!617789 () Bool)

(assert (=> b!916233 (=> (not res!617789) (not e!514343))))

(assert (=> b!916233 (= res!617789 (and (= (size!26734 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26733 _keys!1487) (size!26734 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916234 () Bool)

(assert (=> b!916234 (= e!514341 (and e!514342 mapRes!30753))))

(declare-fun condMapEmpty!30753 () Bool)

(declare-fun mapDefault!30753 () ValueCell!9184)

