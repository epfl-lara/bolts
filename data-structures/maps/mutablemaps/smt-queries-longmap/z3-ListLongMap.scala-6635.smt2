; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83812 () Bool)

(assert start!83812)

(declare-fun b_free!19593 () Bool)

(declare-fun b_next!19593 () Bool)

(assert (=> start!83812 (= b_free!19593 (not b_next!19593))))

(declare-fun tp!68222 () Bool)

(declare-fun b_and!31293 () Bool)

(assert (=> start!83812 (= tp!68222 b_and!31293)))

(declare-fun b!978311 () Bool)

(declare-fun e!551575 () Bool)

(declare-fun e!551578 () Bool)

(declare-fun mapRes!35909 () Bool)

(assert (=> b!978311 (= e!551575 (and e!551578 mapRes!35909))))

(declare-fun condMapEmpty!35909 () Bool)

(declare-datatypes ((V!35099 0))(
  ( (V!35100 (val!11344 Int)) )
))
(declare-datatypes ((ValueCell!10812 0))(
  ( (ValueCellFull!10812 (v!13906 V!35099)) (EmptyCell!10812) )
))
(declare-datatypes ((array!61189 0))(
  ( (array!61190 (arr!29448 (Array (_ BitVec 32) ValueCell!10812)) (size!29928 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61189)

(declare-fun mapDefault!35909 () ValueCell!10812)

(assert (=> b!978311 (= condMapEmpty!35909 (= (arr!29448 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10812)) mapDefault!35909)))))

(declare-fun mapNonEmpty!35909 () Bool)

(declare-fun tp!68221 () Bool)

(declare-fun e!551579 () Bool)

(assert (=> mapNonEmpty!35909 (= mapRes!35909 (and tp!68221 e!551579))))

(declare-fun mapKey!35909 () (_ BitVec 32))

(declare-fun mapRest!35909 () (Array (_ BitVec 32) ValueCell!10812))

(declare-fun mapValue!35909 () ValueCell!10812)

(assert (=> mapNonEmpty!35909 (= (arr!29448 _values!1278) (store mapRest!35909 mapKey!35909 mapValue!35909))))

(declare-fun b!978312 () Bool)

(declare-fun tp_is_empty!22587 () Bool)

(assert (=> b!978312 (= e!551578 tp_is_empty!22587)))

(declare-fun res!654821 () Bool)

(declare-fun e!551576 () Bool)

(assert (=> start!83812 (=> (not res!654821) (not e!551576))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83812 (= res!654821 (validMask!0 mask!1948))))

(assert (=> start!83812 e!551576))

(assert (=> start!83812 true))

(assert (=> start!83812 tp_is_empty!22587))

(declare-fun array_inv!22661 (array!61189) Bool)

(assert (=> start!83812 (and (array_inv!22661 _values!1278) e!551575)))

(assert (=> start!83812 tp!68222))

(declare-datatypes ((array!61191 0))(
  ( (array!61192 (arr!29449 (Array (_ BitVec 32) (_ BitVec 64))) (size!29929 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61191)

(declare-fun array_inv!22662 (array!61191) Bool)

(assert (=> start!83812 (array_inv!22662 _keys!1544)))

(declare-fun b!978313 () Bool)

(declare-fun res!654825 () Bool)

(assert (=> b!978313 (=> (not res!654825) (not e!551576))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!978313 (= res!654825 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!978314 () Bool)

(declare-fun res!654822 () Bool)

(assert (=> b!978314 (=> (not res!654822) (not e!551576))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61191 (_ BitVec 32)) Bool)

(assert (=> b!978314 (= res!654822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978315 () Bool)

(declare-fun res!654820 () Bool)

(assert (=> b!978315 (=> (not res!654820) (not e!551576))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978315 (= res!654820 (validKeyInArray!0 (select (arr!29449 _keys!1544) from!1932)))))

(declare-fun b!978316 () Bool)

(declare-fun res!654824 () Bool)

(assert (=> b!978316 (=> (not res!654824) (not e!551576))))

(assert (=> b!978316 (= res!654824 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29929 _keys!1544))))))

(declare-fun b!978317 () Bool)

(assert (=> b!978317 (= e!551579 tp_is_empty!22587)))

(declare-fun b!978318 () Bool)

(assert (=> b!978318 (= e!551576 (not true))))

(declare-datatypes ((tuple2!14642 0))(
  ( (tuple2!14643 (_1!7331 (_ BitVec 64)) (_2!7331 V!35099)) )
))
(declare-datatypes ((List!20542 0))(
  ( (Nil!20539) (Cons!20538 (h!21700 tuple2!14642) (t!29099 List!20542)) )
))
(declare-datatypes ((ListLongMap!13353 0))(
  ( (ListLongMap!13354 (toList!6692 List!20542)) )
))
(declare-fun lt!433728 () ListLongMap!13353)

(declare-fun lt!433729 () tuple2!14642)

(declare-fun lt!433725 () tuple2!14642)

(declare-fun +!2898 (ListLongMap!13353 tuple2!14642) ListLongMap!13353)

(assert (=> b!978318 (= (+!2898 (+!2898 lt!433728 lt!433729) lt!433725) (+!2898 (+!2898 lt!433728 lt!433725) lt!433729))))

(declare-fun lt!433727 () V!35099)

(assert (=> b!978318 (= lt!433725 (tuple2!14643 (select (arr!29449 _keys!1544) from!1932) lt!433727))))

(declare-fun minValue!1220 () V!35099)

(assert (=> b!978318 (= lt!433729 (tuple2!14643 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32471 0))(
  ( (Unit!32472) )
))
(declare-fun lt!433726 () Unit!32471)

(declare-fun addCommutativeForDiffKeys!560 (ListLongMap!13353 (_ BitVec 64) V!35099 (_ BitVec 64) V!35099) Unit!32471)

(assert (=> b!978318 (= lt!433726 (addCommutativeForDiffKeys!560 lt!433728 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29449 _keys!1544) from!1932) lt!433727))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15263 (ValueCell!10812 V!35099) V!35099)

(declare-fun dynLambda!1734 (Int (_ BitVec 64)) V!35099)

(assert (=> b!978318 (= lt!433727 (get!15263 (select (arr!29448 _values!1278) from!1932) (dynLambda!1734 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35099)

(declare-fun getCurrentListMapNoExtraKeys!3359 (array!61191 array!61189 (_ BitVec 32) (_ BitVec 32) V!35099 V!35099 (_ BitVec 32) Int) ListLongMap!13353)

(assert (=> b!978318 (= lt!433728 (+!2898 (getCurrentListMapNoExtraKeys!3359 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14643 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!978319 () Bool)

(declare-fun res!654819 () Bool)

(assert (=> b!978319 (=> (not res!654819) (not e!551576))))

(declare-datatypes ((List!20543 0))(
  ( (Nil!20540) (Cons!20539 (h!21701 (_ BitVec 64)) (t!29100 List!20543)) )
))
(declare-fun arrayNoDuplicates!0 (array!61191 (_ BitVec 32) List!20543) Bool)

(assert (=> b!978319 (= res!654819 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20540))))

(declare-fun mapIsEmpty!35909 () Bool)

(assert (=> mapIsEmpty!35909 mapRes!35909))

(declare-fun b!978320 () Bool)

(declare-fun res!654823 () Bool)

(assert (=> b!978320 (=> (not res!654823) (not e!551576))))

(assert (=> b!978320 (= res!654823 (and (= (size!29928 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29929 _keys!1544) (size!29928 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(assert (= (and start!83812 res!654821) b!978320))

(assert (= (and b!978320 res!654823) b!978314))

(assert (= (and b!978314 res!654822) b!978319))

(assert (= (and b!978319 res!654819) b!978316))

(assert (= (and b!978316 res!654824) b!978315))

(assert (= (and b!978315 res!654820) b!978313))

(assert (= (and b!978313 res!654825) b!978318))

(assert (= (and b!978311 condMapEmpty!35909) mapIsEmpty!35909))

(assert (= (and b!978311 (not condMapEmpty!35909)) mapNonEmpty!35909))

(get-info :version)

(assert (= (and mapNonEmpty!35909 ((_ is ValueCellFull!10812) mapValue!35909)) b!978317))

(assert (= (and b!978311 ((_ is ValueCellFull!10812) mapDefault!35909)) b!978312))

(assert (= start!83812 b!978311))

(declare-fun b_lambda!14667 () Bool)

(assert (=> (not b_lambda!14667) (not b!978318)))

(declare-fun t!29098 () Bool)

(declare-fun tb!6407 () Bool)

(assert (=> (and start!83812 (= defaultEntry!1281 defaultEntry!1281) t!29098) tb!6407))

(declare-fun result!12795 () Bool)

(assert (=> tb!6407 (= result!12795 tp_is_empty!22587)))

(assert (=> b!978318 t!29098))

(declare-fun b_and!31295 () Bool)

(assert (= b_and!31293 (and (=> t!29098 result!12795) b_and!31295)))

(declare-fun m!905567 () Bool)

(assert (=> b!978319 m!905567))

(declare-fun m!905569 () Bool)

(assert (=> b!978318 m!905569))

(declare-fun m!905571 () Bool)

(assert (=> b!978318 m!905571))

(declare-fun m!905573 () Bool)

(assert (=> b!978318 m!905573))

(assert (=> b!978318 m!905573))

(declare-fun m!905575 () Bool)

(assert (=> b!978318 m!905575))

(declare-fun m!905577 () Bool)

(assert (=> b!978318 m!905577))

(declare-fun m!905579 () Bool)

(assert (=> b!978318 m!905579))

(declare-fun m!905581 () Bool)

(assert (=> b!978318 m!905581))

(assert (=> b!978318 m!905581))

(declare-fun m!905583 () Bool)

(assert (=> b!978318 m!905583))

(assert (=> b!978318 m!905569))

(declare-fun m!905585 () Bool)

(assert (=> b!978318 m!905585))

(assert (=> b!978318 m!905577))

(declare-fun m!905587 () Bool)

(assert (=> b!978318 m!905587))

(assert (=> b!978318 m!905571))

(assert (=> b!978318 m!905587))

(declare-fun m!905589 () Bool)

(assert (=> b!978318 m!905589))

(declare-fun m!905591 () Bool)

(assert (=> mapNonEmpty!35909 m!905591))

(assert (=> b!978315 m!905569))

(assert (=> b!978315 m!905569))

(declare-fun m!905593 () Bool)

(assert (=> b!978315 m!905593))

(declare-fun m!905595 () Bool)

(assert (=> start!83812 m!905595))

(declare-fun m!905597 () Bool)

(assert (=> start!83812 m!905597))

(declare-fun m!905599 () Bool)

(assert (=> start!83812 m!905599))

(declare-fun m!905601 () Bool)

(assert (=> b!978314 m!905601))

(check-sat b_and!31295 (not mapNonEmpty!35909) (not start!83812) (not b!978315) (not b_lambda!14667) (not b!978319) (not b!978318) (not b_next!19593) tp_is_empty!22587 (not b!978314))
(check-sat b_and!31295 (not b_next!19593))
