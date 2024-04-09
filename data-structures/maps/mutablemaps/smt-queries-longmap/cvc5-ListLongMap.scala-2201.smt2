; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36586 () Bool)

(assert start!36586)

(declare-fun b!365085 () Bool)

(declare-fun e!223544 () Bool)

(declare-fun e!223543 () Bool)

(declare-fun mapRes!14208 () Bool)

(assert (=> b!365085 (= e!223544 (and e!223543 mapRes!14208))))

(declare-fun condMapEmpty!14208 () Bool)

(declare-datatypes ((V!12363 0))(
  ( (V!12364 (val!4266 Int)) )
))
(declare-datatypes ((ValueCell!3878 0))(
  ( (ValueCellFull!3878 (v!6457 V!12363)) (EmptyCell!3878) )
))
(declare-datatypes ((array!20815 0))(
  ( (array!20816 (arr!9880 (Array (_ BitVec 32) ValueCell!3878)) (size!10232 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!20815)

(declare-fun mapDefault!14208 () ValueCell!3878)

