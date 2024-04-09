; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110396 () Bool)

(assert start!110396)

(declare-fun mapNonEmpty!54067 () Bool)

(declare-fun mapRes!54067 () Bool)

(declare-fun tp!103148 () Bool)

(declare-fun e!745033 () Bool)

(assert (=> mapNonEmpty!54067 (= mapRes!54067 (and tp!103148 e!745033))))

(declare-datatypes ((V!51729 0))(
  ( (V!51730 (val!17559 Int)) )
))
(declare-datatypes ((ValueCell!16586 0))(
  ( (ValueCellFull!16586 (v!20183 V!51729)) (EmptyCell!16586) )
))
(declare-fun mapValue!54067 () ValueCell!16586)

(declare-fun mapRest!54067 () (Array (_ BitVec 32) ValueCell!16586))

(declare-datatypes ((array!86923 0))(
  ( (array!86924 (arr!41942 (Array (_ BitVec 32) ValueCell!16586)) (size!42493 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86923)

(declare-fun mapKey!54067 () (_ BitVec 32))

(assert (=> mapNonEmpty!54067 (= (arr!41942 _values!1354) (store mapRest!54067 mapKey!54067 mapValue!54067))))

(declare-datatypes ((array!86925 0))(
  ( (array!86926 (arr!41943 (Array (_ BitVec 32) (_ BitVec 64))) (size!42494 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86925)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun e!745034 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun b!1306015 () Bool)

(assert (=> b!1306015 (= e!745034 (and (= (size!42493 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42494 _keys!1628) (size!42493 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011) (= (size!42494 _keys!1628) (bvadd #b00000000000000000000000000000001 mask!2040)) (bvsgt #b00000000000000000000000000000000 (size!42494 _keys!1628))))))

(declare-fun res!867168 () Bool)

(assert (=> start!110396 (=> (not res!867168) (not e!745034))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110396 (= res!867168 (validMask!0 mask!2040))))

(assert (=> start!110396 e!745034))

(assert (=> start!110396 true))

(declare-fun e!745031 () Bool)

(declare-fun array_inv!31717 (array!86923) Bool)

(assert (=> start!110396 (and (array_inv!31717 _values!1354) e!745031)))

(declare-fun array_inv!31718 (array!86925) Bool)

(assert (=> start!110396 (array_inv!31718 _keys!1628)))

(declare-fun b!1306016 () Bool)

(declare-fun tp_is_empty!34969 () Bool)

(assert (=> b!1306016 (= e!745033 tp_is_empty!34969)))

(declare-fun b!1306017 () Bool)

(declare-fun e!745032 () Bool)

(assert (=> b!1306017 (= e!745032 tp_is_empty!34969)))

(declare-fun b!1306018 () Bool)

(assert (=> b!1306018 (= e!745031 (and e!745032 mapRes!54067))))

(declare-fun condMapEmpty!54067 () Bool)

(declare-fun mapDefault!54067 () ValueCell!16586)

