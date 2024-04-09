; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133870 () Bool)

(assert start!133870)

(declare-fun b!1564650 () Bool)

(declare-fun e!872124 () Bool)

(declare-fun tp_is_empty!38885 () Bool)

(assert (=> b!1564650 (= e!872124 tp_is_empty!38885)))

(declare-fun mapIsEmpty!59710 () Bool)

(declare-fun mapRes!59710 () Bool)

(assert (=> mapIsEmpty!59710 mapRes!59710))

(declare-fun b!1564651 () Bool)

(declare-fun res!1069729 () Bool)

(declare-fun e!872125 () Bool)

(assert (=> b!1564651 (=> (not res!1069729) (not e!872125))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104427 0))(
  ( (array!104428 (arr!50399 (Array (_ BitVec 32) (_ BitVec 64))) (size!50950 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104427)

(declare-datatypes ((V!60053 0))(
  ( (V!60054 (val!19526 Int)) )
))
(declare-datatypes ((ValueCell!18412 0))(
  ( (ValueCellFull!18412 (v!22277 V!60053)) (EmptyCell!18412) )
))
(declare-datatypes ((array!104429 0))(
  ( (array!104430 (arr!50400 (Array (_ BitVec 32) ValueCell!18412)) (size!50951 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104429)

(assert (=> b!1564651 (= res!1069729 (and (= (size!50951 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50950 _keys!637) (size!50951 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun res!1069730 () Bool)

(assert (=> start!133870 (=> (not res!1069730) (not e!872125))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133870 (= res!1069730 (validMask!0 mask!947))))

(assert (=> start!133870 e!872125))

(assert (=> start!133870 true))

(declare-fun e!872126 () Bool)

(declare-fun array_inv!39089 (array!104429) Bool)

(assert (=> start!133870 (and (array_inv!39089 _values!487) e!872126)))

(declare-fun array_inv!39090 (array!104427) Bool)

(assert (=> start!133870 (array_inv!39090 _keys!637)))

(declare-fun b!1564652 () Bool)

(assert (=> b!1564652 (= e!872126 (and e!872124 mapRes!59710))))

(declare-fun condMapEmpty!59710 () Bool)

(declare-fun mapDefault!59710 () ValueCell!18412)

