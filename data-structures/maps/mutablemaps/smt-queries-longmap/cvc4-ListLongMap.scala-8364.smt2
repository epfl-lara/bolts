; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101806 () Bool)

(assert start!101806)

(declare-fun b_free!26459 () Bool)

(declare-fun b_next!26459 () Bool)

(assert (=> start!101806 (= b_free!26459 (not b_next!26459))))

(declare-fun tp!92424 () Bool)

(declare-fun b_and!44189 () Bool)

(assert (=> start!101806 (= tp!92424 b_and!44189)))

(declare-fun b!1225575 () Bool)

(declare-fun res!814558 () Bool)

(declare-fun e!696113 () Bool)

(assert (=> b!1225575 (=> (not res!814558) (not e!696113))))

(declare-datatypes ((array!79084 0))(
  ( (array!79085 (arr!38165 (Array (_ BitVec 32) (_ BitVec 64))) (size!38702 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79084)

(declare-datatypes ((List!27119 0))(
  ( (Nil!27116) (Cons!27115 (h!28324 (_ BitVec 64)) (t!40565 List!27119)) )
))
(declare-fun arrayNoDuplicates!0 (array!79084 (_ BitVec 32) List!27119) Bool)

(assert (=> b!1225575 (= res!814558 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27116))))

(declare-fun res!814565 () Bool)

(assert (=> start!101806 (=> (not res!814565) (not e!696113))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!101806 (= res!814565 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38702 _keys!1208))))))

(assert (=> start!101806 e!696113))

(declare-fun tp_is_empty!31163 () Bool)

(assert (=> start!101806 tp_is_empty!31163))

(declare-fun array_inv!28944 (array!79084) Bool)

(assert (=> start!101806 (array_inv!28944 _keys!1208)))

(assert (=> start!101806 true))

(assert (=> start!101806 tp!92424))

(declare-datatypes ((V!46677 0))(
  ( (V!46678 (val!15638 Int)) )
))
(declare-datatypes ((ValueCell!14872 0))(
  ( (ValueCellFull!14872 (v!18301 V!46677)) (EmptyCell!14872) )
))
(declare-datatypes ((array!79086 0))(
  ( (array!79087 (arr!38166 (Array (_ BitVec 32) ValueCell!14872)) (size!38703 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79086)

(declare-fun e!696120 () Bool)

(declare-fun array_inv!28945 (array!79086) Bool)

(assert (=> start!101806 (and (array_inv!28945 _values!996) e!696120)))

(declare-fun b!1225576 () Bool)

(declare-fun e!696119 () Bool)

(assert (=> b!1225576 (= e!696119 tp_is_empty!31163)))

(declare-fun b!1225577 () Bool)

(declare-fun res!814564 () Bool)

(assert (=> b!1225577 (=> (not res!814564) (not e!696113))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1225577 (= res!814564 (validMask!0 mask!1564))))

(declare-fun b!1225578 () Bool)

(declare-fun res!814559 () Bool)

(assert (=> b!1225578 (=> (not res!814559) (not e!696113))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1225578 (= res!814559 (and (= (size!38703 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38702 _keys!1208) (size!38703 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1225579 () Bool)

(declare-fun res!814557 () Bool)

(assert (=> b!1225579 (=> (not res!814557) (not e!696113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79084 (_ BitVec 32)) Bool)

(assert (=> b!1225579 (= res!814557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1225580 () Bool)

(declare-fun e!696115 () Bool)

(assert (=> b!1225580 (= e!696113 e!696115)))

(declare-fun res!814556 () Bool)

(assert (=> b!1225580 (=> (not res!814556) (not e!696115))))

(declare-fun lt!558466 () array!79084)

(assert (=> b!1225580 (= res!814556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558466 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1225580 (= lt!558466 (array!79085 (store (arr!38165 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38702 _keys!1208)))))

(declare-fun mapIsEmpty!48643 () Bool)

(declare-fun mapRes!48643 () Bool)

(assert (=> mapIsEmpty!48643 mapRes!48643))

(declare-fun b!1225581 () Bool)

(declare-fun res!814555 () Bool)

(assert (=> b!1225581 (=> (not res!814555) (not e!696113))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1225581 (= res!814555 (validKeyInArray!0 k!934))))

(declare-fun b!1225582 () Bool)

(declare-fun e!696117 () Bool)

(assert (=> b!1225582 (= e!696117 tp_is_empty!31163)))

(declare-fun b!1225583 () Bool)

(declare-fun res!814562 () Bool)

(assert (=> b!1225583 (=> (not res!814562) (not e!696115))))

(assert (=> b!1225583 (= res!814562 (arrayNoDuplicates!0 lt!558466 #b00000000000000000000000000000000 Nil!27116))))

(declare-fun b!1225584 () Bool)

(declare-fun res!814563 () Bool)

(assert (=> b!1225584 (=> (not res!814563) (not e!696113))))

(assert (=> b!1225584 (= res!814563 (= (select (arr!38165 _keys!1208) i!673) k!934))))

(declare-fun b!1225585 () Bool)

(declare-fun res!814561 () Bool)

(assert (=> b!1225585 (=> (not res!814561) (not e!696113))))

(assert (=> b!1225585 (= res!814561 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38702 _keys!1208))))))

(declare-fun b!1225586 () Bool)

(assert (=> b!1225586 (= e!696120 (and e!696117 mapRes!48643))))

(declare-fun condMapEmpty!48643 () Bool)

(declare-fun mapDefault!48643 () ValueCell!14872)

