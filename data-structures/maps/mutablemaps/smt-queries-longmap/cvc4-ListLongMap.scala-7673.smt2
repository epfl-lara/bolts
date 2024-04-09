; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96424 () Bool)

(assert start!96424)

(declare-fun b_free!22967 () Bool)

(declare-fun b_next!22967 () Bool)

(assert (=> start!96424 (= b_free!22967 (not b_next!22967))))

(declare-fun tp!80828 () Bool)

(declare-fun b_and!36615 () Bool)

(assert (=> start!96424 (= tp!80828 b_and!36615)))

(declare-fun res!731136 () Bool)

(declare-fun e!625412 () Bool)

(assert (=> start!96424 (=> (not res!731136) (not e!625412))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96424 (= res!731136 (validMask!0 mask!1414))))

(assert (=> start!96424 e!625412))

(assert (=> start!96424 tp!80828))

(assert (=> start!96424 true))

(declare-fun tp_is_empty!27017 () Bool)

(assert (=> start!96424 tp_is_empty!27017))

(declare-datatypes ((array!70902 0))(
  ( (array!70903 (arr!34119 (Array (_ BitVec 32) (_ BitVec 64))) (size!34656 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70902)

(declare-fun array_inv!26146 (array!70902) Bool)

(assert (=> start!96424 (array_inv!26146 _keys!1070)))

(declare-datatypes ((V!41149 0))(
  ( (V!41150 (val!13565 Int)) )
))
(declare-datatypes ((ValueCell!12799 0))(
  ( (ValueCellFull!12799 (v!16187 V!41149)) (EmptyCell!12799) )
))
(declare-datatypes ((array!70904 0))(
  ( (array!70905 (arr!34120 (Array (_ BitVec 32) ValueCell!12799)) (size!34657 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70904)

(declare-fun e!625408 () Bool)

(declare-fun array_inv!26147 (array!70904) Bool)

(assert (=> start!96424 (and (array_inv!26147 _values!874) e!625408)))

(declare-fun mapNonEmpty!42286 () Bool)

(declare-fun mapRes!42286 () Bool)

(declare-fun tp!80829 () Bool)

(declare-fun e!625413 () Bool)

(assert (=> mapNonEmpty!42286 (= mapRes!42286 (and tp!80829 e!625413))))

(declare-fun mapValue!42286 () ValueCell!12799)

(declare-fun mapRest!42286 () (Array (_ BitVec 32) ValueCell!12799))

(declare-fun mapKey!42286 () (_ BitVec 32))

(assert (=> mapNonEmpty!42286 (= (arr!34120 _values!874) (store mapRest!42286 mapKey!42286 mapValue!42286))))

(declare-fun mapIsEmpty!42286 () Bool)

(assert (=> mapIsEmpty!42286 mapRes!42286))

(declare-fun b!1095408 () Bool)

(declare-fun e!625411 () Bool)

(assert (=> b!1095408 (= e!625412 e!625411)))

(declare-fun res!731131 () Bool)

(assert (=> b!1095408 (=> (not res!731131) (not e!625411))))

(declare-fun lt!489815 () array!70902)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70902 (_ BitVec 32)) Bool)

(assert (=> b!1095408 (= res!731131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489815 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1095408 (= lt!489815 (array!70903 (store (arr!34119 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34656 _keys!1070)))))

(declare-fun b!1095409 () Bool)

(declare-fun e!625410 () Bool)

(assert (=> b!1095409 (= e!625408 (and e!625410 mapRes!42286))))

(declare-fun condMapEmpty!42286 () Bool)

(declare-fun mapDefault!42286 () ValueCell!12799)

