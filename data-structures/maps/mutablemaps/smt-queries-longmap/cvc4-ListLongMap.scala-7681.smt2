; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96472 () Bool)

(assert start!96472)

(declare-fun b_free!23015 () Bool)

(declare-fun b_next!23015 () Bool)

(assert (=> start!96472 (= b_free!23015 (not b_next!23015))))

(declare-fun tp!80972 () Bool)

(declare-fun b_and!36711 () Bool)

(assert (=> start!96472 (= tp!80972 b_and!36711)))

(declare-fun b!1096320 () Bool)

(declare-fun e!625842 () Bool)

(declare-fun tp_is_empty!27065 () Bool)

(assert (=> b!1096320 (= e!625842 tp_is_empty!27065)))

(declare-fun mapNonEmpty!42358 () Bool)

(declare-fun mapRes!42358 () Bool)

(declare-fun tp!80973 () Bool)

(assert (=> mapNonEmpty!42358 (= mapRes!42358 (and tp!80973 e!625842))))

(declare-datatypes ((V!41213 0))(
  ( (V!41214 (val!13589 Int)) )
))
(declare-datatypes ((ValueCell!12823 0))(
  ( (ValueCellFull!12823 (v!16211 V!41213)) (EmptyCell!12823) )
))
(declare-datatypes ((array!70990 0))(
  ( (array!70991 (arr!34163 (Array (_ BitVec 32) ValueCell!12823)) (size!34700 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70990)

(declare-fun mapKey!42358 () (_ BitVec 32))

(declare-fun mapRest!42358 () (Array (_ BitVec 32) ValueCell!12823))

(declare-fun mapValue!42358 () ValueCell!12823)

(assert (=> mapNonEmpty!42358 (= (arr!34163 _values!874) (store mapRest!42358 mapKey!42358 mapValue!42358))))

(declare-fun b!1096321 () Bool)

(declare-fun res!731783 () Bool)

(declare-fun e!625845 () Bool)

(assert (=> b!1096321 (=> (not res!731783) (not e!625845))))

(declare-datatypes ((array!70992 0))(
  ( (array!70993 (arr!34164 (Array (_ BitVec 32) (_ BitVec 64))) (size!34701 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70992)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70992 (_ BitVec 32)) Bool)

(assert (=> b!1096321 (= res!731783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096323 () Bool)

(declare-fun res!731781 () Bool)

(assert (=> b!1096323 (=> (not res!731781) (not e!625845))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1096323 (= res!731781 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34701 _keys!1070))))))

(declare-fun b!1096324 () Bool)

(declare-fun res!731786 () Bool)

(assert (=> b!1096324 (=> (not res!731786) (not e!625845))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1096324 (= res!731786 (= (select (arr!34164 _keys!1070) i!650) k!904))))

(declare-fun b!1096325 () Bool)

(declare-fun e!625844 () Bool)

(declare-fun e!625843 () Bool)

(assert (=> b!1096325 (= e!625844 (and e!625843 mapRes!42358))))

(declare-fun condMapEmpty!42358 () Bool)

(declare-fun mapDefault!42358 () ValueCell!12823)

