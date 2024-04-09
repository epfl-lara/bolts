; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83036 () Bool)

(assert start!83036)

(declare-fun b!968520 () Bool)

(declare-fun e!545906 () Bool)

(declare-fun e!545907 () Bool)

(declare-fun mapRes!34894 () Bool)

(assert (=> b!968520 (= e!545906 (and e!545907 mapRes!34894))))

(declare-fun condMapEmpty!34894 () Bool)

(declare-datatypes ((V!34221 0))(
  ( (V!34222 (val!11015 Int)) )
))
(declare-datatypes ((ValueCell!10483 0))(
  ( (ValueCellFull!10483 (v!13573 V!34221)) (EmptyCell!10483) )
))
(declare-datatypes ((array!59907 0))(
  ( (array!59908 (arr!28816 (Array (_ BitVec 32) ValueCell!10483)) (size!29296 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!59907)

(declare-fun mapDefault!34894 () ValueCell!10483)

