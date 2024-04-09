; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134114 () Bool)

(assert start!134114)

(declare-fun b_free!32209 () Bool)

(declare-fun b_next!32209 () Bool)

(assert (=> start!134114 (= b_free!32209 (not b_next!32209))))

(declare-fun tp!113947 () Bool)

(declare-fun b_and!51863 () Bool)

(assert (=> start!134114 (= tp!113947 b_and!51863)))

(declare-fun b!1566966 () Bool)

(declare-fun e!873483 () Bool)

(assert (=> b!1566966 (= e!873483 false)))

(declare-fun lt!672784 () Bool)

(declare-datatypes ((V!60193 0))(
  ( (V!60194 (val!19578 Int)) )
))
(declare-datatypes ((tuple2!25426 0))(
  ( (tuple2!25427 (_1!12723 (_ BitVec 64)) (_2!12723 V!60193)) )
))
(declare-datatypes ((List!36811 0))(
  ( (Nil!36808) (Cons!36807 (h!38255 tuple2!25426) (t!51722 List!36811)) )
))
(declare-datatypes ((ListLongMap!22873 0))(
  ( (ListLongMap!22874 (toList!11452 List!36811)) )
))
(declare-fun lt!672785 () ListLongMap!22873)

(declare-fun contains!10376 (ListLongMap!22873 (_ BitVec 64)) Bool)

(assert (=> b!1566966 (= lt!672784 (contains!10376 lt!672785 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!59883 () Bool)

(declare-fun mapRes!59883 () Bool)

(assert (=> mapIsEmpty!59883 mapRes!59883))

(declare-fun b!1566967 () Bool)

(declare-fun e!873488 () Bool)

(declare-fun tp_is_empty!38989 () Bool)

(assert (=> b!1566967 (= e!873488 tp_is_empty!38989)))

(declare-fun b!1566968 () Bool)

(declare-fun e!873484 () Bool)

(assert (=> b!1566968 (= e!873484 (and e!873488 mapRes!59883))))

(declare-fun condMapEmpty!59883 () Bool)

(declare-datatypes ((ValueCell!18464 0))(
  ( (ValueCellFull!18464 (v!22334 V!60193)) (EmptyCell!18464) )
))
(declare-datatypes ((array!104641 0))(
  ( (array!104642 (arr!50501 (Array (_ BitVec 32) ValueCell!18464)) (size!51052 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104641)

(declare-fun mapDefault!59883 () ValueCell!18464)

