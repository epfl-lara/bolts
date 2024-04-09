; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70694 () Bool)

(assert start!70694)

(declare-fun b_free!12957 () Bool)

(declare-fun b_next!12957 () Bool)

(assert (=> start!70694 (= b_free!12957 (not b_next!12957))))

(declare-fun tp!45609 () Bool)

(declare-fun b_and!21829 () Bool)

(assert (=> start!70694 (= tp!45609 b_and!21829)))

(declare-fun b!820770 () Bool)

(declare-fun res!560078 () Bool)

(declare-fun e!456096 () Bool)

(assert (=> b!820770 (=> (not res!560078) (not e!456096))))

(declare-datatypes ((array!45494 0))(
  ( (array!45495 (arr!21795 (Array (_ BitVec 32) (_ BitVec 64))) (size!22216 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45494)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((V!24557 0))(
  ( (V!24558 (val!7381 Int)) )
))
(declare-datatypes ((ValueCell!6918 0))(
  ( (ValueCellFull!6918 (v!9808 V!24557)) (EmptyCell!6918) )
))
(declare-datatypes ((array!45496 0))(
  ( (array!45497 (arr!21796 (Array (_ BitVec 32) ValueCell!6918)) (size!22217 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45496)

(assert (=> b!820770 (= res!560078 (and (= (size!22217 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22216 _keys!976) (size!22217 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!820771 () Bool)

(declare-fun e!456097 () Bool)

(declare-fun tp_is_empty!14667 () Bool)

(assert (=> b!820771 (= e!456097 tp_is_empty!14667)))

(declare-fun b!820772 () Bool)

(declare-fun res!560077 () Bool)

(assert (=> b!820772 (=> (not res!560077) (not e!456096))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45494 (_ BitVec 32)) Bool)

(assert (=> b!820772 (= res!560077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23605 () Bool)

(declare-fun mapRes!23605 () Bool)

(assert (=> mapIsEmpty!23605 mapRes!23605))

(declare-fun mapNonEmpty!23605 () Bool)

(declare-fun tp!45610 () Bool)

(assert (=> mapNonEmpty!23605 (= mapRes!23605 (and tp!45610 e!456097))))

(declare-fun mapRest!23605 () (Array (_ BitVec 32) ValueCell!6918))

(declare-fun mapValue!23605 () ValueCell!6918)

(declare-fun mapKey!23605 () (_ BitVec 32))

(assert (=> mapNonEmpty!23605 (= (arr!21796 _values!788) (store mapRest!23605 mapKey!23605 mapValue!23605))))

(declare-fun b!820773 () Bool)

(declare-fun e!456099 () Bool)

(assert (=> b!820773 (= e!456099 tp_is_empty!14667)))

(declare-fun b!820775 () Bool)

(declare-fun res!560079 () Bool)

(assert (=> b!820775 (=> (not res!560079) (not e!456096))))

(declare-datatypes ((List!15588 0))(
  ( (Nil!15585) (Cons!15584 (h!16713 (_ BitVec 64)) (t!21929 List!15588)) )
))
(declare-fun arrayNoDuplicates!0 (array!45494 (_ BitVec 32) List!15588) Bool)

(assert (=> b!820775 (= res!560079 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15585))))

(declare-fun b!820776 () Bool)

(assert (=> b!820776 (= e!456096 (not true))))

(declare-datatypes ((tuple2!9728 0))(
  ( (tuple2!9729 (_1!4874 (_ BitVec 64)) (_2!4874 V!24557)) )
))
(declare-datatypes ((List!15589 0))(
  ( (Nil!15586) (Cons!15585 (h!16714 tuple2!9728) (t!21930 List!15589)) )
))
(declare-datatypes ((ListLongMap!8565 0))(
  ( (ListLongMap!8566 (toList!4298 List!15589)) )
))
(declare-fun lt!368922 () ListLongMap!8565)

(declare-fun lt!368921 () ListLongMap!8565)

(assert (=> b!820776 (= lt!368922 lt!368921)))

(declare-datatypes ((Unit!28049 0))(
  ( (Unit!28050) )
))
(declare-fun lt!368920 () Unit!28049)

(declare-fun zeroValueBefore!34 () V!24557)

(declare-fun zeroValueAfter!34 () V!24557)

(declare-fun minValue!754 () V!24557)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!448 (array!45494 array!45496 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24557 V!24557 V!24557 V!24557 (_ BitVec 32) Int) Unit!28049)

(assert (=> b!820776 (= lt!368920 (lemmaNoChangeToArrayThenSameMapNoExtras!448 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2332 (array!45494 array!45496 (_ BitVec 32) (_ BitVec 32) V!24557 V!24557 (_ BitVec 32) Int) ListLongMap!8565)

(assert (=> b!820776 (= lt!368921 (getCurrentListMapNoExtraKeys!2332 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!820776 (= lt!368922 (getCurrentListMapNoExtraKeys!2332 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!820774 () Bool)

(declare-fun e!456098 () Bool)

(assert (=> b!820774 (= e!456098 (and e!456099 mapRes!23605))))

(declare-fun condMapEmpty!23605 () Bool)

(declare-fun mapDefault!23605 () ValueCell!6918)

(assert (=> b!820774 (= condMapEmpty!23605 (= (arr!21796 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6918)) mapDefault!23605)))))

(declare-fun res!560076 () Bool)

(assert (=> start!70694 (=> (not res!560076) (not e!456096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70694 (= res!560076 (validMask!0 mask!1312))))

(assert (=> start!70694 e!456096))

(assert (=> start!70694 tp_is_empty!14667))

(declare-fun array_inv!17385 (array!45494) Bool)

(assert (=> start!70694 (array_inv!17385 _keys!976)))

(assert (=> start!70694 true))

(declare-fun array_inv!17386 (array!45496) Bool)

(assert (=> start!70694 (and (array_inv!17386 _values!788) e!456098)))

(assert (=> start!70694 tp!45609))

(assert (= (and start!70694 res!560076) b!820770))

(assert (= (and b!820770 res!560078) b!820772))

(assert (= (and b!820772 res!560077) b!820775))

(assert (= (and b!820775 res!560079) b!820776))

(assert (= (and b!820774 condMapEmpty!23605) mapIsEmpty!23605))

(assert (= (and b!820774 (not condMapEmpty!23605)) mapNonEmpty!23605))

(get-info :version)

(assert (= (and mapNonEmpty!23605 ((_ is ValueCellFull!6918) mapValue!23605)) b!820771))

(assert (= (and b!820774 ((_ is ValueCellFull!6918) mapDefault!23605)) b!820773))

(assert (= start!70694 b!820774))

(declare-fun m!762747 () Bool)

(assert (=> b!820772 m!762747))

(declare-fun m!762749 () Bool)

(assert (=> start!70694 m!762749))

(declare-fun m!762751 () Bool)

(assert (=> start!70694 m!762751))

(declare-fun m!762753 () Bool)

(assert (=> start!70694 m!762753))

(declare-fun m!762755 () Bool)

(assert (=> mapNonEmpty!23605 m!762755))

(declare-fun m!762757 () Bool)

(assert (=> b!820775 m!762757))

(declare-fun m!762759 () Bool)

(assert (=> b!820776 m!762759))

(declare-fun m!762761 () Bool)

(assert (=> b!820776 m!762761))

(declare-fun m!762763 () Bool)

(assert (=> b!820776 m!762763))

(check-sat (not b!820775) (not start!70694) (not b!820772) (not b!820776) b_and!21829 tp_is_empty!14667 (not b_next!12957) (not mapNonEmpty!23605))
(check-sat b_and!21829 (not b_next!12957))
