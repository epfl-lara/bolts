; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70032 () Bool)

(assert start!70032)

(declare-fun b_free!12429 () Bool)

(declare-fun b_next!12429 () Bool)

(assert (=> start!70032 (= b_free!12429 (not b_next!12429))))

(declare-fun tp!44002 () Bool)

(declare-fun b_and!21219 () Bool)

(assert (=> start!70032 (= tp!44002 b_and!21219)))

(declare-fun b!813500 () Bool)

(declare-fun e!450844 () Bool)

(declare-fun tp_is_empty!14139 () Bool)

(assert (=> b!813500 (= e!450844 tp_is_empty!14139)))

(declare-fun res!555845 () Bool)

(declare-fun e!450843 () Bool)

(assert (=> start!70032 (=> (not res!555845) (not e!450843))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70032 (= res!555845 (validMask!0 mask!1312))))

(assert (=> start!70032 e!450843))

(assert (=> start!70032 tp_is_empty!14139))

(declare-datatypes ((array!44468 0))(
  ( (array!44469 (arr!21290 (Array (_ BitVec 32) (_ BitVec 64))) (size!21711 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44468)

(declare-fun array_inv!17031 (array!44468) Bool)

(assert (=> start!70032 (array_inv!17031 _keys!976)))

(assert (=> start!70032 true))

(declare-datatypes ((V!23853 0))(
  ( (V!23854 (val!7117 Int)) )
))
(declare-datatypes ((ValueCell!6654 0))(
  ( (ValueCellFull!6654 (v!9540 V!23853)) (EmptyCell!6654) )
))
(declare-datatypes ((array!44470 0))(
  ( (array!44471 (arr!21291 (Array (_ BitVec 32) ValueCell!6654)) (size!21712 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44470)

(declare-fun e!450842 () Bool)

(declare-fun array_inv!17032 (array!44470) Bool)

(assert (=> start!70032 (and (array_inv!17032 _values!788) e!450842)))

(assert (=> start!70032 tp!44002))

(declare-fun b!813501 () Bool)

(declare-fun res!555843 () Bool)

(assert (=> b!813501 (=> (not res!555843) (not e!450843))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!813501 (= res!555843 (and (= (size!21712 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21711 _keys!976) (size!21712 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813502 () Bool)

(assert (=> b!813502 (= e!450843 false)))

(declare-fun zeroValueAfter!34 () V!23853)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9326 0))(
  ( (tuple2!9327 (_1!4673 (_ BitVec 64)) (_2!4673 V!23853)) )
))
(declare-datatypes ((List!15201 0))(
  ( (Nil!15198) (Cons!15197 (h!16326 tuple2!9326) (t!21526 List!15201)) )
))
(declare-datatypes ((ListLongMap!8163 0))(
  ( (ListLongMap!8164 (toList!4097 List!15201)) )
))
(declare-fun lt!364304 () ListLongMap!8163)

(declare-fun minValue!754 () V!23853)

(declare-fun getCurrentListMapNoExtraKeys!2146 (array!44468 array!44470 (_ BitVec 32) (_ BitVec 32) V!23853 V!23853 (_ BitVec 32) Int) ListLongMap!8163)

(assert (=> b!813502 (= lt!364304 (getCurrentListMapNoExtraKeys!2146 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23853)

(declare-fun lt!364303 () ListLongMap!8163)

(assert (=> b!813502 (= lt!364303 (getCurrentListMapNoExtraKeys!2146 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813503 () Bool)

(declare-fun e!450841 () Bool)

(declare-fun mapRes!22789 () Bool)

(assert (=> b!813503 (= e!450842 (and e!450841 mapRes!22789))))

(declare-fun condMapEmpty!22789 () Bool)

(declare-fun mapDefault!22789 () ValueCell!6654)

(assert (=> b!813503 (= condMapEmpty!22789 (= (arr!21291 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6654)) mapDefault!22789)))))

(declare-fun mapNonEmpty!22789 () Bool)

(declare-fun tp!44001 () Bool)

(assert (=> mapNonEmpty!22789 (= mapRes!22789 (and tp!44001 e!450844))))

(declare-fun mapValue!22789 () ValueCell!6654)

(declare-fun mapRest!22789 () (Array (_ BitVec 32) ValueCell!6654))

(declare-fun mapKey!22789 () (_ BitVec 32))

(assert (=> mapNonEmpty!22789 (= (arr!21291 _values!788) (store mapRest!22789 mapKey!22789 mapValue!22789))))

(declare-fun b!813504 () Bool)

(declare-fun res!555842 () Bool)

(assert (=> b!813504 (=> (not res!555842) (not e!450843))))

(declare-datatypes ((List!15202 0))(
  ( (Nil!15199) (Cons!15198 (h!16327 (_ BitVec 64)) (t!21527 List!15202)) )
))
(declare-fun arrayNoDuplicates!0 (array!44468 (_ BitVec 32) List!15202) Bool)

(assert (=> b!813504 (= res!555842 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15199))))

(declare-fun b!813505 () Bool)

(assert (=> b!813505 (= e!450841 tp_is_empty!14139)))

(declare-fun b!813506 () Bool)

(declare-fun res!555844 () Bool)

(assert (=> b!813506 (=> (not res!555844) (not e!450843))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44468 (_ BitVec 32)) Bool)

(assert (=> b!813506 (= res!555844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!22789 () Bool)

(assert (=> mapIsEmpty!22789 mapRes!22789))

(assert (= (and start!70032 res!555845) b!813501))

(assert (= (and b!813501 res!555843) b!813506))

(assert (= (and b!813506 res!555844) b!813504))

(assert (= (and b!813504 res!555842) b!813502))

(assert (= (and b!813503 condMapEmpty!22789) mapIsEmpty!22789))

(assert (= (and b!813503 (not condMapEmpty!22789)) mapNonEmpty!22789))

(get-info :version)

(assert (= (and mapNonEmpty!22789 ((_ is ValueCellFull!6654) mapValue!22789)) b!813500))

(assert (= (and b!813503 ((_ is ValueCellFull!6654) mapDefault!22789)) b!813505))

(assert (= start!70032 b!813503))

(declare-fun m!755571 () Bool)

(assert (=> b!813502 m!755571))

(declare-fun m!755573 () Bool)

(assert (=> b!813502 m!755573))

(declare-fun m!755575 () Bool)

(assert (=> b!813504 m!755575))

(declare-fun m!755577 () Bool)

(assert (=> mapNonEmpty!22789 m!755577))

(declare-fun m!755579 () Bool)

(assert (=> b!813506 m!755579))

(declare-fun m!755581 () Bool)

(assert (=> start!70032 m!755581))

(declare-fun m!755583 () Bool)

(assert (=> start!70032 m!755583))

(declare-fun m!755585 () Bool)

(assert (=> start!70032 m!755585))

(check-sat b_and!21219 (not start!70032) (not mapNonEmpty!22789) tp_is_empty!14139 (not b!813504) (not b!813502) (not b_next!12429) (not b!813506))
(check-sat b_and!21219 (not b_next!12429))
