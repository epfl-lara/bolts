; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104806 () Bool)

(assert start!104806)

(declare-fun b_free!26575 () Bool)

(declare-fun b_next!26575 () Bool)

(assert (=> start!104806 (= b_free!26575 (not b_next!26575))))

(declare-fun tp!93215 () Bool)

(declare-fun b_and!44353 () Bool)

(assert (=> start!104806 (= tp!93215 b_and!44353)))

(declare-fun b!1248829 () Bool)

(declare-fun e!708743 () Bool)

(declare-fun e!708745 () Bool)

(declare-fun mapRes!48976 () Bool)

(assert (=> b!1248829 (= e!708743 (and e!708745 mapRes!48976))))

(declare-fun condMapEmpty!48976 () Bool)

(declare-datatypes ((V!47335 0))(
  ( (V!47336 (val!15801 Int)) )
))
(declare-datatypes ((ValueCell!14975 0))(
  ( (ValueCellFull!14975 (v!18497 V!47335)) (EmptyCell!14975) )
))
(declare-datatypes ((array!80621 0))(
  ( (array!80622 (arr!38873 (Array (_ BitVec 32) ValueCell!14975)) (size!39410 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80621)

(declare-fun mapDefault!48976 () ValueCell!14975)

