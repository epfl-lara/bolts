; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132082 () Bool)

(assert start!132082)

(declare-fun b_free!31763 () Bool)

(declare-fun b_next!31763 () Bool)

(assert (=> start!132082 (= b_free!31763 (not b_next!31763))))

(declare-fun tp!111542 () Bool)

(declare-fun b_and!51183 () Bool)

(assert (=> start!132082 (= tp!111542 b_and!51183)))

(declare-datatypes ((array!103243 0))(
  ( (array!103244 (arr!49819 (Array (_ BitVec 32) (_ BitVec 64))) (size!50370 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103243)

(declare-datatypes ((V!59161 0))(
  ( (V!59162 (val!19097 Int)) )
))
(declare-fun zeroValue!436 () V!59161)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18109 0))(
  ( (ValueCellFull!18109 (v!21895 V!59161)) (EmptyCell!18109) )
))
(declare-datatypes ((array!103245 0))(
  ( (array!103246 (arr!49820 (Array (_ BitVec 32) ValueCell!18109)) (size!50371 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103245)

(declare-fun minValue!436 () V!59161)

(declare-datatypes ((tuple2!24718 0))(
  ( (tuple2!24719 (_1!12369 (_ BitVec 64)) (_2!12369 V!59161)) )
))
(declare-datatypes ((List!36226 0))(
  ( (Nil!36223) (Cons!36222 (h!37668 tuple2!24718) (t!50927 List!36226)) )
))
(declare-datatypes ((ListLongMap!22339 0))(
  ( (ListLongMap!22340 (toList!11185 List!36226)) )
))
(declare-fun call!69948 () ListLongMap!22339)

(declare-fun bm!69944 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6628 (array!103243 array!103245 (_ BitVec 32) (_ BitVec 32) V!59161 V!59161 (_ BitVec 32) Int) ListLongMap!22339)

(assert (=> bm!69944 (= call!69948 (getCurrentListMapNoExtraKeys!6628 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun mapNonEmpty!58762 () Bool)

(declare-fun mapRes!58762 () Bool)

(declare-fun tp!111541 () Bool)

(declare-fun e!861482 () Bool)

(assert (=> mapNonEmpty!58762 (= mapRes!58762 (and tp!111541 e!861482))))

(declare-fun mapRest!58762 () (Array (_ BitVec 32) ValueCell!18109))

(declare-fun mapKey!58762 () (_ BitVec 32))

(declare-fun mapValue!58762 () ValueCell!18109)

(assert (=> mapNonEmpty!58762 (= (arr!49820 _values!470) (store mapRest!58762 mapKey!58762 mapValue!58762))))

(declare-fun b!1547626 () Bool)

(declare-fun e!861484 () ListLongMap!22339)

(declare-fun call!69950 () ListLongMap!22339)

(assert (=> b!1547626 (= e!861484 call!69950)))

(declare-fun b!1547627 () Bool)

(declare-fun res!1060829 () Bool)

(declare-fun e!861481 () Bool)

(assert (=> b!1547627 (=> (not res!1060829) (not e!861481))))

(assert (=> b!1547627 (= res!1060829 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50370 _keys!618))))))

(declare-fun b!1547628 () Bool)

(declare-fun res!1060831 () Bool)

(assert (=> b!1547628 (=> (not res!1060831) (not e!861481))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103243 (_ BitVec 32)) Bool)

(assert (=> b!1547628 (= res!1060831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1547629 () Bool)

(declare-fun tp_is_empty!38039 () Bool)

(assert (=> b!1547629 (= e!861482 tp_is_empty!38039)))

(declare-fun b!1547630 () Bool)

(declare-fun e!861479 () Bool)

(assert (=> b!1547630 (= e!861479 tp_is_empty!38039)))

(declare-fun b!1547632 () Bool)

(declare-fun e!861480 () Bool)

(assert (=> b!1547632 (= e!861480 (and e!861479 mapRes!58762))))

(declare-fun condMapEmpty!58762 () Bool)

(declare-fun mapDefault!58762 () ValueCell!18109)

