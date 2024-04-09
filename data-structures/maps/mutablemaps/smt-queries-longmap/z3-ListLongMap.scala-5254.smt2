; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70670 () Bool)

(assert start!70670)

(declare-fun b_free!12933 () Bool)

(declare-fun b_next!12933 () Bool)

(assert (=> start!70670 (= b_free!12933 (not b_next!12933))))

(declare-fun tp!45537 () Bool)

(declare-fun b_and!21805 () Bool)

(assert (=> start!70670 (= tp!45537 b_and!21805)))

(declare-fun mapNonEmpty!23569 () Bool)

(declare-fun mapRes!23569 () Bool)

(declare-fun tp!45538 () Bool)

(declare-fun e!455918 () Bool)

(assert (=> mapNonEmpty!23569 (= mapRes!23569 (and tp!45538 e!455918))))

(declare-datatypes ((V!24525 0))(
  ( (V!24526 (val!7369 Int)) )
))
(declare-datatypes ((ValueCell!6906 0))(
  ( (ValueCellFull!6906 (v!9796 V!24525)) (EmptyCell!6906) )
))
(declare-fun mapValue!23569 () ValueCell!6906)

(declare-fun mapRest!23569 () (Array (_ BitVec 32) ValueCell!6906))

(declare-fun mapKey!23569 () (_ BitVec 32))

