; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111408 () Bool)

(assert start!111408)

(declare-fun b_free!30029 () Bool)

(declare-fun b_next!30029 () Bool)

(assert (=> start!111408 (= b_free!30029 (not b_next!30029))))

(declare-fun tp!105563 () Bool)

(declare-fun b_and!48259 () Bool)

(assert (=> start!111408 (= tp!105563 b_and!48259)))

(declare-fun b!1317767 () Bool)

(declare-fun res!874656 () Bool)

(declare-fun e!752029 () Bool)

(assert (=> b!1317767 (=> (not res!874656) (not e!752029))))

(declare-datatypes ((array!88603 0))(
  ( (array!88604 (arr!42771 (Array (_ BitVec 32) (_ BitVec 64))) (size!43322 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88603)

(declare-datatypes ((List!30504 0))(
  ( (Nil!30501) (Cons!30500 (h!31709 (_ BitVec 64)) (t!44119 List!30504)) )
))
(declare-fun arrayNoDuplicates!0 (array!88603 (_ BitVec 32) List!30504) Bool)

(assert (=> b!1317767 (= res!874656 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30501))))

(declare-fun res!874659 () Bool)

(assert (=> start!111408 (=> (not res!874659) (not e!752029))))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111408 (= res!874659 (validMask!0 mask!2019))))

(assert (=> start!111408 e!752029))

(declare-fun array_inv!32255 (array!88603) Bool)

(assert (=> start!111408 (array_inv!32255 _keys!1609)))

(assert (=> start!111408 true))

(declare-fun tp_is_empty!35849 () Bool)

(assert (=> start!111408 tp_is_empty!35849))

(declare-datatypes ((V!52901 0))(
  ( (V!52902 (val!17999 Int)) )
))
(declare-datatypes ((ValueCell!17026 0))(
  ( (ValueCellFull!17026 (v!20627 V!52901)) (EmptyCell!17026) )
))
(declare-datatypes ((array!88605 0))(
  ( (array!88606 (arr!42772 (Array (_ BitVec 32) ValueCell!17026)) (size!43323 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88605)

(declare-fun e!752032 () Bool)

(declare-fun array_inv!32256 (array!88605) Bool)

(assert (=> start!111408 (and (array_inv!32256 _values!1337) e!752032)))

(assert (=> start!111408 tp!105563))

(declare-fun b!1317768 () Bool)

(declare-fun e!752030 () Bool)

(declare-fun mapRes!55421 () Bool)

(assert (=> b!1317768 (= e!752032 (and e!752030 mapRes!55421))))

(declare-fun condMapEmpty!55421 () Bool)

(declare-fun mapDefault!55421 () ValueCell!17026)

