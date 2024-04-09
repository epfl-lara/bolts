; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133774 () Bool)

(assert start!133774)

(declare-fun b_free!32105 () Bool)

(declare-fun b_next!32105 () Bool)

(assert (=> start!133774 (= b_free!32105 (not b_next!32105))))

(declare-fun tp!113521 () Bool)

(declare-fun b_and!51685 () Bool)

(assert (=> start!133774 (= tp!113521 b_and!51685)))

(declare-fun b!1563718 () Bool)

(declare-fun e!871552 () Bool)

(declare-fun tp_is_empty!38825 () Bool)

(assert (=> b!1563718 (= e!871552 tp_is_empty!38825)))

(declare-fun mapIsEmpty!59613 () Bool)

(declare-fun mapRes!59613 () Bool)

(assert (=> mapIsEmpty!59613 mapRes!59613))

(declare-fun res!1069143 () Bool)

(declare-fun e!871551 () Bool)

(assert (=> start!133774 (=> (not res!1069143) (not e!871551))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133774 (= res!1069143 (validMask!0 mask!947))))

(assert (=> start!133774 e!871551))

(assert (=> start!133774 tp!113521))

(assert (=> start!133774 tp_is_empty!38825))

(assert (=> start!133774 true))

(declare-datatypes ((array!104311 0))(
  ( (array!104312 (arr!50343 (Array (_ BitVec 32) (_ BitVec 64))) (size!50894 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104311)

(declare-fun array_inv!39055 (array!104311) Bool)

(assert (=> start!133774 (array_inv!39055 _keys!637)))

(declare-datatypes ((V!59973 0))(
  ( (V!59974 (val!19496 Int)) )
))
(declare-datatypes ((ValueCell!18382 0))(
  ( (ValueCellFull!18382 (v!22245 V!59973)) (EmptyCell!18382) )
))
(declare-datatypes ((array!104313 0))(
  ( (array!104314 (arr!50344 (Array (_ BitVec 32) ValueCell!18382)) (size!50895 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104313)

(declare-fun e!871553 () Bool)

(declare-fun array_inv!39056 (array!104313) Bool)

(assert (=> start!133774 (and (array_inv!39056 _values!487) e!871553)))

(declare-fun b!1563719 () Bool)

(declare-fun e!871549 () Bool)

(assert (=> b!1563719 (= e!871549 tp_is_empty!38825)))

(declare-fun b!1563720 () Bool)

(declare-fun res!1069139 () Bool)

(assert (=> b!1563720 (=> (not res!1069139) (not e!871551))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1563720 (= res!1069139 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50894 _keys!637)) (bvslt from!782 (size!50894 _keys!637))))))

(declare-fun b!1563721 () Bool)

(declare-fun res!1069142 () Bool)

(assert (=> b!1563721 (=> (not res!1069142) (not e!871551))))

(declare-datatypes ((List!36702 0))(
  ( (Nil!36699) (Cons!36698 (h!38145 (_ BitVec 64)) (t!51556 List!36702)) )
))
(declare-fun arrayNoDuplicates!0 (array!104311 (_ BitVec 32) List!36702) Bool)

(assert (=> b!1563721 (= res!1069142 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36699))))

(declare-fun b!1563722 () Bool)

(declare-fun res!1069141 () Bool)

(assert (=> b!1563722 (=> (not res!1069141) (not e!871551))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104311 (_ BitVec 32)) Bool)

(assert (=> b!1563722 (= res!1069141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapNonEmpty!59613 () Bool)

(declare-fun tp!113520 () Bool)

(assert (=> mapNonEmpty!59613 (= mapRes!59613 (and tp!113520 e!871552))))

(declare-fun mapValue!59613 () ValueCell!18382)

(declare-fun mapRest!59613 () (Array (_ BitVec 32) ValueCell!18382))

(declare-fun mapKey!59613 () (_ BitVec 32))

(assert (=> mapNonEmpty!59613 (= (arr!50344 _values!487) (store mapRest!59613 mapKey!59613 mapValue!59613))))

(declare-fun b!1563723 () Bool)

(declare-fun e!871548 () Bool)

(assert (=> b!1563723 (= e!871551 e!871548)))

(declare-fun res!1069145 () Bool)

(assert (=> b!1563723 (=> (not res!1069145) (not e!871548))))

(declare-datatypes ((tuple2!25316 0))(
  ( (tuple2!25317 (_1!12668 (_ BitVec 64)) (_2!12668 V!59973)) )
))
(declare-datatypes ((List!36703 0))(
  ( (Nil!36700) (Cons!36699 (h!38146 tuple2!25316) (t!51557 List!36703)) )
))
(declare-datatypes ((ListLongMap!22763 0))(
  ( (ListLongMap!22764 (toList!11397 List!36703)) )
))
(declare-fun lt!671892 () ListLongMap!22763)

(declare-fun contains!10317 (ListLongMap!22763 (_ BitVec 64)) Bool)

(assert (=> b!1563723 (= res!1069145 (not (contains!10317 lt!671892 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59973)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59973)

(declare-fun getCurrentListMapNoExtraKeys!6754 (array!104311 array!104313 (_ BitVec 32) (_ BitVec 32) V!59973 V!59973 (_ BitVec 32) Int) ListLongMap!22763)

(assert (=> b!1563723 (= lt!671892 (getCurrentListMapNoExtraKeys!6754 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1563724 () Bool)

(assert (=> b!1563724 (= e!871553 (and e!871549 mapRes!59613))))

(declare-fun condMapEmpty!59613 () Bool)

(declare-fun mapDefault!59613 () ValueCell!18382)

