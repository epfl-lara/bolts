; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84698 () Bool)

(assert start!84698)

(declare-fun b_free!20081 () Bool)

(declare-fun b_next!20081 () Bool)

(assert (=> start!84698 (= b_free!20081 (not b_next!20081))))

(declare-fun tp!70039 () Bool)

(declare-fun b_and!32251 () Bool)

(assert (=> start!84698 (= tp!70039 b_and!32251)))

(declare-fun mapIsEmpty!36994 () Bool)

(declare-fun mapRes!36994 () Bool)

(assert (=> mapIsEmpty!36994 mapRes!36994))

(declare-fun res!662206 () Bool)

(declare-fun e!558324 () Bool)

(assert (=> start!84698 (=> (not res!662206) (not e!558324))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84698 (= res!662206 (validMask!0 mask!1948))))

(assert (=> start!84698 e!558324))

(assert (=> start!84698 true))

(declare-fun tp_is_empty!23297 () Bool)

(assert (=> start!84698 tp_is_empty!23297))

(declare-datatypes ((V!36045 0))(
  ( (V!36046 (val!11699 Int)) )
))
(declare-datatypes ((ValueCell!11167 0))(
  ( (ValueCellFull!11167 (v!14269 V!36045)) (EmptyCell!11167) )
))
(declare-datatypes ((array!62543 0))(
  ( (array!62544 (arr!30119 (Array (_ BitVec 32) ValueCell!11167)) (size!30599 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62543)

(declare-fun e!558329 () Bool)

(declare-fun array_inv!23129 (array!62543) Bool)

(assert (=> start!84698 (and (array_inv!23129 _values!1278) e!558329)))

(assert (=> start!84698 tp!70039))

(declare-datatypes ((array!62545 0))(
  ( (array!62546 (arr!30120 (Array (_ BitVec 32) (_ BitVec 64))) (size!30600 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62545)

(declare-fun array_inv!23130 (array!62545) Bool)

(assert (=> start!84698 (array_inv!23130 _keys!1544)))

(declare-fun b!990120 () Bool)

(declare-fun res!662201 () Bool)

(assert (=> b!990120 (=> (not res!662201) (not e!558324))))

(declare-fun from!1932 () (_ BitVec 32))

(assert (=> b!990120 (= res!662201 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30600 _keys!1544))))))

(declare-fun b!990121 () Bool)

(declare-fun res!662199 () Bool)

(assert (=> b!990121 (=> (not res!662199) (not e!558324))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!990121 (= res!662199 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!15012 0))(
  ( (tuple2!15013 (_1!7516 (_ BitVec 64)) (_2!7516 V!36045)) )
))
(declare-fun lt!439249 () tuple2!15012)

(declare-fun minValue!1220 () V!36045)

(declare-fun e!558327 () Bool)

(declare-fun zeroValue!1220 () V!36045)

(declare-fun defaultEntry!1281 () Int)

(declare-fun b!990122 () Bool)

(declare-datatypes ((List!20962 0))(
  ( (Nil!20959) (Cons!20958 (h!22120 tuple2!15012) (t!29947 List!20962)) )
))
(declare-datatypes ((ListLongMap!13723 0))(
  ( (ListLongMap!13724 (toList!6877 List!20962)) )
))
(declare-fun getCurrentListMap!3886 (array!62545 array!62543 (_ BitVec 32) (_ BitVec 32) V!36045 V!36045 (_ BitVec 32) Int) ListLongMap!13723)

(declare-fun +!3055 (ListLongMap!13723 tuple2!15012) ListLongMap!13723)

(assert (=> b!990122 (= e!558327 (not (= (getCurrentListMap!3886 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 from!1932 defaultEntry!1281) (+!3055 (getCurrentListMap!3886 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281) lt!439249))))))

(declare-fun lt!439250 () ListLongMap!13723)

(declare-fun lt!439248 () tuple2!15012)

(assert (=> b!990122 (= (+!3055 (+!3055 lt!439250 lt!439248) lt!439249) (+!3055 (+!3055 lt!439250 lt!439249) lt!439248))))

(declare-fun lt!439246 () V!36045)

(assert (=> b!990122 (= lt!439249 (tuple2!15013 (select (arr!30120 _keys!1544) from!1932) lt!439246))))

(assert (=> b!990122 (= lt!439248 (tuple2!15013 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220))))

(declare-datatypes ((Unit!32816 0))(
  ( (Unit!32817) )
))
(declare-fun lt!439247 () Unit!32816)

(declare-fun addCommutativeForDiffKeys!709 (ListLongMap!13723 (_ BitVec 64) V!36045 (_ BitVec 64) V!36045) Unit!32816)

(assert (=> b!990122 (= lt!439247 (addCommutativeForDiffKeys!709 lt!439250 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1220 (select (arr!30120 _keys!1544) from!1932) lt!439246))))

(declare-fun b!990123 () Bool)

(assert (=> b!990123 (= e!558324 e!558327)))

(declare-fun res!662205 () Bool)

(assert (=> b!990123 (=> (not res!662205) (not e!558327))))

(assert (=> b!990123 (= res!662205 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 (select (arr!30120 _keys!1544) from!1932))))))

(declare-fun get!15654 (ValueCell!11167 V!36045) V!36045)

(declare-fun dynLambda!1881 (Int (_ BitVec 64)) V!36045)

(assert (=> b!990123 (= lt!439246 (get!15654 (select (arr!30119 _values!1278) from!1932) (dynLambda!1881 defaultEntry!1281 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!3525 (array!62545 array!62543 (_ BitVec 32) (_ BitVec 32) V!36045 V!36045 (_ BitVec 32) Int) ListLongMap!13723)

(assert (=> b!990123 (= lt!439250 (getCurrentListMapNoExtraKeys!3525 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!990124 () Bool)

(declare-fun res!662203 () Bool)

(assert (=> b!990124 (=> (not res!662203) (not e!558324))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!990124 (= res!662203 (validKeyInArray!0 (select (arr!30120 _keys!1544) from!1932)))))

(declare-fun mapNonEmpty!36994 () Bool)

(declare-fun tp!70038 () Bool)

(declare-fun e!558328 () Bool)

(assert (=> mapNonEmpty!36994 (= mapRes!36994 (and tp!70038 e!558328))))

(declare-fun mapRest!36994 () (Array (_ BitVec 32) ValueCell!11167))

(declare-fun mapValue!36994 () ValueCell!11167)

(declare-fun mapKey!36994 () (_ BitVec 32))

(assert (=> mapNonEmpty!36994 (= (arr!30119 _values!1278) (store mapRest!36994 mapKey!36994 mapValue!36994))))

(declare-fun b!990125 () Bool)

(declare-fun res!662200 () Bool)

(assert (=> b!990125 (=> (not res!662200) (not e!558324))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62545 (_ BitVec 32)) Bool)

(assert (=> b!990125 (= res!662200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun b!990126 () Bool)

(declare-fun e!558325 () Bool)

(assert (=> b!990126 (= e!558325 tp_is_empty!23297)))

(declare-fun b!990127 () Bool)

(declare-fun res!662202 () Bool)

(assert (=> b!990127 (=> (not res!662202) (not e!558324))))

(declare-datatypes ((List!20963 0))(
  ( (Nil!20960) (Cons!20959 (h!22121 (_ BitVec 64)) (t!29948 List!20963)) )
))
(declare-fun arrayNoDuplicates!0 (array!62545 (_ BitVec 32) List!20963) Bool)

(assert (=> b!990127 (= res!662202 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20960))))

(declare-fun b!990128 () Bool)

(assert (=> b!990128 (= e!558328 tp_is_empty!23297)))

(declare-fun b!990129 () Bool)

(declare-fun res!662204 () Bool)

(assert (=> b!990129 (=> (not res!662204) (not e!558324))))

(assert (=> b!990129 (= res!662204 (and (= (size!30599 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30600 _keys!1544) (size!30599 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!990130 () Bool)

(assert (=> b!990130 (= e!558329 (and e!558325 mapRes!36994))))

(declare-fun condMapEmpty!36994 () Bool)

(declare-fun mapDefault!36994 () ValueCell!11167)

