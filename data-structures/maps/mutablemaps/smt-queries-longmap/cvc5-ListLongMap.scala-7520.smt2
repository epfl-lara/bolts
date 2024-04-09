; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95396 () Bool)

(assert start!95396)

(declare-fun b!1077152 () Bool)

(declare-fun res!717842 () Bool)

(declare-fun e!615900 () Bool)

(assert (=> b!1077152 (=> (not res!717842) (not e!615900))))

(declare-datatypes ((array!69102 0))(
  ( (array!69103 (arr!33227 (Array (_ BitVec 32) (_ BitVec 64))) (size!33764 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69102)

(assert (=> b!1077152 (= res!717842 (and (bvsle #b00000000000000000000000000000000 (size!33764 _keys!1070)) (bvslt (size!33764 _keys!1070) #b01111111111111111111111111111111)))))

(declare-fun b!1077153 () Bool)

(declare-fun res!717845 () Bool)

(assert (=> b!1077153 (=> (not res!717845) (not e!615900))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69102 (_ BitVec 32)) Bool)

(assert (=> b!1077153 (= res!717845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!40879 () Bool)

(declare-fun mapRes!40879 () Bool)

(assert (=> mapIsEmpty!40879 mapRes!40879))

(declare-fun b!1077154 () Bool)

(declare-datatypes ((List!23327 0))(
  ( (Nil!23324) (Cons!23323 (h!24532 (_ BitVec 64)) (t!32693 List!23327)) )
))
(declare-fun noDuplicate!1592 (List!23327) Bool)

(assert (=> b!1077154 (= e!615900 (not (noDuplicate!1592 Nil!23324)))))

(declare-fun mapNonEmpty!40879 () Bool)

(declare-fun tp!78342 () Bool)

(declare-fun e!615902 () Bool)

(assert (=> mapNonEmpty!40879 (= mapRes!40879 (and tp!78342 e!615902))))

(declare-datatypes ((V!39921 0))(
  ( (V!39922 (val!13104 Int)) )
))
(declare-datatypes ((ValueCell!12338 0))(
  ( (ValueCellFull!12338 (v!15724 V!39921)) (EmptyCell!12338) )
))
(declare-datatypes ((array!69104 0))(
  ( (array!69105 (arr!33228 (Array (_ BitVec 32) ValueCell!12338)) (size!33765 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69104)

(declare-fun mapValue!40879 () ValueCell!12338)

(declare-fun mapKey!40879 () (_ BitVec 32))

(declare-fun mapRest!40879 () (Array (_ BitVec 32) ValueCell!12338))

(assert (=> mapNonEmpty!40879 (= (arr!33228 _values!874) (store mapRest!40879 mapKey!40879 mapValue!40879))))

(declare-fun b!1077155 () Bool)

(declare-fun e!615901 () Bool)

(declare-fun tp_is_empty!26095 () Bool)

(assert (=> b!1077155 (= e!615901 tp_is_empty!26095)))

(declare-fun res!717843 () Bool)

(assert (=> start!95396 (=> (not res!717843) (not e!615900))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95396 (= res!717843 (validMask!0 mask!1414))))

(assert (=> start!95396 e!615900))

(assert (=> start!95396 true))

(declare-fun e!615899 () Bool)

(declare-fun array_inv!25532 (array!69104) Bool)

(assert (=> start!95396 (and (array_inv!25532 _values!874) e!615899)))

(declare-fun array_inv!25533 (array!69102) Bool)

(assert (=> start!95396 (array_inv!25533 _keys!1070)))

(declare-fun b!1077156 () Bool)

(declare-fun res!717844 () Bool)

(assert (=> b!1077156 (=> (not res!717844) (not e!615900))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1077156 (= res!717844 (and (= (size!33765 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33764 _keys!1070) (size!33765 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077157 () Bool)

(assert (=> b!1077157 (= e!615902 tp_is_empty!26095)))

(declare-fun b!1077158 () Bool)

(assert (=> b!1077158 (= e!615899 (and e!615901 mapRes!40879))))

(declare-fun condMapEmpty!40879 () Bool)

(declare-fun mapDefault!40879 () ValueCell!12338)

