; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107316 () Bool)

(assert start!107316)

(declare-fun b!1271445 () Bool)

(declare-fun e!725075 () Bool)

(declare-fun tp_is_empty!32969 () Bool)

(assert (=> b!1271445 (= e!725075 tp_is_empty!32969)))

(declare-fun b!1271446 () Bool)

(declare-fun e!725077 () Bool)

(declare-fun e!725074 () Bool)

(declare-fun mapRes!51034 () Bool)

(assert (=> b!1271446 (= e!725077 (and e!725074 mapRes!51034))))

(declare-fun condMapEmpty!51034 () Bool)

(declare-datatypes ((V!49151 0))(
  ( (V!49152 (val!16559 Int)) )
))
(declare-datatypes ((ValueCell!15631 0))(
  ( (ValueCellFull!15631 (v!19194 V!49151)) (EmptyCell!15631) )
))
(declare-datatypes ((array!83145 0))(
  ( (array!83146 (arr!40105 (Array (_ BitVec 32) ValueCell!15631)) (size!40642 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83145)

(declare-fun mapDefault!51034 () ValueCell!15631)

