; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81868 () Bool)

(assert start!81868)

(declare-fun b_free!18335 () Bool)

(declare-fun b_next!18335 () Bool)

(assert (=> start!81868 (= b_free!18335 (not b_next!18335))))

(declare-fun tp!63705 () Bool)

(declare-fun b_and!29839 () Bool)

(assert (=> start!81868 (= tp!63705 b_and!29839)))

(declare-fun b!954251 () Bool)

(declare-fun e!537650 () Bool)

(assert (=> b!954251 (= e!537650 false)))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!32821 0))(
  ( (V!32822 (val!10490 Int)) )
))
(declare-fun zeroValue!1139 () V!32821)

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!57883 0))(
  ( (array!57884 (arr!27817 (Array (_ BitVec 32) (_ BitVec 64))) (size!28297 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57883)

(declare-datatypes ((ValueCell!9958 0))(
  ( (ValueCellFull!9958 (v!13045 V!32821)) (EmptyCell!9958) )
))
(declare-datatypes ((array!57885 0))(
  ( (array!57886 (arr!27818 (Array (_ BitVec 32) ValueCell!9958)) (size!28298 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57885)

(declare-fun lt!429841 () Bool)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun minValue!1139 () V!32821)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13710 0))(
  ( (tuple2!13711 (_1!6865 (_ BitVec 64)) (_2!6865 V!32821)) )
))
(declare-datatypes ((List!19527 0))(
  ( (Nil!19524) (Cons!19523 (h!20685 tuple2!13710) (t!27896 List!19527)) )
))
(declare-datatypes ((ListLongMap!12421 0))(
  ( (ListLongMap!12422 (toList!6226 List!19527)) )
))
(declare-fun contains!5276 (ListLongMap!12421 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3411 (array!57883 array!57885 (_ BitVec 32) (_ BitVec 32) V!32821 V!32821 (_ BitVec 32) Int) ListLongMap!12421)

(assert (=> b!954251 (= lt!429841 (contains!5276 (getCurrentListMap!3411 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27817 _keys!1441) i!735)))))

(declare-fun b!954252 () Bool)

(declare-fun e!537647 () Bool)

(declare-fun e!537649 () Bool)

(declare-fun mapRes!33280 () Bool)

(assert (=> b!954252 (= e!537647 (and e!537649 mapRes!33280))))

(declare-fun condMapEmpty!33280 () Bool)

(declare-fun mapDefault!33280 () ValueCell!9958)

