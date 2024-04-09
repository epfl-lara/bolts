; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42050 () Bool)

(assert start!42050)

(declare-fun b_free!11595 () Bool)

(declare-fun b_next!11595 () Bool)

(assert (=> start!42050 (= b_free!11595 (not b_next!11595))))

(declare-fun tp!40804 () Bool)

(declare-fun b_and!20023 () Bool)

(assert (=> start!42050 (= tp!40804 b_and!20023)))

(declare-fun b!469178 () Bool)

(declare-fun e!274722 () Bool)

(declare-fun e!274721 () Bool)

(assert (=> b!469178 (= e!274722 (not e!274721))))

(declare-fun res!280437 () Bool)

(assert (=> b!469178 (=> res!280437 e!274721)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!469178 (= res!280437 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18469 0))(
  ( (V!18470 (val!6556 Int)) )
))
(declare-datatypes ((tuple2!8604 0))(
  ( (tuple2!8605 (_1!4312 (_ BitVec 64)) (_2!4312 V!18469)) )
))
(declare-datatypes ((List!8722 0))(
  ( (Nil!8719) (Cons!8718 (h!9574 tuple2!8604) (t!14690 List!8722)) )
))
(declare-datatypes ((ListLongMap!7531 0))(
  ( (ListLongMap!7532 (toList!3781 List!8722)) )
))
(declare-fun lt!212614 () ListLongMap!7531)

(declare-fun lt!212617 () ListLongMap!7531)

(assert (=> b!469178 (= lt!212614 lt!212617)))

(declare-fun minValueBefore!38 () V!18469)