(declare-datatypes ((array!45448 0))(
  ( (array!45449 (arr!21772 (Array (_ BitVec 32) ValueCell!6906)) (size!22193 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45448)

(assert (=> mapNonEmpty!23569 (= (arr!21772 _values!788) (store mapRest!23569 mapKey!23569 mapValue!23569))))

(declare-fun res!559934 () Bool)

(declare-fun e!455919 () Bool)

(assert (=> start!70670 (=> (not res!559934) (not e!455919))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70670 (= res!559934 (validMask!0 mask!1312))))

(assert (=> start!70670 e!455919))

(declare-fun tp_is_empty!14643 () Bool)

(assert (=> start!70670 tp_is_empty!14643))

(declare-datatypes ((array!45450 0))(
  ( (array!45451 (arr!21773 (Array (_ BitVec 32) (_ BitVec 64))) (size!22194 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45450)

(declare-fun array_inv!17369 (array!45450) Bool)

(assert (=> start!70670 (array_inv!17369 _keys!976)))

(assert (=> start!70670 true))

(declare-fun e!455917 () Bool)

(declare-fun array_inv!17370 (array!45448) Bool)

(assert (=> start!70670 (and (array_inv!17370 _values!788) e!455917)))

(assert (=> start!70670 tp!45537))

(declare-fun b!820518 () Bool)

(assert (=> b!820518 (= e!455919 (not true))))

(declare-datatypes ((tuple2!9714 0))(
  ( (tuple2!9715 (_1!4867 (_ BitVec 64)) (_2!4867 V!24525)) )
))
(declare-datatypes ((List!15574 0))(
  ( (Nil!15571) (Cons!15570 (h!16699 tuple2!9714) (t!21915 List!15574)) )
))
(declare-datatypes ((ListLongMap!8551 0))(
  ( (ListLongMap!8552 (toList!4291 List!15574)) )
))
(declare-fun lt!368814 () ListLongMap!8551)

(declare-fun lt!368813 () ListLongMap!8551)

(assert (=> b!820518 (= lt!368814 lt!368813)))

(declare-fun zeroValueBefore!34 () V!24525)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24525)

(declare-fun minValue!754 () V!24525)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28035 0))(
  ( (Unit!28036) )
))
(declare-fun lt!368812 () Unit!28035)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!441 (array!45450 array!45448 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24525 V!24525 V!24525 V!24525 (_ BitVec 32) Int) Unit!28035)

(assert (=> b!820518 (= lt!368812 (lemmaNoChangeToArrayThenSameMapNoExtras!441 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2325 (array!45450 array!45448 (_ BitVec 32) (_ BitVec 32) V!24525 V!24525 (_ BitVec 32) Int) ListLongMap!8551)

(assert (=> b!820518 (= lt!368813 (getCurrentListMapNoExtraKeys!2325 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820518 (= lt!368814 (getCurrentListMapNoExtraKeys!2325 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820519 () Bool)

(declare-fun res!559932 () Bool)

(assert (=> b!820519 (=> (not res!559932) (not e!455919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45450 (_ BitVec 32)) Bool)

(assert (=> b!820519 (= res!559932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!820520 () Bool)

(declare-fun e!455915 () Bool)

(assert (=> b!820520 (= e!455917 (and e!455915 mapRes!23569))))

(declare-fun condMapEmpty!23569 () Bool)

(declare-fun mapDefault!23569 () ValueCell!6906)

(assert (=> b!820520 (= condMapEmpty!23569 (= (arr!21772 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6906)) mapDefault!23569)))))

(declare-fun b!820521 () Bool)

(declare-fun res!559935 () Bool)

(assert (=> b!820521 (=> (not res!559935) (not e!455919))))

(assert (=> b!820521 (= res!559935 (and (= (size!22193 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22194 _keys!976) (size!22193 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!820522 () Bool)

(assert (=> b!820522 (= e!455918 tp_is_empty!14643)))

(declare-fun b!820523 () Bool)

(declare-fun res!559933 () Bool)

(assert (=> b!820523 (=> (not res!559933) (not e!455919))))

(declare-datatypes ((List!15575 0))(
  ( (Nil!15572) (Cons!15571 (h!16700 (_ BitVec 64)) (t!21916 List!15575)) )
))
(declare-fun arrayNoDuplicates!0 (array!45450 (_ BitVec 32) List!15575) Bool)

(assert (=> b!820523 (= res!559933 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15572))))

(declare-fun b!820524 () Bool)

(assert (=> b!820524 (= e!455915 tp_is_empty!14643)))

(declare-fun mapIsEmpty!23569 () Bool)

(assert (=> mapIsEmpty!23569 mapRes!23569))

(assert (= (and start!70670 res!559934) b!820521))

(assert (= (and b!820521 res!559935) b!820519))

(assert (= (and b!820519 res!559932) b!820523))

(assert (= (and b!820523 res!559933) b!820518))

(assert (= (and b!820520 condMapEmpty!23569) mapIsEmpty!23569))

(assert (= (and b!820520 (not condMapEmpty!23569)) mapNonEmpty!23569))

(get-info :version)

(assert (= (and mapNonEmpty!23569 ((_ is ValueCellFull!6906) mapValue!23569)) b!820522))

(assert (= (and b!820520 ((_ is ValueCellFull!6906) mapDefault!23569)) b!820524))

(assert (= start!70670 b!820520))

(declare-fun m!762531 () Bool)

(assert (=> b!820518 m!762531))

(declare-fun m!762533 () Bool)

(assert (=> b!820518 m!762533))

(declare-fun m!762535 () Bool)

(assert (=> b!820518 m!762535))

(declare-fun m!762537 () Bool)

(assert (=> b!820523 m!762537))

(declare-fun m!762539 () Bool)

(assert (=> start!70670 m!762539))

(declare-fun m!762541 () Bool)

(assert (=> start!70670 m!762541))

(declare-fun m!762543 () Bool)

(assert (=> start!70670 m!762543))

(declare-fun m!762545 () Bool)

(assert (=> b!820519 m!762545))

(declare-fun m!762547 () Bool)

(assert (=> mapNonEmpty!23569 m!762547))

(check-sat (not b_next!12933) (not mapNonEmpty!23569) (not b!820519) (not start!70670) tp_is_empty!14643 b_and!21805 (not b!820523) (not b!820518))
(check-sat b_and!21805 (not b_next!12933))
