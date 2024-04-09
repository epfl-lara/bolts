; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104688 () Bool)

(assert start!104688)

(declare-fun b!1247713 () Bool)

(declare-fun e!707952 () Bool)

(declare-fun tp_is_empty!31381 () Bool)

(assert (=> b!1247713 (= e!707952 tp_is_empty!31381)))

(declare-fun b!1247714 () Bool)

(declare-fun e!707950 () Bool)

(assert (=> b!1247714 (= e!707950 tp_is_empty!31381)))

(declare-fun b!1247715 () Bool)

(declare-fun res!832575 () Bool)

(declare-fun e!707951 () Bool)

(assert (=> b!1247715 (=> (not res!832575) (not e!707951))))

(declare-datatypes ((array!80431 0))(
  ( (array!80432 (arr!38780 (Array (_ BitVec 32) (_ BitVec 64))) (size!39317 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80431)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80431 (_ BitVec 32)) Bool)

(assert (=> b!1247715 (= res!832575 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1247716 () Bool)

(declare-fun e!707949 () Bool)

(declare-fun mapRes!48826 () Bool)

(assert (=> b!1247716 (= e!707949 (and e!707952 mapRes!48826))))

(declare-fun condMapEmpty!48826 () Bool)

(declare-datatypes ((V!47207 0))(
  ( (V!47208 (val!15753 Int)) )
))
(declare-datatypes ((ValueCell!14927 0))(
  ( (ValueCellFull!14927 (v!18449 V!47207)) (EmptyCell!14927) )
))
(declare-datatypes ((array!80433 0))(
  ( (array!80434 (arr!38781 (Array (_ BitVec 32) ValueCell!14927)) (size!39318 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80433)

(declare-fun mapDefault!48826 () ValueCell!14927)

