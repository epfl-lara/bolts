; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83836 () Bool)

(assert start!83836)

(declare-fun b_free!19617 () Bool)

(declare-fun b_next!19617 () Bool)

(assert (=> start!83836 (= b_free!19617 (not b_next!19617))))

(declare-fun tp!68293 () Bool)

(declare-fun b_and!31341 () Bool)

(assert (=> start!83836 (= tp!68293 b_and!31341)))

(declare-fun b!978695 () Bool)

(declare-fun e!551755 () Bool)

(declare-fun e!551756 () Bool)

(declare-fun mapRes!35945 () Bool)

(assert (=> b!978695 (= e!551755 (and e!551756 mapRes!35945))))

(declare-fun condMapEmpty!35945 () Bool)

(declare-datatypes ((V!35131 0))(
  ( (V!35132 (val!11356 Int)) )
))
(declare-datatypes ((ValueCell!10824 0))(
  ( (ValueCellFull!10824 (v!13918 V!35131)) (EmptyCell!10824) )
))
(declare-datatypes ((array!61237 0))(
  ( (array!61238 (arr!29472 (Array (_ BitVec 32) ValueCell!10824)) (size!29952 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61237)

(declare-fun mapDefault!35945 () ValueCell!10824)

(assert (=> b!978695 (= condMapEmpty!35945 (= (arr!29472 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10824)) mapDefault!35945)))))

(declare-fun b!978696 () Bool)

(declare-fun res!655071 () Bool)

(declare-fun e!551758 () Bool)

(assert (=> b!978696 (=> (not res!655071) (not e!551758))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!978696 (= res!655071 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!978697 () Bool)

(declare-fun res!655077 () Bool)

(assert (=> b!978697 (=> (not res!655077) (not e!551758))))

(declare-datatypes ((array!61239 0))(
  ( (array!61240 (arr!29473 (Array (_ BitVec 32) (_ BitVec 64))) (size!29953 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61239)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978697 (= res!655077 (validKeyInArray!0 (select (arr!29473 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!35945 () Bool)

(assert (=> mapIsEmpty!35945 mapRes!35945))

(declare-fun res!655075 () Bool)

(assert (=> start!83836 (=> (not res!655075) (not e!551758))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83836 (= res!655075 (validMask!0 mask!1948))))

(assert (=> start!83836 e!551758))

(assert (=> start!83836 true))

(declare-fun tp_is_empty!22611 () Bool)

(assert (=> start!83836 tp_is_empty!22611))

(declare-fun array_inv!22683 (array!61237) Bool)

(assert (=> start!83836 (and (array_inv!22683 _values!1278) e!551755)))

(assert (=> start!83836 tp!68293))

(declare-fun array_inv!22684 (array!61239) Bool)

(assert (=> start!83836 (array_inv!22684 _keys!1544)))

(declare-fun b!978698 () Bool)

(assert (=> b!978698 (= e!551756 tp_is_empty!22611)))

(declare-fun b!978699 () Bool)

(declare-fun res!655072 () Bool)

(assert (=> b!978699 (=> (not res!655072) (not e!551758))))

(assert (=> b!978699 (= res!655072 (and (= (size!29952 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29953 _keys!1544) (size!29952 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!978700 () Bool)

(declare-fun e!551759 () Bool)

(assert (=> b!978700 (= e!551759 tp_is_empty!22611)))

(declare-fun mapNonEmpty!35945 () Bool)

(declare-fun tp!68294 () Bool)

(assert (=> mapNonEmpty!35945 (= mapRes!35945 (and tp!68294 e!551759))))

(declare-fun mapRest!35945 () (Array (_ BitVec 32) ValueCell!10824))

(declare-fun mapValue!35945 () ValueCell!10824)

(declare-fun mapKey!35945 () (_ BitVec 32))

(assert (=> mapNonEmpty!35945 (= (arr!29472 _values!1278) (store mapRest!35945 mapKey!35945 mapValue!35945))))

(declare-fun b!978701 () Bool)

(declare-fun res!655073 () Bool)

(assert (=> b!978701 (=> (not res!655073) (not e!551758))))

(assert (=> b!978701 (= res!655073 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29953 _keys!1544))))))

(declare-fun b!978702 () Bool)

(assert (=> b!978702 (= e!551758 (not true))))

(declare-datatypes ((tuple2!14658 0))(
  ( (tuple2!14659 (_1!7339 (_ BitVec 64)) (_2!7339 V!35131)) )
))
(declare-datatypes ((List!20557 0))(
  ( (Nil!20554) (Cons!20553 (h!21715 tuple2!14658) (t!29138 List!20557)) )
))
(declare-datatypes ((ListLongMap!13369 0))(
  ( (ListLongMap!13370 (toList!6700 List!20557)) )
))
(declare-fun lt!433905 () ListLongMap!13369)

(declare-fun lt!433909 () tuple2!14658)

(declare-fun lt!433908 () tuple2!14658)

(declare-fun +!2906 (ListLongMap!13369 tuple2!14658) ListLongMap!13369)

(assert (=> b!978702 (= (+!2906 (+!2906 lt!433905 lt!433909) lt!433908) (+!2906 (+!2906 lt!433905 lt!433908) lt!433909))))

(declare-fun lt!433906 () V!35131)

(assert (=> b!978702 (= lt!433908 (tuple2!14659 (select (arr!29473 _keys!1544) from!1932) lt!433906))))

(declare-fun minValue!1220 () V!35131)

(assert (=> b!978702 (= lt!433909 (tuple2!14659 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32487 0))(
  ( (Unit!32488) )
))
(declare-fun lt!433907 () Unit!32487)

(declare-fun addCommutativeForDiffKeys!568 (ListLongMap!13369 (_ BitVec 64) V!35131 (_ BitVec 64) V!35131) Unit!32487)

(assert (=> b!978702 (= lt!433907 (addCommutativeForDiffKeys!568 lt!433905 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29473 _keys!1544) from!1932) lt!433906))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15279 (ValueCell!10824 V!35131) V!35131)

(declare-fun dynLambda!1742 (Int (_ BitVec 64)) V!35131)

(assert (=> b!978702 (= lt!433906 (get!15279 (select (arr!29472 _values!1278) from!1932) (dynLambda!1742 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35131)

(declare-fun getCurrentListMapNoExtraKeys!3367 (array!61239 array!61237 (_ BitVec 32) (_ BitVec 32) V!35131 V!35131 (_ BitVec 32) Int) ListLongMap!13369)

(assert (=> b!978702 (= lt!433905 (+!2906 (getCurrentListMapNoExtraKeys!3367 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14659 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun b!978703 () Bool)

(declare-fun res!655076 () Bool)

(assert (=> b!978703 (=> (not res!655076) (not e!551758))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61239 (_ BitVec 32)) Bool)

(assert (=> b!978703 (= res!655076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978704 () Bool)

(declare-fun res!655074 () Bool)

(assert (=> b!978704 (=> (not res!655074) (not e!551758))))

(declare-datatypes ((List!20558 0))(
  ( (Nil!20555) (Cons!20554 (h!21716 (_ BitVec 64)) (t!29139 List!20558)) )
))
(declare-fun arrayNoDuplicates!0 (array!61239 (_ BitVec 32) List!20558) Bool)

(assert (=> b!978704 (= res!655074 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20555))))

(assert (= (and start!83836 res!655075) b!978699))

(assert (= (and b!978699 res!655072) b!978703))

(assert (= (and b!978703 res!655076) b!978704))

(assert (= (and b!978704 res!655074) b!978701))

(assert (= (and b!978701 res!655073) b!978697))

(assert (= (and b!978697 res!655077) b!978696))

(assert (= (and b!978696 res!655071) b!978702))

(assert (= (and b!978695 condMapEmpty!35945) mapIsEmpty!35945))

(assert (= (and b!978695 (not condMapEmpty!35945)) mapNonEmpty!35945))

(get-info :version)

(assert (= (and mapNonEmpty!35945 ((_ is ValueCellFull!10824) mapValue!35945)) b!978700))

(assert (= (and b!978695 ((_ is ValueCellFull!10824) mapDefault!35945)) b!978698))

(assert (= start!83836 b!978695))

(declare-fun b_lambda!14691 () Bool)

(assert (=> (not b_lambda!14691) (not b!978702)))

(declare-fun t!29137 () Bool)

(declare-fun tb!6431 () Bool)

(assert (=> (and start!83836 (= defaultEntry!1281 defaultEntry!1281) t!29137) tb!6431))

(declare-fun result!12843 () Bool)

(assert (=> tb!6431 (= result!12843 tp_is_empty!22611)))

(assert (=> b!978702 t!29137))

(declare-fun b_and!31343 () Bool)

(assert (= b_and!31341 (and (=> t!29137 result!12843) b_and!31343)))

(declare-fun m!905999 () Bool)

(assert (=> b!978702 m!905999))

(declare-fun m!906001 () Bool)

(assert (=> b!978702 m!906001))

(declare-fun m!906003 () Bool)

(assert (=> b!978702 m!906003))

(declare-fun m!906005 () Bool)

(assert (=> b!978702 m!906005))

(assert (=> b!978702 m!906005))

(declare-fun m!906007 () Bool)

(assert (=> b!978702 m!906007))

(assert (=> b!978702 m!906003))

(declare-fun m!906009 () Bool)

(assert (=> b!978702 m!906009))

(assert (=> b!978702 m!905999))

(declare-fun m!906011 () Bool)

(assert (=> b!978702 m!906011))

(assert (=> b!978702 m!906011))

(declare-fun m!906013 () Bool)

(assert (=> b!978702 m!906013))

(declare-fun m!906015 () Bool)

(assert (=> b!978702 m!906015))

(declare-fun m!906017 () Bool)

(assert (=> b!978702 m!906017))

(assert (=> b!978702 m!906015))

(assert (=> b!978702 m!906017))

(declare-fun m!906019 () Bool)

(assert (=> b!978702 m!906019))

(declare-fun m!906021 () Bool)

(assert (=> mapNonEmpty!35945 m!906021))

(declare-fun m!906023 () Bool)

(assert (=> start!83836 m!906023))

(declare-fun m!906025 () Bool)

(assert (=> start!83836 m!906025))

(declare-fun m!906027 () Bool)

(assert (=> start!83836 m!906027))

(declare-fun m!906029 () Bool)

(assert (=> b!978703 m!906029))

(declare-fun m!906031 () Bool)

(assert (=> b!978704 m!906031))

(assert (=> b!978697 m!905999))

(assert (=> b!978697 m!905999))

(declare-fun m!906033 () Bool)

(assert (=> b!978697 m!906033))

(check-sat (not b_lambda!14691) (not b!978702) (not b_next!19617) b_and!31343 (not b!978704) (not start!83836) tp_is_empty!22611 (not mapNonEmpty!35945) (not b!978697) (not b!978703))
(check-sat b_and!31343 (not b_next!19617))
