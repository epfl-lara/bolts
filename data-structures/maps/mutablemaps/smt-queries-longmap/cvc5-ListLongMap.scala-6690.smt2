; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84140 () Bool)

(assert start!84140)

(declare-fun b!983350 () Bool)

(declare-fun res!658138 () Bool)

(declare-fun e!554363 () Bool)

(assert (=> b!983350 (=> (not res!658138) (not e!554363))))

(declare-datatypes ((array!61803 0))(
  ( (array!61804 (arr!29755 (Array (_ BitVec 32) (_ BitVec 64))) (size!30235 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61803)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61803 (_ BitVec 32)) Bool)

(assert (=> b!983350 (= res!658138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!36401 () Bool)

(declare-fun mapRes!36401 () Bool)

(declare-fun tp!69086 () Bool)

(declare-fun e!554360 () Bool)

(assert (=> mapNonEmpty!36401 (= mapRes!36401 (and tp!69086 e!554360))))

(declare-datatypes ((V!35537 0))(
  ( (V!35538 (val!11508 Int)) )
))
(declare-datatypes ((ValueCell!10976 0))(
  ( (ValueCellFull!10976 (v!14070 V!35537)) (EmptyCell!10976) )
))
(declare-fun mapValue!36401 () ValueCell!10976)

(declare-datatypes ((array!61805 0))(
  ( (array!61806 (arr!29756 (Array (_ BitVec 32) ValueCell!10976)) (size!30236 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61805)

(declare-fun mapRest!36401 () (Array (_ BitVec 32) ValueCell!10976))

(declare-fun mapKey!36401 () (_ BitVec 32))

(assert (=> mapNonEmpty!36401 (= (arr!29756 _values!1278) (store mapRest!36401 mapKey!36401 mapValue!36401))))

(declare-fun b!983351 () Bool)

(assert (=> b!983351 (= e!554363 false)))

(declare-fun lt!436474 () Bool)

(declare-datatypes ((List!20744 0))(
  ( (Nil!20741) (Cons!20740 (h!21902 (_ BitVec 64)) (t!29543 List!20744)) )
))
(declare-fun arrayNoDuplicates!0 (array!61803 (_ BitVec 32) List!20744) Bool)

(assert (=> b!983351 (= lt!436474 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20741))))

(declare-fun b!983352 () Bool)

(declare-fun res!658140 () Bool)

(assert (=> b!983352 (=> (not res!658140) (not e!554363))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983352 (= res!658140 (and (= (size!30236 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30235 _keys!1544) (size!30236 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983353 () Bool)

(declare-fun e!554362 () Bool)

(declare-fun e!554359 () Bool)

(assert (=> b!983353 (= e!554362 (and e!554359 mapRes!36401))))

(declare-fun condMapEmpty!36401 () Bool)

(declare-fun mapDefault!36401 () ValueCell!10976)

