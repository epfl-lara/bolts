; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95412 () Bool)

(assert start!95412)

(declare-fun b!1077245 () Bool)

(declare-fun res!717895 () Bool)

(declare-fun e!615970 () Bool)

(assert (=> b!1077245 (=> (not res!717895) (not e!615970))))

(declare-datatypes ((array!69114 0))(
  ( (array!69115 (arr!33232 (Array (_ BitVec 32) (_ BitVec 64))) (size!33769 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69114)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69114 (_ BitVec 32)) Bool)

(assert (=> b!1077245 (= res!717895 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!717899 () Bool)

(assert (=> start!95412 (=> (not res!717899) (not e!615970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95412 (= res!717899 (validMask!0 mask!1414))))

(assert (=> start!95412 e!615970))

(assert (=> start!95412 true))

(declare-datatypes ((V!39929 0))(
  ( (V!39930 (val!13107 Int)) )
))
(declare-datatypes ((ValueCell!12341 0))(
  ( (ValueCellFull!12341 (v!15727 V!39929)) (EmptyCell!12341) )
))
(declare-datatypes ((array!69116 0))(
  ( (array!69117 (arr!33233 (Array (_ BitVec 32) ValueCell!12341)) (size!33770 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69116)

(declare-fun e!615967 () Bool)

(declare-fun array_inv!25536 (array!69116) Bool)

(assert (=> start!95412 (and (array_inv!25536 _values!874) e!615967)))

(declare-fun array_inv!25537 (array!69114) Bool)

(assert (=> start!95412 (array_inv!25537 _keys!1070)))

(declare-fun b!1077246 () Bool)

(declare-fun res!717896 () Bool)

(assert (=> b!1077246 (=> (not res!717896) (not e!615970))))

(declare-datatypes ((List!23330 0))(
  ( (Nil!23327) (Cons!23326 (h!24535 (_ BitVec 64)) (t!32696 List!23330)) )
))
(declare-fun noDuplicate!1595 (List!23330) Bool)

(assert (=> b!1077246 (= res!717896 (noDuplicate!1595 Nil!23327))))

(declare-fun mapIsEmpty!40891 () Bool)

(declare-fun mapRes!40891 () Bool)

(assert (=> mapIsEmpty!40891 mapRes!40891))

(declare-fun b!1077247 () Bool)

(declare-fun res!717894 () Bool)

(assert (=> b!1077247 (=> (not res!717894) (not e!615970))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1077247 (= res!717894 (and (= (size!33770 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33769 _keys!1070) (size!33770 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077248 () Bool)

(declare-fun e!615966 () Bool)

(declare-fun tp_is_empty!26101 () Bool)

(assert (=> b!1077248 (= e!615966 tp_is_empty!26101)))

(declare-fun mapNonEmpty!40891 () Bool)

(declare-fun tp!78354 () Bool)

(declare-fun e!615971 () Bool)

(assert (=> mapNonEmpty!40891 (= mapRes!40891 (and tp!78354 e!615971))))

(declare-fun mapValue!40891 () ValueCell!12341)

(declare-fun mapKey!40891 () (_ BitVec 32))

(declare-fun mapRest!40891 () (Array (_ BitVec 32) ValueCell!12341))

(assert (=> mapNonEmpty!40891 (= (arr!33233 _values!874) (store mapRest!40891 mapKey!40891 mapValue!40891))))

(declare-fun b!1077249 () Bool)

(declare-fun e!615968 () Bool)

(declare-fun contains!6382 (List!23330 (_ BitVec 64)) Bool)

(assert (=> b!1077249 (= e!615968 (contains!6382 Nil!23327 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1077250 () Bool)

(assert (=> b!1077250 (= e!615971 tp_is_empty!26101)))

(declare-fun b!1077251 () Bool)

(assert (=> b!1077251 (= e!615967 (and e!615966 mapRes!40891))))

(declare-fun condMapEmpty!40891 () Bool)

(declare-fun mapDefault!40891 () ValueCell!12341)

