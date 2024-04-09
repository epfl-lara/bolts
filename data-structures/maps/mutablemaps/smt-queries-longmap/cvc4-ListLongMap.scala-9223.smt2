; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110726 () Bool)

(assert start!110726)

(declare-fun b_free!29525 () Bool)

(declare-fun b_next!29525 () Bool)

(assert (=> start!110726 (= b_free!29525 (not b_next!29525))))

(declare-fun tp!103897 () Bool)

(declare-fun b_and!47743 () Bool)

(assert (=> start!110726 (= tp!103897 b_and!47743)))

(declare-fun mapIsEmpty!54511 () Bool)

(declare-fun mapRes!54511 () Bool)

(assert (=> mapIsEmpty!54511 mapRes!54511))

(declare-fun res!869496 () Bool)

(declare-fun e!747271 () Bool)

(assert (=> start!110726 (=> (not res!869496) (not e!747271))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110726 (= res!869496 (validMask!0 mask!2040))))

(assert (=> start!110726 e!747271))

(assert (=> start!110726 tp!103897))

(declare-datatypes ((array!87467 0))(
  ( (array!87468 (arr!42209 (Array (_ BitVec 32) (_ BitVec 64))) (size!42760 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87467)

(declare-fun array_inv!31893 (array!87467) Bool)

(assert (=> start!110726 (array_inv!31893 _keys!1628)))

(assert (=> start!110726 true))

(declare-fun tp_is_empty!35255 () Bool)

(assert (=> start!110726 tp_is_empty!35255))

(declare-datatypes ((V!52109 0))(
  ( (V!52110 (val!17702 Int)) )
))
(declare-datatypes ((ValueCell!16729 0))(
  ( (ValueCellFull!16729 (v!20327 V!52109)) (EmptyCell!16729) )
))
(declare-datatypes ((array!87469 0))(
  ( (array!87470 (arr!42210 (Array (_ BitVec 32) ValueCell!16729)) (size!42761 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87469)

(declare-fun e!747273 () Bool)

(declare-fun array_inv!31894 (array!87469) Bool)

(assert (=> start!110726 (and (array_inv!31894 _values!1354) e!747273)))

(declare-fun b!1309694 () Bool)

(declare-fun res!869497 () Bool)

(assert (=> b!1309694 (=> (not res!869497) (not e!747271))))

(declare-datatypes ((List!30134 0))(
  ( (Nil!30131) (Cons!30130 (h!31339 (_ BitVec 64)) (t!43747 List!30134)) )
))
(declare-fun arrayNoDuplicates!0 (array!87467 (_ BitVec 32) List!30134) Bool)

(assert (=> b!1309694 (= res!869497 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30131))))

(declare-fun b!1309695 () Bool)

(declare-fun res!869500 () Bool)

(assert (=> b!1309695 (=> (not res!869500) (not e!747271))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1309695 (= res!869500 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1309696 () Bool)

(assert (=> b!1309696 (= e!747271 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52109)

(declare-fun zeroValue!1296 () V!52109)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22968 0))(
  ( (tuple2!22969 (_1!11494 (_ BitVec 64)) (_2!11494 V!52109)) )
))
(declare-datatypes ((List!30135 0))(
  ( (Nil!30132) (Cons!30131 (h!31340 tuple2!22968) (t!43748 List!30135)) )
))
(declare-datatypes ((ListLongMap!20637 0))(
  ( (ListLongMap!20638 (toList!10334 List!30135)) )
))
(declare-fun contains!8420 (ListLongMap!20637 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5290 (array!87467 array!87469 (_ BitVec 32) (_ BitVec 32) V!52109 V!52109 (_ BitVec 32) Int) ListLongMap!20637)

(assert (=> b!1309696 (contains!8420 (getCurrentListMap!5290 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))

(declare-datatypes ((Unit!43258 0))(
  ( (Unit!43259) )
))
(declare-fun lt!585238 () Unit!43258)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!3 (array!87467 array!87469 (_ BitVec 32) (_ BitVec 32) V!52109 V!52109 (_ BitVec 64) (_ BitVec 32) Int) Unit!43258)

(assert (=> b!1309696 (= lt!585238 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!3 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1309697 () Bool)

(declare-fun res!869501 () Bool)

(assert (=> b!1309697 (=> (not res!869501) (not e!747271))))

(assert (=> b!1309697 (= res!869501 (not (= (select (arr!42209 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1309698 () Bool)

(declare-fun res!869498 () Bool)

(assert (=> b!1309698 (=> (not res!869498) (not e!747271))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87467 (_ BitVec 32)) Bool)

(assert (=> b!1309698 (= res!869498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!54511 () Bool)

(declare-fun tp!103898 () Bool)

(declare-fun e!747272 () Bool)

(assert (=> mapNonEmpty!54511 (= mapRes!54511 (and tp!103898 e!747272))))

(declare-fun mapKey!54511 () (_ BitVec 32))

(declare-fun mapRest!54511 () (Array (_ BitVec 32) ValueCell!16729))

(declare-fun mapValue!54511 () ValueCell!16729)

(assert (=> mapNonEmpty!54511 (= (arr!42210 _values!1354) (store mapRest!54511 mapKey!54511 mapValue!54511))))

(declare-fun b!1309699 () Bool)

(declare-fun res!869504 () Bool)

(assert (=> b!1309699 (=> (not res!869504) (not e!747271))))

(assert (=> b!1309699 (= res!869504 (and (= (size!42761 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42760 _keys!1628) (size!42761 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1309700 () Bool)

(declare-fun res!869503 () Bool)

(assert (=> b!1309700 (=> (not res!869503) (not e!747271))))

(assert (=> b!1309700 (= res!869503 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42760 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1309701 () Bool)

(declare-fun res!869499 () Bool)

(assert (=> b!1309701 (=> (not res!869499) (not e!747271))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1309701 (= res!869499 (validKeyInArray!0 (select (arr!42209 _keys!1628) from!2020)))))

(declare-fun b!1309702 () Bool)

(assert (=> b!1309702 (= e!747272 tp_is_empty!35255)))

(declare-fun b!1309703 () Bool)

(declare-fun res!869502 () Bool)

(assert (=> b!1309703 (=> (not res!869502) (not e!747271))))

(assert (=> b!1309703 (= res!869502 (contains!8420 (getCurrentListMap!5290 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1309704 () Bool)

(declare-fun e!747274 () Bool)

(assert (=> b!1309704 (= e!747273 (and e!747274 mapRes!54511))))

(declare-fun condMapEmpty!54511 () Bool)

(declare-fun mapDefault!54511 () ValueCell!16729)

