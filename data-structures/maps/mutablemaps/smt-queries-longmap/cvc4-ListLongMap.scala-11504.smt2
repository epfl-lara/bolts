; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133906 () Bool)

(assert start!133906)

(declare-fun b_free!32135 () Bool)

(declare-fun b_next!32135 () Bool)

(assert (=> start!133906 (= b_free!32135 (not b_next!32135))))

(declare-fun tp!113702 () Bool)

(declare-fun b_and!51715 () Bool)

(assert (=> start!133906 (= tp!113702 b_and!51715)))

(declare-fun b!1565014 () Bool)

(declare-fun e!872337 () Bool)

(declare-datatypes ((array!104477 0))(
  ( (array!104478 (arr!50423 (Array (_ BitVec 32) (_ BitVec 64))) (size!50974 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104477)

(declare-fun from!782 () (_ BitVec 32))

(assert (=> b!1565014 (= e!872337 (= (select (arr!50423 _keys!637) from!782) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!1069966 () Bool)

(declare-fun e!872342 () Bool)

(assert (=> start!133906 (=> (not res!1069966) (not e!872342))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133906 (= res!1069966 (validMask!0 mask!947))))

(assert (=> start!133906 e!872342))

(assert (=> start!133906 tp!113702))

(declare-fun tp_is_empty!38909 () Bool)

(assert (=> start!133906 tp_is_empty!38909))

(assert (=> start!133906 true))

(declare-fun array_inv!39105 (array!104477) Bool)

(assert (=> start!133906 (array_inv!39105 _keys!637)))

(declare-datatypes ((V!60085 0))(
  ( (V!60086 (val!19538 Int)) )
))
(declare-datatypes ((ValueCell!18424 0))(
  ( (ValueCellFull!18424 (v!22289 V!60085)) (EmptyCell!18424) )
))
(declare-datatypes ((array!104479 0))(
  ( (array!104480 (arr!50424 (Array (_ BitVec 32) ValueCell!18424)) (size!50975 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104479)

(declare-fun e!872341 () Bool)

(declare-fun array_inv!39106 (array!104479) Bool)

(assert (=> start!133906 (and (array_inv!39106 _values!487) e!872341)))

(declare-fun mapIsEmpty!59749 () Bool)

(declare-fun mapRes!59749 () Bool)

(assert (=> mapIsEmpty!59749 mapRes!59749))

(declare-fun b!1565015 () Bool)

(declare-fun e!872339 () Bool)

(assert (=> b!1565015 (= e!872339 tp_is_empty!38909)))

(declare-fun b!1565016 () Bool)

(declare-fun res!1069968 () Bool)

(assert (=> b!1565016 (=> (not res!1069968) (not e!872342))))

(declare-datatypes ((List!36757 0))(
  ( (Nil!36754) (Cons!36753 (h!38200 (_ BitVec 64)) (t!51611 List!36757)) )
))
(declare-fun arrayNoDuplicates!0 (array!104477 (_ BitVec 32) List!36757) Bool)

(assert (=> b!1565016 (= res!1069968 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36754))))

(declare-fun b!1565017 () Bool)

(declare-fun res!1069969 () Bool)

(assert (=> b!1565017 (=> (not res!1069969) (not e!872342))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104477 (_ BitVec 32)) Bool)

(assert (=> b!1565017 (= res!1069969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1565018 () Bool)

(declare-fun res!1069970 () Bool)

(assert (=> b!1565018 (=> (not res!1069970) (not e!872342))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1565018 (= res!1069970 (validKeyInArray!0 (select (arr!50423 _keys!637) from!782)))))

(declare-fun b!1565019 () Bool)

(declare-fun e!872340 () Bool)

(assert (=> b!1565019 (= e!872340 tp_is_empty!38909)))

(declare-fun b!1565020 () Bool)

(assert (=> b!1565020 (= e!872342 e!872337)))

(declare-fun res!1069965 () Bool)

(assert (=> b!1565020 (=> res!1069965 e!872337)))

(declare-fun defaultEntry!495 () Int)

(declare-fun zeroValue!453 () V!60085)

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-fun minValue!453 () V!60085)

(declare-datatypes ((tuple2!25370 0))(
  ( (tuple2!25371 (_1!12695 (_ BitVec 64)) (_2!12695 V!60085)) )
))
(declare-datatypes ((List!36758 0))(
  ( (Nil!36755) (Cons!36754 (h!38201 tuple2!25370) (t!51612 List!36758)) )
))
(declare-datatypes ((ListLongMap!22817 0))(
  ( (ListLongMap!22818 (toList!11424 List!36758)) )
))
(declare-fun contains!10342 (ListLongMap!22817 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!6764 (array!104477 array!104479 (_ BitVec 32) (_ BitVec 32) V!60085 V!60085 (_ BitVec 32) Int) ListLongMap!22817)

(assert (=> b!1565020 (= res!1069965 (contains!10342 (getCurrentListMapNoExtraKeys!6764 _keys!637 _values!487 mask!947 extraKeys!434 zeroValue!453 minValue!453 (bvadd #b00000000000000000000000000000001 from!782) defaultEntry!495) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1565021 () Bool)

(declare-fun res!1069967 () Bool)

(assert (=> b!1565021 (=> (not res!1069967) (not e!872342))))

(assert (=> b!1565021 (= res!1069967 (and (= (size!50975 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50974 _keys!637) (size!50975 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun b!1565022 () Bool)

(assert (=> b!1565022 (= e!872341 (and e!872340 mapRes!59749))))

(declare-fun condMapEmpty!59749 () Bool)

(declare-fun mapDefault!59749 () ValueCell!18424)

