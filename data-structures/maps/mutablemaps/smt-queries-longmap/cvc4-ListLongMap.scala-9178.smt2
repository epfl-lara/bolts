; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110426 () Bool)

(assert start!110426)

(declare-fun b!1306174 () Bool)

(declare-fun e!745174 () Bool)

(declare-fun tp_is_empty!34985 () Bool)

(assert (=> b!1306174 (= e!745174 tp_is_empty!34985)))

(declare-fun b!1306175 () Bool)

(declare-fun res!867233 () Bool)

(declare-fun e!745173 () Bool)

(assert (=> b!1306175 (=> (not res!867233) (not e!745173))))

(declare-datatypes ((array!86955 0))(
  ( (array!86956 (arr!41956 (Array (_ BitVec 32) (_ BitVec 64))) (size!42507 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86955)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86955 (_ BitVec 32)) Bool)

(assert (=> b!1306175 (= res!867233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapIsEmpty!54097 () Bool)

(declare-fun mapRes!54097 () Bool)

(assert (=> mapIsEmpty!54097 mapRes!54097))

(declare-fun b!1306176 () Bool)

(assert (=> b!1306176 (= e!745173 (and (bvsle #b00000000000000000000000000000000 (size!42507 _keys!1628)) (bvsge (size!42507 _keys!1628) #b01111111111111111111111111111111)))))

(declare-fun b!1306177 () Bool)

(declare-fun e!745175 () Bool)

(assert (=> b!1306177 (= e!745175 tp_is_empty!34985)))

(declare-fun b!1306178 () Bool)

(declare-fun e!745172 () Bool)

(assert (=> b!1306178 (= e!745172 (and e!745175 mapRes!54097))))

(declare-fun condMapEmpty!54097 () Bool)

(declare-datatypes ((V!51749 0))(
  ( (V!51750 (val!17567 Int)) )
))
(declare-datatypes ((ValueCell!16594 0))(
  ( (ValueCellFull!16594 (v!20191 V!51749)) (EmptyCell!16594) )
))
(declare-datatypes ((array!86957 0))(
  ( (array!86958 (arr!41957 (Array (_ BitVec 32) ValueCell!16594)) (size!42508 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86957)

(declare-fun mapDefault!54097 () ValueCell!16594)

