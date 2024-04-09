; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71164 () Bool)

(assert start!71164)

(declare-fun b_free!13307 () Bool)

(declare-fun b_next!13307 () Bool)

(assert (=> start!71164 (= b_free!13307 (not b_next!13307))))

(declare-fun tp!46681 () Bool)

(declare-fun b_and!22251 () Bool)

(assert (=> start!71164 (= tp!46681 b_and!22251)))

(declare-fun b!826115 () Bool)

(declare-fun e!460016 () Bool)

(assert (=> b!826115 (= e!460016 true)))

(declare-datatypes ((V!25023 0))(
  ( (V!25024 (val!7556 Int)) )
))
(declare-datatypes ((tuple2!10014 0))(
  ( (tuple2!10015 (_1!5017 (_ BitVec 64)) (_2!5017 V!25023)) )
))
(declare-fun lt!373682 () tuple2!10014)

(declare-fun lt!373686 () tuple2!10014)

(declare-datatypes ((List!15855 0))(
  ( (Nil!15852) (Cons!15851 (h!16980 tuple2!10014) (t!22210 List!15855)) )
))
(declare-datatypes ((ListLongMap!8851 0))(
  ( (ListLongMap!8852 (toList!4441 List!15855)) )
))
(declare-fun lt!373685 () ListLongMap!8851)

(declare-fun lt!373687 () ListLongMap!8851)

(declare-fun +!1902 (ListLongMap!8851 tuple2!10014) ListLongMap!8851)

(assert (=> b!826115 (= lt!373685 (+!1902 (+!1902 lt!373687 lt!373686) lt!373682))))

(declare-fun lt!373676 () ListLongMap!8851)

(declare-fun lt!373684 () ListLongMap!8851)

(declare-fun lt!373689 () ListLongMap!8851)

(assert (=> b!826115 (and (= lt!373676 lt!373684) (= lt!373689 lt!373684) (= lt!373689 lt!373676))))

(declare-fun lt!373683 () ListLongMap!8851)

(assert (=> b!826115 (= lt!373684 (+!1902 lt!373683 lt!373686))))

(declare-fun lt!373678 () ListLongMap!8851)

(assert (=> b!826115 (= lt!373676 (+!1902 lt!373678 lt!373686))))

(declare-fun zeroValueBefore!34 () V!25023)

(declare-fun zeroValueAfter!34 () V!25023)

(declare-datatypes ((Unit!28321 0))(
  ( (Unit!28322) )
))
(declare-fun lt!373681 () Unit!28321)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!227 (ListLongMap!8851 (_ BitVec 64) V!25023 V!25023) Unit!28321)

