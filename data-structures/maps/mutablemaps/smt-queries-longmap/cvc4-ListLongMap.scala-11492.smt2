; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133786 () Bool)

(assert start!133786)

(declare-fun b_free!32117 () Bool)

(declare-fun b_next!32117 () Bool)

(assert (=> start!133786 (= b_free!32117 (not b_next!32117))))

(declare-fun tp!113557 () Bool)

(declare-fun b_and!51697 () Bool)

(assert (=> start!133786 (= tp!113557 b_and!51697)))

(declare-fun b!1563906 () Bool)

(declare-fun res!1069273 () Bool)

(declare-fun e!871657 () Bool)

(assert (=> b!1563906 (=> (not res!1069273) (not e!871657))))

(declare-datatypes ((V!59989 0))(
  ( (V!59990 (val!19502 Int)) )
))
(declare-datatypes ((tuple2!25322 0))(
  ( (tuple2!25323 (_1!12671 (_ BitVec 64)) (_2!12671 V!59989)) )
))
(declare-datatypes ((List!36708 0))(
  ( (Nil!36705) (Cons!36704 (h!38151 tuple2!25322) (t!51562 List!36708)) )
))
(declare-datatypes ((ListLongMap!22769 0))(
  ( (ListLongMap!22770 (toList!11400 List!36708)) )
))
(declare-fun lt!671919 () ListLongMap!22769)

(declare-fun contains!10320 (ListLongMap!22769 (_ BitVec 64)) Bool)

(assert (=> b!1563906 (= res!1069273 (not (contains!10320 lt!671919 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1563907 () Bool)

(declare-fun e!871656 () Bool)

(assert (=> b!1563907 (= e!871656 e!871657)))

(declare-fun res!1069275 () Bool)

(assert (=> b!1563907 (=> (not res!1069275) (not e!871657))))

(assert (=> b!1563907 (= res!1069275 (not (contains!10320 lt!671919 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59989)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59989)

(declare-datatypes ((ValueCell!18388 0))(
  ( (ValueCellFull!18388 (v!22251 V!59989)) (EmptyCell!18388) )
))
(declare-datatypes ((array!104333 0))(
  ( (array!104334 (arr!50354 (Array (_ BitVec 32) ValueCell!18388)) (size!50905 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104333)

(declare-fun from!782 () (_ BitVec 32))

(declare-datatypes ((array!104335 0))(
  ( (array!104336 (arr!50355 (Array (_ BitVec 32) (_ BitVec 64))) (size!50906 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104335)

(declare-fun getCurrentListMapNoExtraKeys!6757 (array!104335 array!104333 (_ BitVec 32) (_ BitVec 32) V!59989 V!59989 (_ BitVec 32) Int) ListLongMap!22769)

(assert (=> b!1563907 (= lt!671919 (getCurrentListMapNoExtraKeys!6757 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapIsEmpty!59631 () Bool)

(declare-fun mapRes!59631 () Bool)

(assert (=> mapIsEmpty!59631 mapRes!59631))

(declare-fun mapNonEmpty!59631 () Bool)

(declare-fun tp!113556 () Bool)

(declare-fun e!871661 () Bool)

(assert (=> mapNonEmpty!59631 (= mapRes!59631 (and tp!113556 e!871661))))

(declare-fun mapKey!59631 () (_ BitVec 32))

(declare-fun mapRest!59631 () (Array (_ BitVec 32) ValueCell!18388))

(declare-fun mapValue!59631 () ValueCell!18388)

(assert (=> mapNonEmpty!59631 (= (arr!50354 _values!487) (store mapRest!59631 mapKey!59631 mapValue!59631))))

(declare-fun b!1563908 () Bool)

(declare-fun res!1069278 () Bool)

(assert (=> b!1563908 (=> (not res!1069278) (not e!871656))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1563908 (= res!1069278 (not (validKeyInArray!0 (select (arr!50355 _keys!637) from!782))))))

(declare-fun b!1563909 () Bool)

(declare-fun res!1069280 () Bool)

(assert (=> b!1563909 (=> (not res!1069280) (not e!871656))))

(declare-datatypes ((List!36709 0))(
  ( (Nil!36706) (Cons!36705 (h!38152 (_ BitVec 64)) (t!51563 List!36709)) )
))
(declare-fun arrayNoDuplicates!0 (array!104335 (_ BitVec 32) List!36709) Bool)

(assert (=> b!1563909 (= res!1069280 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36706))))

(declare-fun b!1563910 () Bool)

(declare-fun res!1069279 () Bool)

(assert (=> b!1563910 (=> (not res!1069279) (not e!871656))))

(assert (=> b!1563910 (= res!1069279 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50906 _keys!637)) (bvslt from!782 (size!50906 _keys!637))))))

(declare-fun b!1563911 () Bool)

(declare-fun tp_is_empty!38837 () Bool)

(assert (=> b!1563911 (= e!871661 tp_is_empty!38837)))

(declare-fun b!1563912 () Bool)

(declare-fun res!1069274 () Bool)

(assert (=> b!1563912 (=> (not res!1069274) (not e!871656))))

(assert (=> b!1563912 (= res!1069274 (and (= (size!50905 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50906 _keys!637) (size!50905 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563913 () Bool)

(declare-fun e!871658 () Bool)

(declare-fun e!871659 () Bool)

(assert (=> b!1563913 (= e!871658 (and e!871659 mapRes!59631))))

(declare-fun condMapEmpty!59631 () Bool)

(declare-fun mapDefault!59631 () ValueCell!18388)

