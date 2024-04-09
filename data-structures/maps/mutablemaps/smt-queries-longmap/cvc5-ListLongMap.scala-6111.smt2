; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78802 () Bool)

(assert start!78802)

(declare-fun b_free!16987 () Bool)

(declare-fun b_next!16987 () Bool)

(assert (=> start!78802 (= b_free!16987 (not b_next!16987))))

(declare-fun tp!59403 () Bool)

(declare-fun b_and!27729 () Bool)

(assert (=> start!78802 (= tp!59403 b_and!27729)))

(declare-fun res!619887 () Bool)

(declare-fun e!515975 () Bool)

(assert (=> start!78802 (=> (not res!619887) (not e!515975))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78802 (= res!619887 (validMask!0 mask!1881))))

(assert (=> start!78802 e!515975))

(assert (=> start!78802 true))

(declare-fun tp_is_empty!19495 () Bool)

(assert (=> start!78802 tp_is_empty!19495))

(declare-datatypes ((V!30959 0))(
  ( (V!30960 (val!9798 Int)) )
))
(declare-datatypes ((ValueCell!9266 0))(
  ( (ValueCellFull!9266 (v!12316 V!30959)) (EmptyCell!9266) )
))
(declare-datatypes ((array!54982 0))(
  ( (array!54983 (arr!26432 (Array (_ BitVec 32) ValueCell!9266)) (size!26892 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54982)

(declare-fun e!515974 () Bool)

(declare-fun array_inv!20592 (array!54982) Bool)

(assert (=> start!78802 (and (array_inv!20592 _values!1231) e!515974)))

(assert (=> start!78802 tp!59403))

(declare-datatypes ((array!54984 0))(
  ( (array!54985 (arr!26433 (Array (_ BitVec 32) (_ BitVec 64))) (size!26893 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54984)

(declare-fun array_inv!20593 (array!54984) Bool)

(assert (=> start!78802 (array_inv!20593 _keys!1487)))

(declare-fun b!919163 () Bool)

(declare-fun res!619886 () Bool)

(assert (=> b!919163 (=> (not res!619886) (not e!515975))))

(declare-datatypes ((List!18660 0))(
  ( (Nil!18657) (Cons!18656 (h!19802 (_ BitVec 64)) (t!26385 List!18660)) )
))
(declare-fun arrayNoDuplicates!0 (array!54984 (_ BitVec 32) List!18660) Bool)

(assert (=> b!919163 (= res!619886 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18657))))

(declare-fun b!919164 () Bool)

(declare-fun e!515976 () Bool)

(assert (=> b!919164 (= e!515976 tp_is_empty!19495)))

(declare-fun b!919165 () Bool)

(declare-fun res!619885 () Bool)

(declare-fun e!515972 () Bool)

(assert (=> b!919165 (=> (not res!619885) (not e!515972))))

(declare-fun v!791 () V!30959)

(declare-datatypes ((tuple2!12818 0))(
  ( (tuple2!12819 (_1!6419 (_ BitVec 64)) (_2!6419 V!30959)) )
))
(declare-datatypes ((List!18661 0))(
  ( (Nil!18658) (Cons!18657 (h!19803 tuple2!12818) (t!26386 List!18661)) )
))
(declare-datatypes ((ListLongMap!11529 0))(
  ( (ListLongMap!11530 (toList!5780 List!18661)) )
))
(declare-fun lt!412585 () ListLongMap!11529)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!595 (ListLongMap!11529 (_ BitVec 64)) V!30959)

(assert (=> b!919165 (= res!619885 (= (apply!595 lt!412585 k!1099) v!791))))

(declare-fun mapNonEmpty!30999 () Bool)

(declare-fun mapRes!30999 () Bool)

(declare-fun tp!59402 () Bool)

(declare-fun e!515970 () Bool)

(assert (=> mapNonEmpty!30999 (= mapRes!30999 (and tp!59402 e!515970))))

(declare-fun mapKey!30999 () (_ BitVec 32))

(declare-fun mapRest!30999 () (Array (_ BitVec 32) ValueCell!9266))

(declare-fun mapValue!30999 () ValueCell!9266)

(assert (=> mapNonEmpty!30999 (= (arr!26432 _values!1231) (store mapRest!30999 mapKey!30999 mapValue!30999))))

(declare-fun b!919166 () Bool)

(assert (=> b!919166 (= e!515974 (and e!515976 mapRes!30999))))

(declare-fun condMapEmpty!30999 () Bool)

(declare-fun mapDefault!30999 () ValueCell!9266)

