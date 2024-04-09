; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97020 () Bool)

(assert start!97020)

(declare-fun b!1103225 () Bool)

(declare-fun e!629793 () Bool)

(declare-fun tp_is_empty!27295 () Bool)

(assert (=> b!1103225 (= e!629793 tp_is_empty!27295)))

(declare-fun b!1103226 () Bool)

(declare-fun res!736109 () Bool)

(declare-fun e!629795 () Bool)

(assert (=> b!1103226 (=> (not res!736109) (not e!629795))))

(declare-datatypes ((array!71464 0))(
  ( (array!71465 (arr!34387 (Array (_ BitVec 32) (_ BitVec 64))) (size!34924 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71464)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!41521 0))(
  ( (V!41522 (val!13704 Int)) )
))
(declare-datatypes ((ValueCell!12938 0))(
  ( (ValueCellFull!12938 (v!16336 V!41521)) (EmptyCell!12938) )
))
(declare-datatypes ((array!71466 0))(
  ( (array!71467 (arr!34388 (Array (_ BitVec 32) ValueCell!12938)) (size!34925 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71466)

(assert (=> b!1103226 (= res!736109 (and (= (size!34925 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34924 _keys!1208) (size!34925 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1103227 () Bool)

(declare-fun res!736113 () Bool)

(assert (=> b!1103227 (=> (not res!736113) (not e!629795))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103227 (= res!736113 (validMask!0 mask!1564))))

(declare-fun b!1103228 () Bool)

(declare-fun e!629796 () Bool)

(declare-fun mapRes!42742 () Bool)

(assert (=> b!1103228 (= e!629796 (and e!629793 mapRes!42742))))

(declare-fun condMapEmpty!42742 () Bool)

(declare-fun mapDefault!42742 () ValueCell!12938)

