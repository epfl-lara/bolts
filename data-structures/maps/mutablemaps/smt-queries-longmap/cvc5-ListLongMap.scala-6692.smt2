; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84152 () Bool)

(assert start!84152)

(declare-fun mapIsEmpty!36419 () Bool)

(declare-fun mapRes!36419 () Bool)

(assert (=> mapIsEmpty!36419 mapRes!36419))

(declare-fun res!658194 () Bool)

(declare-fun e!554451 () Bool)

(assert (=> start!84152 (=> (not res!658194) (not e!554451))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84152 (= res!658194 (validMask!0 mask!1948))))

(assert (=> start!84152 e!554451))

(assert (=> start!84152 true))

(declare-datatypes ((V!35553 0))(
  ( (V!35554 (val!11514 Int)) )
))
(declare-datatypes ((ValueCell!10982 0))(
  ( (ValueCellFull!10982 (v!14076 V!35553)) (EmptyCell!10982) )
))
(declare-datatypes ((array!61825 0))(
  ( (array!61826 (arr!29766 (Array (_ BitVec 32) ValueCell!10982)) (size!30246 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61825)

(declare-fun e!554449 () Bool)

(declare-fun array_inv!22881 (array!61825) Bool)

(assert (=> start!84152 (and (array_inv!22881 _values!1278) e!554449)))

(declare-datatypes ((array!61827 0))(
  ( (array!61828 (arr!29767 (Array (_ BitVec 32) (_ BitVec 64))) (size!30247 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61827)

(declare-fun array_inv!22882 (array!61827) Bool)

(assert (=> start!84152 (array_inv!22882 _keys!1544)))

(declare-fun b!983458 () Bool)

(declare-fun res!658193 () Bool)

(assert (=> b!983458 (=> (not res!658193) (not e!554451))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983458 (= res!658193 (and (= (size!30246 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30247 _keys!1544) (size!30246 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983459 () Bool)

(declare-fun e!554453 () Bool)

(declare-fun tp_is_empty!22927 () Bool)

(assert (=> b!983459 (= e!554453 tp_is_empty!22927)))

(declare-fun b!983460 () Bool)

(assert (=> b!983460 (= e!554449 (and e!554453 mapRes!36419))))

(declare-fun condMapEmpty!36419 () Bool)

(declare-fun mapDefault!36419 () ValueCell!10982)

