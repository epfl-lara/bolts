; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!83768 () Bool)

(assert start!83768)

(declare-fun b!977626 () Bool)

(declare-fun res!654368 () Bool)

(declare-fun e!551247 () Bool)

(assert (=> b!977626 (=> (not res!654368) (not e!551247))))

(declare-datatypes ((array!61103 0))(
  ( (array!61104 (arr!29405 (Array (_ BitVec 32) (_ BitVec 64))) (size!29885 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61103)

(declare-fun from!1932 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!977626 (= res!654368 (validKeyInArray!0 (select (arr!29405 _keys!1544) from!1932)))))

(declare-fun b!977627 () Bool)

(declare-fun e!551245 () Bool)

(declare-fun e!551248 () Bool)

(declare-fun mapRes!35843 () Bool)

(assert (=> b!977627 (= e!551245 (and e!551248 mapRes!35843))))

(declare-fun condMapEmpty!35843 () Bool)

(declare-datatypes ((V!35041 0))(
  ( (V!35042 (val!11322 Int)) )
))
(declare-datatypes ((ValueCell!10790 0))(
  ( (ValueCellFull!10790 (v!13884 V!35041)) (EmptyCell!10790) )
))
(declare-datatypes ((array!61105 0))(
  ( (array!61106 (arr!29406 (Array (_ BitVec 32) ValueCell!10790)) (size!29886 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61105)

(declare-fun mapDefault!35843 () ValueCell!10790)

