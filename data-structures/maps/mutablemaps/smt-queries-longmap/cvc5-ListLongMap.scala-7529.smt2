; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95498 () Bool)

(assert start!95498)

(declare-fun b!1078030 () Bool)

(declare-fun res!718408 () Bool)

(declare-fun e!616432 () Bool)

(assert (=> b!1078030 (=> (not res!718408) (not e!616432))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69212 0))(
  ( (array!69213 (arr!33278 (Array (_ BitVec 32) (_ BitVec 64))) (size!33815 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69212)

(declare-datatypes ((V!39993 0))(
  ( (V!39994 (val!13131 Int)) )
))
(declare-datatypes ((ValueCell!12365 0))(
  ( (ValueCellFull!12365 (v!15752 V!39993)) (EmptyCell!12365) )
))
(declare-datatypes ((array!69214 0))(
  ( (array!69215 (arr!33279 (Array (_ BitVec 32) ValueCell!12365)) (size!33816 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69214)

(assert (=> b!1078030 (= res!718408 (and (= (size!33816 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33815 _keys!1070) (size!33816 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1078031 () Bool)

(declare-fun e!616431 () Bool)

(declare-fun tp_is_empty!26149 () Bool)

(assert (=> b!1078031 (= e!616431 tp_is_empty!26149)))

(declare-fun b!1078032 () Bool)

(declare-fun e!616433 () Bool)

(assert (=> b!1078032 (= e!616433 tp_is_empty!26149)))

(declare-fun res!718411 () Bool)

(assert (=> start!95498 (=> (not res!718411) (not e!616432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95498 (= res!718411 (validMask!0 mask!1414))))

(assert (=> start!95498 e!616432))

(assert (=> start!95498 true))

(declare-fun array_inv!25574 (array!69212) Bool)

(assert (=> start!95498 (array_inv!25574 _keys!1070)))

(declare-fun e!616435 () Bool)

(declare-fun array_inv!25575 (array!69214) Bool)

(assert (=> start!95498 (and (array_inv!25575 _values!874) e!616435)))

(declare-fun b!1078033 () Bool)

(declare-fun mapRes!40972 () Bool)

(assert (=> b!1078033 (= e!616435 (and e!616433 mapRes!40972))))

(declare-fun condMapEmpty!40972 () Bool)

(declare-fun mapDefault!40972 () ValueCell!12365)

