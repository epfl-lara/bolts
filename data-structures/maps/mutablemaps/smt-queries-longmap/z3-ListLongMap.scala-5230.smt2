; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70470 () Bool)

(assert start!70470)

(declare-fun b_free!12789 () Bool)

(declare-fun b_next!12789 () Bool)

(assert (=> start!70470 (= b_free!12789 (not b_next!12789))))

(declare-fun tp!45097 () Bool)

(declare-fun b_and!21627 () Bool)

(assert (=> start!70470 (= tp!45097 b_and!21627)))

(declare-fun b!818124 () Bool)

(declare-fun e!454150 () Bool)

(assert (=> b!818124 (= e!454150 true)))

(declare-datatypes ((V!24333 0))(
  ( (V!24334 (val!7297 Int)) )
))
(declare-fun zeroValueBefore!34 () V!24333)

(declare-datatypes ((array!45172 0))(
  ( (array!45173 (arr!21637 (Array (_ BitVec 32) (_ BitVec 64))) (size!22058 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45172)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24333)

(declare-datatypes ((ValueCell!6834 0))(
  ( (ValueCellFull!6834 (v!9722 V!24333)) (EmptyCell!6834) )
))
(declare-datatypes ((array!45174 0))(
  ( (array!45175 (arr!21638 (Array (_ BitVec 32) ValueCell!6834)) (size!22059 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45174)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9606 0))(
  ( (tuple2!9607 (_1!4813 (_ BitVec 64)) (_2!4813 V!24333)) )
))
(declare-datatypes ((List!15470 0))(
  ( (Nil!15467) (Cons!15466 (h!16595 tuple2!9606) (t!21805 List!15470)) )
))
(declare-datatypes ((ListLongMap!8443 0))(
  ( (ListLongMap!8444 (toList!4237 List!15470)) )
))
(declare-fun lt!366597 () ListLongMap!8443)

(declare-fun getCurrentListMap!2397 (array!45172 array!45174 (_ BitVec 32) (_ BitVec 32) V!24333 V!24333 (_ BitVec 32) Int) ListLongMap!8443)

(assert (=> b!818124 (= lt!366597 (getCurrentListMap!2397 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818125 () Bool)

(declare-fun res!558484 () Bool)

(declare-fun e!454148 () Bool)

(assert (=> b!818125 (=> (not res!558484) (not e!454148))))

(declare-datatypes ((List!15471 0))(
  ( (Nil!15468) (Cons!15467 (h!16596 (_ BitVec 64)) (t!21806 List!15471)) )
))
(declare-fun arrayNoDuplicates!0 (array!45172 (_ BitVec 32) List!15471) Bool)

(assert (=> b!818125 (= res!558484 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15468))))

(declare-fun b!818126 () Bool)

(declare-fun e!454152 () Bool)

(declare-fun e!454147 () Bool)

(declare-fun mapRes!23344 () Bool)

(assert (=> b!818126 (= e!454152 (and e!454147 mapRes!23344))))

(declare-fun condMapEmpty!23344 () Bool)

(declare-fun mapDefault!23344 () ValueCell!6834)

(assert (=> b!818126 (= condMapEmpty!23344 (= (arr!21638 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6834)) mapDefault!23344)))))

(declare-fun b!818128 () Bool)

(declare-fun e!454151 () Bool)

(declare-fun tp_is_empty!14499 () Bool)

(assert (=> b!818128 (= e!454151 tp_is_empty!14499)))

(declare-fun b!818129 () Bool)

(assert (=> b!818129 (= e!454148 (not e!454150))))

(declare-fun res!558481 () Bool)

(assert (=> b!818129 (=> res!558481 e!454150)))

(assert (=> b!818129 (= res!558481 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!366596 () ListLongMap!8443)

(declare-fun lt!366595 () ListLongMap!8443)

(assert (=> b!818129 (= lt!366596 lt!366595)))

(declare-fun zeroValueAfter!34 () V!24333)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27924 0))(
  ( (Unit!27925) )
))
(declare-fun lt!366594 () Unit!27924)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!397 (array!45172 array!45174 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24333 V!24333 V!24333 V!24333 (_ BitVec 32) Int) Unit!27924)

(assert (=> b!818129 (= lt!366594 (lemmaNoChangeToArrayThenSameMapNoExtras!397 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2281 (array!45172 array!45174 (_ BitVec 32) (_ BitVec 32) V!24333 V!24333 (_ BitVec 32) Int) ListLongMap!8443)

(assert (=> b!818129 (= lt!366595 (getCurrentListMapNoExtraKeys!2281 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818129 (= lt!366596 (getCurrentListMapNoExtraKeys!2281 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23344 () Bool)

(declare-fun tp!45096 () Bool)

(assert (=> mapNonEmpty!23344 (= mapRes!23344 (and tp!45096 e!454151))))

(declare-fun mapKey!23344 () (_ BitVec 32))

(declare-fun mapValue!23344 () ValueCell!6834)

(declare-fun mapRest!23344 () (Array (_ BitVec 32) ValueCell!6834))

(assert (=> mapNonEmpty!23344 (= (arr!21638 _values!788) (store mapRest!23344 mapKey!23344 mapValue!23344))))

(declare-fun b!818130 () Bool)

(assert (=> b!818130 (= e!454147 tp_is_empty!14499)))

(declare-fun b!818127 () Bool)

(declare-fun res!558480 () Bool)

(assert (=> b!818127 (=> (not res!558480) (not e!454148))))

(assert (=> b!818127 (= res!558480 (and (= (size!22059 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22058 _keys!976) (size!22059 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!558483 () Bool)

(assert (=> start!70470 (=> (not res!558483) (not e!454148))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70470 (= res!558483 (validMask!0 mask!1312))))

(assert (=> start!70470 e!454148))

(assert (=> start!70470 tp_is_empty!14499))

(declare-fun array_inv!17275 (array!45172) Bool)

(assert (=> start!70470 (array_inv!17275 _keys!976)))

(assert (=> start!70470 true))

(declare-fun array_inv!17276 (array!45174) Bool)

(assert (=> start!70470 (and (array_inv!17276 _values!788) e!454152)))

(assert (=> start!70470 tp!45097))

(declare-fun mapIsEmpty!23344 () Bool)

(assert (=> mapIsEmpty!23344 mapRes!23344))

(declare-fun b!818131 () Bool)

(declare-fun res!558482 () Bool)

(assert (=> b!818131 (=> (not res!558482) (not e!454148))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45172 (_ BitVec 32)) Bool)

(assert (=> b!818131 (= res!558482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!70470 res!558483) b!818127))

(assert (= (and b!818127 res!558480) b!818131))

(assert (= (and b!818131 res!558482) b!818125))

(assert (= (and b!818125 res!558484) b!818129))

(assert (= (and b!818129 (not res!558481)) b!818124))

(assert (= (and b!818126 condMapEmpty!23344) mapIsEmpty!23344))

(assert (= (and b!818126 (not condMapEmpty!23344)) mapNonEmpty!23344))

(get-info :version)

(assert (= (and mapNonEmpty!23344 ((_ is ValueCellFull!6834) mapValue!23344)) b!818128))

(assert (= (and b!818126 ((_ is ValueCellFull!6834) mapDefault!23344)) b!818130))

(assert (= start!70470 b!818126))

(declare-fun m!759659 () Bool)

(assert (=> b!818125 m!759659))

(declare-fun m!759661 () Bool)

(assert (=> b!818124 m!759661))

(declare-fun m!759663 () Bool)

(assert (=> b!818131 m!759663))

(declare-fun m!759665 () Bool)

(assert (=> mapNonEmpty!23344 m!759665))

(declare-fun m!759667 () Bool)

(assert (=> start!70470 m!759667))

(declare-fun m!759669 () Bool)

(assert (=> start!70470 m!759669))

(declare-fun m!759671 () Bool)

(assert (=> start!70470 m!759671))

(declare-fun m!759673 () Bool)

(assert (=> b!818129 m!759673))

(declare-fun m!759675 () Bool)

(assert (=> b!818129 m!759675))

(declare-fun m!759677 () Bool)

(assert (=> b!818129 m!759677))

(check-sat b_and!21627 tp_is_empty!14499 (not start!70470) (not mapNonEmpty!23344) (not b!818131) (not b!818124) (not b_next!12789) (not b!818129) (not b!818125))
(check-sat b_and!21627 (not b_next!12789))
