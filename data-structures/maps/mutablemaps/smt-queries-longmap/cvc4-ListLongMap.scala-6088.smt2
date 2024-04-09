; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78668 () Bool)

(assert start!78668)

(declare-fun b_free!16853 () Bool)

(declare-fun b_next!16853 () Bool)

(assert (=> start!78668 (= b_free!16853 (not b_next!16853))))

(declare-fun tp!59001 () Bool)

(declare-fun b_and!27493 () Bool)

(assert (=> start!78668 (= tp!59001 b_and!27493)))

(declare-fun mapIsEmpty!30798 () Bool)

(declare-fun mapRes!30798 () Bool)

(assert (=> mapIsEmpty!30798 mapRes!30798))

(declare-fun b!916632 () Bool)

(declare-fun e!514610 () Bool)

(assert (=> b!916632 (= e!514610 false)))

(declare-datatypes ((V!30779 0))(
  ( (V!30780 (val!9731 Int)) )
))
(declare-fun lt!411813 () V!30779)

(declare-datatypes ((tuple2!12702 0))(
  ( (tuple2!12703 (_1!6361 (_ BitVec 64)) (_2!6361 V!30779)) )
))
(declare-datatypes ((List!18561 0))(
  ( (Nil!18558) (Cons!18557 (h!19703 tuple2!12702) (t!26182 List!18561)) )
))
(declare-datatypes ((ListLongMap!11413 0))(
  ( (ListLongMap!11414 (toList!5722 List!18561)) )
))
(declare-fun lt!411812 () ListLongMap!11413)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!550 (ListLongMap!11413 (_ BitVec 64)) V!30779)

(assert (=> b!916632 (= lt!411813 (apply!550 lt!411812 k!1099))))

(declare-fun res!618062 () Bool)

(declare-fun e!514611 () Bool)

(assert (=> start!78668 (=> (not res!618062) (not e!514611))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78668 (= res!618062 (validMask!0 mask!1881))))

(assert (=> start!78668 e!514611))

(assert (=> start!78668 true))

(declare-datatypes ((ValueCell!9199 0))(
  ( (ValueCellFull!9199 (v!12249 V!30779)) (EmptyCell!9199) )
))
(declare-datatypes ((array!54724 0))(
  ( (array!54725 (arr!26303 (Array (_ BitVec 32) ValueCell!9199)) (size!26763 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54724)

(declare-fun e!514612 () Bool)

(declare-fun array_inv!20508 (array!54724) Bool)

(assert (=> start!78668 (and (array_inv!20508 _values!1231) e!514612)))

(assert (=> start!78668 tp!59001))

(declare-datatypes ((array!54726 0))(
  ( (array!54727 (arr!26304 (Array (_ BitVec 32) (_ BitVec 64))) (size!26764 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54726)

(declare-fun array_inv!20509 (array!54726) Bool)

(assert (=> start!78668 (array_inv!20509 _keys!1487)))

(declare-fun tp_is_empty!19361 () Bool)

(assert (=> start!78668 tp_is_empty!19361))

(declare-fun b!916633 () Bool)

(declare-fun res!618057 () Bool)

(assert (=> b!916633 (=> (not res!618057) (not e!514611))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!916633 (= res!618057 (and (= (size!26763 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26764 _keys!1487) (size!26763 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916634 () Bool)

(assert (=> b!916634 (= e!514611 e!514610)))

(declare-fun res!618061 () Bool)

(assert (=> b!916634 (=> (not res!618061) (not e!514610))))

(declare-fun contains!4742 (ListLongMap!11413 (_ BitVec 64)) Bool)

(assert (=> b!916634 (= res!618061 (contains!4742 lt!411812 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30779)

(declare-fun minValue!1173 () V!30779)

(declare-fun getCurrentListMap!2951 (array!54726 array!54724 (_ BitVec 32) (_ BitVec 32) V!30779 V!30779 (_ BitVec 32) Int) ListLongMap!11413)

(assert (=> b!916634 (= lt!411812 (getCurrentListMap!2951 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapNonEmpty!30798 () Bool)

(declare-fun tp!59000 () Bool)

(declare-fun e!514614 () Bool)

(assert (=> mapNonEmpty!30798 (= mapRes!30798 (and tp!59000 e!514614))))

(declare-fun mapValue!30798 () ValueCell!9199)

(declare-fun mapRest!30798 () (Array (_ BitVec 32) ValueCell!9199))

(declare-fun mapKey!30798 () (_ BitVec 32))

(assert (=> mapNonEmpty!30798 (= (arr!26303 _values!1231) (store mapRest!30798 mapKey!30798 mapValue!30798))))

(declare-fun b!916635 () Bool)

(declare-fun res!618058 () Bool)

(assert (=> b!916635 (=> (not res!618058) (not e!514611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54726 (_ BitVec 32)) Bool)

(assert (=> b!916635 (= res!618058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916636 () Bool)

(assert (=> b!916636 (= e!514614 tp_is_empty!19361)))

(declare-fun b!916637 () Bool)

(declare-fun res!618060 () Bool)

(assert (=> b!916637 (=> (not res!618060) (not e!514611))))

(assert (=> b!916637 (= res!618060 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26764 _keys!1487))))))

(declare-fun b!916638 () Bool)

(declare-fun e!514613 () Bool)

(assert (=> b!916638 (= e!514613 tp_is_empty!19361)))

(declare-fun b!916639 () Bool)

(assert (=> b!916639 (= e!514612 (and e!514613 mapRes!30798))))

(declare-fun condMapEmpty!30798 () Bool)

(declare-fun mapDefault!30798 () ValueCell!9199)

