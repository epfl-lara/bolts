; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77396 () Bool)

(assert start!77396)

(declare-datatypes ((V!29531 0))(
  ( (V!29532 (val!9263 Int)) )
))
(declare-datatypes ((ValueCell!8731 0))(
  ( (ValueCellFull!8731 (v!11767 V!29531)) (EmptyCell!8731) )
))
(declare-datatypes ((array!52898 0))(
  ( (array!52899 (arr!25410 (Array (_ BitVec 32) ValueCell!8731)) (size!25870 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52898)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun b!902016 () Bool)

(declare-datatypes ((array!52900 0))(
  ( (array!52901 (arr!25411 (Array (_ BitVec 32) (_ BitVec 64))) (size!25871 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52900)

(declare-fun e!505131 () Bool)

(assert (=> b!902016 (= e!505131 (and (= (size!25870 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25871 _keys!1386) (size!25870 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011) (not (= (size!25871 _keys!1386) (bvadd #b00000000000000000000000000000001 mask!1756)))))))

(declare-fun mapNonEmpty!29332 () Bool)

(declare-fun mapRes!29332 () Bool)

(declare-fun tp!56392 () Bool)

(declare-fun e!505128 () Bool)

(assert (=> mapNonEmpty!29332 (= mapRes!29332 (and tp!56392 e!505128))))

(declare-fun mapKey!29332 () (_ BitVec 32))

(declare-fun mapRest!29332 () (Array (_ BitVec 32) ValueCell!8731))

(declare-fun mapValue!29332 () ValueCell!8731)

(assert (=> mapNonEmpty!29332 (= (arr!25410 _values!1152) (store mapRest!29332 mapKey!29332 mapValue!29332))))

(declare-fun b!902017 () Bool)

(declare-fun e!505129 () Bool)

(declare-fun tp_is_empty!18425 () Bool)

(assert (=> b!902017 (= e!505129 tp_is_empty!18425)))

(declare-fun b!902018 () Bool)

(declare-fun e!505127 () Bool)

(assert (=> b!902018 (= e!505127 (and e!505129 mapRes!29332))))

(declare-fun condMapEmpty!29332 () Bool)

(declare-fun mapDefault!29332 () ValueCell!8731)

