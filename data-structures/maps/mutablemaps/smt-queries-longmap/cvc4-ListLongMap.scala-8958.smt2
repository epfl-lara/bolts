; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108514 () Bool)

(assert start!108514)

(declare-fun b_free!28025 () Bool)

(declare-fun b_next!28025 () Bool)

(assert (=> start!108514 (= b_free!28025 (not b_next!28025))))

(declare-fun tp!99186 () Bool)

(declare-fun b_and!46095 () Bool)

(assert (=> start!108514 (= tp!99186 b_and!46095)))

(declare-fun b!1280215 () Bool)

(declare-fun res!850479 () Bool)

(declare-fun e!731529 () Bool)

(assert (=> b!1280215 (=> (not res!850479) (not e!731529))))

(declare-datatypes ((array!84361 0))(
  ( (array!84362 (arr!40680 (Array (_ BitVec 32) (_ BitVec 64))) (size!41231 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84361)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84361 (_ BitVec 32)) Bool)

(assert (=> b!1280215 (= res!850479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!52049 () Bool)

(declare-fun mapRes!52049 () Bool)

(declare-fun tp!99185 () Bool)

(declare-fun e!731527 () Bool)

(assert (=> mapNonEmpty!52049 (= mapRes!52049 (and tp!99185 e!731527))))

(declare-fun mapKey!52049 () (_ BitVec 32))

(declare-datatypes ((V!49989 0))(
  ( (V!49990 (val!16907 Int)) )
))
(declare-datatypes ((ValueCell!15934 0))(
  ( (ValueCellFull!15934 (v!19505 V!49989)) (EmptyCell!15934) )
))
(declare-fun mapRest!52049 () (Array (_ BitVec 32) ValueCell!15934))

(declare-datatypes ((array!84363 0))(
  ( (array!84364 (arr!40681 (Array (_ BitVec 32) ValueCell!15934)) (size!41232 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84363)

(declare-fun mapValue!52049 () ValueCell!15934)

(assert (=> mapNonEmpty!52049 (= (arr!40681 _values!1445) (store mapRest!52049 mapKey!52049 mapValue!52049))))

(declare-fun b!1280216 () Bool)

(declare-fun res!850481 () Bool)

(assert (=> b!1280216 (=> (not res!850481) (not e!731529))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1280216 (= res!850481 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41231 _keys!1741))))))

(declare-fun b!1280217 () Bool)

(declare-fun res!850478 () Bool)

(assert (=> b!1280217 (=> (not res!850478) (not e!731529))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1280217 (= res!850478 (and (= (size!41232 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41231 _keys!1741) (size!41232 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280218 () Bool)

(declare-fun e!731528 () Bool)

(declare-fun e!731526 () Bool)

(assert (=> b!1280218 (= e!731528 (and e!731526 mapRes!52049))))

(declare-fun condMapEmpty!52049 () Bool)

(declare-fun mapDefault!52049 () ValueCell!15934)

