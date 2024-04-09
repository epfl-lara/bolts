; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108794 () Bool)

(assert start!108794)

(declare-fun b_free!28271 () Bool)

(declare-fun b_next!28271 () Bool)

(assert (=> start!108794 (= b_free!28271 (not b_next!28271))))

(declare-fun tp!99929 () Bool)

(declare-fun b_and!46347 () Bool)

(assert (=> start!108794 (= tp!99929 b_and!46347)))

(declare-fun b!1284186 () Bool)

(declare-fun res!853193 () Bool)

(declare-fun e!733568 () Bool)

(assert (=> b!1284186 (=> (not res!853193) (not e!733568))))

(declare-datatypes ((array!84837 0))(
  ( (array!84838 (arr!40916 (Array (_ BitVec 32) (_ BitVec 64))) (size!41467 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84837)

(declare-datatypes ((List!29165 0))(
  ( (Nil!29162) (Cons!29161 (h!30370 (_ BitVec 64)) (t!42716 List!29165)) )
))
(declare-fun arrayNoDuplicates!0 (array!84837 (_ BitVec 32) List!29165) Bool)

(assert (=> b!1284186 (= res!853193 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29162))))

(declare-fun b!1284187 () Bool)

(declare-fun res!853194 () Bool)

(assert (=> b!1284187 (=> (not res!853194) (not e!733568))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1284187 (= res!853194 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41467 _keys!1741))))))

(declare-fun b!1284188 () Bool)

(declare-fun res!853196 () Bool)

(assert (=> b!1284188 (=> (not res!853196) (not e!733568))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84837 (_ BitVec 32)) Bool)

(assert (=> b!1284188 (= res!853196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284189 () Bool)

(declare-fun e!733566 () Bool)

(declare-fun tp_is_empty!33911 () Bool)

(assert (=> b!1284189 (= e!733566 tp_is_empty!33911)))

(declare-fun b!1284190 () Bool)

(declare-fun e!733569 () Bool)

(assert (=> b!1284190 (= e!733569 tp_is_empty!33911)))

(declare-fun b!1284191 () Bool)

(declare-fun e!733567 () Bool)

(declare-fun mapRes!52424 () Bool)

(assert (=> b!1284191 (= e!733567 (and e!733569 mapRes!52424))))

(declare-fun condMapEmpty!52424 () Bool)

(declare-datatypes ((V!50317 0))(
  ( (V!50318 (val!17030 Int)) )
))
(declare-datatypes ((ValueCell!16057 0))(
  ( (ValueCellFull!16057 (v!19630 V!50317)) (EmptyCell!16057) )
))
(declare-datatypes ((array!84839 0))(
  ( (array!84840 (arr!40917 (Array (_ BitVec 32) ValueCell!16057)) (size!41468 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84839)

(declare-fun mapDefault!52424 () ValueCell!16057)

