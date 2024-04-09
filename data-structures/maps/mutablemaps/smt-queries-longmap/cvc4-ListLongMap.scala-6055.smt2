; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78408 () Bool)

(assert start!78408)

(declare-fun b_free!16745 () Bool)

(declare-fun b_next!16745 () Bool)

(assert (=> start!78408 (= b_free!16745 (not b_next!16745))))

(declare-fun tp!58524 () Bool)

(declare-fun b_and!27375 () Bool)

(assert (=> start!78408 (= tp!58524 b_and!27375)))

(declare-fun b!914135 () Bool)

(declare-fun e!512845 () Bool)

(declare-fun tp_is_empty!19163 () Bool)

(assert (=> b!914135 (= e!512845 tp_is_empty!19163)))

(declare-fun b!914136 () Bool)

(declare-fun e!512842 () Bool)

(declare-fun e!512838 () Bool)

(assert (=> b!914136 (= e!512842 e!512838)))

(declare-fun res!616614 () Bool)

(assert (=> b!914136 (=> res!616614 e!512838)))

(declare-datatypes ((V!30515 0))(
  ( (V!30516 (val!9632 Int)) )
))
(declare-datatypes ((tuple2!12616 0))(
  ( (tuple2!12617 (_1!6318 (_ BitVec 64)) (_2!6318 V!30515)) )
))
(declare-datatypes ((List!18455 0))(
  ( (Nil!18452) (Cons!18451 (h!19597 tuple2!12616) (t!26068 List!18455)) )
))
(declare-datatypes ((ListLongMap!11327 0))(
  ( (ListLongMap!11328 (toList!5679 List!18455)) )
))
(declare-fun lt!411379 () ListLongMap!11327)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun contains!4694 (ListLongMap!11327 (_ BitVec 64)) Bool)

(assert (=> b!914136 (= res!616614 (not (contains!4694 lt!411379 k!1033)))))

