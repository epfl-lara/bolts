; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110734 () Bool)

(assert start!110734)

(declare-fun b_free!29533 () Bool)

(declare-fun b_next!29533 () Bool)

(assert (=> start!110734 (= b_free!29533 (not b_next!29533))))

(declare-fun tp!103921 () Bool)

(declare-fun b_and!47751 () Bool)

(assert (=> start!110734 (= tp!103921 b_and!47751)))

(declare-fun b!1309838 () Bool)

(declare-fun e!747331 () Bool)

(assert (=> b!1309838 (= e!747331 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87481 0))(
  ( (array!87482 (arr!42216 (Array (_ BitVec 32) (_ BitVec 64))) (size!42767 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87481)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52121 0))(
  ( (V!52122 (val!17706 Int)) )
))
(declare-fun minValue!1296 () V!52121)

(declare-datatypes ((ValueCell!16733 0))(
  ( (ValueCellFull!16733 (v!20331 V!52121)) (EmptyCell!16733) )
))
(declare-datatypes ((array!87483 0))(
  ( (array!87484 (arr!42217 (Array (_ BitVec 32) ValueCell!16733)) (size!42768 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87483)

(declare-fun zeroValue!1296 () V!52121)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22974 0))(
  ( (tuple2!22975 (_1!11497 (_ BitVec 64)) (_2!11497 V!52121)) )
))
(declare-datatypes ((List!30140 0))(
  ( (Nil!30137) (Cons!30136 (h!31345 tuple2!22974) (t!43753 List!30140)) )
))
(declare-datatypes ((ListLongMap!20643 0))(
  ( (ListLongMap!20644 (toList!10337 List!30140)) )
))
(declare-fun contains!8423 (ListLongMap!20643 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5293 (array!87481 array!87483 (_ BitVec 32) (_ BitVec 32) V!52121 V!52121 (_ BitVec 32) Int) ListLongMap!20643)

(assert (=> b!1309838 (contains!8423 (getCurrentListMap!5293 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43264 0))(
  ( (Unit!43265) )
))
(declare-fun lt!585250 () Unit!43264)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!6 (array!87481 array!87483 (_ BitVec 32) (_ BitVec 32) V!52121 V!52121 (_ BitVec 64) (_ BitVec 32) Int) Unit!43264)

(assert (=> b!1309838 (= lt!585250 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!6 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1309839 () Bool)

(declare-fun res!869606 () Bool)

(assert (=> b!1309839 (=> (not res!869606) (not e!747331))))

(assert (=> b!1309839 (= res!869606 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1309840 () Bool)

(declare-fun res!869609 () Bool)

(assert (=> b!1309840 (=> (not res!869609) (not e!747331))))

(assert (=> b!1309840 (= res!869609 (contains!8423 (getCurrentListMap!5293 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1309841 () Bool)

(declare-fun res!869605 () Bool)

(assert (=> b!1309841 (=> (not res!869605) (not e!747331))))

(declare-datatypes ((List!30141 0))(
  ( (Nil!30138) (Cons!30137 (h!31346 (_ BitVec 64)) (t!43754 List!30141)) )
))
(declare-fun arrayNoDuplicates!0 (array!87481 (_ BitVec 32) List!30141) Bool)

(assert (=> b!1309841 (= res!869605 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30138))))

(declare-fun mapNonEmpty!54523 () Bool)

(declare-fun mapRes!54523 () Bool)

(declare-fun tp!103922 () Bool)

(declare-fun e!747332 () Bool)

(assert (=> mapNonEmpty!54523 (= mapRes!54523 (and tp!103922 e!747332))))

(declare-fun mapValue!54523 () ValueCell!16733)

(declare-fun mapKey!54523 () (_ BitVec 32))

(declare-fun mapRest!54523 () (Array (_ BitVec 32) ValueCell!16733))

(assert (=> mapNonEmpty!54523 (= (arr!42217 _values!1354) (store mapRest!54523 mapKey!54523 mapValue!54523))))

(declare-fun b!1309842 () Bool)

(declare-fun e!747335 () Bool)

(declare-fun tp_is_empty!35263 () Bool)

(assert (=> b!1309842 (= e!747335 tp_is_empty!35263)))

(declare-fun b!1309843 () Bool)

(declare-fun e!747333 () Bool)

(assert (=> b!1309843 (= e!747333 (and e!747335 mapRes!54523))))

(declare-fun condMapEmpty!54523 () Bool)

(declare-fun mapDefault!54523 () ValueCell!16733)

