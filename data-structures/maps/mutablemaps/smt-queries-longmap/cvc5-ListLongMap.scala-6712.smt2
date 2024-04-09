; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84272 () Bool)

(assert start!84272)

(declare-fun b_free!19945 () Bool)

(declare-fun b_next!19945 () Bool)

(assert (=> start!84272 (= b_free!19945 (not b_next!19945))))

(declare-fun tp!69439 () Bool)

(declare-fun b_and!31985 () Bool)

(assert (=> start!84272 (= tp!69439 b_and!31985)))

(declare-fun res!659530 () Bool)

(declare-fun e!555499 () Bool)

(assert (=> start!84272 (=> (not res!659530) (not e!555499))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84272 (= res!659530 (validMask!0 mask!1948))))

(assert (=> start!84272 e!555499))

(assert (=> start!84272 true))

(declare-fun tp_is_empty!23047 () Bool)

(assert (=> start!84272 tp_is_empty!23047))

(declare-datatypes ((V!35713 0))(
  ( (V!35714 (val!11574 Int)) )
))
(declare-datatypes ((ValueCell!11042 0))(
  ( (ValueCellFull!11042 (v!14136 V!35713)) (EmptyCell!11042) )
))
(declare-datatypes ((array!62059 0))(
  ( (array!62060 (arr!29883 (Array (_ BitVec 32) ValueCell!11042)) (size!30363 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62059)

(declare-fun e!555498 () Bool)

(declare-fun array_inv!22963 (array!62059) Bool)

(assert (=> start!84272 (and (array_inv!22963 _values!1278) e!555498)))

(assert (=> start!84272 tp!69439))

(declare-datatypes ((array!62061 0))(
  ( (array!62062 (arr!29884 (Array (_ BitVec 32) (_ BitVec 64))) (size!30364 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62061)

(declare-fun array_inv!22964 (array!62061) Bool)

(assert (=> start!84272 (array_inv!22964 _keys!1544)))

(declare-fun b!985427 () Bool)

(declare-fun res!659529 () Bool)

(assert (=> b!985427 (=> (not res!659529) (not e!555499))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!985427 (= res!659529 (validKeyInArray!0 (select (arr!29884 _keys!1544) from!1932)))))

(declare-fun b!985428 () Bool)

(declare-fun res!659528 () Bool)

(assert (=> b!985428 (=> (not res!659528) (not e!555499))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!985428 (= res!659528 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!985429 () Bool)

(declare-fun e!555495 () Bool)

(assert (=> b!985429 (= e!555495 tp_is_empty!23047)))

(declare-fun b!985430 () Bool)

(declare-fun mapRes!36599 () Bool)

(assert (=> b!985430 (= e!555498 (and e!555495 mapRes!36599))))

(declare-fun condMapEmpty!36599 () Bool)

(declare-fun mapDefault!36599 () ValueCell!11042)

