; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134078 () Bool)

(assert start!134078)

(declare-fun mapIsEmpty!59844 () Bool)

(declare-fun mapRes!59844 () Bool)

(assert (=> mapIsEmpty!59844 mapRes!59844))

(declare-fun mapNonEmpty!59844 () Bool)

(declare-fun tp!113878 () Bool)

(declare-fun e!873250 () Bool)

(assert (=> mapNonEmpty!59844 (= mapRes!59844 (and tp!113878 e!873250))))

(declare-fun mapKey!59844 () (_ BitVec 32))

(declare-datatypes ((V!60161 0))(
  ( (V!60162 (val!19566 Int)) )
))
(declare-datatypes ((ValueCell!18452 0))(
  ( (ValueCellFull!18452 (v!22322 V!60161)) (EmptyCell!18452) )
))
(declare-fun mapRest!59844 () (Array (_ BitVec 32) ValueCell!18452))

(declare-fun mapValue!59844 () ValueCell!18452)

(declare-datatypes ((array!104591 0))(
  ( (array!104592 (arr!50477 (Array (_ BitVec 32) ValueCell!18452)) (size!51028 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104591)

(assert (=> mapNonEmpty!59844 (= (arr!50477 _values!487) (store mapRest!59844 mapKey!59844 mapValue!59844))))

(declare-fun b!1566578 () Bool)

(declare-fun res!1070791 () Bool)

(declare-fun e!873249 () Bool)

(assert (=> b!1566578 (=> (not res!1070791) (not e!873249))))

(declare-datatypes ((array!104593 0))(
  ( (array!104594 (arr!50478 (Array (_ BitVec 32) (_ BitVec 64))) (size!51029 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104593)

(declare-datatypes ((List!36795 0))(
  ( (Nil!36792) (Cons!36791 (h!38239 (_ BitVec 64)) (t!51706 List!36795)) )
))
(declare-fun arrayNoDuplicates!0 (array!104593 (_ BitVec 32) List!36795) Bool)

(assert (=> b!1566578 (= res!1070791 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36792))))

(declare-fun b!1566579 () Bool)

(declare-fun res!1070795 () Bool)

(assert (=> b!1566579 (=> (not res!1070795) (not e!873249))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1566579 (= res!1070795 (and (= (size!51028 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!51029 _keys!637) (size!51028 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1566581 () Bool)

(declare-fun res!1070792 () Bool)

(assert (=> b!1566581 (=> (not res!1070792) (not e!873249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104593 (_ BitVec 32)) Bool)

(assert (=> b!1566581 (= res!1070792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1566582 () Bool)

(declare-fun res!1070796 () Bool)

(assert (=> b!1566582 (=> (not res!1070796) (not e!873249))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1566582 (= res!1070796 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!51029 _keys!637)) (bvslt from!782 (size!51029 _keys!637))))))

(declare-fun b!1566583 () Bool)

(assert (=> b!1566583 (= e!873249 (bvsge (bvsub (size!51029 _keys!637) from!782) (bvsub (bvadd #b00000000000000000000000000000001 (size!51029 _keys!637)) from!782)))))

(declare-fun b!1566584 () Bool)

(declare-fun e!873251 () Bool)

(declare-fun tp_is_empty!38965 () Bool)

(assert (=> b!1566584 (= e!873251 tp_is_empty!38965)))

(declare-fun res!1070793 () Bool)

(assert (=> start!134078 (=> (not res!1070793) (not e!873249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134078 (= res!1070793 (validMask!0 mask!947))))

(assert (=> start!134078 e!873249))

(assert (=> start!134078 true))

(declare-fun array_inv!39139 (array!104593) Bool)

(assert (=> start!134078 (array_inv!39139 _keys!637)))

(declare-fun e!873247 () Bool)

(declare-fun array_inv!39140 (array!104591) Bool)

(assert (=> start!134078 (and (array_inv!39140 _values!487) e!873247)))

(declare-fun b!1566580 () Bool)

(declare-fun res!1070794 () Bool)

(assert (=> b!1566580 (=> (not res!1070794) (not e!873249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1566580 (= res!1070794 (not (validKeyInArray!0 (select (arr!50478 _keys!637) from!782))))))

(declare-fun b!1566585 () Bool)

(assert (=> b!1566585 (= e!873250 tp_is_empty!38965)))

(declare-fun b!1566586 () Bool)

(assert (=> b!1566586 (= e!873247 (and e!873251 mapRes!59844))))

(declare-fun condMapEmpty!59844 () Bool)

(declare-fun mapDefault!59844 () ValueCell!18452)

