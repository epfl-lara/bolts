; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98432 () Bool)

(assert start!98432)

(declare-fun b_free!24001 () Bool)

(declare-fun b_next!24001 () Bool)

(assert (=> start!98432 (= b_free!24001 (not b_next!24001))))

(declare-fun tp!84714 () Bool)

(declare-fun b_and!38865 () Bool)

(assert (=> start!98432 (= tp!84714 b_and!38865)))

(declare-fun b!1135203 () Bool)

(declare-fun e!646065 () Bool)

(declare-fun e!646067 () Bool)

(assert (=> b!1135203 (= e!646065 e!646067)))

(declare-fun res!757861 () Bool)

(assert (=> b!1135203 (=> (not res!757861) (not e!646067))))

(declare-datatypes ((array!73884 0))(
  ( (array!73885 (arr!35589 (Array (_ BitVec 32) (_ BitVec 64))) (size!36126 (_ BitVec 32))) )
))
(declare-fun lt!504609 () array!73884)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73884 (_ BitVec 32)) Bool)

(assert (=> b!1135203 (= res!757861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!504609 mask!1564))))

(declare-fun _keys!1208 () array!73884)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1135203 (= lt!504609 (array!73885 (store (arr!35589 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36126 _keys!1208)))))

(declare-fun b!1135204 () Bool)

(declare-fun e!646066 () Bool)

(declare-datatypes ((V!43169 0))(
  ( (V!43170 (val!14322 Int)) )
))
(declare-datatypes ((tuple2!18166 0))(
  ( (tuple2!18167 (_1!9093 (_ BitVec 64)) (_2!9093 V!43169)) )
))
(declare-datatypes ((List!24978 0))(
  ( (Nil!24975) (Cons!24974 (h!26183 tuple2!18166) (t!35978 List!24978)) )
))
(declare-datatypes ((ListLongMap!16147 0))(
  ( (ListLongMap!16148 (toList!8089 List!24978)) )
))
(declare-fun call!49556 () ListLongMap!16147)

(declare-fun call!49560 () ListLongMap!16147)

(assert (=> b!1135204 (= e!646066 (= call!49556 call!49560))))

(declare-fun b!1135205 () Bool)

(declare-fun e!646075 () Bool)

(declare-fun e!646070 () Bool)

(declare-fun mapRes!44621 () Bool)

(assert (=> b!1135205 (= e!646075 (and e!646070 mapRes!44621))))

(declare-fun condMapEmpty!44621 () Bool)

(declare-datatypes ((ValueCell!13556 0))(
  ( (ValueCellFull!13556 (v!16960 V!43169)) (EmptyCell!13556) )
))
(declare-datatypes ((array!73886 0))(
  ( (array!73887 (arr!35590 (Array (_ BitVec 32) ValueCell!13556)) (size!36127 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73886)

(declare-fun mapDefault!44621 () ValueCell!13556)

