; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111058 () Bool)

(assert start!111058)

(declare-fun b_free!29857 () Bool)

(declare-fun b_next!29857 () Bool)

(assert (=> start!111058 (= b_free!29857 (not b_next!29857))))

(declare-fun tp!104894 () Bool)

(declare-fun b_and!48075 () Bool)

(assert (=> start!111058 (= tp!104894 b_and!48075)))

(declare-fun mapIsEmpty!55009 () Bool)

(declare-fun mapRes!55009 () Bool)

(assert (=> mapIsEmpty!55009 mapRes!55009))

(declare-fun b!1314357 () Bool)

(declare-fun res!872665 () Bool)

(declare-fun e!749761 () Bool)

(assert (=> b!1314357 (=> (not res!872665) (not e!749761))))

(declare-datatypes ((array!88107 0))(
  ( (array!88108 (arr!42529 (Array (_ BitVec 32) (_ BitVec 64))) (size!43080 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88107)

(declare-datatypes ((List!30373 0))(
  ( (Nil!30370) (Cons!30369 (h!31578 (_ BitVec 64)) (t!43986 List!30373)) )
))
(declare-fun arrayNoDuplicates!0 (array!88107 (_ BitVec 32) List!30373) Bool)

(assert (=> b!1314357 (= res!872665 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30370))))

(declare-fun b!1314358 () Bool)

(declare-fun e!749765 () Bool)

(declare-fun tp_is_empty!35587 () Bool)

(assert (=> b!1314358 (= e!749765 tp_is_empty!35587)))

(declare-fun b!1314359 () Bool)

(declare-fun res!872668 () Bool)

(assert (=> b!1314359 (=> (not res!872668) (not e!749761))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88107 (_ BitVec 32)) Bool)

(assert (=> b!1314359 (= res!872668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314360 () Bool)

(declare-fun e!749763 () Bool)

(assert (=> b!1314360 (= e!749763 (and e!749765 mapRes!55009))))

(declare-fun condMapEmpty!55009 () Bool)

(declare-datatypes ((V!52553 0))(
  ( (V!52554 (val!17868 Int)) )
))
(declare-datatypes ((ValueCell!16895 0))(
  ( (ValueCellFull!16895 (v!20493 V!52553)) (EmptyCell!16895) )
))
(declare-datatypes ((array!88109 0))(
  ( (array!88110 (arr!42530 (Array (_ BitVec 32) ValueCell!16895)) (size!43081 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88109)

(declare-fun mapDefault!55009 () ValueCell!16895)

