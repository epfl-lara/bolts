; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69926 () Bool)

(assert start!69926)

(declare-fun b!812523 () Bool)

(declare-fun e!450136 () Bool)

(declare-fun tp_is_empty!14055 () Bool)

(assert (=> b!812523 (= e!450136 tp_is_empty!14055)))

(declare-fun mapIsEmpty!22657 () Bool)

(declare-fun mapRes!22657 () Bool)

(assert (=> mapIsEmpty!22657 mapRes!22657))

(declare-fun res!555311 () Bool)

(declare-fun e!450137 () Bool)

(assert (=> start!69926 (=> (not res!555311) (not e!450137))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69926 (= res!555311 (validMask!0 mask!1312))))

(assert (=> start!69926 e!450137))

(declare-datatypes ((array!44302 0))(
  ( (array!44303 (arr!21209 (Array (_ BitVec 32) (_ BitVec 64))) (size!21630 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44302)

(declare-fun array_inv!16967 (array!44302) Bool)

(assert (=> start!69926 (array_inv!16967 _keys!976)))

(assert (=> start!69926 true))

(declare-datatypes ((V!23741 0))(
  ( (V!23742 (val!7075 Int)) )
))
(declare-datatypes ((ValueCell!6612 0))(
  ( (ValueCellFull!6612 (v!9498 V!23741)) (EmptyCell!6612) )
))
(declare-datatypes ((array!44304 0))(
  ( (array!44305 (arr!21210 (Array (_ BitVec 32) ValueCell!6612)) (size!21631 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44304)

(declare-fun e!450138 () Bool)

(declare-fun array_inv!16968 (array!44304) Bool)

(assert (=> start!69926 (and (array_inv!16968 _values!788) e!450138)))

(declare-fun b!812524 () Bool)

(declare-fun e!450139 () Bool)

(assert (=> b!812524 (= e!450139 tp_is_empty!14055)))

(declare-fun b!812525 () Bool)

(assert (=> b!812525 (= e!450137 false)))

(declare-fun lt!364124 () Bool)

(declare-datatypes ((List!15142 0))(
  ( (Nil!15139) (Cons!15138 (h!16267 (_ BitVec 64)) (t!21465 List!15142)) )
))
(declare-fun arrayNoDuplicates!0 (array!44302 (_ BitVec 32) List!15142) Bool)

(assert (=> b!812525 (= lt!364124 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15139))))

(declare-fun mapNonEmpty!22657 () Bool)

(declare-fun tp!43765 () Bool)

(assert (=> mapNonEmpty!22657 (= mapRes!22657 (and tp!43765 e!450139))))

(declare-fun mapValue!22657 () ValueCell!6612)

(declare-fun mapKey!22657 () (_ BitVec 32))

(declare-fun mapRest!22657 () (Array (_ BitVec 32) ValueCell!6612))

(assert (=> mapNonEmpty!22657 (= (arr!21210 _values!788) (store mapRest!22657 mapKey!22657 mapValue!22657))))

(declare-fun b!812526 () Bool)

(declare-fun res!555309 () Bool)

(assert (=> b!812526 (=> (not res!555309) (not e!450137))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44302 (_ BitVec 32)) Bool)

(assert (=> b!812526 (= res!555309 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812527 () Bool)

(assert (=> b!812527 (= e!450138 (and e!450136 mapRes!22657))))

(declare-fun condMapEmpty!22657 () Bool)

(declare-fun mapDefault!22657 () ValueCell!6612)

(assert (=> b!812527 (= condMapEmpty!22657 (= (arr!21210 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6612)) mapDefault!22657)))))

(declare-fun b!812528 () Bool)

(declare-fun res!555310 () Bool)

(assert (=> b!812528 (=> (not res!555310) (not e!450137))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812528 (= res!555310 (and (= (size!21631 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21630 _keys!976) (size!21631 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!69926 res!555311) b!812528))

(assert (= (and b!812528 res!555310) b!812526))

(assert (= (and b!812526 res!555309) b!812525))

(assert (= (and b!812527 condMapEmpty!22657) mapIsEmpty!22657))

(assert (= (and b!812527 (not condMapEmpty!22657)) mapNonEmpty!22657))

(get-info :version)

(assert (= (and mapNonEmpty!22657 ((_ is ValueCellFull!6612) mapValue!22657)) b!812524))

(assert (= (and b!812527 ((_ is ValueCellFull!6612) mapDefault!22657)) b!812523))

(assert (= start!69926 b!812527))

(declare-fun m!754923 () Bool)

(assert (=> start!69926 m!754923))

(declare-fun m!754925 () Bool)

(assert (=> start!69926 m!754925))

(declare-fun m!754927 () Bool)

(assert (=> start!69926 m!754927))

(declare-fun m!754929 () Bool)

(assert (=> b!812525 m!754929))

(declare-fun m!754931 () Bool)

(assert (=> mapNonEmpty!22657 m!754931))

(declare-fun m!754933 () Bool)

(assert (=> b!812526 m!754933))

(check-sat (not b!812525) tp_is_empty!14055 (not b!812526) (not start!69926) (not mapNonEmpty!22657))
(check-sat)
