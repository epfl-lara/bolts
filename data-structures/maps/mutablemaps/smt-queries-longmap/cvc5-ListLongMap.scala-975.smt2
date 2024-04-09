; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21100 () Bool)

(assert start!21100)

(declare-fun b_free!5599 () Bool)

(declare-fun b_next!5599 () Bool)

(assert (=> start!21100 (= b_free!5599 (not b_next!5599))))

(declare-fun tp!19859 () Bool)

(declare-fun b_and!12447 () Bool)

(assert (=> start!21100 (= tp!19859 b_and!12447)))

(declare-fun b!212153 () Bool)

(declare-fun res!103730 () Bool)

(declare-fun e!138059 () Bool)

(assert (=> b!212153 (=> (not res!103730) (not e!138059))))

(declare-datatypes ((array!10124 0))(
  ( (array!10125 (arr!4805 (Array (_ BitVec 32) (_ BitVec 64))) (size!5130 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10124)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10124 (_ BitVec 32)) Bool)

(assert (=> b!212153 (= res!103730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!212154 () Bool)

(declare-fun e!138064 () Bool)

(declare-fun tp_is_empty!5461 () Bool)

(assert (=> b!212154 (= e!138064 tp_is_empty!5461)))

(declare-fun b!212155 () Bool)

(declare-fun res!103731 () Bool)

(assert (=> b!212155 (=> (not res!103731) (not e!138059))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6929 0))(
  ( (V!6930 (val!2775 Int)) )
))
(declare-datatypes ((ValueCell!2387 0))(
  ( (ValueCellFull!2387 (v!4769 V!6929)) (EmptyCell!2387) )
))
(declare-datatypes ((array!10126 0))(
  ( (array!10127 (arr!4806 (Array (_ BitVec 32) ValueCell!2387)) (size!5131 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10126)

(assert (=> b!212155 (= res!103731 (and (= (size!5131 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5130 _keys!825) (size!5131 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!9281 () Bool)

(declare-fun mapRes!9281 () Bool)

(declare-fun tp!19858 () Bool)

(declare-fun e!138060 () Bool)

(assert (=> mapNonEmpty!9281 (= mapRes!9281 (and tp!19858 e!138060))))

(declare-fun mapRest!9281 () (Array (_ BitVec 32) ValueCell!2387))

(declare-fun mapKey!9281 () (_ BitVec 32))

(declare-fun mapValue!9281 () ValueCell!2387)

(assert (=> mapNonEmpty!9281 (= (arr!4806 _values!649) (store mapRest!9281 mapKey!9281 mapValue!9281))))

(declare-fun b!212156 () Bool)

(declare-fun res!103728 () Bool)

(assert (=> b!212156 (=> (not res!103728) (not e!138059))))

(declare-datatypes ((List!3109 0))(
  ( (Nil!3106) (Cons!3105 (h!3747 (_ BitVec 64)) (t!8062 List!3109)) )
))
(declare-fun arrayNoDuplicates!0 (array!10124 (_ BitVec 32) List!3109) Bool)

(assert (=> b!212156 (= res!103728 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3106))))

(declare-fun res!103729 () Bool)

(assert (=> start!21100 (=> (not res!103729) (not e!138059))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21100 (= res!103729 (validMask!0 mask!1149))))

(assert (=> start!21100 e!138059))

(declare-fun e!138062 () Bool)

(declare-fun array_inv!3169 (array!10126) Bool)

(assert (=> start!21100 (and (array_inv!3169 _values!649) e!138062)))

(assert (=> start!21100 true))

(assert (=> start!21100 tp_is_empty!5461))

(declare-fun array_inv!3170 (array!10124) Bool)

(assert (=> start!21100 (array_inv!3170 _keys!825)))

(assert (=> start!21100 tp!19859))

(declare-fun mapIsEmpty!9281 () Bool)

(assert (=> mapIsEmpty!9281 mapRes!9281))

(declare-fun b!212157 () Bool)

(declare-fun e!138063 () Bool)

(assert (=> b!212157 (= e!138059 (not e!138063))))

(declare-fun res!103734 () Bool)

(assert (=> b!212157 (=> res!103734 e!138063)))

(assert (=> b!212157 (= res!103734 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!4196 0))(
  ( (tuple2!4197 (_1!2108 (_ BitVec 64)) (_2!2108 V!6929)) )
))
(declare-datatypes ((List!3110 0))(
  ( (Nil!3107) (Cons!3106 (h!3748 tuple2!4196) (t!8063 List!3110)) )
))
(declare-datatypes ((ListLongMap!3123 0))(
  ( (ListLongMap!3124 (toList!1577 List!3110)) )
))
(declare-fun lt!109354 () ListLongMap!3123)

(declare-fun zeroValue!615 () V!6929)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6929)

(declare-fun getCurrentListMap!1105 (array!10124 array!10126 (_ BitVec 32) (_ BitVec 32) V!6929 V!6929 (_ BitVec 32) Int) ListLongMap!3123)

(assert (=> b!212157 (= lt!109354 (getCurrentListMap!1105 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109356 () ListLongMap!3123)

(declare-fun lt!109355 () array!10126)

(assert (=> b!212157 (= lt!109356 (getCurrentListMap!1105 _keys!825 lt!109355 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109353 () ListLongMap!3123)

(declare-fun lt!109352 () ListLongMap!3123)

(assert (=> b!212157 (and (= lt!109353 lt!109352) (= lt!109352 lt!109353))))

(declare-fun v!520 () V!6929)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun lt!109357 () ListLongMap!3123)

(declare-fun +!570 (ListLongMap!3123 tuple2!4196) ListLongMap!3123)

(assert (=> b!212157 (= lt!109352 (+!570 lt!109357 (tuple2!4197 k!843 v!520)))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6441 0))(
  ( (Unit!6442) )
))
(declare-fun lt!109351 () Unit!6441)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!222 (array!10124 array!10126 (_ BitVec 32) (_ BitVec 32) V!6929 V!6929 (_ BitVec 32) (_ BitVec 64) V!6929 (_ BitVec 32) Int) Unit!6441)

(assert (=> b!212157 (= lt!109351 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!222 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!504 (array!10124 array!10126 (_ BitVec 32) (_ BitVec 32) V!6929 V!6929 (_ BitVec 32) Int) ListLongMap!3123)

(assert (=> b!212157 (= lt!109353 (getCurrentListMapNoExtraKeys!504 _keys!825 lt!109355 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!212157 (= lt!109355 (array!10127 (store (arr!4806 _values!649) i!601 (ValueCellFull!2387 v!520)) (size!5131 _values!649)))))

(assert (=> b!212157 (= lt!109357 (getCurrentListMapNoExtraKeys!504 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!212158 () Bool)

(declare-fun res!103735 () Bool)

(assert (=> b!212158 (=> (not res!103735) (not e!138059))))

(assert (=> b!212158 (= res!103735 (= (select (arr!4805 _keys!825) i!601) k!843))))

(declare-fun b!212159 () Bool)

(declare-fun res!103732 () Bool)

(assert (=> b!212159 (=> (not res!103732) (not e!138059))))

(assert (=> b!212159 (= res!103732 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5130 _keys!825))))))

(declare-fun b!212160 () Bool)

(assert (=> b!212160 (= e!138063 (= lt!109356 (+!570 lt!109353 (tuple2!4197 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun b!212161 () Bool)

(declare-fun res!103733 () Bool)

(assert (=> b!212161 (=> (not res!103733) (not e!138059))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!212161 (= res!103733 (validKeyInArray!0 k!843))))

(declare-fun b!212162 () Bool)

(assert (=> b!212162 (= e!138060 tp_is_empty!5461)))

(declare-fun b!212163 () Bool)

(assert (=> b!212163 (= e!138062 (and e!138064 mapRes!9281))))

(declare-fun condMapEmpty!9281 () Bool)

(declare-fun mapDefault!9281 () ValueCell!2387)

