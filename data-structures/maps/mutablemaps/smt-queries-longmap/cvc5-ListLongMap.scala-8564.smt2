; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104606 () Bool)

(assert start!104606)

(declare-fun b!1247077 () Bool)

(declare-fun e!707443 () Bool)

(declare-fun e!707439 () Bool)

(declare-fun mapRes!48730 () Bool)

(assert (=> b!1247077 (= e!707443 (and e!707439 mapRes!48730))))

(declare-fun condMapEmpty!48730 () Bool)

(declare-datatypes ((V!47127 0))(
  ( (V!47128 (val!15723 Int)) )
))
(declare-datatypes ((ValueCell!14897 0))(
  ( (ValueCellFull!14897 (v!18418 V!47127)) (EmptyCell!14897) )
))
(declare-datatypes ((array!80319 0))(
  ( (array!80320 (arr!38726 (Array (_ BitVec 32) ValueCell!14897)) (size!39263 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80319)

(declare-fun mapDefault!48730 () ValueCell!14897)

