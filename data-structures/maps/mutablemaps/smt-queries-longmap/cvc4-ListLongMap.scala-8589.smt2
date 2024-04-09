; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104804 () Bool)

(assert start!104804)

(declare-fun b_free!26573 () Bool)

(declare-fun b_next!26573 () Bool)

(assert (=> start!104804 (= b_free!26573 (not b_next!26573))))

(declare-fun tp!93209 () Bool)

(declare-fun b_and!44351 () Bool)

(assert (=> start!104804 (= tp!93209 b_and!44351)))

(declare-fun res!833181 () Bool)

(declare-fun e!708729 () Bool)

(assert (=> start!104804 (=> (not res!833181) (not e!708729))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104804 (= res!833181 (validMask!0 mask!1466))))

(assert (=> start!104804 e!708729))

(assert (=> start!104804 true))

(assert (=> start!104804 tp!93209))

(declare-fun tp_is_empty!31475 () Bool)

(assert (=> start!104804 tp_is_empty!31475))

(declare-datatypes ((array!80617 0))(
  ( (array!80618 (arr!38871 (Array (_ BitVec 32) (_ BitVec 64))) (size!39408 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80617)

(declare-fun array_inv!29593 (array!80617) Bool)

(assert (=> start!104804 (array_inv!29593 _keys!1118)))

(declare-datatypes ((V!47331 0))(
  ( (V!47332 (val!15800 Int)) )
))
(declare-datatypes ((ValueCell!14974 0))(
  ( (ValueCellFull!14974 (v!18496 V!47331)) (EmptyCell!14974) )
))
(declare-datatypes ((array!80619 0))(
  ( (array!80620 (arr!38872 (Array (_ BitVec 32) ValueCell!14974)) (size!39409 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80619)

(declare-fun e!708728 () Bool)

(declare-fun array_inv!29594 (array!80619) Bool)

(assert (=> start!104804 (and (array_inv!29594 _values!914) e!708728)))

(declare-fun b!1248808 () Bool)

(declare-fun e!708732 () Bool)

(declare-fun mapRes!48973 () Bool)

(assert (=> b!1248808 (= e!708728 (and e!708732 mapRes!48973))))

(declare-fun condMapEmpty!48973 () Bool)

(declare-fun mapDefault!48973 () ValueCell!14974)

