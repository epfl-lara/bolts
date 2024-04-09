; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35512 () Bool)

(assert start!35512)

(declare-fun b!355605 () Bool)

(declare-fun e!217861 () Bool)

(declare-fun e!217864 () Bool)

(declare-fun mapRes!13443 () Bool)

(assert (=> b!355605 (= e!217861 (and e!217864 mapRes!13443))))

(declare-fun condMapEmpty!13443 () Bool)

(declare-datatypes ((V!11587 0))(
  ( (V!11588 (val!4023 Int)) )
))
(declare-datatypes ((ValueCell!3635 0))(
  ( (ValueCellFull!3635 (v!6213 V!11587)) (EmptyCell!3635) )
))
(declare-datatypes ((array!19461 0))(
  ( (array!19462 (arr!9221 (Array (_ BitVec 32) ValueCell!3635)) (size!9573 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19461)

(declare-fun mapDefault!13443 () ValueCell!3635)

