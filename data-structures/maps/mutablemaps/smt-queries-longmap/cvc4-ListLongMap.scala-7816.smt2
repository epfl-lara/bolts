; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97680 () Bool)

(assert start!97680)

(declare-fun b!1115770 () Bool)

(declare-fun res!745004 () Bool)

(declare-fun e!635823 () Bool)

(assert (=> b!1115770 (=> (not res!745004) (not e!635823))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!72590 0))(
  ( (array!72591 (arr!34944 (Array (_ BitVec 32) (_ BitVec 64))) (size!35481 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72590)

(assert (=> b!1115770 (= res!745004 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35481 _keys!1208))))))

(declare-fun b!1115771 () Bool)

(declare-fun res!745003 () Bool)

(assert (=> b!1115771 (=> (not res!745003) (not e!635823))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1115771 (= res!745003 (validKeyInArray!0 k!934))))

(declare-fun b!1115772 () Bool)

(declare-fun res!745009 () Bool)

(assert (=> b!1115772 (=> (not res!745009) (not e!635823))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72590 (_ BitVec 32)) Bool)

(assert (=> b!1115772 (= res!745009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1115773 () Bool)

(declare-fun res!745006 () Bool)

(assert (=> b!1115773 (=> (not res!745006) (not e!635823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1115773 (= res!745006 (validMask!0 mask!1564))))

(declare-fun b!1115774 () Bool)

(declare-fun e!635820 () Bool)

(declare-fun e!635822 () Bool)

(declare-fun mapRes!43630 () Bool)

(assert (=> b!1115774 (= e!635820 (and e!635822 mapRes!43630))))

(declare-fun condMapEmpty!43630 () Bool)

(declare-datatypes ((V!42293 0))(
  ( (V!42294 (val!13994 Int)) )
))
(declare-datatypes ((ValueCell!13228 0))(
  ( (ValueCellFull!13228 (v!16628 V!42293)) (EmptyCell!13228) )
))
(declare-datatypes ((array!72592 0))(
  ( (array!72593 (arr!34945 (Array (_ BitVec 32) ValueCell!13228)) (size!35482 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72592)

(declare-fun mapDefault!43630 () ValueCell!13228)

