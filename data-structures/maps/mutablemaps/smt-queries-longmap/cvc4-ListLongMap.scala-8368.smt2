; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101830 () Bool)

(assert start!101830)

(declare-fun b_free!26483 () Bool)

(declare-fun b_next!26483 () Bool)

(assert (=> start!101830 (= b_free!26483 (not b_next!26483))))

(declare-fun tp!92496 () Bool)

(declare-fun b_and!44237 () Bool)

(assert (=> start!101830 (= tp!92496 b_and!44237)))

(declare-fun b!1226156 () Bool)

(declare-fun e!696421 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((V!46709 0))(
  ( (V!46710 (val!15650 Int)) )
))
(declare-datatypes ((tuple2!20328 0))(
  ( (tuple2!20329 (_1!10174 (_ BitVec 64)) (_2!10174 V!46709)) )
))
(declare-datatypes ((List!27140 0))(
  ( (Nil!27137) (Cons!27136 (h!28345 tuple2!20328) (t!40610 List!27140)) )
))
(declare-datatypes ((ListLongMap!18309 0))(
  ( (ListLongMap!18310 (toList!9170 List!27140)) )
))
(declare-fun lt!558680 () ListLongMap!18309)

(declare-fun lt!558681 () ListLongMap!18309)

(declare-fun -!2005 (ListLongMap!18309 (_ BitVec 64)) ListLongMap!18309)

(assert (=> b!1226156 (= e!696421 (= lt!558681 (-!2005 lt!558680 k!934)))))

(declare-fun b!1226157 () Bool)

(declare-fun e!696422 () Bool)

(declare-fun e!696420 () Bool)

(declare-fun mapRes!48679 () Bool)

(assert (=> b!1226157 (= e!696422 (and e!696420 mapRes!48679))))

(declare-fun condMapEmpty!48679 () Bool)

(declare-datatypes ((ValueCell!14884 0))(
  ( (ValueCellFull!14884 (v!18313 V!46709)) (EmptyCell!14884) )
))
(declare-datatypes ((array!79132 0))(
  ( (array!79133 (arr!38189 (Array (_ BitVec 32) ValueCell!14884)) (size!38726 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79132)

(declare-fun mapDefault!48679 () ValueCell!14884)

