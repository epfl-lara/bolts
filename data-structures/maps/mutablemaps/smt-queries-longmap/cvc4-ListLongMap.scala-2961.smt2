; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42014 () Bool)

(assert start!42014)

(declare-fun b_free!11579 () Bool)

(declare-fun b_next!11579 () Bool)

(assert (=> start!42014 (= b_free!11579 (not b_next!11579))))

(declare-fun tp!40753 () Bool)

(declare-fun b_and!19995 () Bool)

(assert (=> start!42014 (= tp!40753 b_and!19995)))

(declare-fun res!280242 () Bool)

(declare-fun e!274465 () Bool)

(assert (=> start!42014 (=> (not res!280242) (not e!274465))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42014 (= res!280242 (validMask!0 mask!1365))))

(assert (=> start!42014 e!274465))

(declare-fun tp_is_empty!13007 () Bool)

(assert (=> start!42014 tp_is_empty!13007))

(assert (=> start!42014 tp!40753))

(assert (=> start!42014 true))

(declare-datatypes ((array!29747 0))(
  ( (array!29748 (arr!14296 (Array (_ BitVec 32) (_ BitVec 64))) (size!14648 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29747)

(declare-fun array_inv!10314 (array!29747) Bool)

(assert (=> start!42014 (array_inv!10314 _keys!1025)))

(declare-datatypes ((V!18447 0))(
  ( (V!18448 (val!6548 Int)) )
))
(declare-datatypes ((ValueCell!6160 0))(
  ( (ValueCellFull!6160 (v!8833 V!18447)) (EmptyCell!6160) )
))
(declare-datatypes ((array!29749 0))(
  ( (array!29750 (arr!14297 (Array (_ BitVec 32) ValueCell!6160)) (size!14649 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29749)

(declare-fun e!274470 () Bool)

(declare-fun array_inv!10315 (array!29749) Bool)

(assert (=> start!42014 (and (array_inv!10315 _values!833) e!274470)))

(declare-fun b!468807 () Bool)

(declare-fun e!274469 () Bool)

(assert (=> b!468807 (= e!274465 (not e!274469))))

(declare-fun res!280241 () Bool)

(assert (=> b!468807 (=> res!280241 e!274469)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!468807 (= res!280241 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8590 0))(
  ( (tuple2!8591 (_1!4305 (_ BitVec 64)) (_2!4305 V!18447)) )
))
(declare-datatypes ((List!8710 0))(
  ( (Nil!8707) (Cons!8706 (h!9562 tuple2!8590) (t!14676 List!8710)) )
))
(declare-datatypes ((ListLongMap!7517 0))(
  ( (ListLongMap!7518 (toList!3774 List!8710)) )
))
(declare-fun lt!212298 () ListLongMap!7517)

(declare-fun lt!212296 () ListLongMap!7517)

(assert (=> b!468807 (= lt!212298 lt!212296)))

(declare-fun minValueBefore!38 () V!18447)

(declare-fun zeroValue!794 () V!18447)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13670 0))(
  ( (Unit!13671) )
))
(declare-fun lt!212294 () Unit!13670)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18447)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!133 (array!29747 array!29749 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18447 V!18447 V!18447 V!18447 (_ BitVec 32) Int) Unit!13670)

(assert (=> b!468807 (= lt!212294 (lemmaNoChangeToArrayThenSameMapNoExtras!133 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1938 (array!29747 array!29749 (_ BitVec 32) (_ BitVec 32) V!18447 V!18447 (_ BitVec 32) Int) ListLongMap!7517)

(assert (=> b!468807 (= lt!212296 (getCurrentListMapNoExtraKeys!1938 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468807 (= lt!212298 (getCurrentListMapNoExtraKeys!1938 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21205 () Bool)

(declare-fun mapRes!21205 () Bool)

(declare-fun tp!40752 () Bool)

(declare-fun e!274466 () Bool)

(assert (=> mapNonEmpty!21205 (= mapRes!21205 (and tp!40752 e!274466))))

(declare-fun mapValue!21205 () ValueCell!6160)

(declare-fun mapKey!21205 () (_ BitVec 32))

(declare-fun mapRest!21205 () (Array (_ BitVec 32) ValueCell!6160))

(assert (=> mapNonEmpty!21205 (= (arr!14297 _values!833) (store mapRest!21205 mapKey!21205 mapValue!21205))))

(declare-fun b!468808 () Bool)

(assert (=> b!468808 (= e!274469 true)))

(declare-fun lt!212300 () tuple2!8590)

(declare-fun +!1663 (ListLongMap!7517 tuple2!8590) ListLongMap!7517)

(assert (=> b!468808 (= (+!1663 lt!212298 lt!212300) (+!1663 (+!1663 lt!212298 (tuple2!8591 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212300))))

(assert (=> b!468808 (= lt!212300 (tuple2!8591 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!212297 () Unit!13670)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!104 (ListLongMap!7517 (_ BitVec 64) V!18447 V!18447) Unit!13670)

(assert (=> b!468808 (= lt!212297 (addSameAsAddTwiceSameKeyDiffValues!104 lt!212298 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212299 () ListLongMap!7517)

(declare-fun getCurrentListMap!2185 (array!29747 array!29749 (_ BitVec 32) (_ BitVec 32) V!18447 V!18447 (_ BitVec 32) Int) ListLongMap!7517)

(assert (=> b!468808 (= lt!212299 (getCurrentListMap!2185 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212295 () ListLongMap!7517)

(assert (=> b!468808 (= lt!212295 (getCurrentListMap!2185 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468809 () Bool)

(declare-fun res!280244 () Bool)

(assert (=> b!468809 (=> (not res!280244) (not e!274465))))

(declare-datatypes ((List!8711 0))(
  ( (Nil!8708) (Cons!8707 (h!9563 (_ BitVec 64)) (t!14677 List!8711)) )
))
(declare-fun arrayNoDuplicates!0 (array!29747 (_ BitVec 32) List!8711) Bool)

(assert (=> b!468809 (= res!280244 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8708))))

(declare-fun b!468810 () Bool)

(declare-fun e!274468 () Bool)

(assert (=> b!468810 (= e!274470 (and e!274468 mapRes!21205))))

(declare-fun condMapEmpty!21205 () Bool)

(declare-fun mapDefault!21205 () ValueCell!6160)