(declare-datatypes ((ValueCell!9100 0))(
  ( (ValueCellFull!9100 (v!12148 V!30515)) (EmptyCell!9100) )
))
(declare-datatypes ((array!54334 0))(
  ( (array!54335 (arr!26114 (Array (_ BitVec 32) ValueCell!9100)) (size!26574 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54334)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30515)

(declare-datatypes ((array!54336 0))(
  ( (array!54337 (arr!26115 (Array (_ BitVec 32) (_ BitVec 64))) (size!26575 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54336)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30515)

(declare-fun i!717 () (_ BitVec 32))

(declare-fun getCurrentListMap!2908 (array!54336 array!54334 (_ BitVec 32) (_ BitVec 32) V!30515 V!30515 (_ BitVec 32) Int) ListLongMap!11327)

(assert (=> b!914136 (= lt!411379 (getCurrentListMap!2908 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun mapIsEmpty!30483 () Bool)

(declare-fun mapRes!30483 () Bool)

(assert (=> mapIsEmpty!30483 mapRes!30483))

(declare-fun res!616611 () Bool)

(declare-fun e!512843 () Bool)

(assert (=> start!78408 (=> (not res!616611) (not e!512843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78408 (= res!616611 (validMask!0 mask!1756))))

(assert (=> start!78408 e!512843))

(declare-fun e!512840 () Bool)

(declare-fun array_inv!20386 (array!54334) Bool)

(assert (=> start!78408 (and (array_inv!20386 _values!1152) e!512840)))

(assert (=> start!78408 tp!58524))

(assert (=> start!78408 true))

(assert (=> start!78408 tp_is_empty!19163))

(declare-fun array_inv!20387 (array!54336) Bool)

(assert (=> start!78408 (array_inv!20387 _keys!1386)))

(declare-fun b!914137 () Bool)

(declare-fun e!512844 () Bool)

(assert (=> b!914137 (= e!512843 e!512844)))

(declare-fun res!616605 () Bool)

(assert (=> b!914137 (=> (not res!616605) (not e!512844))))

(declare-fun lt!411376 () ListLongMap!11327)

(assert (=> b!914137 (= res!616605 (contains!4694 lt!411376 k!1033))))

(assert (=> b!914137 (= lt!411376 (getCurrentListMap!2908 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun mapNonEmpty!30483 () Bool)

(declare-fun tp!58523 () Bool)

(assert (=> mapNonEmpty!30483 (= mapRes!30483 (and tp!58523 e!512845))))

(declare-fun mapValue!30483 () ValueCell!9100)

(declare-fun mapRest!30483 () (Array (_ BitVec 32) ValueCell!9100))

(declare-fun mapKey!30483 () (_ BitVec 32))

(assert (=> mapNonEmpty!30483 (= (arr!26114 _values!1152) (store mapRest!30483 mapKey!30483 mapValue!30483))))

(declare-fun b!914138 () Bool)

(assert (=> b!914138 (= e!512844 (not e!512842))))

(declare-fun res!616606 () Bool)

(assert (=> b!914138 (=> res!616606 e!512842)))

(assert (=> b!914138 (= res!616606 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26575 _keys!1386))))))

(declare-fun lt!411377 () V!30515)

(declare-fun get!13724 (ValueCell!9100 V!30515) V!30515)

(declare-fun dynLambda!1401 (Int (_ BitVec 64)) V!30515)

(assert (=> b!914138 (= lt!411377 (get!13724 (select (arr!26114 _values!1152) i!717) (dynLambda!1401 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!54336 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!914138 (arrayContainsKey!0 _keys!1386 k!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30921 0))(
  ( (Unit!30922) )
))
(declare-fun lt!411380 () Unit!30921)

(declare-fun lemmaKeyInListMapIsInArray!293 (array!54336 array!54334 (_ BitVec 32) (_ BitVec 32) V!30515 V!30515 (_ BitVec 64) Int) Unit!30921)

(assert (=> b!914138 (= lt!411380 (lemmaKeyInListMapIsInArray!293 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k!1033 defaultEntry!1160))))

(declare-fun b!914139 () Bool)

(declare-fun res!616608 () Bool)

(assert (=> b!914139 (=> (not res!616608) (not e!512843))))

(declare-datatypes ((List!18456 0))(
  ( (Nil!18453) (Cons!18452 (h!19598 (_ BitVec 64)) (t!26069 List!18456)) )
))
(declare-fun arrayNoDuplicates!0 (array!54336 (_ BitVec 32) List!18456) Bool)

(assert (=> b!914139 (= res!616608 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18453))))

(declare-fun b!914140 () Bool)

(declare-fun res!616609 () Bool)

(assert (=> b!914140 (=> res!616609 e!512838)))

(declare-fun apply!535 (ListLongMap!11327 (_ BitVec 64)) V!30515)

(assert (=> b!914140 (= res!616609 (not (= (apply!535 lt!411379 k!1033) lt!411377)))))

(declare-fun b!914141 () Bool)

(declare-fun e!512839 () Bool)

(assert (=> b!914141 (= e!512839 tp_is_empty!19163)))

(declare-fun b!914142 () Bool)

(declare-fun res!616607 () Bool)

(assert (=> b!914142 (=> (not res!616607) (not e!512843))))

(assert (=> b!914142 (= res!616607 (and (= (size!26574 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26575 _keys!1386) (size!26574 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!914143 () Bool)

(declare-fun res!616610 () Bool)

(assert (=> b!914143 (=> (not res!616610) (not e!512843))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54336 (_ BitVec 32)) Bool)

(assert (=> b!914143 (= res!616610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!914144 () Bool)

(declare-fun res!616613 () Bool)

(assert (=> b!914144 (=> (not res!616613) (not e!512844))))

(assert (=> b!914144 (= res!616613 (and (= (select (arr!26115 _keys!1386) i!717) k!1033) (not (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!914145 () Bool)

(assert (=> b!914145 (= e!512840 (and e!512839 mapRes!30483))))

(declare-fun condMapEmpty!30483 () Bool)

(declare-fun mapDefault!30483 () ValueCell!9100)

