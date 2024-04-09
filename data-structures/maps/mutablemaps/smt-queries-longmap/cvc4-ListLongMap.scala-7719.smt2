; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97010 () Bool)

(assert start!97010)

(declare-fun b!1103182 () Bool)

(declare-fun e!629765 () Bool)

(declare-fun tp_is_empty!27293 () Bool)

(assert (=> b!1103182 (= e!629765 tp_is_empty!27293)))

(declare-fun res!736090 () Bool)

(declare-fun e!629766 () Bool)

(assert (=> start!97010 (=> (not res!736090) (not e!629766))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!71458 0))(
  ( (array!71459 (arr!34385 (Array (_ BitVec 32) (_ BitVec 64))) (size!34922 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71458)

(assert (=> start!97010 (= res!736090 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34922 _keys!1208))))))

(assert (=> start!97010 e!629766))

(declare-fun array_inv!26338 (array!71458) Bool)

(assert (=> start!97010 (array_inv!26338 _keys!1208)))

(assert (=> start!97010 true))

(declare-datatypes ((V!41517 0))(
  ( (V!41518 (val!13703 Int)) )
))
(declare-datatypes ((ValueCell!12937 0))(
  ( (ValueCellFull!12937 (v!16335 V!41517)) (EmptyCell!12937) )
))
(declare-datatypes ((array!71460 0))(
  ( (array!71461 (arr!34386 (Array (_ BitVec 32) ValueCell!12937)) (size!34923 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71460)

(declare-fun e!629762 () Bool)

(declare-fun array_inv!26339 (array!71460) Bool)

(assert (=> start!97010 (and (array_inv!26339 _values!996) e!629762)))

(declare-fun mapNonEmpty!42736 () Bool)

(declare-fun mapRes!42736 () Bool)

(declare-fun tp!81657 () Bool)

(declare-fun e!629764 () Bool)

(assert (=> mapNonEmpty!42736 (= mapRes!42736 (and tp!81657 e!629764))))

(declare-fun mapKey!42736 () (_ BitVec 32))

(declare-fun mapRest!42736 () (Array (_ BitVec 32) ValueCell!12937))

(declare-fun mapValue!42736 () ValueCell!12937)

(assert (=> mapNonEmpty!42736 (= (arr!34386 _values!996) (store mapRest!42736 mapKey!42736 mapValue!42736))))

(declare-fun b!1103183 () Bool)

(declare-fun res!736091 () Bool)

(assert (=> b!1103183 (=> (not res!736091) (not e!629766))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71458 (_ BitVec 32)) Bool)

(assert (=> b!1103183 (= res!736091 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1103184 () Bool)

(declare-fun res!736092 () Bool)

(assert (=> b!1103184 (=> (not res!736092) (not e!629766))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1103184 (= res!736092 (and (= (size!34923 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34922 _keys!1208) (size!34923 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1103185 () Bool)

(declare-fun res!736089 () Bool)

(assert (=> b!1103185 (=> (not res!736089) (not e!629766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103185 (= res!736089 (validMask!0 mask!1564))))

(declare-fun b!1103186 () Bool)

(assert (=> b!1103186 (= e!629766 (and (bvsle #b00000000000000000000000000000000 (size!34922 _keys!1208)) (bvsge (size!34922 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun b!1103187 () Bool)

(assert (=> b!1103187 (= e!629762 (and e!629765 mapRes!42736))))

(declare-fun condMapEmpty!42736 () Bool)

(declare-fun mapDefault!42736 () ValueCell!12937)

