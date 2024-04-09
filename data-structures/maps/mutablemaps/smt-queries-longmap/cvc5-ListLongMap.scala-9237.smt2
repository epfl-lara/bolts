; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110806 () Bool)

(assert start!110806)

(declare-fun b_free!29605 () Bool)

(declare-fun b_next!29605 () Bool)

(assert (=> start!110806 (= b_free!29605 (not b_next!29605))))

(declare-fun tp!104138 () Bool)

(declare-fun b_and!47823 () Bool)

(assert (=> start!110806 (= tp!104138 b_and!47823)))

(declare-fun mapNonEmpty!54631 () Bool)

(declare-fun mapRes!54631 () Bool)

(declare-fun tp!104137 () Bool)

(declare-fun e!747875 () Bool)

(assert (=> mapNonEmpty!54631 (= mapRes!54631 (and tp!104137 e!747875))))

(declare-datatypes ((V!52217 0))(
  ( (V!52218 (val!17742 Int)) )
))
(declare-datatypes ((ValueCell!16769 0))(
  ( (ValueCellFull!16769 (v!20367 V!52217)) (EmptyCell!16769) )
))
(declare-fun mapRest!54631 () (Array (_ BitVec 32) ValueCell!16769))

(declare-fun mapKey!54631 () (_ BitVec 32))

(declare-datatypes ((array!87621 0))(
  ( (array!87622 (arr!42286 (Array (_ BitVec 32) ValueCell!16769)) (size!42837 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87621)

(declare-fun mapValue!54631 () ValueCell!16769)

(assert (=> mapNonEmpty!54631 (= (arr!42286 _values!1354) (store mapRest!54631 mapKey!54631 mapValue!54631))))

(declare-fun b!1310946 () Bool)

(declare-fun e!747871 () Bool)

(assert (=> b!1310946 (= e!747871 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87623 0))(
  ( (array!87624 (arr!42287 (Array (_ BitVec 32) (_ BitVec 64))) (size!42838 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87623)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52217)

(declare-fun zeroValue!1296 () V!52217)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun lt!585358 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23028 0))(
  ( (tuple2!23029 (_1!11524 (_ BitVec 64)) (_2!11524 V!52217)) )
))
(declare-datatypes ((List!30193 0))(
  ( (Nil!30190) (Cons!30189 (h!31398 tuple2!23028) (t!43806 List!30193)) )
))
(declare-datatypes ((ListLongMap!20697 0))(
  ( (ListLongMap!20698 (toList!10364 List!30193)) )
))
(declare-fun contains!8450 (ListLongMap!20697 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5320 (array!87623 array!87621 (_ BitVec 32) (_ BitVec 32) V!52217 V!52217 (_ BitVec 32) Int) ListLongMap!20697)

(assert (=> b!1310946 (= lt!585358 (contains!8450 (getCurrentListMap!5320 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1310948 () Bool)

(declare-fun res!870391 () Bool)

(assert (=> b!1310948 (=> (not res!870391) (not e!747871))))

(declare-datatypes ((List!30194 0))(
  ( (Nil!30191) (Cons!30190 (h!31399 (_ BitVec 64)) (t!43807 List!30194)) )
))
(declare-fun arrayNoDuplicates!0 (array!87623 (_ BitVec 32) List!30194) Bool)

(assert (=> b!1310948 (= res!870391 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30191))))

(declare-fun b!1310949 () Bool)

(declare-fun e!747872 () Bool)

(declare-fun e!747873 () Bool)

(assert (=> b!1310949 (= e!747872 (and e!747873 mapRes!54631))))

(declare-fun condMapEmpty!54631 () Bool)

(declare-fun mapDefault!54631 () ValueCell!16769)

