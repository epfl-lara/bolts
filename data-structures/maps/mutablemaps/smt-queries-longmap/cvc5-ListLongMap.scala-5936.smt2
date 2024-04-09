; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77438 () Bool)

(assert start!77438)

(declare-fun b!902226 () Bool)

(declare-fun res!608977 () Bool)

(declare-fun e!505315 () Bool)

(assert (=> b!902226 (=> (not res!608977) (not e!505315))))

(declare-datatypes ((V!29559 0))(
  ( (V!29560 (val!9273 Int)) )
))
(declare-datatypes ((ValueCell!8741 0))(
  ( (ValueCellFull!8741 (v!11777 V!29559)) (EmptyCell!8741) )
))
(declare-datatypes ((array!52940 0))(
  ( (array!52941 (arr!25428 (Array (_ BitVec 32) ValueCell!8741)) (size!25888 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52940)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!52942 0))(
  ( (array!52943 (arr!25429 (Array (_ BitVec 32) (_ BitVec 64))) (size!25889 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52942)

(assert (=> b!902226 (= res!608977 (and (= (size!25888 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25889 _keys!1386) (size!25888 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902227 () Bool)

(declare-fun e!505317 () Bool)

(declare-fun tp_is_empty!18445 () Bool)

(assert (=> b!902227 (= e!505317 tp_is_empty!18445)))

(declare-fun mapIsEmpty!29371 () Bool)

(declare-fun mapRes!29371 () Bool)

(assert (=> mapIsEmpty!29371 mapRes!29371))

(declare-fun b!902228 () Bool)

(declare-fun e!505316 () Bool)

(assert (=> b!902228 (= e!505316 tp_is_empty!18445)))

(declare-fun b!902229 () Bool)

(declare-datatypes ((List!17961 0))(
  ( (Nil!17958) (Cons!17957 (h!19103 (_ BitVec 64)) (t!25352 List!17961)) )
))
(declare-fun noDuplicate!1326 (List!17961) Bool)

(assert (=> b!902229 (= e!505315 (not (noDuplicate!1326 Nil!17958)))))

(declare-fun res!608980 () Bool)

(assert (=> start!77438 (=> (not res!608980) (not e!505315))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77438 (= res!608980 (validMask!0 mask!1756))))

(assert (=> start!77438 e!505315))

(assert (=> start!77438 true))

(declare-fun e!505314 () Bool)

(declare-fun array_inv!19914 (array!52940) Bool)

(assert (=> start!77438 (and (array_inv!19914 _values!1152) e!505314)))

(declare-fun array_inv!19915 (array!52942) Bool)

(assert (=> start!77438 (array_inv!19915 _keys!1386)))

(declare-fun b!902230 () Bool)

(declare-fun res!608979 () Bool)

(assert (=> b!902230 (=> (not res!608979) (not e!505315))))

(assert (=> b!902230 (= res!608979 (and (bvsle #b00000000000000000000000000000000 (size!25889 _keys!1386)) (bvslt (size!25889 _keys!1386) #b01111111111111111111111111111111)))))

(declare-fun b!902231 () Bool)

(assert (=> b!902231 (= e!505314 (and e!505317 mapRes!29371))))

(declare-fun condMapEmpty!29371 () Bool)

(declare-fun mapDefault!29371 () ValueCell!8741)

