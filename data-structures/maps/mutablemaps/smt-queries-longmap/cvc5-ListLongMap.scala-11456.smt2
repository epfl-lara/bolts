; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133566 () Bool)

(assert start!133566)

(declare-fun b_free!31951 () Bool)

(declare-fun b_next!31951 () Bool)

(assert (=> start!133566 (= b_free!31951 (not b_next!31951))))

(declare-fun tp!112978 () Bool)

(declare-fun b_and!51423 () Bool)

(assert (=> start!133566 (= tp!112978 b_and!51423)))

(declare-fun b!1560938 () Bool)

(declare-fun e!869910 () Bool)

(declare-fun tp_is_empty!38617 () Bool)

(assert (=> b!1560938 (= e!869910 tp_is_empty!38617)))

(declare-fun b!1560939 () Bool)

(declare-fun e!869912 () Bool)

(assert (=> b!1560939 (= e!869912 (not true))))

(declare-datatypes ((V!59697 0))(
  ( (V!59698 (val!19392 Int)) )
))
(declare-datatypes ((tuple2!25190 0))(
  ( (tuple2!25191 (_1!12605 (_ BitVec 64)) (_2!12605 V!59697)) )
))
(declare-datatypes ((List!36568 0))(
  ( (Nil!36565) (Cons!36564 (h!38011 tuple2!25190) (t!51316 List!36568)) )
))
(declare-datatypes ((ListLongMap!22637 0))(
  ( (ListLongMap!22638 (toList!11334 List!36568)) )
))
(declare-fun lt!671017 () ListLongMap!22637)

(declare-datatypes ((array!103905 0))(
  ( (array!103906 (arr!50140 (Array (_ BitVec 32) (_ BitVec 64))) (size!50691 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!103905)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun lt!671019 () V!59697)

(declare-fun contains!10254 (ListLongMap!22637 (_ BitVec 64)) Bool)

(declare-fun +!4989 (ListLongMap!22637 tuple2!25190) ListLongMap!22637)

(assert (=> b!1560939 (not (contains!10254 (+!4989 lt!671017 (tuple2!25191 (select (arr!50140 _keys!637) from!782) lt!671019)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!51842 0))(
  ( (Unit!51843) )
))
(declare-fun lt!671018 () Unit!51842)

(declare-fun addStillNotContains!525 (ListLongMap!22637 (_ BitVec 64) V!59697 (_ BitVec 64)) Unit!51842)

(assert (=> b!1560939 (= lt!671018 (addStillNotContains!525 lt!671017 (select (arr!50140 _keys!637) from!782) lt!671019 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!495 () Int)

(declare-datatypes ((ValueCell!18278 0))(
  ( (ValueCellFull!18278 (v!22141 V!59697)) (EmptyCell!18278) )
))
(declare-datatypes ((array!103907 0))(
  ( (array!103908 (arr!50141 (Array (_ BitVec 32) ValueCell!18278)) (size!50692 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103907)

(declare-fun get!26213 (ValueCell!18278 V!59697) V!59697)

(declare-fun dynLambda!3878 (Int (_ BitVec 64)) V!59697)

(assert (=> b!1560939 (= lt!671019 (get!26213 (select (arr!50141 _values!487) from!782) (dynLambda!3878 defaultEntry!495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun zeroValue!453 () V!59697)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun minValue!453 () V!59697)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6695 (array!103905 array!103907 (_ BitVec 32) (_ BitVec 32) V!59697 V!59697 (_ BitVec 32) Int) ListLongMap!22637)

(assert (=> b!1560939 (= lt!671017 (getCurrentListMapNoExtraKeys!6695 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1560940 () Bool)

(declare-fun res!1067407 () Bool)

(assert (=> b!1560940 (=> (not res!1067407) (not e!869912))))

(declare-datatypes ((List!36569 0))(
  ( (Nil!36566) (Cons!36565 (h!38012 (_ BitVec 64)) (t!51317 List!36569)) )
))
(declare-fun arrayNoDuplicates!0 (array!103905 (_ BitVec 32) List!36569) Bool)

(assert (=> b!1560940 (= res!1067407 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36566))))

(declare-fun mapNonEmpty!59301 () Bool)

(declare-fun mapRes!59301 () Bool)

(declare-fun tp!112977 () Bool)

(declare-fun e!869911 () Bool)

(assert (=> mapNonEmpty!59301 (= mapRes!59301 (and tp!112977 e!869911))))

(declare-fun mapRest!59301 () (Array (_ BitVec 32) ValueCell!18278))

(declare-fun mapValue!59301 () ValueCell!18278)

(declare-fun mapKey!59301 () (_ BitVec 32))

(assert (=> mapNonEmpty!59301 (= (arr!50141 _values!487) (store mapRest!59301 mapKey!59301 mapValue!59301))))

(declare-fun res!1067406 () Bool)

(assert (=> start!133566 (=> (not res!1067406) (not e!869912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133566 (= res!1067406 (validMask!0 mask!947))))

(assert (=> start!133566 e!869912))

(assert (=> start!133566 tp!112978))

(assert (=> start!133566 tp_is_empty!38617))

(assert (=> start!133566 true))

(declare-fun array_inv!38903 (array!103905) Bool)

(assert (=> start!133566 (array_inv!38903 _keys!637)))

(declare-fun e!869908 () Bool)

(declare-fun array_inv!38904 (array!103907) Bool)

(assert (=> start!133566 (and (array_inv!38904 _values!487) e!869908)))

(declare-fun b!1560941 () Bool)

(declare-fun res!1067404 () Bool)

(assert (=> b!1560941 (=> (not res!1067404) (not e!869912))))

(assert (=> b!1560941 (= res!1067404 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50691 _keys!637)) (bvslt from!782 (size!50691 _keys!637))))))

(declare-fun b!1560942 () Bool)

(assert (=> b!1560942 (= e!869908 (and e!869910 mapRes!59301))))

(declare-fun condMapEmpty!59301 () Bool)

(declare-fun mapDefault!59301 () ValueCell!18278)

