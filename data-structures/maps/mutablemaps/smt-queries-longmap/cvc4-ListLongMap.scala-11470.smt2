; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133654 () Bool)

(assert start!133654)

(declare-fun b_free!32039 () Bool)

(declare-fun b_next!32039 () Bool)

(assert (=> start!133654 (= b_free!32039 (not b_next!32039))))

(declare-fun tp!113241 () Bool)

(declare-fun b_and!51599 () Bool)

(assert (=> start!133654 (= tp!113241 b_and!51599)))

(declare-fun b!1562223 () Bool)

(declare-fun e!870581 () Bool)

(assert (=> b!1562223 (= e!870581 (not true))))

(declare-fun lt!671540 () Bool)

(declare-datatypes ((V!59813 0))(
  ( (V!59814 (val!19436 Int)) )
))
(declare-datatypes ((tuple2!25262 0))(
  ( (tuple2!25263 (_1!12641 (_ BitVec 64)) (_2!12641 V!59813)) )
))
(declare-datatypes ((List!36636 0))(
  ( (Nil!36633) (Cons!36632 (h!38079 tuple2!25262) (t!51472 List!36636)) )
))
(declare-datatypes ((ListLongMap!22709 0))(
  ( (ListLongMap!22710 (toList!11370 List!36636)) )
))
(declare-fun lt!671539 () ListLongMap!22709)

(declare-fun contains!10290 (ListLongMap!22709 (_ BitVec 64)) Bool)

(assert (=> b!1562223 (= lt!671540 (contains!10290 lt!671539 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1562223 (not (contains!10290 lt!671539 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!671537 () ListLongMap!22709)

(declare-fun lt!671541 () V!59813)

(declare-datatypes ((array!104077 0))(
  ( (array!104078 (arr!50226 (Array (_ BitVec 32) (_ BitVec 64))) (size!50777 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104077)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun +!5024 (ListLongMap!22709 tuple2!25262) ListLongMap!22709)

(assert (=> b!1562223 (= lt!671539 (+!5024 lt!671537 (tuple2!25263 (select (arr!50226 _keys!637) from!782) lt!671541)))))

(declare-datatypes ((Unit!51912 0))(
  ( (Unit!51913) )
))
(declare-fun lt!671538 () Unit!51912)

(declare-fun addStillNotContains!560 (ListLongMap!22709 (_ BitVec 64) V!59813 (_ BitVec 64)) Unit!51912)

(assert (=> b!1562223 (= lt!671538 (addStillNotContains!560 lt!671537 (select (arr!50226 _keys!637) from!782) lt!671541 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18322 0))(
  ( (ValueCellFull!18322 (v!22185 V!59813)) (EmptyCell!18322) )
))
(declare-datatypes ((array!104079 0))(
  ( (array!104080 (arr!50227 (Array (_ BitVec 32) ValueCell!18322)) (size!50778 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104079)

(declare-fun get!26276 (ValueCell!18322 V!59813) V!59813)

(declare-fun dynLambda!3913 (Int (_ BitVec 64)) V!59813)

(assert (=> b!1562223 (= lt!671541 (get!26276 (select (arr!50227 _values!487) from!782) (dynLambda!3913 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59813)

(declare-fun zeroValue!453 () V!59813)

(declare-fun getCurrentListMapNoExtraKeys!6730 (array!104077 array!104079 (_ BitVec 32) (_ BitVec 32) V!59813 V!59813 (_ BitVec 32) Int) ListLongMap!22709)

(assert (=> b!1562223 (= lt!671537 (getCurrentListMapNoExtraKeys!6730 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun mapIsEmpty!59433 () Bool)

(declare-fun mapRes!59433 () Bool)

(assert (=> mapIsEmpty!59433 mapRes!59433))

(declare-fun mapNonEmpty!59433 () Bool)

(declare-fun tp!113242 () Bool)

(declare-fun e!870577 () Bool)

(assert (=> mapNonEmpty!59433 (= mapRes!59433 (and tp!113242 e!870577))))

(declare-fun mapKey!59433 () (_ BitVec 32))

(declare-fun mapRest!59433 () (Array (_ BitVec 32) ValueCell!18322))

(declare-fun mapValue!59433 () ValueCell!18322)

(assert (=> mapNonEmpty!59433 (= (arr!50227 _values!487) (store mapRest!59433 mapKey!59433 mapValue!59433))))

(declare-fun b!1562224 () Bool)

(declare-fun res!1068208 () Bool)

(assert (=> b!1562224 (=> (not res!1068208) (not e!870581))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104077 (_ BitVec 32)) Bool)

(assert (=> b!1562224 (= res!1068208 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1562225 () Bool)

(declare-fun res!1068207 () Bool)

(assert (=> b!1562225 (=> (not res!1068207) (not e!870581))))

(declare-datatypes ((List!36637 0))(
  ( (Nil!36634) (Cons!36633 (h!38080 (_ BitVec 64)) (t!51473 List!36637)) )
))
(declare-fun arrayNoDuplicates!0 (array!104077 (_ BitVec 32) List!36637) Bool)

(assert (=> b!1562225 (= res!1068207 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36634))))

(declare-fun res!1068209 () Bool)

(assert (=> start!133654 (=> (not res!1068209) (not e!870581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133654 (= res!1068209 (validMask!0 mask!947))))

(assert (=> start!133654 e!870581))

(assert (=> start!133654 tp!113241))

(declare-fun tp_is_empty!38705 () Bool)

(assert (=> start!133654 tp_is_empty!38705))

(assert (=> start!133654 true))

(declare-fun array_inv!38965 (array!104077) Bool)

(assert (=> start!133654 (array_inv!38965 _keys!637)))

(declare-fun e!870579 () Bool)

(declare-fun array_inv!38966 (array!104079) Bool)

(assert (=> start!133654 (and (array_inv!38966 _values!487) e!870579)))

(declare-fun b!1562226 () Bool)

(declare-fun e!870580 () Bool)

(assert (=> b!1562226 (= e!870580 tp_is_empty!38705)))

(declare-fun b!1562227 () Bool)

(declare-fun res!1068204 () Bool)

(assert (=> b!1562227 (=> (not res!1068204) (not e!870581))))

(assert (=> b!1562227 (= res!1068204 (and (= (size!50778 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50777 _keys!637) (size!50778 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562228 () Bool)

(declare-fun res!1068205 () Bool)

(assert (=> b!1562228 (=> (not res!1068205) (not e!870581))))

(assert (=> b!1562228 (= res!1068205 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50777 _keys!637)) (bvslt from!782 (size!50777 _keys!637))))))

(declare-fun b!1562229 () Bool)

(declare-fun res!1068206 () Bool)

(assert (=> b!1562229 (=> (not res!1068206) (not e!870581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1562229 (= res!1068206 (validKeyInArray!0 (select (arr!50226 _keys!637) from!782)))))

(declare-fun b!1562230 () Bool)

(assert (=> b!1562230 (= e!870577 tp_is_empty!38705)))

(declare-fun b!1562231 () Bool)

(assert (=> b!1562231 (= e!870579 (and e!870580 mapRes!59433))))

(declare-fun condMapEmpty!59433 () Bool)

(declare-fun mapDefault!59433 () ValueCell!18322)

