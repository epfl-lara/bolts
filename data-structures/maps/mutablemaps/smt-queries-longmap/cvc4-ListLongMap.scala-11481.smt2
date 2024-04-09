; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133720 () Bool)

(assert start!133720)

(declare-fun res!1068586 () Bool)

(declare-fun e!871074 () Bool)

(assert (=> start!133720 (=> (not res!1068586) (not e!871074))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133720 (= res!1068586 (validMask!0 mask!947))))

(assert (=> start!133720 e!871074))

(assert (=> start!133720 true))

(declare-datatypes ((V!59901 0))(
  ( (V!59902 (val!19469 Int)) )
))
(declare-datatypes ((ValueCell!18355 0))(
  ( (ValueCellFull!18355 (v!22218 V!59901)) (EmptyCell!18355) )
))
(declare-datatypes ((array!104205 0))(
  ( (array!104206 (arr!50290 (Array (_ BitVec 32) ValueCell!18355)) (size!50841 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104205)

(declare-fun e!871075 () Bool)

(declare-fun array_inv!39011 (array!104205) Bool)

(assert (=> start!133720 (and (array_inv!39011 _values!487) e!871075)))

(declare-datatypes ((array!104207 0))(
  ( (array!104208 (arr!50291 (Array (_ BitVec 32) (_ BitVec 64))) (size!50842 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104207)

(declare-fun array_inv!39012 (array!104207) Bool)

(assert (=> start!133720 (array_inv!39012 _keys!637)))

(declare-fun b!1562921 () Bool)

(declare-fun res!1068587 () Bool)

(assert (=> b!1562921 (=> (not res!1068587) (not e!871074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104207 (_ BitVec 32)) Bool)

(assert (=> b!1562921 (= res!1068587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapIsEmpty!59532 () Bool)

(declare-fun mapRes!59532 () Bool)

(assert (=> mapIsEmpty!59532 mapRes!59532))

(declare-fun b!1562922 () Bool)

(declare-fun e!871072 () Bool)

(declare-fun tp_is_empty!38771 () Bool)

(assert (=> b!1562922 (= e!871072 tp_is_empty!38771)))

(declare-fun b!1562923 () Bool)

(assert (=> b!1562923 (= e!871075 (and e!871072 mapRes!59532))))

(declare-fun condMapEmpty!59532 () Bool)

(declare-fun mapDefault!59532 () ValueCell!18355)

