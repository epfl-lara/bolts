; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104854 () Bool)

(assert start!104854)

(declare-fun b_free!26623 () Bool)

(declare-fun b_next!26623 () Bool)

(assert (=> start!104854 (= b_free!26623 (not b_next!26623))))

(declare-fun tp!93360 () Bool)

(declare-fun b_and!44401 () Bool)

(assert (=> start!104854 (= tp!93360 b_and!44401)))

(declare-fun mapIsEmpty!49048 () Bool)

(declare-fun mapRes!49048 () Bool)

(assert (=> mapIsEmpty!49048 mapRes!49048))

(declare-fun b!1249333 () Bool)

(declare-fun res!833481 () Bool)

(declare-fun e!709107 () Bool)

(assert (=> b!1249333 (=> (not res!833481) (not e!709107))))

(declare-datatypes ((array!80707 0))(
  ( (array!80708 (arr!38916 (Array (_ BitVec 32) (_ BitVec 64))) (size!39453 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80707)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80707 (_ BitVec 32)) Bool)

(assert (=> b!1249333 (= res!833481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249334 () Bool)

(declare-fun e!709104 () Bool)

(declare-fun e!709103 () Bool)

(assert (=> b!1249334 (= e!709104 (and e!709103 mapRes!49048))))

(declare-fun condMapEmpty!49048 () Bool)

(declare-datatypes ((V!47399 0))(
  ( (V!47400 (val!15825 Int)) )
))
(declare-datatypes ((ValueCell!14999 0))(
  ( (ValueCellFull!14999 (v!18521 V!47399)) (EmptyCell!14999) )
))
(declare-datatypes ((array!80709 0))(
  ( (array!80710 (arr!38917 (Array (_ BitVec 32) ValueCell!14999)) (size!39454 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80709)

(declare-fun mapDefault!49048 () ValueCell!14999)

