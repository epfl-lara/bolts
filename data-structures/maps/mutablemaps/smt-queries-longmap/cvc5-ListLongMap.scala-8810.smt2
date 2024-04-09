; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107120 () Bool)

(assert start!107120)

(declare-fun b_free!27589 () Bool)

(declare-fun b_next!27589 () Bool)

(assert (=> start!107120 (= b_free!27589 (not b_next!27589))))

(declare-fun tp!96994 () Bool)

(declare-fun b_and!45631 () Bool)

(assert (=> start!107120 (= tp!96994 b_and!45631)))

(declare-fun b!1269505 () Bool)

(declare-fun res!844929 () Bool)

(declare-fun e!723604 () Bool)

(assert (=> b!1269505 (=> (not res!844929) (not e!723604))))

(declare-fun from!1698 () (_ BitVec 32))

(declare-datatypes ((array!82781 0))(
  ( (array!82782 (arr!39923 (Array (_ BitVec 32) (_ BitVec 64))) (size!40460 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82781)

(assert (=> b!1269505 (= res!844929 (and (bvsge from!1698 #b00000000000000000000000000000000) (bvsle from!1698 (size!40460 _keys!1364)) (bvslt from!1698 (size!40460 _keys!1364)) (bvsge (bvadd #b00000000000000000000000000000001 from!1698) #b00000000000000000000000000000000)))))

(declare-fun b!1269506 () Bool)

(declare-fun e!723608 () Bool)

(declare-fun e!723606 () Bool)

(declare-fun mapRes!50740 () Bool)

(assert (=> b!1269506 (= e!723608 (and e!723606 mapRes!50740))))

(declare-fun condMapEmpty!50740 () Bool)

(declare-datatypes ((V!48891 0))(
  ( (V!48892 (val!16461 Int)) )
))
(declare-datatypes ((ValueCell!15533 0))(
  ( (ValueCellFull!15533 (v!19096 V!48891)) (EmptyCell!15533) )
))
(declare-datatypes ((array!82783 0))(
  ( (array!82784 (arr!39924 (Array (_ BitVec 32) ValueCell!15533)) (size!40461 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82783)

(declare-fun mapDefault!50740 () ValueCell!15533)

