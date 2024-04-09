; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20604 () Bool)

(assert start!20604)

(declare-fun b_free!5251 () Bool)

(declare-fun b_next!5251 () Bool)

(assert (=> start!20604 (= b_free!5251 (not b_next!5251))))

(declare-fun tp!18784 () Bool)

(declare-fun b_and!12015 () Bool)

(assert (=> start!20604 (= tp!18784 b_and!12015)))

(declare-fun b!205120 () Bool)

(declare-fun res!99049 () Bool)

(declare-fun e!134164 () Bool)

(assert (=> b!205120 (=> (not res!99049) (not e!134164))))

(declare-datatypes ((array!9426 0))(
  ( (array!9427 (arr!4463 (Array (_ BitVec 32) (_ BitVec 64))) (size!4788 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9426)

(declare-datatypes ((List!2857 0))(
  ( (Nil!2854) (Cons!2853 (h!3495 (_ BitVec 64)) (t!7796 List!2857)) )
))
(declare-fun arrayNoDuplicates!0 (array!9426 (_ BitVec 32) List!2857) Bool)

(assert (=> b!205120 (= res!99049 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2854))))

(declare-fun b!205121 () Bool)

(declare-fun res!99044 () Bool)

(assert (=> b!205121 (=> (not res!99044) (not e!134164))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9426 (_ BitVec 32)) Bool)

(assert (=> b!205121 (= res!99044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!205122 () Bool)

(declare-fun e!134167 () Bool)

(assert (=> b!205122 (= e!134167 true)))

(declare-datatypes ((V!6457 0))(
  ( (V!6458 (val!2598 Int)) )
))
(declare-datatypes ((tuple2!3934 0))(
  ( (tuple2!3935 (_1!1977 (_ BitVec 64)) (_2!1977 V!6457)) )
))
(declare-datatypes ((List!2858 0))(
  ( (Nil!2855) (Cons!2854 (h!3496 tuple2!3934) (t!7797 List!2858)) )
))
(declare-datatypes ((ListLongMap!2861 0))(
  ( (ListLongMap!2862 (toList!1446 List!2858)) )
))
(declare-fun lt!104324 () ListLongMap!2861)

(declare-fun lt!104327 () ListLongMap!2861)

(declare-fun lt!104322 () tuple2!3934)

(declare-fun +!463 (ListLongMap!2861 tuple2!3934) ListLongMap!2861)

(assert (=> b!205122 (= lt!104324 (+!463 lt!104327 lt!104322))))

(declare-fun minValue!615 () V!6457)

(declare-datatypes ((Unit!6225 0))(
  ( (Unit!6226) )
))
(declare-fun lt!104319 () Unit!6225)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6457)

(declare-fun lt!104318 () ListLongMap!2861)

(declare-fun addCommutativeForDiffKeys!167 (ListLongMap!2861 (_ BitVec 64) V!6457 (_ BitVec 64) V!6457) Unit!6225)

(assert (=> b!205122 (= lt!104319 (addCommutativeForDiffKeys!167 lt!104318 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205123 () Bool)

(declare-fun e!134165 () Bool)

(assert (=> b!205123 (= e!134165 e!134167)))

(declare-fun res!99050 () Bool)

(assert (=> b!205123 (=> res!99050 e!134167)))

(assert (=> b!205123 (= res!99050 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!104321 () ListLongMap!2861)

(assert (=> b!205123 (= lt!104321 lt!104327)))

(declare-fun lt!104326 () tuple2!3934)

(assert (=> b!205123 (= lt!104327 (+!463 lt!104318 lt!104326))))

(declare-fun lt!104320 () ListLongMap!2861)

(assert (=> b!205123 (= lt!104320 lt!104324)))

(declare-fun lt!104328 () ListLongMap!2861)

(assert (=> b!205123 (= lt!104324 (+!463 lt!104328 lt!104326))))

(declare-fun lt!104323 () ListLongMap!2861)

(assert (=> b!205123 (= lt!104320 (+!463 lt!104323 lt!104326))))

(assert (=> b!205123 (= lt!104326 (tuple2!3935 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!205124 () Bool)

(declare-fun res!99046 () Bool)

(assert (=> b!205124 (=> (not res!99046) (not e!134164))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205124 (= res!99046 (validKeyInArray!0 k!843))))

(declare-fun b!205125 () Bool)

(declare-fun e!134169 () Bool)

(declare-fun tp_is_empty!5107 () Bool)

(assert (=> b!205125 (= e!134169 tp_is_empty!5107)))

(declare-fun b!205126 () Bool)

(assert (=> b!205126 (= e!134164 (not e!134165))))

(declare-fun res!99047 () Bool)

(assert (=> b!205126 (=> res!99047 e!134165)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!205126 (= res!99047 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!2210 0))(
  ( (ValueCellFull!2210 (v!4564 V!6457)) (EmptyCell!2210) )
))
(declare-datatypes ((array!9428 0))(
  ( (array!9429 (arr!4464 (Array (_ BitVec 32) ValueCell!2210)) (size!4789 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9428)

(declare-fun zeroValue!615 () V!6457)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1013 (array!9426 array!9428 (_ BitVec 32) (_ BitVec 32) V!6457 V!6457 (_ BitVec 32) Int) ListLongMap!2861)

(assert (=> b!205126 (= lt!104321 (getCurrentListMap!1013 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104329 () array!9428)

(assert (=> b!205126 (= lt!104320 (getCurrentListMap!1013 _keys!825 lt!104329 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205126 (and (= lt!104323 lt!104328) (= lt!104328 lt!104323))))

(assert (=> b!205126 (= lt!104328 (+!463 lt!104318 lt!104322))))

(assert (=> b!205126 (= lt!104322 (tuple2!3935 k!843 v!520))))

(declare-fun lt!104325 () Unit!6225)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!126 (array!9426 array!9428 (_ BitVec 32) (_ BitVec 32) V!6457 V!6457 (_ BitVec 32) (_ BitVec 64) V!6457 (_ BitVec 32) Int) Unit!6225)

(assert (=> b!205126 (= lt!104325 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!126 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!384 (array!9426 array!9428 (_ BitVec 32) (_ BitVec 32) V!6457 V!6457 (_ BitVec 32) Int) ListLongMap!2861)

(assert (=> b!205126 (= lt!104323 (getCurrentListMapNoExtraKeys!384 _keys!825 lt!104329 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205126 (= lt!104329 (array!9429 (store (arr!4464 _values!649) i!601 (ValueCellFull!2210 v!520)) (size!4789 _values!649)))))

(assert (=> b!205126 (= lt!104318 (getCurrentListMapNoExtraKeys!384 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!99048 () Bool)

(assert (=> start!20604 (=> (not res!99048) (not e!134164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20604 (= res!99048 (validMask!0 mask!1149))))

(assert (=> start!20604 e!134164))

(declare-fun e!134170 () Bool)

(declare-fun array_inv!2939 (array!9428) Bool)

(assert (=> start!20604 (and (array_inv!2939 _values!649) e!134170)))

(assert (=> start!20604 true))

(assert (=> start!20604 tp_is_empty!5107))

(declare-fun array_inv!2940 (array!9426) Bool)

(assert (=> start!20604 (array_inv!2940 _keys!825)))

(assert (=> start!20604 tp!18784))

(declare-fun b!205127 () Bool)

(declare-fun e!134168 () Bool)

(declare-fun mapRes!8729 () Bool)

(assert (=> b!205127 (= e!134170 (and e!134168 mapRes!8729))))

(declare-fun condMapEmpty!8729 () Bool)

(declare-fun mapDefault!8729 () ValueCell!2210)

