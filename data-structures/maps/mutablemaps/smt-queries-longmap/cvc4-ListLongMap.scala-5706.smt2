; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74052 () Bool)

(assert start!74052)

(declare-fun b_free!14939 () Bool)

(declare-fun b_next!14939 () Bool)

(assert (=> start!74052 (= b_free!14939 (not b_next!14939))))

(declare-fun tp!52322 () Bool)

(declare-fun b_and!24709 () Bool)

(assert (=> start!74052 (= tp!52322 b_and!24709)))

(declare-fun b!870405 () Bool)

(declare-fun res!591710 () Bool)

(declare-fun e!484697 () Bool)

(assert (=> b!870405 (=> (not res!591710) (not e!484697))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!50282 0))(
  ( (array!50283 (arr!24168 (Array (_ BitVec 32) (_ BitVec 64))) (size!24609 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50282)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!870405 (= res!591710 (and (= (select (arr!24168 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!870406 () Bool)

(declare-fun res!591705 () Bool)

(assert (=> b!870406 (=> (not res!591705) (not e!484697))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870406 (= res!591705 (validKeyInArray!0 k!854))))

(declare-fun b!870407 () Bool)

(declare-fun e!484698 () Bool)

(declare-fun e!484699 () Bool)

(declare-fun mapRes!27212 () Bool)

(assert (=> b!870407 (= e!484698 (and e!484699 mapRes!27212))))

(declare-fun condMapEmpty!27212 () Bool)

(declare-datatypes ((V!27813 0))(
  ( (V!27814 (val!8585 Int)) )
))
(declare-datatypes ((ValueCell!8098 0))(
  ( (ValueCellFull!8098 (v!11006 V!27813)) (EmptyCell!8098) )
))
(declare-datatypes ((array!50284 0))(
  ( (array!50285 (arr!24169 (Array (_ BitVec 32) ValueCell!8098)) (size!24610 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50284)

(declare-fun mapDefault!27212 () ValueCell!8098)

