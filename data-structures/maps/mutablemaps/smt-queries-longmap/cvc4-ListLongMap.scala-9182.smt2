; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110480 () Bool)

(assert start!110480)

(declare-fun b!1306505 () Bool)

(declare-fun e!745428 () Bool)

(assert (=> b!1306505 (= e!745428 false)))

(declare-fun lt!584878 () Bool)

(declare-datatypes ((array!87009 0))(
  ( (array!87010 (arr!41980 (Array (_ BitVec 32) (_ BitVec 64))) (size!42531 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87009)

(declare-datatypes ((List!29982 0))(
  ( (Nil!29979) (Cons!29978 (h!31187 (_ BitVec 64)) (t!43595 List!29982)) )
))
(declare-fun arrayNoDuplicates!0 (array!87009 (_ BitVec 32) List!29982) Bool)

(assert (=> b!1306505 (= lt!584878 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29979))))

(declare-fun mapNonEmpty!54142 () Bool)

(declare-fun mapRes!54142 () Bool)

(declare-fun tp!103223 () Bool)

(declare-fun e!745430 () Bool)

(assert (=> mapNonEmpty!54142 (= mapRes!54142 (and tp!103223 e!745430))))

(declare-datatypes ((V!51781 0))(
  ( (V!51782 (val!17579 Int)) )
))
(declare-datatypes ((ValueCell!16606 0))(
  ( (ValueCellFull!16606 (v!20204 V!51781)) (EmptyCell!16606) )
))
(declare-fun mapValue!54142 () ValueCell!16606)

(declare-fun mapRest!54142 () (Array (_ BitVec 32) ValueCell!16606))

(declare-datatypes ((array!87011 0))(
  ( (array!87012 (arr!41981 (Array (_ BitVec 32) ValueCell!16606)) (size!42532 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87011)

(declare-fun mapKey!54142 () (_ BitVec 32))

(assert (=> mapNonEmpty!54142 (= (arr!41981 _values!1354) (store mapRest!54142 mapKey!54142 mapValue!54142))))

(declare-fun b!1306506 () Bool)

(declare-fun e!745429 () Bool)

(declare-fun e!745427 () Bool)

(assert (=> b!1306506 (= e!745429 (and e!745427 mapRes!54142))))

(declare-fun condMapEmpty!54142 () Bool)

(declare-fun mapDefault!54142 () ValueCell!16606)

