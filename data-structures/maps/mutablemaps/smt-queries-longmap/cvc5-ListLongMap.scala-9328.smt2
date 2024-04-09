; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111440 () Bool)

(assert start!111440)

(declare-fun b_free!30061 () Bool)

(declare-fun b_next!30061 () Bool)

(assert (=> start!111440 (= b_free!30061 (not b_next!30061))))

(declare-fun tp!105659 () Bool)

(declare-fun b_and!48291 () Bool)

(assert (=> start!111440 (= tp!105659 b_and!48291)))

(declare-fun mapIsEmpty!55469 () Bool)

(declare-fun mapRes!55469 () Bool)

(assert (=> mapIsEmpty!55469 mapRes!55469))

(declare-fun b!1318184 () Bool)

(declare-fun res!874931 () Bool)

(declare-fun e!752270 () Bool)

(assert (=> b!1318184 (=> (not res!874931) (not e!752270))))

(declare-datatypes ((array!88665 0))(
  ( (array!88666 (arr!42802 (Array (_ BitVec 32) (_ BitVec 64))) (size!43353 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88665)

(declare-datatypes ((List!30527 0))(
  ( (Nil!30524) (Cons!30523 (h!31732 (_ BitVec 64)) (t!44144 List!30527)) )
))
(declare-fun arrayNoDuplicates!0 (array!88665 (_ BitVec 32) List!30527) Bool)

(assert (=> b!1318184 (= res!874931 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30524))))

(declare-fun mapNonEmpty!55469 () Bool)

(declare-fun tp!105660 () Bool)

(declare-fun e!752272 () Bool)

(assert (=> mapNonEmpty!55469 (= mapRes!55469 (and tp!105660 e!752272))))

(declare-datatypes ((V!52945 0))(
  ( (V!52946 (val!18015 Int)) )
))
(declare-datatypes ((ValueCell!17042 0))(
  ( (ValueCellFull!17042 (v!20643 V!52945)) (EmptyCell!17042) )
))
(declare-fun mapValue!55469 () ValueCell!17042)

(declare-datatypes ((array!88667 0))(
  ( (array!88668 (arr!42803 (Array (_ BitVec 32) ValueCell!17042)) (size!43354 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88667)

(declare-fun mapRest!55469 () (Array (_ BitVec 32) ValueCell!17042))

(declare-fun mapKey!55469 () (_ BitVec 32))

(assert (=> mapNonEmpty!55469 (= (arr!42803 _values!1337) (store mapRest!55469 mapKey!55469 mapValue!55469))))

(declare-fun b!1318185 () Bool)

(declare-fun e!752271 () Bool)

(declare-fun e!752269 () Bool)

(assert (=> b!1318185 (= e!752271 (and e!752269 mapRes!55469))))

(declare-fun condMapEmpty!55469 () Bool)

(declare-fun mapDefault!55469 () ValueCell!17042)

