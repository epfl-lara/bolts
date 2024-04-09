; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133782 () Bool)

(assert start!133782)

(declare-fun b_free!32113 () Bool)

(declare-fun b_next!32113 () Bool)

(assert (=> start!133782 (= b_free!32113 (not b_next!32113))))

(declare-fun tp!113544 () Bool)

(declare-fun b_and!51693 () Bool)

(assert (=> start!133782 (= tp!113544 b_and!51693)))

(declare-fun b!1563840 () Bool)

(declare-fun e!871623 () Bool)

(declare-fun tp_is_empty!38833 () Bool)

(assert (=> b!1563840 (= e!871623 tp_is_empty!38833)))

(declare-fun b!1563841 () Bool)

(declare-fun e!871622 () Bool)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1563841 (= e!871622 (bvslt (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!59625 () Bool)

(declare-fun mapRes!59625 () Bool)

(declare-fun tp!113545 () Bool)

(declare-fun e!871620 () Bool)

(assert (=> mapNonEmpty!59625 (= mapRes!59625 (and tp!113545 e!871620))))

(declare-datatypes ((V!59985 0))(
  ( (V!59986 (val!19500 Int)) )
))
(declare-datatypes ((ValueCell!18386 0))(
  ( (ValueCellFull!18386 (v!22249 V!59985)) (EmptyCell!18386) )
))
(declare-fun mapValue!59625 () ValueCell!18386)

(declare-fun mapKey!59625 () (_ BitVec 32))

(declare-fun mapRest!59625 () (Array (_ BitVec 32) ValueCell!18386))

(declare-datatypes ((array!104325 0))(
  ( (array!104326 (arr!50350 (Array (_ BitVec 32) ValueCell!18386)) (size!50901 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104325)

(assert (=> mapNonEmpty!59625 (= (arr!50350 _values!487) (store mapRest!59625 mapKey!59625 mapValue!59625))))

(declare-fun mapIsEmpty!59625 () Bool)

(assert (=> mapIsEmpty!59625 mapRes!59625))

(declare-fun b!1563843 () Bool)

(declare-fun res!1069225 () Bool)

(declare-fun e!871625 () Bool)

(assert (=> b!1563843 (=> (not res!1069225) (not e!871625))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104327 0))(
  ( (array!104328 (arr!50351 (Array (_ BitVec 32) (_ BitVec 64))) (size!50902 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104327)

(assert (=> b!1563843 (= res!1069225 (and (= (size!50901 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50902 _keys!637) (size!50901 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563844 () Bool)

(declare-fun e!871624 () Bool)

(assert (=> b!1563844 (= e!871624 (and e!871623 mapRes!59625))))

(declare-fun condMapEmpty!59625 () Bool)

(declare-fun mapDefault!59625 () ValueCell!18386)

