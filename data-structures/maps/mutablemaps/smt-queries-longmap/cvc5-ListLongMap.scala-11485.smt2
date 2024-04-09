; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133740 () Bool)

(assert start!133740)

(declare-fun b_free!32071 () Bool)

(declare-fun b_next!32071 () Bool)

(assert (=> start!133740 (= b_free!32071 (not b_next!32071))))

(declare-fun tp!113419 () Bool)

(declare-fun b_and!51651 () Bool)

(assert (=> start!133740 (= tp!113419 b_and!51651)))

(declare-fun mapNonEmpty!59562 () Bool)

(declare-fun mapRes!59562 () Bool)

(declare-fun tp!113418 () Bool)

(declare-fun e!871245 () Bool)

(assert (=> mapNonEmpty!59562 (= mapRes!59562 (and tp!113418 e!871245))))

(declare-datatypes ((V!59929 0))(
  ( (V!59930 (val!19479 Int)) )
))
(declare-datatypes ((ValueCell!18365 0))(
  ( (ValueCellFull!18365 (v!22228 V!59929)) (EmptyCell!18365) )
))
(declare-fun mapValue!59562 () ValueCell!18365)

(declare-fun mapKey!59562 () (_ BitVec 32))

(declare-fun mapRest!59562 () (Array (_ BitVec 32) ValueCell!18365))

(declare-datatypes ((array!104243 0))(
  ( (array!104244 (arr!50309 (Array (_ BitVec 32) ValueCell!18365)) (size!50860 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104243)

(assert (=> mapNonEmpty!59562 (= (arr!50309 _values!487) (store mapRest!59562 mapKey!59562 mapValue!59562))))

(declare-fun b!1563208 () Bool)

(declare-fun res!1068788 () Bool)

(declare-fun e!871246 () Bool)

(assert (=> b!1563208 (=> (not res!1068788) (not e!871246))))

(declare-datatypes ((array!104245 0))(
  ( (array!104246 (arr!50310 (Array (_ BitVec 32) (_ BitVec 64))) (size!50861 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104245)

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104245 (_ BitVec 32)) Bool)

(assert (=> b!1563208 (= res!1068788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1563209 () Bool)

(declare-fun res!1068782 () Bool)

(assert (=> b!1563209 (=> (not res!1068782) (not e!871246))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1563209 (= res!1068782 (and (= (size!50860 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50861 _keys!637) (size!50860 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1563210 () Bool)

(declare-fun tp_is_empty!38791 () Bool)

(assert (=> b!1563210 (= e!871245 tp_is_empty!38791)))

(declare-fun res!1068784 () Bool)

(assert (=> start!133740 (=> (not res!1068784) (not e!871246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133740 (= res!1068784 (validMask!0 mask!947))))

(assert (=> start!133740 e!871246))

(assert (=> start!133740 tp!113419))

(assert (=> start!133740 tp_is_empty!38791))

(assert (=> start!133740 true))

(declare-fun array_inv!39027 (array!104245) Bool)

(assert (=> start!133740 (array_inv!39027 _keys!637)))

(declare-fun e!871242 () Bool)

(declare-fun array_inv!39028 (array!104243) Bool)

(assert (=> start!133740 (and (array_inv!39028 _values!487) e!871242)))

(declare-fun b!1563211 () Bool)

(declare-fun res!1068786 () Bool)

(assert (=> b!1563211 (=> (not res!1068786) (not e!871246))))

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1563211 (= res!1068786 (and (bvsge from!782 #b00000000000000000000000000000000) (bvsle from!782 (size!50861 _keys!637)) (bvslt from!782 (size!50861 _keys!637))))))

(declare-fun b!1563212 () Bool)

(declare-fun res!1068783 () Bool)

(assert (=> b!1563212 (=> (not res!1068783) (not e!871246))))

(declare-datatypes ((List!36676 0))(
  ( (Nil!36673) (Cons!36672 (h!38119 (_ BitVec 64)) (t!51530 List!36676)) )
))
(declare-fun arrayNoDuplicates!0 (array!104245 (_ BitVec 32) List!36676) Bool)

(assert (=> b!1563212 (= res!1068783 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36673))))

(declare-fun b!1563213 () Bool)

(declare-fun e!871244 () Bool)

(assert (=> b!1563213 (= e!871242 (and e!871244 mapRes!59562))))

(declare-fun condMapEmpty!59562 () Bool)

(declare-fun mapDefault!59562 () ValueCell!18365)

