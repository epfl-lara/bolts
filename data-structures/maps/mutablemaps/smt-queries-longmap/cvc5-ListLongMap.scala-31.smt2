; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!618 () Bool)

(assert start!618)

(declare-fun b_free!91 () Bool)

(declare-fun b_next!91 () Bool)

(assert (=> start!618 (= b_free!91 (not b_next!91))))

(declare-fun tp!491 () Bool)

(declare-fun b_and!229 () Bool)

(assert (=> start!618 (= tp!491 b_and!229)))

(declare-fun b!3889 () Bool)

(declare-fun res!5427 () Bool)

(declare-fun e!1985 () Bool)

(assert (=> b!3889 (=> (not res!5427) (not e!1985))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!403 0))(
  ( (V!404 (val!90 Int)) )
))
(declare-datatypes ((ValueCell!68 0))(
  ( (ValueCellFull!68 (v!1177 V!403)) (EmptyCell!68) )
))
(declare-datatypes ((array!271 0))(
  ( (array!272 (arr!128 (Array (_ BitVec 32) ValueCell!68)) (size!190 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!271)

(declare-datatypes ((array!273 0))(
  ( (array!274 (arr!129 (Array (_ BitVec 32) (_ BitVec 64))) (size!191 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!273)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3889 (= res!5427 (and (= (size!190 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!191 _keys!1806) (size!190 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3890 () Bool)

(declare-fun e!1984 () Bool)

(declare-fun e!1981 () Bool)

(declare-fun mapRes!212 () Bool)

(assert (=> b!3890 (= e!1984 (and e!1981 mapRes!212))))

(declare-fun condMapEmpty!212 () Bool)

(declare-fun mapDefault!212 () ValueCell!68)

