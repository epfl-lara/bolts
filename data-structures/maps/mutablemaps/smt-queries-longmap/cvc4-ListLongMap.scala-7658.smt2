; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96308 () Bool)

(assert start!96308)

(declare-fun b_free!22925 () Bool)

(declare-fun b_next!22925 () Bool)

(assert (=> start!96308 (= b_free!22925 (not b_next!22925))))

(declare-fun tp!80625 () Bool)

(declare-fun b_and!36543 () Bool)

(assert (=> start!96308 (= tp!80625 b_and!36543)))

(declare-fun b!1093799 () Bool)

(declare-fun res!730010 () Bool)

(declare-fun e!624554 () Bool)

(assert (=> b!1093799 (=> (not res!730010) (not e!624554))))

(declare-datatypes ((array!70726 0))(
  ( (array!70727 (arr!34033 (Array (_ BitVec 32) (_ BitVec 64))) (size!34570 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70726)

(declare-datatypes ((List!23916 0))(
  ( (Nil!23913) (Cons!23912 (h!25121 (_ BitVec 64)) (t!33906 List!23916)) )
))
(declare-fun arrayNoDuplicates!0 (array!70726 (_ BitVec 32) List!23916) Bool)

(assert (=> b!1093799 (= res!730010 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23913))))

(declare-fun b!1093800 () Bool)

(declare-fun res!730011 () Bool)

(assert (=> b!1093800 (=> (not res!730011) (not e!624554))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1093800 (= res!730011 (= (select (arr!34033 _keys!1070) i!650) k!904))))

(declare-fun b!1093801 () Bool)

(declare-fun res!730006 () Bool)

(assert (=> b!1093801 (=> (not res!730006) (not e!624554))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093801 (= res!730006 (validKeyInArray!0 k!904))))

(declare-fun b!1093802 () Bool)

(declare-fun e!624556 () Bool)

(declare-fun tp_is_empty!26927 () Bool)

(assert (=> b!1093802 (= e!624556 tp_is_empty!26927)))

(declare-fun b!1093803 () Bool)

(declare-fun res!730013 () Bool)

(declare-fun e!624555 () Bool)

(assert (=> b!1093803 (=> (not res!730013) (not e!624555))))

(declare-fun lt!489271 () array!70726)

(assert (=> b!1093803 (= res!730013 (arrayNoDuplicates!0 lt!489271 #b00000000000000000000000000000000 Nil!23913))))

(declare-fun mapNonEmpty!42145 () Bool)

(declare-fun mapRes!42145 () Bool)

(declare-fun tp!80624 () Bool)

(assert (=> mapNonEmpty!42145 (= mapRes!42145 (and tp!80624 e!624556))))

(declare-datatypes ((V!41029 0))(
  ( (V!41030 (val!13520 Int)) )
))
(declare-datatypes ((ValueCell!12754 0))(
  ( (ValueCellFull!12754 (v!16142 V!41029)) (EmptyCell!12754) )
))
(declare-datatypes ((array!70728 0))(
  ( (array!70729 (arr!34034 (Array (_ BitVec 32) ValueCell!12754)) (size!34571 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70728)

(declare-fun mapRest!42145 () (Array (_ BitVec 32) ValueCell!12754))

(declare-fun mapKey!42145 () (_ BitVec 32))

(declare-fun mapValue!42145 () ValueCell!12754)

(assert (=> mapNonEmpty!42145 (= (arr!34034 _values!874) (store mapRest!42145 mapKey!42145 mapValue!42145))))

(declare-fun b!1093804 () Bool)

(declare-fun e!624552 () Bool)

(assert (=> b!1093804 (= e!624552 tp_is_empty!26927)))

(declare-fun b!1093805 () Bool)

(declare-fun res!730012 () Bool)

(assert (=> b!1093805 (=> (not res!730012) (not e!624554))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70726 (_ BitVec 32)) Bool)

(assert (=> b!1093805 (= res!730012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1093806 () Bool)

(declare-fun res!730009 () Bool)

(assert (=> b!1093806 (=> (not res!730009) (not e!624554))))

(assert (=> b!1093806 (= res!730009 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34570 _keys!1070))))))

(declare-fun mapIsEmpty!42145 () Bool)

(assert (=> mapIsEmpty!42145 mapRes!42145))

(declare-fun res!730007 () Bool)

(assert (=> start!96308 (=> (not res!730007) (not e!624554))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96308 (= res!730007 (validMask!0 mask!1414))))

(assert (=> start!96308 e!624554))

(assert (=> start!96308 tp!80625))

(assert (=> start!96308 true))

(assert (=> start!96308 tp_is_empty!26927))

(declare-fun array_inv!26082 (array!70726) Bool)

(assert (=> start!96308 (array_inv!26082 _keys!1070)))

(declare-fun e!624553 () Bool)

(declare-fun array_inv!26083 (array!70728) Bool)

(assert (=> start!96308 (and (array_inv!26083 _values!874) e!624553)))

(declare-fun b!1093807 () Bool)

(assert (=> b!1093807 (= e!624553 (and e!624552 mapRes!42145))))

(declare-fun condMapEmpty!42145 () Bool)

(declare-fun mapDefault!42145 () ValueCell!12754)

