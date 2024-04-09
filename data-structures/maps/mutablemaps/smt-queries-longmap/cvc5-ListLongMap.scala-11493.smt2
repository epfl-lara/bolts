; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133788 () Bool)

(assert start!133788)

(declare-fun res!1069289 () Bool)

(declare-fun e!871675 () Bool)

(assert (=> start!133788 (=> (not res!1069289) (not e!871675))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133788 (= res!1069289 (validMask!0 mask!947))))

(assert (=> start!133788 e!871675))

(assert (=> start!133788 true))

(declare-datatypes ((array!104337 0))(
  ( (array!104338 (arr!50356 (Array (_ BitVec 32) (_ BitVec 64))) (size!50907 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104337)

(declare-fun array_inv!39061 (array!104337) Bool)

(assert (=> start!133788 (array_inv!39061 _keys!637)))

(declare-datatypes ((V!59993 0))(
  ( (V!59994 (val!19503 Int)) )
))
(declare-datatypes ((ValueCell!18389 0))(
  ( (ValueCellFull!18389 (v!22252 V!59993)) (EmptyCell!18389) )
))
(declare-datatypes ((array!104339 0))(
  ( (array!104340 (arr!50357 (Array (_ BitVec 32) ValueCell!18389)) (size!50908 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104339)

(declare-fun e!871673 () Bool)

(declare-fun array_inv!39062 (array!104339) Bool)

(assert (=> start!133788 (and (array_inv!39062 _values!487) e!871673)))

(declare-fun b!1563931 () Bool)

(declare-fun e!871672 () Bool)

(declare-fun tp_is_empty!38839 () Bool)

(assert (=> b!1563931 (= e!871672 tp_is_empty!38839)))

(declare-fun b!1563932 () Bool)

(declare-fun res!1069290 () Bool)

(assert (=> b!1563932 (=> (not res!1069290) (not e!871675))))

(declare-datatypes ((List!36710 0))(
  ( (Nil!36707) (Cons!36706 (h!38153 (_ BitVec 64)) (t!51564 List!36710)) )
))
(declare-fun arrayNoDuplicates!0 (array!104337 (_ BitVec 32) List!36710) Bool)

(assert (=> b!1563932 (= res!1069290 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36707))))

(declare-fun mapNonEmpty!59634 () Bool)

(declare-fun mapRes!59634 () Bool)

(declare-fun tp!113560 () Bool)

(assert (=> mapNonEmpty!59634 (= mapRes!59634 (and tp!113560 e!871672))))

(declare-fun mapKey!59634 () (_ BitVec 32))

(declare-fun mapRest!59634 () (Array (_ BitVec 32) ValueCell!18389))

(declare-fun mapValue!59634 () ValueCell!18389)

(assert (=> mapNonEmpty!59634 (= (arr!50357 _values!487) (store mapRest!59634 mapKey!59634 mapValue!59634))))

(declare-fun b!1563933 () Bool)

(declare-fun e!871674 () Bool)

(assert (=> b!1563933 (= e!871673 (and e!871674 mapRes!59634))))

(declare-fun condMapEmpty!59634 () Bool)

(declare-fun mapDefault!59634 () ValueCell!18389)

