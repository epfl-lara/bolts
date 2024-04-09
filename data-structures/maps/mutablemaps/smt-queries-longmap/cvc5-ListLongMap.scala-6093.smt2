; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78694 () Bool)

(assert start!78694)

(declare-fun b_free!16879 () Bool)

(declare-fun b_next!16879 () Bool)

(assert (=> start!78694 (= b_free!16879 (not b_next!16879))))

(declare-fun tp!59079 () Bool)

(declare-fun b_and!27519 () Bool)

(assert (=> start!78694 (= tp!59079 b_and!27519)))

(declare-fun b!916983 () Bool)

(declare-fun e!514844 () Bool)

(declare-fun tp_is_empty!19387 () Bool)

(assert (=> b!916983 (= e!514844 tp_is_empty!19387)))

(declare-fun b!916984 () Bool)

(declare-fun e!514846 () Bool)

(declare-fun e!514843 () Bool)

(assert (=> b!916984 (= e!514846 e!514843)))

(declare-fun res!618296 () Bool)

(assert (=> b!916984 (=> (not res!618296) (not e!514843))))

(declare-datatypes ((V!30815 0))(
  ( (V!30816 (val!9744 Int)) )
))
(declare-datatypes ((tuple2!12720 0))(
  ( (tuple2!12721 (_1!6370 (_ BitVec 64)) (_2!6370 V!30815)) )
))
(declare-datatypes ((List!18575 0))(
  ( (Nil!18572) (Cons!18571 (h!19717 tuple2!12720) (t!26196 List!18575)) )
))
(declare-datatypes ((ListLongMap!11431 0))(
  ( (ListLongMap!11432 (toList!5731 List!18575)) )
))
(declare-fun lt!411891 () ListLongMap!11431)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4748 (ListLongMap!11431 (_ BitVec 64)) Bool)

(assert (=> b!916984 (= res!618296 (contains!4748 lt!411891 k!1099))))

(declare-datatypes ((array!54766 0))(
  ( (array!54767 (arr!26324 (Array (_ BitVec 32) (_ BitVec 64))) (size!26784 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54766)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9212 0))(
  ( (ValueCellFull!9212 (v!12262 V!30815)) (EmptyCell!9212) )
))
(declare-datatypes ((array!54768 0))(
  ( (array!54769 (arr!26325 (Array (_ BitVec 32) ValueCell!9212)) (size!26785 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54768)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30815)

(declare-fun minValue!1173 () V!30815)

(declare-fun getCurrentListMap!2957 (array!54766 array!54768 (_ BitVec 32) (_ BitVec 32) V!30815 V!30815 (_ BitVec 32) Int) ListLongMap!11431)

(assert (=> b!916984 (= lt!411891 (getCurrentListMap!2957 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!916985 () Bool)

(declare-fun res!618292 () Bool)

(assert (=> b!916985 (=> (not res!618292) (not e!514846))))

(assert (=> b!916985 (= res!618292 (and (= (size!26785 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26784 _keys!1487) (size!26785 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun res!618295 () Bool)

(assert (=> start!78694 (=> (not res!618295) (not e!514846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78694 (= res!618295 (validMask!0 mask!1881))))

(assert (=> start!78694 e!514846))

(assert (=> start!78694 true))

(declare-fun e!514847 () Bool)

(declare-fun array_inv!20522 (array!54768) Bool)

(assert (=> start!78694 (and (array_inv!20522 _values!1231) e!514847)))

(assert (=> start!78694 tp!59079))

(declare-fun array_inv!20523 (array!54766) Bool)

(assert (=> start!78694 (array_inv!20523 _keys!1487)))

(assert (=> start!78694 tp_is_empty!19387))

(declare-fun b!916986 () Bool)

(assert (=> b!916986 (= e!514843 false)))

(declare-fun lt!411890 () V!30815)

(declare-fun apply!559 (ListLongMap!11431 (_ BitVec 64)) V!30815)

(assert (=> b!916986 (= lt!411890 (apply!559 lt!411891 k!1099))))

(declare-fun b!916987 () Bool)

(declare-fun res!618294 () Bool)

(assert (=> b!916987 (=> (not res!618294) (not e!514846))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54766 (_ BitVec 32)) Bool)

(assert (=> b!916987 (= res!618294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916988 () Bool)

(declare-fun res!618291 () Bool)

(assert (=> b!916988 (=> (not res!618291) (not e!514846))))

(declare-datatypes ((List!18576 0))(
  ( (Nil!18573) (Cons!18572 (h!19718 (_ BitVec 64)) (t!26197 List!18576)) )
))
(declare-fun arrayNoDuplicates!0 (array!54766 (_ BitVec 32) List!18576) Bool)

(assert (=> b!916988 (= res!618291 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18573))))

(declare-fun b!916989 () Bool)

(declare-fun mapRes!30837 () Bool)

(assert (=> b!916989 (= e!514847 (and e!514844 mapRes!30837))))

(declare-fun condMapEmpty!30837 () Bool)

(declare-fun mapDefault!30837 () ValueCell!9212)

