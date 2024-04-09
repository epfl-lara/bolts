; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96664 () Bool)

(assert start!96664)

(declare-fun b_free!23101 () Bool)

(declare-fun b_next!23101 () Bool)

(assert (=> start!96664 (= b_free!23101 (not b_next!23101))))

(declare-fun tp!81242 () Bool)

(declare-fun b_and!36939 () Bool)

(assert (=> start!96664 (= tp!81242 b_and!36939)))

(declare-fun b!1098864 () Bool)

(declare-fun res!733418 () Bool)

(declare-fun e!627231 () Bool)

(assert (=> b!1098864 (=> (not res!733418) (not e!627231))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!71170 0))(
  ( (array!71171 (arr!34249 (Array (_ BitVec 32) (_ BitVec 64))) (size!34786 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71170)

(assert (=> b!1098864 (= res!733418 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34786 _keys!1070))))))

(declare-fun b!1098865 () Bool)

(declare-fun res!733419 () Bool)

(assert (=> b!1098865 (=> (not res!733419) (not e!627231))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71170 (_ BitVec 32)) Bool)

(assert (=> b!1098865 (= res!733419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!733410 () Bool)

(assert (=> start!96664 (=> (not res!733410) (not e!627231))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96664 (= res!733410 (validMask!0 mask!1414))))

(assert (=> start!96664 e!627231))

(assert (=> start!96664 tp!81242))

(assert (=> start!96664 true))

(declare-fun tp_is_empty!27151 () Bool)

(assert (=> start!96664 tp_is_empty!27151))

(declare-fun array_inv!26244 (array!71170) Bool)

(assert (=> start!96664 (array_inv!26244 _keys!1070)))

(declare-datatypes ((V!41329 0))(
  ( (V!41330 (val!13632 Int)) )
))
(declare-datatypes ((ValueCell!12866 0))(
  ( (ValueCellFull!12866 (v!16258 V!41329)) (EmptyCell!12866) )
))
(declare-datatypes ((array!71172 0))(
  ( (array!71173 (arr!34250 (Array (_ BitVec 32) ValueCell!12866)) (size!34787 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71172)

(declare-fun e!627229 () Bool)

(declare-fun array_inv!26245 (array!71172) Bool)

(assert (=> start!96664 (and (array_inv!26245 _values!874) e!627229)))

(declare-fun b!1098866 () Bool)

(declare-fun e!627232 () Bool)

(assert (=> b!1098866 (= e!627232 tp_is_empty!27151)))

(declare-fun b!1098867 () Bool)

(declare-fun e!627235 () Bool)

(declare-fun e!627233 () Bool)

(assert (=> b!1098867 (= e!627235 e!627233)))

(declare-fun res!733413 () Bool)

(assert (=> b!1098867 (=> res!733413 e!627233)))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1098867 (= res!733413 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((tuple2!17386 0))(
  ( (tuple2!17387 (_1!8703 (_ BitVec 64)) (_2!8703 V!41329)) )
))
(declare-datatypes ((List!24062 0))(
  ( (Nil!24059) (Cons!24058 (h!25267 tuple2!17386) (t!34216 List!24062)) )
))
(declare-datatypes ((ListLongMap!15367 0))(
  ( (ListLongMap!15368 (toList!7699 List!24062)) )
))
(declare-fun lt!491799 () ListLongMap!15367)

(declare-fun lt!491810 () ListLongMap!15367)

(assert (=> b!1098867 (= lt!491799 lt!491810)))

(declare-fun lt!491801 () ListLongMap!15367)

(declare-fun -!944 (ListLongMap!15367 (_ BitVec 64)) ListLongMap!15367)

(assert (=> b!1098867 (= lt!491799 (-!944 lt!491801 k!904))))

(declare-datatypes ((Unit!36075 0))(
  ( (Unit!36076) )
))
(declare-fun lt!491797 () Unit!36075)

(declare-fun lt!491798 () ListLongMap!15367)

(declare-fun zeroValue!831 () V!41329)

(declare-fun addRemoveCommutativeForDiffKeys!125 (ListLongMap!15367 (_ BitVec 64) V!41329 (_ BitVec 64)) Unit!36075)

(assert (=> b!1098867 (= lt!491797 (addRemoveCommutativeForDiffKeys!125 lt!491798 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun lt!491800 () ListLongMap!15367)

(declare-fun lt!491806 () tuple2!17386)

(declare-fun +!3334 (ListLongMap!15367 tuple2!17386) ListLongMap!15367)

(assert (=> b!1098867 (= lt!491800 (+!3334 lt!491810 lt!491806))))

(declare-fun lt!491804 () ListLongMap!15367)

(declare-fun lt!491808 () tuple2!17386)

(assert (=> b!1098867 (= lt!491810 (+!3334 lt!491804 lt!491808))))

(declare-fun lt!491807 () ListLongMap!15367)

(declare-fun lt!491812 () ListLongMap!15367)

(assert (=> b!1098867 (= lt!491807 lt!491812)))

(assert (=> b!1098867 (= lt!491812 (+!3334 lt!491801 lt!491806))))

(assert (=> b!1098867 (= lt!491801 (+!3334 lt!491798 lt!491808))))

(declare-fun lt!491802 () ListLongMap!15367)

(assert (=> b!1098867 (= lt!491800 (+!3334 (+!3334 lt!491802 lt!491808) lt!491806))))

(declare-fun minValue!831 () V!41329)

(assert (=> b!1098867 (= lt!491806 (tuple2!17387 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1098867 (= lt!491808 (tuple2!17387 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1098868 () Bool)

(declare-fun mapRes!42499 () Bool)

(assert (=> b!1098868 (= e!627229 (and e!627232 mapRes!42499))))

(declare-fun condMapEmpty!42499 () Bool)

(declare-fun mapDefault!42499 () ValueCell!12866)

