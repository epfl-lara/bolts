; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79520 () Bool)

(assert start!79520)

(declare-fun b_free!17647 () Bool)

(declare-fun b_next!17647 () Bool)

(assert (=> start!79520 (= b_free!17647 (not b_next!17647))))

(declare-fun tp!61389 () Bool)

(declare-fun b_and!28879 () Bool)

(assert (=> start!79520 (= tp!61389 b_and!28879)))

(declare-fun b!934363 () Bool)

(declare-fun res!629403 () Bool)

(declare-fun e!524665 () Bool)

(assert (=> b!934363 (=> (not res!629403) (not e!524665))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!56268 0))(
  ( (array!56269 (arr!27073 (Array (_ BitVec 32) (_ BitVec 64))) (size!27533 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56268)

(assert (=> b!934363 (= res!629403 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27533 _keys!1487))))))

(declare-fun b!934364 () Bool)

(declare-fun res!629406 () Bool)

(assert (=> b!934364 (=> (not res!629406) (not e!524665))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56268 (_ BitVec 32)) Bool)

(assert (=> b!934364 (= res!629406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!934365 () Bool)

(declare-fun res!629402 () Bool)

(declare-fun e!524666 () Bool)

(assert (=> b!934365 (=> (not res!629402) (not e!524666))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!934365 (= res!629402 (validKeyInArray!0 k!1099))))

(declare-fun b!934366 () Bool)

(declare-fun e!524669 () Bool)

(declare-fun e!524671 () Bool)

(declare-fun mapRes!31995 () Bool)

(assert (=> b!934366 (= e!524669 (and e!524671 mapRes!31995))))

(declare-fun condMapEmpty!31995 () Bool)

(declare-datatypes ((V!31839 0))(
  ( (V!31840 (val!10128 Int)) )
))
(declare-datatypes ((ValueCell!9596 0))(
  ( (ValueCellFull!9596 (v!12648 V!31839)) (EmptyCell!9596) )
))
(declare-datatypes ((array!56270 0))(
  ( (array!56271 (arr!27074 (Array (_ BitVec 32) ValueCell!9596)) (size!27534 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56270)

(declare-fun mapDefault!31995 () ValueCell!9596)

