; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111546 () Bool)

(assert start!111546)

(declare-fun b_free!30167 () Bool)

(declare-fun b_next!30167 () Bool)

(assert (=> start!111546 (= b_free!30167 (not b_next!30167))))

(declare-fun tp!105977 () Bool)

(declare-fun b_and!48503 () Bool)

(assert (=> start!111546 (= tp!105977 b_and!48503)))

(declare-fun mapNonEmpty!55628 () Bool)

(declare-fun mapRes!55628 () Bool)

(declare-fun tp!105978 () Bool)

(declare-fun e!753065 () Bool)

(assert (=> mapNonEmpty!55628 (= mapRes!55628 (and tp!105978 e!753065))))

(declare-datatypes ((V!53085 0))(
  ( (V!53086 (val!18068 Int)) )
))
(declare-datatypes ((ValueCell!17095 0))(
  ( (ValueCellFull!17095 (v!20696 V!53085)) (EmptyCell!17095) )
))
(declare-fun mapValue!55628 () ValueCell!17095)

(declare-fun mapRest!55628 () (Array (_ BitVec 32) ValueCell!17095))

(declare-fun mapKey!55628 () (_ BitVec 32))

(declare-datatypes ((array!88871 0))(
  ( (array!88872 (arr!42905 (Array (_ BitVec 32) ValueCell!17095)) (size!43456 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88871)

(assert (=> mapNonEmpty!55628 (= (arr!42905 _values!1337) (store mapRest!55628 mapKey!55628 mapValue!55628))))

(declare-fun b!1320039 () Bool)

(declare-fun e!753066 () Bool)

(declare-fun e!753067 () Bool)

(assert (=> b!1320039 (= e!753066 (and e!753067 mapRes!55628))))

(declare-fun condMapEmpty!55628 () Bool)

(declare-fun mapDefault!55628 () ValueCell!17095)

