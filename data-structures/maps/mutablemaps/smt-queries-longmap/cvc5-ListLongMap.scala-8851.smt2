; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107366 () Bool)

(assert start!107366)

(declare-fun b_free!27649 () Bool)

(declare-fun b_next!27649 () Bool)

(assert (=> start!107366 (= b_free!27649 (not b_next!27649))))

(declare-fun tp!97453 () Bool)

(declare-fun b_and!45691 () Bool)

(assert (=> start!107366 (= tp!97453 b_and!45691)))

(declare-fun res!846233 () Bool)

(declare-fun e!725450 () Bool)

(assert (=> start!107366 (=> (not res!846233) (not e!725450))))

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107366 (= res!846233 (validMask!0 mask!1730))))

(assert (=> start!107366 e!725450))

(declare-datatypes ((V!49219 0))(
  ( (V!49220 (val!16584 Int)) )
))
(declare-datatypes ((ValueCell!15656 0))(
  ( (ValueCellFull!15656 (v!19219 V!49219)) (EmptyCell!15656) )
))
(declare-datatypes ((array!83229 0))(
  ( (array!83230 (arr!40147 (Array (_ BitVec 32) ValueCell!15656)) (size!40684 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83229)

(declare-fun e!725453 () Bool)

(declare-fun array_inv!30477 (array!83229) Bool)

(assert (=> start!107366 (and (array_inv!30477 _values!1134) e!725453)))

(assert (=> start!107366 true))

(declare-datatypes ((array!83231 0))(
  ( (array!83232 (arr!40148 (Array (_ BitVec 32) (_ BitVec 64))) (size!40685 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!83231)

(declare-fun array_inv!30478 (array!83231) Bool)

(assert (=> start!107366 (array_inv!30478 _keys!1364)))

(declare-fun tp_is_empty!33019 () Bool)

(assert (=> start!107366 tp_is_empty!33019))

(assert (=> start!107366 tp!97453))

(declare-fun b!1271917 () Bool)

(declare-fun res!846236 () Bool)

(assert (=> b!1271917 (=> (not res!846236) (not e!725450))))

(declare-datatypes ((List!28706 0))(
  ( (Nil!28703) (Cons!28702 (h!29911 (_ BitVec 64)) (t!42242 List!28706)) )
))
(declare-fun arrayNoDuplicates!0 (array!83231 (_ BitVec 32) List!28706) Bool)

(assert (=> b!1271917 (= res!846236 (arrayNoDuplicates!0 _keys!1364 #b00000000000000000000000000000000 Nil!28703))))

(declare-fun b!1271918 () Bool)

(declare-fun e!725451 () Bool)

(declare-fun mapRes!51109 () Bool)

(assert (=> b!1271918 (= e!725453 (and e!725451 mapRes!51109))))

(declare-fun condMapEmpty!51109 () Bool)

(declare-fun mapDefault!51109 () ValueCell!15656)

