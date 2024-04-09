; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112726 () Bool)

(assert start!112726)

(declare-fun b_free!31027 () Bool)

(declare-fun b_next!31027 () Bool)

(assert (=> start!112726 (= b_free!31027 (not b_next!31027))))

(declare-fun tp!108723 () Bool)

(declare-fun b_and!50001 () Bool)

(assert (=> start!112726 (= tp!108723 b_and!50001)))

(declare-fun b!1336722 () Bool)

(declare-fun e!761203 () Bool)

(declare-fun tp_is_empty!36937 () Bool)

(assert (=> b!1336722 (= e!761203 tp_is_empty!36937)))

(declare-fun b!1336723 () Bool)

(declare-fun res!887198 () Bool)

(declare-fun e!761199 () Bool)

(assert (=> b!1336723 (=> (not res!887198) (not e!761199))))

(declare-datatypes ((array!90705 0))(
  ( (array!90706 (arr!43813 (Array (_ BitVec 32) (_ BitVec 64))) (size!44364 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90705)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90705 (_ BitVec 32)) Bool)

(assert (=> b!1336723 (= res!887198 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1336724 () Bool)

(declare-fun res!887203 () Bool)

(assert (=> b!1336724 (=> (not res!887203) (not e!761199))))

(declare-datatypes ((V!54353 0))(
  ( (V!54354 (val!18543 Int)) )
))
(declare-datatypes ((ValueCell!17570 0))(
  ( (ValueCellFull!17570 (v!21181 V!54353)) (EmptyCell!17570) )
))
(declare-datatypes ((array!90707 0))(
  ( (array!90708 (arr!43814 (Array (_ BitVec 32) ValueCell!17570)) (size!44365 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90707)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1336724 (= res!887203 (and (= (size!44365 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44364 _keys!1590) (size!44365 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!887200 () Bool)

(assert (=> start!112726 (=> (not res!887200) (not e!761199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112726 (= res!887200 (validMask!0 mask!1998))))

(assert (=> start!112726 e!761199))

(declare-fun e!761200 () Bool)

(declare-fun array_inv!32969 (array!90707) Bool)

(assert (=> start!112726 (and (array_inv!32969 _values!1320) e!761200)))

(assert (=> start!112726 true))

(declare-fun array_inv!32970 (array!90705) Bool)

(assert (=> start!112726 (array_inv!32970 _keys!1590)))

(assert (=> start!112726 tp!108723))

(assert (=> start!112726 tp_is_empty!36937))

(declare-fun b!1336725 () Bool)

(declare-fun res!887199 () Bool)

(assert (=> b!1336725 (=> (not res!887199) (not e!761199))))

(declare-datatypes ((List!31233 0))(
  ( (Nil!31230) (Cons!31229 (h!32438 (_ BitVec 64)) (t!45548 List!31233)) )
))
(declare-fun arrayNoDuplicates!0 (array!90705 (_ BitVec 32) List!31233) Bool)

(assert (=> b!1336725 (= res!887199 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31230))))

(declare-fun mapIsEmpty!57083 () Bool)

(declare-fun mapRes!57083 () Bool)

(assert (=> mapIsEmpty!57083 mapRes!57083))

(declare-fun b!1336726 () Bool)

(declare-fun e!761202 () Bool)

(assert (=> b!1336726 (= e!761200 (and e!761202 mapRes!57083))))

(declare-fun condMapEmpty!57083 () Bool)

(declare-fun mapDefault!57083 () ValueCell!17570)

