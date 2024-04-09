; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97060 () Bool)

(assert start!97060)

(declare-fun b!1103514 () Bool)

(declare-fun e!629990 () Bool)

(declare-fun tp_is_empty!27313 () Bool)

(assert (=> b!1103514 (= e!629990 tp_is_empty!27313)))

(declare-fun b!1103515 () Bool)

(declare-fun res!736290 () Bool)

(declare-fun e!629989 () Bool)

(assert (=> b!1103515 (=> (not res!736290) (not e!629989))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103515 (= res!736290 (validMask!0 mask!1564))))

(declare-fun b!1103516 () Bool)

(declare-fun res!736292 () Bool)

(assert (=> b!1103516 (=> (not res!736292) (not e!629989))))

(declare-datatypes ((array!71504 0))(
  ( (array!71505 (arr!34405 (Array (_ BitVec 32) (_ BitVec 64))) (size!34942 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71504)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41545 0))(
  ( (V!41546 (val!13713 Int)) )
))
(declare-datatypes ((ValueCell!12947 0))(
  ( (ValueCellFull!12947 (v!16346 V!41545)) (EmptyCell!12947) )
))
(declare-datatypes ((array!71506 0))(
  ( (array!71507 (arr!34406 (Array (_ BitVec 32) ValueCell!12947)) (size!34943 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71506)

(assert (=> b!1103516 (= res!736292 (and (= (size!34943 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34942 _keys!1208) (size!34943 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1103517 () Bool)

(declare-fun res!736293 () Bool)

(assert (=> b!1103517 (=> (not res!736293) (not e!629989))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1103517 (= res!736293 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!42775 () Bool)

(declare-fun mapRes!42775 () Bool)

(declare-fun tp!81696 () Bool)

(assert (=> mapNonEmpty!42775 (= mapRes!42775 (and tp!81696 e!629990))))

(declare-fun mapRest!42775 () (Array (_ BitVec 32) ValueCell!12947))

(declare-fun mapValue!42775 () ValueCell!12947)

(declare-fun mapKey!42775 () (_ BitVec 32))

(assert (=> mapNonEmpty!42775 (= (arr!34406 _values!996) (store mapRest!42775 mapKey!42775 mapValue!42775))))

(declare-fun b!1103518 () Bool)

(declare-fun e!629986 () Bool)

(declare-fun e!629987 () Bool)

(assert (=> b!1103518 (= e!629986 (and e!629987 mapRes!42775))))

(declare-fun condMapEmpty!42775 () Bool)

(declare-fun mapDefault!42775 () ValueCell!12947)

