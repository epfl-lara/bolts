; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97004 () Bool)

(assert start!97004)

(declare-fun b!1103119 () Bool)

(declare-fun res!736056 () Bool)

(declare-fun e!629717 () Bool)

(assert (=> b!1103119 (=> (not res!736056) (not e!629717))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103119 (= res!736056 (validMask!0 mask!1564))))

(declare-fun b!1103120 () Bool)

(declare-datatypes ((array!71446 0))(
  ( (array!71447 (arr!34379 (Array (_ BitVec 32) (_ BitVec 64))) (size!34916 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71446)

(assert (=> b!1103120 (= e!629717 (bvsgt #b00000000000000000000000000000000 (size!34916 _keys!1208)))))

(declare-fun res!736055 () Bool)

(assert (=> start!97004 (=> (not res!736055) (not e!629717))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97004 (= res!736055 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34916 _keys!1208))))))

(assert (=> start!97004 e!629717))

(declare-fun array_inv!26332 (array!71446) Bool)

(assert (=> start!97004 (array_inv!26332 _keys!1208)))

(assert (=> start!97004 true))

(declare-datatypes ((V!41509 0))(
  ( (V!41510 (val!13700 Int)) )
))
(declare-datatypes ((ValueCell!12934 0))(
  ( (ValueCellFull!12934 (v!16332 V!41509)) (EmptyCell!12934) )
))
(declare-datatypes ((array!71448 0))(
  ( (array!71449 (arr!34380 (Array (_ BitVec 32) ValueCell!12934)) (size!34917 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71448)

(declare-fun e!629720 () Bool)

(declare-fun array_inv!26333 (array!71448) Bool)

(assert (=> start!97004 (and (array_inv!26333 _values!996) e!629720)))

(declare-fun b!1103121 () Bool)

(declare-fun e!629718 () Bool)

(declare-fun tp_is_empty!27287 () Bool)

(assert (=> b!1103121 (= e!629718 tp_is_empty!27287)))

(declare-fun b!1103122 () Bool)

(declare-fun res!736053 () Bool)

(assert (=> b!1103122 (=> (not res!736053) (not e!629717))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71446 (_ BitVec 32)) Bool)

(assert (=> b!1103122 (= res!736053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1103123 () Bool)

(declare-fun e!629719 () Bool)

(declare-fun mapRes!42727 () Bool)

(assert (=> b!1103123 (= e!629720 (and e!629719 mapRes!42727))))

(declare-fun condMapEmpty!42727 () Bool)

(declare-fun mapDefault!42727 () ValueCell!12934)

