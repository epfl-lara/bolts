; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110612 () Bool)

(assert start!110612)

(declare-fun b_free!29411 () Bool)

(declare-fun b_next!29411 () Bool)

(assert (=> start!110612 (= b_free!29411 (not b_next!29411))))

(declare-fun tp!103555 () Bool)

(declare-fun b_and!47629 () Bool)

(assert (=> start!110612 (= tp!103555 b_and!47629)))

(declare-fun b!1308074 () Bool)

(declare-fun res!868391 () Bool)

(declare-fun e!746420 () Bool)

(assert (=> b!1308074 (=> (not res!868391) (not e!746420))))

(declare-datatypes ((array!87249 0))(
  ( (array!87250 (arr!42100 (Array (_ BitVec 32) (_ BitVec 64))) (size!42651 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87249)

(declare-datatypes ((List!30055 0))(
  ( (Nil!30052) (Cons!30051 (h!31260 (_ BitVec 64)) (t!43668 List!30055)) )
))
(declare-fun arrayNoDuplicates!0 (array!87249 (_ BitVec 32) List!30055) Bool)

(assert (=> b!1308074 (= res!868391 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30052))))

(declare-fun b!1308075 () Bool)

(declare-fun res!868395 () Bool)

(assert (=> b!1308075 (=> (not res!868395) (not e!746420))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1308075 (= res!868395 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1308076 () Bool)

(declare-fun res!868393 () Bool)

(assert (=> b!1308076 (=> (not res!868393) (not e!746420))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!51957 0))(
  ( (V!51958 (val!17645 Int)) )
))
(declare-fun minValue!1296 () V!51957)

(declare-fun zeroValue!1296 () V!51957)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((ValueCell!16672 0))(
  ( (ValueCellFull!16672 (v!20270 V!51957)) (EmptyCell!16672) )
))
(declare-datatypes ((array!87251 0))(
  ( (array!87252 (arr!42101 (Array (_ BitVec 32) ValueCell!16672)) (size!42652 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87251)

(declare-datatypes ((tuple2!22884 0))(
  ( (tuple2!22885 (_1!11452 (_ BitVec 64)) (_2!11452 V!51957)) )
))
(declare-datatypes ((List!30056 0))(
  ( (Nil!30053) (Cons!30052 (h!31261 tuple2!22884) (t!43669 List!30056)) )
))
(declare-datatypes ((ListLongMap!20553 0))(
  ( (ListLongMap!20554 (toList!10292 List!30056)) )
))
(declare-fun contains!8378 (ListLongMap!20553 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5248 (array!87249 array!87251 (_ BitVec 32) (_ BitVec 32) V!51957 V!51957 (_ BitVec 32) Int) ListLongMap!20553)

(assert (=> b!1308076 (= res!868393 (contains!8378 (getCurrentListMap!5248 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun mapNonEmpty!54340 () Bool)

(declare-fun mapRes!54340 () Bool)

(declare-fun tp!103556 () Bool)

(declare-fun e!746419 () Bool)

(assert (=> mapNonEmpty!54340 (= mapRes!54340 (and tp!103556 e!746419))))

(declare-fun mapValue!54340 () ValueCell!16672)

(declare-fun mapRest!54340 () (Array (_ BitVec 32) ValueCell!16672))

(declare-fun mapKey!54340 () (_ BitVec 32))

(assert (=> mapNonEmpty!54340 (= (arr!42101 _values!1354) (store mapRest!54340 mapKey!54340 mapValue!54340))))

(declare-fun b!1308077 () Bool)

(declare-fun res!868396 () Bool)

(assert (=> b!1308077 (=> (not res!868396) (not e!746420))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1308077 (= res!868396 (validKeyInArray!0 (select (arr!42100 _keys!1628) from!2020)))))

(declare-fun b!1308078 () Bool)

(declare-fun res!868394 () Bool)

(assert (=> b!1308078 (=> (not res!868394) (not e!746420))))

(assert (=> b!1308078 (= res!868394 (and (= (size!42652 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42651 _keys!1628) (size!42652 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1308080 () Bool)

(declare-fun res!868389 () Bool)

(assert (=> b!1308080 (=> (not res!868389) (not e!746420))))

(assert (=> b!1308080 (= res!868389 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42651 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1308081 () Bool)

(declare-fun res!868397 () Bool)

(assert (=> b!1308081 (=> (not res!868397) (not e!746420))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87249 (_ BitVec 32)) Bool)

(assert (=> b!1308081 (= res!868397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308082 () Bool)

(declare-fun e!746416 () Bool)

(declare-fun tp_is_empty!35141 () Bool)

(assert (=> b!1308082 (= e!746416 tp_is_empty!35141)))

(declare-fun mapIsEmpty!54340 () Bool)

(assert (=> mapIsEmpty!54340 mapRes!54340))

(declare-fun b!1308083 () Bool)

(assert (=> b!1308083 (= e!746420 (not true))))

(assert (=> b!1308083 (contains!8378 (getCurrentListMap!5248 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43234 0))(
  ( (Unit!43235) )
))
(declare-fun lt!585067 () Unit!43234)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!7 (array!87249 array!87251 (_ BitVec 32) (_ BitVec 32) V!51957 V!51957 (_ BitVec 64) (_ BitVec 32) Int) Unit!43234)

(assert (=> b!1308083 (= lt!585067 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!7 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1308084 () Bool)

(declare-fun e!746418 () Bool)

(assert (=> b!1308084 (= e!746418 (and e!746416 mapRes!54340))))

(declare-fun condMapEmpty!54340 () Bool)

(declare-fun mapDefault!54340 () ValueCell!16672)

