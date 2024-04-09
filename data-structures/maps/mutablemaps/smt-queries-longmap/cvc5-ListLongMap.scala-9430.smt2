; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112224 () Bool)

(assert start!112224)

(declare-fun b_free!30583 () Bool)

(declare-fun b_next!30583 () Bool)

(assert (=> start!112224 (= b_free!30583 (not b_next!30583))))

(declare-fun tp!107386 () Bool)

(declare-fun b_and!49243 () Bool)

(assert (=> start!112224 (= tp!107386 b_and!49243)))

(declare-fun b!1328587 () Bool)

(declare-fun res!881585 () Bool)

(declare-fun e!757547 () Bool)

(assert (=> b!1328587 (=> (not res!881585) (not e!757547))))

(declare-datatypes ((array!89845 0))(
  ( (array!89846 (arr!43384 (Array (_ BitVec 32) (_ BitVec 64))) (size!43935 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89845)

(declare-datatypes ((List!30919 0))(
  ( (Nil!30916) (Cons!30915 (h!32124 (_ BitVec 64)) (t!44932 List!30919)) )
))
(declare-fun arrayNoDuplicates!0 (array!89845 (_ BitVec 32) List!30919) Bool)

(assert (=> b!1328587 (= res!881585 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30916))))

(declare-fun b!1328588 () Bool)

(declare-fun e!757546 () Bool)

(declare-fun e!757549 () Bool)

(declare-fun mapRes!56413 () Bool)

(assert (=> b!1328588 (= e!757546 (and e!757549 mapRes!56413))))

(declare-fun condMapEmpty!56413 () Bool)

(declare-datatypes ((V!53761 0))(
  ( (V!53762 (val!18321 Int)) )
))
(declare-datatypes ((ValueCell!17348 0))(
  ( (ValueCellFull!17348 (v!20956 V!53761)) (EmptyCell!17348) )
))
(declare-datatypes ((array!89847 0))(
  ( (array!89848 (arr!43385 (Array (_ BitVec 32) ValueCell!17348)) (size!43936 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89847)

(declare-fun mapDefault!56413 () ValueCell!17348)

