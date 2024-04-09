; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97340 () Bool)

(assert start!97340)

(declare-fun b_free!23275 () Bool)

(declare-fun b_next!23275 () Bool)

(assert (=> start!97340 (= b_free!23275 (not b_next!23275))))

(declare-fun tp!82124 () Bool)

(declare-fun b_and!37401 () Bool)

(assert (=> start!97340 (= tp!82124 b_and!37401)))

(declare-fun b!1108207 () Bool)

(declare-fun res!739668 () Bool)

(declare-fun e!632257 () Bool)

(assert (=> b!1108207 (=> (not res!739668) (not e!632257))))

(declare-datatypes ((array!71938 0))(
  ( (array!71939 (arr!34618 (Array (_ BitVec 32) (_ BitVec 64))) (size!35155 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71938)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!41841 0))(
  ( (V!41842 (val!13824 Int)) )
))
(declare-datatypes ((ValueCell!13058 0))(
  ( (ValueCellFull!13058 (v!16458 V!41841)) (EmptyCell!13058) )
))
(declare-datatypes ((array!71940 0))(
  ( (array!71941 (arr!34619 (Array (_ BitVec 32) ValueCell!13058)) (size!35156 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71940)

(assert (=> b!1108207 (= res!739668 (and (= (size!35156 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35155 _keys!1208) (size!35156 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!739670 () Bool)

(assert (=> start!97340 (=> (not res!739670) (not e!632257))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97340 (= res!739670 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35155 _keys!1208))))))

(assert (=> start!97340 e!632257))

(declare-fun tp_is_empty!27535 () Bool)

(assert (=> start!97340 tp_is_empty!27535))

(declare-fun array_inv!26508 (array!71938) Bool)

(assert (=> start!97340 (array_inv!26508 _keys!1208)))

(assert (=> start!97340 true))

(assert (=> start!97340 tp!82124))

(declare-fun e!632261 () Bool)

(declare-fun array_inv!26509 (array!71940) Bool)

(assert (=> start!97340 (and (array_inv!26509 _values!996) e!632261)))

(declare-fun b!1108208 () Bool)

(declare-fun res!739664 () Bool)

(assert (=> b!1108208 (=> (not res!739664) (not e!632257))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1108208 (= res!739664 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35155 _keys!1208))))))

(declare-fun mapIsEmpty!43120 () Bool)

(declare-fun mapRes!43120 () Bool)

(assert (=> mapIsEmpty!43120 mapRes!43120))

(declare-fun b!1108209 () Bool)

(declare-fun res!739662 () Bool)

(assert (=> b!1108209 (=> (not res!739662) (not e!632257))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1108209 (= res!739662 (validMask!0 mask!1564))))

(declare-fun b!1108210 () Bool)

(declare-fun e!632258 () Bool)

(assert (=> b!1108210 (= e!632261 (and e!632258 mapRes!43120))))

(declare-fun condMapEmpty!43120 () Bool)

(declare-fun mapDefault!43120 () ValueCell!13058)

