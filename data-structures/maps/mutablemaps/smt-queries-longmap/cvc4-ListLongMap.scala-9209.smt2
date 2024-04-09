; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110642 () Bool)

(assert start!110642)

(declare-fun b_free!29441 () Bool)

(declare-fun b_next!29441 () Bool)

(assert (=> start!110642 (= b_free!29441 (not b_next!29441))))

(declare-fun tp!103645 () Bool)

(declare-fun b_and!47659 () Bool)

(assert (=> start!110642 (= tp!103645 b_and!47659)))

(declare-fun b!1308615 () Bool)

(declare-fun e!746641 () Bool)

(declare-fun tp_is_empty!35171 () Bool)

(assert (=> b!1308615 (= e!746641 tp_is_empty!35171)))

(declare-fun b!1308616 () Bool)

(declare-fun res!868795 () Bool)

(declare-fun e!746642 () Bool)

(assert (=> b!1308616 (=> (not res!868795) (not e!746642))))

(declare-datatypes ((array!87307 0))(
  ( (array!87308 (arr!42129 (Array (_ BitVec 32) (_ BitVec 64))) (size!42680 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87307)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87307 (_ BitVec 32)) Bool)

(assert (=> b!1308616 (= res!868795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308617 () Bool)

(declare-fun res!868800 () Bool)

(assert (=> b!1308617 (=> (not res!868800) (not e!746642))))

(declare-datatypes ((V!51997 0))(
  ( (V!51998 (val!17660 Int)) )
))
(declare-datatypes ((ValueCell!16687 0))(
  ( (ValueCellFull!16687 (v!20285 V!51997)) (EmptyCell!16687) )
))
(declare-datatypes ((array!87309 0))(
  ( (array!87310 (arr!42130 (Array (_ BitVec 32) ValueCell!16687)) (size!42681 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87309)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1308617 (= res!868800 (and (= (size!42681 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42680 _keys!1628) (size!42681 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1308618 () Bool)

(declare-fun res!868796 () Bool)

(assert (=> b!1308618 (=> (not res!868796) (not e!746642))))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1308618 (= res!868796 (validKeyInArray!0 (select (arr!42129 _keys!1628) from!2020)))))

(declare-fun b!1308619 () Bool)

(declare-fun res!868797 () Bool)

(assert (=> b!1308619 (=> (not res!868797) (not e!746642))))

(declare-datatypes ((List!30076 0))(
  ( (Nil!30073) (Cons!30072 (h!31281 (_ BitVec 64)) (t!43689 List!30076)) )
))
(declare-fun arrayNoDuplicates!0 (array!87307 (_ BitVec 32) List!30076) Bool)

(assert (=> b!1308619 (= res!868797 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30073))))

(declare-fun b!1308620 () Bool)

(declare-fun e!746644 () Bool)

(declare-fun mapRes!54385 () Bool)

(assert (=> b!1308620 (= e!746644 (and e!746641 mapRes!54385))))

(declare-fun condMapEmpty!54385 () Bool)

(declare-fun mapDefault!54385 () ValueCell!16687)

