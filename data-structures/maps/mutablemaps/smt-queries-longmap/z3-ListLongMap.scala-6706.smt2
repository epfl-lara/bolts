; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84238 () Bool)

(assert start!84238)

(declare-fun b_free!19911 () Bool)

(declare-fun b_next!19911 () Bool)

(assert (=> start!84238 (= b_free!19911 (not b_next!19911))))

(declare-fun tp!69337 () Bool)

(declare-fun b_and!31917 () Bool)

(assert (=> start!84238 (= tp!69337 b_and!31917)))

(declare-fun b!984832 () Bool)

(declare-fun e!555193 () Bool)

(declare-fun tp_is_empty!23013 () Bool)

(assert (=> b!984832 (= e!555193 tp_is_empty!23013)))

(declare-fun b!984833 () Bool)

(declare-fun res!659117 () Bool)

(declare-fun e!555189 () Bool)

(assert (=> b!984833 (=> (not res!659117) (not e!555189))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!984833 (= res!659117 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!659120 () Bool)

(assert (=> start!84238 (=> (not res!659120) (not e!555189))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84238 (= res!659120 (validMask!0 mask!1948))))

(assert (=> start!84238 e!555189))

(assert (=> start!84238 true))

(assert (=> start!84238 tp_is_empty!23013))

(declare-datatypes ((V!35667 0))(
  ( (V!35668 (val!11557 Int)) )
))
(declare-datatypes ((ValueCell!11025 0))(
  ( (ValueCellFull!11025 (v!14119 V!35667)) (EmptyCell!11025) )
))
(declare-datatypes ((array!61993 0))(
  ( (array!61994 (arr!29850 (Array (_ BitVec 32) ValueCell!11025)) (size!30330 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61993)

(declare-fun e!555192 () Bool)

(declare-fun array_inv!22941 (array!61993) Bool)

(assert (=> start!84238 (and (array_inv!22941 _values!1278) e!555192)))

(assert (=> start!84238 tp!69337))

(declare-datatypes ((array!61995 0))(
  ( (array!61996 (arr!29851 (Array (_ BitVec 32) (_ BitVec 64))) (size!30331 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61995)

(declare-fun array_inv!22942 (array!61995) Bool)

(assert (=> start!84238 (array_inv!22942 _keys!1544)))

(declare-fun b!984834 () Bool)

(declare-fun e!555190 () Bool)

(declare-fun mapRes!36548 () Bool)

(assert (=> b!984834 (= e!555192 (and e!555190 mapRes!36548))))

(declare-fun condMapEmpty!36548 () Bool)

(declare-fun mapDefault!36548 () ValueCell!11025)

(assert (=> b!984834 (= condMapEmpty!36548 (= (arr!29850 _values!1278) ((as const (Array (_ BitVec 32) ValueCell!11025)) mapDefault!36548)))))

(declare-fun b!984835 () Bool)

(assert (=> b!984835 (= e!555190 tp_is_empty!23013)))

(declare-fun b!984836 () Bool)

(declare-fun res!659119 () Bool)

(assert (=> b!984836 (=> (not res!659119) (not e!555189))))

(declare-datatypes ((List!20807 0))(
  ( (Nil!20804) (Cons!20803 (h!21965 (_ BitVec 64)) (t!29670 List!20807)) )
))
(declare-fun arrayNoDuplicates!0 (array!61995 (_ BitVec 32) List!20807) Bool)

(assert (=> b!984836 (= res!659119 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20804))))

(declare-fun mapNonEmpty!36548 () Bool)

(declare-fun tp!69338 () Bool)

(assert (=> mapNonEmpty!36548 (= mapRes!36548 (and tp!69338 e!555193))))

(declare-fun mapValue!36548 () ValueCell!11025)

(declare-fun mapRest!36548 () (Array (_ BitVec 32) ValueCell!11025))

(declare-fun mapKey!36548 () (_ BitVec 32))

(assert (=> mapNonEmpty!36548 (= (arr!29850 _values!1278) (store mapRest!36548 mapKey!36548 mapValue!36548))))

(declare-fun mapIsEmpty!36548 () Bool)

(assert (=> mapIsEmpty!36548 mapRes!36548))

(declare-fun b!984837 () Bool)

(declare-fun res!659123 () Bool)

(assert (=> b!984837 (=> (not res!659123) (not e!555189))))

(assert (=> b!984837 (= res!659123 (and (= (size!30330 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30331 _keys!1544) (size!30330 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!984838 () Bool)

(declare-fun res!659118 () Bool)

(assert (=> b!984838 (=> (not res!659118) (not e!555189))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61995 (_ BitVec 32)) Bool)

(assert (=> b!984838 (= res!659118 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!984839 () Bool)

(declare-fun e!555194 () Bool)

(assert (=> b!984839 (= e!555189 e!555194)))

(declare-fun res!659122 () Bool)

(assert (=> b!984839 (=> (not res!659122) (not e!555194))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!984839 (= res!659122 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!29851 _keys!1544) from!1932))))))

(declare-fun lt!436994 () V!35667)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15512 (ValueCell!11025 V!35667) V!35667)

(declare-fun dynLambda!1841 (Int (_ BitVec 64)) V!35667)

(assert (=> b!984839 (= lt!436994 (get!15512 (select (arr!29850 _values!1278) from!1932) (dynLambda!1841 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((tuple2!14888 0))(
  ( (tuple2!14889 (_1!7454 (_ BitVec 64)) (_2!7454 V!35667)) )
))
(declare-datatypes ((List!20808 0))(
  ( (Nil!20805) (Cons!20804 (h!21966 tuple2!14888) (t!29671 List!20808)) )
))
(declare-datatypes ((ListLongMap!13599 0))(
  ( (ListLongMap!13600 (toList!6815 List!20808)) )
))
(declare-fun lt!436995 () ListLongMap!13599)

(declare-fun minValue!1220 () V!35667)

(declare-fun zeroValue!1220 () V!35667)

(declare-fun getCurrentListMapNoExtraKeys!3470 (array!61995 array!61993 (_ BitVec 32) (_ BitVec 32) V!35667 V!35667 (_ BitVec 32) Int) ListLongMap!13599)

(assert (=> b!984839 (= lt!436995 (getCurrentListMapNoExtraKeys!3470 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!984840 () Bool)

(declare-fun res!659121 () Bool)

(assert (=> b!984840 (=> (not res!659121) (not e!555189))))

(assert (=> b!984840 (= res!659121 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30331 _keys!1544))))))

(declare-fun b!984841 () Bool)

(declare-fun res!659124 () Bool)

(assert (=> b!984841 (=> (not res!659124) (not e!555189))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!984841 (= res!659124 (validKeyInArray!0 (select (arr!29851 _keys!1544) from!1932)))))

(declare-fun b!984842 () Bool)

(assert (=> b!984842 (= e!555194 (not true))))

(declare-fun lt!436993 () tuple2!14888)

(declare-fun lt!436992 () tuple2!14888)

(declare-fun +!3005 (ListLongMap!13599 tuple2!14888) ListLongMap!13599)

(assert (=> b!984842 (= (+!3005 (+!3005 lt!436995 lt!436993) lt!436992) (+!3005 (+!3005 lt!436995 lt!436992) lt!436993))))

(assert (=> b!984842 (= lt!436992 (tuple2!14889 (select (arr!29851 _keys!1544) from!1932) lt!436994))))

(assert (=> b!984842 (= lt!436993 (tuple2!14889 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32685 0))(
  ( (Unit!32686) )
))
(declare-fun lt!436996 () Unit!32685)

(declare-fun addCommutativeForDiffKeys!667 (ListLongMap!13599 (_ BitVec 64) V!35667 (_ BitVec 64) V!35667) Unit!32685)

(assert (=> b!984842 (= lt!436996 (addCommutativeForDiffKeys!667 lt!436995 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!29851 _keys!1544) from!1932) lt!436994))))

(assert (= (and start!84238 res!659120) b!984837))

(assert (= (and b!984837 res!659123) b!984838))

(assert (= (and b!984838 res!659118) b!984836))

(assert (= (and b!984836 res!659119) b!984840))

(assert (= (and b!984840 res!659121) b!984841))

(assert (= (and b!984841 res!659124) b!984833))

(assert (= (and b!984833 res!659117) b!984839))

(assert (= (and b!984839 res!659122) b!984842))

(assert (= (and b!984834 condMapEmpty!36548) mapIsEmpty!36548))

(assert (= (and b!984834 (not condMapEmpty!36548)) mapNonEmpty!36548))

(get-info :version)

(assert (= (and mapNonEmpty!36548 ((_ is ValueCellFull!11025) mapValue!36548)) b!984832))

(assert (= (and b!984834 ((_ is ValueCellFull!11025) mapDefault!36548)) b!984835))

(assert (= start!84238 b!984834))

(declare-fun b_lambda!14973 () Bool)

(assert (=> (not b_lambda!14973) (not b!984839)))

(declare-fun t!29669 () Bool)

(declare-fun tb!6713 () Bool)

(assert (=> (and start!84238 (= defaultEntry!1281 defaultEntry!1281) t!29669) tb!6713))

(declare-fun result!13407 () Bool)

(assert (=> tb!6713 (= result!13407 tp_is_empty!23013)))

(assert (=> b!984839 t!29669))

(declare-fun b_and!31919 () Bool)

(assert (= b_and!31917 (and (=> t!29669 result!13407) b_and!31919)))

(declare-fun m!912009 () Bool)

(assert (=> b!984841 m!912009))

(assert (=> b!984841 m!912009))

(declare-fun m!912011 () Bool)

(assert (=> b!984841 m!912011))

(declare-fun m!912013 () Bool)

(assert (=> b!984838 m!912013))

(assert (=> b!984842 m!912009))

(assert (=> b!984842 m!912009))

(declare-fun m!912015 () Bool)

(assert (=> b!984842 m!912015))

(declare-fun m!912017 () Bool)

(assert (=> b!984842 m!912017))

(declare-fun m!912019 () Bool)

(assert (=> b!984842 m!912019))

(declare-fun m!912021 () Bool)

(assert (=> b!984842 m!912021))

(declare-fun m!912023 () Bool)

(assert (=> b!984842 m!912023))

(assert (=> b!984842 m!912017))

(assert (=> b!984842 m!912021))

(declare-fun m!912025 () Bool)

(assert (=> start!84238 m!912025))

(declare-fun m!912027 () Bool)

(assert (=> start!84238 m!912027))

(declare-fun m!912029 () Bool)

(assert (=> start!84238 m!912029))

(declare-fun m!912031 () Bool)

(assert (=> mapNonEmpty!36548 m!912031))

(declare-fun m!912033 () Bool)

(assert (=> b!984836 m!912033))

(assert (=> b!984839 m!912009))

(declare-fun m!912035 () Bool)

(assert (=> b!984839 m!912035))

(declare-fun m!912037 () Bool)

(assert (=> b!984839 m!912037))

(declare-fun m!912039 () Bool)

(assert (=> b!984839 m!912039))

(assert (=> b!984839 m!912035))

(assert (=> b!984839 m!912039))

(declare-fun m!912041 () Bool)

(assert (=> b!984839 m!912041))

(check-sat b_and!31919 tp_is_empty!23013 (not b!984839) (not b!984836) (not b_lambda!14973) (not b!984841) (not start!84238) (not b!984842) (not mapNonEmpty!36548) (not b_next!19911) (not b!984838))
(check-sat b_and!31919 (not b_next!19911))
