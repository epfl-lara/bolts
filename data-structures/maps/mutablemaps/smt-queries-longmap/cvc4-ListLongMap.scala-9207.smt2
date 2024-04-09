; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110630 () Bool)

(assert start!110630)

(declare-fun b_free!29429 () Bool)

(declare-fun b_next!29429 () Bool)

(assert (=> start!110630 (= b_free!29429 (not b_next!29429))))

(declare-fun tp!103610 () Bool)

(declare-fun b_and!47647 () Bool)

(assert (=> start!110630 (= tp!103610 b_and!47647)))

(declare-fun b!1308398 () Bool)

(declare-fun res!868638 () Bool)

(declare-fun e!746553 () Bool)

(assert (=> b!1308398 (=> (not res!868638) (not e!746553))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51981 0))(
  ( (V!51982 (val!17654 Int)) )
))
(declare-datatypes ((ValueCell!16681 0))(
  ( (ValueCellFull!16681 (v!20279 V!51981)) (EmptyCell!16681) )
))
(declare-datatypes ((array!87285 0))(
  ( (array!87286 (arr!42118 (Array (_ BitVec 32) ValueCell!16681)) (size!42669 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87285)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((array!87287 0))(
  ( (array!87288 (arr!42119 (Array (_ BitVec 32) (_ BitVec 64))) (size!42670 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87287)

(assert (=> b!1308398 (= res!868638 (and (= (size!42669 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42670 _keys!1628) (size!42669 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!868637 () Bool)

(assert (=> start!110630 (=> (not res!868637) (not e!746553))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110630 (= res!868637 (validMask!0 mask!2040))))

(assert (=> start!110630 e!746553))

(assert (=> start!110630 tp!103610))

(declare-fun array_inv!31835 (array!87287) Bool)

(assert (=> start!110630 (array_inv!31835 _keys!1628)))

(assert (=> start!110630 true))

(declare-fun tp_is_empty!35159 () Bool)

(assert (=> start!110630 tp_is_empty!35159))

(declare-fun e!746554 () Bool)

(declare-fun array_inv!31836 (array!87285) Bool)

(assert (=> start!110630 (and (array_inv!31836 _values!1354) e!746554)))

(declare-fun b!1308399 () Bool)

(declare-fun e!746551 () Bool)

(declare-fun mapRes!54367 () Bool)

(assert (=> b!1308399 (= e!746554 (and e!746551 mapRes!54367))))

(declare-fun condMapEmpty!54367 () Bool)

(declare-fun mapDefault!54367 () ValueCell!16681)

