; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113112 () Bool)

(assert start!113112)

(declare-fun b_free!31127 () Bool)

(declare-fun b_next!31127 () Bool)

(assert (=> start!113112 (= b_free!31127 (not b_next!31127))))

(declare-fun tp!109186 () Bool)

(declare-fun b_and!50171 () Bool)

(assert (=> start!113112 (= tp!109186 b_and!50171)))

(declare-fun b!1340206 () Bool)

(declare-fun res!889139 () Bool)

(declare-fun e!763404 () Bool)

(assert (=> b!1340206 (=> (not res!889139) (not e!763404))))

(declare-datatypes ((array!91065 0))(
  ( (array!91066 (arr!43984 (Array (_ BitVec 32) (_ BitVec 64))) (size!44535 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91065)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91065 (_ BitVec 32)) Bool)

(assert (=> b!1340206 (= res!889139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1340207 () Bool)

(declare-fun e!763403 () Bool)

(declare-fun e!763406 () Bool)

(declare-fun mapRes!57397 () Bool)

(assert (=> b!1340207 (= e!763403 (and e!763406 mapRes!57397))))

(declare-fun condMapEmpty!57397 () Bool)

(declare-datatypes ((V!54605 0))(
  ( (V!54606 (val!18638 Int)) )
))
(declare-datatypes ((ValueCell!17665 0))(
  ( (ValueCellFull!17665 (v!21284 V!54605)) (EmptyCell!17665) )
))
(declare-datatypes ((array!91067 0))(
  ( (array!91068 (arr!43985 (Array (_ BitVec 32) ValueCell!17665)) (size!44536 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91067)

(declare-fun mapDefault!57397 () ValueCell!17665)

