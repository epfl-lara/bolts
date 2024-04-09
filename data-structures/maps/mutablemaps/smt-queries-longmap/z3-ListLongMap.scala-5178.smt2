; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70080 () Bool)

(assert start!70080)

(declare-fun b_free!12477 () Bool)

(declare-fun b_next!12477 () Bool)

(assert (=> start!70080 (= b_free!12477 (not b_next!12477))))

(declare-fun tp!44145 () Bool)

(declare-fun b_and!21267 () Bool)

(assert (=> start!70080 (= tp!44145 b_and!21267)))

(declare-fun mapIsEmpty!22861 () Bool)

(declare-fun mapRes!22861 () Bool)

(assert (=> mapIsEmpty!22861 mapRes!22861))

(declare-fun b!814005 () Bool)

(declare-fun e!451205 () Bool)

(declare-fun e!451201 () Bool)

(assert (=> b!814005 (= e!451205 (and e!451201 mapRes!22861))))

(declare-fun condMapEmpty!22861 () Bool)

(declare-datatypes ((V!23917 0))(
  ( (V!23918 (val!7141 Int)) )
))
(declare-datatypes ((ValueCell!6678 0))(
  ( (ValueCellFull!6678 (v!9564 V!23917)) (EmptyCell!6678) )
))
(declare-datatypes ((array!44562 0))(
  ( (array!44563 (arr!21337 (Array (_ BitVec 32) ValueCell!6678)) (size!21758 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44562)

(declare-fun mapDefault!22861 () ValueCell!6678)

(assert (=> b!814005 (= condMapEmpty!22861 (= (arr!21337 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6678)) mapDefault!22861)))))

(declare-fun b!814006 () Bool)

(declare-fun res!556130 () Bool)

(declare-fun e!451203 () Bool)

(assert (=> b!814006 (=> (not res!556130) (not e!451203))))

(declare-datatypes ((array!44564 0))(
  ( (array!44565 (arr!21338 (Array (_ BitVec 32) (_ BitVec 64))) (size!21759 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44564)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814006 (= res!556130 (and (= (size!21758 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21759 _keys!976) (size!21758 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814007 () Bool)

(declare-fun tp_is_empty!14187 () Bool)

(assert (=> b!814007 (= e!451201 tp_is_empty!14187)))

(declare-fun b!814008 () Bool)

(assert (=> b!814008 (= e!451203 false)))

(declare-fun zeroValueAfter!34 () V!23917)

(declare-fun minValue!754 () V!23917)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9364 0))(
  ( (tuple2!9365 (_1!4692 (_ BitVec 64)) (_2!4692 V!23917)) )
))
(declare-datatypes ((List!15238 0))(
  ( (Nil!15235) (Cons!15234 (h!16363 tuple2!9364) (t!21563 List!15238)) )
))
(declare-datatypes ((ListLongMap!8201 0))(
  ( (ListLongMap!8202 (toList!4116 List!15238)) )
))
(declare-fun lt!364448 () ListLongMap!8201)

(declare-fun getCurrentListMapNoExtraKeys!2165 (array!44564 array!44562 (_ BitVec 32) (_ BitVec 32) V!23917 V!23917 (_ BitVec 32) Int) ListLongMap!8201)

(assert (=> b!814008 (= lt!364448 (getCurrentListMapNoExtraKeys!2165 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23917)

(declare-fun lt!364447 () ListLongMap!8201)

(assert (=> b!814008 (= lt!364447 (getCurrentListMapNoExtraKeys!2165 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!814009 () Bool)

(declare-fun res!556131 () Bool)

(assert (=> b!814009 (=> (not res!556131) (not e!451203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44564 (_ BitVec 32)) Bool)

(assert (=> b!814009 (= res!556131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!556132 () Bool)

(assert (=> start!70080 (=> (not res!556132) (not e!451203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70080 (= res!556132 (validMask!0 mask!1312))))

(assert (=> start!70080 e!451203))

(assert (=> start!70080 tp_is_empty!14187))

(declare-fun array_inv!17057 (array!44564) Bool)

(assert (=> start!70080 (array_inv!17057 _keys!976)))

(assert (=> start!70080 true))

(declare-fun array_inv!17058 (array!44562) Bool)

(assert (=> start!70080 (and (array_inv!17058 _values!788) e!451205)))

(assert (=> start!70080 tp!44145))

(declare-fun b!814004 () Bool)

(declare-fun res!556133 () Bool)

(assert (=> b!814004 (=> (not res!556133) (not e!451203))))

(declare-datatypes ((List!15239 0))(
  ( (Nil!15236) (Cons!15235 (h!16364 (_ BitVec 64)) (t!21564 List!15239)) )
))
(declare-fun arrayNoDuplicates!0 (array!44564 (_ BitVec 32) List!15239) Bool)

(assert (=> b!814004 (= res!556133 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15236))))

(declare-fun mapNonEmpty!22861 () Bool)

(declare-fun tp!44146 () Bool)

(declare-fun e!451204 () Bool)

(assert (=> mapNonEmpty!22861 (= mapRes!22861 (and tp!44146 e!451204))))

(declare-fun mapValue!22861 () ValueCell!6678)

(declare-fun mapRest!22861 () (Array (_ BitVec 32) ValueCell!6678))

(declare-fun mapKey!22861 () (_ BitVec 32))

(assert (=> mapNonEmpty!22861 (= (arr!21337 _values!788) (store mapRest!22861 mapKey!22861 mapValue!22861))))

(declare-fun b!814010 () Bool)

(assert (=> b!814010 (= e!451204 tp_is_empty!14187)))

(assert (= (and start!70080 res!556132) b!814006))

(assert (= (and b!814006 res!556130) b!814009))

(assert (= (and b!814009 res!556131) b!814004))

(assert (= (and b!814004 res!556133) b!814008))

(assert (= (and b!814005 condMapEmpty!22861) mapIsEmpty!22861))

(assert (= (and b!814005 (not condMapEmpty!22861)) mapNonEmpty!22861))

(get-info :version)

(assert (= (and mapNonEmpty!22861 ((_ is ValueCellFull!6678) mapValue!22861)) b!814010))

(assert (= (and b!814005 ((_ is ValueCellFull!6678) mapDefault!22861)) b!814007))

(assert (= start!70080 b!814005))

(declare-fun m!755955 () Bool)

(assert (=> b!814008 m!755955))

(declare-fun m!755957 () Bool)

(assert (=> b!814008 m!755957))

(declare-fun m!755959 () Bool)

(assert (=> mapNonEmpty!22861 m!755959))

(declare-fun m!755961 () Bool)

(assert (=> b!814009 m!755961))

(declare-fun m!755963 () Bool)

(assert (=> b!814004 m!755963))

(declare-fun m!755965 () Bool)

(assert (=> start!70080 m!755965))

(declare-fun m!755967 () Bool)

(assert (=> start!70080 m!755967))

(declare-fun m!755969 () Bool)

(assert (=> start!70080 m!755969))

(check-sat (not b_next!12477) b_and!21267 (not mapNonEmpty!22861) tp_is_empty!14187 (not b!814008) (not b!814009) (not b!814004) (not start!70080))
(check-sat b_and!21267 (not b_next!12477))
