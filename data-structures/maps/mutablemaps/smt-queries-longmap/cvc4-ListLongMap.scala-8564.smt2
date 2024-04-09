; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104610 () Bool)

(assert start!104610)

(declare-fun b!1247119 () Bool)

(declare-fun e!707469 () Bool)

(declare-fun e!707472 () Bool)

(declare-fun mapRes!48736 () Bool)

(assert (=> b!1247119 (= e!707469 (and e!707472 mapRes!48736))))

(declare-fun condMapEmpty!48736 () Bool)

(declare-datatypes ((V!47131 0))(
  ( (V!47132 (val!15725 Int)) )
))
(declare-datatypes ((ValueCell!14899 0))(
  ( (ValueCellFull!14899 (v!18420 V!47131)) (EmptyCell!14899) )
))
(declare-datatypes ((array!80325 0))(
  ( (array!80326 (arr!38729 (Array (_ BitVec 32) ValueCell!14899)) (size!39266 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80325)

(declare-fun mapDefault!48736 () ValueCell!14899)

