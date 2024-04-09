; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109126 () Bool)

(assert start!109126)

(declare-fun b_free!28579 () Bool)

(declare-fun b_next!28579 () Bool)

(assert (=> start!109126 (= b_free!28579 (not b_next!28579))))

(declare-fun tp!100857 () Bool)

(declare-fun b_and!46679 () Bool)

(assert (=> start!109126 (= tp!100857 b_and!46679)))

(declare-fun b!1289607 () Bool)

(declare-fun res!856739 () Bool)

(declare-fun e!736327 () Bool)

(assert (=> b!1289607 (=> (not res!856739) (not e!736327))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!85437 0))(
  ( (array!85438 (arr!41215 (Array (_ BitVec 32) (_ BitVec 64))) (size!41766 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85437)

(assert (=> b!1289607 (= res!856739 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41766 _keys!1741))))))

(declare-fun b!1289608 () Bool)

(declare-fun res!856741 () Bool)

(assert (=> b!1289608 (=> (not res!856741) (not e!736327))))

(declare-datatypes ((List!29407 0))(
  ( (Nil!29404) (Cons!29403 (h!30612 (_ BitVec 64)) (t!42978 List!29407)) )
))
(declare-fun arrayNoDuplicates!0 (array!85437 (_ BitVec 32) List!29407) Bool)

(assert (=> b!1289608 (= res!856741 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29404))))

(declare-fun b!1289609 () Bool)

(declare-fun e!736325 () Bool)

(declare-fun e!736326 () Bool)

(declare-fun mapRes!52889 () Bool)

(assert (=> b!1289609 (= e!736325 (and e!736326 mapRes!52889))))

(declare-fun condMapEmpty!52889 () Bool)

(declare-datatypes ((V!50729 0))(
  ( (V!50730 (val!17184 Int)) )
))
(declare-datatypes ((ValueCell!16211 0))(
  ( (ValueCellFull!16211 (v!19785 V!50729)) (EmptyCell!16211) )
))
(declare-datatypes ((array!85439 0))(
  ( (array!85440 (arr!41216 (Array (_ BitVec 32) ValueCell!16211)) (size!41767 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85439)

(declare-fun mapDefault!52889 () ValueCell!16211)

