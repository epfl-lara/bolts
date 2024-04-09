; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95866 () Bool)

(assert start!95866)

(declare-fun b_free!22483 () Bool)

(declare-fun b_next!22483 () Bool)

(assert (=> start!95866 (= b_free!22483 (not b_next!22483))))

(declare-fun tp!79298 () Bool)

(declare-fun b_and!35659 () Bool)

(assert (=> start!95866 (= tp!79298 b_and!35659)))

(declare-fun b!1084339 () Bool)

(declare-fun res!722978 () Bool)

(declare-fun e!619539 () Bool)

(assert (=> b!1084339 (=> (not res!722978) (not e!619539))))

(declare-datatypes ((array!69872 0))(
  ( (array!69873 (arr!33606 (Array (_ BitVec 32) (_ BitVec 64))) (size!34143 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69872)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69872 (_ BitVec 32)) Bool)

(assert (=> b!1084339 (= res!722978 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!722984 () Bool)

(assert (=> start!95866 (=> (not res!722984) (not e!619539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95866 (= res!722984 (validMask!0 mask!1414))))

(assert (=> start!95866 e!619539))

(assert (=> start!95866 tp!79298))

(assert (=> start!95866 true))

(declare-fun tp_is_empty!26485 () Bool)

(assert (=> start!95866 tp_is_empty!26485))

(declare-fun array_inv!25786 (array!69872) Bool)

(assert (=> start!95866 (array_inv!25786 _keys!1070)))

(declare-datatypes ((V!40441 0))(
  ( (V!40442 (val!13299 Int)) )
))
(declare-datatypes ((ValueCell!12533 0))(
  ( (ValueCellFull!12533 (v!15921 V!40441)) (EmptyCell!12533) )
))
(declare-datatypes ((array!69874 0))(
  ( (array!69875 (arr!33607 (Array (_ BitVec 32) ValueCell!12533)) (size!34144 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69874)

(declare-fun e!619543 () Bool)

(declare-fun array_inv!25787 (array!69874) Bool)

(assert (=> start!95866 (and (array_inv!25787 _values!874) e!619543)))

(declare-fun b!1084340 () Bool)

(declare-fun e!619541 () Bool)

(declare-fun mapRes!41482 () Bool)

(assert (=> b!1084340 (= e!619543 (and e!619541 mapRes!41482))))

(declare-fun condMapEmpty!41482 () Bool)

(declare-fun mapDefault!41482 () ValueCell!12533)

