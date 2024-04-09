; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133962 () Bool)

(assert start!133962)

(declare-fun b_free!32153 () Bool)

(declare-fun b_next!32153 () Bool)

(assert (=> start!133962 (= b_free!32153 (not b_next!32153))))

(declare-fun tp!113761 () Bool)

(declare-fun b_and!51757 () Bool)

(assert (=> start!133962 (= tp!113761 b_and!51757)))

(declare-fun b!1565452 () Bool)

(declare-fun res!1070198 () Bool)

(declare-fun e!872591 () Bool)

(assert (=> b!1565452 (=> (not res!1070198) (not e!872591))))

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!104515 0))(
  ( (array!104516 (arr!50440 (Array (_ BitVec 32) (_ BitVec 64))) (size!50991 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104515)

(assert (=> b!1565452 (= res!1070198 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50991 _keys!637)) (bvslt from!782 (size!50991 _keys!637))))))

(declare-fun b!1565453 () Bool)

(declare-fun res!1070199 () Bool)

(assert (=> b!1565453 (=> (not res!1070199) (not e!872591))))

(declare-datatypes ((List!36769 0))(
  ( (Nil!36766) (Cons!36765 (h!38212 (_ BitVec 64)) (t!51643 List!36769)) )
))
(declare-fun arrayNoDuplicates!0 (array!104515 (_ BitVec 32) List!36769) Bool)

(assert (=> b!1565453 (= res!1070199 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36766))))

(declare-fun b!1565454 () Bool)

(declare-datatypes ((V!60109 0))(
  ( (V!60110 (val!19547 Int)) )
))
(declare-datatypes ((ValueCell!18433 0))(
  ( (ValueCellFull!18433 (v!22300 V!60109)) (EmptyCell!18433) )
))
(declare-datatypes ((array!104517 0))(
  ( (array!104518 (arr!50441 (Array (_ BitVec 32) ValueCell!18433)) (size!50992 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104517)

(assert (=> b!1565454 (= e!872591 (not (bvslt from!782 (size!50992 _values!487))))))

(declare-datatypes ((tuple2!25380 0))(
  ( (tuple2!25381 (_1!12700 (_ BitVec 64)) (_2!12700 V!60109)) )
))
(declare-datatypes ((List!36770 0))(
  ( (Nil!36767) (Cons!36766 (h!38213 tuple2!25380) (t!51644 List!36770)) )
))
(declare-datatypes ((ListLongMap!22827 0))(
  ( (ListLongMap!22828 (toList!11429 List!36770)) )
))
(declare-fun lt!672235 () ListLongMap!22827)

(declare-fun lt!672234 () V!60109)

(declare-fun contains!10350 (ListLongMap!22827 (_ BitVec 64)) Bool)

(declare-fun +!5036 (ListLongMap!22827 tuple2!25380) ListLongMap!22827)

(assert (=> b!1565454 (not (contains!10350 (+!5036 lt!672235 (tuple2!25381 (select (arr!50440 _keys!637) from!782) lt!672234)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51946 0))(
  ( (Unit!51947) )
))
(declare-fun lt!672236 () Unit!51946)

(declare-fun addStillNotContains!572 (ListLongMap!22827 (_ BitVec 64) V!60109 (_ BitVec 64)) Unit!51946)

(assert (=> b!1565454 (= lt!672236 (addStillNotContains!572 lt!672235 (select (arr!50440 _keys!637) from!782) lt!672234 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-fun get!26364 (ValueCell!18433 V!60109) V!60109)

(declare-fun dynLambda!3925 (Int (_ BitVec 64)) V!60109)

(assert (=> b!1565454 (= lt!672234 (get!26364 (select (arr!50441 _values!487) from!782) (dynLambda!3925 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60109)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun minValue!453 () V!60109)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6769 (array!104515 array!104517 (_ BitVec 32) (_ BitVec 32) V!60109 V!60109 (_ BitVec 32) Int) ListLongMap!22827)

(assert (=> b!1565454 (= lt!672235 (getCurrentListMapNoExtraKeys!6769 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun res!1070202 () Bool)

(assert (=> start!133962 (=> (not res!1070202) (not e!872591))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133962 (= res!1070202 (validMask!0 mask!947))))

(assert (=> start!133962 e!872591))

(assert (=> start!133962 tp!113761))

(declare-fun tp_is_empty!38927 () Bool)

(assert (=> start!133962 tp_is_empty!38927))

(assert (=> start!133962 true))

(declare-fun array_inv!39113 (array!104515) Bool)

(assert (=> start!133962 (array_inv!39113 _keys!637)))

(declare-fun e!872592 () Bool)

(declare-fun array_inv!39114 (array!104517) Bool)

(assert (=> start!133962 (and (array_inv!39114 _values!487) e!872592)))

(declare-fun b!1565455 () Bool)

(declare-fun res!1070197 () Bool)

(assert (=> b!1565455 (=> (not res!1070197) (not e!872591))))

(assert (=> b!1565455 (= res!1070197 (and (= (size!50992 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50991 _keys!637) (size!50992 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1565456 () Bool)

(declare-fun e!872594 () Bool)

(assert (=> b!1565456 (= e!872594 tp_is_empty!38927)))

(declare-fun b!1565457 () Bool)

(declare-fun res!1070201 () Bool)

(assert (=> b!1565457 (=> (not res!1070201) (not e!872591))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104515 (_ BitVec 32)) Bool)

(assert (=> b!1565457 (= res!1070201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapNonEmpty!59782 () Bool)

(declare-fun mapRes!59782 () Bool)

(declare-fun tp!113762 () Bool)

(declare-fun e!872593 () Bool)

(assert (=> mapNonEmpty!59782 (= mapRes!59782 (and tp!113762 e!872593))))

(declare-fun mapValue!59782 () ValueCell!18433)

(declare-fun mapRest!59782 () (Array (_ BitVec 32) ValueCell!18433))

(declare-fun mapKey!59782 () (_ BitVec 32))

(assert (=> mapNonEmpty!59782 (= (arr!50441 _values!487) (store mapRest!59782 mapKey!59782 mapValue!59782))))

(declare-fun b!1565458 () Bool)

(assert (=> b!1565458 (= e!872593 tp_is_empty!38927)))

(declare-fun b!1565459 () Bool)

(declare-fun res!1070200 () Bool)

(assert (=> b!1565459 (=> (not res!1070200) (not e!872591))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565459 (= res!1070200 (validKeyInArray!0 (select (arr!50440 _keys!637) from!782)))))

(declare-fun mapIsEmpty!59782 () Bool)

(assert (=> mapIsEmpty!59782 mapRes!59782))

(declare-fun b!1565460 () Bool)

(assert (=> b!1565460 (= e!872592 (and e!872594 mapRes!59782))))

(declare-fun condMapEmpty!59782 () Bool)

(declare-fun mapDefault!59782 () ValueCell!18433)

