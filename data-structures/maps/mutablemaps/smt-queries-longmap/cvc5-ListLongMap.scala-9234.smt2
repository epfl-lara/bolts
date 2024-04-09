; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110788 () Bool)

(assert start!110788)

(declare-fun b_free!29587 () Bool)

(declare-fun b_next!29587 () Bool)

(assert (=> start!110788 (= b_free!29587 (not b_next!29587))))

(declare-fun tp!104083 () Bool)

(declare-fun b_and!47805 () Bool)

(assert (=> start!110788 (= tp!104083 b_and!47805)))

(declare-fun b!1310731 () Bool)

(declare-fun e!747740 () Bool)

(assert (=> b!1310731 (= e!747740 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87587 0))(
  ( (array!87588 (arr!42269 (Array (_ BitVec 32) (_ BitVec 64))) (size!42820 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87587)

(declare-fun lt!585331 () Bool)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k!1175 () (_ BitVec 64))

(declare-datatypes ((V!52193 0))(
  ( (V!52194 (val!17733 Int)) )
))
(declare-fun minValue!1296 () V!52193)

(declare-datatypes ((ValueCell!16760 0))(
  ( (ValueCellFull!16760 (v!20358 V!52193)) (EmptyCell!16760) )
))
(declare-datatypes ((array!87589 0))(
  ( (array!87590 (arr!42270 (Array (_ BitVec 32) ValueCell!16760)) (size!42821 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87589)

(declare-fun zeroValue!1296 () V!52193)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!23016 0))(
  ( (tuple2!23017 (_1!11518 (_ BitVec 64)) (_2!11518 V!52193)) )
))
(declare-datatypes ((List!30181 0))(
  ( (Nil!30178) (Cons!30177 (h!31386 tuple2!23016) (t!43794 List!30181)) )
))
(declare-datatypes ((ListLongMap!20685 0))(
  ( (ListLongMap!20686 (toList!10358 List!30181)) )
))
(declare-fun contains!8444 (ListLongMap!20685 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5314 (array!87587 array!87589 (_ BitVec 32) (_ BitVec 32) V!52193 V!52193 (_ BitVec 32) Int) ListLongMap!20685)

(assert (=> b!1310731 (= lt!585331 (contains!8444 (getCurrentListMap!5314 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k!1175))))

(declare-fun b!1310732 () Bool)

(declare-fun res!870257 () Bool)

(assert (=> b!1310732 (=> (not res!870257) (not e!747740))))

(declare-datatypes ((List!30182 0))(
  ( (Nil!30179) (Cons!30178 (h!31387 (_ BitVec 64)) (t!43795 List!30182)) )
))
(declare-fun arrayNoDuplicates!0 (array!87587 (_ BitVec 32) List!30182) Bool)

(assert (=> b!1310732 (= res!870257 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30179))))

(declare-fun b!1310733 () Bool)

(declare-fun res!870254 () Bool)

(assert (=> b!1310733 (=> (not res!870254) (not e!747740))))

(assert (=> b!1310733 (= res!870254 (and (= (size!42821 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42820 _keys!1628) (size!42821 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1310734 () Bool)

(declare-fun e!747738 () Bool)

(declare-fun tp_is_empty!35317 () Bool)

(assert (=> b!1310734 (= e!747738 tp_is_empty!35317)))

(declare-fun b!1310735 () Bool)

(declare-fun e!747737 () Bool)

(declare-fun mapRes!54604 () Bool)

(assert (=> b!1310735 (= e!747737 (and e!747738 mapRes!54604))))

(declare-fun condMapEmpty!54604 () Bool)

(declare-fun mapDefault!54604 () ValueCell!16760)

