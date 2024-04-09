; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108540 () Bool)

(assert start!108540)

(declare-fun b_free!28051 () Bool)

(declare-fun b_next!28051 () Bool)

(assert (=> start!108540 (= b_free!28051 (not b_next!28051))))

(declare-fun tp!99264 () Bool)

(declare-fun b_and!46121 () Bool)

(assert (=> start!108540 (= tp!99264 b_and!46121)))

(declare-fun b!1280567 () Bool)

(declare-fun res!850717 () Bool)

(declare-fun e!731723 () Bool)

(assert (=> b!1280567 (=> (not res!850717) (not e!731723))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!84411 0))(
  ( (array!84412 (arr!40705 (Array (_ BitVec 32) (_ BitVec 64))) (size!41256 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84411)

(assert (=> b!1280567 (= res!850717 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41256 _keys!1741))))))

(declare-fun mapIsEmpty!52088 () Bool)

(declare-fun mapRes!52088 () Bool)

(assert (=> mapIsEmpty!52088 mapRes!52088))

(declare-fun b!1280568 () Bool)

(declare-fun res!850713 () Bool)

(assert (=> b!1280568 (=> (not res!850713) (not e!731723))))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1280568 (= res!850713 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41256 _keys!1741)) (not (= (select (arr!40705 _keys!1741) from!2144) k!1205))))))

(declare-fun mapNonEmpty!52088 () Bool)

(declare-fun tp!99263 () Bool)

(declare-fun e!731721 () Bool)

(assert (=> mapNonEmpty!52088 (= mapRes!52088 (and tp!99263 e!731721))))

(declare-datatypes ((V!50025 0))(
  ( (V!50026 (val!16920 Int)) )
))
(declare-datatypes ((ValueCell!15947 0))(
  ( (ValueCellFull!15947 (v!19518 V!50025)) (EmptyCell!15947) )
))
(declare-fun mapRest!52088 () (Array (_ BitVec 32) ValueCell!15947))

(declare-fun mapValue!52088 () ValueCell!15947)

(declare-datatypes ((array!84413 0))(
  ( (array!84414 (arr!40706 (Array (_ BitVec 32) ValueCell!15947)) (size!41257 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84413)

(declare-fun mapKey!52088 () (_ BitVec 32))

(assert (=> mapNonEmpty!52088 (= (arr!40706 _values!1445) (store mapRest!52088 mapKey!52088 mapValue!52088))))

(declare-fun b!1280569 () Bool)

(declare-fun res!850718 () Bool)

(assert (=> b!1280569 (=> (not res!850718) (not e!731723))))

(declare-datatypes ((List!29015 0))(
  ( (Nil!29012) (Cons!29011 (h!30220 (_ BitVec 64)) (t!42562 List!29015)) )
))
(declare-fun arrayNoDuplicates!0 (array!84411 (_ BitVec 32) List!29015) Bool)

(assert (=> b!1280569 (= res!850718 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29012))))

(declare-fun b!1280570 () Bool)

(declare-fun e!731722 () Bool)

(declare-fun tp_is_empty!33691 () Bool)

(assert (=> b!1280570 (= e!731722 tp_is_empty!33691)))

(declare-fun b!1280571 () Bool)

(declare-fun e!731725 () Bool)

(assert (=> b!1280571 (= e!731725 (and e!731722 mapRes!52088))))

(declare-fun condMapEmpty!52088 () Bool)

(declare-fun mapDefault!52088 () ValueCell!15947)

