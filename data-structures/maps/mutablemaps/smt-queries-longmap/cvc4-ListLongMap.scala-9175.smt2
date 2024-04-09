; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110394 () Bool)

(assert start!110394)

(declare-fun b!1306003 () Bool)

(declare-fun e!745020 () Bool)

(declare-fun tp_is_empty!34967 () Bool)

(assert (=> b!1306003 (= e!745020 tp_is_empty!34967)))

(declare-fun mapNonEmpty!54064 () Bool)

(declare-fun mapRes!54064 () Bool)

(declare-fun tp!103145 () Bool)

(assert (=> mapNonEmpty!54064 (= mapRes!54064 (and tp!103145 e!745020))))

(declare-fun mapKey!54064 () (_ BitVec 32))

(declare-datatypes ((V!51725 0))(
  ( (V!51726 (val!17558 Int)) )
))
(declare-datatypes ((ValueCell!16585 0))(
  ( (ValueCellFull!16585 (v!20182 V!51725)) (EmptyCell!16585) )
))
(declare-datatypes ((array!86919 0))(
  ( (array!86920 (arr!41940 (Array (_ BitVec 32) ValueCell!16585)) (size!42491 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!86919)

(declare-fun mapValue!54064 () ValueCell!16585)

(declare-fun mapRest!54064 () (Array (_ BitVec 32) ValueCell!16585))

(assert (=> mapNonEmpty!54064 (= (arr!41940 _values!1354) (store mapRest!54064 mapKey!54064 mapValue!54064))))

(declare-fun e!745018 () Bool)

(declare-datatypes ((array!86921 0))(
  ( (array!86922 (arr!41941 (Array (_ BitVec 32) (_ BitVec 64))) (size!42492 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!86921)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun b!1306004 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306004 (= e!745018 (and (= (size!42491 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42492 _keys!1628) (size!42491 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011) (not (= (size!42492 _keys!1628) (bvadd #b00000000000000000000000000000001 mask!2040)))))))

(declare-fun b!1306005 () Bool)

(declare-fun e!745016 () Bool)

(declare-fun e!745017 () Bool)

(assert (=> b!1306005 (= e!745016 (and e!745017 mapRes!54064))))

(declare-fun condMapEmpty!54064 () Bool)

(declare-fun mapDefault!54064 () ValueCell!16585)