(assert (=> b!826115 (= lt!373681 (addSameAsAddTwiceSameKeyDiffValues!227 lt!373678 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!460017 () Bool)

(assert (=> b!826115 e!460017))

(declare-fun res!563252 () Bool)

(assert (=> b!826115 (=> (not res!563252) (not e!460017))))

(declare-fun lt!373688 () ListLongMap!8851)

(assert (=> b!826115 (= res!563252 (= lt!373688 lt!373683))))

(declare-fun lt!373677 () tuple2!10014)

(assert (=> b!826115 (= lt!373683 (+!1902 lt!373678 lt!373677))))

(assert (=> b!826115 (= lt!373678 (+!1902 lt!373687 lt!373682))))

(assert (=> b!826115 (= lt!373686 (tuple2!10015 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!460014 () Bool)

(assert (=> b!826115 e!460014))

(declare-fun res!563256 () Bool)

(assert (=> b!826115 (=> (not res!563256) (not e!460014))))

(assert (=> b!826115 (= res!563256 (= lt!373688 (+!1902 (+!1902 lt!373687 lt!373677) lt!373682)))))

(declare-fun minValue!754 () V!25023)

(assert (=> b!826115 (= lt!373682 (tuple2!10015 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826115 (= lt!373677 (tuple2!10015 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!46176 0))(
  ( (array!46177 (arr!22129 (Array (_ BitVec 32) (_ BitVec 64))) (size!22550 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46176)

(declare-datatypes ((ValueCell!7093 0))(
  ( (ValueCellFull!7093 (v!9986 V!25023)) (EmptyCell!7093) )
))
(declare-datatypes ((array!46178 0))(
  ( (array!46179 (arr!22130 (Array (_ BitVec 32) ValueCell!7093)) (size!22551 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46178)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2549 (array!46176 array!46178 (_ BitVec 32) (_ BitVec 32) V!25023 V!25023 (_ BitVec 32) Int) ListLongMap!8851)

(assert (=> b!826115 (= lt!373689 (getCurrentListMap!2549 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!826115 (= lt!373688 (getCurrentListMap!2549 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826116 () Bool)

(declare-fun e!460012 () Bool)

(assert (=> b!826116 (= e!460012 (not e!460016))))

(declare-fun res!563254 () Bool)

(assert (=> b!826116 (=> res!563254 e!460016)))

(assert (=> b!826116 (= res!563254 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!373680 () ListLongMap!8851)

(assert (=> b!826116 (= lt!373687 lt!373680)))

(declare-fun lt!373679 () Unit!28321)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!570 (array!46176 array!46178 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25023 V!25023 V!25023 V!25023 (_ BitVec 32) Int) Unit!28321)

(assert (=> b!826116 (= lt!373679 (lemmaNoChangeToArrayThenSameMapNoExtras!570 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2454 (array!46176 array!46178 (_ BitVec 32) (_ BitVec 32) V!25023 V!25023 (_ BitVec 32) Int) ListLongMap!8851)

(assert (=> b!826116 (= lt!373680 (getCurrentListMapNoExtraKeys!2454 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826116 (= lt!373687 (getCurrentListMapNoExtraKeys!2454 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826117 () Bool)

(declare-fun res!563257 () Bool)

(assert (=> b!826117 (=> (not res!563257) (not e!460012))))

(assert (=> b!826117 (= res!563257 (and (= (size!22551 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22550 _keys!976) (size!22551 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!826119 () Bool)

(assert (=> b!826119 (= e!460014 (= lt!373689 (+!1902 (+!1902 lt!373680 (tuple2!10015 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!373682)))))

(declare-fun b!826120 () Bool)

(declare-fun e!460015 () Bool)

(declare-fun tp_is_empty!15017 () Bool)

(assert (=> b!826120 (= e!460015 tp_is_empty!15017)))

(declare-fun mapNonEmpty!24151 () Bool)

(declare-fun mapRes!24151 () Bool)

(declare-fun tp!46680 () Bool)

(declare-fun e!460010 () Bool)

(assert (=> mapNonEmpty!24151 (= mapRes!24151 (and tp!46680 e!460010))))

(declare-fun mapValue!24151 () ValueCell!7093)

(declare-fun mapRest!24151 () (Array (_ BitVec 32) ValueCell!7093))

(declare-fun mapKey!24151 () (_ BitVec 32))

(assert (=> mapNonEmpty!24151 (= (arr!22130 _values!788) (store mapRest!24151 mapKey!24151 mapValue!24151))))

(declare-fun b!826121 () Bool)

(declare-fun res!563258 () Bool)

(assert (=> b!826121 (=> (not res!563258) (not e!460012))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46176 (_ BitVec 32)) Bool)

(assert (=> b!826121 (= res!563258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!826122 () Bool)

(declare-fun res!563255 () Bool)

(assert (=> b!826122 (=> (not res!563255) (not e!460012))))

(declare-datatypes ((List!15856 0))(
  ( (Nil!15853) (Cons!15852 (h!16981 (_ BitVec 64)) (t!22211 List!15856)) )
))
(declare-fun arrayNoDuplicates!0 (array!46176 (_ BitVec 32) List!15856) Bool)

(assert (=> b!826122 (= res!563255 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15853))))

(declare-fun b!826123 () Bool)

(assert (=> b!826123 (= e!460017 (= lt!373689 (+!1902 (+!1902 lt!373680 lt!373682) lt!373686)))))

(declare-fun b!826124 () Bool)

(assert (=> b!826124 (= e!460010 tp_is_empty!15017)))

(declare-fun mapIsEmpty!24151 () Bool)

(assert (=> mapIsEmpty!24151 mapRes!24151))

(declare-fun res!563253 () Bool)

(assert (=> start!71164 (=> (not res!563253) (not e!460012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71164 (= res!563253 (validMask!0 mask!1312))))

(assert (=> start!71164 e!460012))

(assert (=> start!71164 tp_is_empty!15017))

(declare-fun array_inv!17627 (array!46176) Bool)

(assert (=> start!71164 (array_inv!17627 _keys!976)))

(assert (=> start!71164 true))

(declare-fun e!460011 () Bool)

(declare-fun array_inv!17628 (array!46178) Bool)

(assert (=> start!71164 (and (array_inv!17628 _values!788) e!460011)))

(assert (=> start!71164 tp!46681))

(declare-fun b!826118 () Bool)

(assert (=> b!826118 (= e!460011 (and e!460015 mapRes!24151))))

(declare-fun condMapEmpty!24151 () Bool)

(declare-fun mapDefault!24151 () ValueCell!7093)

