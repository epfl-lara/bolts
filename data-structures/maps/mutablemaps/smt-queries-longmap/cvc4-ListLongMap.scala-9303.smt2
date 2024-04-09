; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111206 () Bool)

(assert start!111206)

(declare-fun b_free!30005 () Bool)

(declare-fun b_next!30005 () Bool)

(assert (=> start!111206 (= b_free!30005 (not b_next!30005))))

(declare-fun tp!105338 () Bool)

(declare-fun b_and!48223 () Bool)

(assert (=> start!111206 (= tp!105338 b_and!48223)))

(declare-fun res!873878 () Bool)

(declare-fun e!750875 () Bool)

(assert (=> start!111206 (=> (not res!873878) (not e!750875))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111206 (= res!873878 (validMask!0 mask!2040))))

(assert (=> start!111206 e!750875))

(assert (=> start!111206 tp!105338))

(declare-datatypes ((array!88387 0))(
  ( (array!88388 (arr!42669 (Array (_ BitVec 32) (_ BitVec 64))) (size!43220 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88387)

(declare-fun array_inv!32193 (array!88387) Bool)

(assert (=> start!111206 (array_inv!32193 _keys!1628)))

(assert (=> start!111206 true))

(declare-fun tp_is_empty!35735 () Bool)

(assert (=> start!111206 tp_is_empty!35735))

(declare-datatypes ((V!52749 0))(
  ( (V!52750 (val!17942 Int)) )
))
(declare-datatypes ((ValueCell!16969 0))(
  ( (ValueCellFull!16969 (v!20567 V!52749)) (EmptyCell!16969) )
))
(declare-datatypes ((array!88389 0))(
  ( (array!88390 (arr!42670 (Array (_ BitVec 32) ValueCell!16969)) (size!43221 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88389)

(declare-fun e!750872 () Bool)

(declare-fun array_inv!32194 (array!88389) Bool)

(assert (=> start!111206 (and (array_inv!32194 _values!1354) e!750872)))

(declare-fun b!1316229 () Bool)

(declare-fun e!750874 () Bool)

(assert (=> b!1316229 (= e!750874 tp_is_empty!35735)))

(declare-fun mapIsEmpty!55231 () Bool)

(declare-fun mapRes!55231 () Bool)

(assert (=> mapIsEmpty!55231 mapRes!55231))

(declare-fun b!1316230 () Bool)

(declare-fun res!873874 () Bool)

(assert (=> b!1316230 (=> (not res!873874) (not e!750875))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52749)

(declare-fun zeroValue!1296 () V!52749)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23298 0))(
  ( (tuple2!23299 (_1!11659 (_ BitVec 64)) (_2!11659 V!52749)) )
))
(declare-datatypes ((List!30466 0))(
  ( (Nil!30463) (Cons!30462 (h!31671 tuple2!23298) (t!44079 List!30466)) )
))
(declare-datatypes ((ListLongMap!20967 0))(
  ( (ListLongMap!20968 (toList!10499 List!30466)) )
))
(declare-fun contains!8585 (ListLongMap!20967 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5455 (array!88387 array!88389 (_ BitVec 32) (_ BitVec 32) V!52749 V!52749 (_ BitVec 32) Int) ListLongMap!20967)

(assert (=> b!1316230 (= res!873874 (contains!8585 (getCurrentListMap!5455 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1316231 () Bool)

(declare-fun res!873871 () Bool)

(assert (=> b!1316231 (=> (not res!873871) (not e!750875))))

(declare-datatypes ((List!30467 0))(
  ( (Nil!30464) (Cons!30463 (h!31672 (_ BitVec 64)) (t!44080 List!30467)) )
))
(declare-fun arrayNoDuplicates!0 (array!88387 (_ BitVec 32) List!30467) Bool)

(assert (=> b!1316231 (= res!873871 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30464))))

(declare-fun b!1316232 () Bool)

(declare-fun res!873876 () Bool)

(assert (=> b!1316232 (=> (not res!873876) (not e!750875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88387 (_ BitVec 32)) Bool)

(assert (=> b!1316232 (= res!873876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1316233 () Bool)

(declare-fun res!873877 () Bool)

(assert (=> b!1316233 (=> (not res!873877) (not e!750875))))

(assert (=> b!1316233 (= res!873877 (not (= (select (arr!42669 _keys!1628) from!2020) k!1175)))))

(declare-fun b!1316234 () Bool)

(declare-fun res!873873 () Bool)

(assert (=> b!1316234 (=> (not res!873873) (not e!750875))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1316234 (= res!873873 (not (validKeyInArray!0 (select (arr!42669 _keys!1628) from!2020))))))

(declare-fun b!1316235 () Bool)

(assert (=> b!1316235 (= e!750875 (not (contains!8585 (getCurrentListMap!5455 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k!1175)))))

(declare-fun b!1316236 () Bool)

(declare-fun res!873872 () Bool)

(assert (=> b!1316236 (=> (not res!873872) (not e!750875))))

(assert (=> b!1316236 (= res!873872 (and (= (size!43221 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43220 _keys!1628) (size!43221 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1316237 () Bool)

(declare-fun e!750871 () Bool)

(assert (=> b!1316237 (= e!750871 tp_is_empty!35735)))

(declare-fun b!1316238 () Bool)

(assert (=> b!1316238 (= e!750872 (and e!750874 mapRes!55231))))

(declare-fun condMapEmpty!55231 () Bool)

(declare-fun mapDefault!55231 () ValueCell!16969)

