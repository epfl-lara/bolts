; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77414 () Bool)

(assert start!77414)

(declare-fun mapNonEmpty!29353 () Bool)

(declare-fun mapRes!29353 () Bool)

(declare-fun tp!56413 () Bool)

(declare-fun e!505227 () Bool)

(assert (=> mapNonEmpty!29353 (= mapRes!29353 (and tp!56413 e!505227))))

(declare-datatypes ((V!29547 0))(
  ( (V!29548 (val!9269 Int)) )
))
(declare-datatypes ((ValueCell!8737 0))(
  ( (ValueCellFull!8737 (v!11773 V!29547)) (EmptyCell!8737) )
))
(declare-datatypes ((array!52924 0))(
  ( (array!52925 (arr!25422 (Array (_ BitVec 32) ValueCell!8737)) (size!25882 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52924)

(declare-fun mapRest!29353 () (Array (_ BitVec 32) ValueCell!8737))

(declare-fun mapKey!29353 () (_ BitVec 32))

(declare-fun mapValue!29353 () ValueCell!8737)

(assert (=> mapNonEmpty!29353 (= (arr!25422 _values!1152) (store mapRest!29353 mapKey!29353 mapValue!29353))))

(declare-fun b!902112 () Bool)

(declare-fun res!608928 () Bool)

(declare-fun e!505226 () Bool)

(assert (=> b!902112 (=> (not res!608928) (not e!505226))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!52926 0))(
  ( (array!52927 (arr!25423 (Array (_ BitVec 32) (_ BitVec 64))) (size!25883 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52926)

(assert (=> b!902112 (= res!608928 (and (= (size!25882 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25883 _keys!1386) (size!25882 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902113 () Bool)

(declare-fun e!505224 () Bool)

(declare-fun tp_is_empty!18437 () Bool)

(assert (=> b!902113 (= e!505224 tp_is_empty!18437)))

(declare-fun b!902114 () Bool)

(declare-fun e!505223 () Bool)

(assert (=> b!902114 (= e!505223 (and e!505224 mapRes!29353))))

(declare-fun condMapEmpty!29353 () Bool)

(declare-fun mapDefault!29353 () ValueCell!8737)

