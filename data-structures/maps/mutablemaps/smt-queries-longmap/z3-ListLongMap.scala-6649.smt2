; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83896 () Bool)

(assert start!83896)

(declare-fun b_free!19677 () Bool)

(declare-fun b_next!19677 () Bool)

(assert (=> start!83896 (= b_free!19677 (not b_next!19677))))

(declare-fun tp!68473 () Bool)

(declare-fun b_and!31461 () Bool)

(assert (=> start!83896 (= tp!68473 b_and!31461)))

(declare-fun b!979741 () Bool)

(declare-fun res!655788 () Bool)

(declare-fun e!552294 () Bool)

(assert (=> b!979741 (=> (not res!655788) (not e!552294))))

(declare-datatypes ((array!61353 0))(
  ( (array!61354 (arr!29530 (Array (_ BitVec 32) (_ BitVec 64))) (size!30010 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61353)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61353 (_ BitVec 32)) Bool)

(assert (=> b!979741 (= res!655788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!979742 () Bool)

(declare-fun res!655791 () Bool)

(assert (=> b!979742 (=> (not res!655791) (not e!552294))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!979742 (= res!655791 (and (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!979743 () Bool)

(declare-fun res!655793 () Bool)

(assert (=> b!979743 (=> (not res!655793) (not e!552294))))

(declare-datatypes ((List!20600 0))(
  ( (Nil!20597) (Cons!20596 (h!21758 (_ BitVec 64)) (t!29241 List!20600)) )
))
(declare-fun arrayNoDuplicates!0 (array!61353 (_ BitVec 32) List!20600) Bool)

(assert (=> b!979743 (= res!655793 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20597))))

(declare-fun b!979744 () Bool)

(declare-fun res!655787 () Bool)

(assert (=> b!979744 (=> (not res!655787) (not e!552294))))

(declare-datatypes ((V!35211 0))(
  ( (V!35212 (val!11386 Int)) )
))
(declare-datatypes ((ValueCell!10854 0))(
  ( (ValueCellFull!10854 (v!13948 V!35211)) (EmptyCell!10854) )
))
(declare-datatypes ((array!61355 0))(
  ( (array!61356 (arr!29531 (Array (_ BitVec 32) ValueCell!10854)) (size!30011 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61355)

(assert (=> b!979744 (= res!655787 (and (= (size!30011 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30010 _keys!1544) (size!30011 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!979745 () Bool)

(declare-fun res!655790 () Bool)

(assert (=> b!979745 (=> (not res!655790) (not e!552294))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!979745 (= res!655790 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30010 _keys!1544))))))

(declare-fun b!979746 () Bool)

(declare-fun res!655794 () Bool)

(assert (=> b!979746 (=> (not res!655794) (not e!552294))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!979746 (= res!655794 (validKeyInArray!0 (select (arr!29530 _keys!1544) from!1932)))))

(declare-fun b!979747 () Bool)

(declare-fun e!552293 () Bool)

(assert (=> b!979747 (= e!552294 (not e!552293))))

(declare-fun res!655792 () Bool)

(assert (=> b!979747 (=> res!655792 e!552293)))

(assert (=> b!979747 (= res!655792 (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29530 _keys!1544) from!1932)))))

(declare-datatypes ((tuple2!14708 0))(
  ( (tuple2!14709 (_1!7364 (_ BitVec 64)) (_2!7364 V!35211)) )
))
(declare-datatypes ((List!20601 0))(
  ( (Nil!20598) (Cons!20597 (h!21759 tuple2!14708) (t!29242 List!20601)) )
))
(declare-datatypes ((ListLongMap!13419 0))(
  ( (ListLongMap!13420 (toList!6725 List!20601)) )
))
(declare-fun lt!434789 () ListLongMap!13419)

(declare-fun lt!434794 () ListLongMap!13419)

(declare-fun lt!434787 () tuple2!14708)

(declare-fun lt!434793 () tuple2!14708)

(declare-fun +!2931 (ListLongMap!13419 tuple2!14708) ListLongMap!13419)

(assert (=> b!979747 (= (+!2931 lt!434789 lt!434793) (+!2931 lt!434794 lt!434787))))

(declare-fun lt!434790 () ListLongMap!13419)

(assert (=> b!979747 (= lt!434794 (+!2931 lt!434790 lt!434793))))

(declare-fun lt!434786 () V!35211)

(assert (=> b!979747 (= lt!434793 (tuple2!14709 (select (arr!29530 _keys!1544) from!1932) lt!434786))))

(assert (=> b!979747 (= lt!434789 (+!2931 lt!434790 lt!434787))))

(declare-fun minValue!1220 () V!35211)

(assert (=> b!979747 (= lt!434787 (tuple2!14709 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32537 0))(
  ( (Unit!32538) )
))
(declare-fun lt!434791 () Unit!32537)

(declare-fun addCommutativeForDiffKeys!593 (ListLongMap!13419 (_ BitVec 64) V!35211 (_ BitVec 64) V!35211) Unit!32537)

(assert (=> b!979747 (= lt!434791 (addCommutativeForDiffKeys!593 lt!434790 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29530 _keys!1544) from!1932) lt!434786))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15323 (ValueCell!10854 V!35211) V!35211)

(declare-fun dynLambda!1766 (Int (_ BitVec 64)) V!35211)

(assert (=> b!979747 (= lt!434786 (get!15323 (select (arr!29531 _values!1278) from!1932) (dynLambda!1766 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!434785 () ListLongMap!13419)

(declare-fun lt!434788 () tuple2!14708)

(assert (=> b!979747 (= lt!434790 (+!2931 lt!434785 lt!434788))))

(declare-fun zeroValue!1220 () V!35211)

(assert (=> b!979747 (= lt!434788 (tuple2!14709 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-fun getCurrentListMapNoExtraKeys!3391 (array!61353 array!61355 (_ BitVec 32) (_ BitVec 32) V!35211 V!35211 (_ BitVec 32) Int) ListLongMap!13419)

(assert (=> b!979747 (= lt!434785 (getCurrentListMapNoExtraKeys!3391 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!979748 () Bool)

(declare-fun e!552295 () Bool)

(declare-fun e!552296 () Bool)

(declare-fun mapRes!36035 () Bool)

(assert (=> b!979748 (= e!552295 (and e!552296 mapRes!36035))))

(declare-fun condMapEmpty!36035 () Bool)

(declare-fun mapDefault!36035 () ValueCell!10854)

(assert (=> b!979748 (= condMapEmpty!36035 (= (arr!29531 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10854)) mapDefault!36035)))))

(declare-fun res!655789 () Bool)

(assert (=> start!83896 (=> (not res!655789) (not e!552294))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83896 (= res!655789 (validMask!0 mask!1948))))

(assert (=> start!83896 e!552294))

(assert (=> start!83896 true))

(declare-fun tp_is_empty!22671 () Bool)

(assert (=> start!83896 tp_is_empty!22671))

(declare-fun array_inv!22721 (array!61355) Bool)

(assert (=> start!83896 (and (array_inv!22721 _values!1278) e!552295)))

(assert (=> start!83896 tp!68473))

(declare-fun array_inv!22722 (array!61353) Bool)

(assert (=> start!83896 (array_inv!22722 _keys!1544)))

(declare-fun b!979749 () Bool)

(assert (=> b!979749 (= e!552293 true)))

(assert (=> b!979749 (= lt!434794 (+!2931 (+!2931 lt!434785 lt!434793) lt!434788))))

(declare-fun lt!434792 () Unit!32537)

(assert (=> b!979749 (= lt!434792 (addCommutativeForDiffKeys!593 lt!434785 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29530 _keys!1544) from!1932) lt!434786))))

(declare-fun b!979750 () Bool)

(assert (=> b!979750 (= e!552296 tp_is_empty!22671)))

(declare-fun mapIsEmpty!36035 () Bool)

(assert (=> mapIsEmpty!36035 mapRes!36035))

(declare-fun b!979751 () Bool)

(declare-fun e!552292 () Bool)

(assert (=> b!979751 (= e!552292 tp_is_empty!22671)))

(declare-fun mapNonEmpty!36035 () Bool)

(declare-fun tp!68474 () Bool)

(assert (=> mapNonEmpty!36035 (= mapRes!36035 (and tp!68474 e!552292))))

(declare-fun mapValue!36035 () ValueCell!10854)

(declare-fun mapRest!36035 () (Array (_ BitVec 32) ValueCell!10854))

(declare-fun mapKey!36035 () (_ BitVec 32))

(assert (=> mapNonEmpty!36035 (= (arr!29531 _values!1278) (store mapRest!36035 mapKey!36035 mapValue!36035))))

(assert (= (and start!83896 res!655789) b!979744))

(assert (= (and b!979744 res!655787) b!979741))

(assert (= (and b!979741 res!655788) b!979743))

(assert (= (and b!979743 res!655793) b!979745))

(assert (= (and b!979745 res!655790) b!979746))

(assert (= (and b!979746 res!655794) b!979742))

(assert (= (and b!979742 res!655791) b!979747))

(assert (= (and b!979747 (not res!655792)) b!979749))

(assert (= (and b!979748 condMapEmpty!36035) mapIsEmpty!36035))

(assert (= (and b!979748 (not condMapEmpty!36035)) mapNonEmpty!36035))

(get-info :version)

(assert (= (and mapNonEmpty!36035 ((_ is ValueCellFull!10854) mapValue!36035)) b!979751))

(assert (= (and b!979748 ((_ is ValueCellFull!10854) mapDefault!36035)) b!979750))

(assert (= start!83896 b!979748))

(declare-fun b_lambda!14751 () Bool)

(assert (=> (not b_lambda!14751) (not b!979747)))

(declare-fun t!29240 () Bool)

(declare-fun tb!6491 () Bool)

(assert (=> (and start!83896 (= defaultEntry!1281 defaultEntry!1281) t!29240) tb!6491))

(declare-fun result!12963 () Bool)

(assert (=> tb!6491 (= result!12963 tp_is_empty!22671)))

(assert (=> b!979747 t!29240))

(declare-fun b_and!31463 () Bool)

(assert (= b_and!31461 (and (=> t!29240 result!12963) b_and!31463)))

(declare-fun m!907247 () Bool)

(assert (=> b!979741 m!907247))

(declare-fun m!907249 () Bool)

(assert (=> mapNonEmpty!36035 m!907249))

(declare-fun m!907251 () Bool)

(assert (=> b!979743 m!907251))

(declare-fun m!907253 () Bool)

(assert (=> b!979749 m!907253))

(assert (=> b!979749 m!907253))

(declare-fun m!907255 () Bool)

(assert (=> b!979749 m!907255))

(declare-fun m!907257 () Bool)

(assert (=> b!979749 m!907257))

(assert (=> b!979749 m!907257))

(declare-fun m!907259 () Bool)

(assert (=> b!979749 m!907259))

(declare-fun m!907261 () Bool)

(assert (=> start!83896 m!907261))

(declare-fun m!907263 () Bool)

(assert (=> start!83896 m!907263))

(declare-fun m!907265 () Bool)

(assert (=> start!83896 m!907265))

(assert (=> b!979747 m!907257))

(declare-fun m!907267 () Bool)

(assert (=> b!979747 m!907267))

(declare-fun m!907269 () Bool)

(assert (=> b!979747 m!907269))

(declare-fun m!907271 () Bool)

(assert (=> b!979747 m!907271))

(assert (=> b!979747 m!907257))

(declare-fun m!907273 () Bool)

(assert (=> b!979747 m!907273))

(declare-fun m!907275 () Bool)

(assert (=> b!979747 m!907275))

(declare-fun m!907277 () Bool)

(assert (=> b!979747 m!907277))

(declare-fun m!907279 () Bool)

(assert (=> b!979747 m!907279))

(declare-fun m!907281 () Bool)

(assert (=> b!979747 m!907281))

(declare-fun m!907283 () Bool)

(assert (=> b!979747 m!907283))

(assert (=> b!979747 m!907267))

(assert (=> b!979747 m!907283))

(declare-fun m!907285 () Bool)

(assert (=> b!979747 m!907285))

(assert (=> b!979746 m!907257))

(assert (=> b!979746 m!907257))

(declare-fun m!907287 () Bool)

(assert (=> b!979746 m!907287))

(check-sat b_and!31463 (not b!979743) tp_is_empty!22671 (not b!979747) (not start!83896) (not b_next!19677) (not b_lambda!14751) (not b!979746) (not mapNonEmpty!36035) (not b!979741) (not b!979749))
(check-sat b_and!31463 (not b_next!19677))
