; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95446 () Bool)

(assert start!95446)

(declare-fun b!1077525 () Bool)

(declare-fun res!718063 () Bool)

(declare-fun e!616170 () Bool)

(assert (=> b!1077525 (=> (not res!718063) (not e!616170))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69156 0))(
  ( (array!69157 (arr!33252 (Array (_ BitVec 32) (_ BitVec 64))) (size!33789 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69156)

(declare-datatypes ((V!39957 0))(
  ( (V!39958 (val!13118 Int)) )
))
(declare-datatypes ((ValueCell!12352 0))(
  ( (ValueCellFull!12352 (v!15739 V!39957)) (EmptyCell!12352) )
))
(declare-datatypes ((array!69158 0))(
  ( (array!69159 (arr!33253 (Array (_ BitVec 32) ValueCell!12352)) (size!33790 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69158)

(assert (=> b!1077525 (= res!718063 (and (= (size!33790 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33789 _keys!1070) (size!33790 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!718061 () Bool)

(assert (=> start!95446 (=> (not res!718061) (not e!616170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95446 (= res!718061 (validMask!0 mask!1414))))

(assert (=> start!95446 e!616170))

(assert (=> start!95446 true))

(declare-fun e!616168 () Bool)

(declare-fun array_inv!25552 (array!69158) Bool)

(assert (=> start!95446 (and (array_inv!25552 _values!874) e!616168)))

(declare-fun array_inv!25553 (array!69156) Bool)

(assert (=> start!95446 (array_inv!25553 _keys!1070)))

(declare-fun b!1077526 () Bool)

(declare-fun res!718062 () Bool)

(assert (=> b!1077526 (=> (not res!718062) (not e!616170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69156 (_ BitVec 32)) Bool)

(assert (=> b!1077526 (= res!718062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1077527 () Bool)

(declare-fun e!616167 () Bool)

(declare-fun tp_is_empty!26123 () Bool)

(assert (=> b!1077527 (= e!616167 tp_is_empty!26123)))

(declare-fun mapIsEmpty!40927 () Bool)

(declare-fun mapRes!40927 () Bool)

(assert (=> mapIsEmpty!40927 mapRes!40927))

(declare-fun b!1077528 () Bool)

(assert (=> b!1077528 (= e!616170 false)))

(declare-fun lt!478534 () Bool)

(declare-datatypes ((List!23337 0))(
  ( (Nil!23334) (Cons!23333 (h!24542 (_ BitVec 64)) (t!32703 List!23337)) )
))
(declare-fun arrayNoDuplicates!0 (array!69156 (_ BitVec 32) List!23337) Bool)

(assert (=> b!1077528 (= lt!478534 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23334))))

(declare-fun mapNonEmpty!40927 () Bool)

(declare-fun tp!78390 () Bool)

(declare-fun e!616169 () Bool)

(assert (=> mapNonEmpty!40927 (= mapRes!40927 (and tp!78390 e!616169))))

(declare-fun mapKey!40927 () (_ BitVec 32))

(declare-fun mapValue!40927 () ValueCell!12352)

(declare-fun mapRest!40927 () (Array (_ BitVec 32) ValueCell!12352))

(assert (=> mapNonEmpty!40927 (= (arr!33253 _values!874) (store mapRest!40927 mapKey!40927 mapValue!40927))))

(declare-fun b!1077529 () Bool)

(assert (=> b!1077529 (= e!616168 (and e!616167 mapRes!40927))))

(declare-fun condMapEmpty!40927 () Bool)

(declare-fun mapDefault!40927 () ValueCell!12352)

