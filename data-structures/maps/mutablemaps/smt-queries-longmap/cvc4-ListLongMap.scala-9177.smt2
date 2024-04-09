; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110412 () Bool)

(assert start!110412)

(declare-fun b!1306099 () Bool)

(declare-fun e!745116 () Bool)

(declare-fun tp_is_empty!34979 () Bool)

(assert (=> b!1306099 (= e!745116 tp_is_empty!34979)))

(declare-fun b!1306100 () Bool)

(declare-fun e!745114 () Bool)

(declare-fun e!745115 () Bool)

(declare-fun mapRes!54085 () Bool)

(assert (=> b!1306100 (= e!745114 (and e!745115 mapRes!54085))))

(declare-fun condMapEmpty!54085 () Bool)

(declare-datatypes ((V!51741 0))(
  ( (V!51742 (val!17564 Int)) )
))
(declare-datatypes ((ValueCell!16591 0))(
  ( (ValueCellFull!16591 (v!20188 V!51741)) (EmptyCell!16591) )
))
(declare-datatypes ((array!86943 0))(
  ( (array!86944 (arr!41951 (Array (_ BitVec 32) ValueCell!16591)) (size!42502 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86943)

(declare-fun mapDefault!54085 () ValueCell!16591)

