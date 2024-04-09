; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69896 () Bool)

(assert start!69896)

(declare-fun b!812253 () Bool)

(declare-fun res!555176 () Bool)

(declare-fun e!449915 () Bool)

(assert (=> b!812253 (=> (not res!555176) (not e!449915))))

(declare-datatypes ((array!44250 0))(
  ( (array!44251 (arr!21183 (Array (_ BitVec 32) (_ BitVec 64))) (size!21604 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44250)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!23701 0))(
  ( (V!23702 (val!7060 Int)) )
))
(declare-datatypes ((ValueCell!6597 0))(
  ( (ValueCellFull!6597 (v!9483 V!23701)) (EmptyCell!6597) )
))
(declare-datatypes ((array!44252 0))(
  ( (array!44253 (arr!21184 (Array (_ BitVec 32) ValueCell!6597)) (size!21605 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44252)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812253 (= res!555176 (and (= (size!21605 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21604 _keys!976) (size!21605 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!22612 () Bool)

(declare-fun mapRes!22612 () Bool)

(assert (=> mapIsEmpty!22612 mapRes!22612))

(declare-fun b!812255 () Bool)

(declare-fun e!449911 () Bool)

(declare-fun e!449913 () Bool)

(assert (=> b!812255 (= e!449911 (and e!449913 mapRes!22612))))

(declare-fun condMapEmpty!22612 () Bool)

(declare-fun mapDefault!22612 () ValueCell!6597)

(assert (=> b!812255 (= condMapEmpty!22612 (= (arr!21184 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6597)) mapDefault!22612)))))

(declare-fun b!812256 () Bool)

(declare-fun e!449914 () Bool)

(declare-fun tp_is_empty!14025 () Bool)

(assert (=> b!812256 (= e!449914 tp_is_empty!14025)))

(declare-fun b!812257 () Bool)

(declare-fun res!555174 () Bool)

(assert (=> b!812257 (=> (not res!555174) (not e!449915))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44250 (_ BitVec 32)) Bool)

(assert (=> b!812257 (= res!555174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!22612 () Bool)

(declare-fun tp!43720 () Bool)

(assert (=> mapNonEmpty!22612 (= mapRes!22612 (and tp!43720 e!449914))))

(declare-fun mapValue!22612 () ValueCell!6597)

(declare-fun mapKey!22612 () (_ BitVec 32))

(declare-fun mapRest!22612 () (Array (_ BitVec 32) ValueCell!6597))

(assert (=> mapNonEmpty!22612 (= (arr!21184 _values!788) (store mapRest!22612 mapKey!22612 mapValue!22612))))

(declare-fun b!812258 () Bool)

(assert (=> b!812258 (= e!449913 tp_is_empty!14025)))

(declare-fun res!555175 () Bool)

(assert (=> start!69896 (=> (not res!555175) (not e!449915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69896 (= res!555175 (validMask!0 mask!1312))))

(assert (=> start!69896 e!449915))

(declare-fun array_inv!16947 (array!44250) Bool)

(assert (=> start!69896 (array_inv!16947 _keys!976)))

(assert (=> start!69896 true))

(declare-fun array_inv!16948 (array!44252) Bool)

(assert (=> start!69896 (and (array_inv!16948 _values!788) e!449911)))

(declare-fun b!812254 () Bool)

(assert (=> b!812254 (= e!449915 false)))

(declare-fun lt!364079 () Bool)

(declare-datatypes ((List!15132 0))(
  ( (Nil!15129) (Cons!15128 (h!16257 (_ BitVec 64)) (t!21455 List!15132)) )
))
(declare-fun arrayNoDuplicates!0 (array!44250 (_ BitVec 32) List!15132) Bool)

(assert (=> b!812254 (= lt!364079 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15129))))

(assert (= (and start!69896 res!555175) b!812253))

(assert (= (and b!812253 res!555176) b!812257))

(assert (= (and b!812257 res!555174) b!812254))

(assert (= (and b!812255 condMapEmpty!22612) mapIsEmpty!22612))

(assert (= (and b!812255 (not condMapEmpty!22612)) mapNonEmpty!22612))

(get-info :version)

(assert (= (and mapNonEmpty!22612 ((_ is ValueCellFull!6597) mapValue!22612)) b!812256))

(assert (= (and b!812255 ((_ is ValueCellFull!6597) mapDefault!22612)) b!812258))

(assert (= start!69896 b!812255))

(declare-fun m!754743 () Bool)

(assert (=> b!812257 m!754743))

(declare-fun m!754745 () Bool)

(assert (=> mapNonEmpty!22612 m!754745))

(declare-fun m!754747 () Bool)

(assert (=> start!69896 m!754747))

(declare-fun m!754749 () Bool)

(assert (=> start!69896 m!754749))

(declare-fun m!754751 () Bool)

(assert (=> start!69896 m!754751))

(declare-fun m!754753 () Bool)

(assert (=> b!812254 m!754753))

(check-sat tp_is_empty!14025 (not b!812257) (not mapNonEmpty!22612) (not b!812254) (not start!69896))
(check-sat)
