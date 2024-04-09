; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110984 () Bool)

(assert start!110984)

(declare-fun b_free!29783 () Bool)

(declare-fun b_next!29783 () Bool)

(assert (=> start!110984 (= b_free!29783 (not b_next!29783))))

(declare-fun tp!104672 () Bool)

(declare-fun b_and!48001 () Bool)

(assert (=> start!110984 (= tp!104672 b_and!48001)))

(declare-fun b!1313433 () Bool)

(declare-fun res!872078 () Bool)

(declare-fun e!749209 () Bool)

(assert (=> b!1313433 (=> (not res!872078) (not e!749209))))

(declare-datatypes ((array!87969 0))(
  ( (array!87970 (arr!42460 (Array (_ BitVec 32) (_ BitVec 64))) (size!43011 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87969)

(declare-datatypes ((List!30323 0))(
  ( (Nil!30320) (Cons!30319 (h!31528 (_ BitVec 64)) (t!43936 List!30323)) )
))
(declare-fun arrayNoDuplicates!0 (array!87969 (_ BitVec 32) List!30323) Bool)

(assert (=> b!1313433 (= res!872078 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30320))))

(declare-fun b!1313434 () Bool)

(declare-fun res!872076 () Bool)

(assert (=> b!1313434 (=> (not res!872076) (not e!749209))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52453 0))(
  ( (V!52454 (val!17831 Int)) )
))
(declare-datatypes ((ValueCell!16858 0))(
  ( (ValueCellFull!16858 (v!20456 V!52453)) (EmptyCell!16858) )
))
(declare-datatypes ((array!87971 0))(
  ( (array!87972 (arr!42461 (Array (_ BitVec 32) ValueCell!16858)) (size!43012 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87971)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1313434 (= res!872076 (and (= (size!43012 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43011 _keys!1628) (size!43012 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1313435 () Bool)

(declare-fun e!749207 () Bool)

(declare-fun tp_is_empty!35513 () Bool)

(assert (=> b!1313435 (= e!749207 tp_is_empty!35513)))

(declare-fun b!1313437 () Bool)

(declare-fun res!872075 () Bool)

(assert (=> b!1313437 (=> (not res!872075) (not e!749209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87969 (_ BitVec 32)) Bool)

(assert (=> b!1313437 (= res!872075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1313438 () Bool)

(declare-fun e!749208 () Bool)

(declare-fun e!749206 () Bool)

(declare-fun mapRes!54898 () Bool)

(assert (=> b!1313438 (= e!749208 (and e!749206 mapRes!54898))))

(declare-fun condMapEmpty!54898 () Bool)

(declare-fun mapDefault!54898 () ValueCell!16858)

