; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69902 () Bool)

(assert start!69902)

(declare-fun b!812307 () Bool)

(declare-fun e!449957 () Bool)

(declare-fun tp_is_empty!14031 () Bool)

(assert (=> b!812307 (= e!449957 tp_is_empty!14031)))

(declare-fun b!812308 () Bool)

(declare-fun e!449956 () Bool)

(assert (=> b!812308 (= e!449956 false)))

(declare-fun lt!364088 () Bool)

(declare-datatypes ((array!44262 0))(
  ( (array!44263 (arr!21189 (Array (_ BitVec 32) (_ BitVec 64))) (size!21610 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44262)

(declare-datatypes ((List!15134 0))(
  ( (Nil!15131) (Cons!15130 (h!16259 (_ BitVec 64)) (t!21457 List!15134)) )
))
(declare-fun arrayNoDuplicates!0 (array!44262 (_ BitVec 32) List!15134) Bool)

(assert (=> b!812308 (= lt!364088 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15131))))

(declare-fun b!812309 () Bool)

(declare-fun e!449958 () Bool)

(declare-fun e!449960 () Bool)

(declare-fun mapRes!22621 () Bool)

(assert (=> b!812309 (= e!449958 (and e!449960 mapRes!22621))))

(declare-fun condMapEmpty!22621 () Bool)

(declare-datatypes ((V!23709 0))(
  ( (V!23710 (val!7063 Int)) )
))
(declare-datatypes ((ValueCell!6600 0))(
  ( (ValueCellFull!6600 (v!9486 V!23709)) (EmptyCell!6600) )
))
(declare-datatypes ((array!44264 0))(
  ( (array!44265 (arr!21190 (Array (_ BitVec 32) ValueCell!6600)) (size!21611 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44264)

(declare-fun mapDefault!22621 () ValueCell!6600)

(assert (=> b!812309 (= condMapEmpty!22621 (= (arr!21190 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6600)) mapDefault!22621)))))

(declare-fun b!812310 () Bool)

(declare-fun res!555201 () Bool)

(assert (=> b!812310 (=> (not res!555201) (not e!449956))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44262 (_ BitVec 32)) Bool)

(assert (=> b!812310 (= res!555201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!22621 () Bool)

(assert (=> mapIsEmpty!22621 mapRes!22621))

(declare-fun b!812311 () Bool)

(assert (=> b!812311 (= e!449960 tp_is_empty!14031)))

(declare-fun mapNonEmpty!22621 () Bool)

(declare-fun tp!43729 () Bool)

(assert (=> mapNonEmpty!22621 (= mapRes!22621 (and tp!43729 e!449957))))

(declare-fun mapRest!22621 () (Array (_ BitVec 32) ValueCell!6600))

(declare-fun mapValue!22621 () ValueCell!6600)

(declare-fun mapKey!22621 () (_ BitVec 32))

(assert (=> mapNonEmpty!22621 (= (arr!21190 _values!788) (store mapRest!22621 mapKey!22621 mapValue!22621))))

(declare-fun res!555202 () Bool)

(assert (=> start!69902 (=> (not res!555202) (not e!449956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69902 (= res!555202 (validMask!0 mask!1312))))

(assert (=> start!69902 e!449956))

(declare-fun array_inv!16951 (array!44262) Bool)

(assert (=> start!69902 (array_inv!16951 _keys!976)))

(assert (=> start!69902 true))

(declare-fun array_inv!16952 (array!44264) Bool)

(assert (=> start!69902 (and (array_inv!16952 _values!788) e!449958)))

(declare-fun b!812312 () Bool)

(declare-fun res!555203 () Bool)

(assert (=> b!812312 (=> (not res!555203) (not e!449956))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!812312 (= res!555203 (and (= (size!21611 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21610 _keys!976) (size!21611 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!69902 res!555202) b!812312))

(assert (= (and b!812312 res!555203) b!812310))

(assert (= (and b!812310 res!555201) b!812308))

(assert (= (and b!812309 condMapEmpty!22621) mapIsEmpty!22621))

(assert (= (and b!812309 (not condMapEmpty!22621)) mapNonEmpty!22621))

(get-info :version)

(assert (= (and mapNonEmpty!22621 ((_ is ValueCellFull!6600) mapValue!22621)) b!812307))

(assert (= (and b!812309 ((_ is ValueCellFull!6600) mapDefault!22621)) b!812311))

(assert (= start!69902 b!812309))

(declare-fun m!754779 () Bool)

(assert (=> b!812308 m!754779))

(declare-fun m!754781 () Bool)

(assert (=> b!812310 m!754781))

(declare-fun m!754783 () Bool)

(assert (=> mapNonEmpty!22621 m!754783))

(declare-fun m!754785 () Bool)

(assert (=> start!69902 m!754785))

(declare-fun m!754787 () Bool)

(assert (=> start!69902 m!754787))

(declare-fun m!754789 () Bool)

(assert (=> start!69902 m!754789))

(check-sat (not start!69902) (not b!812310) tp_is_empty!14031 (not mapNonEmpty!22621) (not b!812308))
(check-sat)
