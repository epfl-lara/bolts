; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97070 () Bool)

(assert start!97070)

(declare-fun b!1103640 () Bool)

(declare-fun res!736370 () Bool)

(declare-fun e!630062 () Bool)

(assert (=> b!1103640 (=> (not res!736370) (not e!630062))))

(declare-datatypes ((array!71520 0))(
  ( (array!71521 (arr!34413 (Array (_ BitVec 32) (_ BitVec 64))) (size!34950 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71520)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71520 (_ BitVec 32)) Bool)

(assert (=> b!1103640 (= res!736370 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1103641 () Bool)

(declare-fun e!630065 () Bool)

(declare-fun tp_is_empty!27323 () Bool)

(assert (=> b!1103641 (= e!630065 tp_is_empty!27323)))

(declare-fun mapIsEmpty!42790 () Bool)

(declare-fun mapRes!42790 () Bool)

(assert (=> mapIsEmpty!42790 mapRes!42790))

(declare-fun mapNonEmpty!42790 () Bool)

(declare-fun tp!81711 () Bool)

(declare-fun e!630061 () Bool)

(assert (=> mapNonEmpty!42790 (= mapRes!42790 (and tp!81711 e!630061))))

(declare-datatypes ((V!41557 0))(
  ( (V!41558 (val!13718 Int)) )
))
(declare-datatypes ((ValueCell!12952 0))(
  ( (ValueCellFull!12952 (v!16351 V!41557)) (EmptyCell!12952) )
))
(declare-fun mapValue!42790 () ValueCell!12952)

(declare-fun mapRest!42790 () (Array (_ BitVec 32) ValueCell!12952))

(declare-datatypes ((array!71522 0))(
  ( (array!71523 (arr!34414 (Array (_ BitVec 32) ValueCell!12952)) (size!34951 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71522)

(declare-fun mapKey!42790 () (_ BitVec 32))

(assert (=> mapNonEmpty!42790 (= (arr!34414 _values!996) (store mapRest!42790 mapKey!42790 mapValue!42790))))

(declare-fun b!1103642 () Bool)

(declare-fun e!630064 () Bool)

(assert (=> b!1103642 (= e!630064 (and e!630065 mapRes!42790))))

(declare-fun condMapEmpty!42790 () Bool)

(declare-fun mapDefault!42790 () ValueCell!12952)

