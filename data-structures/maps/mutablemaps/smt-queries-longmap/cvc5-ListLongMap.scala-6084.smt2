; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78640 () Bool)

(assert start!78640)

(declare-fun b_free!16825 () Bool)

(declare-fun b_next!16825 () Bool)

(assert (=> start!78640 (= b_free!16825 (not b_next!16825))))

(declare-fun tp!58917 () Bool)

(declare-fun b_and!27465 () Bool)

(assert (=> start!78640 (= tp!58917 b_and!27465)))

(declare-fun b!916254 () Bool)

(declare-fun res!617810 () Bool)

(declare-fun e!514360 () Bool)

(assert (=> b!916254 (=> (not res!617810) (not e!514360))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!54668 0))(
  ( (array!54669 (arr!26275 (Array (_ BitVec 32) (_ BitVec 64))) (size!26735 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54668)

(assert (=> b!916254 (= res!617810 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26735 _keys!1487))))))

(declare-fun b!916255 () Bool)

(declare-fun e!514361 () Bool)

(assert (=> b!916255 (= e!514360 e!514361)))

(declare-fun res!617809 () Bool)

(assert (=> b!916255 (=> (not res!617809) (not e!514361))))

(declare-datatypes ((V!30743 0))(
  ( (V!30744 (val!9717 Int)) )
))
(declare-datatypes ((tuple2!12676 0))(
  ( (tuple2!12677 (_1!6348 (_ BitVec 64)) (_2!6348 V!30743)) )
))
(declare-datatypes ((List!18537 0))(
  ( (Nil!18534) (Cons!18533 (h!19679 tuple2!12676) (t!26158 List!18537)) )
))
(declare-datatypes ((ListLongMap!11387 0))(
  ( (ListLongMap!11388 (toList!5709 List!18537)) )
))
(declare-fun lt!411729 () ListLongMap!11387)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4729 (ListLongMap!11387 (_ BitVec 64)) Bool)

(assert (=> b!916255 (= res!617809 (contains!4729 lt!411729 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9185 0))(
  ( (ValueCellFull!9185 (v!12235 V!30743)) (EmptyCell!9185) )
))
(declare-datatypes ((array!54670 0))(
  ( (array!54671 (arr!26276 (Array (_ BitVec 32) ValueCell!9185)) (size!26736 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54670)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30743)

(declare-fun minValue!1173 () V!30743)

(declare-fun getCurrentListMap!2938 (array!54668 array!54670 (_ BitVec 32) (_ BitVec 32) V!30743 V!30743 (_ BitVec 32) Int) ListLongMap!11387)

(assert (=> b!916255 (= lt!411729 (getCurrentListMap!2938 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapNonEmpty!30756 () Bool)

(declare-fun mapRes!30756 () Bool)

(declare-fun tp!58916 () Bool)

(declare-fun e!514362 () Bool)

(assert (=> mapNonEmpty!30756 (= mapRes!30756 (and tp!58916 e!514362))))

(declare-fun mapValue!30756 () ValueCell!9185)

(declare-fun mapKey!30756 () (_ BitVec 32))

(declare-fun mapRest!30756 () (Array (_ BitVec 32) ValueCell!9185))

(assert (=> mapNonEmpty!30756 (= (arr!26276 _values!1231) (store mapRest!30756 mapKey!30756 mapValue!30756))))

(declare-fun b!916256 () Bool)

(assert (=> b!916256 (= e!514361 false)))

(declare-fun lt!411728 () V!30743)

(declare-fun apply!539 (ListLongMap!11387 (_ BitVec 64)) V!30743)

(assert (=> b!916256 (= lt!411728 (apply!539 lt!411729 k!1099))))

(declare-fun b!916257 () Bool)

(declare-fun e!514358 () Bool)

(declare-fun e!514359 () Bool)

(assert (=> b!916257 (= e!514358 (and e!514359 mapRes!30756))))

(declare-fun condMapEmpty!30756 () Bool)

(declare-fun mapDefault!30756 () ValueCell!9185)

