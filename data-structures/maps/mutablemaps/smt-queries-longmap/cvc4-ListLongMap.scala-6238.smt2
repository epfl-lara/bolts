; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79732 () Bool)

(assert start!79732)

(declare-fun b_free!17753 () Bool)

(declare-fun b_next!17753 () Bool)

(assert (=> start!79732 (= b_free!17753 (not b_next!17753))))

(declare-fun tp!61715 () Bool)

(declare-fun b_and!29115 () Bool)

(assert (=> start!79732 (= tp!61715 b_and!29115)))

(declare-fun b!937646 () Bool)

(declare-datatypes ((Unit!31680 0))(
  ( (Unit!31681) )
))
(declare-fun e!526580 () Unit!31680)

(declare-fun e!526574 () Unit!31680)

(assert (=> b!937646 (= e!526580 e!526574)))

(declare-fun lt!423231 () (_ BitVec 64))

(declare-datatypes ((array!56486 0))(
  ( (array!56487 (arr!27179 (Array (_ BitVec 32) (_ BitVec 64))) (size!27639 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56486)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!937646 (= lt!423231 (select (arr!27179 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97557 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!937646 (= c!97557 (validKeyInArray!0 lt!423231))))

(declare-fun b!937647 () Bool)

(declare-fun e!526579 () Bool)

(declare-fun e!526582 () Bool)

(declare-fun mapRes!32163 () Bool)

(assert (=> b!937647 (= e!526579 (and e!526582 mapRes!32163))))

(declare-fun condMapEmpty!32163 () Bool)

(declare-datatypes ((V!31979 0))(
  ( (V!31980 (val!10181 Int)) )
))
(declare-datatypes ((ValueCell!9649 0))(
  ( (ValueCellFull!9649 (v!12706 V!31979)) (EmptyCell!9649) )
))
(declare-datatypes ((array!56488 0))(
  ( (array!56489 (arr!27180 (Array (_ BitVec 32) ValueCell!9649)) (size!27640 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56488)

(declare-fun mapDefault!32163 () ValueCell!9649)

