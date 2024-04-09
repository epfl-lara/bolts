; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78066 () Bool)

(assert start!78066)

(declare-fun b_free!16565 () Bool)

(declare-fun b_next!16565 () Bool)

(assert (=> start!78066 (= b_free!16565 (not b_next!16565))))

(declare-fun tp!57966 () Bool)

(declare-fun b_and!27155 () Bool)

(assert (=> start!78066 (= tp!57966 b_and!27155)))

(declare-fun mapNonEmpty!30196 () Bool)

(declare-fun mapRes!30196 () Bool)

(declare-fun tp!57967 () Bool)

(declare-fun e!510770 () Bool)

(assert (=> mapNonEmpty!30196 (= mapRes!30196 (and tp!57967 e!510770))))

(declare-datatypes ((V!30275 0))(
  ( (V!30276 (val!9542 Int)) )
))
(declare-datatypes ((ValueCell!9010 0))(
  ( (ValueCellFull!9010 (v!12051 V!30275)) (EmptyCell!9010) )
))
(declare-datatypes ((array!53976 0))(
  ( (array!53977 (arr!25940 (Array (_ BitVec 32) ValueCell!9010)) (size!26400 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53976)

(declare-fun mapValue!30196 () ValueCell!9010)

(declare-fun mapKey!30196 () (_ BitVec 32))

(declare-fun mapRest!30196 () (Array (_ BitVec 32) ValueCell!9010))

(assert (=> mapNonEmpty!30196 (= (arr!25940 _values!1152) (store mapRest!30196 mapKey!30196 mapValue!30196))))

(declare-fun b!910797 () Bool)

(declare-fun e!510769 () Bool)

(declare-fun tp_is_empty!18983 () Bool)

(assert (=> b!910797 (= e!510769 tp_is_empty!18983)))

(declare-fun b!910798 () Bool)

(declare-fun res!614666 () Bool)

(declare-fun e!510772 () Bool)

(assert (=> b!910798 (=> (not res!614666) (not e!510772))))

(declare-datatypes ((array!53978 0))(
  ( (array!53979 (arr!25941 (Array (_ BitVec 32) (_ BitVec 64))) (size!26401 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53978)

(declare-datatypes ((List!18327 0))(
  ( (Nil!18324) (Cons!18323 (h!19469 (_ BitVec 64)) (t!25920 List!18327)) )
))
(declare-fun arrayNoDuplicates!0 (array!53978 (_ BitVec 32) List!18327) Bool)

(assert (=> b!910798 (= res!614666 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18324))))

(declare-fun res!614668 () Bool)

(assert (=> start!78066 (=> (not res!614668) (not e!510772))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78066 (= res!614668 (validMask!0 mask!1756))))

(assert (=> start!78066 e!510772))

(declare-fun e!510773 () Bool)

(declare-fun array_inv!20264 (array!53976) Bool)

(assert (=> start!78066 (and (array_inv!20264 _values!1152) e!510773)))

(assert (=> start!78066 tp!57966))

(assert (=> start!78066 true))

(assert (=> start!78066 tp_is_empty!18983))

(declare-fun array_inv!20265 (array!53978) Bool)

(assert (=> start!78066 (array_inv!20265 _keys!1386)))

(declare-fun b!910799 () Bool)

(declare-fun res!614665 () Bool)

(assert (=> b!910799 (=> (not res!614665) (not e!510772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53978 (_ BitVec 32)) Bool)

(assert (=> b!910799 (= res!614665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!910800 () Bool)

(assert (=> b!910800 (= e!510772 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30275)

(declare-fun lt!410275 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30275)

(declare-datatypes ((tuple2!12476 0))(
  ( (tuple2!12477 (_1!6248 (_ BitVec 64)) (_2!6248 V!30275)) )
))
(declare-datatypes ((List!18328 0))(
  ( (Nil!18325) (Cons!18324 (h!19470 tuple2!12476) (t!25921 List!18328)) )
))
(declare-datatypes ((ListLongMap!11187 0))(
  ( (ListLongMap!11188 (toList!5609 List!18328)) )
))
(declare-fun contains!4618 (ListLongMap!11187 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2839 (array!53978 array!53976 (_ BitVec 32) (_ BitVec 32) V!30275 V!30275 (_ BitVec 32) Int) ListLongMap!11187)

(assert (=> b!910800 (= lt!410275 (contains!4618 (getCurrentListMap!2839 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun mapIsEmpty!30196 () Bool)

(assert (=> mapIsEmpty!30196 mapRes!30196))

(declare-fun b!910801 () Bool)

(declare-fun res!614667 () Bool)

(assert (=> b!910801 (=> (not res!614667) (not e!510772))))

(assert (=> b!910801 (= res!614667 (and (= (size!26400 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26401 _keys!1386) (size!26400 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!910802 () Bool)

(assert (=> b!910802 (= e!510773 (and e!510769 mapRes!30196))))

(declare-fun condMapEmpty!30196 () Bool)

(declare-fun mapDefault!30196 () ValueCell!9010)

