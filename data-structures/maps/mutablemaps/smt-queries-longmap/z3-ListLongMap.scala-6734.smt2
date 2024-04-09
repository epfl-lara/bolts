; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84406 () Bool)

(assert start!84406)

(declare-fun b_free!19965 () Bool)

(declare-fun b_next!19965 () Bool)

(assert (=> start!84406 (= b_free!19965 (not b_next!19965))))

(declare-fun tp!69670 () Bool)

(declare-fun b_and!32017 () Bool)

(assert (=> start!84406 (= tp!69670 b_and!32017)))

(declare-fun res!660323 () Bool)

(declare-fun e!556520 () Bool)

(assert (=> start!84406 (=> (not res!660323) (not e!556520))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84406 (= res!660323 (validMask!0 mask!1948))))

(assert (=> start!84406 e!556520))

(assert (=> start!84406 true))

(declare-fun tp_is_empty!23181 () Bool)

(assert (=> start!84406 tp_is_empty!23181))

(declare-datatypes ((V!35891 0))(
  ( (V!35892 (val!11641 Int)) )
))
(declare-datatypes ((ValueCell!11109 0))(
  ( (ValueCellFull!11109 (v!14203 V!35891)) (EmptyCell!11109) )
))
(declare-datatypes ((array!62309 0))(
  ( (array!62310 (arr!30008 (Array (_ BitVec 32) ValueCell!11109)) (size!30488 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62309)

(declare-fun e!556516 () Bool)

(declare-fun array_inv!23047 (array!62309) Bool)

(assert (=> start!84406 (and (array_inv!23047 _values!1278) e!556516)))

(assert (=> start!84406 tp!69670))

(declare-datatypes ((array!62311 0))(
  ( (array!62312 (arr!30009 (Array (_ BitVec 32) (_ BitVec 64))) (size!30489 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62311)

(declare-fun array_inv!23048 (array!62311) Bool)

(assert (=> start!84406 (array_inv!23048 _keys!1544)))

(declare-fun b!986835 () Bool)

(declare-fun res!660324 () Bool)

(assert (=> b!986835 (=> (not res!660324) (not e!556520))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!986835 (= res!660324 (validKeyInArray!0 (select (arr!30009 _keys!1544) from!1932)))))

(declare-fun b!986836 () Bool)

(declare-fun res!660318 () Bool)

(assert (=> b!986836 (=> (not res!660318) (not e!556520))))

(assert (=> b!986836 (= res!660318 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30489 _keys!1544))))))

(declare-fun b!986837 () Bool)

(declare-fun res!660322 () Bool)

(assert (=> b!986837 (=> (not res!660322) (not e!556520))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62311 (_ BitVec 32)) Bool)

(assert (=> b!986837 (= res!660322 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!986838 () Bool)

(declare-fun e!556517 () Bool)

(declare-fun mapRes!36800 () Bool)

(assert (=> b!986838 (= e!556516 (and e!556517 mapRes!36800))))

(declare-fun condMapEmpty!36800 () Bool)

(declare-fun mapDefault!36800 () ValueCell!11109)

(assert (=> b!986838 (= condMapEmpty!36800 (= (arr!30008 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11109)) mapDefault!36800)))))

(declare-fun b!986839 () Bool)

(declare-fun res!660321 () Bool)

(assert (=> b!986839 (=> (not res!660321) (not e!556520))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!986839 (= res!660321 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!986840 () Bool)

(declare-fun res!660320 () Bool)

(assert (=> b!986840 (=> (not res!660320) (not e!556520))))

(assert (=> b!986840 (= res!660320 (and (= (size!30488 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30489 _keys!1544) (size!30488 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!986841 () Bool)

(assert (=> b!986841 (= e!556517 tp_is_empty!23181)))

(declare-fun mapNonEmpty!36800 () Bool)

(declare-fun tp!69671 () Bool)

(declare-fun e!556518 () Bool)

(assert (=> mapNonEmpty!36800 (= mapRes!36800 (and tp!69671 e!556518))))

(declare-fun mapRest!36800 () (Array (_ BitVec 32) ValueCell!11109))

(declare-fun mapKey!36800 () (_ BitVec 32))

(declare-fun mapValue!36800 () ValueCell!11109)

(assert (=> mapNonEmpty!36800 (= (arr!30008 _values!1278) (store mapRest!36800 mapKey!36800 mapValue!36800))))

(declare-fun b!986842 () Bool)

(assert (=> b!986842 (= e!556518 tp_is_empty!23181)))

(declare-fun mapIsEmpty!36800 () Bool)

(assert (=> mapIsEmpty!36800 mapRes!36800))

(declare-fun b!986843 () Bool)

(assert (=> b!986843 (= e!556520 (bvsge from!1932 (size!30488 _values!1278)))))

(declare-fun minValue!1220 () V!35891)

(declare-fun zeroValue!1220 () V!35891)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!14926 0))(
  ( (tuple2!14927 (_1!7473 (_ BitVec 64)) (_2!7473 V!35891)) )
))
(declare-datatypes ((List!20875 0))(
  ( (Nil!20872) (Cons!20871 (h!22033 tuple2!14926) (t!29782 List!20875)) )
))
(declare-datatypes ((ListLongMap!13637 0))(
  ( (ListLongMap!13638 (toList!6834 List!20875)) )
))
(declare-fun lt!437512 () ListLongMap!13637)

(declare-fun +!3022 (ListLongMap!13637 tuple2!14926) ListLongMap!13637)

(declare-fun getCurrentListMapNoExtraKeys!3487 (array!62311 array!62309 (_ BitVec 32) (_ BitVec 32) V!35891 V!35891 (_ BitVec 32) Int) ListLongMap!13637)

(assert (=> b!986843 (= lt!437512 (+!3022 (getCurrentListMapNoExtraKeys!3487 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14927 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!986844 () Bool)

(declare-fun res!660319 () Bool)

(assert (=> b!986844 (=> (not res!660319) (not e!556520))))

(declare-datatypes ((List!20876 0))(
  ( (Nil!20873) (Cons!20872 (h!22034 (_ BitVec 64)) (t!29783 List!20876)) )
))
(declare-fun arrayNoDuplicates!0 (array!62311 (_ BitVec 32) List!20876) Bool)

(assert (=> b!986844 (= res!660319 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20873))))

(assert (= (and start!84406 res!660323) b!986840))

(assert (= (and b!986840 res!660320) b!986837))

(assert (= (and b!986837 res!660322) b!986844))

(assert (= (and b!986844 res!660319) b!986836))

(assert (= (and b!986836 res!660318) b!986835))

(assert (= (and b!986835 res!660324) b!986839))

(assert (= (and b!986839 res!660321) b!986843))

(assert (= (and b!986838 condMapEmpty!36800) mapIsEmpty!36800))

(assert (= (and b!986838 (not condMapEmpty!36800)) mapNonEmpty!36800))

(get-info :version)

(assert (= (and mapNonEmpty!36800 ((_ is ValueCellFull!11109) mapValue!36800)) b!986842))

(assert (= (and b!986838 ((_ is ValueCellFull!11109) mapDefault!36800)) b!986841))

(assert (= start!84406 b!986838))

(declare-fun m!913579 () Bool)

(assert (=> b!986835 m!913579))

(assert (=> b!986835 m!913579))

(declare-fun m!913581 () Bool)

(assert (=> b!986835 m!913581))

(declare-fun m!913583 () Bool)

(assert (=> start!84406 m!913583))

(declare-fun m!913585 () Bool)

(assert (=> start!84406 m!913585))

(declare-fun m!913587 () Bool)

(assert (=> start!84406 m!913587))

(declare-fun m!913589 () Bool)

(assert (=> mapNonEmpty!36800 m!913589))

(declare-fun m!913591 () Bool)

(assert (=> b!986837 m!913591))

(declare-fun m!913593 () Bool)

(assert (=> b!986844 m!913593))

(declare-fun m!913595 () Bool)

(assert (=> b!986843 m!913595))

(assert (=> b!986843 m!913595))

(declare-fun m!913597 () Bool)

(assert (=> b!986843 m!913597))

(check-sat (not mapNonEmpty!36800) b_and!32017 (not b!986843) (not b!986835) (not start!84406) (not b!986844) (not b_next!19965) tp_is_empty!23181 (not b!986837))
(check-sat b_and!32017 (not b_next!19965))
