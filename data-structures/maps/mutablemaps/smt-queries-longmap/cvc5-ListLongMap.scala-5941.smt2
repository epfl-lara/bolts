; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77490 () Bool)

(assert start!77490)

(declare-fun b!902590 () Bool)

(declare-fun e!505598 () Bool)

(assert (=> b!902590 (= e!505598 false)))

(declare-fun lt!407852 () Bool)

(declare-datatypes ((array!53002 0))(
  ( (array!53003 (arr!25457 (Array (_ BitVec 32) (_ BitVec 64))) (size!25917 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53002)

(declare-datatypes ((List!17971 0))(
  ( (Nil!17968) (Cons!17967 (h!19113 (_ BitVec 64)) (t!25362 List!17971)) )
))
(declare-fun arrayNoDuplicates!0 (array!53002 (_ BitVec 32) List!17971) Bool)

(assert (=> b!902590 (= lt!407852 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17968))))

(declare-fun res!609178 () Bool)

(assert (=> start!77490 (=> (not res!609178) (not e!505598))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77490 (= res!609178 (validMask!0 mask!1756))))

(assert (=> start!77490 e!505598))

(assert (=> start!77490 true))

(declare-datatypes ((V!29599 0))(
  ( (V!29600 (val!9288 Int)) )
))
(declare-datatypes ((ValueCell!8756 0))(
  ( (ValueCellFull!8756 (v!11793 V!29599)) (EmptyCell!8756) )
))
(declare-datatypes ((array!53004 0))(
  ( (array!53005 (arr!25458 (Array (_ BitVec 32) ValueCell!8756)) (size!25918 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53004)

(declare-fun e!505600 () Bool)

(declare-fun array_inv!19932 (array!53004) Bool)

(assert (=> start!77490 (and (array_inv!19932 _values!1152) e!505600)))

(declare-fun array_inv!19933 (array!53002) Bool)

(assert (=> start!77490 (array_inv!19933 _keys!1386)))

(declare-fun b!902591 () Bool)

(declare-fun e!505601 () Bool)

(declare-fun tp_is_empty!18475 () Bool)

(assert (=> b!902591 (= e!505601 tp_is_empty!18475)))

(declare-fun b!902592 () Bool)

(declare-fun e!505599 () Bool)

(assert (=> b!902592 (= e!505599 tp_is_empty!18475)))

(declare-fun b!902593 () Bool)

(declare-fun mapRes!29422 () Bool)

(assert (=> b!902593 (= e!505600 (and e!505599 mapRes!29422))))

(declare-fun condMapEmpty!29422 () Bool)

(declare-fun mapDefault!29422 () ValueCell!8756)

