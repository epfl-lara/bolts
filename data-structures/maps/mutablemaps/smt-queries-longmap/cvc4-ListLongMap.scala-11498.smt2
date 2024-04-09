; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133832 () Bool)

(assert start!133832)

(declare-fun b!1564411 () Bool)

(declare-fun res!1069601 () Bool)

(declare-fun e!871956 () Bool)

(assert (=> b!1564411 (=> (not res!1069601) (not e!871956))))

(declare-datatypes ((array!104403 0))(
  ( (array!104404 (arr!50388 (Array (_ BitVec 32) (_ BitVec 64))) (size!50939 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104403)

(declare-datatypes ((List!36735 0))(
  ( (Nil!36732) (Cons!36731 (h!38178 (_ BitVec 64)) (t!51589 List!36735)) )
))
(declare-fun arrayNoDuplicates!0 (array!104403 (_ BitVec 32) List!36735) Bool)

(assert (=> b!1564411 (= res!1069601 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36732))))

(declare-fun b!1564412 () Bool)

(declare-fun res!1069596 () Bool)

(assert (=> b!1564412 (=> (not res!1069596) (not e!871956))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((V!60037 0))(
  ( (V!60038 (val!19520 Int)) )
))
(declare-datatypes ((ValueCell!18406 0))(
  ( (ValueCellFull!18406 (v!22269 V!60037)) (EmptyCell!18406) )
))
(declare-datatypes ((array!104405 0))(
  ( (array!104406 (arr!50389 (Array (_ BitVec 32) ValueCell!18406)) (size!50940 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104405)

(assert (=> b!1564412 (= res!1069596 (and (= (size!50940 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50939 _keys!637) (size!50940 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59688 () Bool)

(declare-fun mapRes!59688 () Bool)

(assert (=> mapIsEmpty!59688 mapRes!59688))

(declare-fun b!1564413 () Bool)

(declare-fun res!1069599 () Bool)

(assert (=> b!1564413 (=> (not res!1069599) (not e!871956))))

(declare-datatypes ((tuple2!25350 0))(
  ( (tuple2!25351 (_1!12685 (_ BitVec 64)) (_2!12685 V!60037)) )
))
(declare-datatypes ((List!36736 0))(
  ( (Nil!36733) (Cons!36732 (h!38179 tuple2!25350) (t!51590 List!36736)) )
))
(declare-datatypes ((ListLongMap!22797 0))(
  ( (ListLongMap!22798 (toList!11414 List!36736)) )
))
(declare-fun contains!10335 (ListLongMap!22797 (_ BitVec 64)) Bool)

(assert (=> b!1564413 (= res!1069599 (not (contains!10335 (ListLongMap!22798 Nil!36733) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1564415 () Bool)

(declare-fun res!1069597 () Bool)

(assert (=> b!1564415 (=> (not res!1069597) (not e!871956))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104403 (_ BitVec 32)) Bool)

(assert (=> b!1564415 (= res!1069597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun mapNonEmpty!59688 () Bool)

(declare-fun tp!113614 () Bool)

(declare-fun e!871954 () Bool)

(assert (=> mapNonEmpty!59688 (= mapRes!59688 (and tp!113614 e!871954))))

(declare-fun mapValue!59688 () ValueCell!18406)

(declare-fun mapKey!59688 () (_ BitVec 32))

(declare-fun mapRest!59688 () (Array (_ BitVec 32) ValueCell!18406))

(assert (=> mapNonEmpty!59688 (= (arr!50389 _values!487) (store mapRest!59688 mapKey!59688 mapValue!59688))))

(declare-fun b!1564416 () Bool)

(declare-fun tp_is_empty!38873 () Bool)

(assert (=> b!1564416 (= e!871954 tp_is_empty!38873)))

(declare-fun b!1564417 () Bool)

(assert (=> b!1564417 (= e!871956 false)))

(declare-fun lt!671973 () Bool)

(assert (=> b!1564417 (= lt!671973 (contains!10335 (ListLongMap!22798 Nil!36733) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!1069600 () Bool)

(assert (=> start!133832 (=> (not res!1069600) (not e!871956))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133832 (= res!1069600 (validMask!0 mask!947))))

(assert (=> start!133832 e!871956))

(assert (=> start!133832 true))

(declare-fun array_inv!39083 (array!104403) Bool)

(assert (=> start!133832 (array_inv!39083 _keys!637)))

(declare-fun e!871958 () Bool)

(declare-fun array_inv!39084 (array!104405) Bool)

(assert (=> start!133832 (and (array_inv!39084 _values!487) e!871958)))

(declare-fun b!1564414 () Bool)

(declare-fun e!871955 () Bool)

(assert (=> b!1564414 (= e!871955 tp_is_empty!38873)))

(declare-fun b!1564418 () Bool)

(declare-fun res!1069598 () Bool)

(assert (=> b!1564418 (=> (not res!1069598) (not e!871956))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1564418 (= res!1069598 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50939 _keys!637)) (bvsge from!782 (size!50939 _keys!637))))))

(declare-fun b!1564419 () Bool)

(assert (=> b!1564419 (= e!871958 (and e!871955 mapRes!59688))))

(declare-fun condMapEmpty!59688 () Bool)

(declare-fun mapDefault!59688 () ValueCell!18406)

