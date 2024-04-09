; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84170 () Bool)

(assert start!84170)

(declare-fun b_free!19843 () Bool)

(declare-fun b_next!19843 () Bool)

(assert (=> start!84170 (= b_free!19843 (not b_next!19843))))

(declare-fun tp!69134 () Bool)

(declare-fun b_and!31787 () Bool)

(assert (=> start!84170 (= tp!69134 b_and!31787)))

(declare-fun b!983655 () Bool)

(declare-fun res!658311 () Bool)

(declare-fun e!554588 () Bool)

(assert (=> b!983655 (=> (not res!658311) (not e!554588))))

(declare-datatypes ((array!61861 0))(
  ( (array!61862 (arr!29784 (Array (_ BitVec 32) (_ BitVec 64))) (size!30264 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61861)

(declare-datatypes ((List!20754 0))(
  ( (Nil!20751) (Cons!20750 (h!21912 (_ BitVec 64)) (t!29553 List!20754)) )
))
(declare-fun arrayNoDuplicates!0 (array!61861 (_ BitVec 32) List!20754) Bool)

(assert (=> b!983655 (= res!658311 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20751))))

(declare-fun b!983656 () Bool)

(declare-fun res!658313 () Bool)

(assert (=> b!983656 (=> (not res!658313) (not e!554588))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35577 0))(
  ( (V!35578 (val!11523 Int)) )
))
(declare-datatypes ((ValueCell!10991 0))(
  ( (ValueCellFull!10991 (v!14085 V!35577)) (EmptyCell!10991) )
))
(declare-datatypes ((array!61863 0))(
  ( (array!61864 (arr!29785 (Array (_ BitVec 32) ValueCell!10991)) (size!30265 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61863)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983656 (= res!658313 (and (= (size!30265 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30264 _keys!1544) (size!30265 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983657 () Bool)

(declare-fun e!554586 () Bool)

(declare-fun e!554585 () Bool)

(declare-fun mapRes!36446 () Bool)

(assert (=> b!983657 (= e!554586 (and e!554585 mapRes!36446))))

(declare-fun condMapEmpty!36446 () Bool)

(declare-fun mapDefault!36446 () ValueCell!10991)

