; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113584 () Bool)

(assert start!113584)

(declare-fun b_free!31541 () Bool)

(declare-fun b_next!31541 () Bool)

(assert (=> start!113584 (= b_free!31541 (not b_next!31541))))

(declare-fun tp!110432 () Bool)

(declare-fun b_and!50881 () Bool)

(assert (=> start!113584 (= tp!110432 b_and!50881)))

(declare-fun b!1347820 () Bool)

(declare-fun res!894382 () Bool)

(declare-fun e!766834 () Bool)

(assert (=> b!1347820 (=> (not res!894382) (not e!766834))))

(declare-datatypes ((array!91873 0))(
  ( (array!91874 (arr!44387 (Array (_ BitVec 32) (_ BitVec 64))) (size!44938 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91873)

(declare-datatypes ((List!31609 0))(
  ( (Nil!31606) (Cons!31605 (h!32814 (_ BitVec 64)) (t!46236 List!31609)) )
))
(declare-fun arrayNoDuplicates!0 (array!91873 (_ BitVec 32) List!31609) Bool)

(assert (=> b!1347820 (= res!894382 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31606))))

(declare-fun mapIsEmpty!58022 () Bool)

(declare-fun mapRes!58022 () Bool)

(assert (=> mapIsEmpty!58022 mapRes!58022))

(declare-fun b!1347821 () Bool)

(declare-fun e!766833 () Bool)

(declare-fun tp_is_empty!37541 () Bool)

(assert (=> b!1347821 (= e!766833 tp_is_empty!37541)))

(declare-fun b!1347822 () Bool)

(declare-fun e!766832 () Bool)

(assert (=> b!1347822 (= e!766832 (and e!766833 mapRes!58022))))

(declare-fun condMapEmpty!58022 () Bool)

(declare-datatypes ((V!55157 0))(
  ( (V!55158 (val!18845 Int)) )
))
(declare-datatypes ((ValueCell!17872 0))(
  ( (ValueCellFull!17872 (v!21494 V!55157)) (EmptyCell!17872) )
))
(declare-datatypes ((array!91875 0))(
  ( (array!91876 (arr!44388 (Array (_ BitVec 32) ValueCell!17872)) (size!44939 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91875)

(declare-fun mapDefault!58022 () ValueCell!17872)

