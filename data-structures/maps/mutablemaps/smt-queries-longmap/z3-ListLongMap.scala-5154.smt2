; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69914 () Bool)

(assert start!69914)

(declare-fun res!555256 () Bool)

(declare-fun e!450048 () Bool)

(assert (=> start!69914 (=> (not res!555256) (not e!450048))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69914 (= res!555256 (validMask!0 mask!1312))))

(assert (=> start!69914 e!450048))

(declare-datatypes ((array!44282 0))(
  ( (array!44283 (arr!21199 (Array (_ BitVec 32) (_ BitVec 64))) (size!21620 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44282)

(declare-fun array_inv!16959 (array!44282) Bool)

(assert (=> start!69914 (array_inv!16959 _keys!976)))

(assert (=> start!69914 true))

(declare-datatypes ((V!23725 0))(
  ( (V!23726 (val!7069 Int)) )
))
(declare-datatypes ((ValueCell!6606 0))(
  ( (ValueCellFull!6606 (v!9492 V!23725)) (EmptyCell!6606) )
))
(declare-datatypes ((array!44284 0))(
  ( (array!44285 (arr!21200 (Array (_ BitVec 32) ValueCell!6606)) (size!21621 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44284)

(declare-fun e!450049 () Bool)

(declare-fun array_inv!16960 (array!44284) Bool)

(assert (=> start!69914 (and (array_inv!16960 _values!788) e!450049)))

(declare-fun mapIsEmpty!22639 () Bool)

(declare-fun mapRes!22639 () Bool)

(assert (=> mapIsEmpty!22639 mapRes!22639))

(declare-fun mapNonEmpty!22639 () Bool)

(declare-fun tp!43747 () Bool)

(declare-fun e!450050 () Bool)

(assert (=> mapNonEmpty!22639 (= mapRes!22639 (and tp!43747 e!450050))))

(declare-fun mapValue!22639 () ValueCell!6606)

(declare-fun mapKey!22639 () (_ BitVec 32))

(declare-fun mapRest!22639 () (Array (_ BitVec 32) ValueCell!6606))

(assert (=> mapNonEmpty!22639 (= (arr!21200 _values!788) (store mapRest!22639 mapKey!22639 mapValue!22639))))

(declare-fun b!812415 () Bool)

(declare-fun res!555257 () Bool)

(assert (=> b!812415 (=> (not res!555257) (not e!450048))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44282 (_ BitVec 32)) Bool)

(assert (=> b!812415 (= res!555257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812416 () Bool)

(assert (=> b!812416 (= e!450048 false)))

(declare-fun lt!364106 () Bool)

(declare-datatypes ((List!15138 0))(
  ( (Nil!15135) (Cons!15134 (h!16263 (_ BitVec 64)) (t!21461 List!15138)) )
))
(declare-fun arrayNoDuplicates!0 (array!44282 (_ BitVec 32) List!15138) Bool)

(assert (=> b!812416 (= lt!364106 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15135))))

(declare-fun b!812417 () Bool)

(declare-fun tp_is_empty!14043 () Bool)

(assert (=> b!812417 (= e!450050 tp_is_empty!14043)))

(declare-fun b!812418 () Bool)

(declare-fun res!555255 () Bool)

(assert (=> b!812418 (=> (not res!555255) (not e!450048))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812418 (= res!555255 (and (= (size!21621 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21620 _keys!976) (size!21621 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812419 () Bool)

(declare-fun e!450046 () Bool)

(assert (=> b!812419 (= e!450049 (and e!450046 mapRes!22639))))

(declare-fun condMapEmpty!22639 () Bool)

(declare-fun mapDefault!22639 () ValueCell!6606)

(assert (=> b!812419 (= condMapEmpty!22639 (= (arr!21200 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6606)) mapDefault!22639)))))

(declare-fun b!812420 () Bool)

(assert (=> b!812420 (= e!450046 tp_is_empty!14043)))

(assert (= (and start!69914 res!555256) b!812418))

(assert (= (and b!812418 res!555255) b!812415))

(assert (= (and b!812415 res!555257) b!812416))

(assert (= (and b!812419 condMapEmpty!22639) mapIsEmpty!22639))

(assert (= (and b!812419 (not condMapEmpty!22639)) mapNonEmpty!22639))

(get-info :version)

(assert (= (and mapNonEmpty!22639 ((_ is ValueCellFull!6606) mapValue!22639)) b!812417))

(assert (= (and b!812419 ((_ is ValueCellFull!6606) mapDefault!22639)) b!812420))

(assert (= start!69914 b!812419))

(declare-fun m!754851 () Bool)

(assert (=> start!69914 m!754851))

(declare-fun m!754853 () Bool)

(assert (=> start!69914 m!754853))

(declare-fun m!754855 () Bool)

(assert (=> start!69914 m!754855))

(declare-fun m!754857 () Bool)

(assert (=> mapNonEmpty!22639 m!754857))

(declare-fun m!754859 () Bool)

(assert (=> b!812415 m!754859))

(declare-fun m!754861 () Bool)

(assert (=> b!812416 m!754861))

(check-sat (not b!812416) (not b!812415) (not start!69914) tp_is_empty!14043 (not mapNonEmpty!22639))
(check-sat)
