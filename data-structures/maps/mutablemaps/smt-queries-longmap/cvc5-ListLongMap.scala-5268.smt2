; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70766 () Bool)

(assert start!70766)

(declare-fun b_free!13015 () Bool)

(declare-fun b_next!13015 () Bool)

(assert (=> start!70766 (= b_free!13015 (not b_next!13015))))

(declare-fun tp!45787 () Bool)

(declare-fun b_and!21895 () Bool)

(assert (=> start!70766 (= tp!45787 b_and!21895)))

(declare-fun mapNonEmpty!23695 () Bool)

(declare-fun mapRes!23695 () Bool)

(declare-fun tp!45786 () Bool)

(declare-fun e!456661 () Bool)

(assert (=> mapNonEmpty!23695 (= mapRes!23695 (and tp!45786 e!456661))))

(declare-datatypes ((V!24635 0))(
  ( (V!24636 (val!7410 Int)) )
))
(declare-datatypes ((ValueCell!6947 0))(
  ( (ValueCellFull!6947 (v!9837 V!24635)) (EmptyCell!6947) )
))
(declare-fun mapRest!23695 () (Array (_ BitVec 32) ValueCell!6947))

(declare-datatypes ((array!45604 0))(
  ( (array!45605 (arr!21849 (Array (_ BitVec 32) ValueCell!6947)) (size!22270 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45604)

(declare-fun mapValue!23695 () ValueCell!6947)

(declare-fun mapKey!23695 () (_ BitVec 32))

(assert (=> mapNonEmpty!23695 (= (arr!21849 _values!788) (store mapRest!23695 mapKey!23695 mapValue!23695))))

(declare-fun mapIsEmpty!23695 () Bool)

(assert (=> mapIsEmpty!23695 mapRes!23695))

(declare-fun b!821538 () Bool)

(declare-fun res!560532 () Bool)

(declare-fun e!456662 () Bool)

(assert (=> b!821538 (=> (not res!560532) (not e!456662))))

(declare-datatypes ((array!45606 0))(
  ( (array!45607 (arr!21850 (Array (_ BitVec 32) (_ BitVec 64))) (size!22271 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45606)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45606 (_ BitVec 32)) Bool)

(assert (=> b!821538 (= res!560532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!821539 () Bool)

(declare-fun tp_is_empty!14725 () Bool)

(assert (=> b!821539 (= e!456661 tp_is_empty!14725)))

(declare-fun b!821540 () Bool)

(declare-fun e!456664 () Bool)

(assert (=> b!821540 (= e!456664 (bvsle #b00000000000000000000000000000000 (size!22271 _keys!976)))))

(declare-fun zeroValueBefore!34 () V!24635)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24635)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9774 0))(
  ( (tuple2!9775 (_1!4897 (_ BitVec 64)) (_2!4897 V!24635)) )
))
(declare-datatypes ((List!15634 0))(
  ( (Nil!15631) (Cons!15630 (h!16759 tuple2!9774) (t!21977 List!15634)) )
))
(declare-datatypes ((ListLongMap!8611 0))(
  ( (ListLongMap!8612 (toList!4321 List!15634)) )
))
(declare-fun lt!369297 () ListLongMap!8611)

(declare-fun getCurrentListMap!2456 (array!45606 array!45604 (_ BitVec 32) (_ BitVec 32) V!24635 V!24635 (_ BitVec 32) Int) ListLongMap!8611)

(assert (=> b!821540 (= lt!369297 (getCurrentListMap!2456 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821541 () Bool)

(declare-fun e!456663 () Bool)

(assert (=> b!821541 (= e!456663 tp_is_empty!14725)))

(declare-fun res!560531 () Bool)

(assert (=> start!70766 (=> (not res!560531) (not e!456662))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70766 (= res!560531 (validMask!0 mask!1312))))

(assert (=> start!70766 e!456662))

(assert (=> start!70766 tp_is_empty!14725))

(declare-fun array_inv!17427 (array!45606) Bool)

(assert (=> start!70766 (array_inv!17427 _keys!976)))

(assert (=> start!70766 true))

(declare-fun e!456660 () Bool)

(declare-fun array_inv!17428 (array!45604) Bool)

(assert (=> start!70766 (and (array_inv!17428 _values!788) e!456660)))

(assert (=> start!70766 tp!45787))

(declare-fun b!821542 () Bool)

(declare-fun res!560533 () Bool)

(assert (=> b!821542 (=> (not res!560533) (not e!456662))))

(declare-datatypes ((List!15635 0))(
  ( (Nil!15632) (Cons!15631 (h!16760 (_ BitVec 64)) (t!21978 List!15635)) )
))
(declare-fun arrayNoDuplicates!0 (array!45606 (_ BitVec 32) List!15635) Bool)

(assert (=> b!821542 (= res!560533 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15632))))

(declare-fun b!821543 () Bool)

(declare-fun res!560529 () Bool)

(assert (=> b!821543 (=> (not res!560529) (not e!456662))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!821543 (= res!560529 (and (= (size!22270 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22271 _keys!976) (size!22270 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!821544 () Bool)

(assert (=> b!821544 (= e!456662 (not e!456664))))

(declare-fun res!560530 () Bool)

(assert (=> b!821544 (=> res!560530 e!456664)))

(assert (=> b!821544 (= res!560530 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!369298 () ListLongMap!8611)

(declare-fun lt!369296 () ListLongMap!8611)

(assert (=> b!821544 (= lt!369298 lt!369296)))

(declare-fun zeroValueAfter!34 () V!24635)

(declare-datatypes ((Unit!28085 0))(
  ( (Unit!28086) )
))
(declare-fun lt!369295 () Unit!28085)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!466 (array!45606 array!45604 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24635 V!24635 V!24635 V!24635 (_ BitVec 32) Int) Unit!28085)

(assert (=> b!821544 (= lt!369295 (lemmaNoChangeToArrayThenSameMapNoExtras!466 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2350 (array!45606 array!45604 (_ BitVec 32) (_ BitVec 32) V!24635 V!24635 (_ BitVec 32) Int) ListLongMap!8611)

(assert (=> b!821544 (= lt!369296 (getCurrentListMapNoExtraKeys!2350 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821544 (= lt!369298 (getCurrentListMapNoExtraKeys!2350 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!821545 () Bool)

(assert (=> b!821545 (= e!456660 (and e!456663 mapRes!23695))))

(declare-fun condMapEmpty!23695 () Bool)

(declare-fun mapDefault!23695 () ValueCell!6947)

