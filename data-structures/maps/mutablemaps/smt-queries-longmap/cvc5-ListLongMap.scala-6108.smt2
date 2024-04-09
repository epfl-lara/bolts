; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78784 () Bool)

(assert start!78784)

(declare-fun b_free!16969 () Bool)

(declare-fun b_next!16969 () Bool)

(assert (=> start!78784 (= b_free!16969 (not b_next!16969))))

(declare-fun tp!59348 () Bool)

(declare-fun b_and!27693 () Bool)

(assert (=> start!78784 (= tp!59348 b_and!27693)))

(declare-fun b!918794 () Bool)

(declare-fun res!619622 () Bool)

(declare-fun e!515784 () Bool)

(assert (=> b!918794 (=> (not res!619622) (not e!515784))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918794 (= res!619622 (validKeyInArray!0 k!1099))))

(declare-fun b!918795 () Bool)

(declare-fun e!515787 () Bool)

(declare-fun tp_is_empty!19477 () Bool)

(assert (=> b!918795 (= e!515787 tp_is_empty!19477)))

(declare-fun res!619616 () Bool)

(declare-fun e!515782 () Bool)

(assert (=> start!78784 (=> (not res!619616) (not e!515782))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78784 (= res!619616 (validMask!0 mask!1881))))

(assert (=> start!78784 e!515782))

(assert (=> start!78784 true))

(assert (=> start!78784 tp_is_empty!19477))

(declare-datatypes ((V!30935 0))(
  ( (V!30936 (val!9789 Int)) )
))
(declare-datatypes ((ValueCell!9257 0))(
  ( (ValueCellFull!9257 (v!12307 V!30935)) (EmptyCell!9257) )
))
(declare-datatypes ((array!54946 0))(
  ( (array!54947 (arr!26414 (Array (_ BitVec 32) ValueCell!9257)) (size!26874 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54946)

(declare-fun e!515783 () Bool)

(declare-fun array_inv!20582 (array!54946) Bool)

(assert (=> start!78784 (and (array_inv!20582 _values!1231) e!515783)))

(assert (=> start!78784 tp!59348))

(declare-datatypes ((array!54948 0))(
  ( (array!54949 (arr!26415 (Array (_ BitVec 32) (_ BitVec 64))) (size!26875 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54948)

(declare-fun array_inv!20583 (array!54948) Bool)

(assert (=> start!78784 (array_inv!20583 _keys!1487)))

(declare-fun b!918796 () Bool)

(declare-fun res!619615 () Bool)

(assert (=> b!918796 (=> (not res!619615) (not e!515784))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!918796 (= res!619615 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!918797 () Bool)

(declare-fun e!515781 () Bool)

(declare-fun mapRes!30972 () Bool)

(assert (=> b!918797 (= e!515783 (and e!515781 mapRes!30972))))

(declare-fun condMapEmpty!30972 () Bool)

(declare-fun mapDefault!30972 () ValueCell!9257)

