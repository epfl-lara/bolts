; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79438 () Bool)

(assert start!79438)

(declare-fun b_free!17597 () Bool)

(declare-fun b_next!17597 () Bool)

(assert (=> start!79438 (= b_free!17597 (not b_next!17597))))

(declare-fun tp!61235 () Bool)

(declare-fun b_and!28771 () Bool)

(assert (=> start!79438 (= tp!61235 b_and!28771)))

(declare-fun mapIsEmpty!31917 () Bool)

(declare-fun mapRes!31917 () Bool)

(assert (=> mapIsEmpty!31917 mapRes!31917))

(declare-fun b!933074 () Bool)

(declare-fun e!523985 () Bool)

(declare-fun e!523983 () Bool)

(assert (=> b!933074 (= e!523985 e!523983)))

(declare-fun res!628576 () Bool)

(assert (=> b!933074 (=> (not res!628576) (not e!523983))))

(declare-datatypes ((V!31771 0))(
  ( (V!31772 (val!10103 Int)) )
))
(declare-datatypes ((tuple2!13348 0))(
  ( (tuple2!13349 (_1!6684 (_ BitVec 64)) (_2!6684 V!31771)) )
))
(declare-datatypes ((List!19156 0))(
  ( (Nil!19153) (Cons!19152 (h!20298 tuple2!13348) (t!27305 List!19156)) )
))
(declare-datatypes ((ListLongMap!12059 0))(
  ( (ListLongMap!12060 (toList!6045 List!19156)) )
))
(declare-fun lt!420241 () ListLongMap!12059)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5044 (ListLongMap!12059 (_ BitVec 64)) Bool)

(assert (=> b!933074 (= res!628576 (contains!5044 lt!420241 k!1099))))

(declare-datatypes ((array!56170 0))(
  ( (array!56171 (arr!27025 (Array (_ BitVec 32) (_ BitVec 64))) (size!27485 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56170)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9571 0))(
  ( (ValueCellFull!9571 (v!12622 V!31771)) (EmptyCell!9571) )
))
(declare-datatypes ((array!56172 0))(
  ( (array!56173 (arr!27026 (Array (_ BitVec 32) ValueCell!9571)) (size!27486 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56172)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31771)

(declare-fun minValue!1173 () V!31771)

(declare-fun getCurrentListMap!3237 (array!56170 array!56172 (_ BitVec 32) (_ BitVec 32) V!31771 V!31771 (_ BitVec 32) Int) ListLongMap!12059)

(assert (=> b!933074 (= lt!420241 (getCurrentListMap!3237 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!933076 () Bool)

(declare-fun e!523979 () Bool)

(declare-fun e!523981 () Bool)

(assert (=> b!933076 (= e!523979 (and e!523981 mapRes!31917))))

(declare-fun condMapEmpty!31917 () Bool)

(declare-fun mapDefault!31917 () ValueCell!9571)

