; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133768 () Bool)

(assert start!133768)

(declare-fun b_free!32099 () Bool)

(declare-fun b_next!32099 () Bool)

(assert (=> start!133768 (= b_free!32099 (not b_next!32099))))

(declare-fun tp!113503 () Bool)

(declare-fun b_and!51679 () Bool)

(assert (=> start!133768 (= tp!113503 b_and!51679)))

(declare-fun b!1563628 () Bool)

(declare-fun e!871497 () Bool)

(declare-fun tp_is_empty!38819 () Bool)

(assert (=> b!1563628 (= e!871497 tp_is_empty!38819)))

(declare-fun b!1563629 () Bool)

(declare-fun e!871498 () Bool)

(declare-fun e!871499 () Bool)

(assert (=> b!1563629 (= e!871498 e!871499)))

(declare-fun res!1069082 () Bool)

(assert (=> b!1563629 (=> (not res!1069082) (not e!871499))))

(declare-datatypes ((V!59965 0))(
  ( (V!59966 (val!19493 Int)) )
))
(declare-datatypes ((tuple2!25312 0))(
  ( (tuple2!25313 (_1!12666 (_ BitVec 64)) (_2!12666 V!59965)) )
))
(declare-datatypes ((List!36697 0))(
  ( (Nil!36694) (Cons!36693 (h!38140 tuple2!25312) (t!51551 List!36697)) )
))
(declare-datatypes ((ListLongMap!22759 0))(
  ( (ListLongMap!22760 (toList!11395 List!36697)) )
))
(declare-fun lt!671873 () ListLongMap!22759)

(declare-fun contains!10315 (ListLongMap!22759 (_ BitVec 64)) Bool)

(assert (=> b!1563629 (= res!1069082 (not (contains!10315 lt!671873 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!59965)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!59965)

(declare-datatypes ((array!104299 0))(
  ( (array!104300 (arr!50337 (Array (_ BitVec 32) (_ BitVec 64))) (size!50888 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104299)

(declare-datatypes ((ValueCell!18379 0))(
  ( (ValueCellFull!18379 (v!22242 V!59965)) (EmptyCell!18379) )
))
(declare-datatypes ((array!104301 0))(
  ( (array!104302 (arr!50338 (Array (_ BitVec 32) ValueCell!18379)) (size!50889 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104301)

(declare-fun from!782 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6752 (array!104299 array!104301 (_ BitVec 32) (_ BitVec 32) V!59965 V!59965 (_ BitVec 32) Int) ListLongMap!22759)

(assert (=> b!1563629 (= lt!671873 (getCurrentListMapNoExtraKeys!6752 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1563630 () Bool)

(declare-fun res!1069078 () Bool)

(assert (=> b!1563630 (=> (not res!1069078) (not e!871498))))

(assert (=> b!1563630 (= res!1069078 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50888 _keys!637)) (bvslt from!782 (size!50888 _keys!637))))))

(declare-fun b!1563631 () Bool)

(declare-fun res!1069077 () Bool)

(assert (=> b!1563631 (=> (not res!1069077) (not e!871498))))

(declare-datatypes ((List!36698 0))(
  ( (Nil!36695) (Cons!36694 (h!38141 (_ BitVec 64)) (t!51552 List!36698)) )
))
(declare-fun arrayNoDuplicates!0 (array!104299 (_ BitVec 32) List!36698) Bool)

(assert (=> b!1563631 (= res!1069077 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36695))))

(declare-fun res!1069081 () Bool)

(assert (=> start!133768 (=> (not res!1069081) (not e!871498))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133768 (= res!1069081 (validMask!0 mask!947))))

(assert (=> start!133768 e!871498))

(assert (=> start!133768 tp!113503))

(assert (=> start!133768 tp_is_empty!38819))

(assert (=> start!133768 true))

(declare-fun array_inv!39049 (array!104299) Bool)

(assert (=> start!133768 (array_inv!39049 _keys!637)))

(declare-fun e!871496 () Bool)

(declare-fun array_inv!39050 (array!104301) Bool)

(assert (=> start!133768 (and (array_inv!39050 _values!487) e!871496)))

(declare-fun b!1563632 () Bool)

(assert (=> b!1563632 (= e!871499 false)))

(declare-fun lt!671874 () Bool)

(assert (=> b!1563632 (= lt!671874 (contains!10315 lt!671873 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!59604 () Bool)

(declare-fun mapRes!59604 () Bool)

(assert (=> mapIsEmpty!59604 mapRes!59604))

(declare-fun b!1563633 () Bool)

(declare-fun e!871494 () Bool)

(assert (=> b!1563633 (= e!871496 (and e!871494 mapRes!59604))))

(declare-fun condMapEmpty!59604 () Bool)

(declare-fun mapDefault!59604 () ValueCell!18379)

