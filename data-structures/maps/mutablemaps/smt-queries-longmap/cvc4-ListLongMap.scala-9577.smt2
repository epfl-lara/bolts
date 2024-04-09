; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113364 () Bool)

(assert start!113364)

(declare-fun b_free!31379 () Bool)

(declare-fun b_next!31379 () Bool)

(assert (=> start!113364 (= b_free!31379 (not b_next!31379))))

(declare-fun tp!109943 () Bool)

(declare-fun b_and!50621 () Bool)

(assert (=> start!113364 (= tp!109943 b_and!50621)))

(declare-fun b!1344643 () Bool)

(declare-fun e!765292 () Bool)

(declare-fun tp_is_empty!37379 () Bool)

(assert (=> b!1344643 (= e!765292 tp_is_empty!37379)))

(declare-fun b!1344644 () Bool)

(declare-fun res!892240 () Bool)

(declare-fun e!765295 () Bool)

(assert (=> b!1344644 (=> (not res!892240) (not e!765295))))

(declare-datatypes ((array!91555 0))(
  ( (array!91556 (arr!44229 (Array (_ BitVec 32) (_ BitVec 64))) (size!44780 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91555)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91555 (_ BitVec 32)) Bool)

(assert (=> b!1344644 (= res!892240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapIsEmpty!57775 () Bool)

(declare-fun mapRes!57775 () Bool)

(assert (=> mapIsEmpty!57775 mapRes!57775))

(declare-fun b!1344645 () Bool)

(declare-fun e!765296 () Bool)

(assert (=> b!1344645 (= e!765296 tp_is_empty!37379)))

(declare-fun b!1344646 () Bool)

(declare-fun res!892238 () Bool)

(assert (=> b!1344646 (=> (not res!892238) (not e!765295))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54941 0))(
  ( (V!54942 (val!18764 Int)) )
))
(declare-datatypes ((ValueCell!17791 0))(
  ( (ValueCellFull!17791 (v!21410 V!54941)) (EmptyCell!17791) )
))
(declare-datatypes ((array!91557 0))(
  ( (array!91558 (arr!44230 (Array (_ BitVec 32) ValueCell!17791)) (size!44781 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91557)

(assert (=> b!1344646 (= res!892238 (and (= (size!44781 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44780 _keys!1571) (size!44781 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1344647 () Bool)

(declare-fun res!892239 () Bool)

(assert (=> b!1344647 (=> (not res!892239) (not e!765295))))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun k!1142 () (_ BitVec 64))

(assert (=> b!1344647 (= res!892239 (not (= (select (arr!44229 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1344648 () Bool)

(declare-fun e!765293 () Bool)

(assert (=> b!1344648 (= e!765293 (and e!765292 mapRes!57775))))

(declare-fun condMapEmpty!57775 () Bool)

(declare-fun mapDefault!57775 () ValueCell!17791)

