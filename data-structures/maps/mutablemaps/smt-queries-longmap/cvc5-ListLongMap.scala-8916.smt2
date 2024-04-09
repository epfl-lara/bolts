; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108200 () Bool)

(assert start!108200)

(declare-fun b_free!27859 () Bool)

(declare-fun b_next!27859 () Bool)

(assert (=> start!108200 (= b_free!27859 (not b_next!27859))))

(declare-fun tp!98534 () Bool)

(declare-fun b_and!45927 () Bool)

(assert (=> start!108200 (= tp!98534 b_and!45927)))

(declare-fun b!1277221 () Bool)

(declare-fun e!729430 () Bool)

(declare-fun e!729434 () Bool)

(declare-fun mapRes!51647 () Bool)

(assert (=> b!1277221 (= e!729430 (and e!729434 mapRes!51647))))

(declare-fun condMapEmpty!51647 () Bool)

(declare-datatypes ((V!49649 0))(
  ( (V!49650 (val!16779 Int)) )
))
(declare-datatypes ((ValueCell!15806 0))(
  ( (ValueCellFull!15806 (v!19375 V!49649)) (EmptyCell!15806) )
))
(declare-datatypes ((array!83861 0))(
  ( (array!83862 (arr!40436 (Array (_ BitVec 32) ValueCell!15806)) (size!40987 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83861)

(declare-fun mapDefault!51647 () ValueCell!15806)