(declare-fun zeroValue!794 () V!18469)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13686 0))(
  ( (Unit!13687) )
))
(declare-fun lt!212618 () Unit!13686)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29781 0))(
  ( (array!29782 (arr!14312 (Array (_ BitVec 32) (_ BitVec 64))) (size!14664 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29781)

(declare-datatypes ((ValueCell!6168 0))(
  ( (ValueCellFull!6168 (v!8842 V!18469)) (EmptyCell!6168) )
))
(declare-datatypes ((array!29783 0))(
  ( (array!29784 (arr!14313 (Array (_ BitVec 32) ValueCell!6168)) (size!14665 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29783)

(declare-fun minValueAfter!38 () V!18469)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!140 (array!29781 array!29783 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18469 V!18469 V!18469 V!18469 (_ BitVec 32) Int) Unit!13686)

(assert (=> b!469178 (= lt!212618 (lemmaNoChangeToArrayThenSameMapNoExtras!140 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1945 (array!29781 array!29783 (_ BitVec 32) (_ BitVec 32) V!18469 V!18469 (_ BitVec 32) Int) ListLongMap!7531)

(assert (=> b!469178 (= lt!212617 (getCurrentListMapNoExtraKeys!1945 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469178 (= lt!212614 (getCurrentListMapNoExtraKeys!1945 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469179 () Bool)

(declare-fun e!274725 () Bool)

(declare-fun e!274724 () Bool)

(declare-fun mapRes!21232 () Bool)

(assert (=> b!469179 (= e!274725 (and e!274724 mapRes!21232))))

(declare-fun condMapEmpty!21232 () Bool)

(declare-fun mapDefault!21232 () ValueCell!6168)

(assert (=> b!469179 (= condMapEmpty!21232 (= (arr!14313 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6168)) mapDefault!21232)))))

(declare-fun b!469180 () Bool)

(declare-fun e!274723 () Bool)

(declare-fun tp_is_empty!13023 () Bool)

(assert (=> b!469180 (= e!274723 tp_is_empty!13023)))

(declare-fun b!469181 () Bool)

(declare-fun res!280439 () Bool)

(assert (=> b!469181 (=> (not res!280439) (not e!274722))))

(assert (=> b!469181 (= res!280439 (and (= (size!14665 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14664 _keys!1025) (size!14665 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21232 () Bool)

(declare-fun tp!40803 () Bool)

(assert (=> mapNonEmpty!21232 (= mapRes!21232 (and tp!40803 e!274723))))

(declare-fun mapRest!21232 () (Array (_ BitVec 32) ValueCell!6168))

(declare-fun mapKey!21232 () (_ BitVec 32))

(declare-fun mapValue!21232 () ValueCell!6168)

(assert (=> mapNonEmpty!21232 (= (arr!14313 _values!833) (store mapRest!21232 mapKey!21232 mapValue!21232))))

(declare-fun b!469182 () Bool)

(declare-fun res!280440 () Bool)

(assert (=> b!469182 (=> (not res!280440) (not e!274722))))

(declare-datatypes ((List!8723 0))(
  ( (Nil!8720) (Cons!8719 (h!9575 (_ BitVec 64)) (t!14691 List!8723)) )
))
(declare-fun arrayNoDuplicates!0 (array!29781 (_ BitVec 32) List!8723) Bool)

(assert (=> b!469182 (= res!280440 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8720))))

(declare-fun mapIsEmpty!21232 () Bool)

(assert (=> mapIsEmpty!21232 mapRes!21232))

(declare-fun b!469183 () Bool)

(assert (=> b!469183 (= e!274724 tp_is_empty!13023)))

(declare-fun res!280441 () Bool)

(assert (=> start!42050 (=> (not res!280441) (not e!274722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42050 (= res!280441 (validMask!0 mask!1365))))

(assert (=> start!42050 e!274722))

(assert (=> start!42050 tp_is_empty!13023))

(assert (=> start!42050 tp!40804))

(assert (=> start!42050 true))

(declare-fun array_inv!10326 (array!29781) Bool)

(assert (=> start!42050 (array_inv!10326 _keys!1025)))

(declare-fun array_inv!10327 (array!29783) Bool)

(assert (=> start!42050 (and (array_inv!10327 _values!833) e!274725)))

(declare-fun b!469184 () Bool)

(declare-fun res!280438 () Bool)

(assert (=> b!469184 (=> (not res!280438) (not e!274722))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29781 (_ BitVec 32)) Bool)

(assert (=> b!469184 (= res!280438 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!469185 () Bool)

(assert (=> b!469185 (= e!274721 true)))

(declare-fun lt!212619 () tuple2!8604)

(declare-fun +!1669 (ListLongMap!7531 tuple2!8604) ListLongMap!7531)

(assert (=> b!469185 (= (+!1669 lt!212614 lt!212619) (+!1669 (+!1669 lt!212614 (tuple2!8605 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212619))))

(assert (=> b!469185 (= lt!212619 (tuple2!8605 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!212615 () Unit!13686)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!110 (ListLongMap!7531 (_ BitVec 64) V!18469 V!18469) Unit!13686)

(assert (=> b!469185 (= lt!212615 (addSameAsAddTwiceSameKeyDiffValues!110 lt!212614 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212613 () ListLongMap!7531)

(declare-fun getCurrentListMap!2191 (array!29781 array!29783 (_ BitVec 32) (_ BitVec 32) V!18469 V!18469 (_ BitVec 32) Int) ListLongMap!7531)

(assert (=> b!469185 (= lt!212613 (getCurrentListMap!2191 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212616 () ListLongMap!7531)

(assert (=> b!469185 (= lt!212616 (getCurrentListMap!2191 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!42050 res!280441) b!469181))

(assert (= (and b!469181 res!280439) b!469184))

(assert (= (and b!469184 res!280438) b!469182))

(assert (= (and b!469182 res!280440) b!469178))

(assert (= (and b!469178 (not res!280437)) b!469185))

(assert (= (and b!469179 condMapEmpty!21232) mapIsEmpty!21232))

(assert (= (and b!469179 (not condMapEmpty!21232)) mapNonEmpty!21232))

(get-info :version)

(assert (= (and mapNonEmpty!21232 ((_ is ValueCellFull!6168) mapValue!21232)) b!469180))

(assert (= (and b!469179 ((_ is ValueCellFull!6168) mapDefault!21232)) b!469183))

(assert (= start!42050 b!469179))

(declare-fun m!451361 () Bool)

(assert (=> b!469184 m!451361))

(declare-fun m!451363 () Bool)

(assert (=> start!42050 m!451363))

(declare-fun m!451365 () Bool)

(assert (=> start!42050 m!451365))

(declare-fun m!451367 () Bool)

(assert (=> start!42050 m!451367))

(declare-fun m!451369 () Bool)

(assert (=> b!469178 m!451369))

(declare-fun m!451371 () Bool)

(assert (=> b!469178 m!451371))

(declare-fun m!451373 () Bool)

(assert (=> b!469178 m!451373))

(declare-fun m!451375 () Bool)

(assert (=> mapNonEmpty!21232 m!451375))

(declare-fun m!451377 () Bool)

(assert (=> b!469182 m!451377))

(declare-fun m!451379 () Bool)

(assert (=> b!469185 m!451379))

(declare-fun m!451381 () Bool)

(assert (=> b!469185 m!451381))

(declare-fun m!451383 () Bool)

(assert (=> b!469185 m!451383))

(assert (=> b!469185 m!451379))

(declare-fun m!451385 () Bool)

(assert (=> b!469185 m!451385))

(declare-fun m!451387 () Bool)

(assert (=> b!469185 m!451387))

(declare-fun m!451389 () Bool)

(assert (=> b!469185 m!451389))

(check-sat (not b!469178) b_and!20023 (not mapNonEmpty!21232) tp_is_empty!13023 (not b!469182) (not b!469185) (not b_next!11595) (not b!469184) (not start!42050))
(check-sat b_and!20023 (not b_next!11595))
