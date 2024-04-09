; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134106 () Bool)

(assert start!134106)

(declare-fun b_free!32201 () Bool)

(declare-fun b_next!32201 () Bool)

(assert (=> start!134106 (= b_free!32201 (not b_next!32201))))

(declare-fun tp!113923 () Bool)

(declare-fun b_and!51855 () Bool)

(assert (=> start!134106 (= tp!113923 b_and!51855)))

(declare-fun mapNonEmpty!59871 () Bool)

(declare-fun mapRes!59871 () Bool)

(declare-fun tp!113922 () Bool)

(declare-fun e!873412 () Bool)

(assert (=> mapNonEmpty!59871 (= mapRes!59871 (and tp!113922 e!873412))))

(declare-datatypes ((V!60181 0))(
  ( (V!60182 (val!19574 Int)) )
))
(declare-datatypes ((ValueCell!18460 0))(
  ( (ValueCellFull!18460 (v!22330 V!60181)) (EmptyCell!18460) )
))
(declare-fun mapValue!59871 () ValueCell!18460)

(declare-fun mapKey!59871 () (_ BitVec 32))

(declare-fun mapRest!59871 () (Array (_ BitVec 32) ValueCell!18460))

(declare-datatypes ((array!104625 0))(
  ( (array!104626 (arr!50493 (Array (_ BitVec 32) ValueCell!18460)) (size!51044 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104625)

(assert (=> mapNonEmpty!59871 (= (arr!50493 _values!487) (store mapRest!59871 mapKey!59871 mapValue!59871))))

(declare-fun b!1566846 () Bool)

(declare-fun tp_is_empty!38981 () Bool)

(assert (=> b!1566846 (= e!873412 tp_is_empty!38981)))

(declare-fun b!1566847 () Bool)

(declare-fun res!1070967 () Bool)

(declare-fun e!873411 () Bool)

(assert (=> b!1566847 (=> (not res!1070967) (not e!873411))))

(declare-datatypes ((array!104627 0))(
  ( (array!104628 (arr!50494 (Array (_ BitVec 32) (_ BitVec 64))) (size!51045 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104627)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104627 (_ BitVec 32)) Bool)

(assert (=> b!1566847 (= res!1070967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1566848 () Bool)

(declare-fun res!1070970 () Bool)

(assert (=> b!1566848 (=> (not res!1070970) (not e!873411))))

(declare-datatypes ((List!36805 0))(
  ( (Nil!36802) (Cons!36801 (h!38249 (_ BitVec 64)) (t!51716 List!36805)) )
))
(declare-fun arrayNoDuplicates!0 (array!104627 (_ BitVec 32) List!36805) Bool)

(assert (=> b!1566848 (= res!1070970 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36802))))

(declare-fun b!1566849 () Bool)

(declare-fun e!873414 () Bool)

(declare-fun e!873415 () Bool)

(assert (=> b!1566849 (= e!873414 (and e!873415 mapRes!59871))))

(declare-fun condMapEmpty!59871 () Bool)

(declare-fun mapDefault!59871 () ValueCell!18460)

