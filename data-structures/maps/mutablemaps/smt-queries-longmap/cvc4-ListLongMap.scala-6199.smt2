; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79334 () Bool)

(assert start!79334)

(declare-fun b_free!17519 () Bool)

(declare-fun b_next!17519 () Bool)

(assert (=> start!79334 (= b_free!17519 (not b_next!17519))))

(declare-fun tp!60998 () Bool)

(declare-fun b_and!28607 () Bool)

(assert (=> start!79334 (= tp!60998 b_and!28607)))

(declare-fun mapIsEmpty!31797 () Bool)

(declare-fun mapRes!31797 () Bool)

(assert (=> mapIsEmpty!31797 mapRes!31797))

(declare-fun b!931305 () Bool)

(declare-fun res!627328 () Bool)

(declare-fun e!523053 () Bool)

(assert (=> b!931305 (=> (not res!627328) (not e!523053))))

(declare-datatypes ((array!56022 0))(
  ( (array!56023 (arr!26952 (Array (_ BitVec 32) (_ BitVec 64))) (size!27412 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56022)

(declare-datatypes ((List!19101 0))(
  ( (Nil!19098) (Cons!19097 (h!20243 (_ BitVec 64)) (t!27172 List!19101)) )
))
(declare-fun arrayNoDuplicates!0 (array!56022 (_ BitVec 32) List!19101) Bool)

(assert (=> b!931305 (= res!627328 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19098))))

(declare-fun b!931306 () Bool)

(declare-fun e!523050 () Bool)

(declare-fun e!523054 () Bool)

(assert (=> b!931306 (= e!523050 (and e!523054 mapRes!31797))))

(declare-fun condMapEmpty!31797 () Bool)

(declare-datatypes ((V!31667 0))(
  ( (V!31668 (val!10064 Int)) )
))
(declare-datatypes ((ValueCell!9532 0))(
  ( (ValueCellFull!9532 (v!12582 V!31667)) (EmptyCell!9532) )
))
(declare-datatypes ((array!56024 0))(
  ( (array!56025 (arr!26953 (Array (_ BitVec 32) ValueCell!9532)) (size!27413 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56024)

(declare-fun mapDefault!31797 () ValueCell!9532)

