; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79414 () Bool)

(assert start!79414)

(declare-fun b_free!17573 () Bool)

(declare-fun b_next!17573 () Bool)

(assert (=> start!79414 (= b_free!17573 (not b_next!17573))))

(declare-fun tp!61164 () Bool)

(declare-fun b_and!28723 () Bool)

(assert (=> start!79414 (= tp!61164 b_and!28723)))

(declare-fun b!932582 () Bool)

(declare-fun res!628208 () Bool)

(declare-fun e!523729 () Bool)

(assert (=> b!932582 (=> (not res!628208) (not e!523729))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!932582 (= res!628208 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!932583 () Bool)

(declare-fun e!523730 () Bool)

(assert (=> b!932583 (= e!523730 e!523729)))

(declare-fun res!628217 () Bool)

(assert (=> b!932583 (=> (not res!628217) (not e!523729))))

(declare-datatypes ((V!31739 0))(
  ( (V!31740 (val!10091 Int)) )
))
(declare-datatypes ((tuple2!13328 0))(
  ( (tuple2!13329 (_1!6674 (_ BitVec 64)) (_2!6674 V!31739)) )
))
(declare-datatypes ((List!19138 0))(
  ( (Nil!19135) (Cons!19134 (h!20280 tuple2!13328) (t!27263 List!19138)) )
))
(declare-datatypes ((ListLongMap!12039 0))(
  ( (ListLongMap!12040 (toList!6035 List!19138)) )
))
(declare-fun lt!419988 () ListLongMap!12039)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5035 (ListLongMap!12039 (_ BitVec 64)) Bool)

(assert (=> b!932583 (= res!628217 (contains!5035 lt!419988 k!1099))))

(declare-datatypes ((array!56124 0))(
  ( (array!56125 (arr!27002 (Array (_ BitVec 32) (_ BitVec 64))) (size!27462 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56124)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((ValueCell!9559 0))(
  ( (ValueCellFull!9559 (v!12610 V!31739)) (EmptyCell!9559) )
))
(declare-datatypes ((array!56126 0))(
  ( (array!56127 (arr!27003 (Array (_ BitVec 32) ValueCell!9559)) (size!27463 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56126)

(declare-fun zeroValue!1173 () V!31739)

(declare-fun minValue!1173 () V!31739)

(declare-fun getCurrentListMap!3228 (array!56124 array!56126 (_ BitVec 32) (_ BitVec 32) V!31739 V!31739 (_ BitVec 32) Int) ListLongMap!12039)

(assert (=> b!932583 (= lt!419988 (getCurrentListMap!3228 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!932584 () Bool)

(declare-fun e!523733 () Bool)

(declare-fun tp_is_empty!20081 () Bool)

(assert (=> b!932584 (= e!523733 tp_is_empty!20081)))

(declare-fun b!932585 () Bool)

(declare-fun res!628214 () Bool)

(assert (=> b!932585 (=> (not res!628214) (not e!523729))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932585 (= res!628214 (validKeyInArray!0 k!1099))))

(declare-fun b!932586 () Bool)

(declare-fun res!628210 () Bool)

(assert (=> b!932586 (=> (not res!628210) (not e!523730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56124 (_ BitVec 32)) Bool)

(assert (=> b!932586 (= res!628210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31881 () Bool)

(declare-fun mapRes!31881 () Bool)

(assert (=> mapIsEmpty!31881 mapRes!31881))

(declare-fun b!932587 () Bool)

(declare-fun res!628209 () Bool)

(assert (=> b!932587 (=> (not res!628209) (not e!523729))))

(declare-fun v!791 () V!31739)

(declare-fun apply!820 (ListLongMap!12039 (_ BitVec 64)) V!31739)

(assert (=> b!932587 (= res!628209 (= (apply!820 lt!419988 k!1099) v!791))))

(declare-fun b!932588 () Bool)

(declare-fun e!523728 () Bool)

(assert (=> b!932588 (= e!523728 (and e!523733 mapRes!31881))))

(declare-fun condMapEmpty!31881 () Bool)

(declare-fun mapDefault!31881 () ValueCell!9559)

