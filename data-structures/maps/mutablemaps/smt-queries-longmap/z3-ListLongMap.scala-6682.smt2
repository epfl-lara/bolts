; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84094 () Bool)

(assert start!84094)

(declare-fun b_free!19821 () Bool)

(declare-fun b_next!19821 () Bool)

(assert (=> start!84094 (= b_free!19821 (not b_next!19821))))

(declare-fun tp!68987 () Bool)

(declare-fun b_and!31743 () Bool)

(assert (=> start!84094 (= tp!68987 b_and!31743)))

(declare-fun mapNonEmpty!36332 () Bool)

(declare-fun mapRes!36332 () Bool)

(declare-fun tp!68986 () Bool)

(declare-fun e!553984 () Bool)

(assert (=> mapNonEmpty!36332 (= mapRes!36332 (and tp!68986 e!553984))))

(declare-datatypes ((V!35475 0))(
  ( (V!35476 (val!11485 Int)) )
))
(declare-datatypes ((ValueCell!10953 0))(
  ( (ValueCellFull!10953 (v!14047 V!35475)) (EmptyCell!10953) )
))
(declare-fun mapValue!36332 () ValueCell!10953)

(declare-datatypes ((array!61723 0))(
  ( (array!61724 (arr!29715 (Array (_ BitVec 32) ValueCell!10953)) (size!30195 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61723)

(declare-fun mapRest!36332 () (Array (_ BitVec 32) ValueCell!10953))

(declare-fun mapKey!36332 () (_ BitVec 32))

(assert (=> mapNonEmpty!36332 (= (arr!29715 _values!1278) (store mapRest!36332 mapKey!36332 mapValue!36332))))

(declare-fun b!982759 () Bool)

(declare-fun e!553987 () Bool)

(declare-fun e!553986 () Bool)

(assert (=> b!982759 (= e!553987 e!553986)))

(declare-fun res!657783 () Bool)

(assert (=> b!982759 (=> (not res!657783) (not e!553986))))

(declare-datatypes ((array!61725 0))(
  ( (array!61726 (arr!29716 (Array (_ BitVec 32) (_ BitVec 64))) (size!30196 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61725)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!982759 (= res!657783 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29716 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!436281 () V!35475)

(declare-fun get!15436 (ValueCell!10953 V!35475) V!35475)

(declare-fun dynLambda!1813 (Int (_ BitVec 64)) V!35475)

(assert (=> b!982759 (= lt!436281 (get!15436 (select (arr!29715 _values!1278) from!1932) (dynLambda!1813 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35475)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-fun zeroValue!1220 () V!35475)

(declare-datatypes ((tuple2!14820 0))(
  ( (tuple2!14821 (_1!7420 (_ BitVec 64)) (_2!7420 V!35475)) )
))
(declare-datatypes ((List!20725 0))(
  ( (Nil!20722) (Cons!20721 (h!21883 tuple2!14820) (t!29504 List!20725)) )
))
(declare-datatypes ((ListLongMap!13531 0))(
  ( (ListLongMap!13532 (toList!6781 List!20725)) )
))
(declare-fun lt!436284 () ListLongMap!13531)

(declare-fun getCurrentListMapNoExtraKeys!3440 (array!61725 array!61723 (_ BitVec 32) (_ BitVec 32) V!35475 V!35475 (_ BitVec 32) Int) ListLongMap!13531)

(assert (=> b!982759 (= lt!436284 (getCurrentListMapNoExtraKeys!3440 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun res!657777 () Bool)

(assert (=> start!84094 (=> (not res!657777) (not e!553987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84094 (= res!657777 (validMask!0 mask!1948))))

(assert (=> start!84094 e!553987))

(assert (=> start!84094 true))

(declare-fun tp_is_empty!22869 () Bool)

(assert (=> start!84094 tp_is_empty!22869))

(declare-fun e!553985 () Bool)

(declare-fun array_inv!22849 (array!61723) Bool)

(assert (=> start!84094 (and (array_inv!22849 _values!1278) e!553985)))

(assert (=> start!84094 tp!68987))

(declare-fun array_inv!22850 (array!61725) Bool)

(assert (=> start!84094 (array_inv!22850 _keys!1544)))

(declare-fun b!982760 () Bool)

(declare-fun res!657779 () Bool)

(assert (=> b!982760 (=> (not res!657779) (not e!553987))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982760 (= res!657779 (validKeyInArray!0 (select (arr!29716 _keys!1544) from!1932)))))

(declare-fun b!982761 () Bool)

(assert (=> b!982761 (= e!553984 tp_is_empty!22869)))

(declare-fun b!982762 () Bool)

(declare-fun res!657781 () Bool)

(assert (=> b!982762 (=> (not res!657781) (not e!553987))))

(assert (=> b!982762 (= res!657781 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!982763 () Bool)

(declare-fun res!657780 () Bool)

(assert (=> b!982763 (=> (not res!657780) (not e!553987))))

(declare-datatypes ((List!20726 0))(
  ( (Nil!20723) (Cons!20722 (h!21884 (_ BitVec 64)) (t!29505 List!20726)) )
))
(declare-fun arrayNoDuplicates!0 (array!61725 (_ BitVec 32) List!20726) Bool)

(assert (=> b!982763 (= res!657780 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20723))))

(declare-fun b!982764 () Bool)

(declare-fun e!553983 () Bool)

(assert (=> b!982764 (= e!553985 (and e!553983 mapRes!36332))))

(declare-fun condMapEmpty!36332 () Bool)

(declare-fun mapDefault!36332 () ValueCell!10953)

(assert (=> b!982764 (= condMapEmpty!36332 (= (arr!29715 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10953)) mapDefault!36332)))))

(declare-fun b!982765 () Bool)

(assert (=> b!982765 (= e!553983 tp_is_empty!22869)))

(declare-fun b!982766 () Bool)

(declare-fun res!657776 () Bool)

(assert (=> b!982766 (=> (not res!657776) (not e!553987))))

(assert (=> b!982766 (= res!657776 (and (= (size!30195 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30196 _keys!1544) (size!30195 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982767 () Bool)

(declare-fun res!657778 () Bool)

(assert (=> b!982767 (=> (not res!657778) (not e!553987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61725 (_ BitVec 32)) Bool)

(assert (=> b!982767 (= res!657778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36332 () Bool)

(assert (=> mapIsEmpty!36332 mapRes!36332))

(declare-fun b!982768 () Bool)

(assert (=> b!982768 (= e!553986 (not true))))

(declare-fun lt!436282 () tuple2!14820)

(declare-fun lt!436283 () tuple2!14820)

(declare-fun +!2978 (ListLongMap!13531 tuple2!14820) ListLongMap!13531)

(assert (=> b!982768 (= (+!2978 (+!2978 lt!436284 lt!436282) lt!436283) (+!2978 (+!2978 lt!436284 lt!436283) lt!436282))))

(assert (=> b!982768 (= lt!436283 (tuple2!14821 (select (arr!29716 _keys!1544) from!1932) lt!436281))))

(assert (=> b!982768 (= lt!436282 (tuple2!14821 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32631 0))(
  ( (Unit!32632) )
))
(declare-fun lt!436285 () Unit!32631)

(declare-fun addCommutativeForDiffKeys!640 (ListLongMap!13531 (_ BitVec 64) V!35475 (_ BitVec 64) V!35475) Unit!32631)

(assert (=> b!982768 (= lt!436285 (addCommutativeForDiffKeys!640 lt!436284 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29716 _keys!1544) from!1932) lt!436281))))

(declare-fun b!982769 () Bool)

(declare-fun res!657782 () Bool)

(assert (=> b!982769 (=> (not res!657782) (not e!553987))))

(assert (=> b!982769 (= res!657782 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30196 _keys!1544))))))

(assert (= (and start!84094 res!657777) b!982766))

(assert (= (and b!982766 res!657776) b!982767))

(assert (= (and b!982767 res!657778) b!982763))

(assert (= (and b!982763 res!657780) b!982769))

(assert (= (and b!982769 res!657782) b!982760))

(assert (= (and b!982760 res!657779) b!982762))

(assert (= (and b!982762 res!657781) b!982759))

(assert (= (and b!982759 res!657783) b!982768))

(assert (= (and b!982764 condMapEmpty!36332) mapIsEmpty!36332))

(assert (= (and b!982764 (not condMapEmpty!36332)) mapNonEmpty!36332))

(get-info :version)

(assert (= (and mapNonEmpty!36332 ((_ is ValueCellFull!10953) mapValue!36332)) b!982761))

(assert (= (and b!982764 ((_ is ValueCellFull!10953) mapDefault!36332)) b!982765))

(assert (= start!84094 b!982764))

(declare-fun b_lambda!14889 () Bool)

(assert (=> (not b_lambda!14889) (not b!982759)))

(declare-fun t!29503 () Bool)

(declare-fun tb!6629 () Bool)

(assert (=> (and start!84094 (= defaultEntry!1281 defaultEntry!1281) t!29503) tb!6629))

(declare-fun result!13239 () Bool)

(assert (=> tb!6629 (= result!13239 tp_is_empty!22869)))

(assert (=> b!982759 t!29503))

(declare-fun b_and!31745 () Bool)

(assert (= b_and!31743 (and (=> t!29503 result!13239) b_and!31745)))

(declare-fun m!910191 () Bool)

(assert (=> mapNonEmpty!36332 m!910191))

(declare-fun m!910193 () Bool)

(assert (=> b!982767 m!910193))

(declare-fun m!910195 () Bool)

(assert (=> b!982763 m!910195))

(declare-fun m!910197 () Bool)

(assert (=> b!982760 m!910197))

(assert (=> b!982760 m!910197))

(declare-fun m!910199 () Bool)

(assert (=> b!982760 m!910199))

(declare-fun m!910201 () Bool)

(assert (=> b!982768 m!910201))

(assert (=> b!982768 m!910197))

(declare-fun m!910203 () Bool)

(assert (=> b!982768 m!910203))

(assert (=> b!982768 m!910203))

(declare-fun m!910205 () Bool)

(assert (=> b!982768 m!910205))

(assert (=> b!982768 m!910201))

(declare-fun m!910207 () Bool)

(assert (=> b!982768 m!910207))

(assert (=> b!982768 m!910197))

(declare-fun m!910209 () Bool)

(assert (=> b!982768 m!910209))

(assert (=> b!982759 m!910197))

(declare-fun m!910211 () Bool)

(assert (=> b!982759 m!910211))

(declare-fun m!910213 () Bool)

(assert (=> b!982759 m!910213))

(declare-fun m!910215 () Bool)

(assert (=> b!982759 m!910215))

(assert (=> b!982759 m!910211))

(assert (=> b!982759 m!910215))

(declare-fun m!910217 () Bool)

(assert (=> b!982759 m!910217))

(declare-fun m!910219 () Bool)

(assert (=> start!84094 m!910219))

(declare-fun m!910221 () Bool)

(assert (=> start!84094 m!910221))

(declare-fun m!910223 () Bool)

(assert (=> start!84094 m!910223))

(check-sat (not b_lambda!14889) (not b!982759) (not start!84094) (not mapNonEmpty!36332) (not b!982760) (not b!982763) b_and!31745 (not b!982768) tp_is_empty!22869 (not b_next!19821) (not b!982767))
(check-sat b_and!31745 (not b_next!19821))
