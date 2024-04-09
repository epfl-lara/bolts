; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111362 () Bool)

(assert start!111362)

(declare-fun mapIsEmpty!55352 () Bool)

(declare-fun mapRes!55352 () Bool)

(assert (=> mapIsEmpty!55352 mapRes!55352))

(declare-fun mapNonEmpty!55352 () Bool)

(declare-fun tp!105459 () Bool)

(declare-fun e!751684 () Bool)

(assert (=> mapNonEmpty!55352 (= mapRes!55352 (and tp!105459 e!751684))))

(declare-datatypes ((V!52841 0))(
  ( (V!52842 (val!17976 Int)) )
))
(declare-datatypes ((ValueCell!17003 0))(
  ( (ValueCellFull!17003 (v!20604 V!52841)) (EmptyCell!17003) )
))
(declare-fun mapValue!55352 () ValueCell!17003)

(declare-fun mapKey!55352 () (_ BitVec 32))

(declare-fun mapRest!55352 () (Array (_ BitVec 32) ValueCell!17003))

(declare-datatypes ((array!88517 0))(
  ( (array!88518 (arr!42728 (Array (_ BitVec 32) ValueCell!17003)) (size!43279 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88517)

(assert (=> mapNonEmpty!55352 (= (arr!42728 _values!1337) (store mapRest!55352 mapKey!55352 mapValue!55352))))

(declare-fun b!1317274 () Bool)

(declare-fun res!874370 () Bool)

(declare-fun e!751685 () Bool)

(assert (=> b!1317274 (=> (not res!874370) (not e!751685))))

(declare-datatypes ((array!88519 0))(
  ( (array!88520 (arr!42729 (Array (_ BitVec 32) (_ BitVec 64))) (size!43280 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88519)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88519 (_ BitVec 32)) Bool)

(assert (=> b!1317274 (= res!874370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317275 () Bool)

(declare-fun tp_is_empty!35803 () Bool)

(assert (=> b!1317275 (= e!751684 tp_is_empty!35803)))

(declare-fun b!1317276 () Bool)

(assert (=> b!1317276 (= e!751685 false)))

(declare-fun lt!586291 () Bool)

(declare-datatypes ((List!30482 0))(
  ( (Nil!30479) (Cons!30478 (h!31687 (_ BitVec 64)) (t!44097 List!30482)) )
))
(declare-fun arrayNoDuplicates!0 (array!88519 (_ BitVec 32) List!30482) Bool)

(assert (=> b!1317276 (= lt!586291 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30479))))

(declare-fun b!1317277 () Bool)

(declare-fun e!751683 () Bool)

(declare-fun e!751687 () Bool)

(assert (=> b!1317277 (= e!751683 (and e!751687 mapRes!55352))))

(declare-fun condMapEmpty!55352 () Bool)

(declare-fun mapDefault!55352 () ValueCell!17003)

