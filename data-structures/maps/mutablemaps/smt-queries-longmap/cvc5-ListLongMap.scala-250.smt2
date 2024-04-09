; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4180 () Bool)

(assert start!4180)

(declare-fun b_free!1087 () Bool)

(declare-fun b_next!1087 () Bool)

(assert (=> start!4180 (= b_free!1087 (not b_next!1087))))

(declare-fun tp!4680 () Bool)

(declare-fun b_and!1899 () Bool)

(assert (=> start!4180 (= tp!4680 b_and!1899)))

(declare-fun b!31706 () Bool)

(declare-fun res!19204 () Bool)

(declare-fun e!20236 () Bool)

(assert (=> b!31706 (=> (not res!19204) (not e!20236))))

(declare-datatypes ((array!2089 0))(
  ( (array!2090 (arr!998 (Array (_ BitVec 32) (_ BitVec 64))) (size!1099 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2089)

(declare-datatypes ((List!814 0))(
  ( (Nil!811) (Cons!810 (h!1377 (_ BitVec 64)) (t!3509 List!814)) )
))
(declare-fun arrayNoDuplicates!0 (array!2089 (_ BitVec 32) List!814) Bool)

(assert (=> b!31706 (= res!19204 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!811))))

(declare-fun b!31707 () Bool)

(assert (=> b!31707 (= e!20236 false)))

(declare-fun lt!11601 () (_ BitVec 32))

(declare-fun k!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!2089 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!31707 (= lt!11601 (arrayScanForKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!31708 () Bool)

(declare-fun e!20233 () Bool)

(declare-fun tp_is_empty!1441 () Bool)

(assert (=> b!31708 (= e!20233 tp_is_empty!1441)))

(declare-fun b!31709 () Bool)

(declare-fun res!19210 () Bool)

(assert (=> b!31709 (=> (not res!19210) (not e!20236))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2089 (_ BitVec 32)) Bool)

(assert (=> b!31709 (= res!19210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!31711 () Bool)

(declare-fun res!19205 () Bool)

(assert (=> b!31711 (=> (not res!19205) (not e!20236))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!31711 (= res!19205 (validKeyInArray!0 k!1304))))

(declare-fun b!31712 () Bool)

(declare-fun res!19206 () Bool)

(assert (=> b!31712 (=> (not res!19206) (not e!20236))))

(declare-fun arrayContainsKey!0 (array!2089 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!31712 (= res!19206 (arrayContainsKey!0 _keys!1833 k!1304 #b00000000000000000000000000000000))))

(declare-fun b!31713 () Bool)

(declare-fun e!20232 () Bool)

(declare-fun e!20235 () Bool)

(declare-fun mapRes!1690 () Bool)

(assert (=> b!31713 (= e!20232 (and e!20235 mapRes!1690))))

(declare-fun condMapEmpty!1690 () Bool)

(declare-datatypes ((V!1747 0))(
  ( (V!1748 (val!747 Int)) )
))
(declare-datatypes ((ValueCell!521 0))(
  ( (ValueCellFull!521 (v!1836 V!1747)) (EmptyCell!521) )
))
(declare-datatypes ((array!2091 0))(
  ( (array!2092 (arr!999 (Array (_ BitVec 32) ValueCell!521)) (size!1100 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2091)

(declare-fun mapDefault!1690 () ValueCell!521)

