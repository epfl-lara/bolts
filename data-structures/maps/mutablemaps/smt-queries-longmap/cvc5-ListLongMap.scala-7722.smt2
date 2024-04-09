; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97054 () Bool)

(assert start!97054)

(declare-fun mapIsEmpty!42766 () Bool)

(declare-fun mapRes!42766 () Bool)

(assert (=> mapIsEmpty!42766 mapRes!42766))

(declare-fun b!1103445 () Bool)

(declare-fun e!629942 () Bool)

(declare-fun tp_is_empty!27307 () Bool)

(assert (=> b!1103445 (= e!629942 tp_is_empty!27307)))

(declare-fun b!1103446 () Bool)

(declare-fun res!736247 () Bool)

(declare-fun e!629943 () Bool)

(assert (=> b!1103446 (=> (not res!736247) (not e!629943))))

(declare-datatypes ((array!71492 0))(
  ( (array!71493 (arr!34399 (Array (_ BitVec 32) (_ BitVec 64))) (size!34936 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71492)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71492 (_ BitVec 32)) Bool)

(assert (=> b!1103446 (= res!736247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1103447 () Bool)

(declare-fun res!736250 () Bool)

(assert (=> b!1103447 (=> (not res!736250) (not e!629943))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41537 0))(
  ( (V!41538 (val!13710 Int)) )
))
(declare-datatypes ((ValueCell!12944 0))(
  ( (ValueCellFull!12944 (v!16343 V!41537)) (EmptyCell!12944) )
))
(declare-datatypes ((array!71494 0))(
  ( (array!71495 (arr!34400 (Array (_ BitVec 32) ValueCell!12944)) (size!34937 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71494)

(assert (=> b!1103447 (= res!736250 (and (= (size!34937 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34936 _keys!1208) (size!34937 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1103448 () Bool)

(declare-fun res!736249 () Bool)

(assert (=> b!1103448 (=> (not res!736249) (not e!629943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103448 (= res!736249 (validMask!0 mask!1564))))

(declare-fun b!1103449 () Bool)

(declare-fun e!629941 () Bool)

(assert (=> b!1103449 (= e!629941 (and e!629942 mapRes!42766))))

(declare-fun condMapEmpty!42766 () Bool)

(declare-fun mapDefault!42766 () ValueCell!12944)

