; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107328 () Bool)

(assert start!107328)

(declare-fun b!1271553 () Bool)

(declare-fun e!725167 () Bool)

(declare-fun e!725165 () Bool)

(declare-fun mapRes!51052 () Bool)

(assert (=> b!1271553 (= e!725167 (and e!725165 mapRes!51052))))

(declare-fun condMapEmpty!51052 () Bool)

(declare-datatypes ((V!49167 0))(
  ( (V!49168 (val!16565 Int)) )
))
(declare-datatypes ((ValueCell!15637 0))(
  ( (ValueCellFull!15637 (v!19200 V!49167)) (EmptyCell!15637) )
))
(declare-datatypes ((array!83163 0))(
  ( (array!83164 (arr!40114 (Array (_ BitVec 32) ValueCell!15637)) (size!40651 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!83163)

(declare-fun mapDefault!51052 () ValueCell!15637)

