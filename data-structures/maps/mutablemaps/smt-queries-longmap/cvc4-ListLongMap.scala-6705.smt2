; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84234 () Bool)

(assert start!84234)

(declare-fun b_free!19907 () Bool)

(declare-fun b_next!19907 () Bool)

(assert (=> start!84234 (= b_free!19907 (not b_next!19907))))

(declare-fun tp!69326 () Bool)

(declare-fun b_and!31909 () Bool)

(assert (=> start!84234 (= tp!69326 b_and!31909)))

(declare-fun b!984762 () Bool)

(declare-fun res!659076 () Bool)

(declare-fun e!555157 () Bool)

(assert (=> b!984762 (=> (not res!659076) (not e!555157))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35661 0))(
  ( (V!35662 (val!11555 Int)) )
))
(declare-datatypes ((ValueCell!11023 0))(
  ( (ValueCellFull!11023 (v!14117 V!35661)) (EmptyCell!11023) )
))
(declare-datatypes ((array!61985 0))(
  ( (array!61986 (arr!29846 (Array (_ BitVec 32) ValueCell!11023)) (size!30326 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61985)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(declare-datatypes ((array!61987 0))(
  ( (array!61988 (arr!29847 (Array (_ BitVec 32) (_ BitVec 64))) (size!30327 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61987)

(assert (=> b!984762 (= res!659076 (and (= (size!30326 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30327 _keys!1544) (size!30326 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun res!659071 () Bool)

(assert (=> start!84234 (=> (not res!659071) (not e!555157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84234 (= res!659071 (validMask!0 mask!1948))))

(assert (=> start!84234 e!555157))

(assert (=> start!84234 true))

(declare-fun tp_is_empty!23009 () Bool)

(assert (=> start!84234 tp_is_empty!23009))

(declare-fun e!555158 () Bool)

(declare-fun array_inv!22937 (array!61985) Bool)

(assert (=> start!84234 (and (array_inv!22937 _values!1278) e!555158)))

(assert (=> start!84234 tp!69326))

(declare-fun array_inv!22938 (array!61987) Bool)

(assert (=> start!84234 (array_inv!22938 _keys!1544)))

(declare-fun mapNonEmpty!36542 () Bool)

(declare-fun mapRes!36542 () Bool)

(declare-fun tp!69325 () Bool)

(declare-fun e!555153 () Bool)

(assert (=> mapNonEmpty!36542 (= mapRes!36542 (and tp!69325 e!555153))))

(declare-fun mapKey!36542 () (_ BitVec 32))

(declare-fun mapValue!36542 () ValueCell!11023)

(declare-fun mapRest!36542 () (Array (_ BitVec 32) ValueCell!11023))

(assert (=> mapNonEmpty!36542 (= (arr!29846 _values!1278) (store mapRest!36542 mapKey!36542 mapValue!36542))))

(declare-fun b!984763 () Bool)

(declare-fun res!659073 () Bool)

(assert (=> b!984763 (=> (not res!659073) (not e!555157))))

(assert (=> b!984763 (= res!659073 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!984764 () Bool)

(declare-fun res!659075 () Bool)

(assert (=> b!984764 (=> (not res!659075) (not e!555157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61987 (_ BitVec 32)) Bool)

(assert (=> b!984764 (= res!659075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!984765 () Bool)

(declare-fun e!555154 () Bool)

(assert (=> b!984765 (= e!555157 e!555154)))

(declare-fun res!659070 () Bool)

(assert (=> b!984765 (=> (not res!659070) (not e!555154))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!984765 (= res!659070 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29847 _keys!1544) from!1932))))))

(declare-fun defaultEntry!1281 () Int)

(declare-fun lt!436966 () V!35661)

(declare-fun get!15508 (ValueCell!11023 V!35661) V!35661)

(declare-fun dynLambda!1839 (Int (_ BitVec 64)) V!35661)

(assert (=> b!984765 (= lt!436966 (get!15508 (select (arr!29846 _values!1278) from!1932) (dynLambda!1839 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1220 () V!35661)

(declare-fun zeroValue!1220 () V!35661)

(declare-datatypes ((tuple2!14884 0))(
  ( (tuple2!14885 (_1!7452 (_ BitVec 64)) (_2!7452 V!35661)) )
))
(declare-datatypes ((List!20803 0))(
  ( (Nil!20800) (Cons!20799 (h!21961 tuple2!14884) (t!29662 List!20803)) )
))
(declare-datatypes ((ListLongMap!13595 0))(
  ( (ListLongMap!13596 (toList!6813 List!20803)) )
))
(declare-fun lt!436965 () ListLongMap!13595)

(declare-fun getCurrentListMapNoExtraKeys!3468 (array!61987 array!61985 (_ BitVec 32) (_ BitVec 32) V!35661 V!35661 (_ BitVec 32) Int) ListLongMap!13595)

(assert (=> b!984765 (= lt!436965 (getCurrentListMapNoExtraKeys!3468 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun mapIsEmpty!36542 () Bool)

(assert (=> mapIsEmpty!36542 mapRes!36542))

(declare-fun b!984766 () Bool)

(declare-fun res!659069 () Bool)

(assert (=> b!984766 (=> (not res!659069) (not e!555157))))

(declare-datatypes ((List!20804 0))(
  ( (Nil!20801) (Cons!20800 (h!21962 (_ BitVec 64)) (t!29663 List!20804)) )
))
(declare-fun arrayNoDuplicates!0 (array!61987 (_ BitVec 32) List!20804) Bool)

(assert (=> b!984766 (= res!659069 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20801))))

(declare-fun b!984767 () Bool)

(assert (=> b!984767 (= e!555154 (not true))))

(declare-fun lt!436962 () tuple2!14884)

(declare-fun lt!436963 () tuple2!14884)

(declare-fun +!3003 (ListLongMap!13595 tuple2!14884) ListLongMap!13595)

(assert (=> b!984767 (= (+!3003 (+!3003 lt!436965 lt!436962) lt!436963) (+!3003 (+!3003 lt!436965 lt!436963) lt!436962))))

(assert (=> b!984767 (= lt!436963 (tuple2!14885 (select (arr!29847 _keys!1544) from!1932) lt!436966))))

(assert (=> b!984767 (= lt!436962 (tuple2!14885 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32681 0))(
  ( (Unit!32682) )
))
(declare-fun lt!436964 () Unit!32681)

(declare-fun addCommutativeForDiffKeys!665 (ListLongMap!13595 (_ BitVec 64) V!35661 (_ BitVec 64) V!35661) Unit!32681)

(assert (=> b!984767 (= lt!436964 (addCommutativeForDiffKeys!665 lt!436965 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29847 _keys!1544) from!1932) lt!436966))))

(declare-fun b!984768 () Bool)

(assert (=> b!984768 (= e!555153 tp_is_empty!23009)))

(declare-fun b!984769 () Bool)

(declare-fun e!555156 () Bool)

(assert (=> b!984769 (= e!555156 tp_is_empty!23009)))

(declare-fun b!984770 () Bool)

(declare-fun res!659072 () Bool)

(assert (=> b!984770 (=> (not res!659072) (not e!555157))))

(assert (=> b!984770 (= res!659072 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30327 _keys!1544))))))

(declare-fun b!984771 () Bool)

(declare-fun res!659074 () Bool)

(assert (=> b!984771 (=> (not res!659074) (not e!555157))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984771 (= res!659074 (validKeyInArray!0 (select (arr!29847 _keys!1544) from!1932)))))

(declare-fun b!984772 () Bool)

(assert (=> b!984772 (= e!555158 (and e!555156 mapRes!36542))))

(declare-fun condMapEmpty!36542 () Bool)

(declare-fun mapDefault!36542 () ValueCell!11023)

