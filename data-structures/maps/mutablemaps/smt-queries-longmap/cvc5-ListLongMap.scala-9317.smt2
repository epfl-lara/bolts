; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111374 () Bool)

(assert start!111374)

(declare-fun b!1317382 () Bool)

(declare-fun e!751774 () Bool)

(declare-fun tp_is_empty!35815 () Bool)

(assert (=> b!1317382 (= e!751774 tp_is_empty!35815)))

(declare-fun b!1317383 () Bool)

(declare-fun e!751775 () Bool)

(assert (=> b!1317383 (= e!751775 false)))

(declare-fun lt!586309 () Bool)

(declare-datatypes ((array!88537 0))(
  ( (array!88538 (arr!42738 (Array (_ BitVec 32) (_ BitVec 64))) (size!43289 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88537)

(declare-datatypes ((List!30486 0))(
  ( (Nil!30483) (Cons!30482 (h!31691 (_ BitVec 64)) (t!44101 List!30486)) )
))
(declare-fun arrayNoDuplicates!0 (array!88537 (_ BitVec 32) List!30486) Bool)

(assert (=> b!1317383 (= lt!586309 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30483))))

(declare-fun b!1317384 () Bool)

(declare-fun res!874424 () Bool)

(assert (=> b!1317384 (=> (not res!874424) (not e!751775))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88537 (_ BitVec 32)) Bool)

(assert (=> b!1317384 (= res!874424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapIsEmpty!55370 () Bool)

(declare-fun mapRes!55370 () Bool)

(assert (=> mapIsEmpty!55370 mapRes!55370))

(declare-fun b!1317385 () Bool)

(declare-fun e!751773 () Bool)

(assert (=> b!1317385 (= e!751773 (and e!751774 mapRes!55370))))

(declare-fun condMapEmpty!55370 () Bool)

(declare-datatypes ((V!52857 0))(
  ( (V!52858 (val!17982 Int)) )
))
(declare-datatypes ((ValueCell!17009 0))(
  ( (ValueCellFull!17009 (v!20610 V!52857)) (EmptyCell!17009) )
))
(declare-datatypes ((array!88539 0))(
  ( (array!88540 (arr!42739 (Array (_ BitVec 32) ValueCell!17009)) (size!43290 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88539)

(declare-fun mapDefault!55370 () ValueCell!17009)

