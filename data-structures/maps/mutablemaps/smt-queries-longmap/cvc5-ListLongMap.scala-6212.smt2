; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79434 () Bool)

(assert start!79434)

(declare-fun b_free!17593 () Bool)

(declare-fun b_next!17593 () Bool)

(assert (=> start!79434 (= b_free!17593 (not b_next!17593))))

(declare-fun tp!61224 () Bool)

(declare-fun b_and!28763 () Bool)

(assert (=> start!79434 (= tp!61224 b_and!28763)))

(declare-fun b!932992 () Bool)

(declare-fun res!628510 () Bool)

(declare-fun e!523943 () Bool)

(assert (=> b!932992 (=> (not res!628510) (not e!523943))))

(declare-datatypes ((array!56162 0))(
  ( (array!56163 (arr!27021 (Array (_ BitVec 32) (_ BitVec 64))) (size!27481 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56162)

(declare-datatypes ((List!19153 0))(
  ( (Nil!19150) (Cons!19149 (h!20295 (_ BitVec 64)) (t!27298 List!19153)) )
))
(declare-fun arrayNoDuplicates!0 (array!56162 (_ BitVec 32) List!19153) Bool)

(assert (=> b!932992 (= res!628510 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19150))))

(declare-fun b!932993 () Bool)

(declare-fun res!628517 () Bool)

(declare-fun e!523939 () Bool)

(assert (=> b!932993 (=> (not res!628517) (not e!523939))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!932993 (= res!628517 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!932994 () Bool)

(declare-fun res!628512 () Bool)

(assert (=> b!932994 (=> (not res!628512) (not e!523939))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932994 (= res!628512 (validKeyInArray!0 k!1099))))

(declare-fun b!932995 () Bool)

(declare-fun e!523941 () Bool)

(declare-fun e!523940 () Bool)

(declare-fun mapRes!31911 () Bool)

(assert (=> b!932995 (= e!523941 (and e!523940 mapRes!31911))))

(declare-fun condMapEmpty!31911 () Bool)

(declare-datatypes ((V!31767 0))(
  ( (V!31768 (val!10101 Int)) )
))
(declare-datatypes ((ValueCell!9569 0))(
  ( (ValueCellFull!9569 (v!12620 V!31767)) (EmptyCell!9569) )
))
(declare-datatypes ((array!56164 0))(
  ( (array!56165 (arr!27022 (Array (_ BitVec 32) ValueCell!9569)) (size!27482 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56164)

(declare-fun mapDefault!31911 () ValueCell!9569)

