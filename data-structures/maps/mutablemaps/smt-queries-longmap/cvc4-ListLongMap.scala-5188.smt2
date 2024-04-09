; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70156 () Bool)

(assert start!70156)

(declare-fun b_free!12539 () Bool)

(declare-fun b_next!12539 () Bool)

(assert (=> start!70156 (= b_free!12539 (not b_next!12539))))

(declare-fun tp!44335 () Bool)

(declare-fun b_and!21337 () Bool)

(assert (=> start!70156 (= tp!44335 b_and!21337)))

(declare-fun b!814740 () Bool)

(declare-fun e!451722 () Bool)

(declare-fun tp_is_empty!14249 () Bool)

(assert (=> b!814740 (= e!451722 tp_is_empty!14249)))

(declare-fun mapIsEmpty!22957 () Bool)

(declare-fun mapRes!22957 () Bool)

(assert (=> mapIsEmpty!22957 mapRes!22957))

(declare-fun b!814741 () Bool)

(declare-fun e!451723 () Bool)

(assert (=> b!814741 (= e!451723 (not true))))

(declare-datatypes ((V!23999 0))(
  ( (V!24000 (val!7172 Int)) )
))
(declare-datatypes ((tuple2!9410 0))(
  ( (tuple2!9411 (_1!4715 (_ BitVec 64)) (_2!4715 V!23999)) )
))
(declare-datatypes ((List!15282 0))(
  ( (Nil!15279) (Cons!15278 (h!16407 tuple2!9410) (t!21609 List!15282)) )
))
(declare-datatypes ((ListLongMap!8247 0))(
  ( (ListLongMap!8248 (toList!4139 List!15282)) )
))
(declare-fun lt!364762 () ListLongMap!8247)

(declare-fun lt!364764 () ListLongMap!8247)

(assert (=> b!814741 (= lt!364762 lt!364764)))

(declare-fun zeroValueBefore!34 () V!23999)

(declare-datatypes ((array!44686 0))(
  ( (array!44687 (arr!21398 (Array (_ BitVec 32) (_ BitVec 64))) (size!21819 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44686)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!23999)

(declare-fun minValue!754 () V!23999)

(declare-datatypes ((ValueCell!6709 0))(
  ( (ValueCellFull!6709 (v!9595 V!23999)) (EmptyCell!6709) )
))
(declare-datatypes ((array!44688 0))(
  ( (array!44689 (arr!21399 (Array (_ BitVec 32) ValueCell!6709)) (size!21820 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44688)

(declare-datatypes ((Unit!27734 0))(
  ( (Unit!27735) )
))
(declare-fun lt!364763 () Unit!27734)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!304 (array!44686 array!44688 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!23999 V!23999 V!23999 V!23999 (_ BitVec 32) Int) Unit!27734)

(assert (=> b!814741 (= lt!364763 (lemmaNoChangeToArrayThenSameMapNoExtras!304 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2188 (array!44686 array!44688 (_ BitVec 32) (_ BitVec 32) V!23999 V!23999 (_ BitVec 32) Int) ListLongMap!8247)

(assert (=> b!814741 (= lt!364764 (getCurrentListMapNoExtraKeys!2188 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814741 (= lt!364762 (getCurrentListMapNoExtraKeys!2188 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814742 () Bool)

(declare-fun res!556535 () Bool)

(assert (=> b!814742 (=> (not res!556535) (not e!451723))))

(declare-datatypes ((List!15283 0))(
  ( (Nil!15280) (Cons!15279 (h!16408 (_ BitVec 64)) (t!21610 List!15283)) )
))
(declare-fun arrayNoDuplicates!0 (array!44686 (_ BitVec 32) List!15283) Bool)

(assert (=> b!814742 (= res!556535 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15280))))

(declare-fun b!814743 () Bool)

(declare-fun res!556534 () Bool)

(assert (=> b!814743 (=> (not res!556534) (not e!451723))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44686 (_ BitVec 32)) Bool)

(assert (=> b!814743 (= res!556534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814744 () Bool)

(declare-fun res!556533 () Bool)

(assert (=> b!814744 (=> (not res!556533) (not e!451723))))

(assert (=> b!814744 (= res!556533 (and (= (size!21820 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21819 _keys!976) (size!21820 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!22957 () Bool)

(declare-fun tp!44334 () Bool)

(assert (=> mapNonEmpty!22957 (= mapRes!22957 (and tp!44334 e!451722))))

(declare-fun mapKey!22957 () (_ BitVec 32))

(declare-fun mapRest!22957 () (Array (_ BitVec 32) ValueCell!6709))

(declare-fun mapValue!22957 () ValueCell!6709)

(assert (=> mapNonEmpty!22957 (= (arr!21399 _values!788) (store mapRest!22957 mapKey!22957 mapValue!22957))))

(declare-fun b!814745 () Bool)

(declare-fun e!451721 () Bool)

(assert (=> b!814745 (= e!451721 tp_is_empty!14249)))

(declare-fun res!556536 () Bool)

(assert (=> start!70156 (=> (not res!556536) (not e!451723))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70156 (= res!556536 (validMask!0 mask!1312))))

(assert (=> start!70156 e!451723))

(assert (=> start!70156 tp_is_empty!14249))

(declare-fun array_inv!17099 (array!44686) Bool)

(assert (=> start!70156 (array_inv!17099 _keys!976)))

(assert (=> start!70156 true))

(declare-fun e!451725 () Bool)

(declare-fun array_inv!17100 (array!44688) Bool)

(assert (=> start!70156 (and (array_inv!17100 _values!788) e!451725)))

(assert (=> start!70156 tp!44335))

(declare-fun b!814746 () Bool)

(assert (=> b!814746 (= e!451725 (and e!451721 mapRes!22957))))

(declare-fun condMapEmpty!22957 () Bool)

(declare-fun mapDefault!22957 () ValueCell!6709)

