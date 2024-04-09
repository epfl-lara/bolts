; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70516 () Bool)

(assert start!70516)

(declare-fun b_free!12819 () Bool)

(declare-fun b_next!12819 () Bool)

(assert (=> start!70516 (= b_free!12819 (not b_next!12819))))

(declare-fun tp!45189 () Bool)

(declare-fun b_and!21667 () Bool)

(assert (=> start!70516 (= tp!45189 b_and!21667)))

(declare-fun b!818655 () Bool)

(declare-fun e!454540 () Bool)

(declare-fun tp_is_empty!14529 () Bool)

(assert (=> b!818655 (= e!454540 tp_is_empty!14529)))

(declare-fun res!558788 () Bool)

(declare-fun e!454537 () Bool)

(assert (=> start!70516 (=> (not res!558788) (not e!454537))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70516 (= res!558788 (validMask!0 mask!1312))))

(assert (=> start!70516 e!454537))

(assert (=> start!70516 tp_is_empty!14529))

(declare-datatypes ((array!45230 0))(
  ( (array!45231 (arr!21665 (Array (_ BitVec 32) (_ BitVec 64))) (size!22086 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45230)

(declare-fun array_inv!17289 (array!45230) Bool)

(assert (=> start!70516 (array_inv!17289 _keys!976)))

(assert (=> start!70516 true))

(declare-datatypes ((V!24373 0))(
  ( (V!24374 (val!7312 Int)) )
))
(declare-datatypes ((ValueCell!6849 0))(
  ( (ValueCellFull!6849 (v!9737 V!24373)) (EmptyCell!6849) )
))
(declare-datatypes ((array!45232 0))(
  ( (array!45233 (arr!21666 (Array (_ BitVec 32) ValueCell!6849)) (size!22087 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45232)

(declare-fun e!454539 () Bool)

(declare-fun array_inv!17290 (array!45232) Bool)

(assert (=> start!70516 (and (array_inv!17290 _values!788) e!454539)))

(assert (=> start!70516 tp!45189))

(declare-fun b!818656 () Bool)

(declare-fun e!454536 () Bool)

(assert (=> b!818656 (= e!454536 tp_is_empty!14529)))

(declare-fun b!818657 () Bool)

(declare-fun res!558789 () Bool)

(assert (=> b!818657 (=> (not res!558789) (not e!454537))))

(declare-datatypes ((List!15488 0))(
  ( (Nil!15485) (Cons!15484 (h!16613 (_ BitVec 64)) (t!21825 List!15488)) )
))
(declare-fun arrayNoDuplicates!0 (array!45230 (_ BitVec 32) List!15488) Bool)

(assert (=> b!818657 (= res!558789 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15485))))

(declare-fun mapIsEmpty!23392 () Bool)

(declare-fun mapRes!23392 () Bool)

(assert (=> mapIsEmpty!23392 mapRes!23392))

(declare-fun b!818658 () Bool)

(declare-fun res!558787 () Bool)

(assert (=> b!818658 (=> (not res!558787) (not e!454537))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!818658 (= res!558787 (and (= (size!22087 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22086 _keys!976) (size!22087 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!818659 () Bool)

(declare-fun e!454534 () Bool)

(assert (=> b!818659 (= e!454537 (not e!454534))))

(declare-fun res!558791 () Bool)

(assert (=> b!818659 (=> res!558791 e!454534)))

(assert (=> b!818659 (= res!558791 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9626 0))(
  ( (tuple2!9627 (_1!4823 (_ BitVec 64)) (_2!4823 V!24373)) )
))
(declare-datatypes ((List!15489 0))(
  ( (Nil!15486) (Cons!15485 (h!16614 tuple2!9626) (t!21826 List!15489)) )
))
(declare-datatypes ((ListLongMap!8463 0))(
  ( (ListLongMap!8464 (toList!4247 List!15489)) )
))
(declare-fun lt!367021 () ListLongMap!8463)

(declare-fun lt!367023 () ListLongMap!8463)

(assert (=> b!818659 (= lt!367021 lt!367023)))

(declare-fun zeroValueBefore!34 () V!24373)

(declare-fun zeroValueAfter!34 () V!24373)

(declare-fun minValue!754 () V!24373)

(declare-datatypes ((Unit!27943 0))(
  ( (Unit!27944) )
))
(declare-fun lt!367019 () Unit!27943)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!405 (array!45230 array!45232 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24373 V!24373 V!24373 V!24373 (_ BitVec 32) Int) Unit!27943)

(assert (=> b!818659 (= lt!367019 (lemmaNoChangeToArrayThenSameMapNoExtras!405 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2289 (array!45230 array!45232 (_ BitVec 32) (_ BitVec 32) V!24373 V!24373 (_ BitVec 32) Int) ListLongMap!8463)

(assert (=> b!818659 (= lt!367023 (getCurrentListMapNoExtraKeys!2289 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818659 (= lt!367021 (getCurrentListMapNoExtraKeys!2289 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818660 () Bool)

(assert (=> b!818660 (= e!454539 (and e!454540 mapRes!23392))))

(declare-fun condMapEmpty!23392 () Bool)

(declare-fun mapDefault!23392 () ValueCell!6849)

(assert (=> b!818660 (= condMapEmpty!23392 (= (arr!21666 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6849)) mapDefault!23392)))))

(declare-fun b!818661 () Bool)

(assert (=> b!818661 (= e!454534 true)))

(declare-fun lt!367026 () tuple2!9626)

(declare-fun lt!367022 () tuple2!9626)

(declare-fun lt!367018 () ListLongMap!8463)

(declare-fun +!1791 (ListLongMap!8463 tuple2!9626) ListLongMap!8463)

(assert (=> b!818661 (= lt!367018 (+!1791 (+!1791 lt!367023 lt!367022) lt!367026))))

(declare-fun lt!367020 () ListLongMap!8463)

(assert (=> b!818661 (= (+!1791 lt!367021 lt!367026) (+!1791 lt!367020 lt!367026))))

(declare-fun lt!367027 () Unit!27943)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!170 (ListLongMap!8463 (_ BitVec 64) V!24373 V!24373) Unit!27943)

(assert (=> b!818661 (= lt!367027 (addSameAsAddTwiceSameKeyDiffValues!170 lt!367021 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!818661 (= lt!367026 (tuple2!9627 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!454538 () Bool)

(assert (=> b!818661 e!454538))

(declare-fun res!558790 () Bool)

(assert (=> b!818661 (=> (not res!558790) (not e!454538))))

(declare-fun lt!367024 () ListLongMap!8463)

(assert (=> b!818661 (= res!558790 (= lt!367024 lt!367020))))

(assert (=> b!818661 (= lt!367020 (+!1791 lt!367021 lt!367022))))

(assert (=> b!818661 (= lt!367022 (tuple2!9627 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun lt!367025 () ListLongMap!8463)

(declare-fun getCurrentListMap!2405 (array!45230 array!45232 (_ BitVec 32) (_ BitVec 32) V!24373 V!24373 (_ BitVec 32) Int) ListLongMap!8463)

(assert (=> b!818661 (= lt!367025 (getCurrentListMap!2405 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818661 (= lt!367024 (getCurrentListMap!2405 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818662 () Bool)

(declare-fun res!558786 () Bool)

(assert (=> b!818662 (=> (not res!558786) (not e!454537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45230 (_ BitVec 32)) Bool)

(assert (=> b!818662 (= res!558786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818663 () Bool)

(assert (=> b!818663 (= e!454538 (= lt!367025 (+!1791 lt!367023 (tuple2!9627 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun mapNonEmpty!23392 () Bool)

(declare-fun tp!45190 () Bool)

(assert (=> mapNonEmpty!23392 (= mapRes!23392 (and tp!45190 e!454536))))

(declare-fun mapRest!23392 () (Array (_ BitVec 32) ValueCell!6849))

(declare-fun mapValue!23392 () ValueCell!6849)

(declare-fun mapKey!23392 () (_ BitVec 32))

(assert (=> mapNonEmpty!23392 (= (arr!21666 _values!788) (store mapRest!23392 mapKey!23392 mapValue!23392))))

(assert (= (and start!70516 res!558788) b!818658))

(assert (= (and b!818658 res!558787) b!818662))

(assert (= (and b!818662 res!558786) b!818657))

(assert (= (and b!818657 res!558789) b!818659))

(assert (= (and b!818659 (not res!558791)) b!818661))

(assert (= (and b!818661 res!558790) b!818663))

(assert (= (and b!818660 condMapEmpty!23392) mapIsEmpty!23392))

(assert (= (and b!818660 (not condMapEmpty!23392)) mapNonEmpty!23392))

(get-info :version)

(assert (= (and mapNonEmpty!23392 ((_ is ValueCellFull!6849) mapValue!23392)) b!818656))

(assert (= (and b!818660 ((_ is ValueCellFull!6849) mapDefault!23392)) b!818655))

(assert (= start!70516 b!818660))

(declare-fun m!760183 () Bool)

(assert (=> mapNonEmpty!23392 m!760183))

(declare-fun m!760185 () Bool)

(assert (=> b!818657 m!760185))

(declare-fun m!760187 () Bool)

(assert (=> b!818659 m!760187))

(declare-fun m!760189 () Bool)

(assert (=> b!818659 m!760189))

(declare-fun m!760191 () Bool)

(assert (=> b!818659 m!760191))

(declare-fun m!760193 () Bool)

(assert (=> start!70516 m!760193))

(declare-fun m!760195 () Bool)

(assert (=> start!70516 m!760195))

(declare-fun m!760197 () Bool)

(assert (=> start!70516 m!760197))

(declare-fun m!760199 () Bool)

(assert (=> b!818662 m!760199))

(declare-fun m!760201 () Bool)

(assert (=> b!818663 m!760201))

(declare-fun m!760203 () Bool)

(assert (=> b!818661 m!760203))

(assert (=> b!818661 m!760203))

(declare-fun m!760205 () Bool)

(assert (=> b!818661 m!760205))

(declare-fun m!760207 () Bool)

(assert (=> b!818661 m!760207))

(declare-fun m!760209 () Bool)

(assert (=> b!818661 m!760209))

(declare-fun m!760211 () Bool)

(assert (=> b!818661 m!760211))

(declare-fun m!760213 () Bool)

(assert (=> b!818661 m!760213))

(declare-fun m!760215 () Bool)

(assert (=> b!818661 m!760215))

(declare-fun m!760217 () Bool)

(assert (=> b!818661 m!760217))

(check-sat (not b!818657) (not b_next!12819) (not mapNonEmpty!23392) (not b!818662) (not b!818661) (not b!818659) (not b!818663) tp_is_empty!14529 (not start!70516) b_and!21667)
(check-sat b_and!21667 (not b_next!12819))
