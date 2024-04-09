; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108434 () Bool)

(assert start!108434)

(declare-fun b_free!27945 () Bool)

(declare-fun b_next!27945 () Bool)

(assert (=> start!108434 (= b_free!27945 (not b_next!27945))))

(declare-fun tp!98946 () Bool)

(declare-fun b_and!46015 () Bool)

(assert (=> start!108434 (= tp!98946 b_and!46015)))

(declare-fun b!1279246 () Bool)

(declare-fun e!730928 () Bool)

(declare-fun tp_is_empty!33585 () Bool)

(assert (=> b!1279246 (= e!730928 tp_is_empty!33585)))

(declare-fun b!1279247 () Bool)

(declare-fun res!849872 () Bool)

(declare-fun e!730930 () Bool)

(assert (=> b!1279247 (=> (not res!849872) (not e!730930))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84205 0))(
  ( (array!84206 (arr!40602 (Array (_ BitVec 32) (_ BitVec 64))) (size!41153 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84205)

(assert (=> b!1279247 (= res!849872 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41153 _keys!1741))))))

(declare-fun b!1279248 () Bool)

(assert (=> b!1279248 (= e!730930 false)))

(declare-datatypes ((V!49883 0))(
  ( (V!49884 (val!16867 Int)) )
))
(declare-fun minValue!1387 () V!49883)

(declare-fun zeroValue!1387 () V!49883)

(declare-datatypes ((ValueCell!15894 0))(
  ( (ValueCellFull!15894 (v!19465 V!49883)) (EmptyCell!15894) )
))
(declare-datatypes ((array!84207 0))(
  ( (array!84208 (arr!40603 (Array (_ BitVec 32) ValueCell!15894)) (size!41154 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84207)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun lt!575935 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21728 0))(
  ( (tuple2!21729 (_1!10874 (_ BitVec 64)) (_2!10874 V!49883)) )
))
(declare-datatypes ((List!28940 0))(
  ( (Nil!28937) (Cons!28936 (h!30145 tuple2!21728) (t!42487 List!28940)) )
))
(declare-datatypes ((ListLongMap!19397 0))(
  ( (ListLongMap!19398 (toList!9714 List!28940)) )
))
(declare-fun contains!7767 (ListLongMap!19397 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4734 (array!84205 array!84207 (_ BitVec 32) (_ BitVec 32) V!49883 V!49883 (_ BitVec 32) Int) ListLongMap!19397)

(assert (=> b!1279248 (= lt!575935 (contains!7767 (getCurrentListMap!4734 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1279249 () Bool)

(declare-fun e!730926 () Bool)

(declare-fun e!730929 () Bool)

(declare-fun mapRes!51929 () Bool)

(assert (=> b!1279249 (= e!730926 (and e!730929 mapRes!51929))))

(declare-fun condMapEmpty!51929 () Bool)

(declare-fun mapDefault!51929 () ValueCell!15894)

(assert (=> b!1279249 (= condMapEmpty!51929 (= (arr!40603 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15894)) mapDefault!51929)))))

(declare-fun b!1279251 () Bool)

(assert (=> b!1279251 (= e!730929 tp_is_empty!33585)))

(declare-fun mapNonEmpty!51929 () Bool)

(declare-fun tp!98945 () Bool)

(assert (=> mapNonEmpty!51929 (= mapRes!51929 (and tp!98945 e!730928))))

(declare-fun mapKey!51929 () (_ BitVec 32))

(declare-fun mapValue!51929 () ValueCell!15894)

(declare-fun mapRest!51929 () (Array (_ BitVec 32) ValueCell!15894))

(assert (=> mapNonEmpty!51929 (= (arr!40603 _values!1445) (store mapRest!51929 mapKey!51929 mapValue!51929))))

(declare-fun b!1279252 () Bool)

(declare-fun res!849870 () Bool)

(assert (=> b!1279252 (=> (not res!849870) (not e!730930))))

(declare-datatypes ((List!28941 0))(
  ( (Nil!28938) (Cons!28937 (h!30146 (_ BitVec 64)) (t!42488 List!28941)) )
))
(declare-fun arrayNoDuplicates!0 (array!84205 (_ BitVec 32) List!28941) Bool)

(assert (=> b!1279252 (= res!849870 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28938))))

(declare-fun b!1279253 () Bool)

(declare-fun res!849868 () Bool)

(assert (=> b!1279253 (=> (not res!849868) (not e!730930))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84205 (_ BitVec 32)) Bool)

(assert (=> b!1279253 (= res!849868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!51929 () Bool)

(assert (=> mapIsEmpty!51929 mapRes!51929))

(declare-fun b!1279250 () Bool)

(declare-fun res!849869 () Bool)

(assert (=> b!1279250 (=> (not res!849869) (not e!730930))))

(assert (=> b!1279250 (= res!849869 (and (= (size!41154 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41153 _keys!1741) (size!41154 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!849871 () Bool)

(assert (=> start!108434 (=> (not res!849871) (not e!730930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108434 (= res!849871 (validMask!0 mask!2175))))

(assert (=> start!108434 e!730930))

(assert (=> start!108434 tp_is_empty!33585))

(assert (=> start!108434 true))

(declare-fun array_inv!30805 (array!84207) Bool)

(assert (=> start!108434 (and (array_inv!30805 _values!1445) e!730926)))

(declare-fun array_inv!30806 (array!84205) Bool)

(assert (=> start!108434 (array_inv!30806 _keys!1741)))

(assert (=> start!108434 tp!98946))

(assert (= (and start!108434 res!849871) b!1279250))

(assert (= (and b!1279250 res!849869) b!1279253))

(assert (= (and b!1279253 res!849868) b!1279252))

(assert (= (and b!1279252 res!849870) b!1279247))

(assert (= (and b!1279247 res!849872) b!1279248))

(assert (= (and b!1279249 condMapEmpty!51929) mapIsEmpty!51929))

(assert (= (and b!1279249 (not condMapEmpty!51929)) mapNonEmpty!51929))

(get-info :version)

(assert (= (and mapNonEmpty!51929 ((_ is ValueCellFull!15894) mapValue!51929)) b!1279246))

(assert (= (and b!1279249 ((_ is ValueCellFull!15894) mapDefault!51929)) b!1279251))

(assert (= start!108434 b!1279249))

(declare-fun m!1174287 () Bool)

(assert (=> b!1279252 m!1174287))

(declare-fun m!1174289 () Bool)

(assert (=> start!108434 m!1174289))

(declare-fun m!1174291 () Bool)

(assert (=> start!108434 m!1174291))

(declare-fun m!1174293 () Bool)

(assert (=> start!108434 m!1174293))

(declare-fun m!1174295 () Bool)

(assert (=> mapNonEmpty!51929 m!1174295))

(declare-fun m!1174297 () Bool)

(assert (=> b!1279248 m!1174297))

(assert (=> b!1279248 m!1174297))

(declare-fun m!1174299 () Bool)

(assert (=> b!1279248 m!1174299))

(declare-fun m!1174301 () Bool)

(assert (=> b!1279253 m!1174301))

(check-sat (not b!1279248) (not b!1279252) (not b_next!27945) (not b!1279253) b_and!46015 tp_is_empty!33585 (not mapNonEmpty!51929) (not start!108434))
(check-sat b_and!46015 (not b_next!27945))
