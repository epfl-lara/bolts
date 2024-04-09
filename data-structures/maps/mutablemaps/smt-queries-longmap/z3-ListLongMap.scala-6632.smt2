; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83794 () Bool)

(assert start!83794)

(declare-fun b_free!19575 () Bool)

(declare-fun b_next!19575 () Bool)

(assert (=> start!83794 (= b_free!19575 (not b_next!19575))))

(declare-fun tp!68167 () Bool)

(declare-fun b_and!31257 () Bool)

(assert (=> start!83794 (= tp!68167 b_and!31257)))

(declare-fun mapIsEmpty!35882 () Bool)

(declare-fun mapRes!35882 () Bool)

(assert (=> mapIsEmpty!35882 mapRes!35882))

(declare-fun b!978023 () Bool)

(declare-fun res!654631 () Bool)

(declare-fun e!551441 () Bool)

(assert (=> b!978023 (=> (not res!654631) (not e!551441))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!978023 (= res!654631 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!978024 () Bool)

(declare-fun e!551442 () Bool)

(declare-fun tp_is_empty!22569 () Bool)

(assert (=> b!978024 (= e!551442 tp_is_empty!22569)))

(declare-fun b!978025 () Bool)

(declare-fun res!654634 () Bool)

(assert (=> b!978025 (=> (not res!654634) (not e!551441))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61155 0))(
  ( (array!61156 (arr!29431 (Array (_ BitVec 32) (_ BitVec 64))) (size!29911 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61155)

(assert (=> b!978025 (= res!654634 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!29911 _keys!1544))))))

(declare-fun b!978026 () Bool)

(assert (=> b!978026 (= e!551441 (not true))))

(declare-datatypes ((V!35075 0))(
  ( (V!35076 (val!11335 Int)) )
))
(declare-datatypes ((tuple2!14628 0))(
  ( (tuple2!14629 (_1!7324 (_ BitVec 64)) (_2!7324 V!35075)) )
))
(declare-datatypes ((List!20528 0))(
  ( (Nil!20525) (Cons!20524 (h!21686 tuple2!14628) (t!29067 List!20528)) )
))
(declare-datatypes ((ListLongMap!13339 0))(
  ( (ListLongMap!13340 (toList!6685 List!20528)) )
))
(declare-fun lt!433591 () ListLongMap!13339)

(declare-fun lt!433592 () tuple2!14628)

(declare-fun lt!433594 () tuple2!14628)

(declare-fun +!2891 (ListLongMap!13339 tuple2!14628) ListLongMap!13339)

(assert (=> b!978026 (= (+!2891 (+!2891 lt!433591 lt!433592) lt!433594) (+!2891 (+!2891 lt!433591 lt!433594) lt!433592))))

(declare-fun lt!433593 () V!35075)

(assert (=> b!978026 (= lt!433594 (tuple2!14629 (select (arr!29431 _keys!1544) from!1932) lt!433593))))

(declare-fun minValue!1220 () V!35075)

(assert (=> b!978026 (= lt!433592 (tuple2!14629 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32457 0))(
  ( (Unit!32458) )
))
(declare-fun lt!433590 () Unit!32457)

(declare-fun addCommutativeForDiffKeys!553 (ListLongMap!13339 (_ BitVec 64) V!35075 (_ BitVec 64) V!35075) Unit!32457)

(assert (=> b!978026 (= lt!433590 (addCommutativeForDiffKeys!553 lt!433591 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29431 _keys!1544) from!1932) lt!433593))))

(declare-datatypes ((ValueCell!10803 0))(
  ( (ValueCellFull!10803 (v!13897 V!35075)) (EmptyCell!10803) )
))
(declare-datatypes ((array!61157 0))(
  ( (array!61158 (arr!29432 (Array (_ BitVec 32) ValueCell!10803)) (size!29912 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61157)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15250 (ValueCell!10803 V!35075) V!35075)

(declare-fun dynLambda!1727 (Int (_ BitVec 64)) V!35075)

(assert (=> b!978026 (= lt!433593 (get!15250 (select (arr!29432 _values!1278) from!1932) (dynLambda!1727 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35075)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3352 (array!61155 array!61157 (_ BitVec 32) (_ BitVec 32) V!35075 V!35075 (_ BitVec 32) Int) ListLongMap!13339)

(assert (=> b!978026 (= lt!433591 (+!2891 (getCurrentListMapNoExtraKeys!3352 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) (tuple2!14629 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220)))))

(declare-fun mapNonEmpty!35882 () Bool)

(declare-fun tp!68168 () Bool)

(assert (=> mapNonEmpty!35882 (= mapRes!35882 (and tp!68168 e!551442))))

(declare-fun mapKey!35882 () (_ BitVec 32))

(declare-fun mapValue!35882 () ValueCell!10803)

(declare-fun mapRest!35882 () (Array (_ BitVec 32) ValueCell!10803))

(assert (=> mapNonEmpty!35882 (= (arr!29432 _values!1278) (store mapRest!35882 mapKey!35882 mapValue!35882))))

(declare-fun b!978028 () Bool)

(declare-fun res!654632 () Bool)

(assert (=> b!978028 (=> (not res!654632) (not e!551441))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!978028 (= res!654632 (validKeyInArray!0 (select (arr!29431 _keys!1544) from!1932)))))

(declare-fun b!978029 () Bool)

(declare-fun e!551440 () Bool)

(assert (=> b!978029 (= e!551440 tp_is_empty!22569)))

(declare-fun b!978030 () Bool)

(declare-fun res!654633 () Bool)

(assert (=> b!978030 (=> (not res!654633) (not e!551441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61155 (_ BitVec 32)) Bool)

(assert (=> b!978030 (= res!654633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!978031 () Bool)

(declare-fun e!551444 () Bool)

(assert (=> b!978031 (= e!551444 (and e!551440 mapRes!35882))))

(declare-fun condMapEmpty!35882 () Bool)

(declare-fun mapDefault!35882 () ValueCell!10803)

(assert (=> b!978031 (= condMapEmpty!35882 (= (arr!29432 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10803)) mapDefault!35882)))))

(declare-fun b!978032 () Bool)

(declare-fun res!654635 () Bool)

(assert (=> b!978032 (=> (not res!654635) (not e!551441))))

(declare-datatypes ((List!20529 0))(
  ( (Nil!20526) (Cons!20525 (h!21687 (_ BitVec 64)) (t!29068 List!20529)) )
))
(declare-fun arrayNoDuplicates!0 (array!61155 (_ BitVec 32) List!20529) Bool)

(assert (=> b!978032 (= res!654635 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20526))))

(declare-fun res!654636 () Bool)

(assert (=> start!83794 (=> (not res!654636) (not e!551441))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83794 (= res!654636 (validMask!0 mask!1948))))

(assert (=> start!83794 e!551441))

(assert (=> start!83794 true))

(assert (=> start!83794 tp_is_empty!22569))

(declare-fun array_inv!22649 (array!61157) Bool)

(assert (=> start!83794 (and (array_inv!22649 _values!1278) e!551444)))

(assert (=> start!83794 tp!68167))

(declare-fun array_inv!22650 (array!61155) Bool)

(assert (=> start!83794 (array_inv!22650 _keys!1544)))

(declare-fun b!978027 () Bool)

(declare-fun res!654630 () Bool)

(assert (=> b!978027 (=> (not res!654630) (not e!551441))))

(assert (=> b!978027 (= res!654630 (and (= (size!29912 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!29911 _keys!1544) (size!29912 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(assert (= (and start!83794 res!654636) b!978027))

(assert (= (and b!978027 res!654630) b!978030))

(assert (= (and b!978030 res!654633) b!978032))

(assert (= (and b!978032 res!654635) b!978025))

(assert (= (and b!978025 res!654634) b!978028))

(assert (= (and b!978028 res!654632) b!978023))

(assert (= (and b!978023 res!654631) b!978026))

(assert (= (and b!978031 condMapEmpty!35882) mapIsEmpty!35882))

(assert (= (and b!978031 (not condMapEmpty!35882)) mapNonEmpty!35882))

(get-info :version)

(assert (= (and mapNonEmpty!35882 ((_ is ValueCellFull!10803) mapValue!35882)) b!978024))

(assert (= (and b!978031 ((_ is ValueCellFull!10803) mapDefault!35882)) b!978029))

(assert (= start!83794 b!978031))

(declare-fun b_lambda!14649 () Bool)

(assert (=> (not b_lambda!14649) (not b!978026)))

(declare-fun t!29066 () Bool)

(declare-fun tb!6389 () Bool)

(assert (=> (and start!83794 (= defaultEntry!1281 defaultEntry!1281) t!29066) tb!6389))

(declare-fun result!12759 () Bool)

(assert (=> tb!6389 (= result!12759 tp_is_empty!22569)))

(assert (=> b!978026 t!29066))

(declare-fun b_and!31259 () Bool)

(assert (= b_and!31257 (and (=> t!29066 result!12759) b_and!31259)))

(declare-fun m!905243 () Bool)

(assert (=> b!978030 m!905243))

(declare-fun m!905245 () Bool)

(assert (=> start!83794 m!905245))

(declare-fun m!905247 () Bool)

(assert (=> start!83794 m!905247))

(declare-fun m!905249 () Bool)

(assert (=> start!83794 m!905249))

(declare-fun m!905251 () Bool)

(assert (=> b!978028 m!905251))

(assert (=> b!978028 m!905251))

(declare-fun m!905253 () Bool)

(assert (=> b!978028 m!905253))

(declare-fun m!905255 () Bool)

(assert (=> mapNonEmpty!35882 m!905255))

(assert (=> b!978026 m!905251))

(declare-fun m!905257 () Bool)

(assert (=> b!978026 m!905257))

(declare-fun m!905259 () Bool)

(assert (=> b!978026 m!905259))

(declare-fun m!905261 () Bool)

(assert (=> b!978026 m!905261))

(declare-fun m!905263 () Bool)

(assert (=> b!978026 m!905263))

(declare-fun m!905265 () Bool)

(assert (=> b!978026 m!905265))

(assert (=> b!978026 m!905263))

(declare-fun m!905267 () Bool)

(assert (=> b!978026 m!905267))

(assert (=> b!978026 m!905267))

(declare-fun m!905269 () Bool)

(assert (=> b!978026 m!905269))

(assert (=> b!978026 m!905259))

(assert (=> b!978026 m!905251))

(declare-fun m!905271 () Bool)

(assert (=> b!978026 m!905271))

(declare-fun m!905273 () Bool)

(assert (=> b!978026 m!905273))

(assert (=> b!978026 m!905257))

(assert (=> b!978026 m!905273))

(declare-fun m!905275 () Bool)

(assert (=> b!978026 m!905275))

(declare-fun m!905277 () Bool)

(assert (=> b!978032 m!905277))

(check-sat (not b_lambda!14649) (not b_next!19575) b_and!31259 tp_is_empty!22569 (not mapNonEmpty!35882) (not b!978026) (not start!83794) (not b!978032) (not b!978028) (not b!978030))
(check-sat b_and!31259 (not b_next!19575))
