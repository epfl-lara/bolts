; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84180 () Bool)

(assert start!84180)

(declare-fun b_free!19853 () Bool)

(declare-fun b_next!19853 () Bool)

(assert (=> start!84180 (= b_free!19853 (not b_next!19853))))

(declare-fun tp!69163 () Bool)

(declare-fun b_and!31801 () Bool)

(assert (=> start!84180 (= tp!69163 b_and!31801)))

(declare-fun b!983817 () Bool)

(declare-fun e!554669 () Bool)

(declare-fun tp_is_empty!22955 () Bool)

(assert (=> b!983817 (= e!554669 tp_is_empty!22955)))

(declare-fun mapNonEmpty!36461 () Bool)

(declare-fun mapRes!36461 () Bool)

(declare-fun tp!69164 () Bool)

(assert (=> mapNonEmpty!36461 (= mapRes!36461 (and tp!69164 e!554669))))

(declare-datatypes ((V!35589 0))(
  ( (V!35590 (val!11528 Int)) )
))
(declare-datatypes ((ValueCell!10996 0))(
  ( (ValueCellFull!10996 (v!14090 V!35589)) (EmptyCell!10996) )
))
(declare-datatypes ((array!61879 0))(
  ( (array!61880 (arr!29793 (Array (_ BitVec 32) ValueCell!10996)) (size!30273 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61879)

(declare-fun mapRest!36461 () (Array (_ BitVec 32) ValueCell!10996))

(declare-fun mapKey!36461 () (_ BitVec 32))

(declare-fun mapValue!36461 () ValueCell!10996)

(assert (=> mapNonEmpty!36461 (= (arr!29793 _values!1278) (store mapRest!36461 mapKey!36461 mapValue!36461))))

(declare-fun b!983818 () Bool)

(declare-fun res!658425 () Bool)

(declare-fun e!554667 () Bool)

(assert (=> b!983818 (=> (not res!658425) (not e!554667))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61881 0))(
  ( (array!61882 (arr!29794 (Array (_ BitVec 32) (_ BitVec 64))) (size!30274 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61881)

(assert (=> b!983818 (= res!658425 (and (= (size!30273 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30274 _keys!1544) (size!30273 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983819 () Bool)

(declare-fun res!658427 () Bool)

(assert (=> b!983819 (=> (not res!658427) (not e!554667))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!983819 (= res!658427 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30274 _keys!1544))))))

(declare-fun b!983820 () Bool)

(declare-fun e!554672 () Bool)

(assert (=> b!983820 (= e!554672 (not true))))

(declare-datatypes ((tuple2!14840 0))(
  ( (tuple2!14841 (_1!7430 (_ BitVec 64)) (_2!7430 V!35589)) )
))
(declare-datatypes ((List!20761 0))(
  ( (Nil!20758) (Cons!20757 (h!21919 tuple2!14840) (t!29566 List!20761)) )
))
(declare-datatypes ((ListLongMap!13551 0))(
  ( (ListLongMap!13552 (toList!6791 List!20761)) )
))
(declare-fun lt!436558 () ListLongMap!13551)

(declare-fun lt!436560 () tuple2!14840)

(declare-fun lt!436561 () tuple2!14840)

(declare-fun +!2985 (ListLongMap!13551 tuple2!14840) ListLongMap!13551)

(assert (=> b!983820 (= (+!2985 (+!2985 lt!436558 lt!436560) lt!436561) (+!2985 (+!2985 lt!436558 lt!436561) lt!436560))))

(declare-fun lt!436559 () V!35589)

(assert (=> b!983820 (= lt!436561 (tuple2!14841 (select (arr!29794 _keys!1544) from!1932) lt!436559))))

(declare-fun minValue!1220 () V!35589)

(assert (=> b!983820 (= lt!436560 (tuple2!14841 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32645 0))(
  ( (Unit!32646) )
))
(declare-fun lt!436557 () Unit!32645)

(declare-fun addCommutativeForDiffKeys!647 (ListLongMap!13551 (_ BitVec 64) V!35589 (_ BitVec 64) V!35589) Unit!32645)

(assert (=> b!983820 (= lt!436557 (addCommutativeForDiffKeys!647 lt!436558 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29794 _keys!1544) from!1932) lt!436559))))

(declare-fun b!983821 () Bool)

(declare-fun res!658423 () Bool)

(assert (=> b!983821 (=> (not res!658423) (not e!554667))))

(declare-datatypes ((List!20762 0))(
  ( (Nil!20759) (Cons!20758 (h!21920 (_ BitVec 64)) (t!29567 List!20762)) )
))
(declare-fun arrayNoDuplicates!0 (array!61881 (_ BitVec 32) List!20762) Bool)

(assert (=> b!983821 (= res!658423 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20759))))

(declare-fun b!983822 () Bool)

(assert (=> b!983822 (= e!554667 e!554672)))

(declare-fun res!658426 () Bool)

(assert (=> b!983822 (=> (not res!658426) (not e!554672))))

(assert (=> b!983822 (= res!658426 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29794 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15472 (ValueCell!10996 V!35589) V!35589)

(declare-fun dynLambda!1821 (Int (_ BitVec 64)) V!35589)

(assert (=> b!983822 (= lt!436559 (get!15472 (select (arr!29793 _values!1278) from!1932) (dynLambda!1821 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!1220 () V!35589)

(declare-fun getCurrentListMapNoExtraKeys!3450 (array!61881 array!61879 (_ BitVec 32) (_ BitVec 32) V!35589 V!35589 (_ BitVec 32) Int) ListLongMap!13551)

(assert (=> b!983822 (= lt!436558 (getCurrentListMapNoExtraKeys!3450 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!983823 () Bool)

(declare-fun e!554671 () Bool)

(assert (=> b!983823 (= e!554671 tp_is_empty!22955)))

(declare-fun b!983824 () Bool)

(declare-fun res!658424 () Bool)

(assert (=> b!983824 (=> (not res!658424) (not e!554667))))

(assert (=> b!983824 (= res!658424 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!658422 () Bool)

(assert (=> start!84180 (=> (not res!658422) (not e!554667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84180 (= res!658422 (validMask!0 mask!1948))))

(assert (=> start!84180 e!554667))

(assert (=> start!84180 true))

(assert (=> start!84180 tp_is_empty!22955))

(declare-fun e!554668 () Bool)

(declare-fun array_inv!22903 (array!61879) Bool)

(assert (=> start!84180 (and (array_inv!22903 _values!1278) e!554668)))

(assert (=> start!84180 tp!69163))

(declare-fun array_inv!22904 (array!61881) Bool)

(assert (=> start!84180 (array_inv!22904 _keys!1544)))

(declare-fun b!983825 () Bool)

(declare-fun res!658428 () Bool)

(assert (=> b!983825 (=> (not res!658428) (not e!554667))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!983825 (= res!658428 (validKeyInArray!0 (select (arr!29794 _keys!1544) from!1932)))))

(declare-fun b!983826 () Bool)

(declare-fun res!658421 () Bool)

(assert (=> b!983826 (=> (not res!658421) (not e!554667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61881 (_ BitVec 32)) Bool)

(assert (=> b!983826 (= res!658421 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36461 () Bool)

(assert (=> mapIsEmpty!36461 mapRes!36461))

(declare-fun b!983827 () Bool)

(assert (=> b!983827 (= e!554668 (and e!554671 mapRes!36461))))

(declare-fun condMapEmpty!36461 () Bool)

(declare-fun mapDefault!36461 () ValueCell!10996)

