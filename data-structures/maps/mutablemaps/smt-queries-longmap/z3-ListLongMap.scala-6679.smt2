; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84076 () Bool)

(assert start!84076)

(declare-fun b_free!19803 () Bool)

(declare-fun b_next!19803 () Bool)

(assert (=> start!84076 (= b_free!19803 (not b_next!19803))))

(declare-fun tp!68932 () Bool)

(declare-fun b_and!31707 () Bool)

(assert (=> start!84076 (= tp!68932 b_and!31707)))

(declare-fun b!982444 () Bool)

(declare-fun res!657564 () Bool)

(declare-fun e!553823 () Bool)

(assert (=> b!982444 (=> (not res!657564) (not e!553823))))

(declare-datatypes ((V!35451 0))(
  ( (V!35452 (val!11476 Int)) )
))
(declare-datatypes ((ValueCell!10944 0))(
  ( (ValueCellFull!10944 (v!14038 V!35451)) (EmptyCell!10944) )
))
(declare-datatypes ((array!61687 0))(
  ( (array!61688 (arr!29697 (Array (_ BitVec 32) ValueCell!10944)) (size!30177 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61687)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61689 0))(
  ( (array!61690 (arr!29698 (Array (_ BitVec 32) (_ BitVec 64))) (size!30178 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61689)

(declare-fun mask!1948 () (_ BitVec 32))

(assert (=> b!982444 (= res!657564 (and (= (size!30177 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30178 _keys!1544) (size!30177 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!982445 () Bool)

(declare-fun res!657561 () Bool)

(assert (=> b!982445 (=> (not res!657561) (not e!553823))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!982445 (= res!657561 (validKeyInArray!0 (select (arr!29698 _keys!1544) from!1932)))))

(declare-fun b!982446 () Bool)

(declare-fun e!553821 () Bool)

(declare-fun e!553822 () Bool)

(declare-fun mapRes!36305 () Bool)

(assert (=> b!982446 (= e!553821 (and e!553822 mapRes!36305))))

(declare-fun condMapEmpty!36305 () Bool)

(declare-fun mapDefault!36305 () ValueCell!10944)

(assert (=> b!982446 (= condMapEmpty!36305 (= (arr!29697 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!10944)) mapDefault!36305)))))

(declare-fun mapIsEmpty!36305 () Bool)

(assert (=> mapIsEmpty!36305 mapRes!36305))

(declare-fun b!982447 () Bool)

(declare-fun res!657563 () Bool)

(assert (=> b!982447 (=> (not res!657563) (not e!553823))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61689 (_ BitVec 32)) Bool)

(assert (=> b!982447 (= res!657563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!982448 () Bool)

(declare-fun e!553824 () Bool)

(assert (=> b!982448 (= e!553823 e!553824)))

(declare-fun res!657566 () Bool)

(assert (=> b!982448 (=> (not res!657566) (not e!553824))))

(assert (=> b!982448 (= res!657566 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29698 _keys!1544) from!1932))))))

(declare-fun lt!436147 () V!35451)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15423 (ValueCell!10944 V!35451) V!35451)

(declare-fun dynLambda!1806 (Int (_ BitVec 64)) V!35451)

(assert (=> b!982448 (= lt!436147 (get!15423 (select (arr!29697 _values!1278) from!1932) (dynLambda!1806 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35451)

(declare-datatypes ((tuple2!14806 0))(
  ( (tuple2!14807 (_1!7413 (_ BitVec 64)) (_2!7413 V!35451)) )
))
(declare-datatypes ((List!20711 0))(
  ( (Nil!20708) (Cons!20707 (h!21869 tuple2!14806) (t!29472 List!20711)) )
))
(declare-datatypes ((ListLongMap!13517 0))(
  ( (ListLongMap!13518 (toList!6774 List!20711)) )
))
(declare-fun lt!436150 () ListLongMap!13517)

(declare-fun zeroValue!1220 () V!35451)

(declare-fun getCurrentListMapNoExtraKeys!3433 (array!61689 array!61687 (_ BitVec 32) (_ BitVec 32) V!35451 V!35451 (_ BitVec 32) Int) ListLongMap!13517)

(assert (=> b!982448 (= lt!436150 (getCurrentListMapNoExtraKeys!3433 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!982449 () Bool)

(declare-fun tp_is_empty!22851 () Bool)

(assert (=> b!982449 (= e!553822 tp_is_empty!22851)))

(declare-fun b!982450 () Bool)

(declare-fun res!657567 () Bool)

(assert (=> b!982450 (=> (not res!657567) (not e!553823))))

(declare-datatypes ((List!20712 0))(
  ( (Nil!20709) (Cons!20708 (h!21870 (_ BitVec 64)) (t!29473 List!20712)) )
))
(declare-fun arrayNoDuplicates!0 (array!61689 (_ BitVec 32) List!20712) Bool)

(assert (=> b!982450 (= res!657567 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20709))))

(declare-fun res!657562 () Bool)

(assert (=> start!84076 (=> (not res!657562) (not e!553823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84076 (= res!657562 (validMask!0 mask!1948))))

(assert (=> start!84076 e!553823))

(assert (=> start!84076 true))

(assert (=> start!84076 tp_is_empty!22851))

(declare-fun array_inv!22837 (array!61687) Bool)

(assert (=> start!84076 (and (array_inv!22837 _values!1278) e!553821)))

(assert (=> start!84076 tp!68932))

(declare-fun array_inv!22838 (array!61689) Bool)

(assert (=> start!84076 (array_inv!22838 _keys!1544)))

(declare-fun b!982451 () Bool)

(declare-fun res!657565 () Bool)

(assert (=> b!982451 (=> (not res!657565) (not e!553823))))

(assert (=> b!982451 (= res!657565 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!982452 () Bool)

(declare-fun e!553826 () Bool)

(assert (=> b!982452 (= e!553826 tp_is_empty!22851)))

(declare-fun b!982453 () Bool)

(declare-fun res!657560 () Bool)

(assert (=> b!982453 (=> (not res!657560) (not e!553823))))

(assert (=> b!982453 (= res!657560 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30178 _keys!1544))))))

(declare-fun b!982454 () Bool)

(assert (=> b!982454 (= e!553824 (not true))))

(declare-fun lt!436149 () tuple2!14806)

(declare-fun lt!436148 () tuple2!14806)

(declare-fun +!2974 (ListLongMap!13517 tuple2!14806) ListLongMap!13517)

(assert (=> b!982454 (= (+!2974 (+!2974 lt!436150 lt!436149) lt!436148) (+!2974 (+!2974 lt!436150 lt!436148) lt!436149))))

(assert (=> b!982454 (= lt!436148 (tuple2!14807 (select (arr!29698 _keys!1544) from!1932) lt!436147))))

(assert (=> b!982454 (= lt!436149 (tuple2!14807 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32623 0))(
  ( (Unit!32624) )
))
(declare-fun lt!436146 () Unit!32623)

(declare-fun addCommutativeForDiffKeys!636 (ListLongMap!13517 (_ BitVec 64) V!35451 (_ BitVec 64) V!35451) Unit!32623)

(assert (=> b!982454 (= lt!436146 (addCommutativeForDiffKeys!636 lt!436150 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29698 _keys!1544) from!1932) lt!436147))))

(declare-fun mapNonEmpty!36305 () Bool)

(declare-fun tp!68933 () Bool)

(assert (=> mapNonEmpty!36305 (= mapRes!36305 (and tp!68933 e!553826))))

(declare-fun mapValue!36305 () ValueCell!10944)

(declare-fun mapKey!36305 () (_ BitVec 32))

(declare-fun mapRest!36305 () (Array (_ BitVec 32) ValueCell!10944))

(assert (=> mapNonEmpty!36305 (= (arr!29697 _values!1278) (store mapRest!36305 mapKey!36305 mapValue!36305))))

(assert (= (and start!84076 res!657562) b!982444))

(assert (= (and b!982444 res!657564) b!982447))

(assert (= (and b!982447 res!657563) b!982450))

(assert (= (and b!982450 res!657567) b!982453))

(assert (= (and b!982453 res!657560) b!982445))

(assert (= (and b!982445 res!657561) b!982451))

(assert (= (and b!982451 res!657565) b!982448))

(assert (= (and b!982448 res!657566) b!982454))

(assert (= (and b!982446 condMapEmpty!36305) mapIsEmpty!36305))

(assert (= (and b!982446 (not condMapEmpty!36305)) mapNonEmpty!36305))

(get-info :version)

(assert (= (and mapNonEmpty!36305 ((_ is ValueCellFull!10944) mapValue!36305)) b!982452))

(assert (= (and b!982446 ((_ is ValueCellFull!10944) mapDefault!36305)) b!982449))

(assert (= start!84076 b!982446))

(declare-fun b_lambda!14871 () Bool)

(assert (=> (not b_lambda!14871) (not b!982448)))

(declare-fun t!29471 () Bool)

(declare-fun tb!6611 () Bool)

(assert (=> (and start!84076 (= defaultEntry!1281 defaultEntry!1281) t!29471) tb!6611))

(declare-fun result!13203 () Bool)

(assert (=> tb!6611 (= result!13203 tp_is_empty!22851)))

(assert (=> b!982448 t!29471))

(declare-fun b_and!31709 () Bool)

(assert (= b_and!31707 (and (=> t!29471 result!13203) b_and!31709)))

(declare-fun m!909885 () Bool)

(assert (=> b!982448 m!909885))

(declare-fun m!909887 () Bool)

(assert (=> b!982448 m!909887))

(declare-fun m!909889 () Bool)

(assert (=> b!982448 m!909889))

(declare-fun m!909891 () Bool)

(assert (=> b!982448 m!909891))

(assert (=> b!982448 m!909887))

(assert (=> b!982448 m!909891))

(declare-fun m!909893 () Bool)

(assert (=> b!982448 m!909893))

(declare-fun m!909895 () Bool)

(assert (=> mapNonEmpty!36305 m!909895))

(declare-fun m!909897 () Bool)

(assert (=> b!982447 m!909897))

(declare-fun m!909899 () Bool)

(assert (=> b!982450 m!909899))

(declare-fun m!909901 () Bool)

(assert (=> start!84076 m!909901))

(declare-fun m!909903 () Bool)

(assert (=> start!84076 m!909903))

(declare-fun m!909905 () Bool)

(assert (=> start!84076 m!909905))

(assert (=> b!982445 m!909885))

(assert (=> b!982445 m!909885))

(declare-fun m!909907 () Bool)

(assert (=> b!982445 m!909907))

(assert (=> b!982454 m!909885))

(declare-fun m!909909 () Bool)

(assert (=> b!982454 m!909909))

(declare-fun m!909911 () Bool)

(assert (=> b!982454 m!909911))

(assert (=> b!982454 m!909909))

(declare-fun m!909913 () Bool)

(assert (=> b!982454 m!909913))

(assert (=> b!982454 m!909911))

(declare-fun m!909915 () Bool)

(assert (=> b!982454 m!909915))

(assert (=> b!982454 m!909885))

(declare-fun m!909917 () Bool)

(assert (=> b!982454 m!909917))

(check-sat (not b!982454) (not b!982447) (not b_next!19803) (not b!982445) b_and!31709 tp_is_empty!22851 (not b_lambda!14871) (not mapNonEmpty!36305) (not start!84076) (not b!982450) (not b!982448))
(check-sat b_and!31709 (not b_next!19803))
