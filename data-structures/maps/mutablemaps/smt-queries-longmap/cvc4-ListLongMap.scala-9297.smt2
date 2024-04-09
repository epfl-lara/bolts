; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111170 () Bool)

(assert start!111170)

(declare-fun b_free!29969 () Bool)

(declare-fun b_next!29969 () Bool)

(assert (=> start!111170 (= b_free!29969 (not b_next!29969))))

(declare-fun tp!105230 () Bool)

(declare-fun b_and!48187 () Bool)

(assert (=> start!111170 (= tp!105230 b_and!48187)))

(declare-fun b!1315737 () Bool)

(declare-fun res!873541 () Bool)

(declare-fun e!750604 () Bool)

(assert (=> b!1315737 (=> (not res!873541) (not e!750604))))

(declare-datatypes ((array!88317 0))(
  ( (array!88318 (arr!42634 (Array (_ BitVec 32) (_ BitVec 64))) (size!43185 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88317)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88317 (_ BitVec 32)) Bool)

(assert (=> b!1315737 (= res!873541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1315738 () Bool)

(declare-fun res!873542 () Bool)

(assert (=> b!1315738 (=> (not res!873542) (not e!750604))))

(declare-datatypes ((List!30438 0))(
  ( (Nil!30435) (Cons!30434 (h!31643 (_ BitVec 64)) (t!44051 List!30438)) )
))
(declare-fun arrayNoDuplicates!0 (array!88317 (_ BitVec 32) List!30438) Bool)

(assert (=> b!1315738 (= res!873542 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30435))))

(declare-fun b!1315739 () Bool)

(declare-fun e!750603 () Bool)

(declare-fun tp_is_empty!35699 () Bool)

(assert (=> b!1315739 (= e!750603 tp_is_empty!35699)))

(declare-fun res!873543 () Bool)

(assert (=> start!111170 (=> (not res!873543) (not e!750604))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111170 (= res!873543 (validMask!0 mask!2040))))

(assert (=> start!111170 e!750604))

(assert (=> start!111170 tp!105230))

(declare-fun array_inv!32167 (array!88317) Bool)

(assert (=> start!111170 (array_inv!32167 _keys!1628)))

(assert (=> start!111170 true))

(assert (=> start!111170 tp_is_empty!35699))

(declare-datatypes ((V!52701 0))(
  ( (V!52702 (val!17924 Int)) )
))
(declare-datatypes ((ValueCell!16951 0))(
  ( (ValueCellFull!16951 (v!20549 V!52701)) (EmptyCell!16951) )
))
(declare-datatypes ((array!88319 0))(
  ( (array!88320 (arr!42635 (Array (_ BitVec 32) ValueCell!16951)) (size!43186 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88319)

(declare-fun e!750601 () Bool)

(declare-fun array_inv!32168 (array!88319) Bool)

(assert (=> start!111170 (and (array_inv!32168 _values!1354) e!750601)))

(declare-fun b!1315740 () Bool)

(declare-fun mapRes!55177 () Bool)

(assert (=> b!1315740 (= e!750601 (and e!750603 mapRes!55177))))

(declare-fun condMapEmpty!55177 () Bool)

(declare-fun mapDefault!55177 () ValueCell!16951)

