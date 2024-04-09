; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84448 () Bool)

(assert start!84448)

(declare-fun b_free!19991 () Bool)

(declare-fun b_next!19991 () Bool)

(assert (=> start!84448 (= b_free!19991 (not b_next!19991))))

(declare-fun tp!69752 () Bool)

(declare-fun b_and!32063 () Bool)

(assert (=> start!84448 (= tp!69752 b_and!32063)))

(declare-fun mapIsEmpty!36842 () Bool)

(declare-fun mapRes!36842 () Bool)

(assert (=> mapIsEmpty!36842 mapRes!36842))

(declare-fun mapNonEmpty!36842 () Bool)

(declare-fun tp!69751 () Bool)

(declare-fun e!556765 () Bool)

(assert (=> mapNonEmpty!36842 (= mapRes!36842 (and tp!69751 e!556765))))

(declare-datatypes ((V!35925 0))(
  ( (V!35926 (val!11654 Int)) )
))
(declare-datatypes ((ValueCell!11122 0))(
  ( (ValueCellFull!11122 (v!14217 V!35925)) (EmptyCell!11122) )
))
(declare-datatypes ((array!62361 0))(
  ( (array!62362 (arr!30033 (Array (_ BitVec 32) ValueCell!11122)) (size!30513 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62361)

(declare-fun mapRest!36842 () (Array (_ BitVec 32) ValueCell!11122))

(declare-fun mapKey!36842 () (_ BitVec 32))

(declare-fun mapValue!36842 () ValueCell!11122)

(assert (=> mapNonEmpty!36842 (= (arr!30033 _values!1278) (store mapRest!36842 mapKey!36842 mapValue!36842))))

(declare-fun b!987320 () Bool)

(declare-fun res!660629 () Bool)

(declare-fun e!556764 () Bool)

(assert (=> b!987320 (=> (not res!660629) (not e!556764))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!987320 (= res!660629 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!987321 () Bool)

(declare-fun res!660626 () Bool)

(assert (=> b!987321 (=> (not res!660626) (not e!556764))))

(declare-datatypes ((array!62363 0))(
  ( (array!62364 (arr!30034 (Array (_ BitVec 32) (_ BitVec 64))) (size!30514 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62363)

(declare-datatypes ((List!20895 0))(
  ( (Nil!20892) (Cons!20891 (h!22053 (_ BitVec 64)) (t!29822 List!20895)) )
))
(declare-fun arrayNoDuplicates!0 (array!62363 (_ BitVec 32) List!20895) Bool)

(assert (=> b!987321 (= res!660626 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20892))))

(declare-fun b!987322 () Bool)

(declare-fun e!556762 () Bool)

(declare-fun e!556763 () Bool)

(assert (=> b!987322 (= e!556762 (and e!556763 mapRes!36842))))

(declare-fun condMapEmpty!36842 () Bool)

(declare-fun mapDefault!36842 () ValueCell!11122)

