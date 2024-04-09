; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109670 () Bool)

(assert start!109670)

(declare-fun b_free!29123 () Bool)

(declare-fun b_next!29123 () Bool)

(assert (=> start!109670 (= b_free!29123 (not b_next!29123))))

(declare-fun tp!102489 () Bool)

(declare-fun b_and!47223 () Bool)

(assert (=> start!109670 (= tp!102489 b_and!47223)))

(declare-fun mapNonEmpty!53705 () Bool)

(declare-fun mapRes!53705 () Bool)

(declare-fun tp!102488 () Bool)

(declare-fun e!740870 () Bool)

(assert (=> mapNonEmpty!53705 (= mapRes!53705 (and tp!102488 e!740870))))

(declare-datatypes ((V!51453 0))(
  ( (V!51454 (val!17456 Int)) )
))
(declare-datatypes ((ValueCell!16483 0))(
  ( (ValueCellFull!16483 (v!20057 V!51453)) (EmptyCell!16483) )
))
(declare-fun mapValue!53705 () ValueCell!16483)

(declare-fun mapKey!53705 () (_ BitVec 32))

(declare-fun mapRest!53705 () (Array (_ BitVec 32) ValueCell!16483))

(declare-datatypes ((array!86495 0))(
  ( (array!86496 (arr!41744 (Array (_ BitVec 32) ValueCell!16483)) (size!42295 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86495)

(assert (=> mapNonEmpty!53705 (= (arr!41744 _values!1445) (store mapRest!53705 mapKey!53705 mapValue!53705))))

(declare-fun mapIsEmpty!53705 () Bool)

(assert (=> mapIsEmpty!53705 mapRes!53705))

(declare-fun b!1298609 () Bool)

(declare-fun res!863135 () Bool)

(declare-fun e!740872 () Bool)

(assert (=> b!1298609 (=> (not res!863135) (not e!740872))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86497 0))(
  ( (array!86498 (arr!41745 (Array (_ BitVec 32) (_ BitVec 64))) (size!42296 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86497)

(assert (=> b!1298609 (= res!863135 (and (= (size!42295 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42296 _keys!1741) (size!42295 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1298610 () Bool)

(declare-fun e!740871 () Bool)

(declare-fun e!740869 () Bool)

(assert (=> b!1298610 (= e!740871 (and e!740869 mapRes!53705))))

(declare-fun condMapEmpty!53705 () Bool)

(declare-fun mapDefault!53705 () ValueCell!16483)

