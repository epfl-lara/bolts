; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79028 () Bool)

(assert start!79028)

(declare-fun b_free!17213 () Bool)

(declare-fun b_next!17213 () Bool)

(assert (=> start!79028 (= b_free!17213 (not b_next!17213))))

(declare-fun tp!60081 () Bool)

(declare-fun b_and!28181 () Bool)

(assert (=> start!79028 (= tp!60081 b_and!28181)))

(declare-fun b!924871 () Bool)

(declare-datatypes ((Unit!31246 0))(
  ( (Unit!31247) )
))
(declare-fun e!519089 () Unit!31246)

(declare-fun Unit!31248 () Unit!31246)

(assert (=> b!924871 (= e!519089 Unit!31248)))

(declare-fun b!924872 () Bool)

(declare-fun e!519087 () Bool)

(declare-fun e!519092 () Bool)

(declare-fun mapRes!31338 () Bool)

(assert (=> b!924872 (= e!519087 (and e!519092 mapRes!31338))))

(declare-fun condMapEmpty!31338 () Bool)

(declare-datatypes ((V!31259 0))(
  ( (V!31260 (val!9911 Int)) )
))
(declare-datatypes ((ValueCell!9379 0))(
  ( (ValueCellFull!9379 (v!12429 V!31259)) (EmptyCell!9379) )
))
(declare-datatypes ((array!55426 0))(
  ( (array!55427 (arr!26654 (Array (_ BitVec 32) ValueCell!9379)) (size!27114 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55426)

(declare-fun mapDefault!31338 () ValueCell!9379)

