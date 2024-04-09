; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77410 () Bool)

(assert start!77410)

(declare-fun b!902076 () Bool)

(declare-fun res!608911 () Bool)

(declare-fun e!505194 () Bool)

(assert (=> b!902076 (=> (not res!608911) (not e!505194))))

(declare-datatypes ((V!29543 0))(
  ( (V!29544 (val!9267 Int)) )
))
(declare-datatypes ((ValueCell!8735 0))(
  ( (ValueCellFull!8735 (v!11771 V!29543)) (EmptyCell!8735) )
))
(declare-datatypes ((array!52916 0))(
  ( (array!52917 (arr!25418 (Array (_ BitVec 32) ValueCell!8735)) (size!25878 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52916)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!52918 0))(
  ( (array!52919 (arr!25419 (Array (_ BitVec 32) (_ BitVec 64))) (size!25879 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52918)

(assert (=> b!902076 (= res!608911 (and (= (size!25878 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25879 _keys!1386) (size!25878 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902078 () Bool)

(declare-fun e!505193 () Bool)

(declare-fun e!505196 () Bool)

(declare-fun mapRes!29347 () Bool)

(assert (=> b!902078 (= e!505193 (and e!505196 mapRes!29347))))

(declare-fun condMapEmpty!29347 () Bool)

(declare-fun mapDefault!29347 () ValueCell!8735)

