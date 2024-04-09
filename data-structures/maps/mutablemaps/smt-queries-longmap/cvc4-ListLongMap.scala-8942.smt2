; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108418 () Bool)

(assert start!108418)

(declare-fun b_free!27929 () Bool)

(declare-fun b_next!27929 () Bool)

(assert (=> start!108418 (= b_free!27929 (not b_next!27929))))

(declare-fun tp!98898 () Bool)

(declare-fun b_and!45999 () Bool)

(assert (=> start!108418 (= tp!98898 b_and!45999)))

(declare-fun b!1279054 () Bool)

(declare-fun e!730809 () Bool)

(declare-fun tp_is_empty!33569 () Bool)

(assert (=> b!1279054 (= e!730809 tp_is_empty!33569)))

(declare-fun b!1279055 () Bool)

(declare-fun res!849750 () Bool)

(declare-fun e!730806 () Bool)

(assert (=> b!1279055 (=> (not res!849750) (not e!730806))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!49861 0))(
  ( (V!49862 (val!16859 Int)) )
))
(declare-datatypes ((ValueCell!15886 0))(
  ( (ValueCellFull!15886 (v!19457 V!49861)) (EmptyCell!15886) )
))
(declare-datatypes ((array!84173 0))(
  ( (array!84174 (arr!40586 (Array (_ BitVec 32) ValueCell!15886)) (size!41137 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84173)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84175 0))(
  ( (array!84176 (arr!40587 (Array (_ BitVec 32) (_ BitVec 64))) (size!41138 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84175)

(assert (=> b!1279055 (= res!849750 (and (= (size!41137 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41138 _keys!1741) (size!41137 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1279056 () Bool)

(declare-fun res!849752 () Bool)

(assert (=> b!1279056 (=> (not res!849752) (not e!730806))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1279056 (= res!849752 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41138 _keys!1741))))))

(declare-fun mapNonEmpty!51905 () Bool)

(declare-fun mapRes!51905 () Bool)

(declare-fun tp!98897 () Bool)

(declare-fun e!730808 () Bool)

(assert (=> mapNonEmpty!51905 (= mapRes!51905 (and tp!98897 e!730808))))

(declare-fun mapValue!51905 () ValueCell!15886)

(declare-fun mapKey!51905 () (_ BitVec 32))

(declare-fun mapRest!51905 () (Array (_ BitVec 32) ValueCell!15886))

(assert (=> mapNonEmpty!51905 (= (arr!40586 _values!1445) (store mapRest!51905 mapKey!51905 mapValue!51905))))

(declare-fun b!1279057 () Bool)

(assert (=> b!1279057 (= e!730808 tp_is_empty!33569)))

(declare-fun b!1279058 () Bool)

(declare-fun e!730807 () Bool)

(assert (=> b!1279058 (= e!730807 (and e!730809 mapRes!51905))))

(declare-fun condMapEmpty!51905 () Bool)

(declare-fun mapDefault!51905 () ValueCell!15886)

