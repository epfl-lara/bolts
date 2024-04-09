; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79058 () Bool)

(assert start!79058)

(declare-fun b_free!17243 () Bool)

(declare-fun b_next!17243 () Bool)

(assert (=> start!79058 (= b_free!17243 (not b_next!17243))))

(declare-fun tp!60171 () Bool)

(declare-fun b_and!28241 () Bool)

(assert (=> start!79058 (= tp!60171 b_and!28241)))

(declare-fun b!925799 () Bool)

(declare-fun e!519677 () Bool)

(declare-fun e!519674 () Bool)

(assert (=> b!925799 (= e!519677 e!519674)))

(declare-fun res!623912 () Bool)

(assert (=> b!925799 (=> (not res!623912) (not e!519674))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55482 0))(
  ( (array!55483 (arr!26682 (Array (_ BitVec 32) (_ BitVec 64))) (size!27142 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55482)

(assert (=> b!925799 (= res!623912 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27142 _keys!1487)))))

(declare-datatypes ((Unit!31295 0))(
  ( (Unit!31296) )
))
(declare-fun lt!416802 () Unit!31295)

(declare-fun e!519673 () Unit!31295)

(assert (=> b!925799 (= lt!416802 e!519673)))

(declare-fun c!96571 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!925799 (= c!96571 (validKeyInArray!0 k!1099))))

(declare-fun b!925800 () Bool)

(declare-fun e!519675 () Bool)

(declare-fun e!519670 () Bool)

(declare-fun mapRes!31383 () Bool)

(assert (=> b!925800 (= e!519675 (and e!519670 mapRes!31383))))

(declare-fun condMapEmpty!31383 () Bool)

(declare-datatypes ((V!31299 0))(
  ( (V!31300 (val!9926 Int)) )
))
(declare-datatypes ((ValueCell!9394 0))(
  ( (ValueCellFull!9394 (v!12444 V!31299)) (EmptyCell!9394) )
))
(declare-datatypes ((array!55484 0))(
  ( (array!55485 (arr!26683 (Array (_ BitVec 32) ValueCell!9394)) (size!27143 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55484)

(declare-fun mapDefault!31383 () ValueCell!9394)

