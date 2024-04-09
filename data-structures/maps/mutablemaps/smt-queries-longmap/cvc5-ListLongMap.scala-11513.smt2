; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133994 () Bool)

(assert start!133994)

(declare-fun b_free!32185 () Bool)

(declare-fun b_next!32185 () Bool)

(assert (=> start!133994 (= b_free!32185 (not b_next!32185))))

(declare-fun tp!113858 () Bool)

(declare-fun b_and!51821 () Bool)

(assert (=> start!133994 (= tp!113858 b_and!51821)))

(declare-fun b!1565947 () Bool)

(declare-fun e!872850 () Bool)

(declare-fun e!872854 () Bool)

(assert (=> b!1565947 (= e!872850 (not e!872854))))

(declare-fun res!1070519 () Bool)

(assert (=> b!1565947 (=> (not res!1070519) (not e!872854))))

(declare-datatypes ((V!60153 0))(
  ( (V!60154 (val!19563 Int)) )
))
(declare-datatypes ((tuple2!25404 0))(
  ( (tuple2!25405 (_1!12712 (_ BitVec 64)) (_2!12712 V!60153)) )
))
(declare-datatypes ((List!36791 0))(
  ( (Nil!36788) (Cons!36787 (h!38234 tuple2!25404) (t!51697 List!36791)) )
))
(declare-datatypes ((ListLongMap!22851 0))(
  ( (ListLongMap!22852 (toList!11441 List!36791)) )
))
(declare-fun lt!672461 () ListLongMap!22851)

(declare-fun contains!10362 (ListLongMap!22851 (_ BitVec 64)) Bool)

(assert (=> b!1565947 (= res!1070519 (not (contains!10362 lt!672461 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1565947 (not (contains!10362 lt!672461 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!672462 () ListLongMap!22851)

(declare-datatypes ((array!104577 0))(
  ( (array!104578 (arr!50471 (Array (_ BitVec 32) (_ BitVec 64))) (size!51022 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104577)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun lt!672464 () V!60153)

(declare-fun +!5048 (ListLongMap!22851 tuple2!25404) ListLongMap!22851)

(assert (=> b!1565947 (= lt!672461 (+!5048 lt!672462 (tuple2!25405 (select (arr!50471 _keys!637) from!782) lt!672464)))))

(declare-datatypes ((Unit!51970 0))(
  ( (Unit!51971) )
))
(declare-fun lt!672463 () Unit!51970)

(declare-fun addStillNotContains!584 (ListLongMap!22851 (_ BitVec 64) V!60153 (_ BitVec 64)) Unit!51970)

(assert (=> b!1565947 (= lt!672463 (addStillNotContains!584 lt!672462 (select (arr!50471 _keys!637) from!782) lt!672464 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18449 0))(
  ( (ValueCellFull!18449 (v!22316 V!60153)) (EmptyCell!18449) )
))
(declare-datatypes ((array!104579 0))(
  ( (array!104580 (arr!50472 (Array (_ BitVec 32) ValueCell!18449)) (size!51023 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104579)

(declare-fun get!26388 (ValueCell!18449 V!60153) V!60153)

(declare-fun dynLambda!3937 (Int (_ BitVec 64)) V!60153)

(assert (=> b!1565947 (= lt!672464 (get!26388 (select (arr!50472 _values!487) from!782) (dynLambda!3937 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!60153)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60153)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6781 (array!104577 array!104579 (_ BitVec 32) (_ BitVec 32) V!60153 V!60153 (_ BitVec 32) Int) ListLongMap!22851)

(assert (=> b!1565947 (= lt!672462 (getCurrentListMapNoExtraKeys!6781 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1565948 () Bool)

(declare-fun res!1070522 () Bool)

(assert (=> b!1565948 (=> (not res!1070522) (not e!872854))))

(assert (=> b!1565948 (= res!1070522 (contains!10362 lt!672461 (select (arr!50471 _keys!637) from!782)))))

(declare-fun b!1565949 () Bool)

(declare-fun res!1070520 () Bool)

(assert (=> b!1565949 (=> (not res!1070520) (not e!872850))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565949 (= res!1070520 (validKeyInArray!0 (select (arr!50471 _keys!637) from!782)))))

(declare-fun b!1565950 () Bool)

(declare-fun res!1070516 () Bool)

(assert (=> b!1565950 (=> (not res!1070516) (not e!872850))))

(assert (=> b!1565950 (= res!1070516 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51022 _keys!637)) (bvslt from!782 (size!51022 _keys!637))))))

(declare-fun res!1070517 () Bool)

(assert (=> start!133994 (=> (not res!1070517) (not e!872850))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133994 (= res!1070517 (validMask!0 mask!947))))

(assert (=> start!133994 e!872850))

(assert (=> start!133994 tp!113858))

(declare-fun tp_is_empty!38959 () Bool)

(assert (=> start!133994 tp_is_empty!38959))

(assert (=> start!133994 true))

(declare-fun array_inv!39135 (array!104577) Bool)

(assert (=> start!133994 (array_inv!39135 _keys!637)))

(declare-fun e!872855 () Bool)

(declare-fun array_inv!39136 (array!104579) Bool)

(assert (=> start!133994 (and (array_inv!39136 _values!487) e!872855)))

(declare-fun b!1565951 () Bool)

(declare-fun apply!1147 (ListLongMap!22851 (_ BitVec 64)) V!60153)

(assert (=> b!1565951 (= e!872854 (= (apply!1147 lt!672461 (select (arr!50471 _keys!637) from!782)) lt!672464))))

(declare-fun b!1565952 () Bool)

(declare-fun res!1070521 () Bool)

(assert (=> b!1565952 (=> (not res!1070521) (not e!872850))))

(assert (=> b!1565952 (= res!1070521 (and (= (size!51023 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51022 _keys!637) (size!51023 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59830 () Bool)

(declare-fun mapRes!59830 () Bool)

(assert (=> mapIsEmpty!59830 mapRes!59830))

(declare-fun b!1565953 () Bool)

(declare-fun e!872851 () Bool)

(assert (=> b!1565953 (= e!872851 tp_is_empty!38959)))

(declare-fun mapNonEmpty!59830 () Bool)

(declare-fun tp!113857 () Bool)

(declare-fun e!872853 () Bool)

(assert (=> mapNonEmpty!59830 (= mapRes!59830 (and tp!113857 e!872853))))

(declare-fun mapRest!59830 () (Array (_ BitVec 32) ValueCell!18449))

(declare-fun mapValue!59830 () ValueCell!18449)

(declare-fun mapKey!59830 () (_ BitVec 32))

(assert (=> mapNonEmpty!59830 (= (arr!50472 _values!487) (store mapRest!59830 mapKey!59830 mapValue!59830))))

(declare-fun b!1565954 () Bool)

(assert (=> b!1565954 (= e!872855 (and e!872851 mapRes!59830))))

(declare-fun condMapEmpty!59830 () Bool)

(declare-fun mapDefault!59830 () ValueCell!18449)

