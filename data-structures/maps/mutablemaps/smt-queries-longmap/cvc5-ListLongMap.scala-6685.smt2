; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84110 () Bool)

(assert start!84110)

(declare-fun b_free!19837 () Bool)

(declare-fun b_next!19837 () Bool)

(assert (=> start!84110 (= b_free!19837 (not b_next!19837))))

(declare-fun tp!69034 () Bool)

(declare-fun b_and!31775 () Bool)

(assert (=> start!84110 (= tp!69034 b_and!31775)))

(declare-fun b!983039 () Bool)

(declare-fun res!657975 () Bool)

(declare-fun e!554127 () Bool)

(assert (=> b!983039 (=> (not res!657975) (not e!554127))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983039 (= res!657975 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!983040 () Bool)

(declare-fun e!554132 () Bool)

(assert (=> b!983040 (= e!554127 e!554132)))

(declare-fun res!657970 () Bool)

(assert (=> b!983040 (=> (not res!657970) (not e!554132))))

(declare-datatypes ((array!61753 0))(
  ( (array!61754 (arr!29730 (Array (_ BitVec 32) (_ BitVec 64))) (size!30210 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61753)

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!983040 (= res!657970 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!29730 _keys!1544) from!1932))))))

(declare-datatypes ((V!35497 0))(
  ( (V!35498 (val!11493 Int)) )
))
(declare-datatypes ((ValueCell!10961 0))(
  ( (ValueCellFull!10961 (v!14055 V!35497)) (EmptyCell!10961) )
))
(declare-datatypes ((array!61755 0))(
  ( (array!61756 (arr!29731 (Array (_ BitVec 32) ValueCell!10961)) (size!30211 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61755)

(declare-fun lt!436401 () V!35497)

(declare-fun defaultEntry!1281 () Int)

(declare-fun get!15447 (ValueCell!10961 V!35497) V!35497)

(declare-fun dynLambda!1818 (Int (_ BitVec 64)) V!35497)

(assert (=> b!983040 (= lt!436401 (get!15447 (select (arr!29731 _values!1278) from!1932) (dynLambda!1818 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun minValue!1220 () V!35497)

(declare-fun zeroValue!1220 () V!35497)

(declare-datatypes ((tuple2!14830 0))(
  ( (tuple2!14831 (_1!7425 (_ BitVec 64)) (_2!7425 V!35497)) )
))
(declare-datatypes ((List!20734 0))(
  ( (Nil!20731) (Cons!20730 (h!21892 tuple2!14830) (t!29529 List!20734)) )
))
(declare-datatypes ((ListLongMap!13541 0))(
  ( (ListLongMap!13542 (toList!6786 List!20734)) )
))
(declare-fun lt!436403 () ListLongMap!13541)

(declare-fun getCurrentListMapNoExtraKeys!3445 (array!61753 array!61755 (_ BitVec 32) (_ BitVec 32) V!35497 V!35497 (_ BitVec 32) Int) ListLongMap!13541)

(assert (=> b!983040 (= lt!436403 (getCurrentListMapNoExtraKeys!3445 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!983041 () Bool)

(declare-fun res!657973 () Bool)

(assert (=> b!983041 (=> (not res!657973) (not e!554127))))

(assert (=> b!983041 (= res!657973 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30210 _keys!1544))))))

(declare-fun b!983042 () Bool)

(declare-fun res!657972 () Bool)

(assert (=> b!983042 (=> (not res!657972) (not e!554127))))

(declare-datatypes ((List!20735 0))(
  ( (Nil!20732) (Cons!20731 (h!21893 (_ BitVec 64)) (t!29530 List!20735)) )
))
(declare-fun arrayNoDuplicates!0 (array!61753 (_ BitVec 32) List!20735) Bool)

(assert (=> b!983042 (= res!657972 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20732))))

(declare-fun b!983043 () Bool)

(declare-fun res!657969 () Bool)

(assert (=> b!983043 (=> (not res!657969) (not e!554127))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61753 (_ BitVec 32)) Bool)

(assert (=> b!983043 (= res!657969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!983044 () Bool)

(declare-fun res!657971 () Bool)

(assert (=> b!983044 (=> (not res!657971) (not e!554127))))

(assert (=> b!983044 (= res!657971 (and (= (size!30211 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30210 _keys!1544) (size!30211 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983045 () Bool)

(assert (=> b!983045 (= e!554132 (not (bvsge (bvadd #b00000000000000000000000000000001 from!1932) #b00000000000000000000000000000000)))))

(declare-fun lt!436402 () tuple2!14830)

(declare-fun lt!436405 () tuple2!14830)

(declare-fun +!2982 (ListLongMap!13541 tuple2!14830) ListLongMap!13541)

(assert (=> b!983045 (= (+!2982 (+!2982 lt!436403 lt!436402) lt!436405) (+!2982 (+!2982 lt!436403 lt!436405) lt!436402))))

(assert (=> b!983045 (= lt!436405 (tuple2!14831 (select (arr!29730 _keys!1544) from!1932) lt!436401))))

(assert (=> b!983045 (= lt!436402 (tuple2!14831 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220))))

(declare-datatypes ((Unit!32639 0))(
  ( (Unit!32640) )
))
(declare-fun lt!436404 () Unit!32639)

(declare-fun addCommutativeForDiffKeys!644 (ListLongMap!13541 (_ BitVec 64) V!35497 (_ BitVec 64) V!35497) Unit!32639)

(assert (=> b!983045 (= lt!436404 (addCommutativeForDiffKeys!644 lt!436403 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1220 (select (arr!29730 _keys!1544) from!1932) lt!436401))))

(declare-fun res!657974 () Bool)

(assert (=> start!84110 (=> (not res!657974) (not e!554127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84110 (= res!657974 (validMask!0 mask!1948))))

(assert (=> start!84110 e!554127))

(assert (=> start!84110 true))

(declare-fun tp_is_empty!22885 () Bool)

(assert (=> start!84110 tp_is_empty!22885))

(declare-fun e!554129 () Bool)

(declare-fun array_inv!22859 (array!61755) Bool)

(assert (=> start!84110 (and (array_inv!22859 _values!1278) e!554129)))

(assert (=> start!84110 tp!69034))

(declare-fun array_inv!22860 (array!61753) Bool)

(assert (=> start!84110 (array_inv!22860 _keys!1544)))

(declare-fun b!983046 () Bool)

(declare-fun res!657968 () Bool)

(assert (=> b!983046 (=> (not res!657968) (not e!554127))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!983046 (= res!657968 (validKeyInArray!0 (select (arr!29730 _keys!1544) from!1932)))))

(declare-fun b!983047 () Bool)

(declare-fun e!554130 () Bool)

(assert (=> b!983047 (= e!554130 tp_is_empty!22885)))

(declare-fun b!983048 () Bool)

(declare-fun mapRes!36356 () Bool)

(assert (=> b!983048 (= e!554129 (and e!554130 mapRes!36356))))

(declare-fun condMapEmpty!36356 () Bool)

(declare-fun mapDefault!36356 () ValueCell!10961)

