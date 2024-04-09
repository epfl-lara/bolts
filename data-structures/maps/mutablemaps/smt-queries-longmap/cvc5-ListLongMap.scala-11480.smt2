; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133710 () Bool)

(assert start!133710)

(declare-fun b!1562832 () Bool)

(declare-fun e!871000 () Bool)

(declare-fun tp_is_empty!38761 () Bool)

(assert (=> b!1562832 (= e!871000 tp_is_empty!38761)))

(declare-fun mapIsEmpty!59517 () Bool)

(declare-fun mapRes!59517 () Bool)

(assert (=> mapIsEmpty!59517 mapRes!59517))

(declare-fun b!1562833 () Bool)

(declare-fun res!1068540 () Bool)

(declare-fun e!870999 () Bool)

(assert (=> b!1562833 (=> (not res!1068540) (not e!870999))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104185 0))(
  ( (array!104186 (arr!50280 (Array (_ BitVec 32) (_ BitVec 64))) (size!50831 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104185)

(declare-datatypes ((V!59889 0))(
  ( (V!59890 (val!19464 Int)) )
))
(declare-datatypes ((ValueCell!18350 0))(
  ( (ValueCellFull!18350 (v!22213 V!59889)) (EmptyCell!18350) )
))
(declare-datatypes ((array!104187 0))(
  ( (array!104188 (arr!50281 (Array (_ BitVec 32) ValueCell!18350)) (size!50832 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104187)

(assert (=> b!1562833 (= res!1068540 (and (= (size!50832 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50831 _keys!637) (size!50832 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59517 () Bool)

(declare-fun tp!113353 () Bool)

(declare-fun e!870998 () Bool)

(assert (=> mapNonEmpty!59517 (= mapRes!59517 (and tp!113353 e!870998))))

(declare-fun mapRest!59517 () (Array (_ BitVec 32) ValueCell!18350))

(declare-fun mapValue!59517 () ValueCell!18350)

(declare-fun mapKey!59517 () (_ BitVec 32))

(assert (=> mapNonEmpty!59517 (= (arr!50281 _values!487) (store mapRest!59517 mapKey!59517 mapValue!59517))))

(declare-fun b!1562834 () Bool)

(declare-fun e!871001 () Bool)

(assert (=> b!1562834 (= e!871001 (and e!871000 mapRes!59517))))

(declare-fun condMapEmpty!59517 () Bool)

(declare-fun mapDefault!59517 () ValueCell!18350)

