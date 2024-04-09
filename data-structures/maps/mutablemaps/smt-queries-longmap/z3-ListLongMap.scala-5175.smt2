; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70062 () Bool)

(assert start!70062)

(declare-fun b_free!12459 () Bool)

(declare-fun b_next!12459 () Bool)

(assert (=> start!70062 (= b_free!12459 (not b_next!12459))))

(declare-fun tp!44092 () Bool)

(declare-fun b_and!21249 () Bool)

(assert (=> start!70062 (= tp!44092 b_and!21249)))

(declare-fun res!556024 () Bool)

(declare-fun e!451070 () Bool)

(assert (=> start!70062 (=> (not res!556024) (not e!451070))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70062 (= res!556024 (validMask!0 mask!1312))))

(assert (=> start!70062 e!451070))

(declare-fun tp_is_empty!14169 () Bool)

(assert (=> start!70062 tp_is_empty!14169))

(declare-datatypes ((array!44526 0))(
  ( (array!44527 (arr!21319 (Array (_ BitVec 32) (_ BitVec 64))) (size!21740 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44526)

(declare-fun array_inv!17051 (array!44526) Bool)

(assert (=> start!70062 (array_inv!17051 _keys!976)))

(assert (=> start!70062 true))

(declare-datatypes ((V!23893 0))(
  ( (V!23894 (val!7132 Int)) )
))
(declare-datatypes ((ValueCell!6669 0))(
  ( (ValueCellFull!6669 (v!9555 V!23893)) (EmptyCell!6669) )
))
(declare-datatypes ((array!44528 0))(
  ( (array!44529 (arr!21320 (Array (_ BitVec 32) ValueCell!6669)) (size!21741 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44528)

(declare-fun e!451069 () Bool)

(declare-fun array_inv!17052 (array!44528) Bool)

(assert (=> start!70062 (and (array_inv!17052 _values!788) e!451069)))

(assert (=> start!70062 tp!44092))

(declare-fun b!813815 () Bool)

(declare-fun e!451067 () Bool)

(assert (=> b!813815 (= e!451067 tp_is_empty!14169)))

(declare-fun mapIsEmpty!22834 () Bool)

(declare-fun mapRes!22834 () Bool)

(assert (=> mapIsEmpty!22834 mapRes!22834))

(declare-fun b!813816 () Bool)

(declare-fun res!556023 () Bool)

(assert (=> b!813816 (=> (not res!556023) (not e!451070))))

(declare-datatypes ((List!15225 0))(
  ( (Nil!15222) (Cons!15221 (h!16350 (_ BitVec 64)) (t!21550 List!15225)) )
))
(declare-fun arrayNoDuplicates!0 (array!44526 (_ BitVec 32) List!15225) Bool)

(assert (=> b!813816 (= res!556023 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15222))))

(declare-fun b!813817 () Bool)

(declare-fun e!451066 () Bool)

(assert (=> b!813817 (= e!451066 tp_is_empty!14169)))

(declare-fun b!813818 () Bool)

(declare-fun res!556022 () Bool)

(assert (=> b!813818 (=> (not res!556022) (not e!451070))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813818 (= res!556022 (and (= (size!21741 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21740 _keys!976) (size!21741 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!22834 () Bool)

(declare-fun tp!44091 () Bool)

(assert (=> mapNonEmpty!22834 (= mapRes!22834 (and tp!44091 e!451067))))

(declare-fun mapKey!22834 () (_ BitVec 32))

(declare-fun mapRest!22834 () (Array (_ BitVec 32) ValueCell!6669))

(declare-fun mapValue!22834 () ValueCell!6669)

(assert (=> mapNonEmpty!22834 (= (arr!21320 _values!788) (store mapRest!22834 mapKey!22834 mapValue!22834))))

(declare-fun b!813819 () Bool)

(declare-fun res!556025 () Bool)

(assert (=> b!813819 (=> (not res!556025) (not e!451070))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44526 (_ BitVec 32)) Bool)

(assert (=> b!813819 (= res!556025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!813820 () Bool)

(assert (=> b!813820 (= e!451070 false)))

(declare-datatypes ((tuple2!9348 0))(
  ( (tuple2!9349 (_1!4684 (_ BitVec 64)) (_2!4684 V!23893)) )
))
(declare-datatypes ((List!15226 0))(
  ( (Nil!15223) (Cons!15222 (h!16351 tuple2!9348) (t!21551 List!15226)) )
))
(declare-datatypes ((ListLongMap!8185 0))(
  ( (ListLongMap!8186 (toList!4108 List!15226)) )
))
(declare-fun lt!364394 () ListLongMap!8185)

(declare-fun zeroValueAfter!34 () V!23893)

(declare-fun minValue!754 () V!23893)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2157 (array!44526 array!44528 (_ BitVec 32) (_ BitVec 32) V!23893 V!23893 (_ BitVec 32) Int) ListLongMap!8185)

(assert (=> b!813820 (= lt!364394 (getCurrentListMapNoExtraKeys!2157 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!364393 () ListLongMap!8185)

(declare-fun zeroValueBefore!34 () V!23893)

(assert (=> b!813820 (= lt!364393 (getCurrentListMapNoExtraKeys!2157 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813821 () Bool)

(assert (=> b!813821 (= e!451069 (and e!451066 mapRes!22834))))

(declare-fun condMapEmpty!22834 () Bool)

(declare-fun mapDefault!22834 () ValueCell!6669)

(assert (=> b!813821 (= condMapEmpty!22834 (= (arr!21320 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6669)) mapDefault!22834)))))

(assert (= (and start!70062 res!556024) b!813818))

(assert (= (and b!813818 res!556022) b!813819))

(assert (= (and b!813819 res!556025) b!813816))

(assert (= (and b!813816 res!556023) b!813820))

(assert (= (and b!813821 condMapEmpty!22834) mapIsEmpty!22834))

(assert (= (and b!813821 (not condMapEmpty!22834)) mapNonEmpty!22834))

(get-info :version)

(assert (= (and mapNonEmpty!22834 ((_ is ValueCellFull!6669) mapValue!22834)) b!813815))

(assert (= (and b!813821 ((_ is ValueCellFull!6669) mapDefault!22834)) b!813817))

(assert (= start!70062 b!813821))

(declare-fun m!755811 () Bool)

(assert (=> b!813820 m!755811))

(declare-fun m!755813 () Bool)

(assert (=> b!813820 m!755813))

(declare-fun m!755815 () Bool)

(assert (=> start!70062 m!755815))

(declare-fun m!755817 () Bool)

(assert (=> start!70062 m!755817))

(declare-fun m!755819 () Bool)

(assert (=> start!70062 m!755819))

(declare-fun m!755821 () Bool)

(assert (=> mapNonEmpty!22834 m!755821))

(declare-fun m!755823 () Bool)

(assert (=> b!813819 m!755823))

(declare-fun m!755825 () Bool)

(assert (=> b!813816 m!755825))

(check-sat (not b!813820) b_and!21249 (not b!813819) (not b!813816) tp_is_empty!14169 (not b_next!12459) (not start!70062) (not mapNonEmpty!22834))
(check-sat b_and!21249 (not b_next!12459))
