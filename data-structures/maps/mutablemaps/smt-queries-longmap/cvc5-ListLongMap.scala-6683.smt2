; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84098 () Bool)

(assert start!84098)

(declare-fun b_free!19825 () Bool)

(declare-fun b_next!19825 () Bool)

(assert (=> start!84098 (= b_free!19825 (not b_next!19825))))

(declare-fun tp!68998 () Bool)

(declare-fun b_and!31751 () Bool)

(assert (=> start!84098 (= tp!68998 b_and!31751)))

(declare-fun b!982829 () Bool)

(declare-fun res!657831 () Bool)

(declare-fun e!554020 () Bool)

(assert (=> b!982829 (=> (not res!657831) (not e!554020))))

(declare-datatypes ((array!61731 0))(
  ( (array!61732 (arr!29719 (Array (_ BitVec 32) (_ BitVec 64))) (size!30199 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61731)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982829 (= res!657831 (validKeyInArray!0 (select (arr!29719 _keys!1544) from!1932)))))

(declare-fun b!982830 () Bool)

(declare-fun e!554021 () Bool)

(declare-fun e!554022 () Bool)

(declare-fun mapRes!36338 () Bool)

(assert (=> b!982830 (= e!554021 (and e!554022 mapRes!36338))))

(declare-fun condMapEmpty!36338 () Bool)

(declare-datatypes ((V!35481 0))(
  ( (V!35482 (val!11487 Int)) )
))
(declare-datatypes ((ValueCell!10955 0))(
  ( (ValueCellFull!10955 (v!14049 V!35481)) (EmptyCell!10955) )
))
(declare-datatypes ((array!61733 0))(
  ( (array!61734 (arr!29720 (Array (_ BitVec 32) ValueCell!10955)) (size!30200 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61733)

(declare-fun mapDefault!36338 () ValueCell!10955)

