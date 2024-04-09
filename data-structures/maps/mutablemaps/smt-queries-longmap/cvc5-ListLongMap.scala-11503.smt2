; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133896 () Bool)

(assert start!133896)

(declare-fun b_free!32125 () Bool)

(declare-fun b_next!32125 () Bool)

(assert (=> start!133896 (= b_free!32125 (not b_next!32125))))

(declare-fun tp!113671 () Bool)

(declare-fun b_and!51705 () Bool)

(assert (=> start!133896 (= tp!113671 b_and!51705)))

(declare-fun b!1564871 () Bool)

(declare-fun res!1069869 () Bool)

(declare-fun e!872258 () Bool)

(assert (=> b!1564871 (=> (not res!1069869) (not e!872258))))

(declare-datatypes ((array!104457 0))(
  ( (array!104458 (arr!50413 (Array (_ BitVec 32) (_ BitVec 64))) (size!50964 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104457)

(declare-datatypes ((List!36749 0))(
  ( (Nil!36746) (Cons!36745 (h!38192 (_ BitVec 64)) (t!51603 List!36749)) )
))
(declare-fun arrayNoDuplicates!0 (array!104457 (_ BitVec 32) List!36749) Bool)

(assert (=> b!1564871 (= res!1069869 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36746))))

(declare-fun b!1564872 () Bool)

(declare-fun res!1069871 () Bool)

(assert (=> b!1564872 (=> (not res!1069871) (not e!872258))))

(declare-fun from!782 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1564872 (= res!1069871 (validKeyInArray!0 (select (arr!50413 _keys!637) from!782)))))

(declare-fun b!1564873 () Bool)

(declare-fun e!872254 () Bool)

(declare-fun tp_is_empty!38899 () Bool)

(assert (=> b!1564873 (= e!872254 tp_is_empty!38899)))

(declare-fun b!1564874 () Bool)

(declare-fun res!1069868 () Bool)

(assert (=> b!1564874 (=> (not res!1069868) (not e!872258))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104457 (_ BitVec 32)) Bool)

(assert (=> b!1564874 (= res!1069868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564875 () Bool)

(declare-datatypes ((V!60073 0))(
  ( (V!60074 (val!19533 Int)) )
))
(declare-datatypes ((ValueCell!18419 0))(
  ( (ValueCellFull!18419 (v!22284 V!60073)) (EmptyCell!18419) )
))
(declare-datatypes ((array!104459 0))(
  ( (array!104460 (arr!50414 (Array (_ BitVec 32) ValueCell!18419)) (size!50965 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104459)

(assert (=> b!1564875 (= e!872258 (bvsge from!782 (size!50965 _values!487)))))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!60073)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60073)

(declare-datatypes ((tuple2!25362 0))(
  ( (tuple2!25363 (_1!12691 (_ BitVec 64)) (_2!12691 V!60073)) )
))
(declare-datatypes ((List!36750 0))(
  ( (Nil!36747) (Cons!36746 (h!38193 tuple2!25362) (t!51604 List!36750)) )
))
(declare-datatypes ((ListLongMap!22809 0))(
  ( (ListLongMap!22810 (toList!11420 List!36750)) )
))
(declare-fun lt!672050 () ListLongMap!22809)

(declare-fun getCurrentListMapNoExtraKeys!6760 (array!104457 array!104459 (_ BitVec 32) (_ BitVec 32) V!60073 V!60073 (_ BitVec 32) Int) ListLongMap!22809)

(assert (=> b!1564875 (= lt!672050 (getCurrentListMapNoExtraKeys!6760 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495))))

(declare-fun b!1564876 () Bool)

(declare-fun e!872256 () Bool)

(assert (=> b!1564876 (= e!872256 tp_is_empty!38899)))

(declare-fun b!1564877 () Bool)

(declare-fun e!872257 () Bool)

(declare-fun mapRes!59734 () Bool)

(assert (=> b!1564877 (= e!872257 (and e!872254 mapRes!59734))))

(declare-fun condMapEmpty!59734 () Bool)

(declare-fun mapDefault!59734 () ValueCell!18419)

