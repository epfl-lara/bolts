; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70044 () Bool)

(assert start!70044)

(declare-fun b_free!12441 () Bool)

(declare-fun b_next!12441 () Bool)

(assert (=> start!70044 (= b_free!12441 (not b_next!12441))))

(declare-fun tp!44037 () Bool)

(declare-fun b_and!21231 () Bool)

(assert (=> start!70044 (= tp!44037 b_and!21231)))

(declare-fun mapNonEmpty!22807 () Bool)

(declare-fun mapRes!22807 () Bool)

(declare-fun tp!44038 () Bool)

(declare-fun e!450931 () Bool)

(assert (=> mapNonEmpty!22807 (= mapRes!22807 (and tp!44038 e!450931))))

(declare-datatypes ((V!23869 0))(
  ( (V!23870 (val!7123 Int)) )
))
(declare-datatypes ((ValueCell!6660 0))(
  ( (ValueCellFull!6660 (v!9546 V!23869)) (EmptyCell!6660) )
))
(declare-fun mapRest!22807 () (Array (_ BitVec 32) ValueCell!6660))

(declare-datatypes ((array!44492 0))(
  ( (array!44493 (arr!21302 (Array (_ BitVec 32) ValueCell!6660)) (size!21723 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44492)

(declare-fun mapValue!22807 () ValueCell!6660)

(declare-fun mapKey!22807 () (_ BitVec 32))

(assert (=> mapNonEmpty!22807 (= (arr!21302 _values!788) (store mapRest!22807 mapKey!22807 mapValue!22807))))

(declare-fun mapIsEmpty!22807 () Bool)

(assert (=> mapIsEmpty!22807 mapRes!22807))

(declare-fun b!813626 () Bool)

(declare-fun e!450934 () Bool)

(declare-fun e!450932 () Bool)

(assert (=> b!813626 (= e!450934 (and e!450932 mapRes!22807))))

(declare-fun condMapEmpty!22807 () Bool)

(declare-fun mapDefault!22807 () ValueCell!6660)

(assert (=> b!813626 (= condMapEmpty!22807 (= (arr!21302 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6660)) mapDefault!22807)))))

(declare-fun b!813627 () Bool)

(declare-fun e!450933 () Bool)

(assert (=> b!813627 (= e!450933 false)))

(declare-datatypes ((array!44494 0))(
  ( (array!44495 (arr!21303 (Array (_ BitVec 32) (_ BitVec 64))) (size!21724 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44494)

(declare-fun zeroValueAfter!34 () V!23869)

(declare-fun minValue!754 () V!23869)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9336 0))(
  ( (tuple2!9337 (_1!4678 (_ BitVec 64)) (_2!4678 V!23869)) )
))
(declare-datatypes ((List!15211 0))(
  ( (Nil!15208) (Cons!15207 (h!16336 tuple2!9336) (t!21536 List!15211)) )
))
(declare-datatypes ((ListLongMap!8173 0))(
  ( (ListLongMap!8174 (toList!4102 List!15211)) )
))
(declare-fun lt!364340 () ListLongMap!8173)

(declare-fun getCurrentListMapNoExtraKeys!2151 (array!44494 array!44492 (_ BitVec 32) (_ BitVec 32) V!23869 V!23869 (_ BitVec 32) Int) ListLongMap!8173)

(assert (=> b!813627 (= lt!364340 (getCurrentListMapNoExtraKeys!2151 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!23869)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!364339 () ListLongMap!8173)

(assert (=> b!813627 (= lt!364339 (getCurrentListMapNoExtraKeys!2151 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!813628 () Bool)

(declare-fun res!555915 () Bool)

(assert (=> b!813628 (=> (not res!555915) (not e!450933))))

(declare-datatypes ((List!15212 0))(
  ( (Nil!15209) (Cons!15208 (h!16337 (_ BitVec 64)) (t!21537 List!15212)) )
))
(declare-fun arrayNoDuplicates!0 (array!44494 (_ BitVec 32) List!15212) Bool)

(assert (=> b!813628 (= res!555915 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15209))))

(declare-fun b!813629 () Bool)

(declare-fun res!555916 () Bool)

(assert (=> b!813629 (=> (not res!555916) (not e!450933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44494 (_ BitVec 32)) Bool)

(assert (=> b!813629 (= res!555916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!813631 () Bool)

(declare-fun res!555914 () Bool)

(assert (=> b!813631 (=> (not res!555914) (not e!450933))))

(assert (=> b!813631 (= res!555914 (and (= (size!21723 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21724 _keys!976) (size!21723 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!813632 () Bool)

(declare-fun tp_is_empty!14151 () Bool)

(assert (=> b!813632 (= e!450932 tp_is_empty!14151)))

(declare-fun b!813630 () Bool)

(assert (=> b!813630 (= e!450931 tp_is_empty!14151)))

(declare-fun res!555917 () Bool)

(assert (=> start!70044 (=> (not res!555917) (not e!450933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70044 (= res!555917 (validMask!0 mask!1312))))

(assert (=> start!70044 e!450933))

(assert (=> start!70044 tp_is_empty!14151))

(declare-fun array_inv!17037 (array!44494) Bool)

(assert (=> start!70044 (array_inv!17037 _keys!976)))

(assert (=> start!70044 true))

(declare-fun array_inv!17038 (array!44492) Bool)

(assert (=> start!70044 (and (array_inv!17038 _values!788) e!450934)))

(assert (=> start!70044 tp!44037))

(assert (= (and start!70044 res!555917) b!813631))

(assert (= (and b!813631 res!555914) b!813629))

(assert (= (and b!813629 res!555916) b!813628))

(assert (= (and b!813628 res!555915) b!813627))

(assert (= (and b!813626 condMapEmpty!22807) mapIsEmpty!22807))

(assert (= (and b!813626 (not condMapEmpty!22807)) mapNonEmpty!22807))

(get-info :version)

(assert (= (and mapNonEmpty!22807 ((_ is ValueCellFull!6660) mapValue!22807)) b!813630))

(assert (= (and b!813626 ((_ is ValueCellFull!6660) mapDefault!22807)) b!813632))

(assert (= start!70044 b!813626))

(declare-fun m!755667 () Bool)

(assert (=> b!813628 m!755667))

(declare-fun m!755669 () Bool)

(assert (=> b!813629 m!755669))

(declare-fun m!755671 () Bool)

(assert (=> mapNonEmpty!22807 m!755671))

(declare-fun m!755673 () Bool)

(assert (=> start!70044 m!755673))

(declare-fun m!755675 () Bool)

(assert (=> start!70044 m!755675))

(declare-fun m!755677 () Bool)

(assert (=> start!70044 m!755677))

(declare-fun m!755679 () Bool)

(assert (=> b!813627 m!755679))

(declare-fun m!755681 () Bool)

(assert (=> b!813627 m!755681))

(check-sat (not b!813628) (not b!813629) (not b_next!12441) (not start!70044) (not b!813627) (not mapNonEmpty!22807) b_and!21231 tp_is_empty!14151)
(check-sat b_and!21231 (not b_next!12441))
