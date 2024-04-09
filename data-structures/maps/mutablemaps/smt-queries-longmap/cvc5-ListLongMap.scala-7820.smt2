; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97700 () Bool)

(assert start!97700)

(declare-fun b!1116160 () Bool)

(declare-fun res!745308 () Bool)

(declare-fun e!636002 () Bool)

(assert (=> b!1116160 (=> (not res!745308) (not e!636002))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1116160 (= res!745308 (validKeyInArray!0 k!934))))

(declare-fun mapNonEmpty!43660 () Bool)

(declare-fun mapRes!43660 () Bool)

(declare-fun tp!82905 () Bool)

(declare-fun e!636005 () Bool)

(assert (=> mapNonEmpty!43660 (= mapRes!43660 (and tp!82905 e!636005))))

(declare-datatypes ((V!42321 0))(
  ( (V!42322 (val!14004 Int)) )
))
(declare-datatypes ((ValueCell!13238 0))(
  ( (ValueCellFull!13238 (v!16638 V!42321)) (EmptyCell!13238) )
))
(declare-fun mapValue!43660 () ValueCell!13238)

(declare-fun mapRest!43660 () (Array (_ BitVec 32) ValueCell!13238))

(declare-fun mapKey!43660 () (_ BitVec 32))

(declare-datatypes ((array!72630 0))(
  ( (array!72631 (arr!34964 (Array (_ BitVec 32) ValueCell!13238)) (size!35501 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72630)

(assert (=> mapNonEmpty!43660 (= (arr!34964 _values!996) (store mapRest!43660 mapKey!43660 mapValue!43660))))

(declare-fun res!745302 () Bool)

(assert (=> start!97700 (=> (not res!745302) (not e!636002))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72632 0))(
  ( (array!72633 (arr!34965 (Array (_ BitVec 32) (_ BitVec 64))) (size!35502 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72632)

(assert (=> start!97700 (= res!745302 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35502 _keys!1208))))))

(assert (=> start!97700 e!636002))

(declare-fun array_inv!26734 (array!72632) Bool)

(assert (=> start!97700 (array_inv!26734 _keys!1208)))

(assert (=> start!97700 true))

(declare-fun e!636000 () Bool)

(declare-fun array_inv!26735 (array!72630) Bool)

(assert (=> start!97700 (and (array_inv!26735 _values!996) e!636000)))

(declare-fun b!1116161 () Bool)

(declare-fun res!745305 () Bool)

(assert (=> b!1116161 (=> (not res!745305) (not e!636002))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1116161 (= res!745305 (validMask!0 mask!1564))))

(declare-fun b!1116162 () Bool)

(declare-fun res!745310 () Bool)

(assert (=> b!1116162 (=> (not res!745310) (not e!636002))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1116162 (= res!745310 (= (select (arr!34965 _keys!1208) i!673) k!934))))

(declare-fun b!1116163 () Bool)

(declare-fun e!636001 () Bool)

(assert (=> b!1116163 (= e!636000 (and e!636001 mapRes!43660))))

(declare-fun condMapEmpty!43660 () Bool)

(declare-fun mapDefault!43660 () ValueCell!13238)

