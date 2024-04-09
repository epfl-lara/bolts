; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69972 () Bool)

(assert start!69972)

(declare-fun b_free!12381 () Bool)

(declare-fun b_next!12381 () Bool)

(assert (=> start!69972 (= b_free!12381 (not b_next!12381))))

(declare-fun tp!43854 () Bool)

(declare-fun b_and!21167 () Bool)

(assert (=> start!69972 (= tp!43854 b_and!21167)))

(declare-fun res!555530 () Bool)

(declare-fun e!450435 () Bool)

(assert (=> start!69972 (=> (not res!555530) (not e!450435))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69972 (= res!555530 (validMask!0 mask!1312))))

(assert (=> start!69972 e!450435))

(declare-fun tp_is_empty!14091 () Bool)

(assert (=> start!69972 tp_is_empty!14091))

(declare-datatypes ((array!44372 0))(
  ( (array!44373 (arr!21243 (Array (_ BitVec 32) (_ BitVec 64))) (size!21664 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44372)

(declare-fun array_inv!16989 (array!44372) Bool)

(assert (=> start!69972 (array_inv!16989 _keys!976)))

(assert (=> start!69972 true))

(declare-datatypes ((V!23789 0))(
  ( (V!23790 (val!7093 Int)) )
))
(declare-datatypes ((ValueCell!6630 0))(
  ( (ValueCellFull!6630 (v!9516 V!23789)) (EmptyCell!6630) )
))
(declare-datatypes ((array!44374 0))(
  ( (array!44375 (arr!21244 (Array (_ BitVec 32) ValueCell!6630)) (size!21665 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44374)

(declare-fun e!450436 () Bool)

(declare-fun array_inv!16990 (array!44374) Bool)

(assert (=> start!69972 (and (array_inv!16990 _values!788) e!450436)))

(assert (=> start!69972 tp!43854))

(declare-fun b!812923 () Bool)

(declare-fun e!450437 () Bool)

(assert (=> b!812923 (= e!450437 tp_is_empty!14091)))

(declare-fun b!812924 () Bool)

(assert (=> b!812924 (= e!450435 false)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!23789)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9292 0))(
  ( (tuple2!9293 (_1!4656 (_ BitVec 64)) (_2!4656 V!23789)) )
))
(declare-datatypes ((List!15163 0))(
  ( (Nil!15160) (Cons!15159 (h!16288 tuple2!9292) (t!21486 List!15163)) )
))
(declare-datatypes ((ListLongMap!8129 0))(
  ( (ListLongMap!8130 (toList!4080 List!15163)) )
))
(declare-fun lt!364178 () ListLongMap!8129)

(declare-fun zeroValueBefore!34 () V!23789)

(declare-fun getCurrentListMapNoExtraKeys!2129 (array!44372 array!44374 (_ BitVec 32) (_ BitVec 32) V!23789 V!23789 (_ BitVec 32) Int) ListLongMap!8129)

(assert (=> b!812924 (= lt!364178 (getCurrentListMapNoExtraKeys!2129 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!812925 () Bool)

(declare-fun mapRes!22714 () Bool)

(assert (=> b!812925 (= e!450436 (and e!450437 mapRes!22714))))

(declare-fun condMapEmpty!22714 () Bool)

(declare-fun mapDefault!22714 () ValueCell!6630)

(assert (=> b!812925 (= condMapEmpty!22714 (= (arr!21244 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6630)) mapDefault!22714)))))

(declare-fun mapNonEmpty!22714 () Bool)

(declare-fun tp!43855 () Bool)

(declare-fun e!450433 () Bool)

(assert (=> mapNonEmpty!22714 (= mapRes!22714 (and tp!43855 e!450433))))

(declare-fun mapRest!22714 () (Array (_ BitVec 32) ValueCell!6630))

(declare-fun mapValue!22714 () ValueCell!6630)

(declare-fun mapKey!22714 () (_ BitVec 32))

(assert (=> mapNonEmpty!22714 (= (arr!21244 _values!788) (store mapRest!22714 mapKey!22714 mapValue!22714))))

(declare-fun b!812926 () Bool)

(assert (=> b!812926 (= e!450433 tp_is_empty!14091)))

(declare-fun b!812927 () Bool)

(declare-fun res!555529 () Bool)

(assert (=> b!812927 (=> (not res!555529) (not e!450435))))

(declare-datatypes ((List!15164 0))(
  ( (Nil!15161) (Cons!15160 (h!16289 (_ BitVec 64)) (t!21487 List!15164)) )
))
(declare-fun arrayNoDuplicates!0 (array!44372 (_ BitVec 32) List!15164) Bool)

(assert (=> b!812927 (= res!555529 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15161))))

(declare-fun b!812928 () Bool)

(declare-fun res!555527 () Bool)

(assert (=> b!812928 (=> (not res!555527) (not e!450435))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44372 (_ BitVec 32)) Bool)

(assert (=> b!812928 (= res!555527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812929 () Bool)

(declare-fun res!555528 () Bool)

(assert (=> b!812929 (=> (not res!555528) (not e!450435))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!812929 (= res!555528 (and (= (size!21665 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21664 _keys!976) (size!21665 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!22714 () Bool)

(assert (=> mapIsEmpty!22714 mapRes!22714))

(assert (= (and start!69972 res!555530) b!812929))

(assert (= (and b!812929 res!555528) b!812928))

(assert (= (and b!812928 res!555527) b!812927))

(assert (= (and b!812927 res!555529) b!812924))

(assert (= (and b!812925 condMapEmpty!22714) mapIsEmpty!22714))

(assert (= (and b!812925 (not condMapEmpty!22714)) mapNonEmpty!22714))

(get-info :version)

(assert (= (and mapNonEmpty!22714 ((_ is ValueCellFull!6630) mapValue!22714)) b!812926))

(assert (= (and b!812925 ((_ is ValueCellFull!6630) mapDefault!22714)) b!812923))

(assert (= start!69972 b!812925))

(declare-fun m!755177 () Bool)

(assert (=> b!812924 m!755177))

(declare-fun m!755179 () Bool)

(assert (=> b!812928 m!755179))

(declare-fun m!755181 () Bool)

(assert (=> b!812927 m!755181))

(declare-fun m!755183 () Bool)

(assert (=> mapNonEmpty!22714 m!755183))

(declare-fun m!755185 () Bool)

(assert (=> start!69972 m!755185))

(declare-fun m!755187 () Bool)

(assert (=> start!69972 m!755187))

(declare-fun m!755189 () Bool)

(assert (=> start!69972 m!755189))

(check-sat b_and!21167 (not b!812928) (not b_next!12381) (not mapNonEmpty!22714) (not b!812927) tp_is_empty!14091 (not b!812924) (not start!69972))
(check-sat b_and!21167 (not b_next!12381))
