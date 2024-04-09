; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110512 () Bool)

(assert start!110512)

(declare-fun b!1306793 () Bool)

(declare-fun res!867558 () Bool)

(declare-fun e!745667 () Bool)

(assert (=> b!1306793 (=> (not res!867558) (not e!745667))))

(declare-datatypes ((array!87067 0))(
  ( (array!87068 (arr!42009 (Array (_ BitVec 32) (_ BitVec 64))) (size!42560 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87067)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87067 (_ BitVec 32)) Bool)

(assert (=> b!1306793 (= res!867558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306794 () Bool)

(declare-fun e!745669 () Bool)

(declare-fun e!745670 () Bool)

(declare-fun mapRes!54190 () Bool)

(assert (=> b!1306794 (= e!745669 (and e!745670 mapRes!54190))))

(declare-fun condMapEmpty!54190 () Bool)

(declare-datatypes ((V!51825 0))(
  ( (V!51826 (val!17595 Int)) )
))
(declare-datatypes ((ValueCell!16622 0))(
  ( (ValueCellFull!16622 (v!20220 V!51825)) (EmptyCell!16622) )
))
(declare-datatypes ((array!87069 0))(
  ( (array!87070 (arr!42010 (Array (_ BitVec 32) ValueCell!16622)) (size!42561 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87069)

(declare-fun mapDefault!54190 () ValueCell!16622)

