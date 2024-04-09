; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133722 () Bool)

(assert start!133722)

(declare-fun b!1562945 () Bool)

(declare-fun res!1068603 () Bool)

(declare-fun e!871087 () Bool)

(assert (=> b!1562945 (=> (not res!1068603) (not e!871087))))

(declare-datatypes ((array!104209 0))(
  ( (array!104210 (arr!50292 (Array (_ BitVec 32) (_ BitVec 64))) (size!50843 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104209)

(declare-datatypes ((List!36664 0))(
  ( (Nil!36661) (Cons!36660 (h!38107 (_ BitVec 64)) (t!51518 List!36664)) )
))
(declare-fun arrayNoDuplicates!0 (array!104209 (_ BitVec 32) List!36664) Bool)

(assert (=> b!1562945 (= res!1068603 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36661))))

(declare-fun res!1068601 () Bool)

(assert (=> start!133722 (=> (not res!1068601) (not e!871087))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133722 (= res!1068601 (validMask!0 mask!947))))

(assert (=> start!133722 e!871087))

(assert (=> start!133722 true))

(declare-fun array_inv!39013 (array!104209) Bool)

(assert (=> start!133722 (array_inv!39013 _keys!637)))

(declare-datatypes ((V!59905 0))(
  ( (V!59906 (val!19470 Int)) )
))
(declare-datatypes ((ValueCell!18356 0))(
  ( (ValueCellFull!18356 (v!22219 V!59905)) (EmptyCell!18356) )
))
(declare-datatypes ((array!104211 0))(
  ( (array!104212 (arr!50293 (Array (_ BitVec 32) ValueCell!18356)) (size!50844 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104211)

(declare-fun e!871090 () Bool)

(declare-fun array_inv!39014 (array!104211) Bool)

(assert (=> start!133722 (and (array_inv!39014 _values!487) e!871090)))

(declare-fun b!1562946 () Bool)

(declare-fun e!871088 () Bool)

(declare-fun tp_is_empty!38773 () Bool)

(assert (=> b!1562946 (= e!871088 tp_is_empty!38773)))

(declare-fun b!1562947 () Bool)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1562947 (= e!871087 (bvslt (bvadd #b00000000000000000000000000000001 from!782) #b00000000000000000000000000000000))))

(declare-fun b!1562948 () Bool)

(declare-fun res!1068605 () Bool)

(assert (=> b!1562948 (=> (not res!1068605) (not e!871087))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1562948 (= res!1068605 (and (= (size!50844 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50843 _keys!637) (size!50844 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1562949 () Bool)

(declare-fun mapRes!59535 () Bool)

(assert (=> b!1562949 (= e!871090 (and e!871088 mapRes!59535))))

(declare-fun condMapEmpty!59535 () Bool)

(declare-fun mapDefault!59535 () ValueCell!18356)

